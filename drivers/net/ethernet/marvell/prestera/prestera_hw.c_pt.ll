; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/marvell/prestera/prestera_hw.c_pt.bc'
source_filename = "../drivers/net/ethernet/marvell/prestera/prestera_hw.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.prestera_msg_switch_attr_req = type { %struct.prestera_msg_cmd, i32, %union.anon.126 }
%struct.prestera_msg_cmd = type { i32 }
%union.anon.126 = type { i32, [4 x i8] }
%struct.prestera_fw_evt_parser = type { ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.prestera_msg_port_info_req = type { %struct.prestera_msg_cmd, i32 }
%struct.prestera_msg_port_info_resp = type { %struct.prestera_msg_ret, i32, i32, i16, [2 x i8] }
%struct.prestera_msg_ret = type { %struct.prestera_msg_cmd, i32 }
%struct.prestera_port = type { ptr, ptr, ptr, %struct.devlink_port, %struct.list_head, ptr, i32, i32, i32, i16, i16, i8, i64, i8, %struct.prestera_port_caps, %struct.list_head, %struct.list_head, %struct.anon.120, %struct.prestera_port_mac_config, %struct.prestera_port_phy_config, %struct.prestera_port_mac_state, %struct.prestera_port_phy_state }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.spinlock = type { %union.anon.23 }
%union.anon.23 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.24 }
%union.anon.24 = type { i32 }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.108 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.108 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.prestera_port_caps = type { i64, i8, i8, i8 }
%struct.list_head = type { ptr, ptr }
%struct.anon.120 = type { %struct.prestera_port_stats, %struct.delayed_work }
%struct.prestera_port_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.prestera_port_mac_config = type { i32, i32, i8, i8, i8, i8 }
%struct.prestera_port_phy_config = type { i32, i8, i8 }
%struct.prestera_port_mac_state = type { i32, i32, i8, i8, i8, i8 }
%struct.prestera_port_phy_state = type { i64, %struct.anon.121, i8 }
%struct.anon.121 = type { i8, i8 }
%struct.prestera_device = type { ptr, ptr, ptr, %struct.prestera_fw_rev, ptr, ptr, ptr, ptr }
%struct.prestera_fw_rev = type { i16, i16, i16 }
%struct.prestera_msg_common_resp = type { %struct.prestera_msg_ret }
%struct.prestera_msg_switch_init_resp = type { %struct.prestera_msg_ret, i32, i32, i32, i8, i8, i8 }
%struct.prestera_msg_common_req = type { %struct.prestera_msg_cmd }
%struct.prestera_switch = type { ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.notifier_block, ptr, [6 x i8], %struct.list_head, %struct.rwlock_t, i32, i32, i32, i8, ptr, ptr, ptr, i8, i8 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.prestera_fw_event_handler = type { %struct.list_head, %struct.callback_head, i32, ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.prestera_event = type { i16, %union.anon.148 }
%union.anon.148 = type { %struct.prestera_port_event }
%struct.prestera_port_event = type { i32, %union.anon.149 }
%union.anon.149 = type { %struct.anon.151 }
%struct.anon.151 = type { i64, %struct.anon.152, i8 }
%struct.anon.152 = type { i8, i8 }
%struct.prestera_msg_event = type { i16, i16 }
%struct.prestera_msg_port_attr_resp = type { %struct.prestera_msg_ret, %union.prestera_msg_port_param }
%union.prestera_msg_port_param = type { %union.anon.128 }
%union.anon.128 = type { %struct.anon.133, [112 x i8] }
%struct.anon.133 = type { i64, i32, i8, i8, i8, i8 }
%struct.prestera_msg_port_attr_req = type { %struct.prestera_msg_cmd, i32, i32, i32, %union.prestera_msg_port_param }
%struct.anon.135 = type { i32, i32, i8, i8, i8, i8 }
%struct.anon.136 = type <{ i64, i8, i8, [2 x i8] }>
%struct.prestera_msg_port_cap_param = type { i64, i8, i8, i8, i8 }
%struct.prestera_msg_vtcam_resp = type { %struct.prestera_msg_ret, i32, i32 }
%struct.prestera_msg_vtcam_create_req = type { %struct.prestera_msg_cmd, [19 x i32], i8, i8, [2 x i8] }
%struct.prestera_msg_vtcam_destroy_req = type { %struct.prestera_msg_cmd, i32 }
%struct.prestera_msg_vtcam_rule_add_req = type { %struct.prestera_msg_cmd, [19 x i32], [19 x i32], i32, i32, i32 }
%struct.prestera_msg_acl_action = type { i32, i32, %union.anon.138 }
%union.anon.138 = type { [6 x i32] }
%struct.prestera_acl_hw_action_info = type { i32, %union.anon.137 }
%union.anon.137 = type { %struct.prestera_acl_action_count }
%struct.prestera_acl_action_count = type { i32 }
%struct.prestera_msg_vtcam_rule_del_req = type { %struct.prestera_msg_cmd, i32, i32 }
%struct.prestera_msg_vtcam_bind_req = type { %struct.prestera_msg_cmd, %union.anon.141, i32, i16, i16 }
%union.anon.141 = type { %struct.anon.142 }
%struct.anon.142 = type { i32, i32 }
%struct.prestera_acl_iface = type { %union.anon.140, i8 }
%union.anon.140 = type { ptr }
%struct.prestera_msg_span_resp = type { %struct.prestera_msg_ret, i8, [3 x i8] }
%struct.prestera_msg_span_req = type { %struct.prestera_msg_cmd, i32, i32, i8, [3 x i8] }
%struct.prestera_msg_port_stats_resp = type { %struct.prestera_msg_ret, [30 x i64] }
%struct.prestera_msg_vlan_req = type { %struct.prestera_msg_cmd, i32, i32, i16, i8, i8 }
%struct.prestera_msg_stp_req = type { %struct.prestera_msg_cmd, i32, i32, i16, i8, i8 }
%struct.prestera_msg_fdb_req = type { %struct.prestera_msg_cmd, i32, %union.anon.143, i16, i8, i8, [6 x i8], [2 x i8] }
%union.anon.143 = type { %struct.anon.144 }
%struct.anon.144 = type { i32, i32 }
%struct.prestera_msg_bridge_resp = type { %struct.prestera_msg_ret, i16, [2 x i8] }
%struct.prestera_msg_bridge_req = type { %struct.prestera_msg_cmd, i32, i32, i16, [2 x i8] }
%struct.prestera_msg_rif_resp = type { %struct.prestera_msg_ret, i16, [2 x i8] }
%struct.prestera_msg_rif_req = type { %struct.prestera_msg_cmd, %struct.prestera_msg_iface, i32, i16, i16, [6 x i8], [2 x i8] }
%struct.prestera_msg_iface = type { %union.anon.146, i16, i16, i8, [3 x i8] }
%union.anon.146 = type { %struct.anon.147 }
%struct.anon.147 = type { i32, i32 }
%struct.prestera_iface = type { i32, %struct.anon.145, i32, i16, i16, i16 }
%struct.anon.145 = type { i32, i32 }
%struct.prestera_msg_vr_resp = type { %struct.prestera_msg_ret, i16, [2 x i8] }
%struct.prestera_msg_vr_req = type { %struct.prestera_msg_cmd, i16, [2 x i8] }
%struct.prestera_msg_rxtx_resp = type { %struct.prestera_msg_ret, i32 }
%struct.prestera_msg_rxtx_req = type { %struct.prestera_msg_cmd, i8, [3 x i8] }
%struct.prestera_rxtx_params = type { i8, i32 }
%struct.prestera_msg_lag_req = type { %struct.prestera_msg_cmd, i32, i32, i16, [2 x i8] }
%struct.prestera_msg_cpu_code_counter_req = type { %struct.prestera_msg_cmd, i8, i8, [2 x i8] }
%struct.mvsw_msg_cpu_code_counter_ret = type { %struct.prestera_msg_ret, i64 }
%struct.prestera_msg_counter_req = type { %struct.prestera_msg_cmd, i32, i32, i32 }
%struct.prestera_msg_counter_resp = type { %struct.prestera_msg_ret, i32, i32, i32, i32, [0 x %struct.prestera_msg_counter_stats] }
%struct.prestera_msg_counter_stats = type { i64, i64 }
%struct.prestera_counter_stats = type { i64, i64 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.prestera_msg_event_port = type { %struct.prestera_msg_event, i32, %struct.prestera_msg_event_port_param }
%struct.prestera_msg_event_port_param = type { %union.anon.134 }
%union.anon.134 = type { %struct.anon.135 }
%struct.anon.150 = type { i32, i32, i8, i8, i8, i8 }
%struct.prestera_msg_event_fdb = type { %struct.prestera_msg_event, i32, %union.anon.155, %union.prestera_msg_event_fdb_param, i8 }
%union.anon.155 = type { i32 }
%union.prestera_msg_event_fdb_param = type { [6 x i8] }
%struct.prestera_fdb_event = type { i32, %union.anon.153, i32, %union.anon.154 }
%union.anon.153 = type { i32 }
%union.anon.154 = type { [6 x i8] }

@__const.prestera_hw_switch_mac_set.req = private unnamed_addr constant %struct.prestera_msg_switch_attr_req { %struct.prestera_msg_cmd zeroinitializer, i32 16777216, %union.anon.126 zeroinitializer }, align 4
@.str = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"drivers/net/ethernet/marvell/prestera/prestera_hw.c\00", [44 x i8] zeroinitializer }, align 32
@fw_event_parsers = internal constant { [4 x %struct.prestera_fw_evt_parser], [16 x i8] } { [4 x %struct.prestera_fw_evt_parser] [%struct.prestera_fw_evt_parser zeroinitializer, %struct.prestera_fw_evt_parser { ptr @prestera_fw_parse_port_evt }, %struct.prestera_fw_evt_parser { ptr @prestera_fw_parse_fdb_evt }, %struct.prestera_fw_evt_parser zeroinitializer], [16 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@__find_event_handler.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 7]
@__sancov_gen_cov_switch_values.5 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 3]
@__sancov_gen_cov_switch_values.6 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 3]
@__sancov_gen_cov_switch_values.7 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 901, i32 2 }
@___asan_gen_.11 = private unnamed_addr constant [17 x i8] c"fw_event_parsers\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 726, i32 3 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 695, i32 2 }
@___asan_gen_.21 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 723, i32 2 }
@___asan_gen_.23 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.24 = private constant [55 x i8] c"../drivers/net/ethernet/marvell/prestera/prestera_hw.c\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 737, i32 2 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @.str, ptr @fw_event_parsers, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fw_event_parsers to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @prestera_hw_port_info_get(ptr nocapture noundef readonly %port, ptr nocapture noundef writeonly %dev_id, ptr nocapture noundef writeonly %hw_id, ptr nocapture noundef writeonly %fp_id) local_unnamed_addr #0 align 64 {
entry:
  %req = alloca %struct.prestera_msg_port_info_req, align 4
  %resp = alloca %struct.prestera_msg_port_info_resp, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %req) #9
  %0 = getelementptr inbounds %struct.prestera_msg_port_info_req, ptr %req, i32 0, i32 1
  %id = getelementptr inbounds %struct.prestera_port, ptr %port, i32 0, i32 6
  %1 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %id, align 4
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %resp) #9
  %5 = getelementptr inbounds %struct.prestera_msg_ret, ptr %resp, i32 0, i32 1
  %6 = getelementptr inbounds %struct.prestera_msg_port_info_resp, ptr %resp, i32 0, i32 1
  %7 = getelementptr inbounds %struct.prestera_msg_port_info_resp, ptr %resp, i32 0, i32 2
  %8 = getelementptr inbounds %struct.prestera_msg_port_info_resp, ptr %resp, i32 0, i32 3
  %sw = getelementptr inbounds %struct.prestera_port, ptr %port, i32 0, i32 1
  %9 = call ptr @memset(ptr %resp, i32 255, i32 20)
  %10 = ptrtoint ptr %sw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sw, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %14 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 268500992, ptr %req, align 4
  %send_req.i.i = getelementptr inbounds %struct.prestera_device, ptr %13, i32 0, i32 7
  %15 = ptrtoint ptr %send_req.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %send_req.i.i, align 4
  %call.i.i = call i32 %16(ptr noundef %13, i32 noundef 0, ptr noundef nonnull %req, i32 noundef 8, ptr noundef nonnull %resp, i32 noundef 20, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i.i:                                       ; preds = %entry
  %17 = ptrtoint ptr %resp to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %resp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %18)
  %cmp.not.i.i = icmp eq i32 %18, 256
  br i1 %cmp.not.i.i, label %if.end6.i.i, label %if.end.i.i.cleanup_crit_edge

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6.i.i:                                      ; preds = %if.end.i.i
  %19 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp7.not.i.i = icmp eq i32 %20, 0
  br i1 %cmp7.not.i.i, label %if.end, label %if.end6.i.i.cleanup_crit_edge

if.end6.i.i.cleanup_crit_edge:                    ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %7, align 4
  %23 = call i32 @llvm.bswap.i32(i32 %22)
  %24 = ptrtoint ptr %dev_id to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %dev_id, align 4
  %25 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %6, align 4
  %27 = call i32 @llvm.bswap.i32(i32 %26)
  %28 = ptrtoint ptr %hw_id to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %hw_id, align 4
  %29 = ptrtoint ptr %8 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %8, align 4
  %31 = call i16 @llvm.bswap.i16(i16 %30)
  %32 = ptrtoint ptr %fp_id to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %31, ptr %fp_id, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.end6.i.i.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %if.end6.i.i.cleanup_crit_edge ], [ -52, %if.end.i.i.cleanup_crit_edge ], [ %call.i.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %resp) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %req) #9
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @prestera_hw_switch_mac_set(ptr nocapture noundef readonly %sw, ptr nocapture noundef readonly %mac) local_unnamed_addr #0 align 64 {
entry:
  %resp.i = alloca %struct.prestera_msg_common_resp, align 4
  %req = alloca %struct.prestera_msg_switch_attr_req, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %req) #9
  %0 = call ptr @memcpy(ptr %req, ptr @__const.prestera_hw_switch_mac_set.req, i32 16)
  %param = getelementptr inbounds %struct.prestera_msg_switch_attr_req, ptr %req, i32 0, i32 2
  %1 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %mac, align 4
  %3 = ptrtoint ptr %param to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %param, align 4
  %add.ptr.i = getelementptr i8, ptr %mac, i32 4
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr inbounds %struct.prestera_msg_switch_attr_req, ptr %req, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %add.ptr1.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %resp.i) #9
  %7 = ptrtoint ptr %resp.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %resp.i, align 4, !annotation !24
  %8 = getelementptr inbounds %struct.prestera_msg_ret, ptr %resp.i, i32 0, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %8, align 4, !annotation !24
  %10 = ptrtoint ptr %sw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sw, align 4
  %12 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 33554432, ptr %req, align 4
  %send_req.i.i.i = getelementptr inbounds %struct.prestera_device, ptr %11, i32 0, i32 7
  %13 = ptrtoint ptr %send_req.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %send_req.i.i.i, align 4
  %call.i.i.i = call i32 %14(ptr noundef %11, i32 noundef 0, ptr noundef nonnull %req, i32 noundef 16, ptr noundef nonnull %resp.i, i32 noundef 8, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %entry.prestera_cmd.exit_crit_edge

entry.prestera_cmd.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %prestera_cmd.exit

if.end.i.i.i:                                     ; preds = %entry
  %15 = ptrtoint ptr %resp.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %resp.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %16)
  %cmp.not.i.i.i = icmp eq i32 %16, 256
  br i1 %cmp.not.i.i.i, label %if.end6.i.i.i, label %if.end.i.i.i.prestera_cmd.exit_crit_edge

if.end.i.i.i.prestera_cmd.exit_crit_edge:         ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %prestera_cmd.exit

if.end6.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp7.not.i.i.i = icmp eq i32 %18, 0
  %..i.i.i = select i1 %cmp7.not.i.i.i, i32 0, i32 -22
  br label %prestera_cmd.exit

prestera_cmd.exit:                                ; preds = %if.end6.i.i.i, %if.end.i.i.i.prestera_cmd.exit_crit_edge, %entry.prestera_cmd.exit_crit_edge
  %retval.0.i.i.i = phi i32 [ %call.i.i.i, %entry.prestera_cmd.exit_crit_edge ], [ -52, %if.end.i.i.i.prestera_cmd.exit_crit_edge ], [ %..i.i.i, %if.end6.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %resp.i) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %req) #9
  ret i32 %retval.0.i.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @prestera_hw_switch_init(ptr noundef %sw) local_unnamed_addr #0 align 64 {
entry:
  %resp = alloca %struct.prestera_msg_switch_init_resp, align 4
  %req = alloca %struct.prestera_msg_common_req, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %resp) #9
  %0 = call ptr @memset(ptr %resp, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %req) #9
  %event_handlers = getelementptr inbounds %struct.prestera_switch, ptr %sw, i32 0, i32 5
  %1 = ptrtoint ptr %event_handlers to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %event_handlers, ptr %event_handlers, align 4
  %prev.i = getelementptr inbounds %struct.prestera_switch, ptr %sw, i32 0, i32 5, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %event_handlers, ptr %prev.i, align 4
  %3 = ptrtoint ptr %sw to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sw, align 4
  %5 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 16777216, ptr %req, align 4
  %send_req.i.i = getelementptr inbounds %struct.prestera_device, ptr %4, i32 0, i32 7
  %6 = ptrtoint ptr %send_req.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %send_req.i.i, align 4
  %call.i.i = call i32 %7(ptr noundef %4, i32 noundef 0, ptr noundef nonnull %req, i32 noundef 4, ptr noundef nonnull %resp, i32 noundef 24, i32 noundef 30000) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i.i:                                       ; preds = %entry
  %8 = ptrtoint ptr %resp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %resp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %9)
  %cmp.not.i.i = icmp eq i32 %9, 256
  br i1 %cmp.not.i.i, label %if.end6.i.i, label %if.end.i.i.cleanup_crit_edge

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6.i.i:                                      ; preds = %if.end.i.i
  %status.i.i = getelementptr inbounds %struct.prestera_msg_ret, ptr %resp, i32 0, i32 1
  %10 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %status.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp7.not.i.i = icmp eq i32 %11, 0
  br i1 %cmp7.not.i.i, label %if.end, label %if.end6.i.i.cleanup_crit_edge

if.end6.i.i.cleanup_crit_edge:                    ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %sw to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sw, align 4
  %recv_msg = getelementptr inbounds %struct.prestera_device, ptr %13, i32 0, i32 6
  %14 = ptrtoint ptr %recv_msg to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @prestera_evt_recv, ptr %recv_msg, align 4
  %15 = load ptr, ptr %sw, align 4
  %recv_pkt = getelementptr inbounds %struct.prestera_device, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %recv_pkt to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @prestera_pkt_recv, ptr %recv_pkt, align 4
  %port_count = getelementptr inbounds %struct.prestera_msg_switch_init_resp, ptr %resp, i32 0, i32 1
  %17 = ptrtoint ptr %port_count to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %port_count, align 4
  %19 = call i32 @llvm.bswap.i32(i32 %18)
  %port_count2 = getelementptr inbounds %struct.prestera_switch, ptr %sw, i32 0, i32 11
  %20 = ptrtoint ptr %port_count2 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %port_count2, align 4
  %mtu_min = getelementptr inbounds %struct.prestera_switch, ptr %sw, i32 0, i32 12
  %21 = ptrtoint ptr %mtu_min to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 64, ptr %mtu_min, align 4
  %mtu_max = getelementptr inbounds %struct.prestera_msg_switch_init_resp, ptr %resp, i32 0, i32 2
  %22 = ptrtoint ptr %mtu_max to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %mtu_max, align 4
  %24 = call i32 @llvm.bswap.i32(i32 %23)
  %mtu_max3 = getelementptr inbounds %struct.prestera_switch, ptr %sw, i32 0, i32 13
  %25 = ptrtoint ptr %mtu_max3 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %mtu_max3, align 4
  %switch_id = getelementptr inbounds %struct.prestera_msg_switch_init_resp, ptr %resp, i32 0, i32 4
  %26 = ptrtoint ptr %switch_id to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %switch_id, align 4
  %id = getelementptr inbounds %struct.prestera_switch, ptr %sw, i32 0, i32 14
  %28 = ptrtoint ptr %id to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %id, align 4
  %lag_member_max = getelementptr inbounds %struct.prestera_msg_switch_init_resp, ptr %resp, i32 0, i32 6
  %29 = ptrtoint ptr %lag_member_max to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %lag_member_max, align 2
  %lag_member_max4 = getelementptr inbounds %struct.prestera_switch, ptr %sw, i32 0, i32 18
  %31 = ptrtoint ptr %lag_member_max4 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %lag_member_max4, align 4
  %lag_max = getelementptr inbounds %struct.prestera_msg_switch_init_resp, ptr %resp, i32 0, i32 5
  %32 = ptrtoint ptr %lag_max to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %lag_max, align 1
  %lag_max5 = getelementptr inbounds %struct.prestera_switch, ptr %sw, i32 0, i32 19
  %34 = ptrtoint ptr %lag_max5 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %lag_max5, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.end6.i.i.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %if.end6.i.i.cleanup_crit_edge ], [ -52, %if.end.i.i.cleanup_crit_edge ], [ %call.i.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %req) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %resp) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @prestera_evt_recv(ptr nocapture noundef readonly %dev, ptr noundef %buf, i32 noundef %size) #0 align 64 {
entry:
  %eh = alloca %struct.prestera_fw_event_handler, align 4
  %evt = alloca %struct.prestera_event, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.prestera_device, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %eh) #9
  %2 = getelementptr inbounds %struct.prestera_fw_event_handler, ptr %eh, i32 0, i32 3
  %3 = getelementptr inbounds %struct.prestera_fw_event_handler, ptr %eh, i32 0, i32 4
  %4 = call ptr @memset(ptr %eh, i32 255, i32 28)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %evt) #9
  %5 = call ptr @memset(ptr %evt, i32 255, i32 32)
  %6 = ptrtoint ptr %buf to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %buf, align 2
  %8 = tail call i16 @llvm.bswap.i16(i16 %7)
  %conv = zext i16 %8 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %8)
  %cmp = icmp ugt i16 %8, 3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr [4 x %struct.prestera_fw_evt_parser], ptr @fw_event_parsers, i32 0, i32 %conv
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call = call fastcc i32 @prestera_find_event_handler(ptr noundef %1, i32 noundef %conv, ptr noundef nonnull %eh)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool5.not = icmp eq i32 %call, 0
  br i1 %tobool5.not, label %if.end7, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  %id = getelementptr inbounds %struct.prestera_msg_event, ptr %buf, i32 0, i32 1
  %11 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %id, align 2
  %13 = tail call i16 @llvm.bswap.i16(i16 %12)
  %14 = ptrtoint ptr %evt to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %evt, align 8
  %call12 = call i32 %10(ptr noundef %buf, ptr noundef nonnull %evt) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end15:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %2, align 4
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %3, align 4
  call void %16(ptr noundef %1, ptr noundef nonnull %evt, ptr noundef %18) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.end7.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end15 ], [ -22, %entry.cleanup_crit_edge ], [ -2, %if.end.cleanup_crit_edge ], [ %call, %if.end3.cleanup_crit_edge ], [ %call12, %if.end7.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %evt) #9
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %eh) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @prestera_pkt_recv(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  %eh = alloca %struct.prestera_fw_event_handler, align 4
  %ev = alloca %struct.prestera_event, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.prestera_device, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %eh) #9
  %2 = call ptr @memset(ptr %eh, i32 255, i32 28)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %ev) #9
  %3 = call ptr @memset(ptr %ev, i32 255, i32 32)
  %4 = ptrtoint ptr %ev to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 1, ptr %ev, align 8
  %call = call fastcc i32 @prestera_find_event_handler(ptr noundef %1, i32 noundef 3, ptr noundef nonnull %eh)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %5 = getelementptr inbounds %struct.prestera_fw_event_handler, ptr %eh, i32 0, i32 4
  %6 = getelementptr inbounds %struct.prestera_fw_event_handler, ptr %eh, i32 0, i32 3
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %5, align 4
  call void %8(ptr noundef %1, ptr noundef nonnull %ev, ptr noundef %10) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ev) #9
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %eh) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @prestera_hw_switch_fini(ptr noundef %sw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %event_handlers = getelementptr inbounds %struct.prestera_switch, ptr %sw, i32 0, i32 5
  %0 = ptrtoint ptr %event_handlers to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %event_handlers, align 4
  %cmp.i.not = icmp eq ptr %1, %event_handlers
  br i1 %cmp.i.not, label %entry.if.end_crit_edge, label %do.end, !prof !25

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 901, i32 noundef 9, ptr noundef null) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @prestera_hw_switch_ageing_set(ptr nocapture noundef readonly %sw, i32 noundef %ageing_ms) local_unnamed_addr #0 align 64 {
entry:
  %resp.i = alloca %struct.prestera_msg_common_resp, align 4
  %req = alloca %struct.prestera_msg_switch_attr_req, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %req) #9
  %0 = getelementptr inbounds %struct.prestera_msg_switch_attr_req, ptr %req, i32 0, i32 1
  %1 = getelementptr inbounds %struct.prestera_msg_switch_attr_req, ptr %req, i32 0, i32 2
  %2 = getelementptr inbounds i8, ptr %req, i32 12
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %2, align 4
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 33554432, ptr %0, align 4
  %5 = tail call i32 @llvm.bswap.i32(i32 %ageing_ms)
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %resp.i) #9
  %7 = ptrtoint ptr %resp.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %resp.i, align 4, !annotation !24
  %8 = getelementptr inbounds %struct.prestera_msg_ret, ptr %resp.i, i32 0, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %8, align 4, !annotation !24
  %10 = ptrtoint ptr %sw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sw, align 4
  %12 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 33554432, ptr %req, align 4
  %send_req.i.i.i = getelementptr inbounds %struct.prestera_device, ptr %11, i32 0, i32 7
  %13 = ptrtoint ptr %send_req.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %send_req.i.i.i, align 4
  %call.i.i.i = call i32 %14(ptr noundef %11, i32 noundef 0, ptr noundef nonnull %req, i32 noundef 16, ptr noundef nonnull %resp.i, i32 noundef 8, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %entry.prestera_cmd.exit_crit_edge

entry.prestera_cmd.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %prestera_cmd.exit

if.end.i.i.i:                                     ; preds = %entry
  %15 = ptrtoint ptr %resp.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %resp.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %16)
  %cmp.not.i.i.i = icmp eq i32 %16, 256
  br i1 %cmp.not.i.i.i, label %if.end6.i.i.i, label %if.end.i.i.i.prestera_cmd.exit_crit_edge

if.end.i.i.i.prestera_cmd.exit_crit_edge:         ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %prestera_cmd.exit

if.end6.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp7.not.i.i.i = icmp eq i32 %18, 0
  %..i.i.i = select i1 %cmp7.not.i.i.i, i32 0, i32 -22
  br label %prestera_cmd.exit

prestera_cmd.exit:                                ; preds = %if.end6.i.i.i, %if.end.i.i.i.prestera_cmd.exit_crit_edge, %entry.prestera_cmd.exit_crit_edge
  %retval.0.i.i.i = phi i32 [ %call.i.i.i, %entry.prestera_cmd.exit_crit_edge ], [ -52, %if.end.i.i.i.prestera_cmd.exit_crit_edge ], [ %..i.i.i, %if.end6.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %resp.i) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %req) #9
  ret i32 %retval.0.i.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @prestera_hw_port_mac_mode_get(ptr nocapture noundef readonly %port, ptr noundef writeonly %mode, ptr noundef writeonly %speed, ptr noundef writeonly %duplex, ptr noundef writeonly %fec) local_unnamed_addr #0 align 64 {
entry:
  %resp = alloca %struct.prestera_msg_port_attr_resp, align 8
  %req = alloca %struct.prestera_msg_port_attr_req, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %resp) #9
  %0 = call ptr @memset(ptr %resp, i32 255, i32 136)
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %req) #9
  %1 = getelementptr inbounds i8, ptr %req, i32 16
  %2 = call ptr @memset(ptr %1, i32 0, i32 128)
  %attr = getelementptr inbounds %struct.prestera_msg_port_attr_req, ptr %req, i32 0, i32 1
  %3 = ptrtoint ptr %attr to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 369098752, ptr %attr, align 4
  %port1 = getelementptr inbounds %struct.prestera_msg_port_attr_req, ptr %req, i32 0, i32 2
  %hw_id = getelementptr inbounds %struct.prestera_port, ptr %port, i32 0, i32 7
  %4 = ptrtoint ptr %hw_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hw_id, align 8
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %7 = ptrtoint ptr %port1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %port1, align 8
  %dev = getelementptr inbounds %struct.prestera_msg_port_attr_req, ptr %req, i32 0, i32 3
  %dev_id = getelementptr inbounds %struct.prestera_port, ptr %port, i32 0, i32 8
  %8 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dev_id, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %dev, align 4
  %sw = getelementptr inbounds %struct.prestera_port, ptr %port, i32 0, i32 1
  %12 = ptrtoint ptr %sw to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sw, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %16 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 16842752, ptr %req, align 8
  %send_req.i.i = getelementptr inbounds %struct.prestera_device, ptr %15, i32 0, i32 7
  %17 = ptrtoint ptr %send_req.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %send_req.i.i, align 4
  %call.i.i = call i32 %18(ptr noundef %15, i32 noundef 0, ptr noundef nonnull %req, i32 noundef 144, ptr noundef nonnull %resp, i32 noundef 136, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i.i:                                       ; preds = %entry
  %19 = ptrtoint ptr %resp to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %resp, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %20)
  %cmp.not.i.i = icmp eq i32 %20, 256
  br i1 %cmp.not.i.i, label %if.end6.i.i, label %if.end.i.i.cleanup_crit_edge

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6.i.i:                                      ; preds = %if.end.i.i
  %status.i.i = getelementptr inbounds %struct.prestera_msg_ret, ptr %resp, i32 0, i32 1
  %21 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %status.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp7.not.i.i = icmp eq i32 %22, 0
  br i1 %cmp7.not.i.i, label %if.end, label %if.end6.i.i.cleanup_crit_edge

if.end6.i.i.cleanup_crit_edge:                    ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %if.end6.i.i
  %tobool2.not = icmp eq ptr %mode, null
  br i1 %tobool2.not, label %if.end.if.end5_crit_edge, label %if.then3

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %param = getelementptr inbounds %struct.prestera_msg_port_attr_resp, ptr %resp, i32 0, i32 1
  %23 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %param, align 8
  %25 = call i32 @llvm.bswap.i32(i32 %24)
  %26 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %mode, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  %tobool6.not = icmp eq ptr %speed, null
  br i1 %tobool6.not, label %if.end5.if.end10_crit_edge, label %if.then7

if.end5.if.end10_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %param8 = getelementptr inbounds %struct.prestera_msg_port_attr_resp, ptr %resp, i32 0, i32 1
  %speed9 = getelementptr inbounds %struct.anon.135, ptr %param8, i32 0, i32 1
  %27 = ptrtoint ptr %speed9 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %speed9, align 4
  %29 = call i32 @llvm.bswap.i32(i32 %28)
  %30 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %speed, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %if.end5.if.end10_crit_edge
  %tobool11.not = icmp eq ptr %duplex, null
  br i1 %tobool11.not, label %if.end10.if.end15_crit_edge, label %if.then12

if.end10.if.end15_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  %param13 = getelementptr inbounds %struct.prestera_msg_port_attr_resp, ptr %resp, i32 0, i32 1
  %duplex14 = getelementptr inbounds %struct.anon.135, ptr %param13, i32 0, i32 3
  %31 = ptrtoint ptr %duplex14 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %duplex14, align 1
  %33 = ptrtoint ptr %duplex to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %duplex, align 1
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %if.end10.if.end15_crit_edge
  %tobool16.not = icmp eq ptr %fec, null
  br i1 %tobool16.not, label %if.end15.cleanup_crit_edge, label %if.then17

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then17:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  %param18 = getelementptr inbounds %struct.prestera_msg_port_attr_resp, ptr %resp, i32 0, i32 1
  %fec19 = getelementptr inbounds %struct.anon.135, ptr %param18, i32 0, i32 5
  %34 = ptrtoint ptr %fec19 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %fec19, align 1
  %36 = ptrtoint ptr %fec to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %fec, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then17, %if.end15.cleanup_crit_edge, %if.end6.i.i.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0.i.i33 = phi i32 [ 0, %if.end15.cleanup_crit_edge ], [ 0, %if.then17 ], [ -22, %if.end6.i.i.cleanup_crit_edge ], [ -52, %if.end.i.i.cleanup_crit_edge ], [ %call.i.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %req) #9
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %resp) #9
  ret i32 %retval.0.i.i33
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @prestera_hw_port_mac_mode_set(ptr nocapture noundef readonly %port, i1 noundef zeroext %admin, i32 noundef %mode, i8 noundef zeroext %inband, i32 noundef %speed, i8 noundef zeroext %duplex, i8 noundef zeroext %fec) local_unnamed_addr #0 align 64 {
entry:
  %resp.i = alloca %struct.prestera_msg_common_resp, align 4
  %req = alloca %struct.prestera_msg_port_attr_req, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %admin to i8
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %req) #9
  %0 = getelementptr inbounds i8, ptr %req, i32 16
  %1 = call ptr @memset(ptr %0, i32 0, i32 128)
  %attr = getelementptr inbounds %struct.prestera_msg_port_attr_req, ptr %req, i32 0, i32 1
  %2 = ptrtoint ptr %attr to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 369098752, ptr %attr, align 4
  %port1 = getelementptr inbounds %struct.prestera_msg_port_attr_req, ptr %req, i32 0, i32 2
  %hw_id = getelementptr inbounds %struct.prestera_port, ptr %port, i32 0, i32 7
  %3 = ptrtoint ptr %hw_id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %hw_id, align 8
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %6 = ptrtoint ptr %port1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %port1, align 8
  %dev = getelementptr inbounds %struct.prestera_msg_port_attr_req, ptr %req, i32 0, i32 3
  %dev_id = getelementptr inbounds %struct.prestera_port, ptr %port, i32 0, i32 8
  %7 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dev_id, align 4
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %dev, align 4
  %param = getelementptr inbounds %struct.prestera_msg_port_attr_req, ptr %req, i32 0, i32 4
  %11 = ptrtoint ptr %param to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %frombool, ptr %param, align 8
  %12 = getelementptr inbounds %struct.prestera_msg_port_attr_req, ptr %req, i32 0, i32 4, i32 0, i32 0, i32 1
  %13 = tail call i32 @llvm.bswap.i32(i32 %mode)
  %14 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %12, align 8
  %speed4 = getelementptr inbounds %struct.prestera_msg_port_attr_req, ptr %req, i32 0, i32 4, i32 0, i32 0, i32 2
  %15 = tail call i32 @llvm.bswap.i32(i32 %speed)
  %16 = ptrtoint ptr %speed4 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %speed4, align 4
  %inband5 = getelementptr inbounds %struct.prestera_msg_port_attr_req, ptr %req, i32 0, i32 4, i32 0, i32 1
  %17 = ptrtoint ptr %inband5 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %inband, ptr %inband5, align 8
  %duplex6 = getelementptr inbounds %struct.prestera_msg_port_attr_req, ptr %req, i32 0, i32 4, i32 0, i32 1, i32 1
  %18 = ptrtoint ptr %duplex6 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %duplex, ptr %duplex6, align 1
  %fec7 = getelementptr inbounds %struct.prestera_msg_port_attr_req, ptr %req, i32 0, i32 4, i32 0, i32 1, i32 2
  %19 = ptrtoint ptr %fec7 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %fec, ptr %fec7, align 2
  %sw = getelementptr inbounds %struct.prestera_port, ptr %port, i32 0, i32 1
  %20 = ptrtoint ptr %sw to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sw, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %resp.i) #9
  %22 = ptrtoint ptr %resp.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -1, ptr %resp.i, align 4, !annotation !24
  %23 = getelementptr inbounds %struct.prestera_msg_ret, ptr %resp.i, i32 0, i32 1
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -1, ptr %23, align 4, !annotation !24
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %21, align 4
  %27 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 65536, ptr %req, align 8
  %send_req.i.i.i = getelementptr inbounds %struct.prestera_device, ptr %26, i32 0, i32 7
  %28 = ptrtoint ptr %send_req.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %send_req.i.i.i, align 4
  %call.i.i.i = call i32 %29(ptr noundef %26, i32 noundef 0, ptr noundef nonnull %req, i32 noundef 144, ptr noundef nonnull %resp.i, i32 noundef 8, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %entry.prestera_cmd.exit_crit_edge

entry.prestera_cmd.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %prestera_cmd.exit

if.end.i.i.i:                                     ; preds = %entry
  %30 = ptrtoint ptr %resp.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %resp.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %31)
  %cmp.not.i.i.i = icmp eq i32 %31, 256
  br i1 %cmp.not.i.i.i, label %if.end6.i.i.i, label %if.end.i.i.i.prestera_cmd.exit_crit_edge

