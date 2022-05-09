; ModuleID = '/llk/IR_all_yes/drivers/scsi/qedf/qedf_fip.c_pt.bc'
source_filename = "../drivers/scsi/qedf/qedf_fip.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.sk_buff = type { %union.anon.43, %union.anon.46, %union.anon.47, [48 x i8], %union.anon.48, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.50, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.43 = type { %struct.anon.44 }
%struct.anon.44 = type { ptr, ptr, %union.anon.45 }
%union.anon.45 = type { ptr }
%union.anon.46 = type { ptr }
%union.anon.47 = type { i64 }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type { i32, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.52, i32, i32, i32, i16, i16, %union.anon.54, i32, %union.anon.55, %union.anon.56, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.52 = type { i32 }
%union.anon.54 = type { i32 }
%union.anon.55 = type { i32 }
%union.anon.56 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.qedf_ctx = type { %struct.qedf_dbg_ctx, %struct.fcoe_ctlr, ptr, [6 x i8], %struct.atomic_t, %struct.atomic_t, i32, i8, ptr, %struct.qed_dev_fcoe_info, %struct.qed_int_info, i16, %struct.spinlock, ptr, i64, i64, [6 x i8], %struct.list_head, %struct.atomic_t, i32, ptr, ptr, ptr, %struct.delayed_work, %struct.delayed_work, %struct.completion, %struct.completion, %struct.atomic_t, %struct.timer_list, i32, i32, i8, ptr, ptr, i32, [256 x %struct.qedf_bdq_buf], ptr, i32, i32, ptr, i32, i8, ptr, ptr, i16, ptr, %struct.qed_fcoe_tid, ptr, %struct.qed_pf_params, ptr, ptr, ptr, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, i32, i32, ptr, i32, [2048 x %struct.qedf_io_log], %struct.spinlock, i16, i8, i32, i32, i32, %struct.mutex, i64, i64, i64, i64, i64, i8, i8, i8, i8, %struct.mutex, [8 x i8] }
%struct.qedf_dbg_ctx = type { i32, ptr, ptr }
%struct.fcoe_ctlr = type { i32, i32, ptr, ptr, %struct.list_head, ptr, i16, i32, i32, i32, i32, %struct.timer_list, %struct.work_struct, %struct.work_struct, %struct.sk_buff_head, ptr, %struct.rnd_state, i32, i16, i16, i8, i8, i8, i8, i8, i8, i8, [6 x i8], [6 x i8], ptr, ptr, ptr, %struct.mutex, %struct.spinlock }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.sk_buff_head = type { %union.anon.64, i32, %struct.spinlock }
%union.anon.64 = type { %struct.anon.65 }
%struct.anon.65 = type { ptr, ptr }
%struct.rnd_state = type { i32, i32, i32, i32 }
%struct.qed_dev_fcoe_info = type { %struct.qed_dev_info, ptr, ptr, i64, i64, i8 }
%struct.qed_dev_info = type { i32, i32, i32, i8, [6 x i8], i16, i16, i16, i16, i32, i32, i8, i8, i8, i8, i16, i8, i8, i8, i32, i32, i8, i8, i8, i8 }
%struct.qed_int_info = type { ptr, i8, i8 }
%struct.list_head = type { ptr, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.qedf_bdq_buf = type { ptr, i32 }
%struct.qed_fcoe_tid = type { i32, i32, [512 x ptr] }
%struct.qed_pf_params = type { %struct.qed_eth_pf_params, %struct.qed_fcoe_pf_params, %struct.qed_iscsi_pf_params, %struct.qed_nvmetcp_pf_params, %struct.qed_rdma_pf_params }
%struct.qed_eth_pf_params = type { i16, i8, i32 }
%struct.qed_fcoe_pf_params = type { i64, [2 x i64], i16, i16, i16, i16, i16, i16, i16, i16, [2 x i16], [2 x i16], i16, i8, i8, i8, i8, i8, i8, [2 x i8] }
%struct.qed_iscsi_pf_params = type { i64, [3 x i64], i16, i16, i32, i16, i16, i16, i16, [3 x i16], [3 x i16], i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [3 x i8] }
%struct.qed_nvmetcp_pf_params = type { i64, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16 }
%struct.qed_rdma_pf_params = type { i32, i32, i32, i8, i8, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.qedf_io_log = type { i8, i16, i32, i32, i8, [4 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.fip_vlan = type { %struct.ethhdr, %struct.fip_header, %struct.anon.134 }
%struct.fip_header = type { i8, i8, i16, i8, i8, i16, i16 }
%struct.anon.134 = type { %struct.fip_mac_desc, %struct.fip_wwn_desc }
%struct.fip_mac_desc = type { %struct.fip_desc, [6 x i8] }
%struct.fip_desc = type { i8, i8 }
%struct.fip_wwn_desc = type <{ %struct.fip_desc, [2 x i8], i64 }>
%struct.fc_lport = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.fc_disc, %struct.list_head, ptr, %struct.libfc_function_template, i8, i8, i16, i32, i32, %struct.fc_host_statistics, ptr, i8, i32, i64, i64, i32, i32, i32, %struct.fc_els_rnid_gen, i8, i32, i8, i8, i16, i16, i16, i16, i32, %struct.fc_ns_fts, %struct.mutex, %struct.list_head, %struct.delayed_work, [9 x ptr], %struct.list_head }
%struct.fc_disc = type { i8, i8, i8, i16, i8, i16, %struct.list_head, ptr, %struct.mutex, %struct.fc_gpn_ft_resp, %struct.delayed_work, ptr }
%struct.fc_gpn_ft_resp = type { i8, [3 x i8], i32, i64 }
%struct.libfc_function_template = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fc_host_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.fc_els_rnid_gen = type { [16 x i8], i32, i32, i32, i8, i8, i16, [4 x i32], [2 x i8], i16 }
%struct.fc_ns_fts = type { [8 x i32] }
%struct.qed_fcoe_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.qed_ll2_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.fip_vlan_desc = type { %struct.fip_desc, i16 }
%struct.fcoe_fcf = type { %struct.list_head, %struct.work_struct, ptr, ptr, i32, i64, i64, i32, i16, [6 x i8], [6 x i8], i8, i8, i16, i32, i8 }
%struct.fip_vn_desc = type <{ %struct.fip_desc, [6 x i8], i8, [3 x i8], i64 }>

@__func__.qedf_fcoe_send_vlan_req = private unnamed_addr constant [24 x i8] c"qedf_fcoe_send_vlan_req\00", align 1
@.str = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to allocate skb.\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Sending FIP VLAN request.\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Cannot send vlan request because link is not up.\0A\00", [46 x i8] zeroinitializer }, align 32
@qed_ops = external dso_local local_unnamed_addr global ptr, align 4
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"start_xmit failed rc = %d.\0A\00", [36 x i8] zeroinitializer }, align 32
@__func__.qedf_fip_send = private unnamed_addr constant [14 x i8] c"qedf_fip_send\00", align 1
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"LL2 not started\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"FIP frame send: dest=%pM op=%x sub=%x vlan=%04x.\00", [47 x i8] zeroinitializer }, align 32
@qedf_dump_frames = external dso_local local_unnamed_addr global i32, align 4
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"fip \00", [27 x i8] zeroinitializer }, align 32
@__func__.qedf_fip_recv = private unnamed_addr constant [14 x i8] c"qedf_fip_recv\00", align 1
@.str.8 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"FIP frame received: skb=%p fiph=%p source=%pM destn=%pM op=%x sub=%x vlan=%04x\00", [49 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [111 x i8], [49 x i8] } { [111 x i8] c"Dropping FIP type 0x%x pkt due to destination MAC mismatch dest_mac=%pM ctlr.dest_addr=%pM data_src_addr=%pM.\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Clear virtual link received.\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Dropping CVL since FCF has not been selected yet.\00", [46 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Switch fd_mac=%pM.\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Switch fd_wwn=%016llx fcf_switch_name=%016llx.\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"CVL vx_port fd_fc_id=0x%x fd_mac=%pM fd_wwpn=%016llx.\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"fcf_valid=%d fabric_id_valid=%d fc_wwpn_valid=%d.\0A\00", [45 x i8] zeroinitializer }, align 32
@__func__.qedf_fcoe_process_vlan_resp = private unnamed_addr constant [28 x i8] c"qedf_fcoe_process_vlan_resp\00", align 1
@.str.16 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Dropping VLAN response as link is down.\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"VLAN response, vid=0x%x.\0A\00", [38 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 2, i64 4, i64 11]
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 27, i32 3 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 58, i32 2 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 62, i32 3 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 72, i32 3 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 131, i32 3 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 150, i32 2 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 154, i32 18 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 154, i32 32 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 191, i32 2 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 202, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 215, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 220, i32 4 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 238, i32 5 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 247, i32 5 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 259, i32 5 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 283, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 104, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.70 = private constant [32 x i8] c"../drivers/scsi/qedf/qedf_fip.c\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 109, i32 2 }
@llvm.compiler.used = appending global [18 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 111, i32 160, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qedf_fcoe_send_vlan_req(ptr noundef %qedf) local_unnamed_addr #0 align 64 {
entry:
  %flags = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags) #4
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %flags, align 4
  %call.i.i72 = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 44, i32 noundef 2592) #4
  %tobool.not = icmp eq ptr %call.i.i72, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef %qedf, ptr noundef nonnull @__func__.qedf_fcoe_send_vlan_req, i32 noundef 28, ptr noundef nonnull @.str) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.sk_buff, ptr %call.i.i72, i32 0, i32 19
  %1 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %data, align 4
  %3 = call ptr @memset(ptr %2, i32 0, i32 44)
  %h_source = getelementptr inbounds %struct.ethhdr, ptr %2, i32 0, i32 1
  %mac = getelementptr inbounds %struct.qedf_ctx, ptr %qedf, i32 0, i32 16
  %4 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mac, align 4
  %6 = ptrtoint ptr %h_source to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %h_source, align 4
  %add.ptr.i = getelementptr %struct.qedf_ctx, ptr %qedf, i32 0, i32 16, i32 4
  %7 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr %struct.ethhdr, ptr %2, i32 0, i32 1, i32 4
  %9 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %add.ptr1.i, align 2
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 17831937, ptr %2, align 4
  %add.ptr1.i73 = getelementptr i8, ptr %2, i32 4
  %11 = ptrtoint ptr %add.ptr1.i73 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 2, ptr %add.ptr1.i73, align 2
  %h_proto = getelementptr inbounds %struct.ethhdr, ptr %2, i32 0, i32 2
  %12 = ptrtoint ptr %h_proto to i32
  call void @__asan_storeN_noabort(i32 %12, i32 2)
  store i16 -30444, ptr %h_proto, align 1
  %fip = getelementptr inbounds %struct.fip_vlan, ptr %2, i32 0, i32 1
  %13 = ptrtoint ptr %fip to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 16, ptr %fip, align 1
  %fip_op = getelementptr inbounds %struct.fip_vlan, ptr %2, i32 0, i32 1, i32 2
  %14 = ptrtoint ptr %fip_op to i32
  call void @__asan_storeN_noabort(i32 %14, i32 2)
  store i16 4, ptr %fip_op, align 1
  %fip_subcode = getelementptr inbounds %struct.fip_vlan, ptr %2, i32 0, i32 1, i32 4
  %15 = ptrtoint ptr %fip_subcode to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %fip_subcode, align 1
  %fip_dl_len = getelementptr inbounds %struct.fip_vlan, ptr %2, i32 0, i32 1, i32 5
  %16 = ptrtoint ptr %fip_dl_len to i32
  call void @__asan_storeN_noabort(i32 %16, i32 2)
  store i16 5, ptr %fip_dl_len, align 1
  %desc = getelementptr inbounds %struct.fip_vlan, ptr %2, i32 0, i32 2
  %17 = ptrtoint ptr %desc to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 2, ptr %desc, align 1
  %fip_dlen = getelementptr inbounds %struct.fip_vlan, ptr %2, i32 0, i32 2, i32 0, i32 0, i32 1
  %18 = ptrtoint ptr %fip_dlen to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 2, ptr %fip_dlen, align 1
  %fd_mac = getelementptr inbounds %struct.fip_vlan, ptr %2, i32 0, i32 2, i32 0, i32 1
  %19 = load i32, ptr %mac, align 4
  %20 = ptrtoint ptr %fd_mac to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %fd_mac, align 4
  %21 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i75 = getelementptr %struct.fip_vlan, ptr %2, i32 0, i32 2, i32 0, i32 1, i32 4
  %22 = ptrtoint ptr %add.ptr1.i75 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %21, ptr %add.ptr1.i75, align 2
  %wwnn = getelementptr inbounds %struct.fip_vlan, ptr %2, i32 0, i32 2, i32 1
  %23 = ptrtoint ptr %wwnn to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 4, ptr %wwnn, align 1
  %fip_dlen23 = getelementptr inbounds %struct.fip_vlan, ptr %2, i32 0, i32 2, i32 1, i32 0, i32 1
  %24 = ptrtoint ptr %fip_dlen23 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 3, ptr %fip_dlen23, align 1
  %lport = getelementptr inbounds %struct.qedf_ctx, ptr %qedf, i32 0, i32 2
  %25 = ptrtoint ptr %lport to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %lport, align 16
  %wwnn24 = getelementptr inbounds %struct.fc_lport, ptr %26, i32 0, i32 20
  %27 = ptrtoint ptr %wwnn24 to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %wwnn24, align 8
  %fd_wwn = getelementptr inbounds %struct.fip_vlan, ptr %2, i32 0, i32 2, i32 1, i32 2
  %29 = ptrtoint ptr %fd_wwn to i32
  call void @__asan_storeN_noabort(i32 %29, i32 8)
  store i64 %28, ptr %fd_wwn, align 1
  %call27 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i72, i32 noundef 44) #4
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %call.i.i72, i32 0, i32 15, i32 0, i32 18
  %30 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 -30444, ptr %protocol, align 8
  %31 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %data, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i72, i32 0, i32 18
  %33 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %32 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %34 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i72, i32 0, i32 15, i32 0, i32 21
  %35 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %conv.i, ptr %mac_header.i, align 2
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i72, i32 0, i32 15, i32 0, i32 20
  %36 = ptrtoint ptr %network_header.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %conv.i, ptr %network_header.i, align 4
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef %qedf, ptr noundef nonnull @__func__.qedf_fcoe_send_vlan_req, i32 noundef 59, i32 noundef 4, ptr noundef nonnull @.str.1) #4
  %link_state = getelementptr inbounds %struct.qedf_ctx, ptr %qedf, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %link_state, i32 noundef 4) #4
  %37 = ptrtoint ptr %link_state to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %link_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %38)
  %cmp.not = icmp eq i32 %38, 1
  br i1 %cmp.not, label %if.end32, label %if.then30

