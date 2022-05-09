; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/netronome/nfp/flower/match.c_pt.bc'
source_filename = "../drivers/net/ethernet/netronome/nfp/flower/match.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nfp_flower_meta_tci = type { i8, i8, i16 }
%struct.flow_match_vlan = type { ptr, ptr }
%struct.flow_match_eth_addrs = type { ptr, ptr }
%struct.flow_dissector_key_eth_addrs = type { [6 x i8], [6 x i8] }
%struct.nfp_flower_mac_mpls = type { [6 x i8], [6 x i8], i32 }
%struct.flow_match_mpls = type { ptr, ptr }
%struct.flow_match_basic = type { ptr, ptr }
%struct.flow_dissector_key_mpls = type { [7 x %struct.flow_dissector_mpls_lse], i8 }
%struct.flow_dissector_mpls_lse = type { i32 }
%struct.flow_match_ports = type { ptr, ptr }
%struct.anon.221 = type { i16, i16 }
%struct.nfp_flower_tp_ports = type { i16, i16 }
%struct.nfp_flower_vlan = type { i16, i16, i16, i16 }
%struct.flow_dissector_key_vlan = type { %union.anon.218, i16 }
%union.anon.218 = type { %struct.anon.219 }
%struct.anon.219 = type { i16 }
%struct.flow_match_ipv4_addrs = type { ptr, ptr }
%struct.nfp_flower_ipv4 = type { %struct.nfp_flower_ip_ext, i32, i32 }
%struct.nfp_flower_ip_ext = type { i8, i8, i8, i8 }
%struct.flow_dissector_key_ipv4_addrs = type { i32, i32 }
%struct.flow_match_ip = type { ptr, ptr }
%struct.flow_match_tcp = type { ptr, ptr }
%struct.flow_match_control = type { ptr, ptr }
%struct.flow_dissector_key_basic = type { i16, i8, i8 }
%struct.flow_dissector_key_ip = type { i8, i8 }
%struct.flow_dissector_key_control = type { i16, i16, i32 }
%struct.flow_match_ipv6_addrs = type { ptr, ptr }
%struct.nfp_flower_ipv6 = type { %struct.nfp_flower_ip_ext, i32, %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.50 }
%union.anon.50 = type { [4 x i32] }
%struct.flow_dissector_key_ipv6_addrs = type { %struct.in6_addr, %struct.in6_addr }
%struct.flow_match_enc_opts = type { ptr, ptr }
%struct.flow_dissector_key_enc_opts = type { [255 x i8], i8, i16 }
%struct.flow_match_enc_keyid = type { ptr, ptr }
%struct.nfp_flower_ipv4_gre_tun = type { %struct.nfp_flower_tun_ipv4, i16, %struct.nfp_flower_tun_ip_ext, i16, i16, i32, i32 }
%struct.nfp_flower_tun_ipv4 = type { i32, i32 }
%struct.nfp_flower_tun_ip_ext = type { i8, i8 }
%struct.nfp_flower_ipv4_udp_tun = type { %struct.nfp_flower_tun_ipv4, i16, %struct.nfp_flower_tun_ip_ext, i32, i32 }
%struct.nfp_flower_tun_ipv6 = type { %struct.in6_addr, %struct.in6_addr }
%struct.nfp_flower_ipv6_udp_tun = type { %struct.nfp_flower_tun_ipv6, i16, %struct.nfp_flower_tun_ip_ext, i32, i32 }
%struct.nfp_flower_ipv6_gre_tun = type { %struct.nfp_flower_tun_ipv6, i16, %struct.nfp_flower_tun_ip_ext, i16, i16, i32, i32 }
%struct.nfp_app = type { ptr, ptr, ptr, ptr, [3 x ptr], ptr, i32, %struct.notifier_block, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nfp_fl_payload = type { %struct.nfp_fl_rule_metadata, i32, %struct.rhash_head, %struct.callback_head, i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i8, %struct.anon.236 }
%struct.nfp_fl_rule_metadata = type <{ i8, i8, i8, i8, i32, i64, i64, i32 }>
%struct.rhash_head = type { ptr }
%struct.callback_head = type { ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.anon.236 = type { ptr, i16, i16 }
%struct.nfp_fl_key_ls = type { i32, i8, i32 }
%struct.nfp_flower_priv = type { ptr, ptr, i32, i64, i64, i8, %struct.nfp_fl_stats_id, %struct.nfp_fl_mask_id, [1024 x %struct.hlist_head], i32, %struct.rhashtable, ptr, %struct.spinlock, %struct.rhashtable, %struct.work_struct, %struct.sk_buff_head, %struct.sk_buff_head, %struct.nfp_fl_tunnel_offloads, %struct.atomic_t, %struct.wait_queue_head, %struct.nfp_mtu_conf, %struct.nfp_fl_lag, %struct.list_head, %struct.list_head, i32, i32, %struct.nfp_fl_internal_ports, %struct.delayed_work, i32, %struct.spinlock, i32, %struct.rhashtable, %struct.rhashtable, ptr, %struct.rhashtable }
%struct.nfp_fl_stats_id = type { %struct.circ_buf, i32, i8 }
%struct.circ_buf = type { ptr, i32, i32 }
%struct.nfp_fl_mask_id = type { %struct.circ_buf, ptr, i8 }
%struct.hlist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.sk_buff_head = type { %union.anon.54, i32, %struct.spinlock }
%union.anon.54 = type { %struct.anon.55 }
%struct.anon.55 = type { ptr, ptr }
%struct.nfp_fl_tunnel_offloads = type { %struct.rhashtable, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.spinlock, %struct.ida, %struct.notifier_block }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.14 }
%union.anon.14 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.atomic_t = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.nfp_mtu_conf = type { i32, i32, i8, %struct.wait_queue_head, %struct.spinlock }
%struct.nfp_fl_lag = type { %struct.delayed_work, %struct.mutex, %struct.list_head, %struct.ida, i32, i32, i8, i8, %struct.sk_buff_head }
%struct.nfp_fl_internal_ports = type { %struct.idr, %struct.spinlock }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.13 }
%union.anon.13 = type { %struct.raw_spinlock }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }

@nfp_flower_compile_port.__msg = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"nfp: unsupported offload: invalid ingress interface for match offload\00", [58 x i8] zeroinitializer }, align 32
@nfp_flower_compile_mpls.__msg = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"nfp: unsupported offload: invalid LSE depth for MPLS match offload\00", [61 x i8] zeroinitializer }, align 32
@nfp_flower_compile_flow_match.__msg = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"nfp: unsupported offload: flow key too long\00", [52 x i8] zeroinitializer }, align 32
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 85, i32 4 }
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 130, i32 4 }
@___asan_gen_.7 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.8 = private constant [53 x i8] c"../drivers/net/ethernet/netronome/nfp/flower/match.c\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 693, i32 3 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @nfp_flower_compile_port.__msg, ptr @nfp_flower_compile_mpls.__msg, ptr @nfp_flower_compile_flow_match.__msg], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_flower_compile_port.__msg to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_flower_compile_mpls.__msg to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_flower_compile_flow_match.__msg to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @nfp_flower_compile_meta(ptr nocapture noundef writeonly %ext, ptr nocapture noundef writeonly %msk, i8 noundef zeroext %key_type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ext to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %key_type, ptr %ext, align 2
  %mask_id = getelementptr inbounds %struct.nfp_flower_meta_tci, ptr %ext, i32 0, i32 1
  %1 = ptrtoint ptr %mask_id to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %mask_id, align 1
  %2 = ptrtoint ptr %msk to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %key_type, ptr %msk, align 2
  %mask_id2 = getelementptr inbounds %struct.nfp_flower_meta_tci, ptr %msk, i32 0, i32 1
  %3 = ptrtoint ptr %mask_id2 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %mask_id2, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfp_flower_compile_tci(ptr nocapture noundef %ext, ptr nocapture noundef %msk, ptr noundef %rule) local_unnamed_addr #1 align 64 {
entry:
  %match = alloca %struct.flow_match_vlan, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rule to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rule, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %and.i.i = and i32 %3, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.i.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.i.not, label %entry.if.end145_crit_edge, label %if.then

entry.if.end145_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end145

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match) #4
  %4 = ptrtoint ptr %match to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %match, align 4, !annotation !15
  %5 = getelementptr inbounds %struct.flow_match_vlan, ptr %match, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %5, align 4, !annotation !15
  call void @flow_rule_match_vlan(ptr noundef %rule, ptr noundef nonnull %match) #4
  %7 = ptrtoint ptr %match to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %match, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load2_noabort(i32 %9)
  %bf.load = load i16, ptr %8, align 2
  %10 = shl i16 %bf.load, 13
  %bf.lshr = lshr i16 %bf.load, 4
  %or150 = or i16 %10, %bf.lshr
  %11 = or i16 %or150, 4096
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %5, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load2_noabort(i32 %14)
  %bf.load66 = load i16, ptr %13, align 2
  %15 = shl i16 %bf.load66, 13
  %bf.lshr102 = lshr i16 %bf.load66, 4
  %or128151 = or i16 %15, %bf.lshr102
  %16 = or i16 %or128151, 4096
  %and134152 = and i16 %16, %11
  %tci = getelementptr inbounds %struct.nfp_flower_meta_tci, ptr %ext, i32 0, i32 2
  %17 = ptrtoint ptr %tci to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %tci, align 2
  %or138153 = or i16 %and134152, %18
  store i16 %or138153, ptr %tci, align 2
  %tci141 = getelementptr inbounds %struct.nfp_flower_meta_tci, ptr %msk, i32 0, i32 2
  %19 = ptrtoint ptr %tci141 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %tci141, align 2
  %or143154 = or i16 %20, %16
  store i16 %or143154, ptr %tci141, align 2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match) #4
  br label %if.end145

if.end145:                                        ; preds = %if.then, %entry.if.end145_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_rule_match_vlan(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @nfp_flower_compile_ext_meta(ptr nocapture noundef writeonly %frame, i32 noundef %key_ext) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %frame to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %key_ext, ptr %frame, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfp_flower_compile_port(ptr nocapture noundef writeonly %frame, i32 noundef %cmsg_port, i1 noundef zeroext %mask_version, i32 noundef %tun_type, ptr noundef writeonly %extack) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %mask_version, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %0 = ptrtoint ptr %frame to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %frame, align 4
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tun_type)
  %tobool1.not = icmp eq i32 %tun_type, 0
  br i1 %tobool1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %or = or i32 %tun_type, 1342177280
  br label %if.end11

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cmsg_port)
  %tobool4.not = icmp eq i32 %cmsg_port, 0
  br i1 %tobool4.not, label %do.body, label %if.else.if.end11_crit_edge

if.else.if.end11_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end11

do.body:                                          ; preds = %if.else
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nfp_flower_compile_port.__msg) #4
  %tobool6.not = icmp eq ptr %extack, null
  br i1 %tobool6.not, label %do.body.return_crit_edge, label %if.then7

do.body.return_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %1 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @nfp_flower_compile_port.__msg, ptr %extack, align 4
  br label %return

if.end11:                                         ; preds = %if.else.if.end11_crit_edge, %if.then2
  %storemerge = phi i32 [ %or, %if.then2 ], [ %cmsg_port, %if.else.if.end11_crit_edge ]
  %2 = ptrtoint ptr %frame to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %storemerge, ptr %frame, align 4
  br label %return