if.end.i.i.i.prestera_cmd.exit_crit_edge:         ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %prestera_cmd.exit

if.end6.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %32 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %23, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp7.not.i.i.i = icmp eq i32 %33, 0
  %..i.i.i = select i1 %cmp7.not.i.i.i, i32 0, i32 -22
  br label %prestera_cmd.exit

prestera_cmd.exit:                                ; preds = %if.end6.i.i.i, %if.end.i.i.i.prestera_cmd.exit_crit_edge, %entry.prestera_cmd.exit_crit_edge
  %retval.0.i.i.i = phi i32 [ %call.i.i.i, %entry.prestera_cmd.exit_crit_edge ], [ -52, %if.end.i.i.i.prestera_cmd.exit_crit_edge ], [ %..i.i.i, %if.end6.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %resp.i) #9
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %req) #9
  ret i32 %retval.0.i.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @prestera_hw_port_phy_mode_get(ptr nocapture noundef readonly %port, ptr noundef writeonly %mdix, ptr noundef writeonly %lmode_bmap, ptr noundef writeonly %fc_pause, ptr noundef writeonly %fc_asym) local_unnamed_addr #0 align 64 {
entry:
  %resp = alloca %struct.prestera_msg_port_attr_resp, align 8
  %req = alloca %struct.prestera_msg_port_attr_req, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %resp) #9
  %0 = call ptr @memset(ptr %resp, i32 255, i32 136)
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %req) #9
  %1 = getelementptr inbounds i8, ptr %req, i32 16
  %2 = call ptr @memset(ptr %1, i32 0, i32 128)
  %attr = getelementptr inbounds %struct.prestera_msg_port_attr_req, ptr %req, i32 0, i32 1
  %3 = ptrtoint ptr %attr to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 201326592, ptr %attr, align 4
  %port1 = getelementptr inbounds %struct.prestera_msg_port_attr_req, ptr %req, i32 0, i32 2
  %hw_id = getelementptr inbounds %struct.prestera_port, ptr %port, i32 0, i32 7
  %4 = ptrtoint ptr %hw_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hw_id, align 8
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %7 = ptrtoint ptr %port1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %port1, align 8
  %dev = getelementptr inbounds %struct.prestera_msg_port_attr_req, ptr %req, i32 0, i32 3
  %dev_id = getelementptr inbounds %struct.prestera_port, ptr %port, i32 0, i32 8
  %8 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dev_id, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %dev, align 4
  %sw = getelementptr inbounds %struct.prestera_port, ptr %port, i32 0, i32 1
  %12 = ptrtoint ptr %sw to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sw, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %16 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 16842752, ptr %req, align 8
  %send_req.i.i = getelementptr inbounds %struct.prestera_device, ptr %15, i32 0, i32 7
  %17 = ptrtoint ptr %send_req.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %send_req.i.i, align 4
  %call.i.i = call i32 %18(ptr noundef %15, i32 noundef 0, ptr noundef nonnull %req, i32 noundef 144, ptr noundef nonnull %resp, i32 noundef 136, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i.i:                                       ; preds = %entry
  %19 = ptrtoint ptr %resp to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %resp, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %20)
  %cmp.not.i.i = icmp eq i32 %20, 256
  br i1 %cmp.not.i.i, label %if.end6.i.i, label %if.end.i.i.cleanup_crit_edge

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6.i.i:                                      ; preds = %if.end.i.i
  %status.i.i = getelementptr inbounds %struct.prestera_msg_ret, ptr %resp, i32 0, i32 1
  %21 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %status.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp7.not.i.i = icmp eq i32 %22, 0
  br i1 %cmp7.not.i.i, label %if.end, label %if.end6.i.i.cleanup_crit_edge

if.end6.i.i.cleanup_crit_edge:                    ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %if.end6.i.i
  %tobool2.not = icmp eq ptr %mdix, null
  br i1 %tobool2.not, label %if.end.if.end6_crit_edge, label %if.then3

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %mdix4 = getelementptr inbounds %struct.prestera_msg_port_attr_resp, ptr %resp, i32 0, i32 1, i32 0, i32 0, i32 1
  %23 = ptrtoint ptr %mdix4 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %mdix4, align 8
  %switch.tableidx = add i8 %24, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %switch.tableidx)
  %25 = icmp ult i8 %switch.tableidx, 3
  %retval.0.i = select i1 %25, i8 %24, i8 0
  %26 = ptrtoint ptr %mdix to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %retval.0.i, ptr %mdix, align 1
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %if.end.if.end6_crit_edge
  %tobool7.not = icmp eq ptr %lmode_bmap, null
  br i1 %tobool7.not, label %if.end6.if.end11_crit_edge, label %if.then8

if.end6.if.end11_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %param9 = getelementptr inbounds %struct.prestera_msg_port_attr_resp, ptr %resp, i32 0, i32 1
  %27 = ptrtoint ptr %param9 to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %param9, align 8
  %29 = call i64 @llvm.bswap.i64(i64 %28)
  %30 = ptrtoint ptr %lmode_bmap to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %29, ptr %lmode_bmap, align 8
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %if.end6.if.end11_crit_edge
  %tobool12.not = icmp eq ptr %fc_pause, null
  %tobool13.not = icmp eq ptr %fc_asym, null
  %or.cond = or i1 %tobool12.not, %tobool13.not
  br i1 %or.cond, label %if.end11.cleanup_crit_edge, label %if.then14

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then14:                                        ; preds = %if.end11
  %param15 = getelementptr inbounds %struct.prestera_msg_port_attr_resp, ptr %resp, i32 0, i32 1
  %fc = getelementptr inbounds %struct.anon.136, ptr %param15, i32 0, i32 2
  %31 = ptrtoint ptr %fc to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %fc, align 1
  %switch.tableidx34 = add i8 %32, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %switch.tableidx34)
  %33 = icmp ult i8 %switch.tableidx34, 3
  br i1 %33, label %switch.lookup33, label %if.then14.prestera_hw_remote_fc_to_eth.exit_crit_edge

if.then14.prestera_hw_remote_fc_to_eth.exit_crit_edge: ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  br label %prestera_hw_remote_fc_to_eth.exit

switch.lookup33:                                  ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  %switch.cast = zext i8 %switch.tableidx34 to i24
  %switch.shiftamt = shl nuw nsw i24 %switch.cast, 3
  %switch.downshift = lshr i24 65537, %switch.shiftamt
  %switch.masked = trunc i24 %switch.downshift to i8
  %switch.cast35 = zext i8 %switch.tableidx34 to i24
  %switch.shiftamt36 = shl nuw nsw i24 %switch.cast35, 3
  %switch.downshift37 = lshr i24 65792, %switch.shiftamt36
  %switch.masked38 = trunc i24 %switch.downshift37 to i8
  br label %prestera_hw_remote_fc_to_eth.exit

prestera_hw_remote_fc_to_eth.exit:                ; preds = %switch.lookup33, %if.then14.prestera_hw_remote_fc_to_eth.exit_crit_edge
  %.sink9.i = phi i8 [ %switch.masked, %switch.lookup33 ], [ 0, %if.then14.prestera_hw_remote_fc_to_eth.exit_crit_edge ]
  %.sink.i = phi i8 [ %switch.masked38, %switch.lookup33 ], [ 0, %if.then14.prestera_hw_remote_fc_to_eth.exit_crit_edge ]
  %34 = ptrtoint ptr %fc_pause to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %.sink9.i, ptr %fc_pause, align 1
  %35 = ptrtoint ptr %fc_asym to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %.sink.i, ptr %fc_asym, align 1
  br label %cleanup

cleanup:                                          ; preds = %prestera_hw_remote_fc_to_eth.exit, %if.end11.cleanup_crit_edge, %if.end6.i.i.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0.i.i32 = phi i32 [ 0, %if.end11.cleanup_crit_edge ], [ 0, %prestera_hw_remote_fc_to_eth.exit ], [ -22, %if.end6.i.i.cleanup_crit_edge ], [ -52, %if.end.i.i.cleanup_crit_edge ], [ %call.i.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %req) #9
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %resp) #9
  ret i32 %retval.0.i.i32
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @prestera_hw_port_phy_mode_set(ptr nocapture noundef readonly %port, i1 noundef zeroext %admin, i1 noundef zeroext %adv, i32 noundef %mode, i64 noundef %modes, i8 noundef zeroext %mdix) local_unnamed_addr #0 align 64 {
entry:
  %resp.i = alloca %struct.prestera_msg_common_resp, align 4
  %req = alloca %struct.prestera_msg_port_attr_req, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %admin to i8
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %req) #9
  %0 = getelementptr inbounds i8, ptr %req, i32 24
  %1 = call ptr @memset(ptr %0, i32 0, i32 120)
  %attr = getelementptr inbounds %struct.prestera_msg_port_attr_req, ptr %req, i32 0, i32 1
  %2 = ptrtoint ptr %attr to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 201326592, ptr %attr, align 4
  %port2 = getelementptr inbounds %struct.prestera_msg_port_attr_req, ptr %req, i32 0, i32 2
  %hw_id = getelementptr inbounds %struct.prestera_port, ptr %port, i32 0, i32 7
  %3 = ptrtoint ptr %hw_id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %hw_id, align 8
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %6 = ptrtoint ptr %port2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %port2, align 8
  %dev = getelementptr inbounds %struct.prestera_msg_port_attr_req, ptr %req, i32 0, i32 3
  %dev_id = getelementptr inbounds %struct.prestera_port, ptr %port, i32 0, i32 8
  %7 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dev_id, align 4
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %dev, align 4
  %param = getelementptr inbounds %struct.prestera_msg_port_attr_req, ptr %req, i32 0, i32 4
  %11 = tail call i64 @llvm.bswap.i64(i64 %modes)
  %12 = ptrtoint ptr %param to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %11, ptr %param, align 8
  %mode4 = getelementptr inbounds %struct.prestera_msg_port_attr_req, ptr %req, i32 0, i32 4, i32 0, i32 0, i32 1
  %13 = tail call i32 @llvm.bswap.i32(i32 %mode)
  %14 = ptrtoint ptr %mode4 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %mode4, align 8
  %admin5 = getelementptr inbounds %struct.prestera_msg_port_attr_req, ptr %req, i32 0, i32 4, i32 0, i32 0, i32 2
  %15 = ptrtoint ptr %admin5 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %frombool, ptr %admin5, align 4
  %adv_enable = getelementptr inbounds %struct.prestera_msg_port_attr_req, ptr %req, i32 0, i32 4, i32 0, i32 0, i32 3
  %conv8 = zext i1 %adv to i8
  %16 = ptrtoint ptr %adv_enable to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv8, ptr %adv_enable, align 1
  %switch.tableidx = add i8 %mdix, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %switch.tableidx)
  %17 = icmp ult i8 %switch.tableidx, 3
  %retval.0.i = select i1 %17, i8 %mdix, i8 0
  %mdix11 = getelementptr inbounds %struct.prestera_msg_port_attr_req, ptr %req, i32 0, i32 4, i32 0, i32 0, i32 4
  %18 = ptrtoint ptr %mdix11 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %retval.0.i, ptr %mdix11, align 2
  %sw = getelementptr inbounds %struct.prestera_port, ptr %port, i32 0, i32 1
  %19 = ptrtoint ptr %sw to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sw, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %resp.i) #9
  %21 = ptrtoint ptr %resp.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %resp.i, align 4, !annotation !24
  %22 = getelementptr inbounds %struct.prestera_msg_ret, ptr %resp.i, i32 0, i32 1
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -1, ptr %22, align 4, !annotation !24
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %20, align 4
  %26 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 65536, ptr %req, align 8
  %send_req.i.i.i = getelementptr inbounds %struct.prestera_device, ptr %25, i32 0, i32 7
  %27 = ptrtoint ptr %send_req.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %send_req.i.i.i, align 4
  %call.i.i.i = call i32 %28(ptr noundef %25, i32 noundef 0, ptr noundef nonnull %req, i32 noundef 144, ptr noundef nonnull %resp.i, i32 noundef 8, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %entry.prestera_cmd.exit_crit_edge

entry.prestera_cmd.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %prestera_cmd.exit

if.end.i.i.i:                                     ; preds = %entry
  %29 = ptrtoint ptr %resp.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %resp.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %30)
  %cmp.not.i.i.i = icmp eq i32 %30, 256
  br i1 %cmp.not.i.i.i, label %if.end6.i.i.i, label %if.end.i.i.i.prestera_cmd.exit_crit_edge

if.end.i.i.i.prestera_cmd.exit_crit_edge:         ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %prestera_cmd.exit

if.end6.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %31 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp7.not.i.i.i = icmp eq i32 %32, 0
  %..i.i.i = select i1 %cmp7.not.i.i.i, i32 0, i32 -22
  br label %prestera_cmd.exit

prestera_cmd.exit:                                ; preds = %if.end6.i.i.i, %if.end.i.i.i.prestera_cmd.exit_crit_edge, %entry.prestera_cmd.exit_crit_edge
  %retval.0.i.i.i = phi i32 [ %call.i.i.i, %entry.prestera_cmd.exit_crit_edge ], [ -52, %if.end.i.i.i.prestera_cmd.exit_crit_edge ], [ %..i.i.i, %if.end6.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %resp.i) #9
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %req) #9
  ret i32 %retval.0.i.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @prestera_hw_port_mtu_set(ptr nocapture noundef readonly %port, i32 noundef %mtu) local_unnamed_addr #0 align 64 {
entry:
  %resp.i = alloca %struct.prestera_msg_common_resp, align 4
  %req = alloca %struct.prestera_msg_port_attr_req, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %req) #9
  %0 = getelementptr inbounds i8, ptr %req, i32 16
  %1 = call ptr @memset(ptr %0, i32 0, i32 128)
  %attr = getelementptr inbounds %struct.prestera_msg_port_attr_req, ptr %req, i32 0, i32 1
  %2 = ptrtoint ptr %attr to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 50331648, ptr %attr, align 4
  %port1 = getelementptr inbounds %struct.prestera_msg_port_attr_req, ptr %req, i32 0, i32 2
  %hw_id = getelementptr inbounds %struct.prestera_port, ptr %port, i32 0, i32 7
  %3 = ptrtoint ptr %hw_id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %hw_id, align 8
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %6 = ptrtoint ptr %port1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %port1, align 8
  %dev = getelementptr inbounds %struct.prestera_msg_port_attr_req, ptr %req, i32 0, i32 3
  %dev_id = getelementptr inbounds %struct.prestera_port, ptr %port, i32 0, i32 8
  %7 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dev_id, align 4
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %dev, align 4
  %param = getelementptr inbounds %struct.prestera_msg_port_attr_req, ptr %req, i32 0, i32 4
  %11 = tail call i32 @llvm.bswap.i32(i32 %mtu)
  %12 = ptrtoint ptr %param to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %param, align 8
  %sw = getelementptr inbounds %struct.prestera_port, ptr %port, i32 0, i32 1
  %13 = ptrtoint ptr %sw to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sw, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %resp.i) #9
  %15 = ptrtoint ptr %resp.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %resp.i, align 4, !annotation !24
  %16 = getelementptr inbounds %struct.prestera_msg_ret, ptr %resp.i, i32 0, i32 1
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %16, align 4, !annotation !24
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %14, align 4
  %20 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 65536, ptr %req, align 8
  %send_req.i.i.i = getelementptr inbounds %struct.prestera_device, ptr %19, i32 0, i32 7
  %21 = ptrtoint ptr %send_req.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %send_req.i.i.i, align 4
  %call.i.i.i = call i32 %22(ptr noundef %19, i32 noundef 0, ptr noundef nonnull %req, i32 noundef 144, ptr noundef nonnull %resp.i, i32 noundef 8, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %entry.prestera_cmd.exit_crit_edge

entry.prestera_cmd.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %prestera_cmd.exit

if.end.i.i.i:                                     ; preds = %entry
  %23 = ptrtoint ptr %resp.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %resp.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %24)
  %cmp.not.i.i.i = icmp eq i32 %24, 256
  br i1 %cmp.not.i.i.i, label %if.end6.i.i.i, label %if.end.i.i.i.prestera_cmd.exit_crit_edge

if.end.i.i.i.prestera_cmd.exit_crit_edge:         ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %prestera_cmd.exit

if.end6.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp7.not.i.i.i = icmp eq i32 %26, 0
  %..i.i.i = select i1 %cmp7.not.i.i.i, i32 0, i32 -22
  br label %prestera_cmd.exit

prestera_cmd.exit:                                ; preds = %if.end6.i.i.i, %if.end.i.i.i.prestera_cmd.exit_crit_edge, %entry.prestera_cmd.exit_crit_edge
  %retval.0.i.i.i = phi i32 [ %call.i.i.i, %entry.prestera_cmd.exit_crit_edge ], [ -52, %if.end.i.i.i.prestera_cmd.exit_crit_edge ], [ %..i.i.i, %if.end6.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %resp.i) #9
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %req) #9
  ret i32 %retval.0.i.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @prestera_hw_port_mac_set(ptr nocapture noundef readonly %port, ptr nocapture noundef readonly %mac) local_unnamed_addr #0 align 64 {
entry:
  %resp.i = alloca %struct.prestera_msg_common_resp, align 4
  %req = alloca %struct.prestera_msg_port_attr_req, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %req) #9
  %0 = getelementptr inbounds i8, ptr %req, i32 16
  %1 = call ptr @memset(ptr %0, i32 0, i32 128)
  %attr = getelementptr inbounds %struct.prestera_msg_port_attr_req, ptr %req, i32 0, i32 1
  %2 = ptrtoint ptr %attr to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 67108864, ptr %attr, align 4
  %port1 = getelementptr inbounds %struct.prestera_msg_port_attr_req, ptr %req, i32 0, i32 2
  %hw_id = getelementptr inbounds %struct.prestera_port, ptr %port, i32 0, i32 7
  %3 = ptrtoint ptr %hw_id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %hw_id, align 8
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %6 = ptrtoint ptr %port1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %port1, align 8
  %dev = getelementptr inbounds %struct.prestera_msg_port_attr_req, ptr %req, i32 0, i32 3
  %dev_id = getelementptr inbounds %struct.prestera_port, ptr %port, i32 0, i32 8
  %7 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dev_id, align 4
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %dev, align 4
  %param = getelementptr inbounds %struct.prestera_msg_port_attr_req, ptr %req, i32 0, i32 4
  %11 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mac, align 4
  %13 = ptrtoint ptr %param to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %param, align 8
  %add.ptr.i = getelementptr i8, ptr %mac, i32 4
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr inbounds i8, ptr %param, i32 4
  %16 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %add.ptr1.i, align 4
  %sw = getelementptr inbounds %struct.prestera_port, ptr %port, i32 0, i32 1
  %17 = ptrtoint ptr %sw to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sw, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %resp.i) #9
  %19 = ptrtoint ptr %resp.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %resp.i, align 4, !annotation !24
  %20 = getelementptr inbounds %struct.prestera_msg_ret, ptr %resp.i, i32 0, i32 1
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %20, align 4, !annotation !24
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %18, align 4
  %24 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 65536, ptr %req, align 8
  %send_req.i.i.i = getelementptr inbounds %struct.prestera_device, ptr %23, i32 0, i32 7
  %25 = ptrtoint ptr %send_req.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %send_req.i.i.i, align 4
  %call.i.i.i = call i32 %26(ptr noundef %23, i32 noundef 0, ptr noundef nonnull %req, i32 noundef 144, ptr noundef nonnull %resp.i, i32 noundef 8, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %entry.prestera_cmd.exit_crit_edge

entry.prestera_cmd.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %prestera_cmd.exit

if.end.i.i.i:                                     ; preds = %entry
  %27 = ptrtoint ptr %resp.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %resp.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %28)
  %cmp.not.i.i.i = icmp eq i32 %28, 256
  br i1 %cmp.not.i.i.i, label %if.end6.i.i.i, label %if.end.i.i.i.prestera_cmd.exit_crit_edge

if.end.i.i.i.prestera_cmd.exit_crit_edge:         ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %prestera_cmd.exit

if.end6.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %29 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %20, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp7.not.i.i.i = icmp eq i32 %30, 0
  %..i.i.i = select i1 %cmp7.not.i.i.i, i32 0, i32 -22
  br label %prestera_cmd.exit

prestera_cmd.exit:                                ; preds = %if.end6.i.i.i, %if.end.i.i.i.prestera_cmd.exit_crit_edge, %entry.prestera_cmd.exit_crit_edge
  %retval.0.i.i.i = phi i32 [ %call.i.i.i, %entry.prestera_cmd.exit_crit_edge ], [ -52, %if.end.i.i.i.prestera_cmd.exit_crit_edge ], [ %..i.i.i, %if.end6.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %resp.i) #9
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %req) #9
  ret i32 %retval.0.i.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @prestera_hw_port_accept_frm_type(ptr nocapture noundef readonly %port, i32 noundef %type) local_unnamed_addr #0 align 64 {
entry:
  %resp.i = alloca %struct.prestera_msg_common_resp, align 4
  %req = alloca %struct.prestera_msg_port_attr_req, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %req) #9
  %0 = getelementptr inbounds i8, ptr %req, i32 16
  %1 = call ptr @memset(ptr %0, i32 0, i32 128)
  %attr = getelementptr inbounds %struct.prestera_msg_port_attr_req, ptr %req, i32 0, i32 1
  %2 = ptrtoint ptr %attr to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 100663296, ptr %attr, align 4
  %port1 = getelementptr inbounds %struct.prestera_msg_port_attr_req, ptr %req, i32 0, i32 2
  %hw_id = getelementptr inbounds %struct.prestera_port, ptr %port, i32 0, i32 7
  %3 = ptrtoint ptr %hw_id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %hw_id, align 8
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %6 = ptrtoint ptr %port1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %port1, align 8
  %dev = getelementptr inbounds %struct.prestera_msg_port_attr_req, ptr %req, i32 0, i32 3
  %dev_id = getelementptr inbounds %struct.prestera_port, ptr %port, i32 0, i32 8
  %7 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dev_id, align 4
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %dev, align 4
  %param = getelementptr inbounds %struct.prestera_msg_port_attr_req, ptr %req, i32 0, i32 4
  %conv = trunc i32 %type to i8
  %11 = ptrtoint ptr %param to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv, ptr %param, align 8
  %sw = getelementptr inbounds %struct.prestera_port, ptr %port, i32 0, i32 1
  %12 = ptrtoint ptr %sw to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sw, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %resp.i) #9
  %14 = ptrtoint ptr %resp.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %resp.i, align 4, !annotation !24
  %15 = getelementptr inbounds %struct.prestera_msg_ret, ptr %resp.i, i32 0, i32 1
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %15, align 4, !annotation !24
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %13, align 4
  %19 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 65536, ptr %req, align 8
  %send_req.i.i.i = getelementptr inbounds %struct.prestera_device, ptr %18, i32 0, i32 7
  %20 = ptrtoint ptr %send_req.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %send_req.i.i.i, align 4
  %call.i.i.i = call i32 %21(ptr noundef %18, i32 noundef 0, ptr noundef nonnull %req, i32 noundef 144, ptr noundef nonnull %resp.i, i32 noundef 8, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %entry.prestera_cmd.exit_crit_edge

entry.prestera_cmd.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %prestera_cmd.exit

if.end.i.i.i:                                     ; preds = %entry
  %22 = ptrtoint ptr %resp.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %resp.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %23)
  %cmp.not.i.i.i = icmp eq i32 %23, 256
  br i1 %cmp.not.i.i.i, label %if.end6.i.i.i, label %if.end.i.i.i.prestera_cmd.exit_crit_edge

if.end.i.i.i.prestera_cmd.exit_crit_edge:         ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %prestera_cmd.exit

if.end6.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp7.not.i.i.i = icmp eq i32 %25, 0
  %..i.i.i = select i1 %cmp7.not.i.i.i, i32 0, i32 -22
  br label %prestera_cmd.exit

prestera_cmd.exit:                                ; preds = %if.end6.i.i.i, %if.end.i.i.i.prestera_cmd.exit_crit_edge, %entry.prestera_cmd.exit_crit_edge
  %retval.0.i.i.i = phi i32 [ %call.i.i.i, %entry.prestera_cmd.exit_crit_edge ], [ -52, %if.end.i.i.i.prestera_cmd.exit_crit_edge ], [ %..i.i.i, %if.end6.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %resp.i) #9
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %req) #9
  ret i32 %retval.0.i.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @prestera_hw_port_cap_get(ptr nocapture noundef readonly %port, ptr nocapture noundef writeonly %caps) local_unnamed_addr #0 align 64 {
entry:
  %req = alloca %struct.prestera_msg_port_attr_req, align 8
  %resp = alloca %struct.prestera_msg_port_attr_resp, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %req) #9
  %0 = getelementptr inbounds i8, ptr %req, i32 16
  %1 = call ptr @memset(ptr %0, i32 0, i32 128)
  %attr = getelementptr inbounds %struct.prestera_msg_port_attr_req, ptr %req, i32 0, i32 1
  %2 = ptrtoint ptr %attr to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 150994944, ptr %attr, align 4
  %port1 = getelementptr inbounds %struct.prestera_msg_port_attr_req, ptr %req, i32 0, i32 2
  %hw_id = getelementptr inbounds %struct.prestera_port, ptr %port, i32 0, i32 7
  %3 = ptrtoint ptr %hw_id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %hw_id, align 8
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %6 = ptrtoint ptr %port1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %port1, align 8
  %dev = getelementptr inbounds %struct.prestera_msg_port_attr_req, ptr %req, i32 0, i32 3
  %dev_id = getelementptr inbounds %struct.prestera_port, ptr %port, i32 0, i32 8
  %7 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dev_id, align 4
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %dev, align 4
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %resp) #9
  %11 = call ptr @memset(ptr %resp, i32 255, i32 136)
  %sw = getelementptr inbounds %struct.prestera_port, ptr %port, i32 0, i32 1
  %12 = ptrtoint ptr %sw to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sw, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %16 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 16842752, ptr %req, align 8
  %send_req.i.i = getelementptr inbounds %struct.prestera_device, ptr %15, i32 0, i32 7
  %17 = ptrtoint ptr %send_req.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %send_req.i.i, align 4
  %call.i.i = call i32 %18(ptr noundef %15, i32 noundef 0, ptr noundef nonnull %req, i32 noundef 144, ptr noundef nonnull %resp, i32 noundef 136, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i.i:                                       ; preds = %entry
  %19 = ptrtoint ptr %resp to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %resp, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %20)
  %cmp.not.i.i = icmp eq i32 %20, 256
  br i1 %cmp.not.i.i, label %if.end6.i.i, label %if.end.i.i.cleanup_crit_edge

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6.i.i:                                      ; preds = %if.end.i.i
  %status.i.i = getelementptr inbounds %struct.prestera_msg_ret, ptr %resp, i32 0, i32 1
  %21 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %status.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp7.not.i.i = icmp eq i32 %22, 0
  br i1 %cmp7.not.i.i, label %if.end, label %if.end6.i.i.cleanup_crit_edge

if.end6.i.i.cleanup_crit_edge:                    ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %param = getelementptr inbounds %struct.prestera_msg_port_attr_resp, ptr %resp, i32 0, i32 1
  %23 = ptrtoint ptr %param to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %param, align 8
  %25 = call i64 @llvm.bswap.i64(i64 %24)
  %26 = ptrtoint ptr %caps to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %25, ptr %caps, align 8
  %transceiver = getelementptr inbounds %struct.prestera_msg_port_cap_param, ptr %param, i32 0, i32 4
  %27 = ptrtoint ptr %transceiver to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %transceiver, align 1
  %transceiver3 = getelementptr inbounds %struct.prestera_port_caps, ptr %caps, i32 0, i32 3
  %29 = ptrtoint ptr %transceiver3 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %transceiver3, align 2
  %fec = getelementptr inbounds %struct.prestera_msg_port_cap_param, ptr %param, i32 0, i32 2
  %30 = ptrtoint ptr %fec to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %fec, align 1
  %supp_fec = getelementptr inbounds %struct.prestera_port_caps, ptr %caps, i32 0, i32 1
  %32 = ptrtoint ptr %supp_fec to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %supp_fec, align 8
  %type = getelementptr inbounds %struct.prestera_msg_port_attr_resp, ptr %resp, i32 0, i32 1, i32 0, i32 0, i32 1
  %33 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %type, align 8
  %type6 = getelementptr inbounds %struct.prestera_port_caps, ptr %caps, i32 0, i32 2
  %35 = ptrtoint ptr %type6 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %type6, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.end6.i.i.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0.i.i18 = phi i32 [ 0, %if.end ], [ -22, %if.end6.i.i.cleanup_crit_edge ], [ -52, %if.end.i.i.cleanup_crit_edge ], [ %call.i.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %resp) #9
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %req) #9
  ret i32 %retval.0.i.i18
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @prestera_hw_vtcam_create(ptr nocapture noundef readonly %sw, i8 noundef zeroext %lookup, ptr noundef readonly %keymask, ptr nocapture noundef writeonly %vtcam_id, i32 noundef %dir) local_unnamed_addr #0 align 64 {
entry:
  %resp = alloca %struct.prestera_msg_vtcam_resp, align 4
  %req = alloca %struct.prestera_msg_vtcam_create_req, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %resp) #9
  %0 = getelementptr inbounds %struct.prestera_msg_ret, ptr %resp, i32 0, i32 1
  %1 = getelementptr inbounds %struct.prestera_msg_vtcam_resp, ptr %resp, i32 0, i32 1
  %2 = call ptr @memset(ptr %resp, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 84, ptr nonnull %req) #9
  %3 = getelementptr inbounds i8, ptr %req, i32 4
  %4 = call ptr @memset(ptr %3, i32 0, i32 80)
  %direction = getelementptr inbounds %struct.prestera_msg_vtcam_create_req, ptr %req, i32 0, i32 2
  %conv = trunc i32 %dir to i8
  %5 = ptrtoint ptr %direction to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv, ptr %direction, align 4
  %lookup2 = getelementptr inbounds %struct.prestera_msg_vtcam_create_req, ptr %req, i32 0, i32 3
  %6 = ptrtoint ptr %lookup2 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %lookup, ptr %lookup2, align 1
  %tobool.not = icmp eq ptr %keymask, null
  %keymask4 = getelementptr inbounds %struct.prestera_msg_vtcam_create_req, ptr %req, i32 0, i32 1
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %7 = call ptr @memcpy(ptr %keymask4, ptr %keymask, i32 76)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %8 = call ptr @memset(ptr %keymask4, i32 0, i32 76)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %9 = ptrtoint ptr %sw to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sw, align 4
  %11 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1074069504, ptr %req, align 4
  %send_req.i.i = getelementptr inbounds %struct.prestera_device, ptr %10, i32 0, i32 7
  %12 = ptrtoint ptr %send_req.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %send_req.i.i, align 4
  %call.i.i = call i32 %13(ptr noundef %10, i32 noundef 0, ptr noundef nonnull %req, i32 noundef 84, ptr noundef nonnull %resp, i32 noundef 16, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end
  %14 = ptrtoint ptr %resp to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %resp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %15)
  %cmp.not.i.i = icmp eq i32 %15, 256
  br i1 %cmp.not.i.i, label %if.end6.i.i, label %if.end.i.i.cleanup_crit_edge

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6.i.i:                                      ; preds = %if.end.i.i
  %16 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp7.not.i.i = icmp eq i32 %17, 0
  br i1 %cmp7.not.i.i, label %if.end8, label %if.end6.i.i.cleanup_crit_edge

if.end6.i.i.cleanup_crit_edge:                    ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8:                                          ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %1, align 4
  %20 = call i32 @llvm.bswap.i32(i32 %19)
  %21 = ptrtoint ptr %vtcam_id to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %vtcam_id, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end6.i.i.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end8 ], [ -22, %if.end6.i.i.cleanup_crit_edge ], [ -52, %if.end.i.i.cleanup_crit_edge ], [ %call.i.i, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 84, ptr nonnull %req) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %resp) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @prestera_hw_vtcam_destroy(ptr nocapture noundef readonly %sw, i32 noundef %vtcam_id) local_unnamed_addr #0 align 64 {
entry:
  %resp.i = alloca %struct.prestera_msg_common_resp, align 4
  %req = alloca %struct.prestera_msg_vtcam_destroy_req, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %req) #9
  %0 = getelementptr inbounds %struct.prestera_msg_vtcam_destroy_req, ptr %req, i32 0, i32 1
  %1 = tail call i32 @llvm.bswap.i32(i32 %vtcam_id)
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %resp.i) #9
  %3 = ptrtoint ptr %resp.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %resp.i, align 4, !annotation !24
  %4 = getelementptr inbounds %struct.prestera_msg_ret, ptr %resp.i, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %4, align 4, !annotation !24
  %6 = ptrtoint ptr %sw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sw, align 4
  %8 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1090846720, ptr %req, align 4
  %send_req.i.i.i = getelementptr inbounds %struct.prestera_device, ptr %7, i32 0, i32 7
  %9 = ptrtoint ptr %send_req.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %send_req.i.i.i, align 4
  %call.i.i.i = call i32 %10(ptr noundef %7, i32 noundef 0, ptr noundef nonnull %req, i32 noundef 8, ptr noundef nonnull %resp.i, i32 noundef 8, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %entry.prestera_cmd.exit_crit_edge

entry.prestera_cmd.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %prestera_cmd.exit

if.end.i.i.i:                                     ; preds = %entry
  %11 = ptrtoint ptr %resp.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %resp.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %12)
  %cmp.not.i.i.i = icmp eq i32 %12, 256
  br i1 %cmp.not.i.i.i, label %if.end6.i.i.i, label %if.end.i.i.i.prestera_cmd.exit_crit_edge

if.end.i.i.i.prestera_cmd.exit_crit_edge:         ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %prestera_cmd.exit

if.end6.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp7.not.i.i.i = icmp eq i32 %14, 0
  %..i.i.i = select i1 %cmp7.not.i.i.i, i32 0, i32 -22
  br label %prestera_cmd.exit