if.then30:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_warn(ptr noundef %qedf, ptr noundef nonnull @__func__.qedf_fcoe_send_vlan_req, i32 noundef 63, ptr noundef nonnull @.str.2) #4
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i.i72, i32 noundef 0) #4
  br label %cleanup

if.end32:                                         ; preds = %if.end
  call void @_set_bit(i32 noundef 0, ptr noundef nonnull %flags) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @qed_ops to i32))
  %39 = load ptr, ptr @qed_ops, align 4
  %ll2 = getelementptr inbounds %struct.qed_fcoe_ops, ptr %39, i32 0, i32 3
  %40 = ptrtoint ptr %ll2 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ll2, align 4
  %start_xmit = getelementptr inbounds %struct.qed_ll2_ops, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %start_xmit to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %start_xmit, align 4
  %cdev = getelementptr inbounds %struct.qedf_ctx, ptr %qedf, i32 0, i32 8
  %44 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %cdev, align 4
  %46 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %flags, align 4
  %call33 = call i32 %43(ptr noundef %45, ptr noundef nonnull %call.i.i72, i32 noundef %47) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end32.cleanup_crit_edge, label %if.then35

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then35:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef %qedf, ptr noundef nonnull @__func__.qedf_fcoe_send_vlan_req, i32 noundef 72, ptr noundef nonnull @.str.3, i32 noundef %call33) #4
  call void @kfree_skb_reason(ptr noundef nonnull %call.i.i72, i32 noundef 0) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then35, %if.end32.cleanup_crit_edge, %if.then30, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags) #4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @qedf_dbg_err(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qedf_dbg_info(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qedf_dbg_warn(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qedf_fip_send(ptr noundef %fip, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %fip, i32 -12
  %flags = getelementptr i8, ptr %fip, i32 1044
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags, align 4
  %2 = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.then, label %__vlan_hwaccel_get_tag.exit

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_warn(ptr noundef %add.ptr, ptr noundef nonnull @__func__.qedf_fip_send, i32 noundef 131, ptr noundef nonnull @.str.4) #4
  br label %cleanup.sink.split