return:                                           ; preds = %if.end11, %if.then7, %do.body.return_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.end11 ], [ -95, %if.then7 ], [ -95, %do.body.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfp_flower_compile_mac(ptr nocapture noundef %ext, ptr nocapture noundef %msk, ptr noundef %rule) local_unnamed_addr #1 align 64 {
entry:
  %match = alloca %struct.flow_match_eth_addrs, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rule to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rule, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %and.i.i = and i32 %3, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.i.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match) #4
  %4 = ptrtoint ptr %match to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %match, align 4, !annotation !15
  %5 = getelementptr inbounds %struct.flow_match_eth_addrs, ptr %match, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %5, align 4, !annotation !15
  call void @flow_rule_match_eth_addrs(ptr noundef %rule, ptr noundef nonnull %match) #4
  %7 = ptrtoint ptr %match to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %match, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %5, align 4
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %8, align 1
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %10, align 1
  %and51 = and i8 %14, %12
  %15 = ptrtoint ptr %ext to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %ext, align 1
  %or52 = or i8 %16, %and51
  store i8 %or52, ptr %ext, align 1
  %17 = load i8, ptr %10, align 1
  %18 = ptrtoint ptr %msk to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %msk, align 1
  %or1453 = or i8 %19, %17
  store i8 %or1453, ptr %msk, align 1
  %arrayidx17 = getelementptr %struct.flow_dissector_key_eth_addrs, ptr %8, i32 0, i32 1, i32 0
  %20 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx17, align 1
  %arrayidx21 = getelementptr %struct.flow_dissector_key_eth_addrs, ptr %10, i32 0, i32 1, i32 0
  %22 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx21, align 1
  %and2354 = and i8 %23, %21
  %arrayidx24 = getelementptr %struct.nfp_flower_mac_mpls, ptr %ext, i32 0, i32 1, i32 0
  %24 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx24, align 1
  %or2655 = or i8 %25, %and2354
  store i8 %or2655, ptr %arrayidx24, align 1
  %26 = load i8, ptr %arrayidx21, align 1
  %arrayidx33 = getelementptr %struct.nfp_flower_mac_mpls, ptr %msk, i32 0, i32 1, i32 0
  %27 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx33, align 1
  %or3556 = or i8 %28, %26
  store i8 %or3556, ptr %arrayidx33, align 1
  %arrayidx.1 = getelementptr [6 x i8], ptr %8, i32 0, i32 1
  %29 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx.1, align 1
  %arrayidx2.1 = getelementptr [6 x i8], ptr %10, i32 0, i32 1
  %31 = ptrtoint ptr %arrayidx2.1 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx2.1, align 1
  %and51.1 = and i8 %32, %30
  %arrayidx4.1 = getelementptr [6 x i8], ptr %ext, i32 0, i32 1
  %33 = ptrtoint ptr %arrayidx4.1 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx4.1, align 1
  %or52.1 = or i8 %34, %and51.1
  store i8 %or52.1, ptr %arrayidx4.1, align 1
  %35 = load i8, ptr %arrayidx2.1, align 1
  %arrayidx12.1 = getelementptr [6 x i8], ptr %msk, i32 0, i32 1
  %36 = ptrtoint ptr %arrayidx12.1 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx12.1, align 1
  %or1453.1 = or i8 %37, %35
  store i8 %or1453.1, ptr %arrayidx12.1, align 1
  %arrayidx17.1 = getelementptr %struct.flow_dissector_key_eth_addrs, ptr %8, i32 0, i32 1, i32 1
  %38 = ptrtoint ptr %arrayidx17.1 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx17.1, align 1
  %arrayidx21.1 = getelementptr %struct.flow_dissector_key_eth_addrs, ptr %10, i32 0, i32 1, i32 1
  %40 = ptrtoint ptr %arrayidx21.1 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx21.1, align 1
  %and2354.1 = and i8 %41, %39
  %arrayidx24.1 = getelementptr %struct.nfp_flower_mac_mpls, ptr %ext, i32 0, i32 1, i32 1
  %42 = ptrtoint ptr %arrayidx24.1 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx24.1, align 1
  %or2655.1 = or i8 %43, %and2354.1
  store i8 %or2655.1, ptr %arrayidx24.1, align 1
  %44 = load i8, ptr %arrayidx21.1, align 1
  %arrayidx33.1 = getelementptr %struct.nfp_flower_mac_mpls, ptr %msk, i32 0, i32 1, i32 1
  %45 = ptrtoint ptr %arrayidx33.1 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx33.1, align 1
  %or3556.1 = or i8 %46, %44
  store i8 %or3556.1, ptr %arrayidx33.1, align 1
  %arrayidx.2 = getelementptr [6 x i8], ptr %8, i32 0, i32 2
  %47 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx.2, align 1
  %arrayidx2.2 = getelementptr [6 x i8], ptr %10, i32 0, i32 2
  %49 = ptrtoint ptr %arrayidx2.2 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx2.2, align 1
  %and51.2 = and i8 %50, %48
  %arrayidx4.2 = getelementptr [6 x i8], ptr %ext, i32 0, i32 2
  %51 = ptrtoint ptr %arrayidx4.2 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx4.2, align 1
  %or52.2 = or i8 %52, %and51.2
  store i8 %or52.2, ptr %arrayidx4.2, align 1
  %53 = load i8, ptr %arrayidx2.2, align 1
  %arrayidx12.2 = getelementptr [6 x i8], ptr %msk, i32 0, i32 2
  %54 = ptrtoint ptr %arrayidx12.2 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx12.2, align 1
  %or1453.2 = or i8 %55, %53
  store i8 %or1453.2, ptr %arrayidx12.2, align 1
  %arrayidx17.2 = getelementptr %struct.flow_dissector_key_eth_addrs, ptr %8, i32 0, i32 1, i32 2
  %56 = ptrtoint ptr %arrayidx17.2 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx17.2, align 1
  %arrayidx21.2 = getelementptr %struct.flow_dissector_key_eth_addrs, ptr %10, i32 0, i32 1, i32 2
  %58 = ptrtoint ptr %arrayidx21.2 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx21.2, align 1
  %and2354.2 = and i8 %59, %57
  %arrayidx24.2 = getelementptr %struct.nfp_flower_mac_mpls, ptr %ext, i32 0, i32 1, i32 2
  %60 = ptrtoint ptr %arrayidx24.2 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx24.2, align 1
  %or2655.2 = or i8 %61, %and2354.2
  store i8 %or2655.2, ptr %arrayidx24.2, align 1
  %62 = load i8, ptr %arrayidx21.2, align 1
  %arrayidx33.2 = getelementptr %struct.nfp_flower_mac_mpls, ptr %msk, i32 0, i32 1, i32 2
  %63 = ptrtoint ptr %arrayidx33.2 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx33.2, align 1
  %or3556.2 = or i8 %64, %62
  store i8 %or3556.2, ptr %arrayidx33.2, align 1
  %arrayidx.3 = getelementptr [6 x i8], ptr %8, i32 0, i32 3
  %65 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx.3, align 1
  %arrayidx2.3 = getelementptr [6 x i8], ptr %10, i32 0, i32 3
  %67 = ptrtoint ptr %arrayidx2.3 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx2.3, align 1
  %and51.3 = and i8 %68, %66
  %arrayidx4.3 = getelementptr [6 x i8], ptr %ext, i32 0, i32 3
  %69 = ptrtoint ptr %arrayidx4.3 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %arrayidx4.3, align 1
  %or52.3 = or i8 %70, %and51.3
  store i8 %or52.3, ptr %arrayidx4.3, align 1
  %71 = load i8, ptr %arrayidx2.3, align 1
  %arrayidx12.3 = getelementptr [6 x i8], ptr %msk, i32 0, i32 3
  %72 = ptrtoint ptr %arrayidx12.3 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx12.3, align 1
  %or1453.3 = or i8 %73, %71
  store i8 %or1453.3, ptr %arrayidx12.3, align 1
  %arrayidx17.3 = getelementptr %struct.flow_dissector_key_eth_addrs, ptr %8, i32 0, i32 1, i32 3
  %74 = ptrtoint ptr %arrayidx17.3 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx17.3, align 1
  %arrayidx21.3 = getelementptr %struct.flow_dissector_key_eth_addrs, ptr %10, i32 0, i32 1, i32 3
  %76 = ptrtoint ptr %arrayidx21.3 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %arrayidx21.3, align 1
  %and2354.3 = and i8 %77, %75
  %arrayidx24.3 = getelementptr %struct.nfp_flower_mac_mpls, ptr %ext, i32 0, i32 1, i32 3
  %78 = ptrtoint ptr %arrayidx24.3 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx24.3, align 1
  %or2655.3 = or i8 %79, %and2354.3
  store i8 %or2655.3, ptr %arrayidx24.3, align 1
  %80 = load i8, ptr %arrayidx21.3, align 1
  %arrayidx33.3 = getelementptr %struct.nfp_flower_mac_mpls, ptr %msk, i32 0, i32 1, i32 3
  %81 = ptrtoint ptr %arrayidx33.3 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %arrayidx33.3, align 1
  %or3556.3 = or i8 %82, %80
  store i8 %or3556.3, ptr %arrayidx33.3, align 1
  %arrayidx.4 = getelementptr [6 x i8], ptr %8, i32 0, i32 4
  %83 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %arrayidx.4, align 1
  %arrayidx2.4 = getelementptr [6 x i8], ptr %10, i32 0, i32 4
  %85 = ptrtoint ptr %arrayidx2.4 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %arrayidx2.4, align 1
  %and51.4 = and i8 %86, %84
  %arrayidx4.4 = getelementptr [6 x i8], ptr %ext, i32 0, i32 4
  %87 = ptrtoint ptr %arrayidx4.4 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %arrayidx4.4, align 1
  %or52.4 = or i8 %88, %and51.4
  store i8 %or52.4, ptr %arrayidx4.4, align 1
  %89 = load i8, ptr %arrayidx2.4, align 1
  %arrayidx12.4 = getelementptr [6 x i8], ptr %msk, i32 0, i32 4
  %90 = ptrtoint ptr %arrayidx12.4 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %arrayidx12.4, align 1
  %or1453.4 = or i8 %91, %89
  store i8 %or1453.4, ptr %arrayidx12.4, align 1
  %arrayidx17.4 = getelementptr %struct.flow_dissector_key_eth_addrs, ptr %8, i32 0, i32 1, i32 4
  %92 = ptrtoint ptr %arrayidx17.4 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %arrayidx17.4, align 1
  %arrayidx21.4 = getelementptr %struct.flow_dissector_key_eth_addrs, ptr %10, i32 0, i32 1, i32 4
  %94 = ptrtoint ptr %arrayidx21.4 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %arrayidx21.4, align 1
  %and2354.4 = and i8 %95, %93
  %arrayidx24.4 = getelementptr %struct.nfp_flower_mac_mpls, ptr %ext, i32 0, i32 1, i32 4
  %96 = ptrtoint ptr %arrayidx24.4 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %arrayidx24.4, align 1
  %or2655.4 = or i8 %97, %and2354.4
  store i8 %or2655.4, ptr %arrayidx24.4, align 1
  %98 = load i8, ptr %arrayidx21.4, align 1
  %arrayidx33.4 = getelementptr %struct.nfp_flower_mac_mpls, ptr %msk, i32 0, i32 1, i32 4
  %99 = ptrtoint ptr %arrayidx33.4 to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %arrayidx33.4, align 1
  %or3556.4 = or i8 %100, %98
  store i8 %or3556.4, ptr %arrayidx33.4, align 1
  %arrayidx.5 = getelementptr [6 x i8], ptr %8, i32 0, i32 5
  %101 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %arrayidx.5, align 1
  %arrayidx2.5 = getelementptr [6 x i8], ptr %10, i32 0, i32 5
  %103 = ptrtoint ptr %arrayidx2.5 to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %arrayidx2.5, align 1
  %and51.5 = and i8 %104, %102
  %arrayidx4.5 = getelementptr [6 x i8], ptr %ext, i32 0, i32 5
  %105 = ptrtoint ptr %arrayidx4.5 to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %arrayidx4.5, align 1
  %or52.5 = or i8 %106, %and51.5
  store i8 %or52.5, ptr %arrayidx4.5, align 1
  %107 = load i8, ptr %arrayidx2.5, align 1
  %arrayidx12.5 = getelementptr [6 x i8], ptr %msk, i32 0, i32 5
  %108 = ptrtoint ptr %arrayidx12.5 to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %arrayidx12.5, align 1
  %or1453.5 = or i8 %109, %107
  store i8 %or1453.5, ptr %arrayidx12.5, align 1
  %arrayidx17.5 = getelementptr %struct.flow_dissector_key_eth_addrs, ptr %8, i32 0, i32 1, i32 5
  %110 = ptrtoint ptr %arrayidx17.5 to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %arrayidx17.5, align 1
  %arrayidx21.5 = getelementptr %struct.flow_dissector_key_eth_addrs, ptr %10, i32 0, i32 1, i32 5
  %112 = ptrtoint ptr %arrayidx21.5 to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %arrayidx21.5, align 1
  %and2354.5 = and i8 %113, %111
  %arrayidx24.5 = getelementptr %struct.nfp_flower_mac_mpls, ptr %ext, i32 0, i32 1, i32 5
  %114 = ptrtoint ptr %arrayidx24.5 to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %arrayidx24.5, align 1
  %or2655.5 = or i8 %115, %and2354.5
  store i8 %or2655.5, ptr %arrayidx24.5, align 1
  %116 = load i8, ptr %arrayidx21.5, align 1
  %arrayidx33.5 = getelementptr %struct.nfp_flower_mac_mpls, ptr %msk, i32 0, i32 1, i32 5
  %117 = ptrtoint ptr %arrayidx33.5 to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %arrayidx33.5, align 1
  %or3556.5 = or i8 %118, %116
  store i8 %or3556.5, ptr %arrayidx33.5, align 1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_rule_match_eth_addrs(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfp_flower_compile_mpls(ptr nocapture noundef %ext, ptr nocapture noundef %msk, ptr noundef %rule, ptr noundef writeonly %extack) local_unnamed_addr #1 align 64 {
entry:
  %match = alloca %struct.flow_match_mpls, align 4
  %match253 = alloca %struct.flow_match_basic, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rule to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rule, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %and.i.i = and i32 %3, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.i.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.i.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match) #4
  %4 = ptrtoint ptr %match to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %match, align 4, !annotation !15
  %5 = getelementptr inbounds %struct.flow_match_mpls, ptr %match, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %5, align 4, !annotation !15
  call void @flow_rule_match_mpls(ptr noundef %rule, ptr noundef nonnull %match) #4
  %7 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %5, align 4
  %used_lses = getelementptr inbounds %struct.flow_dissector_key_mpls, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %used_lses to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %used_lses, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %10)
  %cmp.not = icmp eq i8 %10, 1
  br i1 %cmp.not, label %cleanup, label %do.body

do.body:                                          ; preds = %if.then
  call void @do_trace_netlink_extack(ptr noundef nonnull @nfp_flower_compile_mpls.__msg) #4
  %tobool.not = icmp eq ptr %extack, null
  br i1 %tobool.not, label %do.body.cleanup.thread_crit_edge, label %if.then3

do.body.cleanup.thread_crit_edge:                 ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.thread

if.then3:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %11 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @nfp_flower_compile_mpls.__msg, ptr %extack, align 4
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then3, %do.body.cleanup.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match) #4
  br label %return

cleanup:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %12 = ptrtoint ptr %match to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %match, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %bf.load = load i32, ptr %13, align 4
  %shl = shl i32 %bf.load, 12
  %15 = lshr i32 %bf.load, 11
  %shl73 = and i32 %15, 3584
  %or = or i32 %shl73, %shl
  %16 = lshr i32 %bf.load, 15
  %shl115 = and i32 %16, 256
  %or117 = or i32 %or, %shl115
  %or118 = or i32 %or117, 1
  %17 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %17)
  %bf.load129 = load i32, ptr %8, align 4
  %shl156 = shl i32 %bf.load129, 12
  %18 = lshr i32 %bf.load129, 11
  %shl198 = and i32 %18, 3584
  %or200 = or i32 %shl198, %shl156
  %19 = lshr i32 %bf.load129, 15
  %shl241 = and i32 %19, 256
  %or243 = or i32 %or200, %shl241
  %or244 = or i32 %or243, 1
  %and245 = and i32 %or244, %or118
  %mpls_lse = getelementptr inbounds %struct.nfp_flower_mac_mpls, ptr %ext, i32 0, i32 2
  %20 = ptrtoint ptr %mpls_lse to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mpls_lse, align 4
  %or246 = or i32 %and245, %21
  store i32 %or246, ptr %mpls_lse, align 4
  %mpls_lse247 = getelementptr inbounds %struct.nfp_flower_mac_mpls, ptr %msk, i32 0, i32 2
  %22 = ptrtoint ptr %mpls_lse247 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %mpls_lse247, align 4
  %or248 = or i32 %or244, %23
  store i32 %or248, ptr %mpls_lse247, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match) #4
  br label %return

if.else:                                          ; preds = %entry
  %and.i.i279 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i279)
  %tobool.i.i280.not = icmp eq i32 %and.i.i279, 0
  br i1 %tobool.i.i280.not, label %if.else.return_crit_edge, label %if.then252

if.else.return_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.then252:                                       ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match253) #4
  %24 = ptrtoint ptr %match253 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr inttoptr (i32 -1 to ptr), ptr %match253, align 4, !annotation !15
  %25 = getelementptr inbounds %struct.flow_match_basic, ptr %match253, i32 0, i32 1
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr inttoptr (i32 -1 to ptr), ptr %25, align 4, !annotation !15
  call void @flow_rule_match_basic(ptr noundef %rule, ptr noundef nonnull %match253) #4
  %27 = ptrtoint ptr %match253 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %match253, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %28, align 2
  %.off = add i16 %30, 30649
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %.off)
  %switch278 = icmp ult i16 %.off, 2
  br i1 %switch278, label %if.then263, label %if.then252.if.end268_crit_edge

if.then252.if.end268_crit_edge:                   ; preds = %if.then252
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end268

if.then263:                                       ; preds = %if.then252
  call void @__sanitizer_cov_trace_pc() #6
  %mpls_lse264 = getelementptr inbounds %struct.nfp_flower_mac_mpls, ptr %ext, i32 0, i32 2
  %31 = ptrtoint ptr %mpls_lse264 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %mpls_lse264, align 4
  %or265 = or i32 %32, 1
  store i32 %or265, ptr %mpls_lse264, align 4
  %mpls_lse266 = getelementptr inbounds %struct.nfp_flower_mac_mpls, ptr %msk, i32 0, i32 2
  %33 = ptrtoint ptr %mpls_lse266 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %mpls_lse266, align 4
  %or267 = or i32 %34, 1
  store i32 %or267, ptr %mpls_lse266, align 4
  br label %if.end268

if.end268:                                        ; preds = %if.then263, %if.then252.if.end268_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match253) #4
  br label %return