prestera_cmd.exit:                                ; preds = %if.end6.i.i.i, %if.end.i.i.i.prestera_cmd.exit_crit_edge, %entry.prestera_cmd.exit_crit_edge
  %retval.0.i.i.i = phi i32 [ %call.i.i.i, %entry.prestera_cmd.exit_crit_edge ], [ -52, %if.end.i.i.i.prestera_cmd.exit_crit_edge ], [ %..i.i.i, %if.end6.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %resp.i) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %req) #9
  ret i32 %retval.0.i.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @prestera_hw_vtcam_rule_add(ptr nocapture noundef readonly %sw, i32 noundef %vtcam_id, i32 noundef %prio, ptr nocapture noundef readonly %key, ptr nocapture noundef readonly %keymask, ptr nocapture noundef readonly %act, i8 noundef zeroext %n_act, ptr nocapture noundef writeonly %rule_id) local_unnamed_addr #0 align 64 {
entry:
  %resp = alloca %struct.prestera_msg_vtcam_resp, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %resp) #9
  %0 = getelementptr inbounds %struct.prestera_msg_ret, ptr %resp, i32 0, i32 1
  %1 = getelementptr inbounds %struct.prestera_msg_vtcam_resp, ptr %resp, i32 0, i32 2
  %conv = zext i8 %n_act to i32
  %mul = shl nuw nsw i32 %conv, 5
  %add = add nuw nsw i32 %mul, 168
  %2 = call ptr @memset(ptr %resp, i32 255, i32 16)
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3520) #12
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = shl nuw i32 %conv, 24
  %n_act2 = getelementptr inbounds %struct.prestera_msg_vtcam_rule_add_req, ptr %call9.i.i, i32 0, i32 5
  %4 = ptrtoint ptr %n_act2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %n_act2, align 4
  %add.ptr = getelementptr i8, ptr %call9.i.i, i32 168
  %key3 = getelementptr inbounds %struct.prestera_msg_vtcam_rule_add_req, ptr %call9.i.i, i32 0, i32 1
  %5 = call ptr @memcpy(ptr %key3, ptr %key, i32 76)
  %keymask4 = getelementptr inbounds %struct.prestera_msg_vtcam_rule_add_req, ptr %call9.i.i, i32 0, i32 2
  %6 = call ptr @memcpy(ptr %keymask4, ptr %keymask, i32 76)
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %n_act)
  %cmp49.not = icmp eq i8 %n_act, 0
  br i1 %cmp49.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.inc.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.prestera_msg_acl_action, ptr %add.ptr, i32 %indvars.iv
  %arrayidx10 = getelementptr %struct.prestera_acl_hw_action_info, ptr %act, i32 %indvars.iv
  %7 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx10, align 4
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #9
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %arrayidx, align 8
  %11 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i32 %8, label %for.body.free_buff_crit_edge [
    i32 0, label %for.body.for.inc_crit_edge
    i32 1, label %for.body.for.inc_crit_edge51
    i32 2, label %for.body.for.inc_crit_edge52
    i32 7, label %sw.bb3.i
  ]

for.body.for.inc_crit_edge52:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

for.body.for.inc_crit_edge51:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

for.body.free_buff_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_buff

sw.bb3.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %12 = getelementptr %struct.prestera_acl_hw_action_info, ptr %act, i32 %indvars.iv, i32 1
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #9
  %16 = getelementptr inbounds %struct.prestera_msg_acl_action, ptr %arrayidx, i32 0, i32 2
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %15, ptr %16, align 16
  br label %for.inc

for.inc:                                          ; preds = %sw.bb3.i, %for.body.for.inc_crit_edge, %for.body.for.inc_crit_edge51, %for.body.for.inc_crit_edge52
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, %conv
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  %18 = tail call i32 @llvm.bswap.i32(i32 %vtcam_id)
  %vtcam_id15 = getelementptr inbounds %struct.prestera_msg_vtcam_rule_add_req, ptr %call9.i.i, i32 0, i32 3
  %19 = ptrtoint ptr %vtcam_id15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %vtcam_id15, align 4
  %20 = tail call i32 @llvm.bswap.i32(i32 %prio)
  %prio16 = getelementptr inbounds %struct.prestera_msg_vtcam_rule_add_req, ptr %call9.i.i, i32 0, i32 4
  %21 = ptrtoint ptr %prio16 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %prio16, align 32
  %22 = ptrtoint ptr %sw to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sw, align 4
  %24 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1342504960, ptr %call9.i.i, align 128
  %send_req.i.i = getelementptr inbounds %struct.prestera_device, ptr %23, i32 0, i32 7
  %25 = ptrtoint ptr %send_req.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %send_req.i.i, align 4
  %call.i.i = call i32 %26(ptr noundef %23, i32 noundef 0, ptr noundef nonnull %call9.i.i, i32 noundef %add, ptr noundef nonnull %resp, i32 noundef 16, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i44, label %for.end.free_buff_crit_edge

for.end.free_buff_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_buff

if.end.i.i44:                                     ; preds = %for.end
  %27 = ptrtoint ptr %resp to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %resp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %28)
  %cmp.not.i.i = icmp eq i32 %28, 256
  br i1 %cmp.not.i.i, label %if.end6.i.i, label %if.end.i.i44.free_buff_crit_edge

if.end.i.i44.free_buff_crit_edge:                 ; preds = %if.end.i.i44
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_buff

if.end6.i.i:                                      ; preds = %if.end.i.i44
  %29 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp7.not.i.i = icmp eq i32 %30, 0
  br i1 %cmp7.not.i.i, label %if.end20, label %if.end6.i.i.free_buff_crit_edge

if.end6.i.i.free_buff_crit_edge:                  ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_buff

if.end20:                                         ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %1, align 4
  %33 = call i32 @llvm.bswap.i32(i32 %32)
  %34 = ptrtoint ptr %rule_id to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %rule_id, align 4
  br label %free_buff

free_buff:                                        ; preds = %if.end20, %if.end6.i.i.free_buff_crit_edge, %if.end.i.i44.free_buff_crit_edge, %for.end.free_buff_crit_edge, %for.body.free_buff_crit_edge
  %err.0 = phi i32 [ 0, %if.end20 ], [ -22, %if.end6.i.i.free_buff_crit_edge ], [ -52, %if.end.i.i44.free_buff_crit_edge ], [ %call.i.i, %for.end.free_buff_crit_edge ], [ -22, %for.body.free_buff_crit_edge ]
  call void @kfree(ptr noundef nonnull %call9.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %free_buff, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %free_buff ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %resp) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @prestera_hw_vtcam_rule_del(ptr nocapture noundef readonly %sw, i32 noundef %vtcam_id, i32 noundef %rule_id) local_unnamed_addr #0 align 64 {
entry:
  %resp.i = alloca %struct.prestera_msg_common_resp, align 4
  %req = alloca %struct.prestera_msg_vtcam_rule_del_req, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %req) #9
  %0 = getelementptr inbounds %struct.prestera_msg_vtcam_rule_del_req, ptr %req, i32 0, i32 1
  %1 = getelementptr inbounds %struct.prestera_msg_vtcam_rule_del_req, ptr %req, i32 0, i32 2
  %2 = tail call i32 @llvm.bswap.i32(i32 %vtcam_id)
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %0, align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %rule_id)
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %resp.i) #9
  %6 = ptrtoint ptr %resp.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %resp.i, align 4, !annotation !24
  %7 = getelementptr inbounds %struct.prestera_msg_ret, ptr %resp.i, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %7, align 4, !annotation !24
  %9 = ptrtoint ptr %sw to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sw, align 4
  %11 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1359282176, ptr %req, align 4
  %send_req.i.i.i = getelementptr inbounds %struct.prestera_device, ptr %10, i32 0, i32 7
  %12 = ptrtoint ptr %send_req.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %send_req.i.i.i, align 4
  %call.i.i.i = call i32 %13(ptr noundef %10, i32 noundef 0, ptr noundef nonnull %req, i32 noundef 12, ptr noundef nonnull %resp.i, i32 noundef 8, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %entry.prestera_cmd.exit_crit_edge

entry.prestera_cmd.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %prestera_cmd.exit

if.end.i.i.i:                                     ; preds = %entry
  %14 = ptrtoint ptr %resp.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %resp.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %15)
  %cmp.not.i.i.i = icmp eq i32 %15, 256
  br i1 %cmp.not.i.i.i, label %if.end6.i.i.i, label %if.end.i.i.i.prestera_cmd.exit_crit_edge

if.end.i.i.i.prestera_cmd.exit_crit_edge:         ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %prestera_cmd.exit

if.end6.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp7.not.i.i.i = icmp eq i32 %17, 0
  %..i.i.i = select i1 %cmp7.not.i.i.i, i32 0, i32 -22
  br label %prestera_cmd.exit

prestera_cmd.exit:                                ; preds = %if.end6.i.i.i, %if.end.i.i.i.prestera_cmd.exit_crit_edge, %entry.prestera_cmd.exit_crit_edge
  %retval.0.i.i.i = phi i32 [ %call.i.i.i, %entry.prestera_cmd.exit_crit_edge ], [ -52, %if.end.i.i.i.prestera_cmd.exit_crit_edge ], [ %..i.i.i, %if.end6.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %resp.i) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %req) #9
  ret i32 %retval.0.i.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @prestera_hw_vtcam_iface_bind(ptr nocapture noundef readonly %sw, ptr nocapture noundef readonly %iface, i32 noundef %vtcam_id, i16 noundef zeroext %pcl_id) local_unnamed_addr #0 align 64 {
entry:
  %resp.i = alloca %struct.prestera_msg_common_resp, align 4
  %req = alloca %struct.prestera_msg_vtcam_bind_req, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %req) #9
  %0 = getelementptr inbounds %struct.prestera_msg_vtcam_bind_req, ptr %req, i32 0, i32 1
  %1 = getelementptr inbounds %struct.prestera_msg_vtcam_bind_req, ptr %req, i32 0, i32 2
  %2 = getelementptr inbounds %struct.prestera_msg_vtcam_bind_req, ptr %req, i32 0, i32 3
  %3 = getelementptr inbounds %struct.prestera_msg_vtcam_bind_req, ptr %req, i32 0, i32 4
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %4, i32 8)
  store i64 0, ptr %0, align 4
  %5 = tail call i32 @llvm.bswap.i32(i32 %vtcam_id)
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %1, align 4
  %7 = tail call i16 @llvm.bswap.i16(i16 %pcl_id)
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %2, align 4
  %type3 = getelementptr inbounds %struct.prestera_acl_iface, ptr %iface, i32 0, i32 1
  %9 = ptrtoint ptr %type3 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %type3, align 4
  %conv = zext i8 %10 to i16
  %11 = shl nuw i16 %conv, 8
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %3, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp = icmp eq i8 %10, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %13 = getelementptr inbounds %struct.prestera_msg_vtcam_bind_req, ptr %req, i32 0, i32 1, i32 0, i32 1
  %14 = ptrtoint ptr %iface to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %iface, align 4
  %dev_id = getelementptr inbounds %struct.prestera_port, ptr %15, i32 0, i32 8
  %16 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dev_id, align 4
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  %19 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %13, align 4
  %hw_id = getelementptr inbounds %struct.prestera_port, ptr %15, i32 0, i32 7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %.sink.in = phi ptr [ %hw_id, %if.then ], [ %iface, %entry.if.end_crit_edge ]
  %20 = ptrtoint ptr %.sink.in to i32
  call void @__asan_load4_noabort(i32 %20)
  %.sink = load i32, ptr %.sink.in, align 4
  %21 = tail call i32 @llvm.bswap.i32(i32 %.sink)
  %22 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %resp.i) #9
  %23 = ptrtoint ptr %resp.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -1, ptr %resp.i, align 4, !annotation !24
  %24 = getelementptr inbounds %struct.prestera_msg_ret, ptr %resp.i, i32 0, i32 1
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -1, ptr %24, align 4, !annotation !24
  %26 = ptrtoint ptr %sw to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %sw, align 4
  %28 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1610940416, ptr %req, align 4
  %send_req.i.i.i = getelementptr inbounds %struct.prestera_device, ptr %27, i32 0, i32 7
  %29 = ptrtoint ptr %send_req.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %send_req.i.i.i, align 4
  %call.i.i.i = call i32 %30(ptr noundef %27, i32 noundef 0, ptr noundef nonnull %req, i32 noundef 20, ptr noundef nonnull %resp.i, i32 noundef 8, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.end.prestera_cmd.exit_crit_edge

if.end.prestera_cmd.exit_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %prestera_cmd.exit

if.end.i.i.i:                                     ; preds = %if.end
  %31 = ptrtoint ptr %resp.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %resp.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %32)
  %cmp.not.i.i.i = icmp eq i32 %32, 256
  br i1 %cmp.not.i.i.i, label %if.end6.i.i.i, label %if.end.i.i.i.prestera_cmd.exit_crit_edge

if.end.i.i.i.prestera_cmd.exit_crit_edge:         ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %prestera_cmd.exit

if.end6.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %33 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp7.not.i.i.i = icmp eq i32 %34, 0
  %..i.i.i = select i1 %cmp7.not.i.i.i, i32 0, i32 -22
  br label %prestera_cmd.exit

prestera_cmd.exit:                                ; preds = %if.end6.i.i.i, %if.end.i.i.i.prestera_cmd.exit_crit_edge, %if.end.prestera_cmd.exit_crit_edge
  %retval.0.i.i.i = phi i32 [ %call.i.i.i, %if.end.prestera_cmd.exit_crit_edge ], [ -52, %if.end.i.i.i.prestera_cmd.exit_crit_edge ], [ %..i.i.i, %if.end6.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %resp.i) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %req) #9
  ret i32 %retval.0.i.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @prestera_hw_vtcam_iface_unbind(ptr nocapture noundef readonly %sw, ptr nocapture noundef readonly %iface, i32 noundef %vtcam_id) local_unnamed_addr #0 align 64 {
entry:
  %resp.i = alloca %struct.prestera_msg_common_resp, align 4
  %req = alloca %struct.prestera_msg_vtcam_bind_req, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %req) #9
  %0 = getelementptr inbounds %struct.prestera_msg_vtcam_bind_req, ptr %req, i32 0, i32 1
  %1 = getelementptr inbounds %struct.prestera_msg_vtcam_bind_req, ptr %req, i32 0, i32 2
  %2 = getelementptr inbounds %struct.prestera_msg_vtcam_bind_req, ptr %req, i32 0, i32 3
  %3 = getelementptr inbounds %struct.prestera_msg_vtcam_bind_req, ptr %req, i32 0, i32 4
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %4, i32 8)
  store i64 0, ptr %0, align 4
  %5 = tail call i32 @llvm.bswap.i32(i32 %vtcam_id)
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %1, align 4
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 0, ptr %2, align 4
  %type2 = getelementptr inbounds %struct.prestera_acl_iface, ptr %iface, i32 0, i32 1
  %8 = ptrtoint ptr %type2 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %type2, align 4
  %conv = zext i8 %9 to i16
  %10 = shl nuw i16 %conv, 8
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %3, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp = icmp eq i8 %9, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %12 = getelementptr inbounds %struct.prestera_msg_vtcam_bind_req, ptr %req, i32 0, i32 1, i32 0, i32 1
  %13 = ptrtoint ptr %iface to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %iface, align 4
  %dev_id = getelementptr inbounds %struct.prestera_port, ptr %14, i32 0, i32 8
  %15 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dev_id, align 4
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  %18 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %12, align 4
  %hw_id = getelementptr inbounds %struct.prestera_port, ptr %14, i32 0, i32 7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %.sink.in = phi ptr [ %hw_id, %if.then ], [ %iface, %entry.if.end_crit_edge ]
  %19 = ptrtoint ptr %.sink.in to i32
  call void @__asan_load4_noabort(i32 %19)
  %.sink = load i32, ptr %.sink.in, align 4
  %20 = tail call i32 @llvm.bswap.i32(i32 %.sink)
  %21 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %resp.i) #9
  %22 = ptrtoint ptr %resp.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -1, ptr %resp.i, align 4, !annotation !24
  %23 = getelementptr inbounds %struct.prestera_msg_ret, ptr %resp.i, i32 0, i32 1
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -1, ptr %23, align 4, !annotation !24
  %25 = ptrtoint ptr %sw to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %sw, align 4
  %27 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1627717632, ptr %req, align 4
  %send_req.i.i.i = getelementptr inbounds %struct.prestera_device, ptr %26, i32 0, i32 7
  %28 = ptrtoint ptr %send_req.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %send_req.i.i.i, align 4
  %call.i.i.i = call i32 %29(ptr noundef %26, i32 noundef 0, ptr noundef nonnull %req, i32 noundef 20, ptr noundef nonnull %resp.i, i32 noundef 8, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.end.prestera_cmd.exit_crit_edge

if.end.prestera_cmd.exit_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %prestera_cmd.exit

if.end.i.i.i:                                     ; preds = %if.end
  %30 = ptrtoint ptr %resp.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %resp.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %31)
  %cmp.not.i.i.i = icmp eq i32 %31, 256
  br i1 %cmp.not.i.i.i, label %if.end6.i.i.i, label %if.end.i.i.i.prestera_cmd.exit_crit_edge

if.end.i.i.i.prestera_cmd.exit_crit_edge:         ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %prestera_cmd.exit

if.end6.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %32 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %23, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp7.not.i.i.i = icmp eq i32 %33, 0
  %..i.i.i = select i1 %cmp7.not.i.i.i, i32 0, i32 -22
  br label %prestera_cmd.exit

prestera_cmd.exit:                                ; preds = %if.end6.i.i.i, %if.end.i.i.i.prestera_cmd.exit_crit_edge, %if.end.prestera_cmd.exit_crit_edge
  %retval.0.i.i.i = phi i32 [ %call.i.i.i, %if.end.prestera_cmd.exit_crit_edge ], [ -52, %if.end.i.i.i.prestera_cmd.exit_crit_edge ], [ %..i.i.i, %if.end6.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %resp.i) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %req) #9
  ret i32 %retval.0.i.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @prestera_hw_span_get(ptr nocapture noundef readonly %port, ptr nocapture noundef writeonly %span_id) local_unnamed_addr #0 align 64 {
entry:
  %resp = alloca %struct.prestera_msg_span_resp, align 4
  %req = alloca %struct.prestera_msg_span_req, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %resp) #9
  %0 = getelementptr inbounds %struct.prestera_msg_ret, ptr %resp, i32 0, i32 1
  %1 = getelementptr inbounds %struct.prestera_msg_span_resp, ptr %resp, i32 0, i32 1
  %2 = call ptr @memset(ptr %resp, i32 255, i32 12)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %req) #9
  %3 = getelementptr inbounds %struct.prestera_msg_span_req, ptr %req, i32 0, i32 1
  %4 = getelementptr inbounds %struct.prestera_msg_span_req, ptr %req, i32 0, i32 2
  %5 = getelementptr inbounds %struct.prestera_msg_span_req, ptr %req, i32 0, i32 3
  %hw_id = getelementptr inbounds %struct.prestera_port, ptr %port, i32 0, i32 7
  %6 = ptrtoint ptr %hw_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hw_id, align 8
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %3, align 4
  %dev_id = getelementptr inbounds %struct.prestera_port, ptr %port, i32 0, i32 8
  %10 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dev_id, align 4
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %4, align 4
  %sw = getelementptr inbounds %struct.prestera_port, ptr %port, i32 0, i32 1
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %5, align 4
  %15 = ptrtoint ptr %sw to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sw, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %19 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1114112, ptr %req, align 4
  %send_req.i.i = getelementptr inbounds %struct.prestera_device, ptr %18, i32 0, i32 7
  %20 = ptrtoint ptr %send_req.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %send_req.i.i, align 4
  %call.i.i = call i32 %21(ptr noundef %18, i32 noundef 0, ptr noundef nonnull %req, i32 noundef 16, ptr noundef nonnull %resp, i32 noundef 12, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i.i:                                       ; preds = %entry
  %22 = ptrtoint ptr %resp to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %resp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %23)
  %cmp.not.i.i = icmp eq i32 %23, 256
  br i1 %cmp.not.i.i, label %if.end6.i.i, label %if.end.i.i.cleanup_crit_edge

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6.i.i:                                      ; preds = %if.end.i.i
  %24 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp7.not.i.i = icmp eq i32 %25, 0
  br i1 %cmp7.not.i.i, label %if.end, label %if.end6.i.i.cleanup_crit_edge

if.end6.i.i.cleanup_crit_edge:                    ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %1, align 4
  %28 = ptrtoint ptr %span_id to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %span_id, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.end6.i.i.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %if.end6.i.i.cleanup_crit_edge ], [ -52, %if.end.i.i.cleanup_crit_edge ], [ %call.i.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %req) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %resp) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @prestera_hw_span_bind(ptr nocapture noundef readonly %port, i8 noundef zeroext %span_id) local_unnamed_addr #0 align 64 {
entry:
  %resp.i = alloca %struct.prestera_msg_common_resp, align 4
  %req = alloca %struct.prestera_msg_span_req, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %req) #9
  %0 = getelementptr inbounds %struct.prestera_msg_span_req, ptr %req, i32 0, i32 1
  %1 = getelementptr inbounds %struct.prestera_msg_span_req, ptr %req, i32 0, i32 2
  %2 = getelementptr inbounds %struct.prestera_msg_span_req, ptr %req, i32 0, i32 3
  %3 = getelementptr inbounds %struct.prestera_msg_span_req, ptr %req, i32 0, i32 4
  %hw_id = getelementptr inbounds %struct.prestera_port, ptr %port, i32 0, i32 7
  %4 = ptrtoint ptr %hw_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hw_id, align 8
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %0, align 4
  %dev_id = getelementptr inbounds %struct.prestera_port, ptr %port, i32 0, i32 8
  %8 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dev_id, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %1, align 4
  %12 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %span_id, ptr %2, align 4
  %13 = call ptr @memset(ptr %3, i32 0, i32 3)
  %sw = getelementptr inbounds %struct.prestera_port, ptr %port, i32 0, i32 1
  %14 = ptrtoint ptr %sw to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sw, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %resp.i) #9
  %16 = ptrtoint ptr %resp.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %resp.i, align 4, !annotation !24
  %17 = getelementptr inbounds %struct.prestera_msg_ret, ptr %resp.i, i32 0, i32 1
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %17, align 4, !annotation !24
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %15, align 4
  %21 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 17891328, ptr %req, align 4
  %send_req.i.i.i = getelementptr inbounds %struct.prestera_device, ptr %20, i32 0, i32 7
  %22 = ptrtoint ptr %send_req.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %send_req.i.i.i, align 4
  %call.i.i.i = call i32 %23(ptr noundef %20, i32 noundef 0, ptr noundef nonnull %req, i32 noundef 16, ptr noundef nonnull %resp.i, i32 noundef 8, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %entry.prestera_cmd.exit_crit_edge

entry.prestera_cmd.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %prestera_cmd.exit

if.end.i.i.i:                                     ; preds = %entry
  %24 = ptrtoint ptr %resp.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %resp.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %25)
  %cmp.not.i.i.i = icmp eq i32 %25, 256
  br i1 %cmp.not.i.i.i, label %if.end6.i.i.i, label %if.end.i.i.i.prestera_cmd.exit_crit_edge

if.end.i.i.i.prestera_cmd.exit_crit_edge:         ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %prestera_cmd.exit

if.end6.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp7.not.i.i.i = icmp eq i32 %27, 0
  %..i.i.i = select i1 %cmp7.not.i.i.i, i32 0, i32 -22
  br label %prestera_cmd.exit

prestera_cmd.exit:                                ; preds = %if.end6.i.i.i, %if.end.i.i.i.prestera_cmd.exit_crit_edge, %entry.prestera_cmd.exit_crit_edge
  %retval.0.i.i.i = phi i32 [ %call.i.i.i, %entry.prestera_cmd.exit_crit_edge ], [ -52, %if.end.i.i.i.prestera_cmd.exit_crit_edge ], [ %..i.i.i, %if.end6.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %resp.i) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %req) #9
  ret i32 %retval.0.i.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @prestera_hw_span_unbind(ptr nocapture noundef readonly %port) local_unnamed_addr #0 align 64 {
entry:
  %resp.i = alloca %struct.prestera_msg_common_resp, align 4
  %req = alloca %struct.prestera_msg_span_req, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %req) #9
  %0 = getelementptr inbounds %struct.prestera_msg_span_req, ptr %req, i32 0, i32 1
  %1 = getelementptr inbounds %struct.prestera_msg_span_req, ptr %req, i32 0, i32 2
  %2 = getelementptr inbounds %struct.prestera_msg_span_req, ptr %req, i32 0, i32 3
  %hw_id = getelementptr inbounds %struct.prestera_port, ptr %port, i32 0, i32 7
  %3 = ptrtoint ptr %hw_id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %hw_id, align 8
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %0, align 4
  %dev_id = getelementptr inbounds %struct.prestera_port, ptr %port, i32 0, i32 8
  %7 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dev_id, align 4
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %1, align 4
  %sw = getelementptr inbounds %struct.prestera_port, ptr %port, i32 0, i32 1
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %2, align 4
  %12 = ptrtoint ptr %sw to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sw, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %resp.i) #9
  %14 = ptrtoint ptr %resp.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %resp.i, align 4, !annotation !24
  %15 = getelementptr inbounds %struct.prestera_msg_ret, ptr %resp.i, i32 0, i32 1
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %15, align 4, !annotation !24
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %13, align 4
  %19 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 34668544, ptr %req, align 4
  %send_req.i.i.i = getelementptr inbounds %struct.prestera_device, ptr %18, i32 0, i32 7
  %20 = ptrtoint ptr %send_req.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %send_req.i.i.i, align 4
  %call.i.i.i = call i32 %21(ptr noundef %18, i32 noundef 0, ptr noundef nonnull %req, i32 noundef 16, ptr noundef nonnull %resp.i, i32 noundef 8, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %entry.prestera_cmd.exit_crit_edge

entry.prestera_cmd.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %prestera_cmd.exit

if.end.i.i.i:                                     ; preds = %entry
  %22 = ptrtoint ptr %resp.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %resp.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %23)
  %cmp.not.i.i.i = icmp eq i32 %23, 256
  br i1 %cmp.not.i.i.i, label %if.end6.i.i.i, label %if.end.i.i.i.prestera_cmd.exit_crit_edge

if.end.i.i.i.prestera_cmd.exit_crit_edge:         ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %prestera_cmd.exit

if.end6.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp7.not.i.i.i = icmp eq i32 %25, 0
  %..i.i.i = select i1 %cmp7.not.i.i.i, i32 0, i32 -22
  br label %prestera_cmd.exit

prestera_cmd.exit:                                ; preds = %if.end6.i.i.i, %if.end.i.i.i.prestera_cmd.exit_crit_edge, %entry.prestera_cmd.exit_crit_edge
  %retval.0.i.i.i = phi i32 [ %call.i.i.i, %entry.prestera_cmd.exit_crit_edge ], [ -52, %if.end.i.i.i.prestera_cmd.exit_crit_edge ], [ %..i.i.i, %if.end6.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %resp.i) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %req) #9
  ret i32 %retval.0.i.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @prestera_hw_span_release(ptr nocapture noundef readonly %sw, i8 noundef zeroext %span_id) local_unnamed_addr #0 align 64 {
entry:
  %resp.i = alloca %struct.prestera_msg_common_resp, align 4
  %req = alloca %struct.prestera_msg_span_req, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %req) #9
  %0 = getelementptr inbounds %struct.prestera_msg_span_req, ptr %req, i32 0, i32 1
  %1 = getelementptr inbounds %struct.prestera_msg_span_req, ptr %req, i32 0, i32 2
  %2 = getelementptr inbounds %struct.prestera_msg_span_req, ptr %req, i32 0, i32 3
  %3 = getelementptr inbounds %struct.prestera_msg_span_req, ptr %req, i32 0, i32 4
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %0, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %1, align 4
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %span_id, ptr %2, align 4
  %7 = call ptr @memset(ptr %3, i32 0, i32 3)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %resp.i) #9
  %8 = ptrtoint ptr %resp.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %resp.i, align 4, !annotation !24
  %9 = getelementptr inbounds %struct.prestera_msg_ret, ptr %resp.i, i32 0, i32 1
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %9, align 4, !annotation !24
  %11 = ptrtoint ptr %sw to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sw, align 4
  %13 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 51445760, ptr %req, align 4
  %send_req.i.i.i = getelementptr inbounds %struct.prestera_device, ptr %12, i32 0, i32 7
  %14 = ptrtoint ptr %send_req.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %send_req.i.i.i, align 4
  %call.i.i.i = call i32 %15(ptr noundef %12, i32 noundef 0, ptr noundef nonnull %req, i32 noundef 16, ptr noundef nonnull %resp.i, i32 noundef 8, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %entry.prestera_cmd.exit_crit_edge

entry.prestera_cmd.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %prestera_cmd.exit

if.end.i.i.i:                                     ; preds = %entry
  %16 = ptrtoint ptr %resp.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %resp.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %17)
  %cmp.not.i.i.i = icmp eq i32 %17, 256
  br i1 %cmp.not.i.i.i, label %if.end6.i.i.i, label %if.end.i.i.i.prestera_cmd.exit_crit_edge

if.end.i.i.i.prestera_cmd.exit_crit_edge:         ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %prestera_cmd.exit

if.end6.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp7.not.i.i.i = icmp eq i32 %19, 0
  %..i.i.i = select i1 %cmp7.not.i.i.i, i32 0, i32 -22
  br label %prestera_cmd.exit

prestera_cmd.exit:                                ; preds = %if.end6.i.i.i, %if.end.i.i.i.prestera_cmd.exit_crit_edge, %entry.prestera_cmd.exit_crit_edge
  %retval.0.i.i.i = phi i32 [ %call.i.i.i, %entry.prestera_cmd.exit_crit_edge ], [ -52, %if.end.i.i.i.prestera_cmd.exit_crit_edge ], [ %..i.i.i, %if.end6.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %resp.i) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %req) #9
  ret i32 %retval.0.i.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @prestera_hw_port_type_get(ptr nocapture noundef readonly %port, ptr nocapture noundef writeonly %type) local_unnamed_addr #0 align 64 {
entry:
  %req = alloca %struct.prestera_msg_port_attr_req, align 8
  %resp = alloca %struct.prestera_msg_port_attr_resp, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %req) #9
  %0 = getelementptr inbounds i8, ptr %req, i32 16
  %1 = call ptr @memset(ptr %0, i32 0, i32 128)
  %attr = getelementptr inbounds %struct.prestera_msg_port_attr_req, ptr %req, i32 0, i32 1
  %2 = ptrtoint ptr %attr to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 218103808, ptr %attr, align 4
  %port1 = getelementptr inbounds %struct.prestera_msg_port_attr_req, ptr %req, i32 0, i32 2
  %hw_id = getelementptr inbounds %struct.prestera_port, ptr %port, i32 0, i32 7
  %3 = ptrtoint ptr %hw_id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %hw_id, align 8
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %6 = ptrtoint ptr %port1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %port1, align 8
  %dev = getelementptr inbounds %struct.prestera_msg_port_attr_req, ptr %req, i32 0, i32 3
  %dev_id = getelementptr inbounds %struct.prestera_port, ptr %port, i32 0, i32 8
  %7 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dev_id, align 4
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %dev, align 4
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %resp) #9
  %11 = call ptr @memset(ptr %resp, i32 255, i32 136)
  %sw = getelementptr inbounds %struct.prestera_port, ptr %port, i32 0, i32 1
  %12 = ptrtoint ptr %sw to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sw, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %16 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 16842752, ptr %req, align 8
  %send_req.i.i = getelementptr inbounds %struct.prestera_device, ptr %15, i32 0, i32 7
  %17 = ptrtoint ptr %send_req.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %send_req.i.i, align 4
  %call.i.i = call i32 %18(ptr noundef %15, i32 noundef 0, ptr noundef nonnull %req, i32 noundef 144, ptr noundef nonnull %resp, i32 noundef 136, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i.i:                                       ; preds = %entry
  %19 = ptrtoint ptr %resp to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %resp, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %20)
  %cmp.not.i.i = icmp eq i32 %20, 256
  br i1 %cmp.not.i.i, label %if.end6.i.i, label %if.end.i.i.cleanup_crit_edge

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6.i.i:                                      ; preds = %if.end.i.i
  %status.i.i = getelementptr inbounds %struct.prestera_msg_ret, ptr %resp, i32 0, i32 1
  %21 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %status.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp7.not.i.i = icmp eq i32 %22, 0
  br i1 %cmp7.not.i.i, label %if.end, label %if.end6.i.i.cleanup_crit_edge

if.end6.i.i.cleanup_crit_edge:                    ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %param = getelementptr inbounds %struct.prestera_msg_port_attr_resp, ptr %resp, i32 0, i32 1
  %23 = ptrtoint ptr %param to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %param, align 8
  %25 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %type, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.end6.i.i.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %if.end6.i.i.cleanup_crit_edge ], [ -52, %if.end.i.i.cleanup_crit_edge ], [ %call.i.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %resp) #9
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %req) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @prestera_hw_port_speed_get(ptr nocapture noundef readonly %port, ptr nocapture noundef writeonly %speed) local_unnamed_addr #0 align 64 {
entry:
  %req = alloca %struct.prestera_msg_port_attr_req, align 8
  %resp = alloca %struct.prestera_msg_port_attr_resp, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %req) #9
  %0 = getelementptr inbounds i8, ptr %req, i32 16
  %1 = call ptr @memset(ptr %0, i32 0, i32 128)
  %attr = getelementptr inbounds %struct.prestera_msg_port_attr_req, ptr %req, i32 0, i32 1
  %2 = ptrtoint ptr %attr to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 83886080, ptr %attr, align 4
  %port1 = getelementptr inbounds %struct.prestera_msg_port_attr_req, ptr %req, i32 0, i32 2
  %hw_id = getelementptr inbounds %struct.prestera_port, ptr %port, i32 0, i32 7
  %3 = ptrtoint ptr %hw_id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %hw_id, align 8
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %6 = ptrtoint ptr %port1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %port1, align 8
  %dev = getelementptr inbounds %struct.prestera_msg_port_attr_req, ptr %req, i32 0, i32 3
  %dev_id = getelementptr inbounds %struct.prestera_port, ptr %port, i32 0, i32 8
  %7 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dev_id, align 4
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %dev, align 4
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %resp) #9
  %11 = call ptr @memset(ptr %resp, i32 255, i32 136)
  %sw = getelementptr inbounds %struct.prestera_port, ptr %port, i32 0, i32 1
  %12 = ptrtoint ptr %sw to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sw, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %16 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 16842752, ptr %req, align 8
  %send_req.i.i = getelementptr inbounds %struct.prestera_device, ptr %15, i32 0, i32 7
  %17 = ptrtoint ptr %send_req.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %send_req.i.i, align 4
  %call.i.i = call i32 %18(ptr noundef %15, i32 noundef 0, ptr noundef nonnull %req, i32 noundef 144, ptr noundef nonnull %resp, i32 noundef 136, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i.i:                                       ; preds = %entry
  %19 = ptrtoint ptr %resp to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %resp, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %20)
  %cmp.not.i.i = icmp eq i32 %20, 256
  br i1 %cmp.not.i.i, label %if.end6.i.i, label %if.end.i.i.cleanup_crit_edge

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6.i.i:                                      ; preds = %if.end.i.i
  %status.i.i = getelementptr inbounds %struct.prestera_msg_ret, ptr %resp, i32 0, i32 1
  %21 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %status.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp7.not.i.i = icmp eq i32 %22, 0
  br i1 %cmp7.not.i.i, label %if.end, label %if.end6.i.i.cleanup_crit_edge