__vlan_hwaccel_get_tag.exit:                      ; preds = %entry
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %5 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %head.i, align 8
  %mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %7 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %mac_header.i, align 2
  %conv.i = zext i16 %8 to i32
  %add.ptr.i = getelementptr i8, ptr %6, i32 %conv.i
  %fip_op = getelementptr i8, ptr %4, i32 16
  %9 = ptrtoint ptr %fip_op to i32
  call void @__asan_loadN_noabort(i32 %9, i32 2)
  %10 = load i16, ptr %fip_op, align 1
  %fip_subcode = getelementptr i8, ptr %4, i32 19
  %11 = ptrtoint ptr %fip_subcode to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %fip_subcode, align 1
  %vlan_id = getelementptr i8, ptr %fip, i32 456
  %13 = ptrtoint ptr %vlan_id to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %vlan_id, align 4
  %conv = trunc i32 %14 to i16
  %vlan_proto1.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 9
  %15 = ptrtoint ptr %vlan_proto1.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 -32512, ptr %vlan_proto1.i, align 8
  %vlan_tci2.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 10
  %16 = ptrtoint ptr %vlan_tci2.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv, ptr %vlan_tci2.i, align 2
  %vlan_present.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %17 = ptrtoint ptr %vlan_present.i to i32
  call void @__asan_loadN_noabort(i32 %17, i32 4)
  %bf.load.i = load i32, ptr %vlan_present.i, align 2
  %bf.set.i = or i32 %bf.load.i, -2147483648
  store i32 %bf.set.i, ptr %vlan_present.i, align 2
  %conv6 = zext i16 %10 to i32
  %conv7 = zext i8 %12 to i32
  %conv8 = and i32 %14, 65535
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef %add.ptr, ptr noundef nonnull @__func__.qedf_fip_send, i32 noundef 152, i32 noundef 8, ptr noundef nonnull @.str.5, ptr noundef %add.ptr.i, i32 noundef %conv6, i32 noundef %conv7, i32 noundef %conv8) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @qedf_dump_frames to i32))
  %18 = load i32, ptr @qedf_dump_frames, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool9.not = icmp eq i32 %18, 0
  br i1 %tobool9.not, label %__vlan_hwaccel_get_tag.exit.if.end12_crit_edge, label %if.then10

__vlan_hwaccel_get_tag.exit.if.end12_crit_edge:   ; preds = %__vlan_hwaccel_get_tag.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end12