return:                                           ; preds = %if.end268, %if.else.return_crit_edge, %cleanup, %cleanup.thread
  %retval.1 = phi i32 [ -95, %cleanup.thread ], [ 0, %cleanup ], [ 0, %if.else.return_crit_edge ], [ 0, %if.end268 ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_rule_match_mpls(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_rule_match_basic(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfp_flower_compile_tport(ptr nocapture noundef %ext, ptr nocapture noundef %msk, ptr noundef %rule) local_unnamed_addr #1 align 64 {
entry:
  %match = alloca %struct.flow_match_ports, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rule to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rule, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %and.i.i = and i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.i.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match) #4
  %4 = ptrtoint ptr %match to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %match, align 4, !annotation !15
  %5 = getelementptr inbounds %struct.flow_match_ports, ptr %match, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %5, align 4, !annotation !15
  call void @flow_rule_match_ports(ptr noundef %rule, ptr noundef nonnull %match) #4
  %7 = ptrtoint ptr %match to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %match, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %8, align 4
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %5, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %12, align 4
  %and31 = and i16 %14, %10
  %15 = ptrtoint ptr %ext to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %ext, align 2
  %or32 = or i16 %16, %and31
  store i16 %or32, ptr %ext, align 2
  %dst = getelementptr inbounds %struct.anon.221, ptr %8, i32 0, i32 1
  %17 = ptrtoint ptr %dst to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %dst, align 2
  %dst8 = getelementptr inbounds %struct.anon.221, ptr %12, i32 0, i32 1
  %19 = ptrtoint ptr %dst8 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %dst8, align 2
  %and1033 = and i16 %20, %18
  %port_dst = getelementptr inbounds %struct.nfp_flower_tp_ports, ptr %ext, i32 0, i32 1
  %21 = ptrtoint ptr %port_dst to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %port_dst, align 2
  %or1234 = or i16 %22, %and1033
  store i16 %or1234, ptr %port_dst, align 2
  %23 = load i16, ptr %12, align 4
  %24 = ptrtoint ptr %msk to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %msk, align 2
  %or1935 = or i16 %25, %23
  store i16 %or1935, ptr %msk, align 2
  %26 = load i16, ptr %dst8, align 2
  %port_dst24 = getelementptr inbounds %struct.nfp_flower_tp_ports, ptr %msk, i32 0, i32 1
  %27 = ptrtoint ptr %port_dst24 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %port_dst24, align 2
  %or2636 = or i16 %28, %26
  store i16 %or2636, ptr %port_dst24, align 2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_rule_match_ports(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfp_flower_compile_vlan(ptr nocapture noundef %ext, ptr nocapture noundef %msk, ptr noundef %rule) local_unnamed_addr #1 align 64 {
entry:
  %match = alloca %struct.flow_match_vlan, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match) #4
  %0 = ptrtoint ptr %match to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %match, align 4, !annotation !15
  %1 = getelementptr inbounds %struct.flow_match_vlan, ptr %match, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !15
  %3 = ptrtoint ptr %rule to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rule, align 8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 4
  %and.i.i = and i32 %6, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.i.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  call void @flow_rule_match_vlan(ptr noundef %rule, ptr noundef nonnull %match) #4
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %9 = ptrtoint ptr %match to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %match, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load2_noabort(i32 %11)
  %bf.load.i = load i16, ptr %10, align 2
  %12 = shl i16 %bf.load.i, 13
  %bf.lshr.i = lshr i16 %bf.load.i, 4
  %or208.i = or i16 %12, %bf.lshr.i
  %13 = or i16 %or208.i, 4096
  %14 = ptrtoint ptr %8 to i32
  call void @__asan_load2_noabort(i32 %14)
  %bf.load62.i = load i16, ptr %8, align 2
  %15 = shl i16 %bf.load62.i, 13
  %bf.lshr95.i = lshr i16 %bf.load62.i, 4
  %or119209.i = or i16 %15, %bf.lshr95.i
  %16 = or i16 %or119209.i, 4096
  %and127216.i = and i16 %16, %13
  %outer_tci.i = getelementptr inbounds %struct.nfp_flower_vlan, ptr %ext, i32 0, i32 1
  %17 = ptrtoint ptr %outer_tci.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %outer_tci.i, align 2
  %or131217.i = or i16 %and127216.i, %18
  store i16 %or131217.i, ptr %outer_tci.i, align 2
  %vlan_tpid.i = getelementptr inbounds %struct.flow_dissector_key_vlan, ptr %10, i32 0, i32 1
  %19 = ptrtoint ptr %vlan_tpid.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %vlan_tpid.i, align 2
  %vlan_tpid134.i = getelementptr inbounds %struct.flow_dissector_key_vlan, ptr %8, i32 0, i32 1
  %21 = ptrtoint ptr %vlan_tpid134.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %vlan_tpid134.i, align 2
  %and136218.i = and i16 %22, %20
  %23 = ptrtoint ptr %ext to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %ext, align 2
  %or138219.i = or i16 %24, %and136218.i
  store i16 %or138219.i, ptr %ext, align 2
  %outer_tci141.i = getelementptr inbounds %struct.nfp_flower_vlan, ptr %msk, i32 0, i32 1
  %25 = ptrtoint ptr %outer_tci141.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %outer_tci141.i, align 2
  %or143220.i = or i16 %26, %16
  store i16 %or143220.i, ptr %outer_tci141.i, align 2
  %.sink222.i = load i16, ptr %vlan_tpid134.i, align 2
  %27 = ptrtoint ptr %msk to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %msk, align 2
  %or176215.i = or i16 %28, %.sink222.i
  store i16 %or176215.i, ptr %msk, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %29 = ptrtoint ptr %rule to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %rule, align 8
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %30, align 4
  %and.i.i9 = and i32 %32, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i9)
  %tobool.i.i10.not = icmp eq i32 %and.i.i9, 0
  br i1 %tobool.i.i10.not, label %if.end.if.end3_crit_edge, label %if.then2

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  call void @flow_rule_match_cvlan(ptr noundef %rule, ptr noundef nonnull %match) #4
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %1, align 4
  %35 = ptrtoint ptr %match to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %match, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load2_noabort(i32 %37)
  %bf.load.i12 = load i16, ptr %36, align 2
  %38 = shl i16 %bf.load.i12, 13
  %bf.lshr.i13 = lshr i16 %bf.load.i12, 4
  %or208.i14 = or i16 %38, %bf.lshr.i13
  %39 = or i16 %or208.i14, 4096
  %40 = ptrtoint ptr %34 to i32
  call void @__asan_load2_noabort(i32 %40)
  %bf.load62.i15 = load i16, ptr %34, align 2
  %41 = shl i16 %bf.load62.i15, 13
  %bf.lshr95.i16 = lshr i16 %bf.load62.i15, 4
  %or119209.i17 = or i16 %41, %bf.lshr95.i16
  %42 = or i16 %or119209.i17, 4096
  %and127216.i18 = and i16 %42, %39
  %inner_tci.i = getelementptr inbounds %struct.nfp_flower_vlan, ptr %ext, i32 0, i32 3
  %43 = ptrtoint ptr %inner_tci.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %inner_tci.i, align 2
  %or157211.i = or i16 %and127216.i18, %44
  store i16 %or157211.i, ptr %inner_tci.i, align 2
  %vlan_tpid159.i = getelementptr inbounds %struct.flow_dissector_key_vlan, ptr %36, i32 0, i32 1
  %45 = ptrtoint ptr %vlan_tpid159.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %vlan_tpid159.i, align 2
  %vlan_tpid161.i = getelementptr inbounds %struct.flow_dissector_key_vlan, ptr %34, i32 0, i32 1
  %47 = ptrtoint ptr %vlan_tpid161.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %vlan_tpid161.i, align 2
  %and163212.i = and i16 %48, %46
  %inner_tpid.i = getelementptr inbounds %struct.nfp_flower_vlan, ptr %ext, i32 0, i32 2
  %49 = ptrtoint ptr %inner_tpid.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %inner_tpid.i, align 2
  %or165213.i = or i16 %50, %and163212.i
  store i16 %or165213.i, ptr %inner_tpid.i, align 2
  %inner_tci168.i = getelementptr inbounds %struct.nfp_flower_vlan, ptr %msk, i32 0, i32 3
  %51 = ptrtoint ptr %inner_tci168.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %inner_tci168.i, align 2
  %or170214.i = or i16 %52, %42
  store i16 %or170214.i, ptr %inner_tci168.i, align 2
  %inner_tpid174.i = getelementptr inbounds %struct.nfp_flower_vlan, ptr %msk, i32 0, i32 2
  %.sink222.i19 = load i16, ptr %vlan_tpid161.i, align 2
  %53 = ptrtoint ptr %inner_tpid174.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %inner_tpid174.i, align 2
  %or176215.i20 = or i16 %54, %.sink222.i19
  store i16 %or176215.i20, ptr %inner_tpid174.i, align 2
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_rule_match_cvlan(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfp_flower_compile_ipv4(ptr nocapture noundef %ext, ptr nocapture noundef %msk, ptr noundef %rule) local_unnamed_addr #1 align 64 {
entry:
  %match = alloca %struct.flow_match_ipv4_addrs, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rule to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rule, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %and.i.i = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.i.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match) #4
  %4 = ptrtoint ptr %match to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %match, align 4, !annotation !15
  %5 = getelementptr inbounds %struct.flow_match_ipv4_addrs, ptr %match, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %5, align 4, !annotation !15
  call void @flow_rule_match_ipv4_addrs(ptr noundef %rule, ptr noundef nonnull %match) #4
  %7 = ptrtoint ptr %match to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %match, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %5, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  %and = and i32 %14, %10
  %ipv4_src = getelementptr inbounds %struct.nfp_flower_ipv4, ptr %ext, i32 0, i32 1
  %15 = ptrtoint ptr %ipv4_src to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ipv4_src, align 4
  %or = or i32 %16, %and
  store i32 %or, ptr %ipv4_src, align 4
  %dst = getelementptr inbounds %struct.flow_dissector_key_ipv4_addrs, ptr %8, i32 0, i32 1
  %17 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dst, align 4
  %dst4 = getelementptr inbounds %struct.flow_dissector_key_ipv4_addrs, ptr %12, i32 0, i32 1
  %19 = ptrtoint ptr %dst4 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %dst4, align 4
  %and5 = and i32 %20, %18
  %ipv4_dst = getelementptr inbounds %struct.nfp_flower_ipv4, ptr %ext, i32 0, i32 2
  %21 = ptrtoint ptr %ipv4_dst to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ipv4_dst, align 4
  %or6 = or i32 %22, %and5
  store i32 %or6, ptr %ipv4_dst, align 4
  %23 = load i32, ptr %12, align 4
  %ipv4_src9 = getelementptr inbounds %struct.nfp_flower_ipv4, ptr %msk, i32 0, i32 1
  %24 = ptrtoint ptr %ipv4_src9 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ipv4_src9, align 4
  %or10 = or i32 %25, %23
  store i32 %or10, ptr %ipv4_src9, align 4
  %26 = load i32, ptr %dst4, align 4
  %ipv4_dst13 = getelementptr inbounds %struct.nfp_flower_ipv4, ptr %msk, i32 0, i32 2
  %27 = ptrtoint ptr %ipv4_dst13 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ipv4_dst13, align 4
  %or14 = or i32 %28, %26
  store i32 %or14, ptr %ipv4_dst13, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call fastcc void @nfp_flower_compile_ip_ext(ptr noundef %ext, ptr noundef %msk, ptr noundef %rule)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_rule_match_ipv4_addrs(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nfp_flower_compile_ip_ext(ptr nocapture noundef %ext, ptr nocapture noundef %msk, ptr noundef %rule) unnamed_addr #1 align 64 {
entry:
  %match = alloca %struct.flow_match_basic, align 4
  %match14 = alloca %struct.flow_match_ip, align 4
  %match52 = alloca %struct.flow_match_tcp, align 4
  %match148 = alloca %struct.flow_match_control, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rule to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rule, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %and.i.i = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.i.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match) #4
  %4 = ptrtoint ptr %match to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %match, align 4, !annotation !15
  %5 = getelementptr inbounds %struct.flow_match_basic, ptr %match, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %5, align 4, !annotation !15
  call void @flow_rule_match_basic(ptr noundef %rule, ptr noundef nonnull %match) #4
  %7 = ptrtoint ptr %match to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %match, align 4
  %ip_proto = getelementptr inbounds %struct.flow_dissector_key_basic, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %ip_proto to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %ip_proto, align 2
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %5, align 4
  %ip_proto1 = getelementptr inbounds %struct.flow_dissector_key_basic, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %ip_proto1 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %ip_proto1, align 2
  %and229 = and i8 %14, %10
  %proto = getelementptr inbounds %struct.nfp_flower_ip_ext, ptr %ext, i32 0, i32 1
  %15 = ptrtoint ptr %proto to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %proto, align 1
  %or230 = or i8 %16, %and229
  store i8 %or230, ptr %proto, align 1
  %17 = load i8, ptr %ip_proto1, align 2
  %proto8 = getelementptr inbounds %struct.nfp_flower_ip_ext, ptr %msk, i32 0, i32 1
  %18 = ptrtoint ptr %proto8 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %proto8, align 1
  %or10231 = or i8 %19, %17
  store i8 %or10231, ptr %proto8, align 1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %20 = ptrtoint ptr %rule to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rule, align 8
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 4
  %and.i.i232 = and i32 %23, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i232)
  %tobool.i.i233.not = icmp eq i32 %and.i.i232, 0
  br i1 %tobool.i.i233.not, label %if.end.if.end49_crit_edge, label %if.then13

if.end.if.end49_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end49

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match14) #4
  %24 = ptrtoint ptr %match14 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr inttoptr (i32 -1 to ptr), ptr %match14, align 4, !annotation !15
  %25 = getelementptr inbounds %struct.flow_match_ip, ptr %match14, i32 0, i32 1
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr inttoptr (i32 -1 to ptr), ptr %25, align 4, !annotation !15
  call void @flow_rule_match_ip(ptr noundef %rule, ptr noundef nonnull %match14) #4
  %27 = ptrtoint ptr %match14 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %match14, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %28, align 1
  %31 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %25, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %32, align 1
  %and20223 = and i8 %34, %30
  %35 = ptrtoint ptr %ext to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %ext, align 1
  %or23224 = or i8 %36, %and20223
  store i8 %or23224, ptr %ext, align 1
  %ttl = getelementptr inbounds %struct.flow_dissector_key_ip, ptr %28, i32 0, i32 1
  %37 = ptrtoint ptr %ttl to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %ttl, align 1
  %ttl28 = getelementptr inbounds %struct.flow_dissector_key_ip, ptr %32, i32 0, i32 1
  %39 = ptrtoint ptr %ttl28 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %ttl28, align 1
  %and30225 = and i8 %40, %38
  %ttl31 = getelementptr inbounds %struct.nfp_flower_ip_ext, ptr %ext, i32 0, i32 2
  %41 = ptrtoint ptr %ttl31 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %ttl31, align 1
  %or33226 = or i8 %42, %and30225
  store i8 %or33226, ptr %ttl31, align 1
  %43 = load i8, ptr %32, align 1
  %44 = ptrtoint ptr %msk to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %msk, align 1
  %or40227 = or i8 %45, %43
  store i8 %or40227, ptr %msk, align 1
  %46 = load i8, ptr %ttl28, align 1
  %ttl45 = getelementptr inbounds %struct.nfp_flower_ip_ext, ptr %msk, i32 0, i32 2
  %47 = ptrtoint ptr %ttl45 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %ttl45, align 1
  %or47228 = or i8 %48, %46
  store i8 %or47228, ptr %ttl45, align 1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match14) #4
  br label %if.end49

if.end49:                                         ; preds = %if.then13, %if.end.if.end49_crit_edge
  %49 = ptrtoint ptr %rule to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %rule, align 8
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %50, align 4
  %and.i.i234 = and i32 %52, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i234)
  %tobool.i.i235.not = icmp eq i32 %and.i.i234, 0
  br i1 %tobool.i.i235.not, label %if.end49.if.end145_crit_edge, label %if.then51

if.end49.if.end145_crit_edge:                     ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end145

if.then51:                                        ; preds = %if.end49
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match52) #4
  %53 = ptrtoint ptr %match52 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr inttoptr (i32 -1 to ptr), ptr %match52, align 4, !annotation !15
  %54 = getelementptr inbounds %struct.flow_match_tcp, ptr %match52, i32 0, i32 1
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr inttoptr (i32 -1 to ptr), ptr %54, align 4, !annotation !15
  call void @flow_rule_match_tcp(ptr noundef %rule, ptr noundef nonnull %match52) #4
  %56 = ptrtoint ptr %match52 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %match52, align 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %57, align 2
  %60 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %54, align 4
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %61, align 2
  %conv56 = zext i16 %59 to i32
  %and57 = and i32 %conv56, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool.not = icmp eq i32 %and57, 0
  br i1 %tobool.not, label %if.then51.if.end63_crit_edge, label %if.then58

if.then51.if.end63_crit_edge:                     ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end63

if.then58:                                        ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #6
  %flags59 = getelementptr inbounds %struct.nfp_flower_ip_ext, ptr %ext, i32 0, i32 3
  %64 = ptrtoint ptr %flags59 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %flags59, align 1
  %66 = or i8 %65, 1
  store i8 %66, ptr %flags59, align 1
  br label %if.end63

if.end63:                                         ; preds = %if.then58, %if.then51.if.end63_crit_edge
  %conv64 = zext i16 %63 to i32
  %and65 = and i32 %conv64, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65)
  %tobool66.not = icmp eq i32 %and65, 0
  br i1 %tobool66.not, label %if.end63.if.end72_crit_edge, label %if.then67

if.end63.if.end72_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end72

if.then67:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #6
  %flags68 = getelementptr inbounds %struct.nfp_flower_ip_ext, ptr %msk, i32 0, i32 3
  %67 = ptrtoint ptr %flags68 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %flags68, align 1
  %69 = or i8 %68, 1
  store i8 %69, ptr %flags68, align 1
  br label %if.end72

if.end72:                                         ; preds = %if.then67, %if.end63.if.end72_crit_edge
  %and74 = and i32 %conv56, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and74)
  %tobool75.not = icmp eq i32 %and74, 0
  br i1 %tobool75.not, label %if.end72.if.end81_crit_edge, label %if.then76

if.end72.if.end81_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end81

if.then76:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #6
  %flags77 = getelementptr inbounds %struct.nfp_flower_ip_ext, ptr %ext, i32 0, i32 3
  %70 = ptrtoint ptr %flags77 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %flags77, align 1
  %72 = or i8 %71, 2
  store i8 %72, ptr %flags77, align 1
  br label %if.end81

if.end81:                                         ; preds = %if.then76, %if.end72.if.end81_crit_edge
  %and83 = and i32 %conv64, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and83)
  %tobool84.not = icmp eq i32 %and83, 0
  br i1 %tobool84.not, label %if.end81.if.end90_crit_edge, label %if.then85

if.end81.if.end90_crit_edge:                      ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end90

if.then85:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #6
  %flags86 = getelementptr inbounds %struct.nfp_flower_ip_ext, ptr %msk, i32 0, i32 3
  %73 = ptrtoint ptr %flags86 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %flags86, align 1
  %75 = or i8 %74, 2
  store i8 %75, ptr %flags86, align 1
  br label %if.end90

if.end90:                                         ; preds = %if.then85, %if.end81.if.end90_crit_edge
  %and92 = and i32 %conv56, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and92)
  %tobool93.not = icmp eq i32 %and92, 0
  br i1 %tobool93.not, label %if.end90.if.end99_crit_edge, label %if.then94

if.end90.if.end99_crit_edge:                      ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end99

if.then94:                                        ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #6
  %flags95 = getelementptr inbounds %struct.nfp_flower_ip_ext, ptr %ext, i32 0, i32 3
  %76 = ptrtoint ptr %flags95 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %flags95, align 1
  %78 = or i8 %77, 4
  store i8 %78, ptr %flags95, align 1
  br label %if.end99

if.end99:                                         ; preds = %if.then94, %if.end90.if.end99_crit_edge
  %and101 = and i32 %conv64, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and101)
  %tobool102.not = icmp eq i32 %and101, 0
  br i1 %tobool102.not, label %if.end99.if.end108_crit_edge, label %if.then103

if.end99.if.end108_crit_edge:                     ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end108

if.then103:                                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #6
  %flags104 = getelementptr inbounds %struct.nfp_flower_ip_ext, ptr %msk, i32 0, i32 3
  %79 = ptrtoint ptr %flags104 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %flags104, align 1
  %81 = or i8 %80, 4
  store i8 %81, ptr %flags104, align 1
  br label %if.end108

if.end108:                                        ; preds = %if.then103, %if.end99.if.end108_crit_edge
  %and110 = and i32 %conv56, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and110)
  %tobool111.not = icmp eq i32 %and110, 0
  br i1 %tobool111.not, label %if.end108.if.end117_crit_edge, label %if.then112

if.end108.if.end117_crit_edge:                    ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end117

if.then112:                                       ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #6
  %flags113 = getelementptr inbounds %struct.nfp_flower_ip_ext, ptr %ext, i32 0, i32 3
  %82 = ptrtoint ptr %flags113 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %flags113, align 1
  %84 = or i8 %83, 8
  store i8 %84, ptr %flags113, align 1
  br label %if.end117

if.end117:                                        ; preds = %if.then112, %if.end108.if.end117_crit_edge
  %and119 = and i32 %conv64, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and119)
  %tobool120.not = icmp eq i32 %and119, 0
  br i1 %tobool120.not, label %if.end117.if.end126_crit_edge, label %if.then121

if.end117.if.end126_crit_edge:                    ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end126

if.then121:                                       ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #6
  %flags122 = getelementptr inbounds %struct.nfp_flower_ip_ext, ptr %msk, i32 0, i32 3
  %85 = ptrtoint ptr %flags122 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %flags122, align 1
  %87 = or i8 %86, 8
  store i8 %87, ptr %flags122, align 1
  br label %if.end126

if.end126:                                        ; preds = %if.then121, %if.end117.if.end126_crit_edge
  %and128 = and i32 %conv56, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and128)
  %tobool129.not = icmp eq i32 %and128, 0
  br i1 %tobool129.not, label %if.end126.if.end135_crit_edge, label %if.then130

if.end126.if.end135_crit_edge:                    ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end135

if.then130:                                       ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #6
  %flags131 = getelementptr inbounds %struct.nfp_flower_ip_ext, ptr %ext, i32 0, i32 3
  %88 = ptrtoint ptr %flags131 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %flags131, align 1
  %90 = or i8 %89, 16
  store i8 %90, ptr %flags131, align 1
  br label %if.end135

if.end135:                                        ; preds = %if.then130, %if.end126.if.end135_crit_edge
  %and137 = and i32 %conv64, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and137)
  %tobool138.not = icmp eq i32 %and137, 0
  br i1 %tobool138.not, label %if.end135.if.end144_crit_edge, label %if.then139

if.end135.if.end144_crit_edge:                    ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end144

if.then139:                                       ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #6
  %flags140 = getelementptr inbounds %struct.nfp_flower_ip_ext, ptr %msk, i32 0, i32 3
  %91 = ptrtoint ptr %flags140 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %flags140, align 1
  %93 = or i8 %92, 16
  store i8 %93, ptr %flags140, align 1
  br label %if.end144

if.end144:                                        ; preds = %if.then139, %if.end135.if.end144_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match52) #4
  br label %if.end145

if.end145:                                        ; preds = %if.end144, %if.end49.if.end145_crit_edge
  %94 = ptrtoint ptr %rule to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %rule, align 8
  %96 = ptrtoint ptr %95 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %95, align 4
  %and.i.i236 = and i32 %97, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i236)
  %tobool.i.i237.not = icmp eq i32 %and.i.i236, 0
  br i1 %tobool.i.i237.not, label %if.end145.if.end189_crit_edge, label %if.then147

if.end145.if.end189_crit_edge:                    ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end189