if.end6.i.i.cleanup_crit_edge:                    ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %param = getelementptr inbounds %struct.prestera_msg_port_attr_resp, ptr %resp, i32 0, i32 1
  %23 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %param, align 8
  %25 = call i32 @llvm.bswap.i32(i32 %24)
  %26 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %speed, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.end6.i.i.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %if.end6.i.i.cleanup_crit_edge ], [ -52, %if.end.i.i.cleanup_crit_edge ], [ %call.i.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %resp) #9
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %req) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @prestera_hw_port_autoneg_restart(ptr nocapture noundef readonly %port) local_unnamed_addr #0 align 64 {
entry:
  %resp.i = alloca %struct.prestera_msg_common_resp, align 4
  %req = alloca %struct.prestera_msg_port_attr_req, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %req) #9
  %0 = getelementptr inbounds i8, ptr %req, i32 16
  %1 = call ptr @memset(ptr %0, i32 0, i32 128)
  %attr = getelementptr inbounds %struct.prestera_msg_port_attr_req, ptr %req, i32 0, i32 1
  %2 = ptrtoint ptr %attr to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 318767104, ptr %attr, align 4
  %port1 = getelementptr inbounds %struct.prestera_msg_port_attr_req, ptr %req, i32 0, i32 2
  %hw_id = getelementptr inbounds %struct.prestera_port, ptr %port, i32 0, i32 7
  %3 = ptrtoint ptr %hw_id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %hw_id, align 8
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %6 = ptrtoint ptr %port1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %port1, align 8
  %dev = getelementptr inbounds %struct.prestera_msg_port_attr_req, ptr %req, i32 0, i32 3
  %dev_id = getelementptr inbounds %struct.prestera_port, ptr %port, i32 0, i32 8
  %7 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dev_id, align 4
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %dev, align 4
  %sw = getelementptr inbounds %struct.prestera_port, ptr %port, i32 0, i32 1
  %11 = ptrtoint ptr %sw to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sw, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %resp.i) #9
  %13 = ptrtoint ptr %resp.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %resp.i, align 4, !annotation !24
  %14 = getelementptr inbounds %struct.prestera_msg_ret, ptr %resp.i, i32 0, i32 1
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %14, align 4, !annotation !24
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %12, align 4
  %18 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 65536, ptr %req, align 8
  %send_req.i.i.i = getelementptr inbounds %struct.prestera_device, ptr %17, i32 0, i32 7
  %19 = ptrtoint ptr %send_req.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %send_req.i.i.i, align 4
  %call.i.i.i = call i32 %20(ptr noundef %17, i32 noundef 0, ptr noundef nonnull %req, i32 noundef 144, ptr noundef nonnull %resp.i, i32 noundef 8, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %entry.prestera_cmd.exit_crit_edge

entry.prestera_cmd.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %prestera_cmd.exit

if.end.i.i.i:                                     ; preds = %entry
  %21 = ptrtoint ptr %resp.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %resp.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %22)
  %cmp.not.i.i.i = icmp eq i32 %22, 256
  br i1 %cmp.not.i.i.i, label %if.end6.i.i.i, label %if.end.i.i.i.prestera_cmd.exit_crit_edge

if.end.i.i.i.prestera_cmd.exit_crit_edge:         ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %prestera_cmd.exit

if.end6.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp7.not.i.i.i = icmp eq i32 %24, 0
  %..i.i.i = select i1 %cmp7.not.i.i.i, i32 0, i32 -22
  br label %prestera_cmd.exit

prestera_cmd.exit:                                ; preds = %if.end6.i.i.i, %if.end.i.i.i.prestera_cmd.exit_crit_edge, %entry.prestera_cmd.exit_crit_edge
  %retval.0.i.i.i = phi i32 [ %call.i.i.i, %entry.prestera_cmd.exit_crit_edge ], [ -52, %if.end.i.i.i.prestera_cmd.exit_crit_edge ], [ %..i.i.i, %if.end6.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %resp.i) #9
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %req) #9
  ret i32 %retval.0.i.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @prestera_hw_port_stats_get(ptr nocapture noundef readonly %port, ptr noundef writeonly %st) local_unnamed_addr #0 align 64 {
entry:
  %req = alloca %struct.prestera_msg_port_attr_req, align 8
  %resp = alloca %struct.prestera_msg_port_stats_resp, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %req) #9
  %0 = getelementptr inbounds i8, ptr %req, i32 16
  %1 = call ptr @memset(ptr %0, i32 0, i32 128)
  %attr = getelementptr inbounds %struct.prestera_msg_port_attr_req, ptr %req, i32 0, i32 1
  %2 = ptrtoint ptr %attr to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 285212672, ptr %attr, align 4
  %port1 = getelementptr inbounds %struct.prestera_msg_port_attr_req, ptr %req, i32 0, i32 2
  %hw_id = getelementptr inbounds %struct.prestera_port, ptr %port, i32 0, i32 7
  %3 = ptrtoint ptr %hw_id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %hw_id, align 8
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %6 = ptrtoint ptr %port1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %port1, align 8
  %dev = getelementptr inbounds %struct.prestera_msg_port_attr_req, ptr %req, i32 0, i32 3
  %dev_id = getelementptr inbounds %struct.prestera_port, ptr %port, i32 0, i32 8
  %7 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dev_id, align 4
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %dev, align 4
  call void @llvm.lifetime.start.p0(i64 248, ptr nonnull %resp) #9
  %11 = call ptr @memset(ptr %resp, i32 255, i32 248)
  %sw = getelementptr inbounds %struct.prestera_port, ptr %port, i32 0, i32 1
  %12 = ptrtoint ptr %sw to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sw, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %16 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 16842752, ptr %req, align 8
  %send_req.i.i = getelementptr inbounds %struct.prestera_device, ptr %15, i32 0, i32 7
  %17 = ptrtoint ptr %send_req.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %send_req.i.i, align 4
  %call.i.i = call i32 %18(ptr noundef %15, i32 noundef 0, ptr noundef nonnull %req, i32 noundef 144, ptr noundef nonnull %resp, i32 noundef 248, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i.i:                                       ; preds = %entry
  %19 = ptrtoint ptr %resp to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %resp, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %20)
  %cmp.not.i.i = icmp eq i32 %20, 256
  br i1 %cmp.not.i.i, label %if.end6.i.i, label %if.end.i.i.cleanup_crit_edge

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6.i.i:                                      ; preds = %if.end.i.i
  %status.i.i = getelementptr inbounds %struct.prestera_msg_ret, ptr %resp, i32 0, i32 1
  %21 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %status.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp7.not.i.i = icmp eq i32 %22, 0
  br i1 %cmp7.not.i.i, label %if.end, label %if.end6.i.i.cleanup_crit_edge

if.end6.i.i.cleanup_crit_edge:                    ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %stats = getelementptr inbounds %struct.prestera_msg_port_stats_resp, ptr %resp, i32 0, i32 1
  %23 = ptrtoint ptr %stats to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %stats, align 8
  %25 = call i64 @llvm.bswap.i64(i64 %24)
  %26 = ptrtoint ptr %st to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %25, ptr %st, align 8
  %arrayidx2 = getelementptr inbounds %struct.prestera_msg_port_stats_resp, ptr %resp, i32 0, i32 1, i32 1
  %27 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %arrayidx2, align 8
  %29 = call i64 @llvm.bswap.i64(i64 %28)
  %bad_octets_received = getelementptr inbounds %struct.prestera_port_stats, ptr %st, i32 0, i32 1
  %30 = ptrtoint ptr %bad_octets_received to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %29, ptr %bad_octets_received, align 8
  %arrayidx3 = getelementptr inbounds %struct.prestera_msg_port_stats_resp, ptr %resp, i32 0, i32 1, i32 2
  %31 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %arrayidx3, align 8
  %33 = call i64 @llvm.bswap.i64(i64 %32)
  %mac_trans_error = getelementptr inbounds %struct.prestera_port_stats, ptr %st, i32 0, i32 2
  %34 = ptrtoint ptr %mac_trans_error to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %33, ptr %mac_trans_error, align 8
  %arrayidx4 = getelementptr inbounds %struct.prestera_msg_port_stats_resp, ptr %resp, i32 0, i32 1, i32 3
  %35 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %arrayidx4, align 8
  %37 = call i64 @llvm.bswap.i64(i64 %36)
  %broadcast_frames_received = getelementptr inbounds %struct.prestera_port_stats, ptr %st, i32 0, i32 3
  %38 = ptrtoint ptr %broadcast_frames_received to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %37, ptr %broadcast_frames_received, align 8
  %arrayidx5 = getelementptr inbounds %struct.prestera_msg_port_stats_resp, ptr %resp, i32 0, i32 1, i32 4
  %39 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %arrayidx5, align 8
  %41 = call i64 @llvm.bswap.i64(i64 %40)
  %multicast_frames_received = getelementptr inbounds %struct.prestera_port_stats, ptr %st, i32 0, i32 4
  %42 = ptrtoint ptr %multicast_frames_received to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %41, ptr %multicast_frames_received, align 8
  %arrayidx6 = getelementptr inbounds %struct.prestera_msg_port_stats_resp, ptr %resp, i32 0, i32 1, i32 5
  %43 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %arrayidx6, align 8
  %45 = call i64 @llvm.bswap.i64(i64 %44)
  %frames_64_octets = getelementptr inbounds %struct.prestera_port_stats, ptr %st, i32 0, i32 5
  %46 = ptrtoint ptr %frames_64_octets to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 %45, ptr %frames_64_octets, align 8
  %arrayidx7 = getelementptr inbounds %struct.prestera_msg_port_stats_resp, ptr %resp, i32 0, i32 1, i32 6
  %47 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %arrayidx7, align 8
  %49 = call i64 @llvm.bswap.i64(i64 %48)
  %frames_65_to_127_octets = getelementptr inbounds %struct.prestera_port_stats, ptr %st, i32 0, i32 6
  %50 = ptrtoint ptr %frames_65_to_127_octets to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 %49, ptr %frames_65_to_127_octets, align 8
  %arrayidx8 = getelementptr inbounds %struct.prestera_msg_port_stats_resp, ptr %resp, i32 0, i32 1, i32 7
  %51 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %arrayidx8, align 8
  %53 = call i64 @llvm.bswap.i64(i64 %52)
  %frames_128_to_255_octets = getelementptr inbounds %struct.prestera_port_stats, ptr %st, i32 0, i32 7
  %54 = ptrtoint ptr %frames_128_to_255_octets to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 %53, ptr %frames_128_to_255_octets, align 8
  %arrayidx9 = getelementptr inbounds %struct.prestera_msg_port_stats_resp, ptr %resp, i32 0, i32 1, i32 8
  %55 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %arrayidx9, align 8
  %57 = call i64 @llvm.bswap.i64(i64 %56)
  %frames_256_to_511_octets = getelementptr inbounds %struct.prestera_port_stats, ptr %st, i32 0, i32 8
  %58 = ptrtoint ptr %frames_256_to_511_octets to i32
  call void @__asan_store8_noabort(i32 %58)
  store i64 %57, ptr %frames_256_to_511_octets, align 8
  %arrayidx10 = getelementptr inbounds %struct.prestera_msg_port_stats_resp, ptr %resp, i32 0, i32 1, i32 9
  %59 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %arrayidx10, align 8
  %61 = call i64 @llvm.bswap.i64(i64 %60)
  %frames_512_to_1023_octets = getelementptr inbounds %struct.prestera_port_stats, ptr %st, i32 0, i32 9
  %62 = ptrtoint ptr %frames_512_to_1023_octets to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 %61, ptr %frames_512_to_1023_octets, align 8
  %arrayidx11 = getelementptr inbounds %struct.prestera_msg_port_stats_resp, ptr %resp, i32 0, i32 1, i32 10
  %63 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %arrayidx11, align 8
  %65 = call i64 @llvm.bswap.i64(i64 %64)
  %frames_1024_to_max_octets = getelementptr inbounds %struct.prestera_port_stats, ptr %st, i32 0, i32 10
  %66 = ptrtoint ptr %frames_1024_to_max_octets to i32
  call void @__asan_store8_noabort(i32 %66)
  store i64 %65, ptr %frames_1024_to_max_octets, align 8
  %arrayidx12 = getelementptr inbounds %struct.prestera_msg_port_stats_resp, ptr %resp, i32 0, i32 1, i32 11
  %67 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %arrayidx12, align 8
  %69 = call i64 @llvm.bswap.i64(i64 %68)
  %excessive_collision = getelementptr inbounds %struct.prestera_port_stats, ptr %st, i32 0, i32 11
  %70 = ptrtoint ptr %excessive_collision to i32
  call void @__asan_store8_noabort(i32 %70)
  store i64 %69, ptr %excessive_collision, align 8
  %arrayidx13 = getelementptr inbounds %struct.prestera_msg_port_stats_resp, ptr %resp, i32 0, i32 1, i32 12
  %71 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %arrayidx13, align 8
  %73 = call i64 @llvm.bswap.i64(i64 %72)
  %multicast_frames_sent = getelementptr inbounds %struct.prestera_port_stats, ptr %st, i32 0, i32 12
  %74 = ptrtoint ptr %multicast_frames_sent to i32
  call void @__asan_store8_noabort(i32 %74)
  store i64 %73, ptr %multicast_frames_sent, align 8
  %arrayidx14 = getelementptr inbounds %struct.prestera_msg_port_stats_resp, ptr %resp, i32 0, i32 1, i32 13
  %75 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %arrayidx14, align 8
  %77 = call i64 @llvm.bswap.i64(i64 %76)
  %broadcast_frames_sent = getelementptr inbounds %struct.prestera_port_stats, ptr %st, i32 0, i32 13
  %78 = ptrtoint ptr %broadcast_frames_sent to i32
  call void @__asan_store8_noabort(i32 %78)
  store i64 %77, ptr %broadcast_frames_sent, align 8
  %arrayidx15 = getelementptr inbounds %struct.prestera_msg_port_stats_resp, ptr %resp, i32 0, i32 1, i32 14
  %79 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load8_noabort(i32 %79)
  %80 = load i64, ptr %arrayidx15, align 8
  %81 = call i64 @llvm.bswap.i64(i64 %80)
  %fc_sent = getelementptr inbounds %struct.prestera_port_stats, ptr %st, i32 0, i32 14
  %82 = ptrtoint ptr %fc_sent to i32
  call void @__asan_store8_noabort(i32 %82)
  store i64 %81, ptr %fc_sent, align 8
  %arrayidx16 = getelementptr inbounds %struct.prestera_msg_port_stats_resp, ptr %resp, i32 0, i32 1, i32 15
  %83 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load8_noabort(i32 %83)
  %84 = load i64, ptr %arrayidx16, align 8
  %85 = call i64 @llvm.bswap.i64(i64 %84)
  %fc_received = getelementptr inbounds %struct.prestera_port_stats, ptr %st, i32 0, i32 15
  %86 = ptrtoint ptr %fc_received to i32
  call void @__asan_store8_noabort(i32 %86)
  store i64 %85, ptr %fc_received, align 8
  %arrayidx17 = getelementptr inbounds %struct.prestera_msg_port_stats_resp, ptr %resp, i32 0, i32 1, i32 16
  %87 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load8_noabort(i32 %87)
  %88 = load i64, ptr %arrayidx17, align 8
  %89 = call i64 @llvm.bswap.i64(i64 %88)
  %buffer_overrun = getelementptr inbounds %struct.prestera_port_stats, ptr %st, i32 0, i32 16
  %90 = ptrtoint ptr %buffer_overrun to i32
  call void @__asan_store8_noabort(i32 %90)
  store i64 %89, ptr %buffer_overrun, align 8
  %arrayidx18 = getelementptr inbounds %struct.prestera_msg_port_stats_resp, ptr %resp, i32 0, i32 1, i32 17
  %91 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load8_noabort(i32 %91)
  %92 = load i64, ptr %arrayidx18, align 8
  %93 = call i64 @llvm.bswap.i64(i64 %92)
  %undersize = getelementptr inbounds %struct.prestera_port_stats, ptr %st, i32 0, i32 17
  %94 = ptrtoint ptr %undersize to i32
  call void @__asan_store8_noabort(i32 %94)
  store i64 %93, ptr %undersize, align 8
  %arrayidx19 = getelementptr inbounds %struct.prestera_msg_port_stats_resp, ptr %resp, i32 0, i32 1, i32 18
  %95 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load8_noabort(i32 %95)
  %96 = load i64, ptr %arrayidx19, align 8
  %97 = call i64 @llvm.bswap.i64(i64 %96)
  %fragments = getelementptr inbounds %struct.prestera_port_stats, ptr %st, i32 0, i32 18
  %98 = ptrtoint ptr %fragments to i32
  call void @__asan_store8_noabort(i32 %98)
  store i64 %97, ptr %fragments, align 8
  %arrayidx20 = getelementptr inbounds %struct.prestera_msg_port_stats_resp, ptr %resp, i32 0, i32 1, i32 19
  %99 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load8_noabort(i32 %99)
  %100 = load i64, ptr %arrayidx20, align 8
  %101 = call i64 @llvm.bswap.i64(i64 %100)
  %oversize = getelementptr inbounds %struct.prestera_port_stats, ptr %st, i32 0, i32 19
  %102 = ptrtoint ptr %oversize to i32
  call void @__asan_store8_noabort(i32 %102)
  store i64 %101, ptr %oversize, align 8
  %arrayidx21 = getelementptr inbounds %struct.prestera_msg_port_stats_resp, ptr %resp, i32 0, i32 1, i32 20
  %103 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load8_noabort(i32 %103)
  %104 = load i64, ptr %arrayidx21, align 8
  %105 = call i64 @llvm.bswap.i64(i64 %104)
  %jabber = getelementptr inbounds %struct.prestera_port_stats, ptr %st, i32 0, i32 20
  %106 = ptrtoint ptr %jabber to i32
  call void @__asan_store8_noabort(i32 %106)
  store i64 %105, ptr %jabber, align 8
  %arrayidx22 = getelementptr inbounds %struct.prestera_msg_port_stats_resp, ptr %resp, i32 0, i32 1, i32 21
  %107 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load8_noabort(i32 %107)
  %108 = load i64, ptr %arrayidx22, align 8
  %109 = call i64 @llvm.bswap.i64(i64 %108)
  %rx_error_frame_received = getelementptr inbounds %struct.prestera_port_stats, ptr %st, i32 0, i32 21
  %110 = ptrtoint ptr %rx_error_frame_received to i32
  call void @__asan_store8_noabort(i32 %110)
  store i64 %109, ptr %rx_error_frame_received, align 8
  %arrayidx23 = getelementptr inbounds %struct.prestera_msg_port_stats_resp, ptr %resp, i32 0, i32 1, i32 22
  %111 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load8_noabort(i32 %111)
  %112 = load i64, ptr %arrayidx23, align 8
  %113 = call i64 @llvm.bswap.i64(i64 %112)
  %bad_crc = getelementptr inbounds %struct.prestera_port_stats, ptr %st, i32 0, i32 22
  %114 = ptrtoint ptr %bad_crc to i32
  call void @__asan_store8_noabort(i32 %114)
  store i64 %113, ptr %bad_crc, align 8
  %arrayidx24 = getelementptr inbounds %struct.prestera_msg_port_stats_resp, ptr %resp, i32 0, i32 1, i32 23
  %115 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load8_noabort(i32 %115)
  %116 = load i64, ptr %arrayidx24, align 8
  %117 = call i64 @llvm.bswap.i64(i64 %116)
  %collisions = getelementptr inbounds %struct.prestera_port_stats, ptr %st, i32 0, i32 23
  %118 = ptrtoint ptr %collisions to i32
  call void @__asan_store8_noabort(i32 %118)
  store i64 %117, ptr %collisions, align 8
  %arrayidx25 = getelementptr inbounds %struct.prestera_msg_port_stats_resp, ptr %resp, i32 0, i32 1, i32 24
  %119 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load8_noabort(i32 %119)
  %120 = load i64, ptr %arrayidx25, align 8
  %121 = call i64 @llvm.bswap.i64(i64 %120)
  %late_collision = getelementptr inbounds %struct.prestera_port_stats, ptr %st, i32 0, i32 24
  %122 = ptrtoint ptr %late_collision to i32
  call void @__asan_store8_noabort(i32 %122)
  store i64 %121, ptr %late_collision, align 8
  %arrayidx26 = getelementptr inbounds %struct.prestera_msg_port_stats_resp, ptr %resp, i32 0, i32 1, i32 25
  %123 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load8_noabort(i32 %123)
  %124 = load i64, ptr %arrayidx26, align 8
  %125 = call i64 @llvm.bswap.i64(i64 %124)
  %unicast_frames_received = getelementptr inbounds %struct.prestera_port_stats, ptr %st, i32 0, i32 25
  %126 = ptrtoint ptr %unicast_frames_received to i32
  call void @__asan_store8_noabort(i32 %126)
  store i64 %125, ptr %unicast_frames_received, align 8
  %arrayidx27 = getelementptr inbounds %struct.prestera_msg_port_stats_resp, ptr %resp, i32 0, i32 1, i32 26
  %127 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load8_noabort(i32 %127)
  %128 = load i64, ptr %arrayidx27, align 8
  %129 = call i64 @llvm.bswap.i64(i64 %128)
  %unicast_frames_sent = getelementptr inbounds %struct.prestera_port_stats, ptr %st, i32 0, i32 26
  %130 = ptrtoint ptr %unicast_frames_sent to i32
  call void @__asan_store8_noabort(i32 %130)
  store i64 %129, ptr %unicast_frames_sent, align 8
  %arrayidx28 = getelementptr inbounds %struct.prestera_msg_port_stats_resp, ptr %resp, i32 0, i32 1, i32 27
  %131 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load8_noabort(i32 %131)
  %132 = load i64, ptr %arrayidx28, align 8
  %133 = call i64 @llvm.bswap.i64(i64 %132)
  %sent_multiple = getelementptr inbounds %struct.prestera_port_stats, ptr %st, i32 0, i32 27
  %134 = ptrtoint ptr %sent_multiple to i32
  call void @__asan_store8_noabort(i32 %134)
  store i64 %133, ptr %sent_multiple, align 8
  %arrayidx29 = getelementptr inbounds %struct.prestera_msg_port_stats_resp, ptr %resp, i32 0, i32 1, i32 28
  %135 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load8_noabort(i32 %135)
  %136 = load i64, ptr %arrayidx29, align 8
  %137 = call i64 @llvm.bswap.i64(i64 %136)
  %sent_deferred = getelementptr inbounds %struct.prestera_port_stats, ptr %st, i32 0, i32 28
  %138 = ptrtoint ptr %sent_deferred to i32
  call void @__asan_store8_noabort(i32 %138)
  store i64 %137, ptr %sent_deferred, align 8
  %arrayidx30 = getelementptr inbounds %struct.prestera_msg_port_stats_resp, ptr %resp, i32 0, i32 1, i32 29
  %139 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load8_noabort(i32 %139)
  %140 = load i64, ptr %arrayidx30, align 8
  %141 = call i64 @llvm.bswap.i64(i64 %140)
  %good_octets_sent = getelementptr inbounds %struct.prestera_port_stats, ptr %st, i32 0, i32 29
  %142 = ptrtoint ptr %good_octets_sent to i32
  call void @__asan_store8_noabort(i32 %142)
  store i64 %141, ptr %good_octets_sent, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.end6.i.i.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %if.end6.i.i.cleanup_crit_edge ], [ -52, %if.end.i.i.cleanup_crit_edge ], [ %call.i.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 248, ptr nonnull %resp) #9
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %req) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @prestera_hw_port_learning_set(ptr nocapture noundef readonly %port, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  %resp.i = alloca %struct.prestera_msg_common_resp, align 4
  %req = alloca %struct.prestera_msg_port_attr_req, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %enable to i8
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %req) #9
  %0 = getelementptr inbounds i8, ptr %req, i32 16
  %1 = call ptr @memset(ptr %0, i32 0, i32 128)
  %attr = getelementptr inbounds %struct.prestera_msg_port_attr_req, ptr %req, i32 0, i32 1
  %2 = ptrtoint ptr %attr to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 117440512, ptr %attr, align 4
  %port1 = getelementptr inbounds %struct.prestera_msg_port_attr_req, ptr %req, i32 0, i32 2
  %hw_id = getelementptr inbounds %struct.prestera_port, ptr %port, i32 0, i32 7
  %3 = ptrtoint ptr %hw_id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %hw_id, align 8
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %6 = ptrtoint ptr %port1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %port1, align 8
  %dev = getelementptr inbounds %struct.prestera_msg_port_attr_req, ptr %req, i32 0, i32 3
  %dev_id = getelementptr inbounds %struct.prestera_port, ptr %port, i32 0, i32 8
  %7 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dev_id, align 4
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %dev, align 4
  %param = getelementptr inbounds %struct.prestera_msg_port_attr_req, ptr %req, i32 0, i32 4
  %11 = ptrtoint ptr %param to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %frombool, ptr %param, align 8
  %sw = getelementptr inbounds %struct.prestera_port, ptr %port, i32 0, i32 1
  %12 = ptrtoint ptr %sw to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sw, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %resp.i) #9
  %14 = ptrtoint ptr %resp.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %resp.i, align 4, !annotation !24
  %15 = getelementptr inbounds %struct.prestera_msg_ret, ptr %resp.i, i32 0, i32 1
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %15, align 4, !annotation !24
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %13, align 4
  %19 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 65536, ptr %req, align 8
  %send_req.i.i.i = getelementptr inbounds %struct.prestera_device, ptr %18, i32 0, i32 7
  %20 = ptrtoint ptr %send_req.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %send_req.i.i.i, align 4
  %call.i.i.i = call i32 %21(ptr noundef %18, i32 noundef 0, ptr noundef nonnull %req, i32 noundef 144, ptr noundef nonnull %resp.i, i32 noundef 8, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %entry.prestera_cmd.exit_crit_edge

entry.prestera_cmd.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %prestera_cmd.exit

if.end.i.i.i:                                     ; preds = %entry
  %22 = ptrtoint ptr %resp.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %resp.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %23)
  %cmp.not.i.i.i = icmp eq i32 %23, 256
  br i1 %cmp.not.i.i.i, label %if.end6.i.i.i, label %if.end.i.i.i.prestera_cmd.exit_crit_edge

if.end.i.i.i.prestera_cmd.exit_crit_edge:         ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %prestera_cmd.exit

if.end6.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp7.not.i.i.i = icmp eq i32 %25, 0
  %..i.i.i = select i1 %cmp7.not.i.i.i, i32 0, i32 -22
  br label %prestera_cmd.exit

prestera_cmd.exit:                                ; preds = %if.end6.i.i.i, %if.end.i.i.i.prestera_cmd.exit_crit_edge, %entry.prestera_cmd.exit_crit_edge
  %retval.0.i.i.i = phi i32 [ %call.i.i.i, %entry.prestera_cmd.exit_crit_edge ], [ -52, %if.end.i.i.i.prestera_cmd.exit_crit_edge ], [ %..i.i.i, %if.end6.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %resp.i) #9
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %req) #9
  ret i32 %retval.0.i.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @prestera_hw_port_flood_set(ptr nocapture noundef readonly %port, i32 noundef %mask, i32 noundef %val) local_unnamed_addr #0 align 64 {
entry:
  %resp.i.i103 = alloca %struct.prestera_msg_common_resp, align 4
  %req.i104 = alloca %struct.prestera_msg_port_attr_req, align 8
  %resp.i.i83 = alloca %struct.prestera_msg_common_resp, align 4
  %req.i84 = alloca %struct.prestera_msg_port_attr_req, align 8
  %resp.i.i63 = alloca %struct.prestera_msg_common_resp, align 4
  %req.i64 = alloca %struct.prestera_msg_port_attr_req, align 8
  %resp.i.i44 = alloca %struct.prestera_msg_common_resp, align 4
  %req.i45 = alloca %struct.prestera_msg_port_attr_req, align 8
  %resp.i.i = alloca %struct.prestera_msg_common_resp, align 4
  %req.i = alloca %struct.prestera_msg_port_attr_req, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sw = getelementptr inbounds %struct.prestera_port, ptr %port, i32 0, i32 1
  %0 = ptrtoint ptr %sw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sw, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %fw_rev = getelementptr inbounds %struct.prestera_device, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %fw_rev to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %fw_rev, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %5)
  %cmp = icmp ult i16 %5, 3
  %and = and i32 %mask, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %cmp, label %if.then, label %if.end5

if.then:                                          ; preds = %entry
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %if.then
  %6 = trunc i32 %val to i8
  %7 = lshr i8 %6, 6
  %8 = and i8 %7, 1
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %req.i) #9
  %9 = getelementptr inbounds i8, ptr %req.i, i32 16
  %10 = call ptr @memset(ptr %9, i32 0, i32 128)
  %attr.i = getelementptr inbounds %struct.prestera_msg_port_attr_req, ptr %req.i, i32 0, i32 1
  %11 = ptrtoint ptr %attr.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 134217728, ptr %attr.i, align 4
  %port1.i = getelementptr inbounds %struct.prestera_msg_port_attr_req, ptr %req.i, i32 0, i32 2
  %hw_id.i = getelementptr inbounds %struct.prestera_port, ptr %port, i32 0, i32 7
  %12 = ptrtoint ptr %hw_id.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %hw_id.i, align 8
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #9
  %15 = ptrtoint ptr %port1.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %port1.i, align 8
  %dev.i = getelementptr inbounds %struct.prestera_msg_port_attr_req, ptr %req.i, i32 0, i32 3
  %dev_id.i = getelementptr inbounds %struct.prestera_port, ptr %port, i32 0, i32 8
  %16 = ptrtoint ptr %dev_id.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dev_id.i, align 4
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #9
  %19 = ptrtoint ptr %dev.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %dev.i, align 4
  %20 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %8, ptr %9, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %resp.i.i) #9
  %21 = ptrtoint ptr %resp.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %resp.i.i, align 4, !annotation !24
  %22 = getelementptr inbounds %struct.prestera_msg_ret, ptr %resp.i.i, i32 0, i32 1
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -1, ptr %22, align 4, !annotation !24
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 4
  %26 = ptrtoint ptr %req.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 65536, ptr %req.i, align 8
  %send_req.i.i.i.i = getelementptr inbounds %struct.prestera_device, ptr %25, i32 0, i32 7
  %27 = ptrtoint ptr %send_req.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %send_req.i.i.i.i, align 4
  %call.i.i.i.i = call i32 %28(ptr noundef %25, i32 noundef 0, ptr noundef nonnull %req.i, i32 noundef 144, ptr noundef nonnull %resp.i.i, i32 noundef 8, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i.i.i, label %if.end.prestera_hw_port_flood_set_v2.exit_crit_edge

if.end.prestera_hw_port_flood_set_v2.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %prestera_hw_port_flood_set_v2.exit

if.end.i.i.i.i:                                   ; preds = %if.end
  %29 = ptrtoint ptr %resp.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %resp.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %30)
  %cmp.not.i.i.i.i = icmp eq i32 %30, 256
  br i1 %cmp.not.i.i.i.i, label %if.end6.i.i.i.i, label %if.end.i.i.i.i.prestera_hw_port_flood_set_v2.exit_crit_edge

if.end.i.i.i.i.prestera_hw_port_flood_set_v2.exit_crit_edge: ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %prestera_hw_port_flood_set_v2.exit

if.end6.i.i.i.i:                                  ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %31 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp7.not.i.i.i.i = icmp eq i32 %32, 0
  %..i.i.i.i = select i1 %cmp7.not.i.i.i.i, i32 0, i32 -22
  br label %prestera_hw_port_flood_set_v2.exit

prestera_hw_port_flood_set_v2.exit:               ; preds = %if.end6.i.i.i.i, %if.end.i.i.i.i.prestera_hw_port_flood_set_v2.exit_crit_edge, %if.end.prestera_hw_port_flood_set_v2.exit_crit_edge
  %retval.0.i.i.i.i = phi i32 [ %call.i.i.i.i, %if.end.prestera_hw_port_flood_set_v2.exit_crit_edge ], [ -52, %if.end.i.i.i.i.prestera_hw_port_flood_set_v2.exit_crit_edge ], [ %..i.i.i.i, %if.end6.i.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %resp.i.i) #9
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %req.i) #9
  br label %cleanup

if.end5:                                          ; preds = %entry
  br i1 %tobool.not, label %if.end5.if.end15_crit_edge, label %if.then8

if.end5.if.end15_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.then8:                                         ; preds = %if.end5
  %33 = trunc i32 %val to i8
  %34 = lshr i8 %33, 6
  %35 = and i8 %34, 1
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %req.i45) #9
  %36 = getelementptr inbounds i8, ptr %req.i45, i32 16
  %37 = call ptr @memset(ptr %36, i32 0, i32 128)
  %attr.i47 = getelementptr inbounds %struct.prestera_msg_port_attr_req, ptr %req.i45, i32 0, i32 1
  %38 = ptrtoint ptr %attr.i47 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 134217728, ptr %attr.i47, align 4
  %port1.i48 = getelementptr inbounds %struct.prestera_msg_port_attr_req, ptr %req.i45, i32 0, i32 2
  %hw_id.i49 = getelementptr inbounds %struct.prestera_port, ptr %port, i32 0, i32 7
  %39 = ptrtoint ptr %hw_id.i49 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %hw_id.i49, align 8
  %41 = tail call i32 @llvm.bswap.i32(i32 %40) #9
  %42 = ptrtoint ptr %port1.i48 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %port1.i48, align 8
  %dev.i50 = getelementptr inbounds %struct.prestera_msg_port_attr_req, ptr %req.i45, i32 0, i32 3
  %dev_id.i51 = getelementptr inbounds %struct.prestera_port, ptr %port, i32 0, i32 8
  %43 = ptrtoint ptr %dev_id.i51 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %dev_id.i51, align 4
  %45 = tail call i32 @llvm.bswap.i32(i32 %44) #9
  %46 = ptrtoint ptr %dev.i50 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %dev.i50, align 4
  %enable.i = getelementptr inbounds i8, ptr %req.i45, i32 17
  %47 = ptrtoint ptr %enable.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %35, ptr %enable.i, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %resp.i.i44) #9
  %48 = ptrtoint ptr %resp.i.i44 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 -1, ptr %resp.i.i44, align 4, !annotation !24
  %49 = getelementptr inbounds %struct.prestera_msg_ret, ptr %resp.i.i44, i32 0, i32 1
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 -1, ptr %49, align 4, !annotation !24
  %51 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %1, align 4
  %53 = ptrtoint ptr %req.i45 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 65536, ptr %req.i45, align 8
  %send_req.i.i.i.i54 = getelementptr inbounds %struct.prestera_device, ptr %52, i32 0, i32 7
  %54 = ptrtoint ptr %send_req.i.i.i.i54 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %send_req.i.i.i.i54, align 4
  %call.i.i.i.i55 = call i32 %55(ptr noundef %52, i32 noundef 0, ptr noundef nonnull %req.i45, i32 noundef 144, ptr noundef nonnull %resp.i.i44, i32 noundef 8, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i55)
  %tobool.not.i.i.i.i56 = icmp eq i32 %call.i.i.i.i55, 0
  br i1 %tobool.not.i.i.i.i56, label %if.end.i.i.i.i58, label %if.then8.err_uc_flood.thread_crit_edge

if.then8.err_uc_flood.thread_crit_edge:           ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_uc_flood.thread

if.end.i.i.i.i58:                                 ; preds = %if.then8
  %56 = ptrtoint ptr %resp.i.i44 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %resp.i.i44, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %57)
  %cmp.not.i.i.i.i57 = icmp eq i32 %57, 256
  br i1 %cmp.not.i.i.i.i57, label %if.end6.i.i.i.i61, label %if.end.i.i.i.i58.err_uc_flood.thread_crit_edge