if.then10:                                        ; preds = %__vlan_hwaccel_get_tag.exit
  call void @__sanitizer_cov_trace_pc() #6
  %19 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %21 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %len, align 4
  tail call void @print_hex_dump(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef %20, i32 noundef %22, i1 noundef zeroext false) #4
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %__vlan_hwaccel_get_tag.exit.if.end12_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @qed_ops to i32))
  %23 = load ptr, ptr @qed_ops, align 4
  %ll2 = getelementptr inbounds %struct.qed_fcoe_ops, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %ll2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ll2, align 4
  %start_xmit = getelementptr inbounds %struct.qed_ll2_ops, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %start_xmit to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %start_xmit, align 4
  %cdev = getelementptr i8, ptr %fip, i32 464
  %28 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cdev, align 4
  %call13 = tail call i32 %27(ptr noundef %29, ptr noundef %skb, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end12.cleanup_crit_edge, label %if.then15

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef %add.ptr, ptr noundef nonnull @__func__.qedf_fip_send, i32 noundef 159, ptr noundef nonnull @.str.3, i32 noundef %call13) #4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then15, %if.then
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end12.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qedf_fip_recv(ptr noundef %qedf, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %0 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head.i, align 8
  %mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %2 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %mac_header.i, align 2
  %conv.i = zext i16 %3 to i32
  %add.ptr.i = getelementptr i8, ptr %1, i32 %conv.i
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %add.ptr1 = getelementptr i8, ptr %5, i32 14
  %fip_op = getelementptr i8, ptr %5, i32 16
  %6 = ptrtoint ptr %fip_op to i32
  call void @__asan_loadN_noabort(i32 %6, i32 2)
  %7 = load i16, ptr %fip_op, align 1
  %fip_subcode = getelementptr i8, ptr %5, i32 19
  %8 = ptrtoint ptr %fip_subcode to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %fip_subcode, align 1
  %h_source = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i, i32 0, i32 1
  %conv = zext i16 %7 to i32
  %conv3 = zext i8 %9 to i32
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef %qedf, ptr noundef nonnull @__func__.qedf_fip_recv, i32 noundef 194, i32 noundef 8, ptr noundef nonnull @.str.8, ptr noundef %skb, ptr noundef %add.ptr1, ptr noundef %h_source, ptr noundef %add.ptr.i, i32 noundef %conv, i32 noundef %conv3, i32 noundef 0) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @qedf_dump_frames to i32))
  %10 = load i32, ptr @qedf_dump_frames, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %13 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %len, align 4
  tail call void @print_hex_dump(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef %12, i32 noundef %14, i1 noundef zeroext false) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %mac = getelementptr inbounds %struct.qedf_ctx, ptr %qedf, i32 0, i32 16
  %15 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %add.ptr.i, align 4
  %17 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %mac, align 4
  %xor.i = xor i32 %18, %16
  %add.ptr.i226 = getelementptr i8, ptr %add.ptr.i, i32 4
  %19 = ptrtoint ptr %add.ptr.i226 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %add.ptr.i226, align 2
  %add.ptr1.i = getelementptr %struct.qedf_ctx, ptr %qedf, i32 0, i32 16, i32 4
  %21 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %add.ptr1.i, align 2
  %xor37.i = xor i16 %22, %20
  %xor3.i = zext i16 %xor37.i to i32
  %or.i = or i32 %xor.i, %xor3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i = icmp eq i32 %or.i, 0
  br i1 %cmp.i, label %if.end.if.end27_crit_edge, label %land.lhs.true

if.end.if.end27_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end27

land.lhs.true:                                    ; preds = %if.end
  %xor.i227 = xor i32 %16, 17831937
  %xor37.i229 = xor i16 %20, 1
  %xor3.i230 = zext i16 %xor37.i229 to i32
  %or.i231 = or i32 %xor.i227, %xor3.i230
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i231)
  %cmp.i232 = icmp eq i32 %or.i231, 0
  br i1 %cmp.i232, label %land.lhs.true.if.end27_crit_edge, label %land.lhs.true13

land.lhs.true.if.end27_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end27

land.lhs.true13:                                  ; preds = %land.lhs.true
  %data_src_addr = getelementptr inbounds %struct.qedf_ctx, ptr %qedf, i32 0, i32 3
  %23 = ptrtoint ptr %data_src_addr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %data_src_addr, align 4
  %xor.i233 = xor i32 %24, %16
  %add.ptr1.i235 = getelementptr %struct.qedf_ctx, ptr %qedf, i32 0, i32 3, i32 4
  %25 = ptrtoint ptr %add.ptr1.i235 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %add.ptr1.i235, align 2
  %xor37.i236 = xor i16 %26, %20
  %xor3.i237 = zext i16 %xor37.i236 to i32
  %or.i238 = or i32 %xor.i233, %xor3.i237
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i238)
  %cmp.i239 = icmp eq i32 %or.i238, 0
  br i1 %cmp.i239, label %land.lhs.true13.if.end27_crit_edge, label %if.then18

land.lhs.true13.if.end27_crit_edge:               ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end27

if.then18:                                        ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef %qedf, ptr noundef nonnull @__func__.qedf_fip_recv, i32 noundef 205, i32 noundef 8, ptr noundef nonnull @.str.9, i32 noundef %conv, ptr noundef %add.ptr.i, ptr noundef %mac, ptr noundef %data_src_addr) #4
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #4
  br label %cleanup

if.end27:                                         ; preds = %land.lhs.true13.if.end27_crit_edge, %land.lhs.true.if.end27_crit_edge, %if.end.if.end27_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %7)
  %cmp = icmp eq i16 %7, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %9)
  %cmp32 = icmp eq i8 %9, 2
  %or.cond = select i1 %cmp, i1 %cmp32, i1 false
  br i1 %or.cond, label %if.then34, label %if.else

if.then34:                                        ; preds = %if.end27
  %27 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %data, align 4
  %fip_dl_len.i = getelementptr i8, ptr %28, i32 20
  %29 = ptrtoint ptr %fip_dl_len.i to i32
  call void @__asan_loadN_noabort(i32 %29, i32 2)
  %30 = load i16, ptr %fip_dl_len.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %30)
  %cmp44.not.i = icmp eq i16 %30, 0
  br i1 %cmp44.not.i, label %if.then34.while.end.i_crit_edge, label %while.body.preheader.i

if.then34.while.end.i_crit_edge:                  ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end.i

while.body.preheader.i:                           ; preds = %if.then34
  %add.ptr2.i = getelementptr i8, ptr %28, i32 24
  %conv.i240 = zext i16 %30 to i32
  %mul.i = shl nuw nsw i32 %conv.i240, 2
  br label %while.body.i