if.then147:                                       ; preds = %if.end145
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match148) #4
  %98 = ptrtoint ptr %match148 to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr inttoptr (i32 -1 to ptr), ptr %match148, align 4, !annotation !15
  %99 = getelementptr inbounds %struct.flow_match_control, ptr %match148, i32 0, i32 1
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr inttoptr (i32 -1 to ptr), ptr %99, align 4, !annotation !15
  call void @flow_rule_match_control(ptr noundef %rule, ptr noundef nonnull %match148) #4
  %101 = ptrtoint ptr %match148 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %match148, align 4
  %flags150 = getelementptr inbounds %struct.flow_dissector_key_control, ptr %102, i32 0, i32 2
  %103 = ptrtoint ptr %flags150 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %flags150, align 4
  %and151 = and i32 %104, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and151)
  %tobool152.not = icmp eq i32 %and151, 0
  br i1 %tobool152.not, label %if.then147.if.end158_crit_edge, label %if.then153

if.then147.if.end158_crit_edge:                   ; preds = %if.then147
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end158

if.then153:                                       ; preds = %if.then147
  call void @__sanitizer_cov_trace_pc() #6
  %flags154 = getelementptr inbounds %struct.nfp_flower_ip_ext, ptr %ext, i32 0, i32 3
  %105 = ptrtoint ptr %flags154 to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %flags154, align 1
  %107 = or i8 %106, 64
  store i8 %107, ptr %flags154, align 1
  br label %if.end158

if.end158:                                        ; preds = %if.then153, %if.then147.if.end158_crit_edge
  %108 = ptrtoint ptr %99 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %99, align 4
  %flags160 = getelementptr inbounds %struct.flow_dissector_key_control, ptr %109, i32 0, i32 2
  %110 = ptrtoint ptr %flags160 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %flags160, align 4
  %and161 = and i32 %111, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and161)
  %tobool162.not = icmp eq i32 %and161, 0
  br i1 %tobool162.not, label %if.end158.if.end168_crit_edge, label %if.then163

if.end158.if.end168_crit_edge:                    ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end168

if.then163:                                       ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #6
  %flags164 = getelementptr inbounds %struct.nfp_flower_ip_ext, ptr %msk, i32 0, i32 3
  %112 = ptrtoint ptr %flags164 to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %flags164, align 1
  %114 = or i8 %113, 64
  store i8 %114, ptr %flags164, align 1
  br label %if.end168

if.end168:                                        ; preds = %if.then163, %if.end158.if.end168_crit_edge
  %115 = ptrtoint ptr %flags150 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %flags150, align 4
  %and171 = and i32 %116, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and171)
  %tobool172.not = icmp eq i32 %and171, 0
  br i1 %tobool172.not, label %if.end168.if.end178_crit_edge, label %if.then173

if.end168.if.end178_crit_edge:                    ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end178

if.then173:                                       ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #6
  %flags174 = getelementptr inbounds %struct.nfp_flower_ip_ext, ptr %ext, i32 0, i32 3
  %117 = ptrtoint ptr %flags174 to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %flags174, align 1
  %119 = or i8 %118, -128
  store i8 %119, ptr %flags174, align 1
  br label %if.end178

if.end178:                                        ; preds = %if.then173, %if.end168.if.end178_crit_edge
  %120 = ptrtoint ptr %flags160 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %flags160, align 4
  %and181 = and i32 %121, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and181)
  %tobool182.not = icmp eq i32 %and181, 0
  br i1 %tobool182.not, label %if.end178.if.end188_crit_edge, label %if.then183

if.end178.if.end188_crit_edge:                    ; preds = %if.end178
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end188

if.then183:                                       ; preds = %if.end178
  call void @__sanitizer_cov_trace_pc() #6
  %flags184 = getelementptr inbounds %struct.nfp_flower_ip_ext, ptr %msk, i32 0, i32 3
  %122 = ptrtoint ptr %flags184 to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %flags184, align 1
  %124 = or i8 %123, -128
  store i8 %124, ptr %flags184, align 1
  br label %if.end188

if.end188:                                        ; preds = %if.then183, %if.end178.if.end188_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match148) #4
  br label %if.end189

if.end189:                                        ; preds = %if.end188, %if.end145.if.end189_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfp_flower_compile_ipv6(ptr nocapture noundef %ext, ptr nocapture noundef %msk, ptr noundef %rule) local_unnamed_addr #1 align 64 {
entry:
  %match = alloca %struct.flow_match_ipv6_addrs, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rule to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rule, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %and.i.i = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.i.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match) #4
  %4 = ptrtoint ptr %match to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %match, align 4, !annotation !15
  %5 = getelementptr inbounds %struct.flow_match_ipv6_addrs, ptr %match, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %5, align 4, !annotation !15
  call void @flow_rule_match_ipv6_addrs(ptr noundef %rule, ptr noundef nonnull %match) #4
  %7 = ptrtoint ptr %match to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %match, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %5, align 4
  %ipv6_src = getelementptr inbounds %struct.nfp_flower_ipv6, ptr %ext, i32 0, i32 2
  %dst = getelementptr inbounds %struct.flow_dissector_key_ipv6_addrs, ptr %8, i32 0, i32 1
  %dst14 = getelementptr inbounds %struct.flow_dissector_key_ipv6_addrs, ptr %10, i32 0, i32 1
  %ipv6_dst = getelementptr inbounds %struct.nfp_flower_ipv6, ptr %ext, i32 0, i32 3
  %ipv6_src29 = getelementptr inbounds %struct.nfp_flower_ipv6, ptr %msk, i32 0, i32 2
  %ipv6_dst40 = getelementptr inbounds %struct.nfp_flower_ipv6, ptr %msk, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then
  %i.070 = phi i32 [ 0, %if.then ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [16 x i8], ptr %8, i32 0, i32 %i.070
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx, align 1
  %arrayidx3 = getelementptr [16 x i8], ptr %10, i32 0, i32 %i.070
  %13 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx3, align 1
  %and64 = and i8 %14, %12
  %arrayidx6 = getelementptr [16 x i8], ptr %ipv6_src, i32 0, i32 %i.070
  %15 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx6, align 1
  %or65 = or i8 %16, %and64
  store i8 %or65, ptr %arrayidx6, align 1
  %arrayidx11 = getelementptr [16 x i8], ptr %dst, i32 0, i32 %i.070
  %17 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx11, align 1
  %arrayidx16 = getelementptr [16 x i8], ptr %dst14, i32 0, i32 %i.070
  %19 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx16, align 1
  %and1866 = and i8 %20, %18
  %arrayidx20 = getelementptr [16 x i8], ptr %ipv6_dst, i32 0, i32 %i.070
  %21 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx20, align 1
  %or2267 = or i8 %22, %and1866
  store i8 %or2267, ptr %arrayidx20, align 1
  %23 = load i8, ptr %arrayidx3, align 1
  %arrayidx31 = getelementptr [16 x i8], ptr %ipv6_src29, i32 0, i32 %i.070
  %24 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx31, align 1
  %or3368 = or i8 %25, %23
  store i8 %or3368, ptr %arrayidx31, align 1
  %26 = load i8, ptr %arrayidx16, align 1
  %arrayidx42 = getelementptr [16 x i8], ptr %ipv6_dst40, i32 0, i32 %i.070
  %27 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx42, align 1
  %or4469 = or i8 %28, %26
  store i8 %or4469, ptr %arrayidx42, align 1
  %inc = add nuw nsw i32 %i.070, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match) #4
  br label %if.end

if.end:                                           ; preds = %for.end, %entry.if.end_crit_edge
  call fastcc void @nfp_flower_compile_ip_ext(ptr noundef %ext, ptr noundef %msk, ptr noundef %rule)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_rule_match_ipv6_addrs(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfp_flower_compile_geneve_opt(ptr nocapture noundef %ext, ptr nocapture noundef %msk, ptr noundef %rule) local_unnamed_addr #1 align 64 {
entry:
  %match = alloca %struct.flow_match_enc_opts, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match) #4
  %0 = ptrtoint ptr %match to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %match, align 4, !annotation !15
  %1 = getelementptr inbounds %struct.flow_match_enc_opts, ptr %match, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !15
  %3 = ptrtoint ptr %rule to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rule, align 8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 4
  %and.i.i = and i32 %6, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.i.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @flow_rule_match_enc_opts(ptr noundef %rule, ptr noundef nonnull %match) #4
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %len = getelementptr inbounds %struct.flow_dissector_key_enc_opts, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %len, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp29.not = icmp eq i8 %10, 0
  br i1 %cmp29.not, label %if.then.if.end_crit_edge, label %for.body.lr.ph

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

for.body.lr.ph:                                   ; preds = %if.then
  %11 = ptrtoint ptr %match to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %match, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.030 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [255 x i8], ptr %12, i32 0, i32 %i.030
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx, align 1
  %arrayidx5 = getelementptr [255 x i8], ptr %8, i32 0, i32 %i.030
  %15 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx5, align 1
  %and25 = and i8 %16, %14
  %arrayidx7 = getelementptr i8, ptr %ext, i32 %i.030
  %17 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx7, align 1
  %or26 = or i8 %18, %and25
  store i8 %or26, ptr %arrayidx7, align 1
  %19 = load i8, ptr %arrayidx5, align 1
  %arrayidx14 = getelementptr i8, ptr %msk, i32 %i.030
  %20 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx14, align 1
  %or1627 = or i8 %21, %19
  store i8 %or1627, ptr %arrayidx14, align 1
  %inc = add nuw nsw i32 %i.030, 1
  %22 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %len, align 1
  %conv = zext i8 %23 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

if.end:                                           ; preds = %for.body.if.end_crit_edge, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_rule_match_enc_opts(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfp_flower_compile_ipv4_gre_tun(ptr nocapture noundef %ext, ptr nocapture noundef %msk, ptr noundef %rule) local_unnamed_addr #1 align 64 {
entry:
  %match.i20 = alloca %struct.flow_match_enc_keyid, align 4
  %match.i16 = alloca %struct.flow_match_ip, align 4
  %match.i = alloca %struct.flow_match_ipv4_addrs, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ethertype = getelementptr inbounds %struct.nfp_flower_ipv4_gre_tun, ptr %ext, i32 0, i32 4
  %0 = ptrtoint ptr %ethertype to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 25944, ptr %ethertype, align 2
  %ethertype1 = getelementptr inbounds %struct.nfp_flower_ipv4_gre_tun, ptr %msk, i32 0, i32 4
  %1 = ptrtoint ptr %ethertype1 to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -1, ptr %ethertype1, align 2
  %2 = ptrtoint ptr %rule to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rule, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %and.i.i.i = and i32 %5, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.i.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.i.not.i, label %entry.nfp_flower_compile_tun_ipv4_addrs.exit_crit_edge, label %if.then.i

entry.nfp_flower_compile_tun_ipv4_addrs.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %nfp_flower_compile_tun_ipv4_addrs.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match.i) #4
  %6 = ptrtoint ptr %match.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %match.i, align 4, !annotation !15
  %7 = getelementptr inbounds %struct.flow_match_ipv4_addrs, ptr %match.i, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 -1 to ptr), ptr %7, align 4, !annotation !15
  call void @flow_rule_match_enc_ipv4_addrs(ptr noundef %rule, ptr noundef nonnull %match.i) #4
  %9 = ptrtoint ptr %match.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %match.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %13 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %7, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  %and.i = and i32 %16, %12
  %17 = ptrtoint ptr %ext to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ext, align 4
  %or.i = or i32 %18, %and.i
  store i32 %or.i, ptr %ext, align 4
  %dst.i = getelementptr inbounds %struct.flow_dissector_key_ipv4_addrs, ptr %10, i32 0, i32 1
  %19 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %dst.i, align 4
  %dst5.i = getelementptr inbounds %struct.flow_dissector_key_ipv4_addrs, ptr %14, i32 0, i32 1
  %21 = ptrtoint ptr %dst5.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %dst5.i, align 4
  %and6.i = and i32 %22, %20
  %dst7.i = getelementptr inbounds %struct.nfp_flower_tun_ipv4, ptr %ext, i32 0, i32 1
  %23 = ptrtoint ptr %dst7.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %dst7.i, align 4
  %or8.i = or i32 %24, %and6.i
  store i32 %or8.i, ptr %dst7.i, align 4
  %25 = load i32, ptr %14, align 4
  %26 = ptrtoint ptr %msk to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %msk, align 4
  %or12.i = or i32 %27, %25
  store i32 %or12.i, ptr %msk, align 4
  %28 = load i32, ptr %dst5.i, align 4
  %dst15.i = getelementptr inbounds %struct.nfp_flower_tun_ipv4, ptr %msk, i32 0, i32 1
  %29 = ptrtoint ptr %dst15.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %dst15.i, align 4
  %or16.i = or i32 %30, %28
  store i32 %or16.i, ptr %dst15.i, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match.i) #4
  br label %nfp_flower_compile_tun_ipv4_addrs.exit

nfp_flower_compile_tun_ipv4_addrs.exit:           ; preds = %if.then.i, %entry.nfp_flower_compile_tun_ipv4_addrs.exit_crit_edge
  %31 = ptrtoint ptr %rule to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %rule, align 8
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %32, align 4
  %and.i.i.i17 = and i32 %34, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i17)
  %tobool.i.i.not.i18 = icmp eq i32 %and.i.i.i17, 0
  br i1 %tobool.i.i.not.i18, label %nfp_flower_compile_tun_ipv4_addrs.exit.nfp_flower_compile_tun_ip_ext.exit_crit_edge, label %if.then.i19

nfp_flower_compile_tun_ipv4_addrs.exit.nfp_flower_compile_tun_ip_ext.exit_crit_edge: ; preds = %nfp_flower_compile_tun_ipv4_addrs.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %nfp_flower_compile_tun_ip_ext.exit

if.then.i19:                                      ; preds = %nfp_flower_compile_tun_ipv4_addrs.exit
  call void @__sanitizer_cov_trace_pc() #6
  %ip_ext3 = getelementptr inbounds %struct.nfp_flower_ipv4_gre_tun, ptr %msk, i32 0, i32 2
  %ip_ext = getelementptr inbounds %struct.nfp_flower_ipv4_gre_tun, ptr %ext, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match.i16) #4
  %35 = ptrtoint ptr %match.i16 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr inttoptr (i32 -1 to ptr), ptr %match.i16, align 4, !annotation !15
  %36 = getelementptr inbounds %struct.flow_match_ip, ptr %match.i16, i32 0, i32 1
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr inttoptr (i32 -1 to ptr), ptr %36, align 4, !annotation !15
  call void @flow_rule_match_enc_ip(ptr noundef %rule, ptr noundef nonnull %match.i16) #4
  %38 = ptrtoint ptr %match.i16 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %match.i16, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %39, align 1
  %42 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %36, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %43, align 1
  %and33.i = and i8 %45, %41
  %46 = ptrtoint ptr %ip_ext to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %ip_ext, align 1
  %or34.i = or i8 %47, %and33.i
  store i8 %or34.i, ptr %ip_ext, align 1
  %ttl.i = getelementptr inbounds %struct.flow_dissector_key_ip, ptr %39, i32 0, i32 1
  %48 = ptrtoint ptr %ttl.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %ttl.i, align 1
  %ttl9.i = getelementptr inbounds %struct.flow_dissector_key_ip, ptr %43, i32 0, i32 1
  %50 = ptrtoint ptr %ttl9.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %ttl9.i, align 1
  %and1135.i = and i8 %51, %49
  %ttl12.i = getelementptr inbounds %struct.nfp_flower_ipv4_gre_tun, ptr %ext, i32 0, i32 2, i32 1
  %52 = ptrtoint ptr %ttl12.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %ttl12.i, align 1
  %or1436.i = or i8 %53, %and1135.i
  store i8 %or1436.i, ptr %ttl12.i, align 1
  %54 = load i8, ptr %43, align 1
  %55 = ptrtoint ptr %ip_ext3 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %ip_ext3, align 1
  %or2137.i = or i8 %56, %54
  store i8 %or2137.i, ptr %ip_ext3, align 1
  %57 = load i8, ptr %ttl9.i, align 1
  %ttl26.i = getelementptr inbounds %struct.nfp_flower_ipv4_gre_tun, ptr %msk, i32 0, i32 2, i32 1
  %58 = ptrtoint ptr %ttl26.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %ttl26.i, align 1
  %or2838.i = or i8 %59, %57
  store i8 %or2838.i, ptr %ttl26.i, align 1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match.i16) #4
  br label %nfp_flower_compile_tun_ip_ext.exit

nfp_flower_compile_tun_ip_ext.exit:               ; preds = %if.then.i19, %nfp_flower_compile_tun_ipv4_addrs.exit.nfp_flower_compile_tun_ip_ext.exit_crit_edge
  %60 = ptrtoint ptr %rule to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %rule, align 8
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %61, align 4
  %and.i.i.i21 = and i32 %63, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i21)
  %tobool.i.i.not.i22 = icmp eq i32 %and.i.i.i21, 0
  br i1 %tobool.i.i.not.i22, label %nfp_flower_compile_tun_ip_ext.exit.nfp_flower_compile_tun_gre_key.exit_crit_edge, label %if.then.i25

nfp_flower_compile_tun_ip_ext.exit.nfp_flower_compile_tun_gre_key.exit_crit_edge: ; preds = %nfp_flower_compile_tun_ip_ext.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %nfp_flower_compile_tun_gre_key.exit