if.end.i.i.i.i58.err_uc_flood.thread_crit_edge:   ; preds = %if.end.i.i.i.i58
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_uc_flood.thread

if.end6.i.i.i.i61:                                ; preds = %if.end.i.i.i.i58
  %58 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %49, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %cmp7.not.i.i.i.i59 = icmp eq i32 %59, 0
  br i1 %cmp7.not.i.i.i.i59, label %prestera_hw_port_uc_flood_set.exit, label %if.end6.i.i.i.i61.err_uc_flood.thread_crit_edge

if.end6.i.i.i.i61.err_uc_flood.thread_crit_edge:  ; preds = %if.end6.i.i.i.i61
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_uc_flood.thread

err_uc_flood.thread:                              ; preds = %if.end6.i.i.i.i61.err_uc_flood.thread_crit_edge, %if.end.i.i.i.i58.err_uc_flood.thread_crit_edge, %if.then8.err_uc_flood.thread_crit_edge
  %retval.0.i.i.i.i62.ph = phi i32 [ -22, %if.end6.i.i.i.i61.err_uc_flood.thread_crit_edge ], [ -52, %if.end.i.i.i.i58.err_uc_flood.thread_crit_edge ], [ %call.i.i.i.i55, %if.then8.err_uc_flood.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %resp.i.i44) #9
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %req.i45) #9
  br label %if.then29

prestera_hw_port_uc_flood_set.exit:               ; preds = %if.end6.i.i.i.i61
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %resp.i.i44) #9
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %req.i45) #9
  br label %if.end15

if.end15:                                         ; preds = %prestera_hw_port_uc_flood_set.exit, %if.end5.if.end15_crit_edge
  %and16 = and i32 %mask, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.end15.cleanup_crit_edge, label %if.then18

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then18:                                        ; preds = %if.end15
  %and19 = lshr i32 %val, 11
  %60 = trunc i32 %and19 to i8
  %61 = and i8 %60, 1
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %req.i64) #9
  %62 = getelementptr inbounds i8, ptr %req.i64, i32 16
  %63 = call ptr @memset(ptr %62, i32 0, i32 128)
  %attr.i66 = getelementptr inbounds %struct.prestera_msg_port_attr_req, ptr %req.i64, i32 0, i32 1
  %64 = ptrtoint ptr %attr.i66 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 134217728, ptr %attr.i66, align 4
  %port1.i67 = getelementptr inbounds %struct.prestera_msg_port_attr_req, ptr %req.i64, i32 0, i32 2
  %hw_id.i68 = getelementptr inbounds %struct.prestera_port, ptr %port, i32 0, i32 7
  %65 = ptrtoint ptr %hw_id.i68 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %hw_id.i68, align 8
  %67 = call i32 @llvm.bswap.i32(i32 %66) #9
  %68 = ptrtoint ptr %port1.i67 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %port1.i67, align 8
  %dev.i69 = getelementptr inbounds %struct.prestera_msg_port_attr_req, ptr %req.i64, i32 0, i32 3
  %dev_id.i70 = getelementptr inbounds %struct.prestera_port, ptr %port, i32 0, i32 8
  %69 = ptrtoint ptr %dev_id.i70 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %dev_id.i70, align 4
  %71 = call i32 @llvm.bswap.i32(i32 %70) #9
  %72 = ptrtoint ptr %dev.i69 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %dev.i69, align 4
  %73 = ptrtoint ptr %62 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 1, ptr %62, align 8
  %enable.i72 = getelementptr inbounds i8, ptr %req.i64, i32 17
  %74 = ptrtoint ptr %enable.i72 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %61, ptr %enable.i72, align 1
  %75 = ptrtoint ptr %sw to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %sw, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %resp.i.i63) #9
  %77 = ptrtoint ptr %resp.i.i63 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 -1, ptr %resp.i.i63, align 4, !annotation !24
  %78 = getelementptr inbounds %struct.prestera_msg_ret, ptr %resp.i.i63, i32 0, i32 1
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 -1, ptr %78, align 4, !annotation !24
  %80 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %76, align 4
  %82 = ptrtoint ptr %req.i64 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 65536, ptr %req.i64, align 8
  %send_req.i.i.i.i74 = getelementptr inbounds %struct.prestera_device, ptr %81, i32 0, i32 7
  %83 = ptrtoint ptr %send_req.i.i.i.i74 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %send_req.i.i.i.i74, align 4
  %call.i.i.i.i75 = call i32 %84(ptr noundef %81, i32 noundef 0, ptr noundef nonnull %req.i64, i32 noundef 144, ptr noundef nonnull %resp.i.i63, i32 noundef 8, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i75)
  %tobool.not.i.i.i.i76 = icmp eq i32 %call.i.i.i.i75, 0
  br i1 %tobool.not.i.i.i.i76, label %if.end.i.i.i.i78, label %if.then18.err_mc_flood_crit_edge

if.then18.err_mc_flood_crit_edge:                 ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_mc_flood

if.end.i.i.i.i78:                                 ; preds = %if.then18
  %85 = ptrtoint ptr %resp.i.i63 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %resp.i.i63, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %86)
  %cmp.not.i.i.i.i77 = icmp eq i32 %86, 256
  br i1 %cmp.not.i.i.i.i77, label %if.end6.i.i.i.i81, label %if.end.i.i.i.i78.err_mc_flood_crit_edge

if.end.i.i.i.i78.err_mc_flood_crit_edge:          ; preds = %if.end.i.i.i.i78
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_mc_flood

if.end6.i.i.i.i81:                                ; preds = %if.end.i.i.i.i78
  %87 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %78, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %cmp7.not.i.i.i.i79 = icmp eq i32 %88, 0
  br i1 %cmp7.not.i.i.i.i79, label %prestera_hw_port_mc_flood_set.exit, label %if.end6.i.i.i.i81.err_mc_flood_crit_edge

if.end6.i.i.i.i81.err_mc_flood_crit_edge:         ; preds = %if.end6.i.i.i.i81
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_mc_flood

prestera_hw_port_mc_flood_set.exit:               ; preds = %if.end6.i.i.i.i81
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %resp.i.i63) #9
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %req.i64) #9
  br label %cleanup

err_mc_flood:                                     ; preds = %if.end6.i.i.i.i81.err_mc_flood_crit_edge, %if.end.i.i.i.i78.err_mc_flood_crit_edge, %if.then18.err_mc_flood_crit_edge
  %retval.0.i.i.i.i82.ph = phi i32 [ -22, %if.end6.i.i.i.i81.err_mc_flood_crit_edge ], [ -52, %if.end.i.i.i.i78.err_mc_flood_crit_edge ], [ %call.i.i.i.i75, %if.then18.err_mc_flood_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %resp.i.i63) #9
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %req.i64) #9
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %req.i84) #9
  %89 = getelementptr inbounds i8, ptr %req.i84, i32 16
  %90 = call ptr @memset(ptr %89, i32 0, i32 128)
  %attr.i85 = getelementptr inbounds %struct.prestera_msg_port_attr_req, ptr %req.i84, i32 0, i32 1
  %91 = ptrtoint ptr %attr.i85 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 134217728, ptr %attr.i85, align 4
  %port1.i86 = getelementptr inbounds %struct.prestera_msg_port_attr_req, ptr %req.i84, i32 0, i32 2
  %92 = ptrtoint ptr %hw_id.i68 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %hw_id.i68, align 8
  %94 = call i32 @llvm.bswap.i32(i32 %93) #9
  %95 = ptrtoint ptr %port1.i86 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %94, ptr %port1.i86, align 8
  %dev.i88 = getelementptr inbounds %struct.prestera_msg_port_attr_req, ptr %req.i84, i32 0, i32 3
  %96 = ptrtoint ptr %dev_id.i70 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %dev_id.i70, align 4
  %98 = call i32 @llvm.bswap.i32(i32 %97) #9
  %99 = ptrtoint ptr %dev.i88 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %98, ptr %dev.i88, align 4
  %100 = ptrtoint ptr %89 to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 1, ptr %89, align 8
  %101 = ptrtoint ptr %sw to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %sw, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %resp.i.i83) #9
  %103 = ptrtoint ptr %resp.i.i83 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 -1, ptr %resp.i.i83, align 4, !annotation !24
  %104 = getelementptr inbounds %struct.prestera_msg_ret, ptr %resp.i.i83, i32 0, i32 1
  %105 = ptrtoint ptr %104 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 -1, ptr %104, align 4, !annotation !24
  %106 = ptrtoint ptr %102 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %102, align 4
  %108 = ptrtoint ptr %req.i84 to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 65536, ptr %req.i84, align 8
  %send_req.i.i.i.i93 = getelementptr inbounds %struct.prestera_device, ptr %107, i32 0, i32 7
  %109 = ptrtoint ptr %send_req.i.i.i.i93 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %send_req.i.i.i.i93, align 4
  %call.i.i.i.i94 = call i32 %110(ptr noundef %107, i32 noundef 0, ptr noundef nonnull %req.i84, i32 noundef 144, ptr noundef nonnull %resp.i.i83, i32 noundef 8, i32 noundef 0) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %resp.i.i83) #9
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %req.i84) #9
  br i1 %tobool.not, label %err_mc_flood.cleanup_crit_edge, label %err_mc_flood.if.then29_crit_edge

err_mc_flood.if.then29_crit_edge:                 ; preds = %err_mc_flood
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then29

err_mc_flood.cleanup_crit_edge:                   ; preds = %err_mc_flood
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then29:                                        ; preds = %err_mc_flood.if.then29_crit_edge, %err_uc_flood.thread
  %err.0130 = phi i32 [ %retval.0.i.i.i.i62.ph, %err_uc_flood.thread ], [ %retval.0.i.i.i.i82.ph, %err_mc_flood.if.then29_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %req.i104) #9
  %111 = getelementptr inbounds i8, ptr %req.i104, i32 16
  %112 = call ptr @memset(ptr %111, i32 0, i32 128)
  %attr.i105 = getelementptr inbounds %struct.prestera_msg_port_attr_req, ptr %req.i104, i32 0, i32 1
  %113 = ptrtoint ptr %attr.i105 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 134217728, ptr %attr.i105, align 4
  %port1.i106 = getelementptr inbounds %struct.prestera_msg_port_attr_req, ptr %req.i104, i32 0, i32 2
  %hw_id.i107 = getelementptr inbounds %struct.prestera_port, ptr %port, i32 0, i32 7
  %114 = ptrtoint ptr %hw_id.i107 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %hw_id.i107, align 8
  %116 = call i32 @llvm.bswap.i32(i32 %115) #9
  %117 = ptrtoint ptr %port1.i106 to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %116, ptr %port1.i106, align 8
  %dev.i108 = getelementptr inbounds %struct.prestera_msg_port_attr_req, ptr %req.i104, i32 0, i32 3
  %dev_id.i109 = getelementptr inbounds %struct.prestera_port, ptr %port, i32 0, i32 8
  %118 = ptrtoint ptr %dev_id.i109 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %dev_id.i109, align 4
  %120 = call i32 @llvm.bswap.i32(i32 %119) #9
  %121 = ptrtoint ptr %dev.i108 to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %120, ptr %dev.i108, align 4
  %122 = ptrtoint ptr %sw to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %sw, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %resp.i.i103) #9
  %124 = ptrtoint ptr %resp.i.i103 to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 -1, ptr %resp.i.i103, align 4, !annotation !24
  %125 = getelementptr inbounds %struct.prestera_msg_ret, ptr %resp.i.i103, i32 0, i32 1
  %126 = ptrtoint ptr %125 to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 -1, ptr %125, align 4, !annotation !24
  %127 = ptrtoint ptr %123 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %123, align 4
  %129 = ptrtoint ptr %req.i104 to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 65536, ptr %req.i104, align 8
  %send_req.i.i.i.i113 = getelementptr inbounds %struct.prestera_device, ptr %128, i32 0, i32 7
  %130 = ptrtoint ptr %send_req.i.i.i.i113 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %send_req.i.i.i.i113, align 4
  %call.i.i.i.i114 = call i32 %131(ptr noundef %128, i32 noundef 0, ptr noundef nonnull %req.i104, i32 noundef 144, ptr noundef nonnull %resp.i.i103, i32 noundef 8, i32 noundef 0) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %resp.i.i103) #9
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %req.i104) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then29, %err_mc_flood.cleanup_crit_edge, %prestera_hw_port_mc_flood_set.exit, %if.end15.cleanup_crit_edge, %prestera_hw_port_flood_set_v2.exit, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i.i.i.i, %prestera_hw_port_flood_set_v2.exit ], [ 0, %if.then.cleanup_crit_edge ], [ 0, %prestera_hw_port_mc_flood_set.exit ], [ 0, %if.end15.cleanup_crit_edge ], [ %err.0130, %if.then29 ], [ %retval.0.i.i.i.i82.ph, %err_mc_flood.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @prestera_hw_vlan_create(ptr nocapture noundef readonly %sw, i16 noundef zeroext %vid) local_unnamed_addr #0 align 64 {
entry:
  %resp.i = alloca %struct.prestera_msg_common_resp, align 4
  %req = alloca %struct.prestera_msg_vlan_req, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %req) #9
  %0 = getelementptr inbounds %struct.prestera_msg_vlan_req, ptr %req, i32 0, i32 1
  %1 = getelementptr inbounds %struct.prestera_msg_vlan_req, ptr %req, i32 0, i32 2
  %2 = getelementptr inbounds %struct.prestera_msg_vlan_req, ptr %req, i32 0, i32 3
  %3 = getelementptr inbounds %struct.prestera_msg_vlan_req, ptr %req, i32 0, i32 4
  %4 = getelementptr inbounds %struct.prestera_msg_vlan_req, ptr %req, i32 0, i32 5
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %0, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %1, align 4
  %7 = tail call i16 @llvm.bswap.i16(i16 %vid)
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %2, align 4
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %3, align 2
  %10 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %resp.i) #9
  %11 = ptrtoint ptr %resp.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %resp.i, align 4, !annotation !24
  %12 = getelementptr inbounds %struct.prestera_msg_ret, ptr %resp.i, i32 0, i32 1
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %12, align 4, !annotation !24
  %14 = ptrtoint ptr %sw to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sw, align 4
  %16 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 131072, ptr %req, align 4
  %send_req.i.i.i = getelementptr inbounds %struct.prestera_device, ptr %15, i32 0, i32 7
  %17 = ptrtoint ptr %send_req.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %send_req.i.i.i, align 4
  %call.i.i.i = call i32 %18(ptr noundef %15, i32 noundef 0, ptr noundef nonnull %req, i32 noundef 16, ptr noundef nonnull %resp.i, i32 noundef 8, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %entry.prestera_cmd.exit_crit_edge

entry.prestera_cmd.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %prestera_cmd.exit

if.end.i.i.i:                                     ; preds = %entry
  %19 = ptrtoint ptr %resp.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %resp.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %20)
  %cmp.not.i.i.i = icmp eq i32 %20, 256
  br i1 %cmp.not.i.i.i, label %if.end6.i.i.i, label %if.end.i.i.i.prestera_cmd.exit_crit_edge

if.end.i.i.i.prestera_cmd.exit_crit_edge:         ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %prestera_cmd.exit

if.end6.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp7.not.i.i.i = icmp eq i32 %22, 0
  %..i.i.i = select i1 %cmp7.not.i.i.i, i32 0, i32 -22
  br label %prestera_cmd.exit

prestera_cmd.exit:                                ; preds = %if.end6.i.i.i, %if.end.i.i.i.prestera_cmd.exit_crit_edge, %entry.prestera_cmd.exit_crit_edge
  %retval.0.i.i.i = phi i32 [ %call.i.i.i, %entry.prestera_cmd.exit_crit_edge ], [ -52, %if.end.i.i.i.prestera_cmd.exit_crit_edge ], [ %..i.i.i, %if.end6.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %resp.i) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %req) #9
  ret i32 %retval.0.i.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @prestera_hw_vlan_delete(ptr nocapture noundef readonly %sw, i16 noundef zeroext %vid) local_unnamed_addr #0 align 64 {
entry:
  %resp.i = alloca %struct.prestera_msg_common_resp, align 4
  %req = alloca %struct.prestera_msg_vlan_req, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %req) #9
  %0 = getelementptr inbounds %struct.prestera_msg_vlan_req, ptr %req, i32 0, i32 1
  %1 = getelementptr inbounds %struct.prestera_msg_vlan_req, ptr %req, i32 0, i32 2
  %2 = getelementptr inbounds %struct.prestera_msg_vlan_req, ptr %req, i32 0, i32 3
  %3 = getelementptr inbounds %struct.prestera_msg_vlan_req, ptr %req, i32 0, i32 4
  %4 = getelementptr inbounds %struct.prestera_msg_vlan_req, ptr %req, i32 0, i32 5
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %0, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %1, align 4
  %7 = tail call i16 @llvm.bswap.i16(i16 %vid)
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %2, align 4
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %3, align 2
  %10 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %resp.i) #9
  %11 = ptrtoint ptr %resp.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %resp.i, align 4, !annotation !24
  %12 = getelementptr inbounds %struct.prestera_msg_ret, ptr %resp.i, i32 0, i32 1
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %12, align 4, !annotation !24
  %14 = ptrtoint ptr %sw to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sw, align 4
  %16 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 16908288, ptr %req, align 4
  %send_req.i.i.i = getelementptr inbounds %struct.prestera_device, ptr %15, i32 0, i32 7
  %17 = ptrtoint ptr %send_req.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %send_req.i.i.i, align 4
  %call.i.i.i = call i32 %18(ptr noundef %15, i32 noundef 0, ptr noundef nonnull %req, i32 noundef 16, ptr noundef nonnull %resp.i, i32 noundef 8, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %entry.prestera_cmd.exit_crit_edge

entry.prestera_cmd.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %prestera_cmd.exit

if.end.i.i.i:                                     ; preds = %entry
  %19 = ptrtoint ptr %resp.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %resp.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %20)
  %cmp.not.i.i.i = icmp eq i32 %20, 256
  br i1 %cmp.not.i.i.i, label %if.end6.i.i.i, label %if.end.i.i.i.prestera_cmd.exit_crit_edge

if.end.i.i.i.prestera_cmd.exit_crit_edge:         ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %prestera_cmd.exit

if.end6.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp7.not.i.i.i = icmp eq i32 %22, 0
  %..i.i.i = select i1 %cmp7.not.i.i.i, i32 0, i32 -22
  br label %prestera_cmd.exit

prestera_cmd.exit:                                ; preds = %if.end6.i.i.i, %if.end.i.i.i.prestera_cmd.exit_crit_edge, %entry.prestera_cmd.exit_crit_edge
  %retval.0.i.i.i = phi i32 [ %call.i.i.i, %entry.prestera_cmd.exit_crit_edge ], [ -52, %if.end.i.i.i.prestera_cmd.exit_crit_edge ], [ %..i.i.i, %if.end6.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %resp.i) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %req) #9
  ret i32 %retval.0.i.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @prestera_hw_vlan_port_set(ptr nocapture noundef readonly %port, i16 noundef zeroext %vid, i1 noundef zeroext %is_member, i1 noundef zeroext %untagged) local_unnamed_addr #0 align 64 {
entry:
  %resp.i = alloca %struct.prestera_msg_common_resp, align 4
  %req = alloca %struct.prestera_msg_vlan_req, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %is_member to i8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %req) #9
  %0 = getelementptr inbounds %struct.prestera_msg_vlan_req, ptr %req, i32 0, i32 1
  %1 = getelementptr inbounds %struct.prestera_msg_vlan_req, ptr %req, i32 0, i32 2
  %2 = getelementptr inbounds %struct.prestera_msg_vlan_req, ptr %req, i32 0, i32 3
  %3 = getelementptr inbounds %struct.prestera_msg_vlan_req, ptr %req, i32 0, i32 4
  %4 = getelementptr inbounds %struct.prestera_msg_vlan_req, ptr %req, i32 0, i32 5
  %hw_id = getelementptr inbounds %struct.prestera_port, ptr %port, i32 0, i32 7
  %5 = ptrtoint ptr %hw_id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %hw_id, align 8
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %0, align 4
  %dev_id = getelementptr inbounds %struct.prestera_port, ptr %port, i32 0, i32 8
  %9 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dev_id, align 4
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %1, align 4
  %13 = tail call i16 @llvm.bswap.i16(i16 %vid)
  %14 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %2, align 4
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %frombool, ptr %3, align 2
  %lnot = xor i1 %untagged, true
  %conv6 = zext i1 %lnot to i8
  %16 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv6, ptr %4, align 1
  %sw = getelementptr inbounds %struct.prestera_port, ptr %port, i32 0, i32 1
  %17 = ptrtoint ptr %sw to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sw, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %resp.i) #9
  %19 = ptrtoint ptr %resp.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %resp.i, align 4, !annotation !24
  %20 = getelementptr inbounds %struct.prestera_msg_ret, ptr %resp.i, i32 0, i32 1
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %20, align 4, !annotation !24
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %18, align 4
  %24 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 33685504, ptr %req, align 4
  %send_req.i.i.i = getelementptr inbounds %struct.prestera_device, ptr %23, i32 0, i32 7
  %25 = ptrtoint ptr %send_req.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %send_req.i.i.i, align 4
  %call.i.i.i = call i32 %26(ptr noundef %23, i32 noundef 0, ptr noundef nonnull %req, i32 noundef 16, ptr noundef nonnull %resp.i, i32 noundef 8, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %entry.prestera_cmd.exit_crit_edge

entry.prestera_cmd.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %prestera_cmd.exit

if.end.i.i.i:                                     ; preds = %entry
  %27 = ptrtoint ptr %resp.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %resp.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %28)
  %cmp.not.i.i.i = icmp eq i32 %28, 256
  br i1 %cmp.not.i.i.i, label %if.end6.i.i.i, label %if.end.i.i.i.prestera_cmd.exit_crit_edge

if.end.i.i.i.prestera_cmd.exit_crit_edge:         ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %prestera_cmd.exit

if.end6.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %29 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %20, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp7.not.i.i.i = icmp eq i32 %30, 0
  %..i.i.i = select i1 %cmp7.not.i.i.i, i32 0, i32 -22
  br label %prestera_cmd.exit

prestera_cmd.exit:                                ; preds = %if.end6.i.i.i, %if.end.i.i.i.prestera_cmd.exit_crit_edge, %entry.prestera_cmd.exit_crit_edge
  %retval.0.i.i.i = phi i32 [ %call.i.i.i, %entry.prestera_cmd.exit_crit_edge ], [ -52, %if.end.i.i.i.prestera_cmd.exit_crit_edge ], [ %..i.i.i, %if.end6.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %resp.i) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %req) #9
  ret i32 %retval.0.i.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @prestera_hw_vlan_port_vid_set(ptr nocapture noundef readonly %port, i16 noundef zeroext %vid) local_unnamed_addr #0 align 64 {
entry:
  %resp.i = alloca %struct.prestera_msg_common_resp, align 4
  %req = alloca %struct.prestera_msg_vlan_req, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %req) #9
  %0 = getelementptr inbounds %struct.prestera_msg_vlan_req, ptr %req, i32 0, i32 1
  %1 = getelementptr inbounds %struct.prestera_msg_vlan_req, ptr %req, i32 0, i32 2
  %2 = getelementptr inbounds %struct.prestera_msg_vlan_req, ptr %req, i32 0, i32 3
  %3 = getelementptr inbounds %struct.prestera_msg_vlan_req, ptr %req, i32 0, i32 4
  %4 = getelementptr inbounds %struct.prestera_msg_vlan_req, ptr %req, i32 0, i32 5
  %hw_id = getelementptr inbounds %struct.prestera_port, ptr %port, i32 0, i32 7
  %5 = ptrtoint ptr %hw_id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %hw_id, align 8
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %0, align 4
  %dev_id = getelementptr inbounds %struct.prestera_port, ptr %port, i32 0, i32 8
  %9 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dev_id, align 4
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %1, align 4
  %13 = tail call i16 @llvm.bswap.i16(i16 %vid)
  %14 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %2, align 4
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %3, align 2
  %16 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %4, align 1
  %sw = getelementptr inbounds %struct.prestera_port, ptr %port, i32 0, i32 1
  %17 = ptrtoint ptr %sw to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sw, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %resp.i) #9
  %19 = ptrtoint ptr %resp.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %resp.i, align 4, !annotation !24
  %20 = getelementptr inbounds %struct.prestera_msg_ret, ptr %resp.i, i32 0, i32 1
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %20, align 4, !annotation !24
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %18, align 4
  %24 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 50462720, ptr %req, align 4
  %send_req.i.i.i = getelementptr inbounds %struct.prestera_device, ptr %23, i32 0, i32 7
  %25 = ptrtoint ptr %send_req.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %send_req.i.i.i, align 4
  %call.i.i.i = call i32 %26(ptr noundef %23, i32 noundef 0, ptr noundef nonnull %req, i32 noundef 16, ptr noundef nonnull %resp.i, i32 noundef 8, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %entry.prestera_cmd.exit_crit_edge

entry.prestera_cmd.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %prestera_cmd.exit

if.end.i.i.i:                                     ; preds = %entry
  %27 = ptrtoint ptr %resp.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %resp.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %28)
  %cmp.not.i.i.i = icmp eq i32 %28, 256
  br i1 %cmp.not.i.i.i, label %if.end6.i.i.i, label %if.end.i.i.i.prestera_cmd.exit_crit_edge

if.end.i.i.i.prestera_cmd.exit_crit_edge:         ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %prestera_cmd.exit

if.end6.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %29 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %20, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp7.not.i.i.i = icmp eq i32 %30, 0
  %..i.i.i = select i1 %cmp7.not.i.i.i, i32 0, i32 -22
  br label %prestera_cmd.exit

prestera_cmd.exit:                                ; preds = %if.end6.i.i.i, %if.end.i.i.i.prestera_cmd.exit_crit_edge, %entry.prestera_cmd.exit_crit_edge
  %retval.0.i.i.i = phi i32 [ %call.i.i.i, %entry.prestera_cmd.exit_crit_edge ], [ -52, %if.end.i.i.i.prestera_cmd.exit_crit_edge ], [ %..i.i.i, %if.end6.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %resp.i) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %req) #9
  ret i32 %retval.0.i.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @prestera_hw_vlan_port_stp_set(ptr nocapture noundef readonly %port, i16 noundef zeroext %vid, i8 noundef zeroext %state) local_unnamed_addr #0 align 64 {
entry:
  %resp.i = alloca %struct.prestera_msg_common_resp, align 4
  %req = alloca %struct.prestera_msg_stp_req, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %req) #9
  %0 = getelementptr inbounds %struct.prestera_msg_stp_req, ptr %req, i32 0, i32 1
  %1 = getelementptr inbounds %struct.prestera_msg_stp_req, ptr %req, i32 0, i32 2
  %2 = getelementptr inbounds %struct.prestera_msg_stp_req, ptr %req, i32 0, i32 3
  %3 = getelementptr inbounds %struct.prestera_msg_stp_req, ptr %req, i32 0, i32 4
  %4 = getelementptr inbounds %struct.prestera_msg_stp_req, ptr %req, i32 0, i32 5
  %hw_id = getelementptr inbounds %struct.prestera_port, ptr %port, i32 0, i32 7
  %5 = ptrtoint ptr %hw_id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %hw_id, align 8
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %0, align 4
  %dev_id = getelementptr inbounds %struct.prestera_port, ptr %port, i32 0, i32 8
  %9 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dev_id, align 4
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %1, align 4
  %13 = tail call i16 @llvm.bswap.i16(i16 %vid)
  %14 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %2, align 4
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %state, ptr %3, align 2
  %16 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %4, align 1
  %sw = getelementptr inbounds %struct.prestera_port, ptr %port, i32 0, i32 1
  %17 = ptrtoint ptr %sw to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sw, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %resp.i) #9
  %19 = ptrtoint ptr %resp.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %resp.i, align 4, !annotation !24
  %20 = getelementptr inbounds %struct.prestera_msg_ret, ptr %resp.i, i32 0, i32 1
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %20, align 4, !annotation !24
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %18, align 4
  %24 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1048576, ptr %req, align 4
  %send_req.i.i.i = getelementptr inbounds %struct.prestera_device, ptr %23, i32 0, i32 7
  %25 = ptrtoint ptr %send_req.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %send_req.i.i.i, align 4
  %call.i.i.i = call i32 %26(ptr noundef %23, i32 noundef 0, ptr noundef nonnull %req, i32 noundef 16, ptr noundef nonnull %resp.i, i32 noundef 8, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %entry.prestera_cmd.exit_crit_edge

entry.prestera_cmd.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %prestera_cmd.exit

if.end.i.i.i:                                     ; preds = %entry
  %27 = ptrtoint ptr %resp.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %resp.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %28)
  %cmp.not.i.i.i = icmp eq i32 %28, 256
  br i1 %cmp.not.i.i.i, label %if.end6.i.i.i, label %if.end.i.i.i.prestera_cmd.exit_crit_edge

if.end.i.i.i.prestera_cmd.exit_crit_edge:         ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %prestera_cmd.exit

if.end6.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %29 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %20, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp7.not.i.i.i = icmp eq i32 %30, 0
  %..i.i.i = select i1 %cmp7.not.i.i.i, i32 0, i32 -22
  br label %prestera_cmd.exit

prestera_cmd.exit:                                ; preds = %if.end6.i.i.i, %if.end.i.i.i.prestera_cmd.exit_crit_edge, %entry.prestera_cmd.exit_crit_edge
  %retval.0.i.i.i = phi i32 [ %call.i.i.i, %entry.prestera_cmd.exit_crit_edge ], [ -52, %if.end.i.i.i.prestera_cmd.exit_crit_edge ], [ %..i.i.i, %if.end6.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %resp.i) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %req) #9
  ret i32 %retval.0.i.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @prestera_hw_fdb_add(ptr nocapture noundef readonly %port, ptr nocapture noundef readonly %mac, i16 noundef zeroext %vid, i1 noundef zeroext %dynamic) local_unnamed_addr #0 align 64 {
entry:
  %resp.i = alloca %struct.prestera_msg_common_resp, align 4
  %req = alloca %struct.prestera_msg_fdb_req, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %dynamic to i8
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %req) #9
  %0 = getelementptr inbounds %struct.prestera_msg_fdb_req, ptr %req, i32 0, i32 1
  %1 = getelementptr inbounds %struct.prestera_msg_fdb_req, ptr %req, i32 0, i32 2
  %2 = getelementptr inbounds %struct.prestera_msg_fdb_req, ptr %req, i32 0, i32 2, i32 0, i32 1
  %3 = getelementptr inbounds %struct.prestera_msg_fdb_req, ptr %req, i32 0, i32 3
  %4 = getelementptr inbounds %struct.prestera_msg_fdb_req, ptr %req, i32 0, i32 4
  %5 = getelementptr inbounds %struct.prestera_msg_fdb_req, ptr %req, i32 0, i32 5
  %6 = getelementptr inbounds %struct.prestera_msg_fdb_req, ptr %req, i32 0, i32 6
  %7 = getelementptr inbounds %struct.prestera_msg_fdb_req, ptr %req, i32 0, i32 6, i32 4
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %0, align 4
  %hw_id = getelementptr inbounds %struct.prestera_port, ptr %port, i32 0, i32 7
  %9 = ptrtoint ptr %hw_id to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %hw_id, align 8
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %1, align 4
  %dev_id = getelementptr inbounds %struct.prestera_port, ptr %port, i32 0, i32 8
  %13 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dev_id, align 4
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  %16 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %2, align 4
  %17 = tail call i16 @llvm.bswap.i16(i16 %vid)
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %3, align 4
  %19 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %4, align 2
  %20 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %frombool, ptr %5, align 1
  %21 = getelementptr inbounds %struct.prestera_msg_fdb_req, ptr %req, i32 0, i32 6, i32 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %21, align 4
  %23 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %mac, align 4
  %25 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %6, align 4
  %add.ptr.i = getelementptr i8, ptr %mac, i32 4
  %26 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %add.ptr.i, align 2
  %28 = ptrtoint ptr %7 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %27, ptr %7, align 4
  %sw = getelementptr inbounds %struct.prestera_port, ptr %port, i32 0, i32 1
  %29 = ptrtoint ptr %sw to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %sw, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %resp.i) #9
  %31 = ptrtoint ptr %resp.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 -1, ptr %resp.i, align 4, !annotation !24
  %32 = getelementptr inbounds %struct.prestera_msg_ret, ptr %resp.i, i32 0, i32 1
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 -1, ptr %32, align 4, !annotation !24
  %34 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %30, align 4
  %36 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 196608, ptr %req, align 4
  %send_req.i.i.i = getelementptr inbounds %struct.prestera_device, ptr %35, i32 0, i32 7
  %37 = ptrtoint ptr %send_req.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %send_req.i.i.i, align 4
  %call.i.i.i = call i32 %38(ptr noundef %35, i32 noundef 0, ptr noundef nonnull %req, i32 noundef 28, ptr noundef nonnull %resp.i, i32 noundef 8, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %entry.prestera_cmd.exit_crit_edge

entry.prestera_cmd.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %prestera_cmd.exit

if.end.i.i.i:                                     ; preds = %entry
  %39 = ptrtoint ptr %resp.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %resp.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %40)
  %cmp.not.i.i.i = icmp eq i32 %40, 256
  br i1 %cmp.not.i.i.i, label %if.end6.i.i.i, label %if.end.i.i.i.prestera_cmd.exit_crit_edge

if.end.i.i.i.prestera_cmd.exit_crit_edge:         ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %prestera_cmd.exit

if.end6.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %41 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %32, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp7.not.i.i.i = icmp eq i32 %42, 0
  %..i.i.i = select i1 %cmp7.not.i.i.i, i32 0, i32 -22
  br label %prestera_cmd.exit

prestera_cmd.exit:                                ; preds = %if.end6.i.i.i, %if.end.i.i.i.prestera_cmd.exit_crit_edge, %entry.prestera_cmd.exit_crit_edge
  %retval.0.i.i.i = phi i32 [ %call.i.i.i, %entry.prestera_cmd.exit_crit_edge ], [ -52, %if.end.i.i.i.prestera_cmd.exit_crit_edge ], [ %..i.i.i, %if.end6.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %resp.i) #9
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %req) #9
  ret i32 %retval.0.i.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @prestera_hw_fdb_del(ptr nocapture noundef readonly %port, ptr nocapture noundef readonly %mac, i16 noundef zeroext %vid) local_unnamed_addr #0 align 64 {