while.body.i:                                     ; preds = %sw.epilog.i.while.body.i_crit_edge, %while.body.preheader.i
  %rlen.047.i = phi i32 [ %sub.i, %sw.epilog.i.while.body.i_crit_edge ], [ %mul.i, %while.body.preheader.i ]
  %vid.046.i = phi i16 [ %vid.1.i, %sw.epilog.i.while.body.i_crit_edge ], [ 0, %while.body.preheader.i ]
  %desc.045.i = phi ptr [ %add.ptr7.i, %sw.epilog.i.while.body.i_crit_edge ], [ %add.ptr2.i, %while.body.preheader.i ]
  %fip_dlen.i = getelementptr inbounds %struct.fip_desc, ptr %desc.045.i, i32 0, i32 1
  %31 = ptrtoint ptr %fip_dlen.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %fip_dlen.i, align 1
  %conv4.i = zext i8 %32 to i32
  %mul5.i = shl nuw nsw i32 %conv4.i, 2
  %33 = ptrtoint ptr %desc.045.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %desc.045.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 14, i8 %34)
  %cond.i = icmp eq i8 %34, 14
  br i1 %cond.i, label %sw.bb.i, label %while.body.i.sw.epilog.i_crit_edge

while.body.i.sw.epilog.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #6
  %fd_vlan.i = getelementptr inbounds %struct.fip_vlan_desc, ptr %desc.045.i, i32 0, i32 1
  %35 = ptrtoint ptr %fd_vlan.i to i32
  call void @__asan_loadN_noabort(i32 %35, i32 2)
  %36 = load i16, ptr %fd_vlan.i, align 1
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb.i, %while.body.i.sw.epilog.i_crit_edge
  %vid.1.i = phi i16 [ %36, %sw.bb.i ], [ %vid.046.i, %while.body.i.sw.epilog.i_crit_edge ]
  %add.ptr7.i = getelementptr i8, ptr %desc.045.i, i32 %mul5.i
  %sub.i = sub nsw i32 %rlen.047.i, %mul5.i
  %cmp.i241 = icmp sgt i32 %sub.i, 0
  br i1 %cmp.i241, label %sw.epilog.i.while.body.i_crit_edge, label %sw.epilog.i.while.end.i_crit_edge

sw.epilog.i.while.end.i_crit_edge:                ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end.i

sw.epilog.i.while.body.i_crit_edge:               ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i

while.end.i:                                      ; preds = %sw.epilog.i.while.end.i_crit_edge, %if.then34.while.end.i_crit_edge
  %vid.0.lcssa.i = phi i16 [ 0, %if.then34.while.end.i_crit_edge ], [ %vid.1.i, %sw.epilog.i.while.end.i_crit_edge ]
  %link_state.i = getelementptr inbounds %struct.qedf_ctx, ptr %qedf, i32 0, i32 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %link_state.i, i32 noundef 4) #4
  %37 = ptrtoint ptr %link_state.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %link_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp8.i = icmp eq i32 %38, 0
  br i1 %cmp8.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef %qedf, ptr noundef nonnull @__func__.qedf_fcoe_process_vlan_resp, i32 noundef 105, i32 noundef 4, ptr noundef nonnull @.str.16) #4
  br label %qedf_fcoe_process_vlan_resp.exit

if.end.i:                                         ; preds = %while.end.i
  %conv11.i = zext i16 %vid.0.lcssa.i to i32
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef %qedf, ptr noundef nonnull @__func__.qedf_fcoe_process_vlan_resp, i32 noundef 110, i32 noundef 4, ptr noundef nonnull @.str.17, i32 noundef %conv11.i) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %vid.0.lcssa.i)
  %cmp13.not.i = icmp eq i16 %vid.0.lcssa.i, 0
  br i1 %cmp13.not.i, label %if.end.i.qedf_fcoe_process_vlan_resp.exit_crit_edge, label %land.lhs.true.i

if.end.i.qedf_fcoe_process_vlan_resp.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %qedf_fcoe_process_vlan_resp.exit

land.lhs.true.i:                                  ; preds = %if.end.i
  %vlan_id.i = getelementptr inbounds %struct.qedf_ctx, ptr %qedf, i32 0, i32 6
  %39 = ptrtoint ptr %vlan_id.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %vlan_id.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %conv11.i)
  %cmp16.not.i = icmp eq i32 %40, %conv11.i
  br i1 %cmp16.not.i, label %land.lhs.true.i.qedf_fcoe_process_vlan_resp.exit_crit_edge, label %if.then18.i

land.lhs.true.i.qedf_fcoe_process_vlan_resp.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %qedf_fcoe_process_vlan_resp.exit

if.then18.i:                                      ; preds = %land.lhs.true.i
  tail call void @qedf_set_vlan_id(ptr noundef %qedf, i32 noundef %conv11.i) #4
  %fipvlan_compl.i = getelementptr inbounds %struct.qedf_ctx, ptr %qedf, i32 0, i32 26
  %call20.i = tail call zeroext i1 @completion_done(ptr noundef %fipvlan_compl.i) #4
  br i1 %call20.i, label %if.then18.i.qedf_fcoe_process_vlan_resp.exit_crit_edge, label %if.then21.i

if.then18.i.qedf_fcoe_process_vlan_resp.exit_crit_edge: ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %qedf_fcoe_process_vlan_resp.exit

if.then21.i:                                      ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @complete(ptr noundef %fipvlan_compl.i) #4
  br label %qedf_fcoe_process_vlan_resp.exit

qedf_fcoe_process_vlan_resp.exit:                 ; preds = %if.then21.i, %if.then18.i.qedf_fcoe_process_vlan_resp.exit_crit_edge, %land.lhs.true.i.qedf_fcoe_process_vlan_resp.exit_crit_edge, %if.end.i.qedf_fcoe_process_vlan_resp.exit_crit_edge, %if.then.i
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #4
  br label %cleanup

if.else:                                          ; preds = %if.end27
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %7)
  %cmp36 = icmp eq i16 %7, 3
  %or.cond223 = select i1 %cmp36, i1 %cmp32, i1 false
  br i1 %or.cond223, label %if.then42, label %if.else124

if.then42:                                        ; preds = %if.else
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef %qedf, ptr noundef nonnull @__func__.qedf_fip_recv, i32 noundef 216, i32 noundef 4, ptr noundef nonnull @.str.10) #4
  %sel_fcf = getelementptr inbounds %struct.qedf_ctx, ptr %qedf, i32 0, i32 1, i32 3
  %41 = ptrtoint ptr %sel_fcf to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %sel_fcf, align 4
  %cmp44 = icmp eq ptr %42, null
  br i1 %cmp44, label %if.then46, label %if.end48