if.then.i25:                                      ; preds = %nfp_flower_compile_tun_ip_ext.exit
  call void @__sanitizer_cov_trace_pc() #6
  %tun_flags5 = getelementptr inbounds %struct.nfp_flower_ipv4_gre_tun, ptr %msk, i32 0, i32 1
  %tun_flags = getelementptr inbounds %struct.nfp_flower_ipv4_gre_tun, ptr %ext, i32 0, i32 1
  %tun_key4 = getelementptr inbounds %struct.nfp_flower_ipv4_gre_tun, ptr %msk, i32 0, i32 5
  %tun_key = getelementptr inbounds %struct.nfp_flower_ipv4_gre_tun, ptr %ext, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match.i20) #4
  %64 = ptrtoint ptr %match.i20 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr inttoptr (i32 -1 to ptr), ptr %match.i20, align 4, !annotation !15
  %65 = getelementptr inbounds %struct.flow_match_enc_keyid, ptr %match.i20, i32 0, i32 1
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr inttoptr (i32 -1 to ptr), ptr %65, align 4, !annotation !15
  call void @flow_rule_match_enc_keyid(ptr noundef %rule, ptr noundef nonnull %match.i20) #4
  %67 = ptrtoint ptr %match.i20 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %match.i20, align 4
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %68, align 4
  %71 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %65, align 4
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %72, align 4
  %and.i23 = and i32 %74, %70
  %75 = ptrtoint ptr %tun_key to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %tun_key, align 4
  %or.i24 = or i32 %76, %and.i23
  store i32 %or.i24, ptr %tun_key, align 4
  %77 = load i32, ptr %72, align 4
  %78 = ptrtoint ptr %tun_key4 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %tun_key4, align 4
  %or5.i = or i32 %79, %77
  store i32 %or5.i, ptr %tun_key4, align 4
  %80 = ptrtoint ptr %tun_flags to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 4, ptr %tun_flags, align 2
  %81 = ptrtoint ptr %tun_flags5 to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 4, ptr %tun_flags5, align 2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match.i20) #4
  br label %nfp_flower_compile_tun_gre_key.exit

nfp_flower_compile_tun_gre_key.exit:              ; preds = %if.then.i25, %nfp_flower_compile_tun_ip_ext.exit.nfp_flower_compile_tun_gre_key.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfp_flower_compile_ipv4_udp_tun(ptr nocapture noundef %ext, ptr nocapture noundef %msk, ptr noundef %rule) local_unnamed_addr #1 align 64 {
entry:
  %match.i14 = alloca %struct.flow_match_enc_keyid, align 4
  %match.i10 = alloca %struct.flow_match_ip, align 4
  %match.i = alloca %struct.flow_match_ipv4_addrs, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rule to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rule, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %and.i.i.i = and i32 %3, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.i.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.i.not.i, label %entry.nfp_flower_compile_tun_ipv4_addrs.exit_crit_edge, label %if.then.i

entry.nfp_flower_compile_tun_ipv4_addrs.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %nfp_flower_compile_tun_ipv4_addrs.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match.i) #4
  %4 = ptrtoint ptr %match.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %match.i, align 4, !annotation !15
  %5 = getelementptr inbounds %struct.flow_match_ipv4_addrs, ptr %match.i, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %5, align 4, !annotation !15
  call void @flow_rule_match_enc_ipv4_addrs(ptr noundef %rule, ptr noundef nonnull %match.i) #4
  %7 = ptrtoint ptr %match.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %match.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %5, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  %and.i = and i32 %14, %10
  %15 = ptrtoint ptr %ext to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ext, align 4
  %or.i = or i32 %16, %and.i
  store i32 %or.i, ptr %ext, align 4
  %dst.i = getelementptr inbounds %struct.flow_dissector_key_ipv4_addrs, ptr %8, i32 0, i32 1
  %17 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dst.i, align 4
  %dst5.i = getelementptr inbounds %struct.flow_dissector_key_ipv4_addrs, ptr %12, i32 0, i32 1
  %19 = ptrtoint ptr %dst5.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %dst5.i, align 4
  %and6.i = and i32 %20, %18
  %dst7.i = getelementptr inbounds %struct.nfp_flower_tun_ipv4, ptr %ext, i32 0, i32 1
  %21 = ptrtoint ptr %dst7.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %dst7.i, align 4
  %or8.i = or i32 %22, %and6.i
  store i32 %or8.i, ptr %dst7.i, align 4
  %23 = load i32, ptr %12, align 4
  %24 = ptrtoint ptr %msk to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %msk, align 4
  %or12.i = or i32 %25, %23
  store i32 %or12.i, ptr %msk, align 4
  %26 = load i32, ptr %dst5.i, align 4
  %dst15.i = getelementptr inbounds %struct.nfp_flower_tun_ipv4, ptr %msk, i32 0, i32 1
  %27 = ptrtoint ptr %dst15.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %dst15.i, align 4
  %or16.i = or i32 %28, %26
  store i32 %or16.i, ptr %dst15.i, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match.i) #4
  br label %nfp_flower_compile_tun_ipv4_addrs.exit

nfp_flower_compile_tun_ipv4_addrs.exit:           ; preds = %if.then.i, %entry.nfp_flower_compile_tun_ipv4_addrs.exit_crit_edge
  %29 = ptrtoint ptr %rule to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %rule, align 8
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %30, align 4
  %and.i.i.i11 = and i32 %32, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i11)
  %tobool.i.i.not.i12 = icmp eq i32 %and.i.i.i11, 0
  br i1 %tobool.i.i.not.i12, label %nfp_flower_compile_tun_ipv4_addrs.exit.nfp_flower_compile_tun_ip_ext.exit_crit_edge, label %if.then.i13

nfp_flower_compile_tun_ipv4_addrs.exit.nfp_flower_compile_tun_ip_ext.exit_crit_edge: ; preds = %nfp_flower_compile_tun_ipv4_addrs.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %nfp_flower_compile_tun_ip_ext.exit

if.then.i13:                                      ; preds = %nfp_flower_compile_tun_ipv4_addrs.exit
  call void @__sanitizer_cov_trace_pc() #6
  %ip_ext2 = getelementptr inbounds %struct.nfp_flower_ipv4_udp_tun, ptr %msk, i32 0, i32 2
  %ip_ext = getelementptr inbounds %struct.nfp_flower_ipv4_udp_tun, ptr %ext, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match.i10) #4
  %33 = ptrtoint ptr %match.i10 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr inttoptr (i32 -1 to ptr), ptr %match.i10, align 4, !annotation !15
  %34 = getelementptr inbounds %struct.flow_match_ip, ptr %match.i10, i32 0, i32 1
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr inttoptr (i32 -1 to ptr), ptr %34, align 4, !annotation !15
  call void @flow_rule_match_enc_ip(ptr noundef %rule, ptr noundef nonnull %match.i10) #4
  %36 = ptrtoint ptr %match.i10 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %match.i10, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %37, align 1
  %40 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %34, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %41, align 1
  %and33.i = and i8 %43, %39
  %44 = ptrtoint ptr %ip_ext to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %ip_ext, align 1
  %or34.i = or i8 %45, %and33.i
  store i8 %or34.i, ptr %ip_ext, align 1
  %ttl.i = getelementptr inbounds %struct.flow_dissector_key_ip, ptr %37, i32 0, i32 1
  %46 = ptrtoint ptr %ttl.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %ttl.i, align 1
  %ttl9.i = getelementptr inbounds %struct.flow_dissector_key_ip, ptr %41, i32 0, i32 1
  %48 = ptrtoint ptr %ttl9.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %ttl9.i, align 1
  %and1135.i = and i8 %49, %47
  %ttl12.i = getelementptr inbounds %struct.nfp_flower_ipv4_udp_tun, ptr %ext, i32 0, i32 2, i32 1
  %50 = ptrtoint ptr %ttl12.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %ttl12.i, align 1
  %or1436.i = or i8 %51, %and1135.i
  store i8 %or1436.i, ptr %ttl12.i, align 1
  %52 = load i8, ptr %41, align 1
  %53 = ptrtoint ptr %ip_ext2 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %ip_ext2, align 1
  %or2137.i = or i8 %54, %52
  store i8 %or2137.i, ptr %ip_ext2, align 1
  %55 = load i8, ptr %ttl9.i, align 1
  %ttl26.i = getelementptr inbounds %struct.nfp_flower_ipv4_udp_tun, ptr %msk, i32 0, i32 2, i32 1
  %56 = ptrtoint ptr %ttl26.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %ttl26.i, align 1
  %or2838.i = or i8 %57, %55
  store i8 %or2838.i, ptr %ttl26.i, align 1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match.i10) #4
  br label %nfp_flower_compile_tun_ip_ext.exit

nfp_flower_compile_tun_ip_ext.exit:               ; preds = %if.then.i13, %nfp_flower_compile_tun_ipv4_addrs.exit.nfp_flower_compile_tun_ip_ext.exit_crit_edge
  %58 = ptrtoint ptr %rule to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %rule, align 8
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %59, align 4
  %and.i.i.i15 = and i32 %61, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i15)
  %tobool.i.i.not.i16 = icmp eq i32 %and.i.i.i15, 0
  br i1 %tobool.i.i.not.i16, label %nfp_flower_compile_tun_ip_ext.exit.nfp_flower_compile_tun_udp_key.exit_crit_edge, label %if.then.i19

nfp_flower_compile_tun_ip_ext.exit.nfp_flower_compile_tun_udp_key.exit_crit_edge: ; preds = %nfp_flower_compile_tun_ip_ext.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %nfp_flower_compile_tun_udp_key.exit

if.then.i19:                                      ; preds = %nfp_flower_compile_tun_ip_ext.exit
  call void @__sanitizer_cov_trace_pc() #6
  %tun_id3 = getelementptr inbounds %struct.nfp_flower_ipv4_udp_tun, ptr %msk, i32 0, i32 4
  %tun_id = getelementptr inbounds %struct.nfp_flower_ipv4_udp_tun, ptr %ext, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match.i14) #4
  %62 = ptrtoint ptr %match.i14 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr inttoptr (i32 -1 to ptr), ptr %match.i14, align 4, !annotation !15
  %63 = getelementptr inbounds %struct.flow_match_enc_keyid, ptr %match.i14, i32 0, i32 1
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr inttoptr (i32 -1 to ptr), ptr %63, align 4, !annotation !15
  call void @flow_rule_match_enc_keyid(ptr noundef %rule, ptr noundef nonnull %match.i14) #4
  %65 = ptrtoint ptr %match.i14 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %match.i14, align 4
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %66, align 4
  %69 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %63, align 4
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %70, align 4
  %and.i17 = and i32 %72, %68
  %shl.i = shl i32 %and.i17, 8
  %73 = ptrtoint ptr %tun_id to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %tun_id, align 4
  %or.i18 = or i32 %shl.i, %74
  store i32 %or.i18, ptr %tun_id, align 4
  %75 = load i32, ptr %70, align 4
  %shl5.i = shl i32 %75, 8
  %76 = ptrtoint ptr %tun_id3 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %tun_id3, align 4
  %or6.i = or i32 %77, %shl5.i
  store i32 %or6.i, ptr %tun_id3, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match.i14) #4
  br label %nfp_flower_compile_tun_udp_key.exit

nfp_flower_compile_tun_udp_key.exit:              ; preds = %if.then.i19, %nfp_flower_compile_tun_ip_ext.exit.nfp_flower_compile_tun_udp_key.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfp_flower_compile_ipv6_udp_tun(ptr nocapture noundef %ext, ptr nocapture noundef %msk, ptr noundef %rule) local_unnamed_addr #1 align 64 {
entry:
  %match.i14 = alloca %struct.flow_match_enc_keyid, align 4
  %match.i10 = alloca %struct.flow_match_ip, align 4
  %match.i = alloca %struct.flow_match_ipv6_addrs, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rule to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rule, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %and.i.i.i = and i32 %3, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.i.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.i.not.i, label %entry.nfp_flower_compile_tun_ipv6_addrs.exit_crit_edge, label %if.then.i

entry.nfp_flower_compile_tun_ipv6_addrs.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %nfp_flower_compile_tun_ipv6_addrs.exit

if.then.i:                                        ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match.i) #4
  %4 = ptrtoint ptr %match.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %match.i, align 4, !annotation !15
  %5 = getelementptr inbounds %struct.flow_match_ipv6_addrs, ptr %match.i, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %5, align 4, !annotation !15
  call void @flow_rule_match_enc_ipv6_addrs(ptr noundef %rule, ptr noundef nonnull %match.i) #4
  %7 = ptrtoint ptr %match.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %match.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %5, align 4
  %dst.i = getelementptr inbounds %struct.flow_dissector_key_ipv6_addrs, ptr %8, i32 0, i32 1
  %dst15.i = getelementptr inbounds %struct.flow_dissector_key_ipv6_addrs, ptr %10, i32 0, i32 1
  %dst20.i = getelementptr inbounds %struct.nfp_flower_tun_ipv6, ptr %ext, i32 0, i32 1
  %dst42.i = getelementptr inbounds %struct.nfp_flower_tun_ipv6, ptr %msk, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then.i
  %i.068.i = phi i32 [ 0, %if.then.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [16 x i8], ptr %8, i32 0, i32 %i.068.i
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx.i, align 1
  %arrayidx3.i = getelementptr [16 x i8], ptr %10, i32 0, i32 %i.068.i
  %13 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx3.i, align 1
  %and62.i = and i8 %14, %12
  %arrayidx7.i = getelementptr [16 x i8], ptr %ext, i32 0, i32 %i.068.i
  %15 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx7.i, align 1
  %or63.i = or i8 %16, %and62.i
  store i8 %or63.i, ptr %arrayidx7.i, align 1
  %arrayidx12.i = getelementptr [16 x i8], ptr %dst.i, i32 0, i32 %i.068.i
  %17 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx12.i, align 1
  %arrayidx17.i = getelementptr [16 x i8], ptr %dst15.i, i32 0, i32 %i.068.i
  %19 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx17.i, align 1
  %and1964.i = and i8 %20, %18
  %arrayidx22.i = getelementptr [16 x i8], ptr %dst20.i, i32 0, i32 %i.068.i
  %21 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx22.i, align 1
  %or2465.i = or i8 %22, %and1964.i
  store i8 %or2465.i, ptr %arrayidx22.i, align 1
  %23 = load i8, ptr %arrayidx3.i, align 1
  %arrayidx33.i = getelementptr [16 x i8], ptr %msk, i32 0, i32 %i.068.i
  %24 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx33.i, align 1
  %or3566.i = or i8 %25, %23
  store i8 %or3566.i, ptr %arrayidx33.i, align 1
  %26 = load i8, ptr %arrayidx17.i, align 1
  %arrayidx44.i = getelementptr [16 x i8], ptr %dst42.i, i32 0, i32 %i.068.i
  %27 = ptrtoint ptr %arrayidx44.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx44.i, align 1
  %or4667.i = or i8 %28, %26
  store i8 %or4667.i, ptr %arrayidx44.i, align 1
  %inc.i = add nuw nsw i32 %i.068.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 16
  br i1 %exitcond.not.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match.i) #4
  br label %nfp_flower_compile_tun_ipv6_addrs.exit

nfp_flower_compile_tun_ipv6_addrs.exit:           ; preds = %for.end.i, %entry.nfp_flower_compile_tun_ipv6_addrs.exit_crit_edge
  %29 = ptrtoint ptr %rule to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %rule, align 8
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %30, align 4
  %and.i.i.i11 = and i32 %32, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i11)
  %tobool.i.i.not.i12 = icmp eq i32 %and.i.i.i11, 0
  br i1 %tobool.i.i.not.i12, label %nfp_flower_compile_tun_ipv6_addrs.exit.nfp_flower_compile_tun_ip_ext.exit_crit_edge, label %if.then.i13

nfp_flower_compile_tun_ipv6_addrs.exit.nfp_flower_compile_tun_ip_ext.exit_crit_edge: ; preds = %nfp_flower_compile_tun_ipv6_addrs.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %nfp_flower_compile_tun_ip_ext.exit

if.then.i13:                                      ; preds = %nfp_flower_compile_tun_ipv6_addrs.exit
  call void @__sanitizer_cov_trace_pc() #6
  %ip_ext2 = getelementptr inbounds %struct.nfp_flower_ipv6_udp_tun, ptr %msk, i32 0, i32 2
  %ip_ext = getelementptr inbounds %struct.nfp_flower_ipv6_udp_tun, ptr %ext, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match.i10) #4
  %33 = ptrtoint ptr %match.i10 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr inttoptr (i32 -1 to ptr), ptr %match.i10, align 4, !annotation !15
  %34 = getelementptr inbounds %struct.flow_match_ip, ptr %match.i10, i32 0, i32 1
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr inttoptr (i32 -1 to ptr), ptr %34, align 4, !annotation !15
  call void @flow_rule_match_enc_ip(ptr noundef %rule, ptr noundef nonnull %match.i10) #4
  %36 = ptrtoint ptr %match.i10 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %match.i10, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %37, align 1
  %40 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %34, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %41, align 1
  %and33.i = and i8 %43, %39
  %44 = ptrtoint ptr %ip_ext to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %ip_ext, align 1
  %or34.i = or i8 %45, %and33.i
  store i8 %or34.i, ptr %ip_ext, align 1
  %ttl.i = getelementptr inbounds %struct.flow_dissector_key_ip, ptr %37, i32 0, i32 1
  %46 = ptrtoint ptr %ttl.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %ttl.i, align 1
  %ttl9.i = getelementptr inbounds %struct.flow_dissector_key_ip, ptr %41, i32 0, i32 1
  %48 = ptrtoint ptr %ttl9.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %ttl9.i, align 1
  %and1135.i = and i8 %49, %47
  %ttl12.i = getelementptr inbounds %struct.nfp_flower_ipv6_udp_tun, ptr %ext, i32 0, i32 2, i32 1
  %50 = ptrtoint ptr %ttl12.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %ttl12.i, align 1
  %or1436.i = or i8 %51, %and1135.i
  store i8 %or1436.i, ptr %ttl12.i, align 1
  %52 = load i8, ptr %41, align 1
  %53 = ptrtoint ptr %ip_ext2 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %ip_ext2, align 1
  %or2137.i = or i8 %54, %52
  store i8 %or2137.i, ptr %ip_ext2, align 1
  %55 = load i8, ptr %ttl9.i, align 1
  %ttl26.i = getelementptr inbounds %struct.nfp_flower_ipv6_udp_tun, ptr %msk, i32 0, i32 2, i32 1
  %56 = ptrtoint ptr %ttl26.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %ttl26.i, align 1
  %or2838.i = or i8 %57, %55
  store i8 %or2838.i, ptr %ttl26.i, align 1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match.i10) #4
  br label %nfp_flower_compile_tun_ip_ext.exit

nfp_flower_compile_tun_ip_ext.exit:               ; preds = %if.then.i13, %nfp_flower_compile_tun_ipv6_addrs.exit.nfp_flower_compile_tun_ip_ext.exit_crit_edge
  %58 = ptrtoint ptr %rule to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %rule, align 8
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %59, align 4
  %and.i.i.i15 = and i32 %61, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i15)
  %tobool.i.i.not.i16 = icmp eq i32 %and.i.i.i15, 0
  br i1 %tobool.i.i.not.i16, label %nfp_flower_compile_tun_ip_ext.exit.nfp_flower_compile_tun_udp_key.exit_crit_edge, label %if.then.i17