entry:
  %resp.i = alloca %struct.prestera_msg_common_resp, align 4
  %req = alloca %struct.prestera_msg_fdb_req, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %req) #9
  %0 = getelementptr inbounds %struct.prestera_msg_fdb_req, ptr %req, i32 0, i32 1
  %1 = getelementptr inbounds %struct.prestera_msg_fdb_req, ptr %req, i32 0, i32 2
  %2 = getelementptr inbounds %struct.prestera_msg_fdb_req, ptr %req, i32 0, i32 2, i32 0, i32 1
  %3 = getelementptr inbounds %struct.prestera_msg_fdb_req, ptr %req, i32 0, i32 3
  %4 = getelementptr inbounds %struct.prestera_msg_fdb_req, ptr %req, i32 0, i32 4
  %5 = getelementptr inbounds %struct.prestera_msg_fdb_req, ptr %req, i32 0, i32 6
  %6 = getelementptr inbounds %struct.prestera_msg_fdb_req, ptr %req, i32 0, i32 6, i32 4
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %0, align 4
  %hw_id = getelementptr inbounds %struct.prestera_port, ptr %port, i32 0, i32 7
  %8 = ptrtoint ptr %hw_id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %hw_id, align 8
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %1, align 4
  %dev_id = getelementptr inbounds %struct.prestera_port, ptr %port, i32 0, i32 8
  %12 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dev_id, align 4
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  %15 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %2, align 4
  %16 = tail call i16 @llvm.bswap.i16(i16 %vid)
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %3, align 4
  %18 = call ptr @memset(ptr %4, i32 0, i32 10)
  %19 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %mac, align 4
  %21 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %5, align 4
  %add.ptr.i = getelementptr i8, ptr %mac, i32 4
  %22 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %add.ptr.i, align 2
  %24 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %23, ptr %6, align 4
  %sw = getelementptr inbounds %struct.prestera_port, ptr %port, i32 0, i32 1
  %25 = ptrtoint ptr %sw to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %sw, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %resp.i) #9
  %27 = ptrtoint ptr %resp.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -1, ptr %resp.i, align 4, !annotation !24
  %28 = getelementptr inbounds %struct.prestera_msg_ret, ptr %resp.i, i32 0, i32 1
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 -1, ptr %28, align 4, !annotation !24
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %26, align 4
  %32 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 16973824, ptr %req, align 4
  %send_req.i.i.i = getelementptr inbounds %struct.prestera_device, ptr %31, i32 0, i32 7
  %33 = ptrtoint ptr %send_req.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %send_req.i.i.i, align 4
  %call.i.i.i = call i32 %34(ptr noundef %31, i32 noundef 0, ptr noundef nonnull %req, i32 noundef 28, ptr noundef nonnull %resp.i, i32 noundef 8, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %entry.prestera_cmd.exit_crit_edge

entry.prestera_cmd.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %prestera_cmd.exit

if.end.i.i.i:                                     ; preds = %entry
  %35 = ptrtoint ptr %resp.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %resp.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %36)
  %cmp.not.i.i.i = icmp eq i32 %36, 256
  br i1 %cmp.not.i.i.i, label %if.end6.i.i.i, label %if.end.i.i.i.prestera_cmd.exit_crit_edge

if.end.i.i.i.prestera_cmd.exit_crit_edge:         ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %prestera_cmd.exit

if.end6.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %37 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %28, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp7.not.i.i.i = icmp eq i32 %38, 0
  %..i.i.i = select i1 %cmp7.not.i.i.i, i32 0, i32 -22
  br label %prestera_cmd.exit

prestera_cmd.exit:                                ; preds = %if.end6.i.i.i, %if.end.i.i.i.prestera_cmd.exit_crit_edge, %entry.prestera_cmd.exit_crit_edge
  %retval.0.i.i.i = phi i32 [ %call.i.i.i, %entry.prestera_cmd.exit_crit_edge ], [ -52, %if.end.i.i.i.prestera_cmd.exit_crit_edge ], [ %..i.i.i, %if.end6.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %resp.i) #9
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %req) #9
  ret i32 %retval.0.i.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @prestera_hw_lag_fdb_add(ptr nocapture noundef readonly %sw, i16 noundef zeroext %lag_id, ptr nocapture noundef readonly %mac, i16 noundef zeroext %vid, i1 noundef zeroext %dynamic) local_unnamed_addr #0 align 64 {
entry:
  %resp.i = alloca %struct.prestera_msg_common_resp, align 4
  %req = alloca %struct.prestera_msg_fdb_req, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %dynamic to i8
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %req) #9
  %0 = getelementptr inbounds %struct.prestera_msg_fdb_req, ptr %req, i32 0, i32 2
  %1 = getelementptr inbounds %struct.prestera_msg_fdb_req, ptr %req, i32 0, i32 3
  %2 = getelementptr inbounds %struct.prestera_msg_fdb_req, ptr %req, i32 0, i32 4
  %3 = getelementptr inbounds %struct.prestera_msg_fdb_req, ptr %req, i32 0, i32 5
  %4 = getelementptr inbounds %struct.prestera_msg_fdb_req, ptr %req, i32 0, i32 6
  %5 = getelementptr inbounds %struct.prestera_msg_fdb_req, ptr %req, i32 0, i32 6, i32 4
  %6 = getelementptr inbounds i8, ptr %req, i32 4
  %7 = call ptr @memset(ptr %6, i32 0, i32 24)
  %8 = tail call i16 @llvm.bswap.i16(i16 %lag_id)
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %0, align 4
  %10 = tail call i16 @llvm.bswap.i16(i16 %vid)
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %1, align 4
  %12 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %2, align 2
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %frombool, ptr %3, align 1
  %14 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mac, align 4
  %16 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %4, align 4
  %add.ptr.i = getelementptr i8, ptr %mac, i32 4
  %17 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %add.ptr.i, align 2
  %19 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %resp.i) #9
  %20 = ptrtoint ptr %resp.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %resp.i, align 4, !annotation !24
  %21 = getelementptr inbounds %struct.prestera_msg_ret, ptr %resp.i, i32 0, i32 1
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -1, ptr %21, align 4, !annotation !24
  %23 = ptrtoint ptr %sw to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %sw, align 4
  %25 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 196608, ptr %req, align 4
  %send_req.i.i.i = getelementptr inbounds %struct.prestera_device, ptr %24, i32 0, i32 7
  %26 = ptrtoint ptr %send_req.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %send_req.i.i.i, align 4
  %call.i.i.i = call i32 %27(ptr noundef %24, i32 noundef 0, ptr noundef nonnull %req, i32 noundef 28, ptr noundef nonnull %resp.i, i32 noundef 8, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %entry.prestera_cmd.exit_crit_edge

entry.prestera_cmd.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %prestera_cmd.exit

if.end.i.i.i:                                     ; preds = %entry
  %28 = ptrtoint ptr %resp.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %resp.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %29)
  %cmp.not.i.i.i = icmp eq i32 %29, 256
  br i1 %cmp.not.i.i.i, label %if.end6.i.i.i, label %if.end.i.i.i.prestera_cmd.exit_crit_edge

if.end.i.i.i.prestera_cmd.exit_crit_edge:         ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %prestera_cmd.exit

if.end6.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %30 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp7.not.i.i.i = icmp eq i32 %31, 0
  %..i.i.i = select i1 %cmp7.not.i.i.i, i32 0, i32 -22
  br label %prestera_cmd.exit

prestera_cmd.exit:                                ; preds = %if.end6.i.i.i, %if.end.i.i.i.prestera_cmd.exit_crit_edge, %entry.prestera_cmd.exit_crit_edge
  %retval.0.i.i.i = phi i32 [ %call.i.i.i, %entry.prestera_cmd.exit_crit_edge ], [ -52, %if.end.i.i.i.prestera_cmd.exit_crit_edge ], [ %..i.i.i, %if.end6.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %resp.i) #9
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %req) #9
  ret i32 %retval.0.i.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @prestera_hw_lag_fdb_del(ptr nocapture noundef readonly %sw, i16 noundef zeroext %lag_id, ptr nocapture noundef readonly %mac, i16 noundef zeroext %vid) local_unnamed_addr #0 align 64 {
entry:
  %resp.i = alloca %struct.prestera_msg_common_resp, align 4
  %req = alloca %struct.prestera_msg_fdb_req, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %req) #9
  %0 = getelementptr inbounds %struct.prestera_msg_fdb_req, ptr %req, i32 0, i32 2
  %1 = getelementptr inbounds %struct.prestera_msg_fdb_req, ptr %req, i32 0, i32 3
  %2 = getelementptr inbounds %struct.prestera_msg_fdb_req, ptr %req, i32 0, i32 4
  %3 = getelementptr inbounds %struct.prestera_msg_fdb_req, ptr %req, i32 0, i32 6
  %4 = getelementptr inbounds %struct.prestera_msg_fdb_req, ptr %req, i32 0, i32 6, i32 4
  %5 = getelementptr inbounds i8, ptr %req, i32 4
  %6 = call ptr @memset(ptr %5, i32 0, i32 24)
  %7 = tail call i16 @llvm.bswap.i16(i16 %lag_id)
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %0, align 4
  %9 = tail call i16 @llvm.bswap.i16(i16 %vid)
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %1, align 4
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %2, align 2
  %12 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mac, align 4
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %3, align 4
  %add.ptr.i = getelementptr i8, ptr %mac, i32 4
  %15 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %add.ptr.i, align 2
  %17 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %resp.i) #9
  %18 = ptrtoint ptr %resp.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %resp.i, align 4, !annotation !24
  %19 = getelementptr inbounds %struct.prestera_msg_ret, ptr %resp.i, i32 0, i32 1
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %19, align 4, !annotation !24
  %21 = ptrtoint ptr %sw to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sw, align 4
  %23 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 16973824, ptr %req, align 4
  %send_req.i.i.i = getelementptr inbounds %struct.prestera_device, ptr %22, i32 0, i32 7
  %24 = ptrtoint ptr %send_req.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %send_req.i.i.i, align 4
  %call.i.i.i = call i32 %25(ptr noundef %22, i32 noundef 0, ptr noundef nonnull %req, i32 noundef 28, ptr noundef nonnull %resp.i, i32 noundef 8, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %entry.prestera_cmd.exit_crit_edge

entry.prestera_cmd.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %prestera_cmd.exit

if.end.i.i.i:                                     ; preds = %entry
  %26 = ptrtoint ptr %resp.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %resp.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %27)
  %cmp.not.i.i.i = icmp eq i32 %27, 256
  br i1 %cmp.not.i.i.i, label %if.end6.i.i.i, label %if.end.i.i.i.prestera_cmd.exit_crit_edge

if.end.i.i.i.prestera_cmd.exit_crit_edge:         ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %prestera_cmd.exit

if.end6.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %28 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp7.not.i.i.i = icmp eq i32 %29, 0
  %..i.i.i = select i1 %cmp7.not.i.i.i, i32 0, i32 -22
  br label %prestera_cmd.exit

prestera_cmd.exit:                                ; preds = %if.end6.i.i.i, %if.end.i.i.i.prestera_cmd.exit_crit_edge, %entry.prestera_cmd.exit_crit_edge
  %retval.0.i.i.i = phi i32 [ %call.i.i.i, %entry.prestera_cmd.exit_crit_edge ], [ -52, %if.end.i.i.i.prestera_cmd.exit_crit_edge ], [ %..i.i.i, %if.end6.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %resp.i) #9
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %req) #9
  ret i32 %retval.0.i.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @prestera_hw_fdb_flush_port(ptr nocapture noundef readonly %port, i32 noundef %mode) local_unnamed_addr #0 align 64 {
entry:
  %resp.i = alloca %struct.prestera_msg_common_resp, align 4
  %req = alloca %struct.prestera_msg_fdb_req, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %req) #9
  %0 = getelementptr inbounds %struct.prestera_msg_fdb_req, ptr %req, i32 0, i32 1
  %1 = getelementptr inbounds %struct.prestera_msg_fdb_req, ptr %req, i32 0, i32 2
  %2 = getelementptr inbounds %struct.prestera_msg_fdb_req, ptr %req, i32 0, i32 2, i32 0, i32 1
  %3 = getelementptr inbounds %struct.prestera_msg_fdb_req, ptr %req, i32 0, i32 3
  %4 = tail call i32 @llvm.bswap.i32(i32 %mode)
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %0, align 4
  %hw_id = getelementptr inbounds %struct.prestera_port, ptr %port, i32 0, i32 7
  %6 = ptrtoint ptr %hw_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hw_id, align 8
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %1, align 4
  %dev_id = getelementptr inbounds %struct.prestera_port, ptr %port, i32 0, i32 8
  %10 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dev_id, align 4
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  %13 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %2, align 4
  %sw = getelementptr inbounds %struct.prestera_port, ptr %port, i32 0, i32 1
  %14 = call ptr @memset(ptr %3, i32 0, i32 12)
  %15 = ptrtoint ptr %sw to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sw, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %resp.i) #9
  %17 = ptrtoint ptr %resp.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %resp.i, align 4, !annotation !24
  %18 = getelementptr inbounds %struct.prestera_msg_ret, ptr %resp.i, i32 0, i32 1
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %18, align 4, !annotation !24
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %16, align 4
  %22 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 268632064, ptr %req, align 4
  %send_req.i.i.i = getelementptr inbounds %struct.prestera_device, ptr %21, i32 0, i32 7
  %23 = ptrtoint ptr %send_req.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %send_req.i.i.i, align 4
  %call.i.i.i = call i32 %24(ptr noundef %21, i32 noundef 0, ptr noundef nonnull %req, i32 noundef 28, ptr noundef nonnull %resp.i, i32 noundef 8, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %entry.prestera_cmd.exit_crit_edge

entry.prestera_cmd.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %prestera_cmd.exit

if.end.i.i.i:                                     ; preds = %entry
  %25 = ptrtoint ptr %resp.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %resp.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %26)
  %cmp.not.i.i.i = icmp eq i32 %26, 256
  br i1 %cmp.not.i.i.i, label %if.end6.i.i.i, label %if.end.i.i.i.prestera_cmd.exit_crit_edge

if.end.i.i.i.prestera_cmd.exit_crit_edge:         ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %prestera_cmd.exit

if.end6.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %27 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp7.not.i.i.i = icmp eq i32 %28, 0
  %..i.i.i = select i1 %cmp7.not.i.i.i, i32 0, i32 -22
  br label %prestera_cmd.exit

prestera_cmd.exit:                                ; preds = %if.end6.i.i.i, %if.end.i.i.i.prestera_cmd.exit_crit_edge, %entry.prestera_cmd.exit_crit_edge
  %retval.0.i.i.i = phi i32 [ %call.i.i.i, %entry.prestera_cmd.exit_crit_edge ], [ -52, %if.end.i.i.i.prestera_cmd.exit_crit_edge ], [ %..i.i.i, %if.end6.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %resp.i) #9
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %req) #9
  ret i32 %retval.0.i.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @prestera_hw_fdb_flush_vlan(ptr nocapture noundef readonly %sw, i16 noundef zeroext %vid, i32 noundef %mode) local_unnamed_addr #0 align 64 {
entry:
  %resp.i = alloca %struct.prestera_msg_common_resp, align 4
  %req = alloca %struct.prestera_msg_fdb_req, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %req) #9
  %0 = getelementptr inbounds %struct.prestera_msg_fdb_req, ptr %req, i32 0, i32 1
  %1 = getelementptr inbounds %struct.prestera_msg_fdb_req, ptr %req, i32 0, i32 3
  %2 = getelementptr inbounds i8, ptr %req, i32 8
  %3 = call ptr @memset(ptr %2, i32 0, i32 20)
  %4 = tail call i32 @llvm.bswap.i32(i32 %mode)
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %0, align 4
  %6 = tail call i16 @llvm.bswap.i16(i16 %vid)
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %resp.i) #9
  %8 = ptrtoint ptr %resp.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %resp.i, align 4, !annotation !24
  %9 = getelementptr inbounds %struct.prestera_msg_ret, ptr %resp.i, i32 0, i32 1
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %9, align 4, !annotation !24
  %11 = ptrtoint ptr %sw to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sw, align 4
  %13 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 285409280, ptr %req, align 4
  %send_req.i.i.i = getelementptr inbounds %struct.prestera_device, ptr %12, i32 0, i32 7
  %14 = ptrtoint ptr %send_req.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %send_req.i.i.i, align 4
  %call.i.i.i = call i32 %15(ptr noundef %12, i32 noundef 0, ptr noundef nonnull %req, i32 noundef 28, ptr noundef nonnull %resp.i, i32 noundef 8, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %entry.prestera_cmd.exit_crit_edge

entry.prestera_cmd.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %prestera_cmd.exit

if.end.i.i.i:                                     ; preds = %entry
  %16 = ptrtoint ptr %resp.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %resp.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %17)
  %cmp.not.i.i.i = icmp eq i32 %17, 256
  br i1 %cmp.not.i.i.i, label %if.end6.i.i.i, label %if.end.i.i.i.prestera_cmd.exit_crit_edge

if.end.i.i.i.prestera_cmd.exit_crit_edge:         ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %prestera_cmd.exit

if.end6.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp7.not.i.i.i = icmp eq i32 %19, 0
  %..i.i.i = select i1 %cmp7.not.i.i.i, i32 0, i32 -22
  br label %prestera_cmd.exit

prestera_cmd.exit:                                ; preds = %if.end6.i.i.i, %if.end.i.i.i.prestera_cmd.exit_crit_edge, %entry.prestera_cmd.exit_crit_edge
  %retval.0.i.i.i = phi i32 [ %call.i.i.i, %entry.prestera_cmd.exit_crit_edge ], [ -52, %if.end.i.i.i.prestera_cmd.exit_crit_edge ], [ %..i.i.i, %if.end6.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %resp.i) #9
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %req) #9
  ret i32 %retval.0.i.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @prestera_hw_fdb_flush_port_vlan(ptr nocapture noundef readonly %port, i16 noundef zeroext %vid, i32 noundef %mode) local_unnamed_addr #0 align 64 {
entry:
  %resp.i = alloca %struct.prestera_msg_common_resp, align 4
  %req = alloca %struct.prestera_msg_fdb_req, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %req) #9
  %0 = getelementptr inbounds %struct.prestera_msg_fdb_req, ptr %req, i32 0, i32 1
  %1 = getelementptr inbounds %struct.prestera_msg_fdb_req, ptr %req, i32 0, i32 2
  %2 = getelementptr inbounds %struct.prestera_msg_fdb_req, ptr %req, i32 0, i32 2, i32 0, i32 1
  %3 = getelementptr inbounds %struct.prestera_msg_fdb_req, ptr %req, i32 0, i32 3
  %4 = getelementptr inbounds %struct.prestera_msg_fdb_req, ptr %req, i32 0, i32 4
  %5 = tail call i32 @llvm.bswap.i32(i32 %mode)
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %0, align 4
  %hw_id = getelementptr inbounds %struct.prestera_port, ptr %port, i32 0, i32 7
  %7 = ptrtoint ptr %hw_id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %hw_id, align 8
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %1, align 4
  %dev_id = getelementptr inbounds %struct.prestera_port, ptr %port, i32 0, i32 8
  %11 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dev_id, align 4
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  %14 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %2, align 4
  %15 = tail call i16 @llvm.bswap.i16(i16 %vid)
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %3, align 4
  %sw = getelementptr inbounds %struct.prestera_port, ptr %port, i32 0, i32 1
  %17 = call ptr @memset(ptr %4, i32 0, i32 10)
  %18 = ptrtoint ptr %sw to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sw, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %resp.i) #9
  %20 = ptrtoint ptr %resp.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %resp.i, align 4, !annotation !24
  %21 = getelementptr inbounds %struct.prestera_msg_ret, ptr %resp.i, i32 0, i32 1
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -1, ptr %21, align 4, !annotation !24
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %19, align 4
  %25 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 302186496, ptr %req, align 4
  %send_req.i.i.i = getelementptr inbounds %struct.prestera_device, ptr %24, i32 0, i32 7
  %26 = ptrtoint ptr %send_req.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %send_req.i.i.i, align 4
  %call.i.i.i = call i32 %27(ptr noundef %24, i32 noundef 0, ptr noundef nonnull %req, i32 noundef 28, ptr noundef nonnull %resp.i, i32 noundef 8, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %entry.prestera_cmd.exit_crit_edge

entry.prestera_cmd.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %prestera_cmd.exit

if.end.i.i.i:                                     ; preds = %entry
  %28 = ptrtoint ptr %resp.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %resp.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %29)
  %cmp.not.i.i.i = icmp eq i32 %29, 256
  br i1 %cmp.not.i.i.i, label %if.end6.i.i.i, label %if.end.i.i.i.prestera_cmd.exit_crit_edge

if.end.i.i.i.prestera_cmd.exit_crit_edge:         ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %prestera_cmd.exit

if.end6.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %30 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp7.not.i.i.i = icmp eq i32 %31, 0
  %..i.i.i = select i1 %cmp7.not.i.i.i, i32 0, i32 -22
  br label %prestera_cmd.exit

prestera_cmd.exit:                                ; preds = %if.end6.i.i.i, %if.end.i.i.i.prestera_cmd.exit_crit_edge, %entry.prestera_cmd.exit_crit_edge
  %retval.0.i.i.i = phi i32 [ %call.i.i.i, %entry.prestera_cmd.exit_crit_edge ], [ -52, %if.end.i.i.i.prestera_cmd.exit_crit_edge ], [ %..i.i.i, %if.end6.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %resp.i) #9
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %req) #9
  ret i32 %retval.0.i.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @prestera_hw_fdb_flush_lag(ptr nocapture noundef readonly %sw, i16 noundef zeroext %lag_id, i32 noundef %mode) local_unnamed_addr #0 align 64 {
entry:
  %resp.i = alloca %struct.prestera_msg_common_resp, align 4
  %req = alloca %struct.prestera_msg_fdb_req, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %req) #9
  %0 = getelementptr inbounds %struct.prestera_msg_fdb_req, ptr %req, i32 0, i32 1
  %1 = getelementptr inbounds %struct.prestera_msg_fdb_req, ptr %req, i32 0, i32 2
  %2 = getelementptr inbounds %struct.prestera_msg_fdb_req, ptr %req, i32 0, i32 4
  %3 = getelementptr inbounds i8, ptr %req, i32 8
  %4 = call ptr @memset(ptr %3, i32 0, i32 20)
  %5 = tail call i32 @llvm.bswap.i32(i32 %mode)
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %0, align 4
  %7 = tail call i16 @llvm.bswap.i16(i16 %lag_id)
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %1, align 4
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %2, align 2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %resp.i) #9
  %10 = ptrtoint ptr %resp.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %resp.i, align 4, !annotation !24
  %11 = getelementptr inbounds %struct.prestera_msg_ret, ptr %resp.i, i32 0, i32 1
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %11, align 4, !annotation !24
  %13 = ptrtoint ptr %sw to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sw, align 4
  %15 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 268632064, ptr %req, align 4
  %send_req.i.i.i = getelementptr inbounds %struct.prestera_device, ptr %14, i32 0, i32 7
  %16 = ptrtoint ptr %send_req.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %send_req.i.i.i, align 4
  %call.i.i.i = call i32 %17(ptr noundef %14, i32 noundef 0, ptr noundef nonnull %req, i32 noundef 28, ptr noundef nonnull %resp.i, i32 noundef 8, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %entry.prestera_cmd.exit_crit_edge

entry.prestera_cmd.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %prestera_cmd.exit

if.end.i.i.i:                                     ; preds = %entry
  %18 = ptrtoint ptr %resp.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %resp.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %19)
  %cmp.not.i.i.i = icmp eq i32 %19, 256
  br i1 %cmp.not.i.i.i, label %if.end6.i.i.i, label %if.end.i.i.i.prestera_cmd.exit_crit_edge

if.end.i.i.i.prestera_cmd.exit_crit_edge:         ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %prestera_cmd.exit

if.end6.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp7.not.i.i.i = icmp eq i32 %21, 0
  %..i.i.i = select i1 %cmp7.not.i.i.i, i32 0, i32 -22
  br label %prestera_cmd.exit

prestera_cmd.exit:                                ; preds = %if.end6.i.i.i, %if.end.i.i.i.prestera_cmd.exit_crit_edge, %entry.prestera_cmd.exit_crit_edge
  %retval.0.i.i.i = phi i32 [ %call.i.i.i, %entry.prestera_cmd.exit_crit_edge ], [ -52, %if.end.i.i.i.prestera_cmd.exit_crit_edge ], [ %..i.i.i, %if.end6.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %resp.i) #9
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %req) #9
  ret i32 %retval.0.i.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @prestera_hw_fdb_flush_lag_vlan(ptr nocapture noundef readonly %sw, i16 noundef zeroext %lag_id, i16 noundef zeroext %vid, i32 noundef %mode) local_unnamed_addr #0 align 64 {
entry:
  %resp.i = alloca %struct.prestera_msg_common_resp, align 4
  %req = alloca %struct.prestera_msg_fdb_req, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %req) #9
  %0 = getelementptr inbounds %struct.prestera_msg_fdb_req, ptr %req, i32 0, i32 1
  %1 = getelementptr inbounds %struct.prestera_msg_fdb_req, ptr %req, i32 0, i32 2
  %2 = getelementptr inbounds %struct.prestera_msg_fdb_req, ptr %req, i32 0, i32 3
  %3 = getelementptr inbounds %struct.prestera_msg_fdb_req, ptr %req, i32 0, i32 4
  %4 = getelementptr inbounds %struct.prestera_msg_fdb_req, ptr %req, i32 0, i32 5
  %5 = getelementptr inbounds i8, ptr %req, i32 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_storeN_noabort(i32 %6, i32 8)
  store i64 -1, ptr %5, align 4
  %7 = tail call i32 @llvm.bswap.i32(i32 %mode)
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %0, align 4
  %9 = tail call i16 @llvm.bswap.i16(i16 %lag_id)
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %1, align 4
  %11 = tail call i16 @llvm.bswap.i16(i16 %vid)
  %12 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %2, align 4
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %3, align 2
  %14 = call ptr @memset(ptr %4, i32 0, i32 9)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %resp.i) #9
  %15 = ptrtoint ptr %resp.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %resp.i, align 4, !annotation !24
  %16 = getelementptr inbounds %struct.prestera_msg_ret, ptr %resp.i, i32 0, i32 1
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %16, align 4, !annotation !24
  %18 = ptrtoint ptr %sw to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sw, align 4
  %20 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 302186496, ptr %req, align 4
  %send_req.i.i.i = getelementptr inbounds %struct.prestera_device, ptr %19, i32 0, i32 7
  %21 = ptrtoint ptr %send_req.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %send_req.i.i.i, align 4
  %call.i.i.i = call i32 %22(ptr noundef %19, i32 noundef 0, ptr noundef nonnull %req, i32 noundef 28, ptr noundef nonnull %resp.i, i32 noundef 8, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %entry.prestera_cmd.exit_crit_edge

entry.prestera_cmd.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %prestera_cmd.exit

if.end.i.i.i:                                     ; preds = %entry
  %23 = ptrtoint ptr %resp.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %resp.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %24)
  %cmp.not.i.i.i = icmp eq i32 %24, 256
  br i1 %cmp.not.i.i.i, label %if.end6.i.i.i, label %if.end.i.i.i.prestera_cmd.exit_crit_edge

if.end.i.i.i.prestera_cmd.exit_crit_edge:         ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %prestera_cmd.exit

if.end6.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp7.not.i.i.i = icmp eq i32 %26, 0
  %..i.i.i = select i1 %cmp7.not.i.i.i, i32 0, i32 -22
  br label %prestera_cmd.exit

prestera_cmd.exit:                                ; preds = %if.end6.i.i.i, %if.end.i.i.i.prestera_cmd.exit_crit_edge, %entry.prestera_cmd.exit_crit_edge
  %retval.0.i.i.i = phi i32 [ %call.i.i.i, %entry.prestera_cmd.exit_crit_edge ], [ -52, %if.end.i.i.i.prestera_cmd.exit_crit_edge ], [ %..i.i.i, %if.end6.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %resp.i) #9
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %req) #9
  ret i32 %retval.0.i.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @prestera_hw_bridge_create(ptr nocapture noundef readonly %sw, ptr nocapture noundef writeonly %bridge_id) local_unnamed_addr #0 align 64 {
entry:
  %resp = alloca %struct.prestera_msg_bridge_resp, align 4
  %req = alloca %struct.prestera_msg_bridge_req, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %resp) #9
  %0 = getelementptr inbounds %struct.prestera_msg_ret, ptr %resp, i32 0, i32 1
  %1 = getelementptr inbounds %struct.prestera_msg_bridge_resp, ptr %resp, i32 0, i32 1
  %2 = call ptr @memset(ptr %resp, i32 255, i32 12)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %req) #9
  %3 = getelementptr inbounds i8, ptr %req, i32 4
  %4 = call ptr @memset(ptr %3, i32 255, i32 12)
  %5 = ptrtoint ptr %sw to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sw, align 4
  %7 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 262144, ptr %req, align 4
  %send_req.i.i = getelementptr inbounds %struct.prestera_device, ptr %6, i32 0, i32 7
  %8 = ptrtoint ptr %send_req.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %send_req.i.i, align 4
  %call.i.i = call i32 %9(ptr noundef %6, i32 noundef 0, ptr noundef nonnull %req, i32 noundef 16, ptr noundef nonnull %resp, i32 noundef 12, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i.i:                                       ; preds = %entry
  %10 = ptrtoint ptr %resp to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %resp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %11)
  %cmp.not.i.i = icmp eq i32 %11, 256
  br i1 %cmp.not.i.i, label %if.end6.i.i, label %if.end.i.i.cleanup_crit_edge

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6.i.i:                                      ; preds = %if.end.i.i
  %12 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp7.not.i.i = icmp eq i32 %13, 0
  br i1 %cmp7.not.i.i, label %if.end, label %if.end6.i.i.cleanup_crit_edge

if.end6.i.i.cleanup_crit_edge:                    ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %1, align 4
  %16 = call i16 @llvm.bswap.i16(i16 %15)
  %17 = ptrtoint ptr %bridge_id to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %bridge_id, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.end6.i.i.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %if.end6.i.i.cleanup_crit_edge ], [ -52, %if.end.i.i.cleanup_crit_edge ], [ %call.i.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %req) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %resp) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @prestera_hw_bridge_delete(ptr nocapture noundef readonly %sw, i16 noundef zeroext %bridge_id) local_unnamed_addr #0 align 64 {
entry:
  %resp.i = alloca %struct.prestera_msg_common_resp, align 4
  %req = alloca %struct.prestera_msg_bridge_req, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %req) #9
  %0 = getelementptr inbounds %struct.prestera_msg_bridge_req, ptr %req, i32 0, i32 1
  %1 = getelementptr inbounds %struct.prestera_msg_bridge_req, ptr %req, i32 0, i32 2
  %2 = getelementptr inbounds %struct.prestera_msg_bridge_req, ptr %req, i32 0, i32 3
  %3 = getelementptr inbounds %struct.prestera_msg_bridge_req, ptr %req, i32 0, i32 4
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %0, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %1, align 4
  %6 = tail call i16 @llvm.bswap.i16(i16 %bridge_id)
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %2, align 4
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 0, ptr %3, align 2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %resp.i) #9
  %9 = ptrtoint ptr %resp.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %resp.i, align 4, !annotation !24
  %10 = getelementptr inbounds %struct.prestera_msg_ret, ptr %resp.i, i32 0, i32 1
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %10, align 4, !annotation !24
  %12 = ptrtoint ptr %sw to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sw, align 4
  %14 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 17039360, ptr %req, align 4
  %send_req.i.i.i = getelementptr inbounds %struct.prestera_device, ptr %13, i32 0, i32 7
  %15 = ptrtoint ptr %send_req.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %send_req.i.i.i, align 4
  %call.i.i.i = call i32 %16(ptr noundef %13, i32 noundef 0, ptr noundef nonnull %req, i32 noundef 16, ptr noundef nonnull %resp.i, i32 noundef 8, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %entry.prestera_cmd.exit_crit_edge

entry.prestera_cmd.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %prestera_cmd.exit

if.end.i.i.i:                                     ; preds = %entry
  %17 = ptrtoint ptr %resp.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %resp.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %18)
  %cmp.not.i.i.i = icmp eq i32 %18, 256
  br i1 %cmp.not.i.i.i, label %if.end6.i.i.i, label %if.end.i.i.i.prestera_cmd.exit_crit_edge

if.end.i.i.i.prestera_cmd.exit_crit_edge:         ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %prestera_cmd.exit

if.end6.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp7.not.i.i.i = icmp eq i32 %20, 0
  %..i.i.i = select i1 %cmp7.not.i.i.i, i32 0, i32 -22
  br label %prestera_cmd.exit

prestera_cmd.exit:                                ; preds = %if.end6.i.i.i, %if.end.i.i.i.prestera_cmd.exit_crit_edge, %entry.prestera_cmd.exit_crit_edge
  %retval.0.i.i.i = phi i32 [ %call.i.i.i, %entry.prestera_cmd.exit_crit_edge ], [ -52, %if.end.i.i.i.prestera_cmd.exit_crit_edge ], [ %..i.i.i, %if.end6.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %resp.i) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %req) #9
  ret i32 %retval.0.i.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @prestera_hw_bridge_port_add(ptr nocapture noundef readonly %port, i16 noundef zeroext %bridge_id) local_unnamed_addr #0 align 64 {
entry:
  %resp.i = alloca %struct.prestera_msg_common_resp, align 4
  %req = alloca %struct.prestera_msg_bridge_req, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %req) #9
  %0 = getelementptr inbounds %struct.prestera_msg_bridge_req, ptr %req, i32 0, i32 1
  %1 = getelementptr inbounds %struct.prestera_msg_bridge_req, ptr %req, i32 0, i32 2
  %2 = getelementptr inbounds %struct.prestera_msg_bridge_req, ptr %req, i32 0, i32 3
  %3 = getelementptr inbounds %struct.prestera_msg_bridge_req, ptr %req, i32 0, i32 4
  %hw_id = getelementptr inbounds %struct.prestera_port, ptr %port, i32 0, i32 7
  %4 = ptrtoint ptr %hw_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hw_id, align 8
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %0, align 4
  %dev_id = getelementptr inbounds %struct.prestera_port, ptr %port, i32 0, i32 8
  %8 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dev_id, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %1, align 4
  %12 = tail call i16 @llvm.bswap.i16(i16 %bridge_id)
  %13 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %2, align 4
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 0, ptr %3, align 2
  %sw = getelementptr inbounds %struct.prestera_port, ptr %port, i32 0, i32 1
  %15 = ptrtoint ptr %sw to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sw, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %resp.i) #9
  %17 = ptrtoint ptr %resp.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %resp.i, align 4, !annotation !24
  %18 = getelementptr inbounds %struct.prestera_msg_ret, ptr %resp.i, i32 0, i32 1
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %18, align 4, !annotation !24
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %16, align 4
  %22 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 33816576, ptr %req, align 4
  %send_req.i.i.i = getelementptr inbounds %struct.prestera_device, ptr %21, i32 0, i32 7
  %23 = ptrtoint ptr %send_req.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %send_req.i.i.i, align 4
  %call.i.i.i = call i32 %24(ptr noundef %21, i32 noundef 0, ptr noundef nonnull %req, i32 noundef 16, ptr noundef nonnull %resp.i, i32 noundef 8, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %entry.prestera_cmd.exit_crit_edge

entry.prestera_cmd.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %prestera_cmd.exit

if.end.i.i.i:                                     ; preds = %entry
  %25 = ptrtoint ptr %resp.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %resp.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %26)
  %cmp.not.i.i.i = icmp eq i32 %26, 256
  br i1 %cmp.not.i.i.i, label %if.end6.i.i.i, label %if.end.i.i.i.prestera_cmd.exit_crit_edge

if.end.i.i.i.prestera_cmd.exit_crit_edge:         ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %prestera_cmd.exit

if.end6.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %27 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp7.not.i.i.i = icmp eq i32 %28, 0
  %..i.i.i = select i1 %cmp7.not.i.i.i, i32 0, i32 -22
  br label %prestera_cmd.exit

prestera_cmd.exit:                                ; preds = %if.end6.i.i.i, %if.end.i.i.i.prestera_cmd.exit_crit_edge, %entry.prestera_cmd.exit_crit_edge
  %retval.0.i.i.i = phi i32 [ %call.i.i.i, %entry.prestera_cmd.exit_crit_edge ], [ -52, %if.end.i.i.i.prestera_cmd.exit_crit_edge ], [ %..i.i.i, %if.end6.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %resp.i) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %req) #9
  ret i32 %retval.0.i.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @prestera_hw_bridge_port_delete(ptr nocapture noundef readonly %port, i16 noundef zeroext %bridge_id) local_unnamed_addr #0 align 64 {