if.then46:                                        ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef %qedf, ptr noundef nonnull @__func__.qedf_fip_recv, i32 noundef 222, i32 noundef 4, ptr noundef nonnull @.str.11) #4
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #4
  br label %cleanup

if.end48:                                         ; preds = %if.then42
  %fip_dl_len = getelementptr i8, ptr %5, i32 20
  %43 = ptrtoint ptr %fip_dl_len to i32
  call void @__asan_loadN_noabort(i32 %43, i32 2)
  %44 = load i16, ptr %fip_dl_len, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %44)
  %cmp51.not271 = icmp eq i16 %44, 0
  br i1 %cmp51.not271, label %if.end48.while.end_crit_edge, label %while.body.lr.ph

if.end48.while.end_crit_edge:                     ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end48
  %conv49 = zext i16 %44 to i32
  %mul = shl nuw nsw i32 %conv49, 2
  %add.ptr50 = getelementptr i8, ptr %5, i32 24
  %wwpn = getelementptr inbounds %struct.qedf_ctx, ptr %qedf, i32 0, i32 15
  %lport = getelementptr inbounds %struct.qedf_ctx, ptr %qedf, i32 0, i32 2
  %data_src_addr98 = getelementptr inbounds %struct.qedf_ctx, ptr %qedf, i32 0, i32 3
  %add.ptr1.i262 = getelementptr %struct.qedf_ctx, ptr %qedf, i32 0, i32 3, i32 4
  br label %while.body

while.body:                                       ; preds = %sw.epilog.while.body_crit_edge, %while.body.lr.ph
  %fc_wwpn_valid.0.off0279 = phi i1 [ false, %while.body.lr.ph ], [ %fc_wwpn_valid.1.off0, %sw.epilog.while.body_crit_edge ]
  %fabric_id_valid.0.off0278 = phi i1 [ true, %while.body.lr.ph ], [ %fabric_id_valid.1.off0, %sw.epilog.while.body_crit_edge ]
  %fcf_valid.0.off0276 = phi i1 [ false, %while.body.lr.ph ], [ %fcf_valid.1.off0, %sw.epilog.while.body_crit_edge ]
  %rlen.0275 = phi i32 [ %mul, %while.body.lr.ph ], [ %sub105, %sw.epilog.while.body_crit_edge ]
  %desc.0272 = phi ptr [ %add.ptr50, %while.body.lr.ph ], [ %add.ptr104, %sw.epilog.while.body_crit_edge ]
  %fip_dlen = getelementptr inbounds %struct.fip_desc, ptr %desc.0272, i32 0, i32 1
  %45 = ptrtoint ptr %fip_dlen to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %fip_dlen, align 1
  %conv53 = zext i8 %46 to i32
  %mul54 = shl nuw nsw i32 %conv53, 2
  %47 = ptrtoint ptr %desc.0272 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %desc.0272, align 1
  %49 = zext i8 %48 to i64
  call void @__sanitizer_cov_trace_switch(i64 %49, ptr @__sancov_gen_cov_switch_values)
  switch i8 %48, label %while.body.sw.epilog_crit_edge [
    i8 2, label %sw.bb
    i8 4, label %sw.bb66
    i8 11, label %sw.bb79
  ]

while.body.sw.epilog_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb:                                            ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  %fd_mac = getelementptr inbounds %struct.fip_mac_desc, ptr %desc.0272, i32 0, i32 1
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef %qedf, ptr noundef nonnull @__func__.qedf_fip_recv, i32 noundef 239, i32 noundef 4, ptr noundef nonnull @.str.12, ptr noundef %fd_mac) #4
  %50 = ptrtoint ptr %sel_fcf to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %sel_fcf, align 4
  %fcf_mac = getelementptr inbounds %struct.fcoe_fcf, ptr %51, i32 0, i32 9
  %52 = ptrtoint ptr %fd_mac to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %fd_mac, align 4
  %54 = ptrtoint ptr %fcf_mac to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %fcf_mac, align 4
  %xor.i242 = xor i32 %55, %53
  %add.ptr.i243 = getelementptr %struct.fip_mac_desc, ptr %desc.0272, i32 0, i32 1, i32 4
  %56 = ptrtoint ptr %add.ptr.i243 to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %add.ptr.i243, align 2
  %add.ptr1.i244 = getelementptr %struct.fcoe_fcf, ptr %51, i32 0, i32 9, i32 4
  %58 = ptrtoint ptr %add.ptr1.i244 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %add.ptr1.i244, align 2
  %xor37.i245 = xor i16 %59, %57
  %xor3.i246 = zext i16 %xor37.i245 to i32
  %or.i247 = or i32 %xor.i242, %xor3.i246
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i247)
  %cmp.i248 = icmp eq i32 %or.i247, 0
  %spec.select = select i1 %cmp.i248, i1 true, i1 %fcf_valid.0.off0276
  br label %sw.epilog

sw.bb66:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  %fd_wwn = getelementptr inbounds %struct.fip_wwn_desc, ptr %desc.0272, i32 0, i32 2
  %60 = ptrtoint ptr %fd_wwn to i32
  call void @__asan_loadN_noabort(i32 %60, i32 8)
  %61 = load i64, ptr %fd_wwn, align 1
  %62 = ptrtoint ptr %sel_fcf to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %sel_fcf, align 4
  %switch_name71 = getelementptr inbounds %struct.fcoe_fcf, ptr %63, i32 0, i32 5
  %64 = ptrtoint ptr %switch_name71 to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %switch_name71, align 8
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef %qedf, ptr noundef nonnull @__func__.qedf_fip_recv, i32 noundef 250, i32 noundef 4, ptr noundef nonnull @.str.13, i64 noundef %61, i64 noundef %65) #4
  %66 = ptrtoint ptr %sel_fcf to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %sel_fcf, align 4
  %switch_name74 = getelementptr inbounds %struct.fcoe_fcf, ptr %67, i32 0, i32 5
  %68 = ptrtoint ptr %switch_name74 to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %switch_name74, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %61, i64 %69)
  %cmp75 = icmp eq i64 %61, %69
  %spec.select224 = select i1 %cmp75, i1 true, i1 %fc_wwpn_valid.0.off0279
  br label %sw.epilog