nfp_flower_compile_tun_ip_ext.exit.nfp_flower_compile_tun_udp_key.exit_crit_edge: ; preds = %nfp_flower_compile_tun_ip_ext.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %nfp_flower_compile_tun_udp_key.exit

if.then.i17:                                      ; preds = %nfp_flower_compile_tun_ip_ext.exit
  call void @__sanitizer_cov_trace_pc() #6
  %tun_id3 = getelementptr inbounds %struct.nfp_flower_ipv6_udp_tun, ptr %msk, i32 0, i32 4
  %tun_id = getelementptr inbounds %struct.nfp_flower_ipv6_udp_tun, ptr %ext, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match.i14) #4
  %62 = ptrtoint ptr %match.i14 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr inttoptr (i32 -1 to ptr), ptr %match.i14, align 4, !annotation !15
  %63 = getelementptr inbounds %struct.flow_match_enc_keyid, ptr %match.i14, i32 0, i32 1
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr inttoptr (i32 -1 to ptr), ptr %63, align 4, !annotation !15
  call void @flow_rule_match_enc_keyid(ptr noundef %rule, ptr noundef nonnull %match.i14) #4
  %65 = ptrtoint ptr %match.i14 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %match.i14, align 4
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %66, align 4
  %69 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %63, align 4
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %70, align 4
  %and.i = and i32 %72, %68
  %shl.i = shl i32 %and.i, 8
  %73 = ptrtoint ptr %tun_id to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %tun_id, align 4
  %or.i = or i32 %shl.i, %74
  store i32 %or.i, ptr %tun_id, align 4
  %75 = load i32, ptr %70, align 4
  %shl5.i = shl i32 %75, 8
  %76 = ptrtoint ptr %tun_id3 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %tun_id3, align 4
  %or6.i = or i32 %77, %shl5.i
  store i32 %or6.i, ptr %tun_id3, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match.i14) #4
  br label %nfp_flower_compile_tun_udp_key.exit

nfp_flower_compile_tun_udp_key.exit:              ; preds = %if.then.i17, %nfp_flower_compile_tun_ip_ext.exit.nfp_flower_compile_tun_udp_key.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfp_flower_compile_ipv6_gre_tun(ptr nocapture noundef %ext, ptr nocapture noundef %msk, ptr noundef %rule) local_unnamed_addr #1 align 64 {
entry:
  %match.i20 = alloca %struct.flow_match_enc_keyid, align 4
  %match.i16 = alloca %struct.flow_match_ip, align 4
  %match.i = alloca %struct.flow_match_ipv6_addrs, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ethertype = getelementptr inbounds %struct.nfp_flower_ipv6_gre_tun, ptr %ext, i32 0, i32 4
  %0 = ptrtoint ptr %ethertype to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 25944, ptr %ethertype, align 2
  %ethertype1 = getelementptr inbounds %struct.nfp_flower_ipv6_gre_tun, ptr %msk, i32 0, i32 4
  %1 = ptrtoint ptr %ethertype1 to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -1, ptr %ethertype1, align 2
  %2 = ptrtoint ptr %rule to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rule, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %and.i.i.i = and i32 %5, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.i.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.i.not.i, label %entry.nfp_flower_compile_tun_ipv6_addrs.exit_crit_edge, label %if.then.i

entry.nfp_flower_compile_tun_ipv6_addrs.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %nfp_flower_compile_tun_ipv6_addrs.exit

if.then.i:                                        ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match.i) #4
  %6 = ptrtoint ptr %match.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %match.i, align 4, !annotation !15
  %7 = getelementptr inbounds %struct.flow_match_ipv6_addrs, ptr %match.i, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 -1 to ptr), ptr %7, align 4, !annotation !15
  call void @flow_rule_match_enc_ipv6_addrs(ptr noundef %rule, ptr noundef nonnull %match.i) #4
  %9 = ptrtoint ptr %match.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %match.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %7, align 4
  %dst.i = getelementptr inbounds %struct.flow_dissector_key_ipv6_addrs, ptr %10, i32 0, i32 1
  %dst15.i = getelementptr inbounds %struct.flow_dissector_key_ipv6_addrs, ptr %12, i32 0, i32 1
  %dst20.i = getelementptr inbounds %struct.nfp_flower_tun_ipv6, ptr %ext, i32 0, i32 1
  %dst42.i = getelementptr inbounds %struct.nfp_flower_tun_ipv6, ptr %msk, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then.i
  %i.068.i = phi i32 [ 0, %if.then.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [16 x i8], ptr %10, i32 0, i32 %i.068.i
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx.i, align 1
  %arrayidx3.i = getelementptr [16 x i8], ptr %12, i32 0, i32 %i.068.i
  %15 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx3.i, align 1
  %and62.i = and i8 %16, %14
  %arrayidx7.i = getelementptr [16 x i8], ptr %ext, i32 0, i32 %i.068.i
  %17 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx7.i, align 1
  %or63.i = or i8 %18, %and62.i
  store i8 %or63.i, ptr %arrayidx7.i, align 1
  %arrayidx12.i = getelementptr [16 x i8], ptr %dst.i, i32 0, i32 %i.068.i
  %19 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx12.i, align 1
  %arrayidx17.i = getelementptr [16 x i8], ptr %dst15.i, i32 0, i32 %i.068.i
  %21 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx17.i, align 1
  %and1964.i = and i8 %22, %20
  %arrayidx22.i = getelementptr [16 x i8], ptr %dst20.i, i32 0, i32 %i.068.i
  %23 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx22.i, align 1
  %or2465.i = or i8 %24, %and1964.i
  store i8 %or2465.i, ptr %arrayidx22.i, align 1
  %25 = load i8, ptr %arrayidx3.i, align 1
  %arrayidx33.i = getelementptr [16 x i8], ptr %msk, i32 0, i32 %i.068.i
  %26 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx33.i, align 1
  %or3566.i = or i8 %27, %25
  store i8 %or3566.i, ptr %arrayidx33.i, align 1
  %28 = load i8, ptr %arrayidx17.i, align 1
  %arrayidx44.i = getelementptr [16 x i8], ptr %dst42.i, i32 0, i32 %i.068.i
  %29 = ptrtoint ptr %arrayidx44.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx44.i, align 1
  %or4667.i = or i8 %30, %28
  store i8 %or4667.i, ptr %arrayidx44.i, align 1
  %inc.i = add nuw nsw i32 %i.068.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 16
  br i1 %exitcond.not.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match.i) #4
  br label %nfp_flower_compile_tun_ipv6_addrs.exit

nfp_flower_compile_tun_ipv6_addrs.exit:           ; preds = %for.end.i, %entry.nfp_flower_compile_tun_ipv6_addrs.exit_crit_edge
  %31 = ptrtoint ptr %rule to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %rule, align 8
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %32, align 4
  %and.i.i.i17 = and i32 %34, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i17)
  %tobool.i.i.not.i18 = icmp eq i32 %and.i.i.i17, 0
  br i1 %tobool.i.i.not.i18, label %nfp_flower_compile_tun_ipv6_addrs.exit.nfp_flower_compile_tun_ip_ext.exit_crit_edge, label %if.then.i19

nfp_flower_compile_tun_ipv6_addrs.exit.nfp_flower_compile_tun_ip_ext.exit_crit_edge: ; preds = %nfp_flower_compile_tun_ipv6_addrs.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %nfp_flower_compile_tun_ip_ext.exit

if.then.i19:                                      ; preds = %nfp_flower_compile_tun_ipv6_addrs.exit
  call void @__sanitizer_cov_trace_pc() #6
  %ip_ext3 = getelementptr inbounds %struct.nfp_flower_ipv6_gre_tun, ptr %msk, i32 0, i32 2
  %ip_ext = getelementptr inbounds %struct.nfp_flower_ipv6_gre_tun, ptr %ext, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match.i16) #4
  %35 = ptrtoint ptr %match.i16 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr inttoptr (i32 -1 to ptr), ptr %match.i16, align 4, !annotation !15
  %36 = getelementptr inbounds %struct.flow_match_ip, ptr %match.i16, i32 0, i32 1
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr inttoptr (i32 -1 to ptr), ptr %36, align 4, !annotation !15
  call void @flow_rule_match_enc_ip(ptr noundef %rule, ptr noundef nonnull %match.i16) #4
  %38 = ptrtoint ptr %match.i16 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %match.i16, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %39, align 1
  %42 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %36, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %43, align 1
  %and33.i = and i8 %45, %41
  %46 = ptrtoint ptr %ip_ext to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %ip_ext, align 1
  %or34.i = or i8 %47, %and33.i
  store i8 %or34.i, ptr %ip_ext, align 1
  %ttl.i = getelementptr inbounds %struct.flow_dissector_key_ip, ptr %39, i32 0, i32 1
  %48 = ptrtoint ptr %ttl.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %ttl.i, align 1
  %ttl9.i = getelementptr inbounds %struct.flow_dissector_key_ip, ptr %43, i32 0, i32 1
  %50 = ptrtoint ptr %ttl9.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %ttl9.i, align 1
  %and1135.i = and i8 %51, %49
  %ttl12.i = getelementptr inbounds %struct.nfp_flower_ipv6_gre_tun, ptr %ext, i32 0, i32 2, i32 1
  %52 = ptrtoint ptr %ttl12.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %ttl12.i, align 1
  %or1436.i = or i8 %53, %and1135.i
  store i8 %or1436.i, ptr %ttl12.i, align 1
  %54 = load i8, ptr %43, align 1
  %55 = ptrtoint ptr %ip_ext3 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %ip_ext3, align 1
  %or2137.i = or i8 %56, %54
  store i8 %or2137.i, ptr %ip_ext3, align 1
  %57 = load i8, ptr %ttl9.i, align 1
  %ttl26.i = getelementptr inbounds %struct.nfp_flower_ipv6_gre_tun, ptr %msk, i32 0, i32 2, i32 1
  %58 = ptrtoint ptr %ttl26.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %ttl26.i, align 1
  %or2838.i = or i8 %59, %57
  store i8 %or2838.i, ptr %ttl26.i, align 1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match.i16) #4
  br label %nfp_flower_compile_tun_ip_ext.exit

nfp_flower_compile_tun_ip_ext.exit:               ; preds = %if.then.i19, %nfp_flower_compile_tun_ipv6_addrs.exit.nfp_flower_compile_tun_ip_ext.exit_crit_edge
  %60 = ptrtoint ptr %rule to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %rule, align 8
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %61, align 4
  %and.i.i.i21 = and i32 %63, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i21)
  %tobool.i.i.not.i22 = icmp eq i32 %and.i.i.i21, 0
  br i1 %tobool.i.i.not.i22, label %nfp_flower_compile_tun_ip_ext.exit.nfp_flower_compile_tun_gre_key.exit_crit_edge, label %if.then.i23

nfp_flower_compile_tun_ip_ext.exit.nfp_flower_compile_tun_gre_key.exit_crit_edge: ; preds = %nfp_flower_compile_tun_ip_ext.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %nfp_flower_compile_tun_gre_key.exit

if.then.i23:                                      ; preds = %nfp_flower_compile_tun_ip_ext.exit
  call void @__sanitizer_cov_trace_pc() #6
  %tun_flags5 = getelementptr inbounds %struct.nfp_flower_ipv6_gre_tun, ptr %msk, i32 0, i32 1
  %tun_flags = getelementptr inbounds %struct.nfp_flower_ipv6_gre_tun, ptr %ext, i32 0, i32 1
  %tun_key4 = getelementptr inbounds %struct.nfp_flower_ipv6_gre_tun, ptr %msk, i32 0, i32 5
  %tun_key = getelementptr inbounds %struct.nfp_flower_ipv6_gre_tun, ptr %ext, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match.i20) #4
  %64 = ptrtoint ptr %match.i20 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr inttoptr (i32 -1 to ptr), ptr %match.i20, align 4, !annotation !15
  %65 = getelementptr inbounds %struct.flow_match_enc_keyid, ptr %match.i20, i32 0, i32 1
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr inttoptr (i32 -1 to ptr), ptr %65, align 4, !annotation !15
  call void @flow_rule_match_enc_keyid(ptr noundef %rule, ptr noundef nonnull %match.i20) #4
  %67 = ptrtoint ptr %match.i20 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %match.i20, align 4
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %68, align 4
  %71 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %65, align 4
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %72, align 4
  %and.i = and i32 %74, %70
  %75 = ptrtoint ptr %tun_key to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %tun_key, align 4
  %or.i = or i32 %76, %and.i
  store i32 %or.i, ptr %tun_key, align 4
  %77 = load i32, ptr %72, align 4
  %78 = ptrtoint ptr %tun_key4 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %tun_key4, align 4
  %or5.i = or i32 %79, %77
  store i32 %or5.i, ptr %tun_key4, align 4
  %80 = ptrtoint ptr %tun_flags to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 4, ptr %tun_flags, align 2
  %81 = ptrtoint ptr %tun_flags5 to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 4, ptr %tun_flags5, align 2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match.i20) #4
  br label %nfp_flower_compile_tun_gre_key.exit

nfp_flower_compile_tun_gre_key.exit:              ; preds = %if.then.i23, %nfp_flower_compile_tun_ip_ext.exit.nfp_flower_compile_tun_gre_key.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfp_flower_compile_flow_match(ptr noundef %app, ptr noundef %rule, ptr nocapture noundef readonly %key_ls, ptr noundef %netdev, ptr nocapture noundef %nfp_flow, i32 noundef %tun_type, ptr noundef %extack) local_unnamed_addr #1 align 64 {
entry:
  %match.i271 = alloca %struct.flow_match_enc_opts, align 4
  %match.i266 = alloca %struct.flow_match_ipv6_addrs, align 4
  %match.i260 = alloca %struct.flow_match_ipv4_addrs, align 4
  %match.i = alloca %struct.flow_match_ports, align 4
  %match.i.i = alloca %struct.flow_match_vlan, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 8
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %call = tail call i32 @nfp_flower_get_port_id_from_netdev(ptr noundef %app, ptr noundef %netdev) #4
  %unmasked_data = getelementptr inbounds %struct.nfp_fl_payload, ptr %nfp_flow, i32 0, i32 7
  %2 = ptrtoint ptr %unmasked_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %unmasked_data, align 4
  %key_size = getelementptr inbounds %struct.nfp_fl_key_ls, ptr %key_ls, i32 0, i32 2
  %4 = ptrtoint ptr %key_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %key_size, align 4
  %6 = call ptr @memset(ptr %3, i32 0, i32 %5)
  %mask_data = getelementptr inbounds %struct.nfp_fl_payload, ptr %nfp_flow, i32 0, i32 8
  %7 = ptrtoint ptr %mask_data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mask_data, align 4
  %9 = load i32, ptr %key_size, align 4
  %10 = call ptr @memset(ptr %8, i32 0, i32 %9)
  %11 = load ptr, ptr %unmasked_data, align 4
  %12 = load ptr, ptr %mask_data, align 4
  %flower_ext_feats = getelementptr inbounds %struct.nfp_flower_priv, ptr %1, i32 0, i32 4
  %13 = ptrtoint ptr %flower_ext_feats to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %flower_ext_feats, align 8
  %and = and i64 %14, 256
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  %key_layer = getelementptr inbounds %struct.nfp_fl_key_ls, ptr %key_ls, i32 0, i32 1
  %15 = ptrtoint ptr %key_layer to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %key_layer, align 4
  %17 = ptrtoint ptr %11 to i32
  call void @__asan_storeN_noabort(i32 %17, i32 4)
  store i32 0, ptr %11, align 2
  %18 = ptrtoint ptr %12 to i32
  call void @__asan_storeN_noabort(i32 %18, i32 4)
  store i32 0, ptr %12, align 2
  store i8 %16, ptr %11, align 2
  %mask_id.i.i = getelementptr inbounds %struct.nfp_flower_meta_tci, ptr %11, i32 0, i32 1
  %19 = ptrtoint ptr %mask_id.i.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 -1, ptr %mask_id.i.i, align 1
  store i8 %16, ptr %12, align 2
  %mask_id2.i.i = getelementptr inbounds %struct.nfp_flower_meta_tci, ptr %12, i32 0, i32 1
  %20 = ptrtoint ptr %mask_id2.i.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 -1, ptr %mask_id2.i.i, align 1
  br i1 %tobool.not, label %if.then.i, label %entry.nfp_flower_compile_meta_tci.exit_crit_edge

entry.nfp_flower_compile_meta_tci.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %nfp_flower_compile_meta_tci.exit

if.then.i:                                        ; preds = %entry
  %21 = ptrtoint ptr %rule to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rule, align 8
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 4
  %and.i.i.i.i = and i32 %24, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.i.i.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.i.i.not.i.i, label %if.then.i.nfp_flower_compile_meta_tci.exit_crit_edge, label %if.then.i.i