entry:
  %resp.i = alloca %struct.prestera_msg_common_resp, align 4
  %req = alloca %struct.prestera_msg_bridge_req, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %req) #9
  %0 = getelementptr inbounds %struct.prestera_msg_bridge_req, ptr %req, i32 0, i32 1
  %1 = getelementptr inbounds %struct.prestera_msg_bridge_req, ptr %req, i32 0, i32 2
  %2 = getelementptr inbounds %struct.prestera_msg_bridge_req, ptr %req, i32 0, i32 3
  %3 = getelementptr inbounds %struct.prestera_msg_bridge_req, ptr %req, i32 0, i32 4
  %hw_id = getelementptr inbounds %struct.prestera_port, ptr %port, i32 0, i32 7
  %4 = ptrtoint ptr %hw_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hw_id, align 8
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %0, align 4
  %dev_id = getelementptr inbounds %struct.prestera_port, ptr %port, i32 0, i32 8
  %8 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dev_id, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %1, align 4
  %12 = tail call i16 @llvm.bswap.i16(i16 %bridge_id)
  %13 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %2, align 4
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 0, ptr %3, align 2
  %sw = getelementptr inbounds %struct.prestera_port, ptr %port, i32 0, i32 1
  %15 = ptrtoint ptr %sw to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sw, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %resp.i) #9
  %17 = ptrtoint ptr %resp.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %resp.i, align 4, !annotation !24
  %18 = getelementptr inbounds %struct.prestera_msg_ret, ptr %resp.i, i32 0, i32 1
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %18, align 4, !annotation !24
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %16, align 4
  %22 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 50593792, ptr %req, align 4
  %send_req.i.i.i = getelementptr inbounds %struct.prestera_device, ptr %21, i32 0, i32 7
  %23 = ptrtoint ptr %send_req.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %send_req.i.i.i, align 4
  %call.i.i.i = call i32 %24(ptr noundef %21, i32 noundef 0, ptr noundef nonnull %req, i32 noundef 16, ptr noundef nonnull %resp.i, i32 noundef 8, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %entry.prestera_cmd.exit_crit_edge

entry.prestera_cmd.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %prestera_cmd.exit

if.end.i.i.i:                                     ; preds = %entry
  %25 = ptrtoint ptr %resp.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %resp.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %26)
  %cmp.not.i.i.i = icmp eq i32 %26, 256
  br i1 %cmp.not.i.i.i, label %if.end6.i.i.i, label %if.end.i.i.i.prestera_cmd.exit_crit_edge

if.end.i.i.i.prestera_cmd.exit_crit_edge:         ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %prestera_cmd.exit

if.end6.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %27 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp7.not.i.i.i = icmp eq i32 %28, 0
  %..i.i.i = select i1 %cmp7.not.i.i.i, i32 0, i32 -22
  br label %prestera_cmd.exit

prestera_cmd.exit:                                ; preds = %if.end6.i.i.i, %if.end.i.i.i.prestera_cmd.exit_crit_edge, %entry.prestera_cmd.exit_crit_edge
  %retval.0.i.i.i = phi i32 [ %call.i.i.i, %entry.prestera_cmd.exit_crit_edge ], [ -52, %if.end.i.i.i.prestera_cmd.exit_crit_edge ], [ %..i.i.i, %if.end6.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %resp.i) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %req) #9
  ret i32 %retval.0.i.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @prestera_hw_rif_create(ptr nocapture noundef readonly %sw, ptr nocapture noundef readonly %iif, ptr nocapture noundef readonly %mac, ptr nocapture noundef writeonly %rif_id) local_unnamed_addr #0 align 64 {
entry:
  %resp = alloca %struct.prestera_msg_rif_resp, align 4
  %req = alloca %struct.prestera_msg_rif_req, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %resp) #9
  %0 = getelementptr inbounds %struct.prestera_msg_ret, ptr %resp, i32 0, i32 1
  %1 = getelementptr inbounds %struct.prestera_msg_rif_resp, ptr %resp, i32 0, i32 1
  %2 = call ptr @memset(ptr %resp, i32 255, i32 12)
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %req) #9
  %3 = getelementptr inbounds i8, ptr %req, i32 4
  %4 = call ptr @memset(ptr %3, i32 255, i32 32)
  %mac1 = getelementptr inbounds %struct.prestera_msg_rif_req, ptr %req, i32 0, i32 5
  %5 = call ptr @memcpy(ptr %mac1, ptr %mac, i32 6)
  %iif2 = getelementptr inbounds %struct.prestera_msg_rif_req, ptr %req, i32 0, i32 1
  %6 = ptrtoint ptr %iif to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %iif, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.5)
  switch i32 %7, label %entry.cleanup_crit_edge [
    i32 0, label %entry.sw.bb.i_crit_edge
    i32 3, label %entry.sw.bb.i_crit_edge18
    i32 1, label %sw.bb2.i
  ]

entry.sw.bb.i_crit_edge18:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i

entry.sw.bb.i_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb.i:                                          ; preds = %entry.sw.bb.i_crit_edge, %entry.sw.bb.i_crit_edge18
  %dev_port.i = getelementptr inbounds %struct.prestera_iface, ptr %iif, i32 0, i32 1
  %port_num.i = getelementptr inbounds %struct.prestera_iface, ptr %iif, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %port_num.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %port_num.i, align 4
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #9
  %port.i = getelementptr inbounds %struct.prestera_msg_rif_req, ptr %req, i32 0, i32 1, i32 0, i32 0, i32 1
  %12 = ptrtoint ptr %port.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %port.i, align 4
  %13 = ptrtoint ptr %dev_port.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dev_port.i, align 4
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #9
  %16 = ptrtoint ptr %iif2 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %iif2, align 4
  br label %if.end

sw.bb2.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %lag_id.i = getelementptr inbounds %struct.prestera_iface, ptr %iif, i32 0, i32 4
  %17 = ptrtoint ptr %lag_id.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %lag_id.i, align 2
  %19 = tail call i16 @llvm.bswap.i16(i16 %18) #9
  %20 = ptrtoint ptr %iif2 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %19, ptr %iif2, align 4
  br label %if.end

if.end:                                           ; preds = %sw.bb2.i, %sw.bb.i
  %vr_id.i = getelementptr inbounds %struct.prestera_iface, ptr %iif, i32 0, i32 3
  %21 = ptrtoint ptr %vr_id.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %vr_id.i, align 4
  %23 = tail call i16 @llvm.bswap.i16(i16 %22) #9
  %vr_id3.i = getelementptr inbounds %struct.prestera_msg_rif_req, ptr %req, i32 0, i32 1, i32 1
  %24 = ptrtoint ptr %vr_id3.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %23, ptr %vr_id3.i, align 4
  %vlan_id.i = getelementptr inbounds %struct.prestera_iface, ptr %iif, i32 0, i32 5
  %25 = ptrtoint ptr %vlan_id.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %vlan_id.i, align 4
  %27 = tail call i16 @llvm.bswap.i16(i16 %26) #9
  %vid.i = getelementptr inbounds %struct.prestera_msg_rif_req, ptr %req, i32 0, i32 1, i32 2
  %28 = ptrtoint ptr %vid.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %27, ptr %vid.i, align 2
  %conv.i = trunc i32 %7 to i8
  %type5.i = getelementptr inbounds %struct.prestera_msg_rif_req, ptr %req, i32 0, i32 1, i32 3
  %29 = ptrtoint ptr %type5.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv.i, ptr %type5.i, align 4
  %30 = ptrtoint ptr %sw to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %sw, align 4
  %32 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 393216, ptr %req, align 4
  %send_req.i.i = getelementptr inbounds %struct.prestera_device, ptr %31, i32 0, i32 7
  %33 = ptrtoint ptr %send_req.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %send_req.i.i, align 4
  %call.i.i = call i32 %34(ptr noundef %31, i32 noundef 0, ptr noundef nonnull %req, i32 noundef 36, ptr noundef nonnull %resp, i32 noundef 12, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end
  %35 = ptrtoint ptr %resp to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %resp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %36)
  %cmp.not.i.i = icmp eq i32 %36, 256
  br i1 %cmp.not.i.i, label %if.end6.i.i, label %if.end.i.i.cleanup_crit_edge

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6.i.i:                                      ; preds = %if.end.i.i
  %37 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp7.not.i.i = icmp eq i32 %38, 0
  br i1 %cmp7.not.i.i, label %if.end6, label %if.end6.i.i.cleanup_crit_edge

if.end6.i.i.cleanup_crit_edge:                    ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %39 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %1, align 4
  %41 = call i16 @llvm.bswap.i16(i16 %40)
  %42 = ptrtoint ptr %rif_id to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %41, ptr %rif_id, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end6.i.i.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6 ], [ -95, %entry.cleanup_crit_edge ], [ -22, %if.end6.i.i.cleanup_crit_edge ], [ -52, %if.end.i.i.cleanup_crit_edge ], [ %call.i.i, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %req) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %resp) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @prestera_hw_rif_delete(ptr nocapture noundef readonly %sw, i16 noundef zeroext %rif_id, ptr nocapture noundef readonly %iif) local_unnamed_addr #0 align 64 {
entry:
  %resp.i = alloca %struct.prestera_msg_common_resp, align 4
  %req = alloca %struct.prestera_msg_rif_req, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %req) #9
  %0 = getelementptr inbounds i8, ptr %req, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 32)
  %rif_id2 = getelementptr inbounds %struct.prestera_msg_rif_req, ptr %req, i32 0, i32 3
  %2 = tail call i16 @llvm.bswap.i16(i16 %rif_id)
  %3 = ptrtoint ptr %rif_id2 to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %2, ptr %rif_id2, align 4
  %iif3 = getelementptr inbounds %struct.prestera_msg_rif_req, ptr %req, i32 0, i32 1
  %4 = ptrtoint ptr %iif to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %iif, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %5, label %entry.cleanup_crit_edge [
    i32 0, label %entry.sw.bb.i_crit_edge
    i32 3, label %entry.sw.bb.i_crit_edge9
    i32 1, label %sw.bb2.i
  ]

entry.sw.bb.i_crit_edge9:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i

entry.sw.bb.i_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb.i:                                          ; preds = %entry.sw.bb.i_crit_edge, %entry.sw.bb.i_crit_edge9
  %dev_port.i = getelementptr inbounds %struct.prestera_iface, ptr %iif, i32 0, i32 1
  %port_num.i = getelementptr inbounds %struct.prestera_iface, ptr %iif, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %port_num.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %port_num.i, align 4
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #9
  %port.i = getelementptr inbounds %struct.prestera_msg_rif_req, ptr %req, i32 0, i32 1, i32 0, i32 0, i32 1
  %10 = ptrtoint ptr %port.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %port.i, align 4
  %11 = ptrtoint ptr %dev_port.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dev_port.i, align 4
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #9
  %14 = ptrtoint ptr %iif3 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %iif3, align 4
  br label %if.end

sw.bb2.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %lag_id.i = getelementptr inbounds %struct.prestera_iface, ptr %iif, i32 0, i32 4
  %15 = ptrtoint ptr %lag_id.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %lag_id.i, align 2
  %17 = tail call i16 @llvm.bswap.i16(i16 %16) #9
  %18 = ptrtoint ptr %iif3 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %iif3, align 4
  br label %if.end

if.end:                                           ; preds = %sw.bb2.i, %sw.bb.i
  %vr_id.i = getelementptr inbounds %struct.prestera_iface, ptr %iif, i32 0, i32 3
  %19 = ptrtoint ptr %vr_id.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %vr_id.i, align 4
  %21 = tail call i16 @llvm.bswap.i16(i16 %20) #9
  %vr_id3.i = getelementptr inbounds %struct.prestera_msg_rif_req, ptr %req, i32 0, i32 1, i32 1
  %22 = ptrtoint ptr %vr_id3.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %21, ptr %vr_id3.i, align 4
  %vlan_id.i = getelementptr inbounds %struct.prestera_iface, ptr %iif, i32 0, i32 5
  %23 = ptrtoint ptr %vlan_id.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %vlan_id.i, align 4
  %25 = tail call i16 @llvm.bswap.i16(i16 %24) #9
  %vid.i = getelementptr inbounds %struct.prestera_msg_rif_req, ptr %req, i32 0, i32 1, i32 2
  %26 = ptrtoint ptr %vid.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %25, ptr %vid.i, align 2
  %conv.i = trunc i32 %5 to i8
  %type5.i = getelementptr inbounds %struct.prestera_msg_rif_req, ptr %req, i32 0, i32 1, i32 3
  %27 = ptrtoint ptr %type5.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv.i, ptr %type5.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %resp.i) #9
  %28 = ptrtoint ptr %resp.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -1, ptr %resp.i, align 4, !annotation !24
  %29 = getelementptr inbounds %struct.prestera_msg_ret, ptr %resp.i, i32 0, i32 1
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -1, ptr %29, align 4, !annotation !24
  %31 = ptrtoint ptr %sw to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %sw, align 4
  %33 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 17170432, ptr %req, align 4
  %send_req.i.i.i = getelementptr inbounds %struct.prestera_device, ptr %32, i32 0, i32 7
  %34 = ptrtoint ptr %send_req.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %send_req.i.i.i, align 4
  %call.i.i.i = call i32 %35(ptr noundef %32, i32 noundef 0, ptr noundef nonnull %req, i32 noundef 36, ptr noundef nonnull %resp.i, i32 noundef 8, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.end.prestera_cmd.exit_crit_edge

if.end.prestera_cmd.exit_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %prestera_cmd.exit

if.end.i.i.i:                                     ; preds = %if.end
  %36 = ptrtoint ptr %resp.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %resp.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %37)
  %cmp.not.i.i.i = icmp eq i32 %37, 256
  br i1 %cmp.not.i.i.i, label %if.end6.i.i.i, label %if.end.i.i.i.prestera_cmd.exit_crit_edge

if.end.i.i.i.prestera_cmd.exit_crit_edge:         ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %prestera_cmd.exit

if.end6.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %38 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %29, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp7.not.i.i.i = icmp eq i32 %39, 0
  %..i.i.i = select i1 %cmp7.not.i.i.i, i32 0, i32 -22
  br label %prestera_cmd.exit

prestera_cmd.exit:                                ; preds = %if.end6.i.i.i, %if.end.i.i.i.prestera_cmd.exit_crit_edge, %if.end.prestera_cmd.exit_crit_edge
  %retval.0.i.i.i = phi i32 [ %call.i.i.i, %if.end.prestera_cmd.exit_crit_edge ], [ -52, %if.end.i.i.i.prestera_cmd.exit_crit_edge ], [ %..i.i.i, %if.end6.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %resp.i) #9
  br label %cleanup

cleanup:                                          ; preds = %prestera_cmd.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i.i.i, %prestera_cmd.exit ], [ -95, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %req) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @prestera_hw_vr_create(ptr nocapture noundef readonly %sw, ptr nocapture noundef writeonly %vr_id) local_unnamed_addr #0 align 64 {
entry:
  %resp = alloca %struct.prestera_msg_vr_resp, align 4
  %req = alloca %struct.prestera_msg_vr_req, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %resp) #9
  %0 = getelementptr inbounds %struct.prestera_msg_ret, ptr %resp, i32 0, i32 1
  %1 = getelementptr inbounds %struct.prestera_msg_vr_resp, ptr %resp, i32 0, i32 1
  %2 = call ptr @memset(ptr %resp, i32 255, i32 12)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %req) #9
  %3 = getelementptr inbounds i8, ptr %req, i32 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4
  %5 = ptrtoint ptr %sw to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sw, align 4
  %7 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 805699584, ptr %req, align 4
  %send_req.i.i = getelementptr inbounds %struct.prestera_device, ptr %6, i32 0, i32 7
  %8 = ptrtoint ptr %send_req.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %send_req.i.i, align 4
  %call.i.i = call i32 %9(ptr noundef %6, i32 noundef 0, ptr noundef nonnull %req, i32 noundef 8, ptr noundef nonnull %resp, i32 noundef 12, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i.i:                                       ; preds = %entry
  %10 = ptrtoint ptr %resp to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %resp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %11)
  %cmp.not.i.i = icmp eq i32 %11, 256
  br i1 %cmp.not.i.i, label %if.end6.i.i, label %if.end.i.i.cleanup_crit_edge

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6.i.i:                                      ; preds = %if.end.i.i
  %12 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp7.not.i.i = icmp eq i32 %13, 0
  br i1 %cmp7.not.i.i, label %if.end, label %if.end6.i.i.cleanup_crit_edge

if.end6.i.i.cleanup_crit_edge:                    ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %1, align 4
  %16 = call i16 @llvm.bswap.i16(i16 %15)
  %17 = ptrtoint ptr %vr_id to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %vr_id, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.end6.i.i.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0.i.i8 = phi i32 [ 0, %if.end ], [ -22, %if.end6.i.i.cleanup_crit_edge ], [ -52, %if.end.i.i.cleanup_crit_edge ], [ %call.i.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %req) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %resp) #9
  ret i32 %retval.0.i.i8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @prestera_hw_vr_delete(ptr nocapture noundef readonly %sw, i16 noundef zeroext %vr_id) local_unnamed_addr #0 align 64 {
entry:
  %resp.i = alloca %struct.prestera_msg_common_resp, align 4
  %req = alloca %struct.prestera_msg_vr_req, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %req) #9
  %0 = getelementptr inbounds %struct.prestera_msg_vr_req, ptr %req, i32 0, i32 1
  %1 = getelementptr inbounds %struct.prestera_msg_vr_req, ptr %req, i32 0, i32 2
  %2 = tail call i16 @llvm.bswap.i16(i16 %vr_id)
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %2, ptr %0, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 0, ptr %1, align 2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %resp.i) #9
  %5 = ptrtoint ptr %resp.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %resp.i, align 4, !annotation !24
  %6 = getelementptr inbounds %struct.prestera_msg_ret, ptr %resp.i, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %6, align 4, !annotation !24
  %8 = ptrtoint ptr %sw to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sw, align 4
  %10 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 822476800, ptr %req, align 4
  %send_req.i.i.i = getelementptr inbounds %struct.prestera_device, ptr %9, i32 0, i32 7
  %11 = ptrtoint ptr %send_req.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %send_req.i.i.i, align 4
  %call.i.i.i = call i32 %12(ptr noundef %9, i32 noundef 0, ptr noundef nonnull %req, i32 noundef 8, ptr noundef nonnull %resp.i, i32 noundef 8, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %entry.prestera_cmd.exit_crit_edge

entry.prestera_cmd.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %prestera_cmd.exit

if.end.i.i.i:                                     ; preds = %entry
  %13 = ptrtoint ptr %resp.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %resp.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %14)
  %cmp.not.i.i.i = icmp eq i32 %14, 256
  br i1 %cmp.not.i.i.i, label %if.end6.i.i.i, label %if.end.i.i.i.prestera_cmd.exit_crit_edge

if.end.i.i.i.prestera_cmd.exit_crit_edge:         ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %prestera_cmd.exit

if.end6.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp7.not.i.i.i = icmp eq i32 %16, 0
  %..i.i.i = select i1 %cmp7.not.i.i.i, i32 0, i32 -22
  br label %prestera_cmd.exit

prestera_cmd.exit:                                ; preds = %if.end6.i.i.i, %if.end.i.i.i.prestera_cmd.exit_crit_edge, %entry.prestera_cmd.exit_crit_edge
  %retval.0.i.i.i = phi i32 [ %call.i.i.i, %entry.prestera_cmd.exit_crit_edge ], [ -52, %if.end.i.i.i.prestera_cmd.exit_crit_edge ], [ %..i.i.i, %if.end6.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %resp.i) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %req) #9
  ret i32 %retval.0.i.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @prestera_hw_rxtx_init(ptr nocapture noundef readonly %sw, ptr nocapture noundef %params) local_unnamed_addr #0 align 64 {
entry:
  %resp = alloca %struct.prestera_msg_rxtx_resp, align 4
  %req = alloca %struct.prestera_msg_rxtx_req, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %resp) #9
  %0 = ptrtoint ptr %resp to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %resp, align 4, !annotation !24
  %1 = getelementptr inbounds %struct.prestera_msg_ret, ptr %resp, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !24
  %3 = getelementptr inbounds %struct.prestera_msg_rxtx_resp, ptr %resp, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %req) #9
  %5 = getelementptr inbounds %struct.prestera_msg_rxtx_req, ptr %req, i32 0, i32 1
  %6 = getelementptr inbounds i8, ptr %req, i32 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %6, align 4
  %8 = ptrtoint ptr %params to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %params, align 4, !range !26
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %5, align 4
  %11 = ptrtoint ptr %sw to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sw, align 4
  %13 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 524288, ptr %req, align 4
  %send_req.i.i = getelementptr inbounds %struct.prestera_device, ptr %12, i32 0, i32 7
  %14 = ptrtoint ptr %send_req.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %send_req.i.i, align 4
  %call.i.i = call i32 %15(ptr noundef %12, i32 noundef 0, ptr noundef nonnull %req, i32 noundef 8, ptr noundef nonnull %resp, i32 noundef 12, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i.i:                                       ; preds = %entry
  %16 = ptrtoint ptr %resp to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %resp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %17)
  %cmp.not.i.i = icmp eq i32 %17, 256
  br i1 %cmp.not.i.i, label %if.end6.i.i, label %if.end.i.i.cleanup_crit_edge

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6.i.i:                                      ; preds = %if.end.i.i
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp7.not.i.i = icmp eq i32 %19, 0
  br i1 %cmp7.not.i.i, label %if.end, label %if.end6.i.i.cleanup_crit_edge

if.end6.i.i.cleanup_crit_edge:                    ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %3, align 4
  %22 = call i32 @llvm.bswap.i32(i32 %21)
  %map_addr3 = getelementptr inbounds %struct.prestera_rxtx_params, ptr %params, i32 0, i32 1
  %23 = ptrtoint ptr %map_addr3 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %map_addr3, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.end6.i.i.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %if.end6.i.i.cleanup_crit_edge ], [ -52, %if.end.i.i.cleanup_crit_edge ], [ %call.i.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %req) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %resp) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @prestera_hw_lag_member_add(ptr nocapture noundef readonly %port, i16 noundef zeroext %lag_id) local_unnamed_addr #0 align 64 {
entry:
  %resp.i = alloca %struct.prestera_msg_common_resp, align 4
  %req = alloca %struct.prestera_msg_lag_req, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %req) #9
  %0 = getelementptr inbounds %struct.prestera_msg_lag_req, ptr %req, i32 0, i32 1
  %1 = getelementptr inbounds %struct.prestera_msg_lag_req, ptr %req, i32 0, i32 2
  %2 = getelementptr inbounds %struct.prestera_msg_lag_req, ptr %req, i32 0, i32 3
  %3 = getelementptr inbounds %struct.prestera_msg_lag_req, ptr %req, i32 0, i32 4
  %hw_id = getelementptr inbounds %struct.prestera_port, ptr %port, i32 0, i32 7
  %4 = ptrtoint ptr %hw_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hw_id, align 8
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %0, align 4
  %dev_id = getelementptr inbounds %struct.prestera_port, ptr %port, i32 0, i32 8
  %8 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dev_id, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %1, align 4
  %12 = tail call i16 @llvm.bswap.i16(i16 %lag_id)
  %13 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %2, align 4
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 0, ptr %3, align 2
  %sw = getelementptr inbounds %struct.prestera_port, ptr %port, i32 0, i32 1
  %15 = ptrtoint ptr %sw to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sw, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %resp.i) #9
  %17 = ptrtoint ptr %resp.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %resp.i, align 4, !annotation !24
  %18 = getelementptr inbounds %struct.prestera_msg_ret, ptr %resp.i, i32 0, i32 1
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %18, align 4, !annotation !24
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %16, align 4
  %22 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 589824, ptr %req, align 4
  %send_req.i.i.i = getelementptr inbounds %struct.prestera_device, ptr %21, i32 0, i32 7
  %23 = ptrtoint ptr %send_req.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %send_req.i.i.i, align 4
  %call.i.i.i = call i32 %24(ptr noundef %21, i32 noundef 0, ptr noundef nonnull %req, i32 noundef 16, ptr noundef nonnull %resp.i, i32 noundef 8, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %entry.prestera_cmd.exit_crit_edge

entry.prestera_cmd.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %prestera_cmd.exit

if.end.i.i.i:                                     ; preds = %entry
  %25 = ptrtoint ptr %resp.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %resp.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %26)
  %cmp.not.i.i.i = icmp eq i32 %26, 256
  br i1 %cmp.not.i.i.i, label %if.end6.i.i.i, label %if.end.i.i.i.prestera_cmd.exit_crit_edge

if.end.i.i.i.prestera_cmd.exit_crit_edge:         ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %prestera_cmd.exit

if.end6.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %27 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp7.not.i.i.i = icmp eq i32 %28, 0
  %..i.i.i = select i1 %cmp7.not.i.i.i, i32 0, i32 -22
  br label %prestera_cmd.exit

prestera_cmd.exit:                                ; preds = %if.end6.i.i.i, %if.end.i.i.i.prestera_cmd.exit_crit_edge, %entry.prestera_cmd.exit_crit_edge
  %retval.0.i.i.i = phi i32 [ %call.i.i.i, %entry.prestera_cmd.exit_crit_edge ], [ -52, %if.end.i.i.i.prestera_cmd.exit_crit_edge ], [ %..i.i.i, %if.end6.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %resp.i) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %req) #9
  ret i32 %retval.0.i.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @prestera_hw_lag_member_del(ptr nocapture noundef readonly %port, i16 noundef zeroext %lag_id) local_unnamed_addr #0 align 64 {
entry:
  %resp.i = alloca %struct.prestera_msg_common_resp, align 4
  %req = alloca %struct.prestera_msg_lag_req, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %req) #9
  %0 = getelementptr inbounds %struct.prestera_msg_lag_req, ptr %req, i32 0, i32 1
  %1 = getelementptr inbounds %struct.prestera_msg_lag_req, ptr %req, i32 0, i32 2
  %2 = getelementptr inbounds %struct.prestera_msg_lag_req, ptr %req, i32 0, i32 3
  %3 = getelementptr inbounds %struct.prestera_msg_lag_req, ptr %req, i32 0, i32 4
  %hw_id = getelementptr inbounds %struct.prestera_port, ptr %port, i32 0, i32 7
  %4 = ptrtoint ptr %hw_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hw_id, align 8
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %0, align 4
  %dev_id = getelementptr inbounds %struct.prestera_port, ptr %port, i32 0, i32 8
  %8 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dev_id, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %1, align 4
  %12 = tail call i16 @llvm.bswap.i16(i16 %lag_id)
  %13 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %2, align 4
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 0, ptr %3, align 2
  %sw = getelementptr inbounds %struct.prestera_port, ptr %port, i32 0, i32 1
  %15 = ptrtoint ptr %sw to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sw, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %resp.i) #9
  %17 = ptrtoint ptr %resp.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %resp.i, align 4, !annotation !24
  %18 = getelementptr inbounds %struct.prestera_msg_ret, ptr %resp.i, i32 0, i32 1
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %18, align 4, !annotation !24
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %16, align 4
  %22 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 17367040, ptr %req, align 4
  %send_req.i.i.i = getelementptr inbounds %struct.prestera_device, ptr %21, i32 0, i32 7
  %23 = ptrtoint ptr %send_req.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %send_req.i.i.i, align 4
  %call.i.i.i = call i32 %24(ptr noundef %21, i32 noundef 0, ptr noundef nonnull %req, i32 noundef 16, ptr noundef nonnull %resp.i, i32 noundef 8, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %entry.prestera_cmd.exit_crit_edge

entry.prestera_cmd.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %prestera_cmd.exit

if.end.i.i.i:                                     ; preds = %entry
  %25 = ptrtoint ptr %resp.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %resp.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %26)
  %cmp.not.i.i.i = icmp eq i32 %26, 256
  br i1 %cmp.not.i.i.i, label %if.end6.i.i.i, label %if.end.i.i.i.prestera_cmd.exit_crit_edge

if.end.i.i.i.prestera_cmd.exit_crit_edge:         ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %prestera_cmd.exit

if.end6.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %27 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp7.not.i.i.i = icmp eq i32 %28, 0
  %..i.i.i = select i1 %cmp7.not.i.i.i, i32 0, i32 -22
  br label %prestera_cmd.exit

prestera_cmd.exit:                                ; preds = %if.end6.i.i.i, %if.end.i.i.i.prestera_cmd.exit_crit_edge, %entry.prestera_cmd.exit_crit_edge
  %retval.0.i.i.i = phi i32 [ %call.i.i.i, %entry.prestera_cmd.exit_crit_edge ], [ -52, %if.end.i.i.i.prestera_cmd.exit_crit_edge ], [ %..i.i.i, %if.end6.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %resp.i) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %req) #9
  ret i32 %retval.0.i.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @prestera_hw_lag_member_enable(ptr nocapture noundef readonly %port, i16 noundef zeroext %lag_id, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  %resp.i = alloca %struct.prestera_msg_common_resp, align 4
  %req = alloca %struct.prestera_msg_lag_req, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %req) #9
  %0 = getelementptr inbounds %struct.prestera_msg_lag_req, ptr %req, i32 0, i32 1
  %1 = getelementptr inbounds %struct.prestera_msg_lag_req, ptr %req, i32 0, i32 2
  %2 = getelementptr inbounds %struct.prestera_msg_lag_req, ptr %req, i32 0, i32 3
  %3 = getelementptr inbounds %struct.prestera_msg_lag_req, ptr %req, i32 0, i32 4
  %hw_id = getelementptr inbounds %struct.prestera_port, ptr %port, i32 0, i32 7
  %4 = ptrtoint ptr %hw_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hw_id, align 8
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %0, align 4
  %dev_id = getelementptr inbounds %struct.prestera_port, ptr %port, i32 0, i32 8
  %8 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dev_id, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %1, align 4
  %12 = tail call i16 @llvm.bswap.i16(i16 %lag_id)
  %13 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %2, align 4
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 0, ptr %3, align 2
  %cond = select i1 %enable, i32 2306, i32 2307
  %sw = getelementptr inbounds %struct.prestera_port, ptr %port, i32 0, i32 1
  %15 = ptrtoint ptr %sw to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sw, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %resp.i) #9
  %17 = ptrtoint ptr %resp.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %resp.i, align 4, !annotation !24
  %18 = getelementptr inbounds %struct.prestera_msg_ret, ptr %resp.i, i32 0, i32 1
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %18, align 4, !annotation !24
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %16, align 4
  %22 = tail call i32 @llvm.bswap.i32(i32 %cond) #9
  %23 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %req, align 4
  %send_req.i.i.i = getelementptr inbounds %struct.prestera_device, ptr %21, i32 0, i32 7
  %24 = ptrtoint ptr %send_req.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %send_req.i.i.i, align 4
  %call.i.i.i = call i32 %25(ptr noundef %21, i32 noundef 0, ptr noundef nonnull %req, i32 noundef 16, ptr noundef nonnull %resp.i, i32 noundef 8, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %entry.prestera_cmd.exit_crit_edge

entry.prestera_cmd.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %prestera_cmd.exit

if.end.i.i.i:                                     ; preds = %entry
  %26 = ptrtoint ptr %resp.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %resp.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %27)
  %cmp.not.i.i.i = icmp eq i32 %27, 256
  br i1 %cmp.not.i.i.i, label %if.end6.i.i.i, label %if.end.i.i.i.prestera_cmd.exit_crit_edge

if.end.i.i.i.prestera_cmd.exit_crit_edge:         ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %prestera_cmd.exit

if.end6.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %28 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp7.not.i.i.i = icmp eq i32 %29, 0
  %..i.i.i = select i1 %cmp7.not.i.i.i, i32 0, i32 -22
  br label %prestera_cmd.exit

prestera_cmd.exit:                                ; preds = %if.end6.i.i.i, %if.end.i.i.i.prestera_cmd.exit_crit_edge, %entry.prestera_cmd.exit_crit_edge
  %retval.0.i.i.i = phi i32 [ %call.i.i.i, %entry.prestera_cmd.exit_crit_edge ], [ -52, %if.end.i.i.i.prestera_cmd.exit_crit_edge ], [ %..i.i.i, %if.end6.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %resp.i) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %req) #9
  ret i32 %retval.0.i.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @prestera_hw_cpu_code_counters_get(ptr nocapture noundef readonly %sw, i8 noundef zeroext %code, i32 noundef %counter_type, ptr nocapture noundef writeonly %packet_count) local_unnamed_addr #0 align 64 {
entry:
  %req = alloca %struct.prestera_msg_cpu_code_counter_req, align 4
  %resp = alloca %struct.mvsw_msg_cpu_code_counter_ret, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %req) #9
  %0 = getelementptr inbounds %struct.prestera_msg_cpu_code_counter_req, ptr %req, i32 0, i32 1
  %1 = getelementptr inbounds %struct.prestera_msg_cpu_code_counter_req, ptr %req, i32 0, i32 2
  %2 = getelementptr inbounds %struct.prestera_msg_cpu_code_counter_req, ptr %req, i32 0, i32 3
  %conv = trunc i32 %counter_type to i8
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv, ptr %0, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %code, ptr %1, align 1
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 0, ptr %2, align 2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %resp) #9
  %6 = getelementptr inbounds %struct.prestera_msg_ret, ptr %resp, i32 0, i32 1
  %7 = getelementptr inbounds %struct.mvsw_msg_cpu_code_counter_ret, ptr %resp, i32 0, i32 1
  %8 = call ptr @memset(ptr %resp, i32 255, i32 16)
  %9 = ptrtoint ptr %sw to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sw, align 4
  %11 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 2097152, ptr %req, align 4
  %send_req.i.i = getelementptr inbounds %struct.prestera_device, ptr %10, i32 0, i32 7
  %12 = ptrtoint ptr %send_req.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %send_req.i.i, align 4
  %call.i.i = call i32 %13(ptr noundef %10, i32 noundef 0, ptr noundef nonnull %req, i32 noundef 8, ptr noundef nonnull %resp, i32 noundef 16, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i.i:                                       ; preds = %entry
  %14 = ptrtoint ptr %resp to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %resp, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %15)
  %cmp.not.i.i = icmp eq i32 %15, 256
  br i1 %cmp.not.i.i, label %if.end6.i.i, label %if.end.i.i.cleanup_crit_edge

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6.i.i:                                      ; preds = %if.end.i.i
  %16 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp7.not.i.i = icmp eq i32 %17, 0
  br i1 %cmp7.not.i.i, label %if.end, label %if.end6.i.i.cleanup_crit_edge

if.end6.i.i.cleanup_crit_edge:                    ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %7 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %7, align 8
  %20 = call i64 @llvm.bswap.i64(i64 %19)
  %21 = ptrtoint ptr %packet_count to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %20, ptr %packet_count, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.end6.i.i.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %if.end6.i.i.cleanup_crit_edge ], [ -52, %if.end.i.i.cleanup_crit_edge ], [ %call.i.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %resp) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %req) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @prestera_hw_event_handler_register(ptr noundef %sw, i32 noundef %type, ptr noundef %fn, ptr noundef %arg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @rcu_read_lock_any_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %entry.do.end.i_crit_edge

entry.do.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %.b27.i = load i1, ptr @__find_event_handler.__warned, align 1
  br i1 %.b27.i, label %land.lhs.true3.i.do.end.i_crit_edge, label %if.then.i

land.lhs.true3.i.do.end.i_crit_edge:              ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

if.then.i:                                        ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @__find_event_handler.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 737, ptr noundef nonnull @.str.4) #9
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %land.lhs.true3.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  %event_handlers.i = getelementptr inbounds %struct.prestera_switch, ptr %sw, i32 0, i32 5
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %do.end.i
  %eh.0.in.i = phi ptr [ %event_handlers.i, %do.end.i ], [ %eh.0.i, %for.body.i.for.cond.i_crit_edge ]
  %0 = ptrtoint ptr %eh.0.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %eh.0.i = load volatile ptr, ptr %eh.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %eh.0.i, %event_handlers.i
  br i1 %cmp.not.i, label %for.cond.i.if.end_crit_edge, label %for.body.i