sw.bb79:                                          ; preds = %while.body
  %fd_fc_id = getelementptr inbounds %struct.fip_vn_desc, ptr %desc.0272, i32 0, i32 3
  %70 = ptrtoint ptr %fd_fc_id to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %fd_fc_id, align 1
  %conv.i249 = zext i8 %71 to i32
  %shl.i = shl nuw nsw i32 %conv.i249, 16
  %arrayidx1.i = getelementptr %struct.fip_vn_desc, ptr %desc.0272, i32 0, i32 3, i32 1
  %72 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx1.i, align 1
  %conv2.i = zext i8 %73 to i32
  %shl3.i = shl nuw nsw i32 %conv2.i, 8
  %or.i250 = or i32 %shl3.i, %shl.i
  %arrayidx4.i = getelementptr %struct.fip_vn_desc, ptr %desc.0272, i32 0, i32 3, i32 2
  %74 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx4.i, align 1
  %conv5.i = zext i8 %75 to i32
  %or6.i = or i32 %or.i250, %conv5.i
  %fd_mac83 = getelementptr inbounds %struct.fip_vn_desc, ptr %desc.0272, i32 0, i32 1
  %fd_wwpn = getelementptr inbounds %struct.fip_vn_desc, ptr %desc.0272, i32 0, i32 4
  %76 = ptrtoint ptr %fd_wwpn to i32
  call void @__asan_loadN_noabort(i32 %76, i32 8)
  %77 = load i64, ptr %fd_wwpn, align 1
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef %qedf, ptr noundef nonnull @__func__.qedf_fip_recv, i32 noundef 262, ptr noundef nonnull @.str.14, i32 noundef %or6.i, ptr noundef %fd_mac83, i64 noundef %77) #4
  %78 = ptrtoint ptr %fd_wwpn to i32
  call void @__asan_loadN_noabort(i32 %78, i32 8)
  %79 = load i64, ptr %fd_wwpn, align 1
  %80 = ptrtoint ptr %wwpn to i32
  call void @__asan_load8_noabort(i32 %80)
  %81 = load i64, ptr %wwpn, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %79, i64 %81)
  %cmp88 = icmp eq i64 %79, %81
  br i1 %cmp88, label %sw.bb79.if.then102_crit_edge, label %lor.lhs.false

sw.bb79.if.then102_crit_edge:                     ; preds = %sw.bb79
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then102

lor.lhs.false:                                    ; preds = %sw.bb79
  %82 = ptrtoint ptr %fd_fc_id to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %fd_fc_id, align 1
  %conv.i251 = zext i8 %83 to i32
  %shl.i252 = shl nuw nsw i32 %conv.i251, 16
  %84 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %arrayidx1.i, align 1
  %conv2.i254 = zext i8 %85 to i32
  %shl3.i255 = shl nuw nsw i32 %conv2.i254, 8
  %or.i256 = or i32 %shl3.i255, %shl.i252
  %86 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %arrayidx4.i, align 1
  %conv5.i258 = zext i8 %87 to i32
  %or6.i259 = or i32 %or.i256, %conv5.i258
  %88 = ptrtoint ptr %lport to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %lport, align 16
  %port_id = getelementptr inbounds %struct.fc_lport, ptr %89, i32 0, i32 18
  %90 = ptrtoint ptr %port_id to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %port_id, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %or6.i259, i32 %91)
  %cmp93 = icmp eq i32 %or6.i259, %91
  br i1 %cmp93, label %lor.lhs.false.if.then102_crit_edge, label %lor.lhs.false95

lor.lhs.false.if.then102_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then102

lor.lhs.false95:                                  ; preds = %lor.lhs.false
  %92 = ptrtoint ptr %fd_mac83 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %fd_mac83, align 4
  %94 = ptrtoint ptr %data_src_addr98 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %data_src_addr98, align 4
  %xor.i260 = xor i32 %95, %93
  %add.ptr.i261 = getelementptr %struct.fip_vn_desc, ptr %desc.0272, i32 0, i32 1, i32 4
  %96 = ptrtoint ptr %add.ptr.i261 to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %add.ptr.i261, align 2
  %98 = ptrtoint ptr %add.ptr1.i262 to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %add.ptr1.i262, align 2
  %xor37.i263 = xor i16 %99, %97
  %xor3.i264 = zext i16 %xor37.i263 to i32
  %or.i265 = or i32 %xor.i260, %xor3.i264
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i265)
  %cmp.i266 = icmp eq i32 %or.i265, 0
  br i1 %cmp.i266, label %lor.lhs.false95.if.then102_crit_edge, label %lor.lhs.false95.sw.epilog_crit_edge

lor.lhs.false95.sw.epilog_crit_edge:              ; preds = %lor.lhs.false95
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

lor.lhs.false95.if.then102_crit_edge:             ; preds = %lor.lhs.false95
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then102

if.then102:                                       ; preds = %lor.lhs.false95.if.then102_crit_edge, %lor.lhs.false.if.then102_crit_edge, %sw.bb79.if.then102_crit_edge
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then102, %lor.lhs.false95.sw.epilog_crit_edge, %sw.bb66, %sw.bb, %while.body.sw.epilog_crit_edge
  %fcf_valid.1.off0 = phi i1 [ %fcf_valid.0.off0276, %while.body.sw.epilog_crit_edge ], [ %fcf_valid.0.off0276, %if.then102 ], [ %fcf_valid.0.off0276, %lor.lhs.false95.sw.epilog_crit_edge ], [ %spec.select, %sw.bb ], [ %fcf_valid.0.off0276, %sw.bb66 ]
  %fabric_id_valid.1.off0 = phi i1 [ %fabric_id_valid.0.off0278, %while.body.sw.epilog_crit_edge ], [ true, %if.then102 ], [ false, %lor.lhs.false95.sw.epilog_crit_edge ], [ %fabric_id_valid.0.off0278, %sw.bb ], [ %fabric_id_valid.0.off0278, %sw.bb66 ]
  %fc_wwpn_valid.1.off0 = phi i1 [ %fc_wwpn_valid.0.off0279, %while.body.sw.epilog_crit_edge ], [ %fc_wwpn_valid.0.off0279, %if.then102 ], [ %fc_wwpn_valid.0.off0279, %lor.lhs.false95.sw.epilog_crit_edge ], [ %fc_wwpn_valid.0.off0279, %sw.bb ], [ %spec.select224, %sw.bb66 ]
  %add.ptr104 = getelementptr i8, ptr %desc.0272, i32 %mul54
  %sub105 = sub i32 %rlen.0275, %mul54
  %cmp51.not = icmp eq i32 %sub105, 0
  br i1 %cmp51.not, label %sw.epilog.while.end_crit_edge, label %sw.epilog.while.body_crit_edge

sw.epilog.while.body_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