if.then.i.nfp_flower_compile_meta_tci.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %nfp_flower_compile_meta_tci.exit

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match.i.i) #4
  %25 = ptrtoint ptr %match.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr inttoptr (i32 -1 to ptr), ptr %match.i.i, align 4, !annotation !15
  %26 = getelementptr inbounds %struct.flow_match_vlan, ptr %match.i.i, i32 0, i32 1
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr inttoptr (i32 -1 to ptr), ptr %26, align 4, !annotation !15
  call void @flow_rule_match_vlan(ptr noundef %rule, ptr noundef nonnull %match.i.i) #4
  %28 = ptrtoint ptr %match.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %match.i.i, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load2_noabort(i32 %30)
  %bf.load.i.i = load i16, ptr %29, align 2
  %31 = shl i16 %bf.load.i.i, 13
  %bf.lshr.i.i = lshr i16 %bf.load.i.i, 4
  %or150.i.i = or i16 %31, %bf.lshr.i.i
  %32 = or i16 %or150.i.i, 4096
  %33 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %26, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load2_noabort(i32 %35)
  %bf.load66.i.i = load i16, ptr %34, align 2
  %36 = shl i16 %bf.load66.i.i, 13
  %bf.lshr102.i.i = lshr i16 %bf.load66.i.i, 4
  %or128151.i.i = or i16 %36, %bf.lshr102.i.i
  %37 = or i16 %or128151.i.i, 4096
  %and134152.i.i = and i16 %37, %32
  %tci.i.i = getelementptr inbounds %struct.nfp_flower_meta_tci, ptr %11, i32 0, i32 2
  %38 = ptrtoint ptr %tci.i.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %tci.i.i, align 2
  %or138153.i.i = or i16 %and134152.i.i, %39
  store i16 %or138153.i.i, ptr %tci.i.i, align 2
  %tci141.i.i = getelementptr inbounds %struct.nfp_flower_meta_tci, ptr %12, i32 0, i32 2
  %40 = ptrtoint ptr %tci141.i.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %tci141.i.i, align 2
  %or143154.i.i = or i16 %41, %37
  store i16 %or143154.i.i, ptr %tci141.i.i, align 2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match.i.i) #4
  br label %nfp_flower_compile_meta_tci.exit

nfp_flower_compile_meta_tci.exit:                 ; preds = %if.then.i.i, %if.then.i.nfp_flower_compile_meta_tci.exit_crit_edge, %entry.nfp_flower_compile_meta_tci.exit_crit_edge
  %add.ptr = getelementptr i8, ptr %11, i32 4
  %add.ptr7 = getelementptr i8, ptr %12, i32 4
  %42 = ptrtoint ptr %key_layer to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %key_layer, align 4
  %44 = and i8 %43, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool10.not = icmp eq i8 %44, 0
  br i1 %tobool10.not, label %nfp_flower_compile_meta_tci.exit.if.end_crit_edge, label %if.then

nfp_flower_compile_meta_tci.exit.if.end_crit_edge: ; preds = %nfp_flower_compile_meta_tci.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %nfp_flower_compile_meta_tci.exit
  call void @__sanitizer_cov_trace_pc() #6
  %45 = ptrtoint ptr %key_ls to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %key_ls, align 4
  %47 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %add.ptr, align 4
  %48 = load i32, ptr %key_ls, align 4
  %49 = ptrtoint ptr %add.ptr7 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %add.ptr7, align 4
  %add.ptr12 = getelementptr i8, ptr %11, i32 8
  %add.ptr13 = getelementptr i8, ptr %12, i32 8
  br label %if.end

if.end:                                           ; preds = %if.then, %nfp_flower_compile_meta_tci.exit.if.end_crit_edge
  %msk.0 = phi ptr [ %add.ptr13, %if.then ], [ %add.ptr7, %nfp_flower_compile_meta_tci.exit.if.end_crit_edge ]
  %ext.0 = phi ptr [ %add.ptr12, %if.then ], [ %add.ptr, %nfp_flower_compile_meta_tci.exit.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tun_type)
  %tobool1.not.i = icmp eq i32 %tun_type, 0
  br i1 %tobool1.not.i, label %if.else.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %or.i = or i32 %tun_type, 1342177280
  br label %if.end21

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool4.not.i = icmp eq i32 %call, 0
  br i1 %tobool4.not.i, label %do.body.i, label %if.else.i.if.end21_crit_edge

if.else.i.if.end21_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end21

do.body.i:                                        ; preds = %if.else.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @nfp_flower_compile_port.__msg) #4
  %tobool6.not.i = icmp eq ptr %extack, null
  br i1 %tobool6.not.i, label %do.body.i.cleanup140_crit_edge, label %do.body.i.cleanup140.sink.split_crit_edge

do.body.i.cleanup140.sink.split_crit_edge:        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup140.sink.split

do.body.i.cleanup140_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup140

if.end21:                                         ; preds = %if.else.i.if.end21_crit_edge, %if.then2.i
  %storemerge.i = phi i32 [ %or.i, %if.then2.i ], [ %call, %if.else.i.if.end21_crit_edge ]
  %50 = ptrtoint ptr %ext.0 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %storemerge.i, ptr %ext.0, align 4
  %51 = ptrtoint ptr %msk.0 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 -1, ptr %msk.0, align 4
  %add.ptr22 = getelementptr i8, ptr %ext.0, i32 4
  %add.ptr23 = getelementptr i8, ptr %msk.0, i32 4
  %52 = ptrtoint ptr %key_layer to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %key_layer, align 4
  %54 = and i8 %53, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool27.not = icmp eq i8 %54, 0
  br i1 %tobool27.not, label %if.end21.if.end35_crit_edge, label %if.then28

if.end21.if.end35_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end35

if.then28:                                        ; preds = %if.end21
  %55 = call ptr @memset(ptr %add.ptr22, i32 0, i32 16)
  %56 = call ptr @memset(ptr %add.ptr23, i32 0, i32 16)
  call void @nfp_flower_compile_mac(ptr noundef %add.ptr22, ptr noundef %add.ptr23, ptr noundef %rule) #4
  %call.i = call i32 @nfp_flower_compile_mpls(ptr noundef %add.ptr22, ptr noundef %add.ptr23, ptr noundef %rule, ptr noundef %extack) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool30.not = icmp eq i32 %call.i, 0
  br i1 %tobool30.not, label %if.end32, label %if.then28.cleanup140_crit_edge

if.then28.cleanup140_crit_edge:                   ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup140

if.end32:                                         ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr33 = getelementptr i8, ptr %ext.0, i32 20
  %add.ptr34 = getelementptr i8, ptr %msk.0, i32 20
  br label %if.end35

if.end35:                                         ; preds = %if.end32, %if.end21.if.end35_crit_edge
  %msk.1 = phi ptr [ %add.ptr34, %if.end32 ], [ %add.ptr23, %if.end21.if.end35_crit_edge ]
  %ext.1 = phi ptr [ %add.ptr33, %if.end32 ], [ %add.ptr22, %if.end21.if.end35_crit_edge ]
  %57 = ptrtoint ptr %key_layer to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %key_layer, align 4
  %59 = and i8 %58, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool39.not = icmp eq i8 %59, 0
  br i1 %tobool39.not, label %if.end35.if.end43_crit_edge, label %if.then40

if.end35.if.end43_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end43

if.then40:                                        ; preds = %if.end35
  %60 = ptrtoint ptr %rule to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %rule, align 8
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %61, align 4
  %and.i.i.i = and i32 %63, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.i.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.i.not.i, label %if.then40.nfp_flower_compile_tport.exit_crit_edge, label %if.then.i259

if.then40.nfp_flower_compile_tport.exit_crit_edge: ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #6
  br label %nfp_flower_compile_tport.exit

if.then.i259:                                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match.i) #4
  %64 = ptrtoint ptr %match.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr inttoptr (i32 -1 to ptr), ptr %match.i, align 4, !annotation !15
  %65 = getelementptr inbounds %struct.flow_match_ports, ptr %match.i, i32 0, i32 1
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr inttoptr (i32 -1 to ptr), ptr %65, align 4, !annotation !15
  call void @flow_rule_match_ports(ptr noundef %rule, ptr noundef nonnull %match.i) #4
  %67 = ptrtoint ptr %match.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %match.i, align 4
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %68, align 4
  %71 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %65, align 4
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %72, align 4
  %and31.i = and i16 %74, %70
  %75 = ptrtoint ptr %ext.1 to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %ext.1, align 2
  %or32.i = or i16 %76, %and31.i
  store i16 %or32.i, ptr %ext.1, align 2
  %dst.i = getelementptr inbounds %struct.anon.221, ptr %68, i32 0, i32 1
  %77 = ptrtoint ptr %dst.i to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %dst.i, align 2
  %dst8.i = getelementptr inbounds %struct.anon.221, ptr %72, i32 0, i32 1
  %79 = ptrtoint ptr %dst8.i to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %dst8.i, align 2
  %and1033.i = and i16 %80, %78
  %port_dst.i = getelementptr inbounds %struct.nfp_flower_tp_ports, ptr %ext.1, i32 0, i32 1
  %81 = ptrtoint ptr %port_dst.i to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %port_dst.i, align 2
  %or1234.i = or i16 %82, %and1033.i
  store i16 %or1234.i, ptr %port_dst.i, align 2
  %83 = load i16, ptr %72, align 4
  %84 = ptrtoint ptr %msk.1 to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %msk.1, align 2
  %or1935.i = or i16 %85, %83
  store i16 %or1935.i, ptr %msk.1, align 2
  %86 = load i16, ptr %dst8.i, align 2
  %port_dst24.i = getelementptr inbounds %struct.nfp_flower_tp_ports, ptr %msk.1, i32 0, i32 1
  %87 = ptrtoint ptr %port_dst24.i to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %port_dst24.i, align 2
  %or2636.i = or i16 %88, %86
  store i16 %or2636.i, ptr %port_dst24.i, align 2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match.i) #4
  br label %nfp_flower_compile_tport.exit

nfp_flower_compile_tport.exit:                    ; preds = %if.then.i259, %if.then40.nfp_flower_compile_tport.exit_crit_edge
  %add.ptr41 = getelementptr i8, ptr %ext.1, i32 4
  %add.ptr42 = getelementptr i8, ptr %msk.1, i32 4
  br label %if.end43

if.end43:                                         ; preds = %nfp_flower_compile_tport.exit, %if.end35.if.end43_crit_edge
  %msk.2 = phi ptr [ %add.ptr42, %nfp_flower_compile_tport.exit ], [ %msk.1, %if.end35.if.end43_crit_edge ]
  %ext.2 = phi ptr [ %add.ptr41, %nfp_flower_compile_tport.exit ], [ %ext.1, %if.end35.if.end43_crit_edge ]
  %89 = ptrtoint ptr %key_layer to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %key_layer, align 4
  %91 = and i8 %90, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %91)
  %tobool47.not = icmp eq i8 %91, 0
  br i1 %tobool47.not, label %if.end43.if.end51_crit_edge, label %if.then48

if.end43.if.end51_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end51

if.then48:                                        ; preds = %if.end43
  %92 = ptrtoint ptr %rule to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %rule, align 8
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %93, align 4
  %and.i.i.i261 = and i32 %95, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i261)
  %tobool.i.i.not.i262 = icmp eq i32 %and.i.i.i261, 0
  br i1 %tobool.i.i.not.i262, label %if.then48.nfp_flower_compile_ipv4.exit_crit_edge, label %if.then.i265

if.then48.nfp_flower_compile_ipv4.exit_crit_edge: ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #6
  br label %nfp_flower_compile_ipv4.exit

if.then.i265:                                     ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match.i260) #4
  %96 = ptrtoint ptr %match.i260 to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr inttoptr (i32 -1 to ptr), ptr %match.i260, align 4, !annotation !15
  %97 = getelementptr inbounds %struct.flow_match_ipv4_addrs, ptr %match.i260, i32 0, i32 1
  %98 = ptrtoint ptr %97 to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr inttoptr (i32 -1 to ptr), ptr %97, align 4, !annotation !15
  call void @flow_rule_match_ipv4_addrs(ptr noundef %rule, ptr noundef nonnull %match.i260) #4
  %99 = ptrtoint ptr %match.i260 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %match.i260, align 4
  %101 = ptrtoint ptr %100 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %100, align 4
  %103 = ptrtoint ptr %97 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %97, align 4
  %105 = ptrtoint ptr %104 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %104, align 4
  %and.i = and i32 %106, %102
  %ipv4_src.i = getelementptr inbounds %struct.nfp_flower_ipv4, ptr %ext.2, i32 0, i32 1
  %107 = ptrtoint ptr %ipv4_src.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %ipv4_src.i, align 4
  %or.i263 = or i32 %108, %and.i
  store i32 %or.i263, ptr %ipv4_src.i, align 4
  %dst.i264 = getelementptr inbounds %struct.flow_dissector_key_ipv4_addrs, ptr %100, i32 0, i32 1
  %109 = ptrtoint ptr %dst.i264 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %dst.i264, align 4
  %dst4.i = getelementptr inbounds %struct.flow_dissector_key_ipv4_addrs, ptr %104, i32 0, i32 1
  %111 = ptrtoint ptr %dst4.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %dst4.i, align 4
  %and5.i = and i32 %112, %110
  %ipv4_dst.i = getelementptr inbounds %struct.nfp_flower_ipv4, ptr %ext.2, i32 0, i32 2
  %113 = ptrtoint ptr %ipv4_dst.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %ipv4_dst.i, align 4
  %or6.i = or i32 %114, %and5.i
  store i32 %or6.i, ptr %ipv4_dst.i, align 4
  %115 = load i32, ptr %104, align 4
  %ipv4_src9.i = getelementptr inbounds %struct.nfp_flower_ipv4, ptr %msk.2, i32 0, i32 1
  %116 = ptrtoint ptr %ipv4_src9.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %ipv4_src9.i, align 4
  %or10.i = or i32 %117, %115
  store i32 %or10.i, ptr %ipv4_src9.i, align 4
  %118 = load i32, ptr %dst4.i, align 4
  %ipv4_dst13.i = getelementptr inbounds %struct.nfp_flower_ipv4, ptr %msk.2, i32 0, i32 2
  %119 = ptrtoint ptr %ipv4_dst13.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %ipv4_dst13.i, align 4
  %or14.i = or i32 %120, %118
  store i32 %or14.i, ptr %ipv4_dst13.i, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match.i260) #4
  br label %nfp_flower_compile_ipv4.exit

nfp_flower_compile_ipv4.exit:                     ; preds = %if.then.i265, %if.then48.nfp_flower_compile_ipv4.exit_crit_edge
  call fastcc void @nfp_flower_compile_ip_ext(ptr noundef %ext.2, ptr noundef %msk.2, ptr noundef %rule) #4
  %add.ptr49 = getelementptr i8, ptr %ext.2, i32 12
  %add.ptr50 = getelementptr i8, ptr %msk.2, i32 12
  br label %if.end51

if.end51:                                         ; preds = %nfp_flower_compile_ipv4.exit, %if.end43.if.end51_crit_edge
  %msk.3 = phi ptr [ %add.ptr50, %nfp_flower_compile_ipv4.exit ], [ %msk.2, %if.end43.if.end51_crit_edge ]
  %ext.3 = phi ptr [ %add.ptr49, %nfp_flower_compile_ipv4.exit ], [ %ext.2, %if.end43.if.end51_crit_edge ]
  %121 = ptrtoint ptr %key_layer to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %key_layer, align 4
  %123 = and i8 %122, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %123)
  %tobool55.not = icmp eq i8 %123, 0
  br i1 %tobool55.not, label %if.end51.if.end59_crit_edge, label %if.then56

if.end51.if.end59_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end59

if.then56:                                        ; preds = %if.end51
  %124 = ptrtoint ptr %rule to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %rule, align 8
  %126 = ptrtoint ptr %125 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %125, align 4
  %and.i.i.i267 = and i32 %127, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i267)
  %tobool.i.i.not.i268 = icmp eq i32 %and.i.i.i267, 0
  br i1 %tobool.i.i.not.i268, label %if.then56.nfp_flower_compile_ipv6.exit_crit_edge, label %if.then.i270

if.then56.nfp_flower_compile_ipv6.exit_crit_edge: ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #6
  br label %nfp_flower_compile_ipv6.exit

if.then.i270:                                     ; preds = %if.then56
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match.i266) #4
  %128 = ptrtoint ptr %match.i266 to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr inttoptr (i32 -1 to ptr), ptr %match.i266, align 4, !annotation !15
  %129 = getelementptr inbounds %struct.flow_match_ipv6_addrs, ptr %match.i266, i32 0, i32 1
  %130 = ptrtoint ptr %129 to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr inttoptr (i32 -1 to ptr), ptr %129, align 4, !annotation !15
  call void @flow_rule_match_ipv6_addrs(ptr noundef %rule, ptr noundef nonnull %match.i266) #4
  %131 = ptrtoint ptr %match.i266 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %match.i266, align 4
  %133 = ptrtoint ptr %129 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %129, align 4
  %ipv6_src.i = getelementptr inbounds %struct.nfp_flower_ipv6, ptr %ext.3, i32 0, i32 2
  %dst.i269 = getelementptr inbounds %struct.flow_dissector_key_ipv6_addrs, ptr %132, i32 0, i32 1
  %dst14.i = getelementptr inbounds %struct.flow_dissector_key_ipv6_addrs, ptr %134, i32 0, i32 1
  %ipv6_dst.i = getelementptr inbounds %struct.nfp_flower_ipv6, ptr %ext.3, i32 0, i32 3
  %ipv6_src29.i = getelementptr inbounds %struct.nfp_flower_ipv6, ptr %msk.3, i32 0, i32 2
  %ipv6_dst40.i = getelementptr inbounds %struct.nfp_flower_ipv6, ptr %msk.3, i32 0, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then.i270
  %i.070.i = phi i32 [ 0, %if.then.i270 ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [16 x i8], ptr %132, i32 0, i32 %i.070.i
  %135 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %arrayidx.i, align 1
  %arrayidx3.i = getelementptr [16 x i8], ptr %134, i32 0, i32 %i.070.i
  %137 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %arrayidx3.i, align 1
  %and64.i = and i8 %138, %136
  %arrayidx6.i = getelementptr [16 x i8], ptr %ipv6_src.i, i32 0, i32 %i.070.i
  %139 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %arrayidx6.i, align 1
  %or65.i = or i8 %140, %and64.i
  store i8 %or65.i, ptr %arrayidx6.i, align 1
  %arrayidx11.i = getelementptr [16 x i8], ptr %dst.i269, i32 0, i32 %i.070.i
  %141 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %arrayidx11.i, align 1
  %arrayidx16.i = getelementptr [16 x i8], ptr %dst14.i, i32 0, i32 %i.070.i
  %143 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %arrayidx16.i, align 1
  %and1866.i = and i8 %144, %142
  %arrayidx20.i = getelementptr [16 x i8], ptr %ipv6_dst.i, i32 0, i32 %i.070.i
  %145 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %arrayidx20.i, align 1
  %or2267.i = or i8 %146, %and1866.i
  store i8 %or2267.i, ptr %arrayidx20.i, align 1
  %147 = load i8, ptr %arrayidx3.i, align 1
  %arrayidx31.i = getelementptr [16 x i8], ptr %ipv6_src29.i, i32 0, i32 %i.070.i
  %148 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %arrayidx31.i, align 1
  %or3368.i = or i8 %149, %147
  store i8 %or3368.i, ptr %arrayidx31.i, align 1
  %150 = load i8, ptr %arrayidx16.i, align 1
  %arrayidx42.i = getelementptr [16 x i8], ptr %ipv6_dst40.i, i32 0, i32 %i.070.i
  %151 = ptrtoint ptr %arrayidx42.i to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %arrayidx42.i, align 1
  %or4469.i = or i8 %152, %150
  store i8 %or4469.i, ptr %arrayidx42.i, align 1
  %inc.i = add nuw nsw i32 %i.070.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 16
  br i1 %exitcond.not.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match.i266) #4
  br label %nfp_flower_compile_ipv6.exit