for.cond.i.if.end_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

for.body.i:                                       ; preds = %for.cond.i
  %type10.i = getelementptr inbounds %struct.prestera_fw_event_handler, ptr %eh.0.i, i32 0, i32 2
  %1 = ptrtoint ptr %type10.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %type10.i, align 4
  %cmp11.i = icmp eq i32 %2, %type
  br i1 %cmp11.i, label %__find_event_handler.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i

__find_event_handler.exit:                        ; preds = %for.body.i
  %tobool.not = icmp eq ptr %eh.0.i, null
  br i1 %tobool.not, label %__find_event_handler.exit.if.end_crit_edge, label %__find_event_handler.exit.cleanup_crit_edge

__find_event_handler.exit.cleanup_crit_edge:      ; preds = %__find_event_handler.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

__find_event_handler.exit.if.end_crit_edge:       ; preds = %__find_event_handler.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end:                                           ; preds = %__find_event_handler.exit.if.end_crit_edge, %for.cond.i.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3264, i32 noundef 28) #13
  %tobool2.not = icmp eq ptr %call7.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %type5 = getelementptr inbounds %struct.prestera_fw_event_handler, ptr %call7.i, i32 0, i32 2
  %4 = ptrtoint ptr %type5 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %type, ptr %type5, align 8
  %func = getelementptr inbounds %struct.prestera_fw_event_handler, ptr %call7.i, i32 0, i32 3
  %5 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %fn, ptr %func, align 4
  %arg6 = getelementptr inbounds %struct.prestera_fw_event_handler, ptr %call7.i, i32 0, i32 4
  %6 = ptrtoint ptr %arg6 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %arg, ptr %arg6, align 8
  %7 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %call7.i, ptr %call7.i, align 8
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call7.i, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call7.i, ptr %prev.i, align 4
  %9 = ptrtoint ptr %event_handlers.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %event_handlers.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i, ptr noundef %event_handlers.i, ptr noundef %10) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %call7.i, align 8
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %event_handlers.i, ptr %prev.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !27
  %13 = ptrtoint ptr %event_handlers.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %call7.i, ptr %event_handlers.i, align 4
  %prev37.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %14 = ptrtoint ptr %prev37.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call7.i, ptr %prev37.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %__find_event_handler.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -17, %__find_event_handler.exit.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %if.end4.cleanup_crit_edge ], [ 0, %if.end.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @prestera_hw_event_handler_unregister(ptr noundef %sw, i32 noundef %type, ptr nocapture noundef readnone %fn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @rcu_read_lock_any_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %entry.do.end.i_crit_edge

entry.do.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %.b27.i = load i1, ptr @__find_event_handler.__warned, align 1
  br i1 %.b27.i, label %land.lhs.true3.i.do.end.i_crit_edge, label %if.then.i

land.lhs.true3.i.do.end.i_crit_edge:              ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

if.then.i:                                        ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @__find_event_handler.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 737, ptr noundef nonnull @.str.4) #9
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %land.lhs.true3.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  %event_handlers.i = getelementptr inbounds %struct.prestera_switch, ptr %sw, i32 0, i32 5
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %do.end.i
  %eh.0.in.i = phi ptr [ %event_handlers.i, %do.end.i ], [ %eh.0.i, %for.body.i.for.cond.i_crit_edge ]
  %0 = ptrtoint ptr %eh.0.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %eh.0.i = load volatile ptr, ptr %eh.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %eh.0.i, %event_handlers.i
  br i1 %cmp.not.i, label %for.cond.i.cleanup_crit_edge, label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i
  %type10.i = getelementptr inbounds %struct.prestera_fw_event_handler, ptr %eh.0.i, i32 0, i32 2
  %1 = ptrtoint ptr %type10.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %type10.i, align 4
  %cmp11.i = icmp eq i32 %2, %type
  br i1 %cmp11.i, label %__find_event_handler.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i

__find_event_handler.exit:                        ; preds = %for.body.i
  %tobool.not = icmp eq ptr %eh.0.i, null
  br i1 %tobool.not, label %__find_event_handler.exit.cleanup_crit_edge, label %if.end

__find_event_handler.exit.cleanup_crit_edge:      ; preds = %__find_event_handler.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %__find_event_handler.exit
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %eh.0.i) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del_rcu.exit_crit_edge

if.end.list_del_rcu.exit_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_rcu.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %eh.0.i, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %eh.0.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %eh.0.i, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del_rcu.exit

list_del_rcu.exit:                                ; preds = %if.end.i.i, %if.end.list_del_rcu.exit_crit_edge
  %prev.i = getelementptr inbounds %struct.list_head, ptr %eh.0.i, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %rcu = getelementptr inbounds %struct.prestera_fw_event_handler, ptr %eh.0.i, i32 0, i32 1
  tail call void @kvfree_call_rcu(ptr noundef %rcu, ptr noundef nonnull inttoptr (i32 8 to ptr)) #9
  br label %cleanup

cleanup:                                          ; preds = %list_del_rcu.exit, %__find_event_handler.exit.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @prestera_hw_counter_trigger(ptr nocapture noundef readonly %sw, i32 noundef %block_id) local_unnamed_addr #0 align 64 {
entry:
  %resp.i = alloca %struct.prestera_msg_common_resp, align 4
  %req = alloca %struct.prestera_msg_counter_req, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %req) #9
  %0 = getelementptr inbounds %struct.prestera_msg_counter_req, ptr %req, i32 0, i32 1
  %1 = getelementptr inbounds %struct.prestera_msg_counter_req, ptr %req, i32 0, i32 2
  %2 = getelementptr inbounds %struct.prestera_msg_counter_req, ptr %req, i32 0, i32 3
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %0, align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %block_id)
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %1, align 4
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %2, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %resp.i) #9
  %7 = ptrtoint ptr %resp.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %resp.i, align 4, !annotation !24
  %8 = getelementptr inbounds %struct.prestera_msg_ret, ptr %resp.i, i32 0, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %8, align 4, !annotation !24
  %10 = ptrtoint ptr %sw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sw, align 4
  %12 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 302317568, ptr %req, align 4
  %send_req.i.i.i = getelementptr inbounds %struct.prestera_device, ptr %11, i32 0, i32 7
  %13 = ptrtoint ptr %send_req.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %send_req.i.i.i, align 4
  %call.i.i.i = call i32 %14(ptr noundef %11, i32 noundef 0, ptr noundef nonnull %req, i32 noundef 16, ptr noundef nonnull %resp.i, i32 noundef 8, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %entry.prestera_cmd.exit_crit_edge

entry.prestera_cmd.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %prestera_cmd.exit

if.end.i.i.i:                                     ; preds = %entry
  %15 = ptrtoint ptr %resp.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %resp.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %16)
  %cmp.not.i.i.i = icmp eq i32 %16, 256
  br i1 %cmp.not.i.i.i, label %if.end6.i.i.i, label %if.end.i.i.i.prestera_cmd.exit_crit_edge

if.end.i.i.i.prestera_cmd.exit_crit_edge:         ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %prestera_cmd.exit

if.end6.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp7.not.i.i.i = icmp eq i32 %18, 0
  %..i.i.i = select i1 %cmp7.not.i.i.i, i32 0, i32 -22
  br label %prestera_cmd.exit

prestera_cmd.exit:                                ; preds = %if.end6.i.i.i, %if.end.i.i.i.prestera_cmd.exit_crit_edge, %entry.prestera_cmd.exit_crit_edge
  %retval.0.i.i.i = phi i32 [ %call.i.i.i, %entry.prestera_cmd.exit_crit_edge ], [ -52, %if.end.i.i.i.prestera_cmd.exit_crit_edge ], [ %..i.i.i, %if.end6.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %resp.i) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %req) #9
  ret i32 %retval.0.i.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @prestera_hw_counter_abort(ptr nocapture noundef readonly %sw) local_unnamed_addr #0 align 64 {
entry:
  %resp.i = alloca %struct.prestera_msg_common_resp, align 4
  %req = alloca %struct.prestera_msg_counter_req, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %req) #9
  %0 = getelementptr inbounds i8, ptr %req, i32 4
  %1 = call ptr @memset(ptr %0, i32 255, i32 12)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %resp.i) #9
  %2 = ptrtoint ptr %resp.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %resp.i, align 4, !annotation !24
  %3 = getelementptr inbounds %struct.prestera_msg_ret, ptr %resp.i, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !24
  %5 = ptrtoint ptr %sw to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sw, align 4
  %7 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 285540352, ptr %req, align 4
  %send_req.i.i.i = getelementptr inbounds %struct.prestera_device, ptr %6, i32 0, i32 7
  %8 = ptrtoint ptr %send_req.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %send_req.i.i.i, align 4
  %call.i.i.i = call i32 %9(ptr noundef %6, i32 noundef 0, ptr noundef nonnull %req, i32 noundef 16, ptr noundef nonnull %resp.i, i32 noundef 8, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %entry.prestera_cmd.exit_crit_edge

entry.prestera_cmd.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %prestera_cmd.exit

if.end.i.i.i:                                     ; preds = %entry
  %10 = ptrtoint ptr %resp.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %resp.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %11)
  %cmp.not.i.i.i = icmp eq i32 %11, 256
  br i1 %cmp.not.i.i.i, label %if.end6.i.i.i, label %if.end.i.i.i.prestera_cmd.exit_crit_edge

if.end.i.i.i.prestera_cmd.exit_crit_edge:         ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %prestera_cmd.exit

if.end6.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp7.not.i.i.i = icmp eq i32 %13, 0
  %..i.i.i = select i1 %cmp7.not.i.i.i, i32 0, i32 -22
  br label %prestera_cmd.exit

prestera_cmd.exit:                                ; preds = %if.end6.i.i.i, %if.end.i.i.i.prestera_cmd.exit_crit_edge, %entry.prestera_cmd.exit_crit_edge
  %retval.0.i.i.i = phi i32 [ %call.i.i.i, %entry.prestera_cmd.exit_crit_edge ], [ -52, %if.end.i.i.i.prestera_cmd.exit_crit_edge ], [ %..i.i.i, %if.end6.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %resp.i) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %req) #9
  ret i32 %retval.0.i.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @prestera_hw_counters_get(ptr nocapture noundef readonly %sw, i32 noundef %idx, ptr nocapture noundef %len, ptr nocapture noundef writeonly %done, ptr nocapture noundef %stats) local_unnamed_addr #0 align 64 {
entry:
  %req = alloca %struct.prestera_msg_counter_req, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %req) #9
  %0 = getelementptr inbounds %struct.prestera_msg_counter_req, ptr %req, i32 0, i32 1
  %1 = getelementptr inbounds %struct.prestera_msg_counter_req, ptr %req, i32 0, i32 2
  %2 = getelementptr inbounds %struct.prestera_msg_counter_req, ptr %req, i32 0, i32 3
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %0, align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %idx)
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %1, align 4
  %6 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %2, align 4
  %10 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %7, i32 16) #9
  %11 = extractvalue { i32, i1 } %10, 1
  %12 = extractvalue { i32, i1 } %10, 0
  %spec.select.i = tail call i32 @llvm.uadd.sat.i32(i32 %12, i32 24) #9
  %retval.0.i = select i1 %11, i32 -1, i32 %spec.select.i
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %retval.0.i, i32 noundef 3264) #12
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %13 = ptrtoint ptr %sw to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sw, align 4
  %15 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 268763136, ptr %req, align 4
  %send_req.i.i = getelementptr inbounds %struct.prestera_device, ptr %14, i32 0, i32 7
  %16 = ptrtoint ptr %send_req.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %send_req.i.i, align 4
  %call.i.i = call i32 %17(ptr noundef %14, i32 noundef 0, ptr noundef nonnull %req, i32 noundef 16, ptr noundef nonnull %call9.i, i32 noundef %retval.0.i, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i40 = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i40, label %if.end.i.i41, label %if.end.free_buff_crit_edge

if.end.free_buff_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_buff

if.end.i.i41:                                     ; preds = %if.end
  %18 = ptrtoint ptr %call9.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %call9.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %19)
  %cmp.not.i.i = icmp eq i32 %19, 256
  br i1 %cmp.not.i.i, label %if.end6.i.i, label %if.end.i.i41.free_buff_crit_edge

if.end.i.i41.free_buff_crit_edge:                 ; preds = %if.end.i.i41
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_buff

if.end6.i.i:                                      ; preds = %if.end.i.i41
  %status.i.i = getelementptr inbounds %struct.prestera_msg_ret, ptr %call9.i, i32 0, i32 1
  %20 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %status.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp7.not.i.i = icmp eq i32 %21, 0
  br i1 %cmp7.not.i.i, label %for.cond.preheader, label %if.end6.i.i.free_buff_crit_edge

if.end6.i.i.free_buff_crit_edge:                  ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_buff

for.cond.preheader:                               ; preds = %if.end6.i.i
  %num_counters7 = getelementptr inbounds %struct.prestera_msg_counter_resp, ptr %call9.i, i32 0, i32 3
  %22 = ptrtoint ptr %num_counters7 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %num_counters7, align 16
  %24 = call i32 @llvm.bswap.i32(i32 %23)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp45.not = icmp eq i32 %23, 0
  br i1 %cmp45.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.preheader

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.preheader:                               ; preds = %for.cond.preheader
  %umax = call i32 @llvm.umax.i32(i32 %24, i32 1)
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.046 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr %struct.prestera_msg_counter_resp, ptr %call9.i, i32 0, i32 5, i32 %i.046
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %arrayidx, align 8
  %27 = call i64 @llvm.bswap.i64(i64 %26)
  %arrayidx9 = getelementptr %struct.prestera_counter_stats, ptr %stats, i32 %i.046
  %28 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %arrayidx9, align 8
  %add = add i64 %29, %27
  store i64 %add, ptr %arrayidx9, align 8
  %bytes = getelementptr %struct.prestera_msg_counter_resp, ptr %call9.i, i32 0, i32 5, i32 %i.046, i32 1
  %30 = ptrtoint ptr %bytes to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %bytes, align 16
  %32 = call i64 @llvm.bswap.i64(i64 %31)
  %bytes14 = getelementptr %struct.prestera_counter_stats, ptr %stats, i32 %i.046, i32 1
  %33 = ptrtoint ptr %bytes14 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %bytes14, align 8
  %add15 = add i64 %34, %32
  store i64 %add15, ptr %bytes14, align 8
  %inc = add nuw i32 %i.046, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %35 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %24, ptr %len, align 4
  %done17 = getelementptr inbounds %struct.prestera_msg_counter_resp, ptr %call9.i, i32 0, i32 4
  %36 = ptrtoint ptr %done17 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %done17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool18 = icmp ne i32 %37, 0
  %frombool = zext i1 %tobool18 to i8
  %38 = ptrtoint ptr %done to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %frombool, ptr %done, align 1
  br label %free_buff

free_buff:                                        ; preds = %for.end, %if.end6.i.i.free_buff_crit_edge, %if.end.i.i41.free_buff_crit_edge, %if.end.free_buff_crit_edge
  %retval.0.i.i44 = phi i32 [ 0, %for.end ], [ -22, %if.end6.i.i.free_buff_crit_edge ], [ -52, %if.end.i.i41.free_buff_crit_edge ], [ %call.i.i, %if.end.free_buff_crit_edge ]
  call void @kfree(ptr noundef nonnull %call9.i) #9
  br label %cleanup

cleanup:                                          ; preds = %free_buff, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i.i44, %free_buff ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %req) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @prestera_hw_counter_block_get(ptr nocapture noundef readonly %sw, i32 noundef %client, ptr nocapture noundef writeonly %block_id, ptr nocapture noundef writeonly %offset, ptr nocapture noundef writeonly %num_counters) local_unnamed_addr #0 align 64 {
entry:
  %resp = alloca %struct.prestera_msg_counter_resp, align 8
  %req = alloca %struct.prestera_msg_counter_req, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %resp) #9
  %0 = getelementptr inbounds %struct.prestera_msg_ret, ptr %resp, i32 0, i32 1
  %1 = getelementptr inbounds %struct.prestera_msg_counter_resp, ptr %resp, i32 0, i32 1
  %2 = getelementptr inbounds %struct.prestera_msg_counter_resp, ptr %resp, i32 0, i32 2
  %3 = getelementptr inbounds %struct.prestera_msg_counter_resp, ptr %resp, i32 0, i32 3
  %4 = call ptr @memset(ptr %resp, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %req) #9
  %5 = getelementptr inbounds %struct.prestera_msg_counter_req, ptr %req, i32 0, i32 1
  %6 = getelementptr inbounds %struct.prestera_msg_counter_req, ptr %req, i32 0, i32 2
  %7 = getelementptr inbounds %struct.prestera_msg_counter_req, ptr %req, i32 0, i32 3
  %8 = tail call i32 @llvm.bswap.i32(i32 %client)
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %5, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %6, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %7, align 4
  %12 = ptrtoint ptr %sw to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sw, align 4
  %14 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 319094784, ptr %req, align 4
  %send_req.i.i = getelementptr inbounds %struct.prestera_device, ptr %13, i32 0, i32 7
  %15 = ptrtoint ptr %send_req.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %send_req.i.i, align 4
  %call.i.i = call i32 %16(ptr noundef %13, i32 noundef 0, ptr noundef nonnull %req, i32 noundef 16, ptr noundef nonnull %resp, i32 noundef 24, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i.i:                                       ; preds = %entry
  %17 = ptrtoint ptr %resp to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %resp, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %18)
  %cmp.not.i.i = icmp eq i32 %18, 256
  br i1 %cmp.not.i.i, label %if.end6.i.i, label %if.end.i.i.cleanup_crit_edge

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6.i.i:                                      ; preds = %if.end.i.i
  %19 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp7.not.i.i = icmp eq i32 %20, 0
  br i1 %cmp7.not.i.i, label %if.end, label %if.end6.i.i.cleanup_crit_edge

if.end6.i.i.cleanup_crit_edge:                    ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %1, align 8
  %23 = call i32 @llvm.bswap.i32(i32 %22)
  %24 = ptrtoint ptr %block_id to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %block_id, align 4
  %25 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %2, align 4
  %27 = call i32 @llvm.bswap.i32(i32 %26)
  %28 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %offset, align 4
  %29 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %3, align 8
  %31 = call i32 @llvm.bswap.i32(i32 %30)
  %32 = ptrtoint ptr %num_counters to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %num_counters, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.end6.i.i.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %if.end6.i.i.cleanup_crit_edge ], [ -52, %if.end.i.i.cleanup_crit_edge ], [ %call.i.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %req) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %resp) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @prestera_hw_counter_block_release(ptr nocapture noundef readonly %sw, i32 noundef %block_id) local_unnamed_addr #0 align 64 {
entry:
  %resp.i = alloca %struct.prestera_msg_common_resp, align 4
  %req = alloca %struct.prestera_msg_counter_req, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %req) #9
  %0 = getelementptr inbounds %struct.prestera_msg_counter_req, ptr %req, i32 0, i32 1
  %1 = getelementptr inbounds %struct.prestera_msg_counter_req, ptr %req, i32 0, i32 2
  %2 = getelementptr inbounds %struct.prestera_msg_counter_req, ptr %req, i32 0, i32 3
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %0, align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %block_id)
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %1, align 4
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %2, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %resp.i) #9
  %7 = ptrtoint ptr %resp.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %resp.i, align 4, !annotation !24
  %8 = getelementptr inbounds %struct.prestera_msg_ret, ptr %resp.i, i32 0, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %8, align 4, !annotation !24
  %10 = ptrtoint ptr %sw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sw, align 4
  %12 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 335872000, ptr %req, align 4
  %send_req.i.i.i = getelementptr inbounds %struct.prestera_device, ptr %11, i32 0, i32 7
  %13 = ptrtoint ptr %send_req.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %send_req.i.i.i, align 4
  %call.i.i.i = call i32 %14(ptr noundef %11, i32 noundef 0, ptr noundef nonnull %req, i32 noundef 16, ptr noundef nonnull %resp.i, i32 noundef 8, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %entry.prestera_cmd.exit_crit_edge

entry.prestera_cmd.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %prestera_cmd.exit

if.end.i.i.i:                                     ; preds = %entry
  %15 = ptrtoint ptr %resp.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %resp.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %16)
  %cmp.not.i.i.i = icmp eq i32 %16, 256
  br i1 %cmp.not.i.i.i, label %if.end6.i.i.i, label %if.end.i.i.i.prestera_cmd.exit_crit_edge

if.end.i.i.i.prestera_cmd.exit_crit_edge:         ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %prestera_cmd.exit

if.end6.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp7.not.i.i.i = icmp eq i32 %18, 0
  %..i.i.i = select i1 %cmp7.not.i.i.i, i32 0, i32 -22
  br label %prestera_cmd.exit

prestera_cmd.exit:                                ; preds = %if.end6.i.i.i, %if.end.i.i.i.prestera_cmd.exit_crit_edge, %entry.prestera_cmd.exit_crit_edge
  %retval.0.i.i.i = phi i32 [ %call.i.i.i, %entry.prestera_cmd.exit_crit_edge ], [ -52, %if.end.i.i.i.prestera_cmd.exit_crit_edge ], [ %..i.i.i, %if.end6.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %resp.i) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %req) #9
  ret i32 %retval.0.i.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @prestera_hw_counter_clear(ptr nocapture noundef readonly %sw, i32 noundef %block_id, i32 noundef %counter_id) local_unnamed_addr #0 align 64 {
entry:
  %resp.i = alloca %struct.prestera_msg_common_resp, align 4
  %req = alloca %struct.prestera_msg_counter_req, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %req) #9
  %0 = getelementptr inbounds %struct.prestera_msg_counter_req, ptr %req, i32 0, i32 1
  %1 = getelementptr inbounds %struct.prestera_msg_counter_req, ptr %req, i32 0, i32 2
  %2 = getelementptr inbounds %struct.prestera_msg_counter_req, ptr %req, i32 0, i32 3
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %0, align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %block_id)
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %1, align 4
  %6 = tail call i32 @llvm.bswap.i32(i32 %counter_id)
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %2, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %resp.i) #9
  %8 = ptrtoint ptr %resp.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %resp.i, align 4, !annotation !24
  %9 = getelementptr inbounds %struct.prestera_msg_ret, ptr %resp.i, i32 0, i32 1
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %9, align 4, !annotation !24
  %11 = ptrtoint ptr %sw to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sw, align 4
  %13 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 352649216, ptr %req, align 4
  %send_req.i.i.i = getelementptr inbounds %struct.prestera_device, ptr %12, i32 0, i32 7
  %14 = ptrtoint ptr %send_req.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %send_req.i.i.i, align 4
  %call.i.i.i = call i32 %15(ptr noundef %12, i32 noundef 0, ptr noundef nonnull %req, i32 noundef 16, ptr noundef nonnull %resp.i, i32 noundef 8, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %entry.prestera_cmd.exit_crit_edge

entry.prestera_cmd.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %prestera_cmd.exit

if.end.i.i.i:                                     ; preds = %entry
  %16 = ptrtoint ptr %resp.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %resp.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %17)
  %cmp.not.i.i.i = icmp eq i32 %17, 256
  br i1 %cmp.not.i.i.i, label %if.end6.i.i.i, label %if.end.i.i.i.prestera_cmd.exit_crit_edge

if.end.i.i.i.prestera_cmd.exit_crit_edge:         ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %prestera_cmd.exit

if.end6.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp7.not.i.i.i = icmp eq i32 %19, 0
  %..i.i.i = select i1 %cmp7.not.i.i.i, i32 0, i32 -22
  br label %prestera_cmd.exit

prestera_cmd.exit:                                ; preds = %if.end6.i.i.i, %if.end.i.i.i.prestera_cmd.exit_crit_edge, %entry.prestera_cmd.exit_crit_edge
  %retval.0.i.i.i = phi i32 [ %call.i.i.i, %entry.prestera_cmd.exit_crit_edge ], [ -52, %if.end.i.i.i.prestera_cmd.exit_crit_edge ], [ %..i.i.i, %if.end6.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %resp.i) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %req) #9
  ret i32 %retval.0.i.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @prestera_find_event_handler(ptr noundef %sw, i32 noundef %type, ptr nocapture noundef writeonly %eh) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !14) #9
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !28
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 696, ptr noundef nonnull @.str.2) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call.i2 = tail call i32 @rcu_read_lock_any_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2)
  %tobool.not.i3 = icmp eq i32 %call.i2, 0
  br i1 %tobool.not.i3, label %land.lhs.true.i5, label %rcu_read_lock.exit.do.end.i_crit_edge

rcu_read_lock.exit.do.end.i_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

land.lhs.true.i5:                                 ; preds = %rcu_read_lock.exit
  %call1.i4 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i4)
  %tobool2.not.i = icmp eq i32 %call1.i4, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i5.do.end.i_crit_edge, label %land.lhs.true3.i

land.lhs.true.i5.do.end.i_crit_edge:              ; preds = %land.lhs.true.i5
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i5
  %.b27.i = load i1, ptr @__find_event_handler.__warned, align 1
  br i1 %.b27.i, label %land.lhs.true3.i.do.end.i_crit_edge, label %if.then.i6

land.lhs.true3.i.do.end.i_crit_edge:              ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

if.then.i6:                                       ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @__find_event_handler.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 737, ptr noundef nonnull @.str.4) #9
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i6, %land.lhs.true3.i.do.end.i_crit_edge, %land.lhs.true.i5.do.end.i_crit_edge, %rcu_read_lock.exit.do.end.i_crit_edge
  %event_handlers.i = getelementptr inbounds %struct.prestera_switch, ptr %sw, i32 0, i32 5
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %do.end.i
  %eh.0.in.i = phi ptr [ %event_handlers.i, %do.end.i ], [ %eh.0.i, %for.body.i.for.cond.i_crit_edge ]
  %4 = ptrtoint ptr %eh.0.in.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %eh.0.i = load volatile ptr, ptr %eh.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %eh.0.i, %event_handlers.i
  br i1 %cmp.not.i, label %for.cond.i.if.end_crit_edge, label %for.body.i

for.cond.i.if.end_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

for.body.i:                                       ; preds = %for.cond.i
  %type10.i = getelementptr inbounds %struct.prestera_fw_event_handler, ptr %eh.0.i, i32 0, i32 2
  %5 = ptrtoint ptr %type10.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %type10.i, align 4
  %cmp11.i = icmp eq i32 %6, %type
  br i1 %cmp11.i, label %__find_event_handler.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i

__find_event_handler.exit:                        ; preds = %for.body.i
  %tobool.not = icmp eq ptr %eh.0.i, null
  br i1 %tobool.not, label %__find_event_handler.exit.if.end_crit_edge, label %if.then

__find_event_handler.exit.if.end_crit_edge:       ; preds = %__find_event_handler.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %__find_event_handler.exit
  call void @__sanitizer_cov_trace_pc() #11
  %7 = call ptr @memcpy(ptr %eh, ptr %eh.0.i, i32 28)
  br label %if.end

if.end:                                           ; preds = %if.then, %__find_event_handler.exit.if.end_crit_edge, %for.cond.i.if.end_crit_edge
  %err.0 = phi i32 [ 0, %if.then ], [ -2, %__find_event_handler.exit.if.end_crit_edge ], [ -2, %for.cond.i.if.end_crit_edge ]
  %call.i7 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i7, label %if.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i10

if.end.rcu_read_unlock.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i10:                                ; preds = %if.end
  %call1.i8 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i8)
  %tobool.not.i9 = icmp eq i32 %call1.i8, 0
  br i1 %tobool.not.i9, label %land.lhs.true.i10.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i12

land.lhs.true.i10.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i10
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true2.i12:                               ; preds = %land.lhs.true.i10
  %.b4.i11 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i11, label %land.lhs.true2.i12.rcu_read_unlock.exit_crit_edge, label %if.then.i13

land.lhs.true2.i12.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i12
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

if.then.i13:                                      ; preds = %land.lhs.true2.i12
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 724, ptr noundef nonnull @.str.3) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i13, %land.lhs.true2.i12.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i10.rcu_read_unlock.exit_crit_edge, %if.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !29
  %8 = tail call i32 @llvm.read_register.i32(metadata !14) #9
  %and.i.i.i.i.i14 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i14 to ptr
  %preempt_count.i.i.i.i15 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i15 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i15, align 4
  %sub.i.i.i = add i32 %11, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i15, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  ret i32 %err.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @prestera_fw_parse_port_evt(ptr nocapture noundef readonly %msg, ptr nocapture noundef %evt) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %port_id = getelementptr inbounds %struct.prestera_msg_event_port, ptr %msg, i32 0, i32 1
  %0 = ptrtoint ptr %port_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %port_id, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %3 = getelementptr inbounds %struct.prestera_event, ptr %evt, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %2, ptr %3, align 8
  %5 = ptrtoint ptr %evt to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %evt, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %6)
  %cmp = icmp eq i16 %6, 1
  br i1 %cmp, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %param = getelementptr inbounds %struct.prestera_msg_event_port, ptr %msg, i32 0, i32 2
  %oper = getelementptr inbounds %struct.prestera_msg_event_port, ptr %msg, i32 0, i32 2, i32 0, i32 0, i32 2
  %7 = ptrtoint ptr %oper to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %oper, align 4
  %data = getelementptr inbounds %struct.prestera_event, ptr %evt, i32 0, i32 1, i32 0, i32 1
  %oper3 = getelementptr inbounds %struct.prestera_event, ptr %evt, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1
  %9 = ptrtoint ptr %oper3 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %oper3, align 8
  %10 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %param, align 4
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  %13 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %data, align 8
  %speed = getelementptr inbounds %struct.prestera_msg_event_port, ptr %msg, i32 0, i32 2, i32 0, i32 0, i32 1
  %14 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %speed, align 4
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  %speed9 = getelementptr inbounds %struct.anon.150, ptr %data, i32 0, i32 1
  %17 = ptrtoint ptr %speed9 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %speed9, align 4
  %duplex = getelementptr inbounds %struct.prestera_msg_event_port, ptr %msg, i32 0, i32 2, i32 0, i32 0, i32 3
  %18 = ptrtoint ptr %duplex to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %duplex, align 1
  %duplex12 = getelementptr inbounds %struct.prestera_event, ptr %evt, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 1
  %20 = ptrtoint ptr %duplex12 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %duplex12, align 1
  %fc = getelementptr inbounds %struct.prestera_msg_event_port, ptr %msg, i32 0, i32 2, i32 0, i32 0, i32 4
  %21 = ptrtoint ptr %fc to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %fc, align 2
  %fc15 = getelementptr inbounds %struct.prestera_event, ptr %evt, i32 0, i32 1, i32 0, i32 1, i32 0, i32 2
  %23 = ptrtoint ptr %fc15 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %fc15, align 2
  %fec = getelementptr inbounds %struct.prestera_msg_event_port, ptr %msg, i32 0, i32 2, i32 0, i32 0, i32 5
  %24 = ptrtoint ptr %fec to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %fec, align 1
  %fec18 = getelementptr inbounds %struct.anon.150, ptr %data, i32 0, i32 5
  %26 = ptrtoint ptr %fec18 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %fec18, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @prestera_fw_parse_fdb_evt(ptr nocapture noundef readonly %msg, ptr nocapture noundef writeonly %evt) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dest_type = getelementptr inbounds %struct.prestera_msg_event_fdb, ptr %msg, i32 0, i32 4
  %0 = ptrtoint ptr %dest_type to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dest_type, align 2
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.7)
  switch i8 %1, label %entry.cleanup_crit_edge [
    i8 0, label %sw.bb
    i8 1, label %sw.bb2
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = getelementptr inbounds %struct.prestera_event, ptr %evt, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %3, align 8
  %dest = getelementptr inbounds %struct.prestera_msg_event_fdb, ptr %msg, i32 0, i32 2
  %5 = ptrtoint ptr %dest to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dest, align 4
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %dest1 = getelementptr inbounds %struct.prestera_fdb_event, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %dest1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %dest1, align 4
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %9 = getelementptr inbounds %struct.prestera_event, ptr %evt, i32 0, i32 1
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %9, align 8
  %dest4 = getelementptr inbounds %struct.prestera_msg_event_fdb, ptr %msg, i32 0, i32 2
  %11 = ptrtoint ptr %dest4 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %dest4, align 4
  %13 = tail call i16 @llvm.bswap.i16(i16 %12)
  %dest5 = getelementptr inbounds %struct.prestera_fdb_event, ptr %9, i32 0, i32 1
  %14 = ptrtoint ptr %dest5 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %dest5, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb2, %sw.bb
  %vid = getelementptr inbounds %struct.prestera_msg_event_fdb, ptr %msg, i32 0, i32 1
  %15 = ptrtoint ptr %vid to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %vid, align 4
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  %18 = getelementptr inbounds %struct.prestera_event, ptr %evt, i32 0, i32 1
  %vid6 = getelementptr inbounds %struct.prestera_event, ptr %evt, i32 0, i32 1, i32 0, i32 1
  %19 = ptrtoint ptr %vid6 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %17, ptr %vid6, align 8
  %data = getelementptr inbounds %struct.prestera_fdb_event, ptr %18, i32 0, i32 3
  %param = getelementptr inbounds %struct.prestera_msg_event_fdb, ptr %msg, i32 0, i32 3
  %20 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %param, align 4
  %22 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %data, align 4
  %add.ptr.i = getelementptr %struct.prestera_msg_event_fdb, ptr %msg, i32 0, i32 3, i32 0, i32 4
  %23 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr %struct.prestera_event, ptr %evt, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1
  %25 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %24, ptr %add.ptr1.i, align 2
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !10, !11, !13}
!llvm.named.register.sp = !{!14}
!llvm.module.flags = !{!15, !16, !17, !18, !19, !20, !21, !22}
!llvm.ident = !{!23}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/marvell/prestera/prestera_hw.c", i32 901, i32 2}
!2 = !{ptr @fw_event_parsers, !3, !"fw_event_parsers", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/marvell/prestera/prestera_hw.c", i32 726, i32 3}
!4 = distinct !{null, !5, !"__warned", i1 false, i1 false}
!5 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = distinct !{null, !9, !"__warned", i1 false, i1 false}
!9 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!10 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!11 = distinct !{null, !12, !"__warned", i1 false, i1 false}
!12 = !{!"../drivers/net/ethernet/marvell/prestera/prestera_hw.c", i32 737, i32 2}
!13 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!14 = !{!"sp"}
!15 = !{i32 1, !"wchar_size", i32 2}
!16 = !{i32 1, !"min_enum_size", i32 4}
!17 = !{i32 8, !"branch-target-enforcement", i32 0}
!18 = !{i32 8, !"sign-return-address", i32 0}
!19 = !{i32 8, !"sign-return-address-all", i32 0}
!20 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!21 = !{i32 7, !"uwtable", i32 1}
!22 = !{i32 7, !"frame-pointer", i32 2}
!23 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!24 = !{!"auto-init"}
!25 = !{!"branch_weights", i32 2000, i32 1}
!26 = !{i8 0, i8 2}
!27 = !{i64 2149739679}
!28 = !{i64 2149714287}
!29 = !{i64 2149714553}