sw.epilog.while.end_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.end:                                        ; preds = %sw.epilog.while.end_crit_edge, %if.end48.while.end_crit_edge
  %fcf_valid.0.off0.lcssa = phi i1 [ false, %if.end48.while.end_crit_edge ], [ %fcf_valid.1.off0, %sw.epilog.while.end_crit_edge ]
  %fabric_id_valid.0.off0.lcssa = phi i1 [ true, %if.end48.while.end_crit_edge ], [ %fabric_id_valid.1.off0, %sw.epilog.while.end_crit_edge ]
  %fc_wwpn_valid.0.off0.lcssa = phi i1 [ false, %if.end48.while.end_crit_edge ], [ %fc_wwpn_valid.1.off0, %sw.epilog.while.end_crit_edge ]
  %conv108 = zext i1 %fcf_valid.0.off0.lcssa to i32
  %conv110 = zext i1 %fabric_id_valid.0.off0.lcssa to i32
  %conv112 = zext i1 %fc_wwpn_valid.0.off0.lcssa to i32
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef %qedf, ptr noundef nonnull @__func__.qedf_fip_recv, i32 noundef 285, i32 noundef 4, ptr noundef nonnull @.str.15, i32 noundef %conv108, i32 noundef %conv110, i32 noundef %conv112) #4
  %100 = select i1 %fcf_valid.0.off0.lcssa, i1 %fabric_id_valid.0.off0.lcssa, i1 false
  %101 = select i1 %100, i1 %fc_wwpn_valid.0.off0.lcssa, i1 false
  br i1 %101, label %if.then121, label %while.end.if.end123_crit_edge

while.end.if.end123_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end123

if.then121:                                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #6
  %lport122 = getelementptr inbounds %struct.qedf_ctx, ptr %qedf, i32 0, i32 2
  %102 = ptrtoint ptr %lport122 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %lport122, align 16
  tail call void @qedf_ctx_soft_reset(ptr noundef %103) #4
  br label %if.end123

if.end123:                                        ; preds = %if.then121, %while.end.if.end123_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #4
  br label %cleanup

if.else124:                                       ; preds = %if.else
  %len1.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %104 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %len1.i, align 4
  %sub.i267 = add i32 %105, -14
  store i32 %sub.i267, ptr %len1.i, align 4
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %106 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %data_len.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i267, i32 %107)
  %cmp.i268 = icmp ult i32 %sub.i267, %107
  br i1 %cmp.i268, label %do.body4.i, label %__skb_pull.exit, !prof !53

do.body4.i:                                       ; preds = %if.else124
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2398, 0\0A.popsection", ""() #4, !srcloc !54
  unreachable

__skb_pull.exit:                                  ; preds = %if.else124
  call void @__sanitizer_cov_trace_pc() #6
  %108 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %data, align 4
  %add.ptr.i270 = getelementptr i8, ptr %109, i32 14
  store ptr %add.ptr.i270, ptr %data, align 4
  %ctlr126 = getelementptr inbounds %struct.qedf_ctx, ptr %qedf, i32 0, i32 1
  tail call void @fcoe_ctlr_recv(ptr noundef %ctlr126, ptr noundef %skb) #4
  br label %cleanup

cleanup:                                          ; preds = %__skb_pull.exit, %if.end123, %if.then46, %qedf_fcoe_process_vlan_resp.exit, %if.then18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @qedf_ctx_soft_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fcoe_ctlr_recv(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @qedf_get_src_mac(ptr noundef readnone %lport) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr %struct.fc_lport, ptr %lport, i32 1
  %data_src_addr = getelementptr inbounds %struct.qedf_ctx, ptr %add.ptr.i, i32 0, i32 3
  ret ptr %data_src_addr
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qedf_set_vlan_id(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @completion_done(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !13, !14, !16, !18, !20, !22, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !42}
!llvm.module.flags = !{!44, !45, !46, !47, !48, !49, !50, !51}
!llvm.ident = !{!52}

!0 = distinct !{null, !1, !"my_fcoe_all_fcfs", i1 false, i1 false}
!1 = !{!"../drivers/scsi/qedf/qedf_fip.c", i32 21, i32 12}
!2 = !{ptr @__func__.qedf_fcoe_send_vlan_req, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/scsi/qedf/qedf_fip.c", i32 27, i32 3}
!4 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/scsi/qedf/qedf_fip.c", i32 58, i32 2}
!7 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/scsi/qedf/qedf_fip.c", i32 62, i32 3}
!9 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/scsi/qedf/qedf_fip.c", i32 72, i32 3}
!11 = !{ptr @__func__.qedf_fip_send, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/scsi/qedf/qedf_fip.c", i32 131, i32 3}
!13 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/scsi/qedf/qedf_fip.c", i32 150, i32 2}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/scsi/qedf/qedf_fip.c", i32 154, i32 18}
!18 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/scsi/qedf/qedf_fip.c", i32 154, i32 32}
!20 = !{ptr @__func__.qedf_fip_recv, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/scsi/qedf/qedf_fip.c", i32 191, i32 2}
!22 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/scsi/qedf/qedf_fip.c", i32 202, i32 3}
!25 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/scsi/qedf/qedf_fip.c", i32 215, i32 3}
!27 = !{ptr @.str.11, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/scsi/qedf/qedf_fip.c", i32 220, i32 4}
!29 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/scsi/qedf/qedf_fip.c", i32 238, i32 5}
!31 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/scsi/qedf/qedf_fip.c", i32 247, i32 5}
!33 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/scsi/qedf/qedf_fip.c", i32 259, i32 5}
!35 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/scsi/qedf/qedf_fip.c", i32 283, i32 3}
!37 = distinct !{null, !38, !"fcoe_all_enode", i1 false, i1 false}
!38 = !{!"../drivers/scsi/qedf/qedf_fip.c", i32 165, i32 11}
!39 = !{ptr @__func__.qedf_fcoe_process_vlan_resp, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/scsi/qedf/qedf_fip.c", i32 104, i32 3}
!41 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/scsi/qedf/qedf_fip.c", i32 109, i32 2}
!44 = !{i32 1, !"wchar_size", i32 2}
!45 = !{i32 1, !"min_enum_size", i32 4}
!46 = !{i32 8, !"branch-target-enforcement", i32 0}
!47 = !{i32 8, !"sign-return-address", i32 0}
!48 = !{i32 8, !"sign-return-address-all", i32 0}
!49 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!50 = !{i32 7, !"uwtable", i32 1}
!51 = !{i32 7, !"frame-pointer", i32 2}
!52 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!53 = !{!"branch_weights", i32 1, i32 2000}
!54 = !{i64 2154572412, i64 2154572900, i64 2154572449, i64 2154572505, i64 2154572539, i64 2154572563, i64 2154572604, i64 2154572625, i64 2154572653, i64 2154572687}