nfp_flower_compile_ipv6.exit:                     ; preds = %for.end.i, %if.then56.nfp_flower_compile_ipv6.exit_crit_edge
  call fastcc void @nfp_flower_compile_ip_ext(ptr noundef %ext.3, ptr noundef %msk.3, ptr noundef %rule) #4
  %add.ptr57 = getelementptr i8, ptr %ext.3, i32 40
  %add.ptr58 = getelementptr i8, ptr %msk.3, i32 40
  br label %if.end59

if.end59:                                         ; preds = %nfp_flower_compile_ipv6.exit, %if.end51.if.end59_crit_edge
  %msk.4 = phi ptr [ %add.ptr58, %nfp_flower_compile_ipv6.exit ], [ %msk.3, %if.end51.if.end59_crit_edge ]
  %ext.4 = phi ptr [ %add.ptr57, %nfp_flower_compile_ipv6.exit ], [ %ext.3, %if.end51.if.end59_crit_edge ]
  %153 = ptrtoint ptr %key_ls to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %key_ls, align 4
  %and61 = and i32 %154, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %tobool62.not = icmp eq i32 %and61, 0
  br i1 %tobool62.not, label %if.end59.if.end83_crit_edge, label %if.then63

if.end59.if.end83_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end83

if.then63:                                        ; preds = %if.end59
  %and65 = and i32 %154, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65)
  %tobool66.not = icmp eq i32 %and65, 0
  br i1 %tobool66.not, label %if.else, label %if.then67

if.then67:                                        ; preds = %if.then63
  call void @nfp_flower_compile_ipv6_gre_tun(ptr noundef %ext.4, ptr noundef %msk.4, ptr noundef %rule)
  %dst69 = getelementptr inbounds %struct.nfp_flower_tun_ipv6, ptr %ext.4, i32 0, i32 1
  %call72 = call ptr @nfp_tunnel_add_ipv6_off(ptr noundef %app, ptr noundef %dst69) #4
  %tobool73.not = icmp eq ptr %call72, null
  br i1 %tobool73.not, label %if.then67.cleanup140_crit_edge, label %if.end75

if.then67.cleanup140_crit_edge:                   ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup140

if.end75:                                         ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr71 = getelementptr i8, ptr %msk.4, i32 48
  %add.ptr70 = getelementptr i8, ptr %ext.4, i32 48
  %nfp_tun_ipv6 = getelementptr inbounds %struct.nfp_fl_payload, ptr %nfp_flow, i32 0, i32 5
  %155 = ptrtoint ptr %nfp_tun_ipv6 to i32
  call void @__asan_store4_noabort(i32 %155)
  store ptr %call72, ptr %nfp_tun_ipv6, align 4
  br label %if.end83

if.else:                                          ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #6
  call void @nfp_flower_compile_ipv4_gre_tun(ptr noundef %ext.4, ptr noundef %msk.4, ptr noundef %rule)
  %dst79 = getelementptr inbounds %struct.nfp_flower_tun_ipv4, ptr %ext.4, i32 0, i32 1
  %156 = ptrtoint ptr %dst79 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %dst79, align 4
  %add.ptr80 = getelementptr i8, ptr %ext.4, i32 24
  %add.ptr81 = getelementptr i8, ptr %msk.4, i32 24
  %nfp_tun_ipv4_addr = getelementptr inbounds %struct.nfp_fl_payload, ptr %nfp_flow, i32 0, i32 4
  %158 = ptrtoint ptr %nfp_tun_ipv4_addr to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 %157, ptr %nfp_tun_ipv4_addr, align 4
  call void @nfp_tunnel_add_ipv4_off(ptr noundef %app, i32 noundef %157) #4
  br label %if.end83

if.end83:                                         ; preds = %if.else, %if.end75, %if.end59.if.end83_crit_edge
  %msk.5 = phi ptr [ %add.ptr81, %if.else ], [ %msk.4, %if.end59.if.end83_crit_edge ], [ %add.ptr71, %if.end75 ]
  %ext.5 = phi ptr [ %add.ptr80, %if.else ], [ %ext.4, %if.end59.if.end83_crit_edge ], [ %add.ptr70, %if.end75 ]
  %159 = ptrtoint ptr %key_ls to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %key_ls, align 4
  %and85 = and i32 %160, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and85)
  %tobool86.not = icmp eq i32 %and85, 0
  br i1 %tobool86.not, label %if.end83.if.end90_crit_edge, label %if.then87

if.end83.if.end90_crit_edge:                      ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end90

if.then87:                                        ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #6
  call void @nfp_flower_compile_vlan(ptr noundef %ext.5, ptr noundef %msk.5, ptr noundef %rule)
  %add.ptr88 = getelementptr i8, ptr %ext.5, i32 8
  %add.ptr89 = getelementptr i8, ptr %msk.5, i32 8
  br label %if.end90

if.end90:                                         ; preds = %if.then87, %if.end83.if.end90_crit_edge
  %msk.6 = phi ptr [ %add.ptr89, %if.then87 ], [ %msk.5, %if.end83.if.end90_crit_edge ]
  %ext.6 = phi ptr [ %add.ptr88, %if.then87 ], [ %ext.5, %if.end83.if.end90_crit_edge ]
  %161 = ptrtoint ptr %key_layer to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %key_layer, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %162)
  %tobool94.not = icmp sgt i8 %162, -1
  br i1 %tobool94.not, label %lor.lhs.false, label %if.end90.if.then98_crit_edge

if.end90.if.then98_crit_edge:                     ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then98

lor.lhs.false:                                    ; preds = %if.end90
  %163 = ptrtoint ptr %key_ls to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %key_ls, align 4
  %and96 = and i32 %164, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and96)
  %tobool97.not = icmp eq i32 %and96, 0
  br i1 %tobool97.not, label %lor.lhs.false.if.end132_crit_edge, label %lor.lhs.false.if.then98_crit_edge

lor.lhs.false.if.then98_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then98

lor.lhs.false.if.end132_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end132

if.then98:                                        ; preds = %lor.lhs.false.if.then98_crit_edge, %if.end90.if.then98_crit_edge
  %165 = ptrtoint ptr %key_ls to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %key_ls, align 4
  %and100 = and i32 %166, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and100)
  %tobool101.not = icmp eq i32 %and100, 0
  br i1 %tobool101.not, label %if.else119, label %if.then102

if.then102:                                       ; preds = %if.then98
  call void @nfp_flower_compile_ipv6_udp_tun(ptr noundef %ext.6, ptr noundef %msk.6, ptr noundef %rule)
  %dst106 = getelementptr inbounds %struct.nfp_flower_tun_ipv6, ptr %ext.6, i32 0, i32 1
  %call109 = call ptr @nfp_tunnel_add_ipv6_off(ptr noundef %app, ptr noundef %dst106) #4
  %tobool110.not = icmp eq ptr %call109, null
  br i1 %tobool110.not, label %if.then102.cleanup140_crit_edge, label %if.end112

if.then102.cleanup140_crit_edge:                  ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup140

if.end112:                                        ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr107 = getelementptr i8, ptr %ext.6, i32 44
  %nfp_tun_ipv6113 = getelementptr inbounds %struct.nfp_fl_payload, ptr %nfp_flow, i32 0, i32 5
  %167 = ptrtoint ptr %nfp_tun_ipv6113 to i32
  call void @__asan_store4_noabort(i32 %167)
  store ptr %call109, ptr %nfp_tun_ipv6113, align 4
  br label %if.end126

if.else119:                                       ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #6
  call void @nfp_flower_compile_ipv4_udp_tun(ptr noundef %ext.6, ptr noundef %msk.6, ptr noundef %rule)
  %dst122 = getelementptr inbounds %struct.nfp_flower_tun_ipv4, ptr %ext.6, i32 0, i32 1
  %168 = ptrtoint ptr %dst122 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %dst122, align 4
  %add.ptr123 = getelementptr i8, ptr %ext.6, i32 20
  %nfp_tun_ipv4_addr125 = getelementptr inbounds %struct.nfp_fl_payload, ptr %nfp_flow, i32 0, i32 4
  %170 = ptrtoint ptr %nfp_tun_ipv4_addr125 to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 %169, ptr %nfp_tun_ipv4_addr125, align 4
  call void @nfp_tunnel_add_ipv4_off(ptr noundef %app, i32 noundef %169) #4
  br label %if.end126

if.end126:                                        ; preds = %if.else119, %if.end112
  %171 = phi i32 [ 20, %if.else119 ], [ 44, %if.end112 ]
  %ext.7 = phi ptr [ %add.ptr123, %if.else119 ], [ %add.ptr107, %if.end112 ]
  %172 = ptrtoint ptr %key_ls to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %key_ls, align 4
  %and128 = and i32 %173, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and128)
  %tobool129.not = icmp eq i32 %and128, 0
  br i1 %tobool129.not, label %if.end126.if.end132_crit_edge, label %if.then130

if.end126.if.end132_crit_edge:                    ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end132

if.then130:                                       ; preds = %if.end126
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match.i271) #4
  %174 = ptrtoint ptr %match.i271 to i32
  call void @__asan_store4_noabort(i32 %174)
  store ptr inttoptr (i32 -1 to ptr), ptr %match.i271, align 4, !annotation !15
  %175 = getelementptr inbounds %struct.flow_match_enc_opts, ptr %match.i271, i32 0, i32 1
  %176 = ptrtoint ptr %175 to i32
  call void @__asan_store4_noabort(i32 %176)
  store ptr inttoptr (i32 -1 to ptr), ptr %175, align 4, !annotation !15
  %177 = ptrtoint ptr %rule to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %rule, align 8
  %179 = ptrtoint ptr %178 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %178, align 4
  %and.i.i.i272 = and i32 %180, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i272)
  %tobool.i.i.not.i273 = icmp eq i32 %and.i.i.i272, 0
  br i1 %tobool.i.i.not.i273, label %if.then130.nfp_flower_compile_geneve_opt.exit_crit_edge, label %if.then.i274

if.then130.nfp_flower_compile_geneve_opt.exit_crit_edge: ; preds = %if.then130
  call void @__sanitizer_cov_trace_pc() #6
  br label %nfp_flower_compile_geneve_opt.exit

if.then.i274:                                     ; preds = %if.then130
  call void @flow_rule_match_enc_opts(ptr noundef %rule, ptr noundef nonnull %match.i271) #4
  %181 = ptrtoint ptr %175 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %175, align 4
  %len.i = getelementptr inbounds %struct.flow_dissector_key_enc_opts, ptr %182, i32 0, i32 1
  %183 = ptrtoint ptr %len.i to i32
  call void @__asan_load1_noabort(i32 %183)
  %184 = load i8, ptr %len.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %184)
  %cmp29.not.i = icmp eq i8 %184, 0
  br i1 %cmp29.not.i, label %if.then.i274.nfp_flower_compile_geneve_opt.exit_crit_edge, label %for.body.lr.ph.i

if.then.i274.nfp_flower_compile_geneve_opt.exit_crit_edge: ; preds = %if.then.i274
  call void @__sanitizer_cov_trace_pc() #6
  br label %nfp_flower_compile_geneve_opt.exit

for.body.lr.ph.i:                                 ; preds = %if.then.i274
  %185 = ptrtoint ptr %match.i271 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %match.i271, align 4
  %187 = getelementptr i8, ptr %msk.6, i32 %171
  br label %for.body.i277

for.body.i277:                                    ; preds = %for.body.i277.for.body.i277_crit_edge, %for.body.lr.ph.i
  %i.030.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i276, %for.body.i277.for.body.i277_crit_edge ]
  %arrayidx.i275 = getelementptr [255 x i8], ptr %186, i32 0, i32 %i.030.i
  %188 = ptrtoint ptr %arrayidx.i275 to i32
  call void @__asan_load1_noabort(i32 %188)
  %189 = load i8, ptr %arrayidx.i275, align 1
  %arrayidx5.i = getelementptr [255 x i8], ptr %182, i32 0, i32 %i.030.i
  %190 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load1_noabort(i32 %190)
  %191 = load i8, ptr %arrayidx5.i, align 1
  %and25.i = and i8 %191, %189
  %arrayidx7.i = getelementptr i8, ptr %ext.7, i32 %i.030.i
  %192 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %192)
  %193 = load i8, ptr %arrayidx7.i, align 1
  %or26.i = or i8 %193, %and25.i
  store i8 %or26.i, ptr %arrayidx7.i, align 1
  %194 = load i8, ptr %arrayidx5.i, align 1
  %arrayidx14.i = getelementptr i8, ptr %187, i32 %i.030.i
  %195 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load1_noabort(i32 %195)
  %196 = load i8, ptr %arrayidx14.i, align 1
  %or1627.i = or i8 %196, %194
  store i8 %or1627.i, ptr %arrayidx14.i, align 1
  %inc.i276 = add nuw nsw i32 %i.030.i, 1
  %197 = ptrtoint ptr %len.i to i32
  call void @__asan_load1_noabort(i32 %197)
  %198 = load i8, ptr %len.i, align 1
  %conv.i = zext i8 %198 to i32
  %cmp.i = icmp ult i32 %inc.i276, %conv.i
  br i1 %cmp.i, label %for.body.i277.for.body.i277_crit_edge, label %for.body.i277.nfp_flower_compile_geneve_opt.exit_crit_edge

for.body.i277.nfp_flower_compile_geneve_opt.exit_crit_edge: ; preds = %for.body.i277
  call void @__sanitizer_cov_trace_pc() #6
  br label %nfp_flower_compile_geneve_opt.exit

for.body.i277.for.body.i277_crit_edge:            ; preds = %for.body.i277
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i277

nfp_flower_compile_geneve_opt.exit:               ; preds = %for.body.i277.nfp_flower_compile_geneve_opt.exit_crit_edge, %if.then.i274.nfp_flower_compile_geneve_opt.exit_crit_edge, %if.then130.nfp_flower_compile_geneve_opt.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match.i271) #4
  br label %if.end132

if.end132:                                        ; preds = %nfp_flower_compile_geneve_opt.exit, %if.end126.if.end132_crit_edge, %lor.lhs.false.if.end132_crit_edge
  %ext.8 = phi ptr [ %ext.7, %nfp_flower_compile_geneve_opt.exit ], [ %ext.7, %if.end126.if.end132_crit_edge ], [ %ext.6, %lor.lhs.false.if.end132_crit_edge ]
  %199 = ptrtoint ptr %unmasked_data to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %unmasked_data, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %ext.8 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %200 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %sub.ptr.sub)
  %cmp = icmp sgt i32 %sub.ptr.sub, 128
  br i1 %cmp, label %do.body, label %if.end132.cleanup140_crit_edge

if.end132.cleanup140_crit_edge:                   ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup140

do.body:                                          ; preds = %if.end132
  call void @do_trace_netlink_extack(ptr noundef nonnull @nfp_flower_compile_flow_match.__msg) #4
  %tobool136.not = icmp eq ptr %extack, null
  br i1 %tobool136.not, label %do.body.cleanup140_crit_edge, label %do.body.cleanup140.sink.split_crit_edge

do.body.cleanup140.sink.split_crit_edge:          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup140.sink.split

do.body.cleanup140_crit_edge:                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup140

cleanup140.sink.split:                            ; preds = %do.body.cleanup140.sink.split_crit_edge, %do.body.i.cleanup140.sink.split_crit_edge
  %nfp_flower_compile_port.__msg.sink = phi ptr [ @nfp_flower_compile_port.__msg, %do.body.i.cleanup140.sink.split_crit_edge ], [ @nfp_flower_compile_flow_match.__msg, %do.body.cleanup140.sink.split_crit_edge ]
  %201 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %201)
  store ptr %nfp_flower_compile_port.__msg.sink, ptr %extack, align 4
  br label %cleanup140

cleanup140:                                       ; preds = %cleanup140.sink.split, %do.body.cleanup140_crit_edge, %if.end132.cleanup140_crit_edge, %if.then102.cleanup140_crit_edge, %if.then67.cleanup140_crit_edge, %if.then28.cleanup140_crit_edge, %do.body.i.cleanup140_crit_edge
  %retval.3 = phi i32 [ %call.i, %if.then28.cleanup140_crit_edge ], [ -95, %do.body.cleanup140_crit_edge ], [ 0, %if.end132.cleanup140_crit_edge ], [ -95, %if.then67.cleanup140_crit_edge ], [ -95, %if.then102.cleanup140_crit_edge ], [ -95, %do.body.i.cleanup140_crit_edge ], [ -95, %cleanup140.sink.split ]
  ret i32 %retval.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_flower_get_port_id_from_netdev(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfp_tunnel_add_ipv6_off(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfp_tunnel_add_ipv4_off(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_rule_match_ip(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_rule_match_tcp(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_rule_match_control(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_rule_match_enc_ipv4_addrs(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_rule_match_enc_ip(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_rule_match_enc_keyid(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_rule_match_enc_ipv6_addrs(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @nfp_flower_compile_port.__msg, !1, !"__msg", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/netronome/nfp/flower/match.c", i32 85, i32 4}
!2 = !{ptr @nfp_flower_compile_mpls.__msg, !3, !"__msg", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/netronome/nfp/flower/match.c", i32 130, i32 4}
!4 = !{ptr @nfp_flower_compile_flow_match.__msg, !5, !"__msg", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/netronome/nfp/flower/match.c", i32 693, i32 3}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!15 = !{!"auto-init"}
