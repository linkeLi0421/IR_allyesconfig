; ModuleID = '/llk/IR_all_yes/drivers/scsi/cxgbi/cxgb3i/cxgb3i.c_pt.bc'
source_filename = "../drivers/scsi/cxgbi/cxgb3i/cxgb3i.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.171 }
%union.anon.171 = type { ptr }
%struct.cxgb3_client = type { ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.iscsi_transport = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.scsi_host_template = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i32, i32, i32, i32, i16, i8, i32, i8, i32, ptr, ptr, i64, ptr, i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.cxgbi_sock = type { ptr, i32, i32, i32, i32, i16, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.kref, i32, i32, %union.anon.204, %union.anon.205, ptr, %struct.sk_buff_head, %struct.sk_buff_head, %struct.timer_list, %struct.completion, i32, %struct.rwlock_t, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%union.anon.204 = type { %struct.sockaddr_in6 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon.72 }
%union.anon.72 = type { [4 x i32] }
%union.anon.205 = type { %struct.sockaddr_in6 }
%struct.sk_buff_head = type { %union.anon.79, i32, %struct.spinlock }
%union.anon.79 = type { %struct.anon.80 }
%struct.anon.80 = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.sk_buff = type { %union.anon.50, %union.anon.53, %union.anon.54, [48 x i8], %union.anon.55, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.57, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type { ptr, ptr, %union.anon.52 }
%union.anon.52 = type { ptr }
%union.anon.53 = type { ptr }
%union.anon.54 = type { i64 }
%union.anon.55 = type { %struct.anon.56 }
%struct.anon.56 = type { i32, ptr }
%union.anon.57 = type { %struct.anon.58 }
%struct.anon.58 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.59, i32, i32, i32, i16, i16, %union.anon.61, i32, %union.anon.62, %union.anon.63, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.59 = type { i32 }
%union.anon.61 = type { i32 }
%union.anon.62 = type { i32 }
%union.anon.63 = type { i16 }
%struct.cpl_abort_req_rss = type { %union.opcode_tid, i32, i8, i8, [6 x i8] }
%union.opcode_tid = type { i32 }
%struct.work_request_hdr = type { i32, i32 }
%struct.cpl_abort_rpl = type { %struct.work_request_hdr, %union.opcode_tid, i32, i8, i8, [6 x i8] }
%struct.cxgbi_device = type { %struct.list_head, %struct.list_head, i32, ptr, ptr, ptr, ptr, i8, i8, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.cxgbi_ports_map, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cxgbi_ports_map = type { i32, i32, i16, %struct.spinlock, i32, ptr }
%struct.cpl_abort_rpl_rss = type { %union.opcode_tid, i32, i8, i8, [6 x i8] }
%struct.cpl_close_con_rpl = type { %union.opcode_tid, [3 x i8], i8, i32, i32 }
%struct.cpl_iscsi_hdr_norss = type { %union.opcode_tid, i16, i16, i32, i16, i8, i8 }
%struct.cpl_rx_data_ddp_norss = type { %union.opcode_tid, i16, i16, i32, i32, i32, i32 }
%struct.cpl_iscsi_hdr = type { %union.opcode_tid, i16, i16, i32, i16, i8, i8 }
%struct.cpl_act_open_rpl = type { %union.opcode_tid, i16, i16, i32, i32, i32, [3 x i8], i8 }
%struct.cpl_act_establish = type { %union.opcode_tid, i16, i16, i32, i32, i32, i16, i16, i32, i32 }
%struct.cpl_wr_ack = type { %union.opcode_tid, i16, i16, i32, i32 }
%struct.cpl_abort_req = type { %struct.work_request_hdr, %union.opcode_tid, i32, i8, i8, [6 x i8] }
%struct.cpl_act_open_req = type { %struct.work_request_hdr, %union.opcode_tid, i16, i16, i32, i32, i32, i32, i32, i32 }
%struct.l2t_entry = type { i16, i16, i32, i32, i16, i16, ptr, ptr, ptr, %struct.sk_buff_head, %struct.spinlock, %struct.atomic_t, [6 x i8] }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.adap_ports = type { i32, [2 x ptr] }
%struct.ofld_page_info = type { i32, i32 }
%struct.cxgbi_tag_format = type { [4 x i8], i8, i8, i8, i8, i32, i32, i32, i32, i32 }
%struct.ulp_iscsi_info = type { i32, i32, i32, i32, [4 x i8], i32, i32, ptr }
%struct.adapter = type { %struct.t3cdev, %struct.list_head, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.adapter_params, i32, [3 x i32], i32, [9 x %struct.anon.207], [40 x i8], %struct.sge, %struct.mc7, %struct.mc7, %struct.mc7, %struct.mc5, [2 x ptr], i32, %struct.delayed_work, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, ptr, %struct.mutex, %struct.spinlock, %struct.spinlock, ptr, [56 x i8] }
%struct.t3cdev = type { [16 x i8], i32, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.adapter_params = type { %struct.sge_params, %struct.mc5_params, %struct.tp_params, %struct.vpd_params, %struct.pci_params, ptr, [16 x i16], [32 x i16], [32 x i16], i32, i32, i32, i32, i32, i32 }
%struct.sge_params = type { i32, [8 x %struct.qset_params] }
%struct.qset_params = type { i32, i32, i32, i32, i32, [3 x i32], i32, i32 }
%struct.mc5_params = type { i32, i32, i32, i32 }
%struct.tp_params = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.vpd_params = type { i32, i32, i32, i32, i32, [17 x i8], [6 x i8], [2 x i8], [2 x i16] }
%struct.pci_params = type { i32, i16, i8, i8 }
%struct.anon.207 = type { i16, [22 x i8] }
%struct.sge = type { [8 x %struct.sge_qset], %struct.spinlock, [84 x i8] }
%struct.sge_qset = type { ptr, %struct.napi_struct, %struct.sge_rspq, [2 x %struct.sge_fl], [3 x %struct.sge_txq], i32, ptr, ptr, ptr, i32, %struct.timer_list, %struct.timer_list, [5 x i32], [40 x i8] }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.sge_rspq = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.sk_buff_head, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.sge_fl = type { i32, i32, i32, i32, i32, i32, i32, %struct.fl_pg_chunk, i32, i32, i32, ptr, ptr, i32, i32, i32, i32 }
%struct.fl_pg_chunk = type { ptr, ptr, i32, ptr, i32 }
%struct.sge_txq = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.spinlock, i32, i32, %struct.sk_buff_head, %struct.work_struct, i32, i32, i32 }
%struct.mc7 = type { ptr, i32, i32, i32, ptr, %struct.mc7_stats }
%struct.mc7_stats = type { i32, i32, i32, i32 }
%struct.mc5 = type { ptr, i32, i8, i8, i8, %struct.mc5_stats }
%struct.mc5_stats = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.cxgbi_hba = type { ptr, ptr, ptr, ptr, i32, i8 }
%struct.cpl_set_tcb_field = type { %struct.work_request_hdr, %union.opcode_tid, i8, i8, i16, i64, i64 }
%struct.cxgbi_task_tag_info = type { i8, i8, i16, i32, i32, i32, %struct.cxgbi_pagepod_hdr, i32, i32, ptr }
%struct.cxgbi_pagepod_hdr = type { i32, i32, i32, i32, i64 }
%struct.cxgbi_ppm = type { %struct.kref, ptr, ptr, ptr, ptr, %struct.cxgbi_tag_format, i32, i32, i32, i32, i32, ptr, %struct.spinlock, i32, i32, i32, ptr, [0 x %struct.cxgbi_ppod_data] }
%struct.cxgbi_ppod_data = type { i8, i8, i16, i32 }
%struct.ulp_mem_io = type { %struct.work_request_hdr, i32, i32 }
%struct.cpl_close_con_req = type { %struct.work_request_hdr, %union.opcode_tid, i32 }
%struct.cpl_rx_data_ack = type { %struct.work_request_hdr, %union.opcode_tid, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.178, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.199, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.178 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.199 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.t3c_data = type { %struct.list_head, ptr, i32, i32, i32, ptr, [100 x i8], %struct.tid_info, ptr, %struct.spinlock, %struct.work_struct, ptr, i32, [28 x i8] }
%struct.tid_info = type { ptr, i32, %struct.atomic_t, ptr, i32, i32, ptr, i32, i32, [92 x i8], %struct.spinlock, ptr, i32, [76 x i8], %struct.spinlock, ptr, i32, [76 x i8] }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@__UNIQUE_ID_author632 = internal constant [43 x i8] c"cxgb3i.author=Chelsio Communications, Inc.\00", section ".modinfo", align 1
@__UNIQUE_ID_description633 = internal constant [43 x i8] c"cxgb3i.description=Chelsio T3 iSCSI Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_version634 = internal constant [24 x i8] c"cxgb3i.version=2.0.1-ko\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"cxgb3i\00", [25 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"2.0.1-ko\00", [23 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__UNIQUE_ID_file635 = internal constant [45 x i8] c"cxgb3i.file=drivers/scsi/cxgbi/cxgb3i/cxgb3i\00", section ".modinfo", align 1
@__UNIQUE_ID_license636 = internal constant [19 x i8] c"cxgb3i.license=GPL\00", section ".modinfo", align 1
@__param_str_dbg_level = internal constant [17 x i8] c"cxgb3i.dbg_level\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@dbg_level = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_dbg_level = internal constant %struct.kernel_param { ptr @__param_str_dbg_level, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.171 { ptr @dbg_level } }, section "__param", align 4
@__UNIQUE_ID_dbg_leveltype637 = internal constant [31 x i8] c"cxgb3i.parmtype=dbg_level:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_dbg_level638 = internal constant [45 x i8] c"cxgb3i.parm=dbg_level:debug flag (default=0)\00", section ".modinfo", align 1
@__param_str_cxgb3i_rcv_win = internal constant [22 x i8] c"cxgb3i.cxgb3i_rcv_win\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@cxgb3i_rcv_win = internal global { i32, [28 x i8] } { i32 262144, [28 x i8] zeroinitializer }, align 32
@__param_cxgb3i_rcv_win = internal constant %struct.kernel_param { ptr @__param_str_cxgb3i_rcv_win, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.171 { ptr @cxgb3i_rcv_win } }, section "__param", align 4
@__UNIQUE_ID_cxgb3i_rcv_wintype639 = internal constant [35 x i8] c"cxgb3i.parmtype=cxgb3i_rcv_win:int\00", section ".modinfo", align 1
@__UNIQUE_ID_cxgb3i_rcv_win640 = internal constant [71 x i8] c"cxgb3i.parm=cxgb3i_rcv_win:TCP receive window in bytes (default=256KB)\00", section ".modinfo", align 1
@__param_str_cxgb3i_snd_win = internal constant [22 x i8] c"cxgb3i.cxgb3i_snd_win\00", align 1
@cxgb3i_snd_win = internal global { i32, [28 x i8] } { i32 131072, [28 x i8] zeroinitializer }, align 32
@__param_cxgb3i_snd_win = internal constant %struct.kernel_param { ptr @__param_str_cxgb3i_snd_win, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.171 { ptr @cxgb3i_snd_win } }, section "__param", align 4
@__UNIQUE_ID_cxgb3i_snd_wintype641 = internal constant [35 x i8] c"cxgb3i.parmtype=cxgb3i_snd_win:int\00", section ".modinfo", align 1
@__UNIQUE_ID_cxgb3i_snd_win642 = internal constant [68 x i8] c"cxgb3i.parm=cxgb3i_snd_win:TCP send window in bytes (default=128KB)\00", section ".modinfo", align 1
@__param_str_cxgb3i_rx_credit_thres = internal constant [30 x i8] c"cxgb3i.cxgb3i_rx_credit_thres\00", align 1
@cxgb3i_rx_credit_thres = internal global { i32, [28 x i8] } { i32 10240, [28 x i8] zeroinitializer }, align 32
@__param_cxgb3i_rx_credit_thres = internal constant %struct.kernel_param { ptr @__param_str_cxgb3i_rx_credit_thres, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.171 { ptr @cxgb3i_rx_credit_thres } }, section "__param", align 4
@__UNIQUE_ID_cxgb3i_rx_credit_threstype643 = internal constant [43 x i8] c"cxgb3i.parmtype=cxgb3i_rx_credit_thres:int\00", section ".modinfo", align 1
@__UNIQUE_ID_cxgb3i_rx_credit_thres644 = internal constant [87 x i8] c"cxgb3i.parm=cxgb3i_rx_credit_thres:RX credits return threshold in bytes (default=10KB)\00", section ".modinfo", align 1
@__param_str_cxgb3i_max_connect = internal constant [26 x i8] c"cxgb3i.cxgb3i_max_connect\00", align 1
@cxgb3i_max_connect = internal global { i32, [28 x i8] } { i32 8192, [28 x i8] zeroinitializer }, align 32
@__param_cxgb3i_max_connect = internal constant %struct.kernel_param { ptr @__param_str_cxgb3i_max_connect, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.171 { ptr @cxgb3i_max_connect } }, section "__param", align 4
@__UNIQUE_ID_cxgb3i_max_connecttype645 = internal constant [40 x i8] c"cxgb3i.parmtype=cxgb3i_max_connect:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_cxgb3i_max_connect646 = internal constant [68 x i8] c"cxgb3i.parm=cxgb3i_max_connect:Max. # of connections (default=8092)\00", section ".modinfo", align 1
@__param_str_cxgb3i_sport_base = internal constant [25 x i8] c"cxgb3i.cxgb3i_sport_base\00", align 1
@cxgb3i_sport_base = internal global { i32, [28 x i8] } { i32 20000, [28 x i8] zeroinitializer }, align 32
@__param_cxgb3i_sport_base = internal constant %struct.kernel_param { ptr @__param_str_cxgb3i_sport_base, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.171 { ptr @cxgb3i_sport_base } }, section "__param", align 4
@__UNIQUE_ID_cxgb3i_sport_basetype647 = internal constant [39 x i8] c"cxgb3i.parmtype=cxgb3i_sport_base:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_cxgb3i_sport_base648 = internal constant [67 x i8] c"cxgb3i.parm=cxgb3i_sport_base:starting port number (default=20000)\00", section ".modinfo", align 1
@cxgb3i_cpl_handlers = dso_local global { [166 x ptr], [168 x i8] } { [166 x ptr] [ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @do_peer_close, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @do_abort_req, ptr @do_abort_rpl, ptr @do_close_con_rpl, ptr @do_iscsi_hdr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @do_act_open_rpl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @do_act_establish, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @do_wr_ack, ptr null, ptr null, ptr null, ptr null, ptr null], [168 x i8] zeroinitializer }, align 32
@t3_client = internal global { %struct.cxgb3_client, [32 x i8] } { %struct.cxgb3_client { ptr @.str.1, ptr @cxgb3i_dev_open, ptr @cxgb3i_dev_close, ptr @cxgb3i_cpl_handlers, ptr null, %struct.list_head zeroinitializer, ptr @cxgb3i_dev_event_handler }, [32 x i8] zeroinitializer }, align 32
@cxgb3i_iscsi_transport = internal global { %struct.iscsi_transport, [60 x i8] } { %struct.iscsi_transport { ptr null, ptr @.str.1, i32 12473, ptr @cxgbi_create_session, ptr @cxgbi_destroy_session, ptr @cxgbi_create_conn, ptr @iscsi_conn_unbind, ptr @cxgbi_bind_conn, ptr @iscsi_conn_start, ptr @iscsi_conn_stop, ptr @iscsi_tcp_conn_teardown, ptr @cxgbi_set_conn_param, ptr @cxgbi_get_ep_param, ptr @iscsi_conn_get_param, ptr @iscsi_session_get_param, ptr @cxgbi_get_host_param, ptr @cxgbi_set_host_param, ptr @iscsi_conn_send_pdu, ptr @cxgbi_get_conn_stats, ptr @iscsi_tcp_task_init, ptr @iscsi_tcp_task_xmit, ptr @cxgbi_cleanup_task, ptr @cxgbi_conn_alloc_pdu, ptr @cxgbi_conn_xmit_pdu, ptr @cxgbi_conn_init_pdu, ptr @cxgbi_parse_pdu_itt, ptr @iscsi_session_recovery_timedout, ptr @cxgbi_ep_connect, ptr @cxgbi_ep_poll, ptr @cxgbi_ep_disconnect, ptr null, ptr null, ptr null, ptr null, ptr @cxgbi_attr_is_visible, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@cxgb3i_stt = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__initcall__kmod_cxgb3i__653_1413_cxgb3i_init_module6 = internal global ptr @cxgb3i_init_module, section ".initcall6.init", align 4
@__exitcall_cxgb3i_exit_module = internal global ptr @cxgb3i_exit_module, section ".exitcall.exit", align 4
@do_peer_close._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 611, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016cxgb3i:%s: csk 0x%p,%u,0x%lx,%u.\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"do_peer_close\00", [18 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/scsi/cxgbi/cxgb3i/cxgb3i.c\00", [61 x i8] zeroinitializer }, align 32
@do_peer_close._entry_ptr = internal global ptr @do_peer_close._entry, section ".printk_index", align 4
@do_abort_req._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.6, ptr @.str.5, i32 668, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"do_abort_req\00", [19 x i8] zeroinitializer }, align 32
@do_abort_req._entry_ptr = internal global ptr @do_abort_req._entry, section ".printk_index", align 4
@__cxgbi_sock_get._entry = internal constant %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.9, i32 334, ptr null, ptr null }, align 1
@.str.7 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016cxgb3i:%s: %s, get csk 0x%p, ref %u+1.\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"__cxgbi_sock_get\00", [47 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/scsi/cxgbi/cxgb3i/../libcxgbi.h\00", [56 x i8] zeroinitializer }, align 32
@__cxgbi_sock_get._entry_ptr = internal global ptr @__cxgbi_sock_get._entry, section ".printk_index", align 4
@cxgbi_sock_set_flag._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.9, i32 280, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016cxgb3i:%s: csk 0x%p,%u,0x%lx, bit %d.\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cxgbi_sock_set_flag\00", [44 x i8] zeroinitializer }, align 32
@cxgbi_sock_set_flag._entry_ptr = internal global ptr @cxgbi_sock_set_flag._entry, section ".printk_index", align 4
@cxgbi_sock_set_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.9, i32 304, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016cxgb3i:%s: csk 0x%p,%u,0x%lx, state -> %u.\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cxgbi_sock_set_state\00", [43 x i8] zeroinitializer }, align 32
@cxgbi_sock_set_state._entry_ptr = internal global ptr @cxgbi_sock_set_state._entry, section ".printk_index", align 4
@cxgbi_sock_clear_flag._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.14, ptr @.str.9, i32 289, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cxgbi_sock_clear_flag\00", [42 x i8] zeroinitializer }, align 32
@cxgbi_sock_clear_flag._entry_ptr = internal global ptr @cxgbi_sock_clear_flag._entry, section ".printk_index", align 4
@send_abort_rpl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.5, i32 282, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016cxgb3i:%s: csk 0x%p,%u,0x%lx,%u, status %d.\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"send_abort_rpl\00", [17 x i8] zeroinitializer }, align 32
@send_abort_rpl._entry_ptr = internal global ptr @send_abort_rpl._entry, section ".printk_index", align 4
@__cxgbi_sock_put._entry = internal constant %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.9, i32 325, ptr null, ptr null }, align 1
@.str.17 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016cxgb3i:%s: %s, put csk 0x%p, ref %u-1.\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"__cxgbi_sock_put\00", [47 x i8] zeroinitializer }, align 32
@__cxgbi_sock_put._entry_ptr = internal global ptr @__cxgbi_sock_put._entry, section ".printk_index", align 4
@cxgbi_sock_free._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.9, i32 316, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\016cxgb3i:%s: free csk 0x%p, state %u, flags 0x%lx\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cxgbi_sock_free\00", [16 x i8] zeroinitializer }, align 32
@cxgbi_sock_free._entry_ptr = internal global ptr @cxgbi_sock_free._entry, section ".printk_index", align 4
@do_abort_rpl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.5, i32 715, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\016cxgb3i:%s: status 0x%x, csk 0x%p, s %u, 0x%lx.\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"do_abort_rpl\00", [19 x i8] zeroinitializer }, align 32
@do_abort_rpl._entry_ptr = internal global ptr @do_abort_rpl._entry, section ".printk_index", align 4
@do_close_con_rpl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.5, i32 630, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016cxgb3i:%s: csk 0x%p,%u,0x%lx,%u, snxt %u.\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"do_close_con_rpl\00", [47 x i8] zeroinitializer }, align 32
@do_close_con_rpl._entry_ptr = internal global ptr @do_close_con_rpl._entry, section ".printk_index", align 4
@do_iscsi_hdr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.5, i32 755, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\016cxgb3i:%s: csk 0x%p,%u,0x%lx,%u, skb 0x%p,%u.\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"do_iscsi_hdr\00", [19 x i8] zeroinitializer }, align 32
@do_iscsi_hdr._entry_ptr = internal global ptr @do_iscsi_hdr._entry, section ".printk_index", align 4
@do_iscsi_hdr._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.26, ptr @.str.5, i32 762, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016cxgb3i:%s: csk 0x%p,%u,0x%lx,%u, bad state.\0A\00", [49 x i8] zeroinitializer }, align 32
@do_iscsi_hdr._entry_ptr.29 = internal global ptr @do_iscsi_hdr._entry.27, section ".printk_index", align 4
@do_iscsi_hdr._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.26, ptr @.str.5, i32 780, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013cxgb3i:%s: %s: tid %u, CPL_ISCSI_HDR, skb len %u < %u.\0A\00", [38 x i8] zeroinitializer }, align 32
@do_iscsi_hdr._entry_ptr.32 = internal global ptr @do_iscsi_hdr._entry.30, section ".printk_index", align 4
@do_iscsi_hdr._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.26, ptr @.str.5, i32 790, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013cxgb3i:%s: %s: tid %u, copy cpl_ddp %u-%zu failed %d.\0A\00", [39 x i8] zeroinitializer }, align 32
@do_iscsi_hdr._entry_ptr.35 = internal global ptr @do_iscsi_hdr._entry.33, section ".printk_index", align 4
@do_iscsi_hdr._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.26, ptr @.str.5, i32 801, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\016cxgb3i:%s: csk 0x%p, skb 0x%p,%u, pdulen %u, status 0x%x.\0A\00", [35 x i8] zeroinitializer }, align 32
@do_iscsi_hdr._entry_ptr.38 = internal global ptr @do_iscsi_hdr._entry.36, section ".printk_index", align 4
@do_iscsi_hdr._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.26, ptr @.str.5, i32 815, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013cxgb3i:%s: %s: tid %u, cp %zu/%u failed %d.\0A\00", [49 x i8] zeroinitializer }, align 32
@do_iscsi_hdr._entry_ptr.41 = internal global ptr @do_iscsi_hdr._entry.39, section ".printk_index", align 4
@do_iscsi_hdr._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.26, ptr @.str.5, i32 821, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\016cxgb3i:%s: skb 0x%p, pdu not ddp'ed %u/%u, status 0x%x.\0A\00", [37 x i8] zeroinitializer }, align 32
@do_iscsi_hdr._entry_ptr.44 = internal global ptr @do_iscsi_hdr._entry.42, section ".printk_index", align 4
@send_abort_req._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.5, i32 265, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\016cxgb3i:%s: csk 0x%p,%u,0x%lx,%u, snd_nxt %u, 0x%x.\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"send_abort_req\00", [17 x i8] zeroinitializer }, align 32
@send_abort_req._entry_ptr = internal global ptr @send_abort_req._entry, section ".printk_index", align 4
@abort_arp_failure._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.5, i32 234, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016cxgb3i:%s: t3dev 0x%p, tid %u, skb 0x%p.\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"abort_arp_failure\00", [46 x i8] zeroinitializer }, align 32
@abort_arp_failure._entry_ptr = internal global ptr @abort_arp_failure._entry, section ".printk_index", align 4
@do_act_open_rpl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.5, i32 578, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\016cxgb3i:%s: csk 0x%p,%u,0x%lx,%u, status %u, %pI4:%u-%pI4:%u.\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"do_act_open_rpl\00", [16 x i8] zeroinitializer }, align 32
@do_act_open_rpl._entry_ptr = internal global ptr @do_act_open_rpl._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@act_open_retry_timer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.52, ptr @.str.5, i32 554, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"act_open_retry_timer\00", [43 x i8] zeroinitializer }, align 32
@act_open_retry_timer._entry_ptr = internal global ptr @act_open_retry_timer._entry, section ".printk_index", align 4
@alloc_wr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.9, i32 374, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016cxgb3i:%s: alloc cpl wr skb %u+%u, OOM.\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"alloc_wr\00", [23 x i8] zeroinitializer }, align 32
@alloc_wr._entry_ptr = internal global ptr @alloc_wr._entry, section ".printk_index", align 4
@send_act_open_req._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.5, i32 184, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\016cxgb3i:%s: csk 0x%p,%u,0x%lx,%u, %pI4:%u-%pI4:%u, %u,%u,%u.\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"send_act_open_req\00", [46 x i8] zeroinitializer }, align 32
@send_act_open_req._entry_ptr = internal global ptr @send_act_open_req._entry, section ".printk_index", align 4
@do_act_establish._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.5, i32 484, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\016cxgb3i:%s: atid 0x%x,tid 0x%x, csk 0x%p,%u,0x%lx, isn %u.\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"do_act_establish\00", [47 x i8] zeroinitializer }, align 32
@do_act_establish._entry_ptr = internal global ptr @do_act_establish._entry, section ".printk_index", align 4
@do_act_establish._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.58, ptr @.str.5, i32 503, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016cxgb3i:%s: csk 0x%p,%u,0x%lx,%u, got EST.\0A\00", [51 x i8] zeroinitializer }, align 32
@do_act_establish._entry_ptr.61 = internal global ptr @do_act_establish._entry.59, section ".printk_index", align 4
@__func__.free_atid = private unnamed_addr constant [10 x i8] c"free_atid\00", align 1
@push_tx_frames._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.63, ptr @.str.5, i32 402, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\016cxgb3i:%s: csk 0x%p,%u,0x%lx,%u, in closing state.\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"push_tx_frames\00", [17 x i8] zeroinitializer }, align 32
@push_tx_frames._entry_ptr = internal global ptr @push_tx_frames._entry, section ".printk_index", align 4
@skb_wrs = internal unnamed_addr global [19 x i32] zeroinitializer, section ".data..read_mostly", align 4
@wrlen = internal unnamed_addr global i32 0, section ".data..read_mostly", align 4
@push_tx_frames._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.63, ptr @.str.5, i32 420, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\016cxgb3i:%s: csk 0x%p, skb len %u/%u, frag %u, wr %d<%u.\0A\00", [38 x i8] zeroinitializer }, align 32
@push_tx_frames._entry_ptr.66 = internal global ptr @push_tx_frames._entry.64, section ".printk_index", align 4
@push_tx_frames._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.63, ptr @.str.5, i32 435, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"\016cxgb3i:%s: csk 0x%p, enqueue, skb len %u/%u, frag %u, wr %d, left %u, unack %u.\0A\00", [45 x i8] zeroinitializer }, align 32
@push_tx_frames._entry_ptr.69 = internal global ptr @push_tx_frames._entry.67, section ".printk_index", align 4
@push_tx_frames._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.63, ptr @.str.5, i32 452, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\016cxgb3i:%s: csk 0x%p, tid 0x%x, send skb 0x%p.\0A\00", [47 x i8] zeroinitializer }, align 32
@push_tx_frames._entry_ptr.72 = internal global ptr @push_tx_frames._entry.70, section ".printk_index", align 4
@ulp2_extra_len = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 0, i32 4, i32 4, i32 8], [16 x i8] zeroinitializer }, align 32
@do_wr_ack._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.74, ptr @.str.5, i32 854, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016cxgb3i:%s: csk 0x%p,%u,0x%lx,%u, cr %u.\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"do_wr_ack\00", [22 x i8] zeroinitializer }, align 32
@do_wr_ack._entry_ptr = internal global ptr @do_wr_ack._entry, section ".printk_index", align 4
@cxgb3i_dev_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.76, ptr @.str.5, i32 1309, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016cxgb3i:%s: 0x%p, updating.\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cxgb3i_dev_open\00", [16 x i8] zeroinitializer }, align 32
@cxgb3i_dev_open._entry_ptr = internal global ptr @cxgb3i_dev_open._entry, section ".printk_index", align 4
@cxgb3i_dev_open._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.76, ptr @.str.5, i32 1315, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\014cxgb3i:%s: device 0x%p register failed.\0A\00", [53 x i8] zeroinitializer }, align 32
@cxgb3i_dev_open._entry_ptr.79 = internal global ptr @cxgb3i_dev_open._entry.77, section ".printk_index", align 4
@cxgb3i_dev_open._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.76, ptr @.str.5, i32 1333, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016cxgb3i:%s: 0x%p ddp init failed %d\0A\00", [58 x i8] zeroinitializer }, align 32
@cxgb3i_dev_open._entry_ptr.82 = internal global ptr @cxgb3i_dev_open._entry.80, section ".printk_index", align 4
@cxgb3i_dev_open._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.76, ptr @.str.5, i32 1339, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016cxgb3i:%s: 0x%p offload init failed\0A\00", [57 x i8] zeroinitializer }, align 32
@cxgb3i_dev_open._entry_ptr.85 = internal global ptr @cxgb3i_dev_open._entry.83, section ".printk_index", align 4
@cxgb3i_host_template = internal global { %struct.scsi_host_template, [48 x i8] } { %struct.scsi_host_template { i32 0, ptr @iscsi_queuecommand, ptr null, ptr null, ptr @.str.1, ptr null, ptr null, ptr null, ptr null, ptr @iscsi_eh_abort, ptr @iscsi_eh_device_reset, ptr @iscsi_eh_recover_target, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @iscsi_target_alloc, ptr null, ptr null, ptr null, ptr @scsi_change_queue_depth, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @iscsi_eh_cmd_timed_out, ptr null, ptr null, ptr @.str.1, ptr null, i32 1024, i32 -1, i16 128, i16 0, i32 65535, i32 0, i32 4095, i32 0, i16 32, i8 0, i32 0, i8 -128, i32 0, ptr null, ptr null, i64 0, ptr null, i32 0 }, [48 x i8] zeroinitializer }, align 32
@cxgb3i_dev_open._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.76, ptr @.str.5, i32 1353, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\016cxgb3i:%s: cdev 0x%p, f 0x%x, t3dev 0x%p open, err %d.\0A\00", [38 x i8] zeroinitializer }, align 32
@cxgb3i_dev_open._entry_ptr.88 = internal global ptr @cxgb3i_dev_open._entry.86, section ".printk_index", align 4
@cxgb3i_ddp_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.90, ptr @.str.5, i32 1233, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013cxgb3i:%s: %s, failed to get iscsi param %d.\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cxgb3i_ddp_init\00", [16 x i8] zeroinitializer }, align 32
@cxgb3i_ddp_init._entry_ptr = internal global ptr @cxgb3i_ddp_init._entry, section ".printk_index", align 4
@cxgb3i_ddp_init._entry.91 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.90, ptr @.str.5, i32 1238, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\014cxgb3i:%s: T3 %s, iscsi NOT enabled %u ~ %u!\0A\00", [48 x i8] zeroinitializer }, align 32
@cxgb3i_ddp_init._entry_ptr.93 = internal global ptr @cxgb3i_ddp_init._entry.91, section ".printk_index", align 4
@cxgb3i_ddp_init._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.90, ptr @.str.5, i32 1247, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\016cxgb3i:%s: T3 %s: 0x%x~0x%x, 0x%x, tagmask 0x%x -> 0x%x.\0A\00", [36 x i8] zeroinitializer }, align 32
@cxgb3i_ddp_init._entry_ptr.96 = internal global ptr @cxgb3i_ddp_init._entry.94, section ".printk_index", align 4
@cxgb3i_ddp_init._entry.97 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.90, ptr @.str.5, i32 1267, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013cxgb3i:%s: T3 %s fail to set iscsi param %d.\0A\00", [48 x i8] zeroinitializer }, align 32
@cxgb3i_ddp_init._entry_ptr.99 = internal global ptr @cxgb3i_ddp_init._entry.97, section ".printk_index", align 4
@cxgbi_tagmask_check._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.101, ptr @.str.102, i32 314, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"\016cxgb3i:%s: ippm: tagmask 0x%x, rsvd %u=%u+%u+1, mask 0x%x,0x%x, pg %u,%u,%u,%u.\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cxgbi_tagmask_check\00", [44 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"drivers/net/ethernet/chelsio/libcxgb/libcxgb_ppm.h\00", [45 x i8] zeroinitializer }, align 32
@cxgbi_tagmask_check._entry_ptr = internal global ptr @cxgbi_tagmask_check._entry, section ".printk_index", align 4
@ddp_setup_conn_digest._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.104, ptr @.str.5, i32 1197, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016cxgb3i:%s: csk 0x%p, tid %u, crc %d,%d.\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ddp_setup_conn_digest\00", [42 x i8] zeroinitializer }, align 32
@ddp_setup_conn_digest._entry_ptr = internal global ptr @ddp_setup_conn_digest._entry, section ".printk_index", align 4
@ddp_setup_conn_pgidx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.106, ptr @.str.5, i32 1161, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016cxgb3i:%s: csk 0x%p, tid %u, pg_idx %d.\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ddp_setup_conn_pgidx\00", [43 x i8] zeroinitializer }, align 32
@ddp_setup_conn_pgidx._entry_ptr = internal global ptr @ddp_setup_conn_pgidx._entry, section ".printk_index", align 4
@ddp_clear_map._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.108, ptr @.str.5, i32 1135, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\016cxgb3i:%s: cdev 0x%p, clear idx %u, npods %u.\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ddp_clear_map\00", [18 x i8] zeroinitializer }, align 32
@ddp_clear_map._entry_ptr = internal global ptr @ddp_clear_map._entry, section ".printk_index", align 4
@ddp_clear_map._entry.109 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.108, ptr @.str.5, i32 1143, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013cxgb3i:%s: cdev 0x%p, clear ddp, %u,%d/%u, skb OOM.\0A\00", [41 x i8] zeroinitializer }, align 32
@ddp_clear_map._entry_ptr.111 = internal global ptr @ddp_clear_map._entry.109, section ".printk_index", align 4
@cxgb3i_ofld_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.113, ptr @.str.5, i32 1049, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\014cxgb3i:%s: t3 0x%p, offload up, ioctl failed.\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cxgb3i_ofld_init\00", [47 x i8] zeroinitializer }, align 32
@cxgb3i_ofld_init._entry_ptr = internal global ptr @cxgb3i_ofld_init._entry, section ".printk_index", align 4
@cxgb3i_ofld_init._entry.114 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.113, ptr @.str.5, i32 1070, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016cxgb3i:%s: cdev 0x%p, offload up, added.\0A\00", [52 x i8] zeroinitializer }, align 32
@cxgb3i_ofld_init._entry_ptr.116 = internal global ptr @cxgb3i_ofld_init._entry.114, section ".printk_index", align 4
@release_offload_resources._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.117, ptr @.str.5, i32 909, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"release_offload_resources\00", [38 x i8] zeroinitializer }, align 32
@release_offload_resources._entry_ptr = internal global ptr @release_offload_resources._entry, section ".printk_index", align 4
@__func__.l2t_put = private unnamed_addr constant [8 x i8] c"l2t_put\00", align 1
@l2t_release.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.118 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/net/ethernet/chelsio/cxgb3/l2t.h\00", [55 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.120 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.122 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@send_close_req._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.123, ptr @.str.5, i32 208, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"send_close_req\00", [17 x i8] zeroinitializer }, align 32
@send_close_req._entry_ptr = internal global ptr @send_close_req._entry, section ".printk_index", align 4
@send_rx_credits._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.125, ptr @.str.5, i32 306, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\016cxgb3i:%s: csk 0x%p,%u,0x%lx,%u, credit %u, dack %u.\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"send_rx_credits\00", [16 x i8] zeroinitializer }, align 32
@send_rx_credits._entry_ptr = internal global ptr @send_rx_credits._entry, section ".printk_index", align 4
@send_rx_credits._entry.126 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @.str.125, ptr @.str.5, i32 310, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016cxgb3i:%s: csk 0x%p, credit %u, OOM.\0A\00", [56 x i8] zeroinitializer }, align 32
@send_rx_credits._entry_ptr.128 = internal global ptr @send_rx_credits._entry.126, section ".printk_index", align 4
@init_act_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.129, ptr @.str.130, ptr @.str.5, i32 963, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016cxgb3i:%s: csk 0x%p,%u,0x%lx.\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"init_act_open\00", [18 x i8] zeroinitializer }, align 32
@init_act_open._entry_ptr = internal global ptr @init_act_open._entry, section ".printk_index", align 4
@init_act_open._entry.131 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.132, ptr @.str.130, ptr @.str.5, i32 973, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013cxgb3i:%s: NO l2t available.\0A\00", [32 x i8] zeroinitializer }, align 32
@init_act_open._entry_ptr.133 = internal global ptr @init_act_open._entry.131, section ".printk_index", align 4
@init_act_open._entry.134 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.135, ptr @.str.130, ptr @.str.5, i32 980, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013cxgb3i:%s: NO atid available.\0A\00", [63 x i8] zeroinitializer }, align 32
@init_act_open._entry_ptr.136 = internal global ptr @init_act_open._entry.134, section ".printk_index", align 4
@init_act_open._entry.137 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.138, ptr @.str.130, ptr @.str.5, i32 1007, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\016cxgb3i:%s: csk 0x%p,%u,0x%lx, %pI4:%u-%pI4:%u.\0A\00", [46 x i8] zeroinitializer }, align 32
@init_act_open._entry_ptr.139 = internal global ptr @init_act_open._entry.137, section ".printk_index", align 4
@update_address._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.140, ptr @.str.141, ptr @.str.5, i32 938, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\016cxgb3i:%s: %s set %pI4.\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"update_address\00", [17 x i8] zeroinitializer }, align 32
@update_address._entry_ptr = internal global ptr @update_address._entry, section ".printk_index", align 4
@update_address._entry.142 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.140, ptr @.str.141, ptr @.str.5, i32 943, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@update_address._entry_ptr.143 = internal global ptr @update_address._entry.142, section ".printk_index", align 4
@cxgb3i_dev_close._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.144, ptr @.str.145, ptr @.str.5, i32 1291, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016cxgb3i:%s: 0x%p close, f 0x%x.\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cxgb3i_dev_close\00", [47 x i8] zeroinitializer }, align 32
@cxgb3i_dev_close._entry_ptr = internal global ptr @cxgb3i_dev_close._entry, section ".printk_index", align 4
@cxgb3i_dev_event_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.146, ptr @.str.147, ptr @.str.5, i32 1366, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\016cxgb3i:%s: 0x%p, cdev 0x%p, event 0x%x, port 0x%x.\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cxgb3i_dev_event_handler\00", [39 x i8] zeroinitializer }, align 32
@cxgb3i_dev_event_handler._entry_ptr = internal global ptr @cxgb3i_dev_event_handler._entry, section ".printk_index", align 4
@cxgb3i_init_module._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.148, ptr @.str.149, ptr @.str.5, i32 1390, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\016%s\00", [27 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cxgb3i_init_module\00", [45 x i8] zeroinitializer }, align 32
@cxgb3i_init_module._entry_ptr = internal global ptr @cxgb3i_init_module._entry, section ".printk_index", align 4
@version = internal global { [54 x i8], [42 x i8] } { [54 x i8] c"Chelsio T3 iSCSI Driver cxgb3i v2.0.1-ko (Apr. 2015)\0A\00", [42 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 8, i64 20, i64 24, i64 31, i64 32, i64 33, i64 34]
@__sancov_gen_cov_switch_values.150 = internal global [5 x i64] [i64 3, i64 8, i64 3, i64 22, i64 23]
@__sancov_gen_cov_switch_values.151 = internal global [7 x i64] [i64 5, i64 8, i64 3, i64 20, i64 22, i64 23, i64 30]
@__sancov_gen_cov_switch_values.152 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 6]
@__sancov_gen_cov_switch_values.153 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 44, i32 1 }
@___asan_gen_.163 = private unnamed_addr constant [10 x i8] c"dbg_level\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 30, i32 21 }
@___asan_gen_.166 = private unnamed_addr constant [15 x i8] c"cxgb3i_rcv_win\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 50, i32 12 }
@___asan_gen_.169 = private unnamed_addr constant [15 x i8] c"cxgb3i_snd_win\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 54, i32 12 }
@___asan_gen_.172 = private unnamed_addr constant [23 x i8] c"cxgb3i_rx_credit_thres\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 58, i32 12 }
@___asan_gen_.175 = private unnamed_addr constant [19 x i8] c"cxgb3i_max_connect\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 63, i32 21 }
@___asan_gen_.178 = private unnamed_addr constant [18 x i8] c"cxgb3i_sport_base\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 67, i32 21 }
@___asan_gen_.181 = private unnamed_addr constant [20 x i8] c"cxgb3i_cpl_handlers\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 1023, i32 24 }
@___asan_gen_.184 = private unnamed_addr constant [10 x i8] c"t3_client\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 75, i32 28 }
@___asan_gen_.187 = private unnamed_addr constant [23 x i8] c"cxgb3i_iscsi_transport\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 103, i32 31 }
@___asan_gen_.190 = private unnamed_addr constant [11 x i8] c"cxgb3i_stt\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 147, i32 40 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 609, i32 2 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 666, i32 2 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 332, i32 2 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 278, i32 2 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 302, i32 2 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 287, i32 2 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 280, i32 2 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 323, i32 2 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 314, i32 3 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 712, i32 2 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 628, i32 2 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 753, i32 2 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 760, i32 3 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 778, i32 3 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 788, i32 3 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 799, i32 2 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 813, i32 4 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 819, i32 3 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 262, i32 2 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 232, i32 2 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 575, i32 2 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 552, i32 2 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 374, i32 3 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 179, i32 2 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 482, i32 2 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 502, i32 3 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 400, i32 4 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 417, i32 4 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 431, i32 3 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 450, i32 3 }
@___asan_gen_.424 = private unnamed_addr constant [15 x i8] c"ulp2_extra_len\00", align 1
@___asan_gen_.425 = private unnamed_addr constant [43 x i8] c"../drivers/scsi/cxgbi/cxgb3i/../libcxgbi.h\00", align 1
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 92, i32 27 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 852, i32 2 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 1309, i32 3 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 1315, i32 3 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 1333, i32 3 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 1339, i32 3 }
@___asan_gen_.463 = private unnamed_addr constant [21 x i8] c"cxgb3i_host_template\00", align 1
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 83, i32 34 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 1352, i32 2 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 1232, i32 3 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 1237, i32 3 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 1245, i32 2 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 1266, i32 4 }
@___asan_gen_.509 = private unnamed_addr constant [54 x i8] c"../drivers/net/ethernet/chelsio/libcxgb/libcxgb_ppm.h\00", align 1
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 309, i32 2 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 1196, i32 2 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 1160, i32 2 }
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 1133, i32 2 }
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 1142, i32 4 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 1049, i32 3 }
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 1070, i32 2 }
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 907, i32 2 }
@___asan_gen_.569 = private unnamed_addr constant [44 x i8] c"../drivers/net/ethernet/chelsio/cxgb3/l2t.h\00", align 1
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 134, i32 6 }
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.578, i32 695, i32 2 }
@___asan_gen_.578 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.578, i32 723, i32 2 }
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 206, i32 2 }
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 304, i32 2 }
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 310, i32 3 }
@___asan_gen_.609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 962, i32 2 }
@___asan_gen_.615 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 973, i32 3 }
@___asan_gen_.621 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 980, i32 3 }
@___asan_gen_.627 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 1003, i32 2 }
@___asan_gen_.636 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 937, i32 4 }
@___asan_gen_.639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 942, i32 4 }
@___asan_gen_.648 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 1291, i32 3 }
@___asan_gen_.657 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 1364, i32 2 }
@___asan_gen_.658 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.664 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.666 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 1390, i32 2 }
@___asan_gen_.667 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@___asan_gen_.668 = private constant [38 x i8] c"../drivers/scsi/cxgbi/cxgb3i/cxgb3i.c\00", align 1
@___asan_gen_.669 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 38, i32 13 }
@llvm.compiler.used = appending global [261 x ptr] [ptr @__UNIQUE_ID_author632, ptr @__UNIQUE_ID_cxgb3i_max_connect646, ptr @__UNIQUE_ID_cxgb3i_max_connecttype645, ptr @__UNIQUE_ID_cxgb3i_rcv_win640, ptr @__UNIQUE_ID_cxgb3i_rcv_wintype639, ptr @__UNIQUE_ID_cxgb3i_rx_credit_thres644, ptr @__UNIQUE_ID_cxgb3i_rx_credit_threstype643, ptr @__UNIQUE_ID_cxgb3i_snd_win642, ptr @__UNIQUE_ID_cxgb3i_snd_wintype641, ptr @__UNIQUE_ID_cxgb3i_sport_base648, ptr @__UNIQUE_ID_cxgb3i_sport_basetype647, ptr @__UNIQUE_ID_dbg_level638, ptr @__UNIQUE_ID_dbg_leveltype637, ptr @__UNIQUE_ID_description633, ptr @__UNIQUE_ID_file635, ptr @__UNIQUE_ID_license636, ptr @__UNIQUE_ID_version634, ptr @__cxgbi_sock_get._entry, ptr @__cxgbi_sock_get._entry_ptr, ptr @__cxgbi_sock_put._entry, ptr @__cxgbi_sock_put._entry_ptr, ptr @__exitcall_cxgb3i_exit_module, ptr @__initcall__kmod_cxgb3i__653_1413_cxgb3i_init_module6, ptr @__modver_attr, ptr @__param_cxgb3i_max_connect, ptr @__param_cxgb3i_rcv_win, ptr @__param_cxgb3i_rx_credit_thres, ptr @__param_cxgb3i_snd_win, ptr @__param_cxgb3i_sport_base, ptr @__param_dbg_level, ptr @abort_arp_failure._entry, ptr @abort_arp_failure._entry_ptr, ptr @act_open_retry_timer._entry, ptr @act_open_retry_timer._entry_ptr, ptr @alloc_wr._entry, ptr @alloc_wr._entry_ptr, ptr @cxgb3i_ddp_init._entry, ptr @cxgb3i_ddp_init._entry.91, ptr @cxgb3i_ddp_init._entry.94, ptr @cxgb3i_ddp_init._entry.97, ptr @cxgb3i_ddp_init._entry_ptr, ptr @cxgb3i_ddp_init._entry_ptr.93, ptr @cxgb3i_ddp_init._entry_ptr.96, ptr @cxgb3i_ddp_init._entry_ptr.99, ptr @cxgb3i_dev_close._entry, ptr @cxgb3i_dev_close._entry_ptr, ptr @cxgb3i_dev_event_handler._entry, ptr @cxgb3i_dev_event_handler._entry_ptr, ptr @cxgb3i_dev_open._entry, ptr @cxgb3i_dev_open._entry.77, ptr @cxgb3i_dev_open._entry.80, ptr @cxgb3i_dev_open._entry.83, ptr @cxgb3i_dev_open._entry.86, ptr @cxgb3i_dev_open._entry_ptr, ptr @cxgb3i_dev_open._entry_ptr.79, ptr @cxgb3i_dev_open._entry_ptr.82, ptr @cxgb3i_dev_open._entry_ptr.85, ptr @cxgb3i_dev_open._entry_ptr.88, ptr @cxgb3i_exit_module, ptr @cxgb3i_init_module._entry, ptr @cxgb3i_init_module._entry_ptr, ptr @cxgb3i_ofld_init._entry, ptr @cxgb3i_ofld_init._entry.114, ptr @cxgb3i_ofld_init._entry_ptr, ptr @cxgb3i_ofld_init._entry_ptr.116, ptr @cxgbi_sock_clear_flag._entry, ptr @cxgbi_sock_clear_flag._entry_ptr, ptr @cxgbi_sock_free._entry, ptr @cxgbi_sock_free._entry_ptr, ptr @cxgbi_sock_set_flag._entry, ptr @cxgbi_sock_set_flag._entry_ptr, ptr @cxgbi_sock_set_state._entry, ptr @cxgbi_sock_set_state._entry_ptr, ptr @cxgbi_tagmask_check._entry, ptr @cxgbi_tagmask_check._entry_ptr, ptr @ddp_clear_map._entry, ptr @ddp_clear_map._entry.109, ptr @ddp_clear_map._entry_ptr, ptr @ddp_clear_map._entry_ptr.111, ptr @ddp_setup_conn_digest._entry, ptr @ddp_setup_conn_digest._entry_ptr, ptr @ddp_setup_conn_pgidx._entry, ptr @ddp_setup_conn_pgidx._entry_ptr, ptr @do_abort_req._entry, ptr @do_abort_req._entry_ptr, ptr @do_abort_rpl._entry, ptr @do_abort_rpl._entry_ptr, ptr @do_act_establish._entry, ptr @do_act_establish._entry.59, ptr @do_act_establish._entry_ptr, ptr @do_act_establish._entry_ptr.61, ptr @do_act_open_rpl._entry, ptr @do_act_open_rpl._entry_ptr, ptr @do_close_con_rpl._entry, ptr @do_close_con_rpl._entry_ptr, ptr @do_iscsi_hdr._entry, ptr @do_iscsi_hdr._entry.27, ptr @do_iscsi_hdr._entry.30, ptr @do_iscsi_hdr._entry.33, ptr @do_iscsi_hdr._entry.36, ptr @do_iscsi_hdr._entry.39, ptr @do_iscsi_hdr._entry.42, ptr @do_iscsi_hdr._entry_ptr, ptr @do_iscsi_hdr._entry_ptr.29, ptr @do_iscsi_hdr._entry_ptr.32, ptr @do_iscsi_hdr._entry_ptr.35, ptr @do_iscsi_hdr._entry_ptr.38, ptr @do_iscsi_hdr._entry_ptr.41, ptr @do_iscsi_hdr._entry_ptr.44, ptr @do_peer_close._entry, ptr @do_peer_close._entry_ptr, ptr @do_wr_ack._entry, ptr @do_wr_ack._entry_ptr, ptr @init_act_open._entry, ptr @init_act_open._entry.131, ptr @init_act_open._entry.134, ptr @init_act_open._entry.137, ptr @init_act_open._entry_ptr, ptr @init_act_open._entry_ptr.133, ptr @init_act_open._entry_ptr.136, ptr @init_act_open._entry_ptr.139, ptr @push_tx_frames._entry, ptr @push_tx_frames._entry.64, ptr @push_tx_frames._entry.67, ptr @push_tx_frames._entry.70, ptr @push_tx_frames._entry_ptr, ptr @push_tx_frames._entry_ptr.66, ptr @push_tx_frames._entry_ptr.69, ptr @push_tx_frames._entry_ptr.72, ptr @release_offload_resources._entry, ptr @release_offload_resources._entry_ptr, ptr @send_abort_req._entry, ptr @send_abort_req._entry_ptr, ptr @send_abort_rpl._entry, ptr @send_abort_rpl._entry_ptr, ptr @send_act_open_req._entry, ptr @send_act_open_req._entry_ptr, ptr @send_close_req._entry, ptr @send_close_req._entry_ptr, ptr @send_rx_credits._entry, ptr @send_rx_credits._entry.126, ptr @send_rx_credits._entry_ptr, ptr @send_rx_credits._entry_ptr.128, ptr @update_address._entry, ptr @update_address._entry.142, ptr @update_address._entry_ptr, ptr @update_address._entry_ptr.143, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @dbg_level, ptr @cxgb3i_rcv_win, ptr @cxgb3i_snd_win, ptr @cxgb3i_rx_credit_thres, ptr @cxgb3i_max_connect, ptr @cxgb3i_sport_base, ptr @cxgb3i_cpl_handlers, ptr @t3_client, ptr @cxgb3i_iscsi_transport, ptr @cxgb3i_stt, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.31, ptr @.str.34, ptr @.str.37, ptr @.str.40, ptr @.str.43, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.60, ptr @.str.62, ptr @.str.63, ptr @.str.65, ptr @.str.68, ptr @.str.71, ptr @ulp2_extra_len, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.78, ptr @.str.81, ptr @.str.84, ptr @cxgb3i_host_template, ptr @.str.87, ptr @.str.89, ptr @.str.90, ptr @.str.92, ptr @.str.95, ptr @.str.98, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.110, ptr @.str.112, ptr @.str.113, ptr @.str.115, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.127, ptr @.str.129, ptr @.str.130, ptr @.str.132, ptr @.str.135, ptr @.str.138, ptr @.str.140, ptr @.str.141, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @version], section "llvm.metadata"
@0 = internal global [172 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dbg_level to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb3i_rcv_win to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb3i_snd_win to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb3i_rx_credit_thres to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb3i_max_connect to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb3i_sport_base to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb3i_cpl_handlers to i32), i32 664, i32 832, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t3_client to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb3i_iscsi_transport to i32), i32 196, i32 256, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb3i_stt to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_peer_close._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_abort_req._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgbi_sock_set_flag._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgbi_sock_set_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgbi_sock_clear_flag._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @send_abort_rpl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgbi_sock_free._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_abort_rpl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_close_con_rpl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_iscsi_hdr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_iscsi_hdr._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_iscsi_hdr._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_iscsi_hdr._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_iscsi_hdr._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_iscsi_hdr._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_iscsi_hdr._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @send_abort_req._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @abort_arp_failure._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_act_open_rpl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @act_open_retry_timer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_wr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @send_act_open_req._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_act_establish._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_act_establish._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @push_tx_frames._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @push_tx_frames._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @push_tx_frames._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @push_tx_frames._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ulp2_extra_len to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_wr_ack._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb3i_dev_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb3i_dev_open._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb3i_dev_open._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb3i_dev_open._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb3i_host_template to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb3i_dev_open._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb3i_ddp_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb3i_ddp_init._entry.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb3i_ddp_init._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb3i_ddp_init._entry.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgbi_tagmask_check._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ddp_setup_conn_digest._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ddp_setup_conn_pgidx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ddp_clear_map._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ddp_clear_map._entry.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb3i_ofld_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb3i_ofld_init._entry.114 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @release_offload_resources._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @send_close_req._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @send_rx_credits._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @send_rx_credits._entry.126 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_act_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_act_open._entry.131 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_act_open._entry.134 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_act_open._entry.137 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @update_address._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @update_address._entry.142 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb3i_dev_close._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb3i_dev_event_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb3i_init_module._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @version to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @do_peer_close(ptr nocapture noundef readnone %cdev, ptr noundef %skb, ptr noundef %ctx) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @dbg_level, align 4
  %and = and i32 %0, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %state = getelementptr inbounds %struct.cxgbi_sock, ptr %ctx, i32 0, i32 28
  %1 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %state, align 4
  %flags = getelementptr inbounds %struct.cxgbi_sock, ptr %ctx, i32 0, i32 3
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags, align 4
  %tid = getelementptr inbounds %struct.cxgbi_sock, ptr %ctx, i32 0, i32 1
  %5 = ptrtoint ptr %tid to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tid, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef %ctx, i32 noundef %2, i32 noundef %4, i32 noundef %6) #13
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  tail call void @cxgbi_sock_rcv_peer_close(ptr noundef %ctx) #10
  tail call void @__kfree_skb(ptr noundef %skb) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @do_abort_req(ptr nocapture noundef readnone %cdev, ptr noundef %skb, ptr noundef %ctx) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %2 = load i32, ptr @dbg_level, align 4
  %and = and i32 %2, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %state = getelementptr inbounds %struct.cxgbi_sock, ptr %ctx, i32 0, i32 28
  %3 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state, align 4
  %flags = getelementptr inbounds %struct.cxgbi_sock, ptr %ctx, i32 0, i32 3
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags, align 4
  %tid = getelementptr inbounds %struct.cxgbi_sock, ptr %ctx, i32 0, i32 1
  %7 = ptrtoint ptr %tid to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tid, align 4
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.6, ptr noundef %ctx, i32 noundef %4, i32 noundef %6, i32 noundef %8) #13
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %status = getelementptr inbounds %struct.cpl_abort_req_rss, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %status, align 1
  %.off = add i8 %10, -35
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off)
  %switch = icmp ult i8 %.off, 2
  br i1 %switch, label %do.end4.done_crit_edge, label %if.end11

do.end4.done_crit_edge:                           ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %done

if.end11:                                         ; preds = %do.end4
  %11 = load i32, ptr @dbg_level, align 4
  %and.i = and i32 %11, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end11.do.end3.i_crit_edge, label %do.end.i

if.end11.do.end3.i_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end3.i

do.end.i:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  %refcnt.i = getelementptr inbounds %struct.cxgbi_sock, ptr %ctx, i32 0, i32 27
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcnt.i, i32 noundef 4) #10
  %12 = ptrtoint ptr %refcnt.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %refcnt.i, align 4
  %call2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.6, ptr noundef %ctx, i32 noundef %13) #13
  br label %do.end3.i

do.end3.i:                                        ; preds = %do.end.i, %if.end11.do.end3.i_crit_edge
  %refcnt4.i = getelementptr inbounds %struct.cxgbi_sock, ptr %ctx, i32 0, i32 27
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt4.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %refcnt4.i, i32 1, i32 3, i32 1) #10
  %14 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt4.i, ptr %refcnt4.i, i32 1, ptr elementtype(i32) %refcnt4.i) #10, !srcloc !383
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %do.end3.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !384

do.end3.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %do.end3.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %15 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %.not.i.i.i.i.i = icmp sgt i32 %15, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.__cxgbi_sock_get.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !385

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.__cxgbi_sock_get.exit_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__cxgbi_sock_get.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %do.end3.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %do.end3.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcnt4.i, i32 noundef %.sink.i.i.i.i.i) #10
  br label %__cxgbi_sock_get.exit

__cxgbi_sock_get.exit:                            ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.__cxgbi_sock_get.exit_crit_edge
  %lock = getelementptr inbounds %struct.cxgbi_sock, ptr %ctx, i32 0, i32 26
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #10
  %cmp.i = icmp eq ptr %ctx, null
  br i1 %cmp.i, label %__cxgbi_sock_get.exit.if.then14_crit_edge, label %cxgbi_sock_flag.exit

__cxgbi_sock_get.exit.if.then14_crit_edge:        ; preds = %__cxgbi_sock_get.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then14

cxgbi_sock_flag.exit:                             ; preds = %__cxgbi_sock_get.exit
  %flags.i = getelementptr inbounds %struct.cxgbi_sock, ptr %ctx, i32 0, i32 3
  %16 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %flags.i, align 4
  %18 = and i32 %17, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool13.not = icmp eq i32 %18, 0
  br i1 %tobool13.not, label %cxgbi_sock_flag.exit.if.then14_crit_edge, label %if.end15

cxgbi_sock_flag.exit.if.then14_crit_edge:         ; preds = %cxgbi_sock_flag.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then14

if.then14:                                        ; preds = %cxgbi_sock_flag.exit.if.then14_crit_edge, %__cxgbi_sock_get.exit.if.then14_crit_edge
  %flags.i43 = getelementptr inbounds %struct.cxgbi_sock, ptr %ctx, i32 0, i32 3
  %19 = ptrtoint ptr %flags.i43 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags.i43, align 4
  %or.i.i = or i32 %20, 2
  store i32 %or.i.i, ptr %flags.i43, align 4
  %21 = load i32, ptr @dbg_level, align 4
  %and.i44 = and i32 %21, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i44)
  %tobool.not.i45 = icmp eq i32 %and.i44, 0
  br i1 %tobool.not.i45, label %if.then14.cxgbi_sock_set_flag.exit_crit_edge, label %do.end.i46

if.then14.cxgbi_sock_set_flag.exit_crit_edge:     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #12
  br label %cxgbi_sock_set_flag.exit

do.end.i46:                                       ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #12
  %state.i = getelementptr inbounds %struct.cxgbi_sock, ptr %ctx, i32 0, i32 28
  %22 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %state.i, align 4
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, ptr noundef %ctx, i32 noundef %23, i32 noundef %or.i.i, i32 noundef 1) #13
  br label %cxgbi_sock_set_flag.exit

cxgbi_sock_set_flag.exit:                         ; preds = %do.end.i46, %if.then14.cxgbi_sock_set_flag.exit_crit_edge
  %24 = load i32, ptr @dbg_level, align 4
  %and.i48 = and i32 %24, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i48)
  %tobool.not.i49 = icmp eq i32 %and.i48, 0
  br i1 %tobool.not.i49, label %cxgbi_sock_set_flag.exit.cxgbi_sock_set_state.exit_crit_edge, label %do.end.i52

cxgbi_sock_set_flag.exit.cxgbi_sock_set_state.exit_crit_edge: ; preds = %cxgbi_sock_set_flag.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cxgbi_sock_set_state.exit

do.end.i52:                                       ; preds = %cxgbi_sock_set_flag.exit
  call void @__sanitizer_cov_trace_pc() #12
  %state2.i = getelementptr inbounds %struct.cxgbi_sock, ptr %ctx, i32 0, i32 28
  %25 = ptrtoint ptr %state2.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %state2.i, align 4
  %27 = ptrtoint ptr %flags.i43 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %flags.i43, align 4
  %call.i51 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, ptr noundef %ctx, i32 noundef %26, i32 noundef %28, i32 noundef 8) #13
  br label %cxgbi_sock_set_state.exit

cxgbi_sock_set_state.exit:                        ; preds = %do.end.i52, %cxgbi_sock_set_flag.exit.cxgbi_sock_set_state.exit_crit_edge
  %state4.i = getelementptr inbounds %struct.cxgbi_sock, ptr %ctx, i32 0, i32 28
  %29 = ptrtoint ptr %state4.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 8, ptr %state4.i, align 4
  br label %out

if.end15:                                         ; preds = %cxgbi_sock_flag.exit
  %30 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %flags.i, align 4
  %and.i.i = and i32 %31, -3
  store i32 %and.i.i, ptr %flags.i, align 4
  %32 = load i32, ptr @dbg_level, align 4
  %and.i55 = and i32 %32, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i55)
  %tobool.not.i56 = icmp eq i32 %and.i55, 0
  br i1 %tobool.not.i56, label %if.end15.cxgbi_sock_clear_flag.exit_crit_edge, label %do.end.i59

if.end15.cxgbi_sock_clear_flag.exit_crit_edge:    ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %cxgbi_sock_clear_flag.exit

do.end.i59:                                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  %state.i57 = getelementptr inbounds %struct.cxgbi_sock, ptr %ctx, i32 0, i32 28
  %33 = ptrtoint ptr %state.i57 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %state.i57, align 4
  %call.i58 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.14, ptr noundef nonnull %ctx, i32 noundef %34, i32 noundef %and.i.i, i32 noundef 1) #13
  br label %cxgbi_sock_clear_flag.exit

cxgbi_sock_clear_flag.exit:                       ; preds = %do.end.i59, %if.end15.cxgbi_sock_clear_flag.exit_crit_edge
  %cpl_abort_rpl.i = getelementptr inbounds %struct.cxgbi_sock, ptr %ctx, i32 0, i32 24
  %35 = ptrtoint ptr %cpl_abort_rpl.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %cpl_abort_rpl.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %36, i32 0, i32 18
  %37 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %head.i, align 8
  %39 = load i32, ptr @dbg_level, align 4
  %and.i61 = and i32 %39, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i61)
  %tobool.not.i62 = icmp eq i32 %and.i61, 0
  br i1 %tobool.not.i62, label %cxgbi_sock_clear_flag.exit.cxgbi_sock_flag.exit74_crit_edge, label %do.end.i66

cxgbi_sock_clear_flag.exit.cxgbi_sock_flag.exit74_crit_edge: ; preds = %cxgbi_sock_clear_flag.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cxgbi_sock_flag.exit74

do.end.i66:                                       ; preds = %cxgbi_sock_clear_flag.exit
  call void @__sanitizer_cov_trace_pc() #12
  %state.i63 = getelementptr inbounds %struct.cxgbi_sock, ptr %ctx, i32 0, i32 28
  %40 = ptrtoint ptr %state.i63 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %state.i63, align 4
  %42 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %flags.i, align 4
  %tid.i = getelementptr inbounds %struct.cxgbi_sock, ptr %ctx, i32 0, i32 1
  %44 = ptrtoint ptr %tid.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %tid.i, align 4
  %call.i65 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, ptr noundef nonnull %ctx, i32 noundef %41, i32 noundef %43, i32 noundef %45, i32 noundef 1) #13
  br label %cxgbi_sock_flag.exit74

cxgbi_sock_flag.exit74:                           ; preds = %do.end.i66, %cxgbi_sock_clear_flag.exit.cxgbi_sock_flag.exit74_crit_edge
  %46 = ptrtoint ptr %cpl_abort_rpl.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %cpl_abort_rpl.i, align 4
  %priority.i = getelementptr inbounds %struct.sk_buff, ptr %36, i32 0, i32 15, i32 0, i32 6
  %47 = ptrtoint ptr %priority.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %priority.i, align 4
  %48 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 251658240, ptr %38, align 4
  %tid5.i = getelementptr inbounds %struct.cxgbi_sock, ptr %ctx, i32 0, i32 1
  %49 = ptrtoint ptr %tid5.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %tid5.i, align 4
  %shl.i = shl i32 %50, 8
  %wr_lo.i = getelementptr inbounds %struct.work_request_hdr, ptr %38, i32 0, i32 1
  %51 = ptrtoint ptr %wr_lo.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %shl.i, ptr %wr_lo.i, align 4
  %52 = load i32, ptr %tid5.i, align 4
  %or.i = or i32 %52, 184549376
  %ot.i = getelementptr inbounds %struct.cpl_abort_rpl, ptr %38, i32 0, i32 1
  %53 = ptrtoint ptr %ot.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %or.i, ptr %ot.i, align 4
  %cmd.i = getelementptr inbounds %struct.cpl_abort_rpl, ptr %38, i32 0, i32 4
  %54 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 1, ptr %cmd.i, align 1
  %55 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %ctx, align 4
  %lldev.i = getelementptr inbounds %struct.cxgbi_device, ptr %56, i32 0, i32 4
  %57 = ptrtoint ptr %lldev.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %lldev.i, align 4
  %call8.i = tail call i32 @cxgb3_ofld_send(ptr noundef %58, ptr noundef %36) #10
  %59 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %flags.i, align 4
  %61 = and i32 %60, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool17.not = icmp eq i32 %61, 0
  br i1 %tobool17.not, label %if.then18, label %cxgbi_sock_flag.exit74.out_crit_edge

cxgbi_sock_flag.exit74.out_crit_edge:             ; preds = %cxgbi_sock_flag.exit74
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then18:                                        ; preds = %cxgbi_sock_flag.exit74
  %62 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %status, align 1
  %64 = zext i8 %63 to i64
  call void @__sanitizer_cov_trace_switch(i64 %64, ptr @__sancov_gen_cov_switch_values)
  switch i8 %63, label %sw.default.i [
    i8 24, label %if.then18.sw.bb.i_crit_edge
    i8 20, label %if.then18.sw.bb.i_crit_edge80
    i8 31, label %if.then18.abort_status_to_errno.exit_crit_edge
    i8 32, label %if.then18.abort_status_to_errno.exit_crit_edge81
    i8 33, label %if.then18.abort_status_to_errno.exit_crit_edge82
    i8 34, label %if.then18.abort_status_to_errno.exit_crit_edge83
  ]

if.then18.abort_status_to_errno.exit_crit_edge83: ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #12
  br label %abort_status_to_errno.exit

if.then18.abort_status_to_errno.exit_crit_edge82: ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #12
  br label %abort_status_to_errno.exit

if.then18.abort_status_to_errno.exit_crit_edge81: ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #12
  br label %abort_status_to_errno.exit

if.then18.abort_status_to_errno.exit_crit_edge:   ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #12
  br label %abort_status_to_errno.exit

if.then18.sw.bb.i_crit_edge80:                    ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

if.then18.sw.bb.i_crit_edge:                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %if.then18.sw.bb.i_crit_edge, %if.then18.sw.bb.i_crit_edge80
  %state.i75 = getelementptr inbounds %struct.cxgbi_sock, ptr %ctx, i32 0, i32 28
  %65 = ptrtoint ptr %state.i75 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %state.i75, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %66)
  %cmp.i76 = icmp ugt i32 %66, 3
  %cond.i = select i1 %cmp.i76, i32 -32, i32 -104
  br label %abort_status_to_errno.exit

sw.default.i:                                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #12
  br label %abort_status_to_errno.exit

abort_status_to_errno.exit:                       ; preds = %sw.default.i, %sw.bb.i, %if.then18.abort_status_to_errno.exit_crit_edge, %if.then18.abort_status_to_errno.exit_crit_edge81, %if.then18.abort_status_to_errno.exit_crit_edge82, %if.then18.abort_status_to_errno.exit_crit_edge83
  %retval.0.i77 = phi i32 [ -5, %sw.default.i ], [ %cond.i, %sw.bb.i ], [ -110, %if.then18.abort_status_to_errno.exit_crit_edge ], [ -110, %if.then18.abort_status_to_errno.exit_crit_edge81 ], [ -110, %if.then18.abort_status_to_errno.exit_crit_edge82 ], [ -110, %if.then18.abort_status_to_errno.exit_crit_edge83 ]
  %err = getelementptr inbounds %struct.cxgbi_sock, ptr %ctx, i32 0, i32 37
  %67 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %retval.0.i77, ptr %err, align 4
  tail call void @cxgbi_sock_closed(ptr noundef nonnull %ctx) #10
  br label %out

out:                                              ; preds = %abort_status_to_errno.exit, %cxgbi_sock_flag.exit74.out_crit_edge, %cxgbi_sock_set_state.exit
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #10
  tail call fastcc void @__cxgbi_sock_put(ptr noundef nonnull @.str.6, ptr noundef %ctx)
  br label %done

done:                                             ; preds = %out, %do.end4.done_crit_edge
  tail call void @__kfree_skb(ptr noundef %skb) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @do_abort_rpl(ptr nocapture noundef readnone %cdev, ptr noundef %skb, ptr noundef %ctx) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %2 = load i32, ptr @dbg_level, align 4
  %and = and i32 %2, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end10_crit_edge, label %do.end

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end10

do.end:                                           ; preds = %entry
  %status = getelementptr inbounds %struct.cpl_abort_rpl_rss, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %status, align 1
  %conv = zext i8 %4 to i32
  %tobool2.not = icmp eq ptr %ctx, null
  br i1 %tobool2.not, label %do.end.cond.end6_crit_edge, label %cond.true4

do.end.cond.end6_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end6

cond.true4:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %state = getelementptr inbounds %struct.cxgbi_sock, ptr %ctx, i32 0, i32 28
  %5 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %state, align 4
  %flags = getelementptr inbounds %struct.cxgbi_sock, ptr %ctx, i32 0, i32 3
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags, align 4
  br label %cond.end6

cond.end6:                                        ; preds = %cond.true4, %do.end.cond.end6_crit_edge
  %cond28 = phi i32 [ %6, %cond.true4 ], [ 0, %do.end.cond.end6_crit_edge ]
  %cond7 = phi i32 [ %8, %cond.true4 ], [ 0, %do.end.cond.end6_crit_edge ]
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22, i32 noundef %conv, ptr noundef %ctx, i32 noundef %cond28, i32 noundef %cond7) #13
  br label %do.end10

do.end10:                                         ; preds = %cond.end6, %entry.do.end10_crit_edge
  %status11 = getelementptr inbounds %struct.cpl_abort_rpl_rss, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %status11 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %status11, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 42, i8 %10)
  %cmp = icmp eq i8 %10, 42
  %tobool16.not = icmp eq ptr %ctx, null
  %or.cond = or i1 %tobool16.not, %cmp
  br i1 %or.cond, label %do.end10.rel_skb_crit_edge, label %if.then17

do.end10.rel_skb_crit_edge:                       ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %rel_skb

if.then17:                                        ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @cxgbi_sock_rcv_abort_rpl(ptr noundef nonnull %ctx) #10
  br label %rel_skb

rel_skb:                                          ; preds = %if.then17, %do.end10.rel_skb_crit_edge
  tail call void @__kfree_skb(ptr noundef %skb) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @do_close_con_rpl(ptr nocapture noundef readnone %cdev, ptr noundef %skb, ptr noundef %ctx) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %2 = load i32, ptr @dbg_level, align 4
  %and = and i32 %2, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %state = getelementptr inbounds %struct.cxgbi_sock, ptr %ctx, i32 0, i32 28
  %3 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state, align 4
  %flags = getelementptr inbounds %struct.cxgbi_sock, ptr %ctx, i32 0, i32 3
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags, align 4
  %tid = getelementptr inbounds %struct.cxgbi_sock, ptr %ctx, i32 0, i32 1
  %7 = ptrtoint ptr %tid to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tid, align 4
  %snd_nxt = getelementptr inbounds %struct.cpl_close_con_rpl, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %snd_nxt to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %snd_nxt, align 4
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24, ptr noundef %ctx, i32 noundef %4, i32 noundef %6, i32 noundef %8, i32 noundef %10) #13
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %snd_nxt5 = getelementptr inbounds %struct.cpl_close_con_rpl, ptr %1, i32 0, i32 3
  %11 = ptrtoint ptr %snd_nxt5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %snd_nxt5, align 4
  tail call void @cxgbi_sock_rcv_close_conn_rpl(ptr noundef %ctx, i32 noundef %12) #10
  tail call void @__kfree_skb(ptr noundef %skb) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @do_iscsi_hdr(ptr nocapture noundef readnone %t3dev, ptr noundef %skb, ptr noundef %ctx) #1 align 64 {
entry:
  %data_cpl = alloca %struct.cpl_iscsi_hdr_norss, align 4
  %ddp_cpl = alloca %struct.cpl_rx_data_ddp_norss, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %data_cpl) #10
  %2 = getelementptr inbounds %struct.cpl_iscsi_hdr_norss, ptr %data_cpl, i32 0, i32 2
  %3 = call ptr @memset(ptr %data_cpl, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ddp_cpl) #10
  %4 = getelementptr inbounds %struct.cpl_rx_data_ddp_norss, ptr %ddp_cpl, i32 0, i32 2
  %5 = getelementptr inbounds %struct.cpl_rx_data_ddp_norss, ptr %ddp_cpl, i32 0, i32 3
  %6 = getelementptr inbounds %struct.cpl_rx_data_ddp_norss, ptr %ddp_cpl, i32 0, i32 5
  %7 = getelementptr inbounds %struct.cpl_rx_data_ddp_norss, ptr %ddp_cpl, i32 0, i32 6
  %8 = call ptr @memset(ptr %ddp_cpl, i32 255, i32 24)
  %9 = load i32, ptr @dbg_level, align 4
  %and = and i32 %9, 36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end5_crit_edge, label %do.end

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %state = getelementptr inbounds %struct.cxgbi_sock, ptr %ctx, i32 0, i32 28
  %10 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %state, align 4
  %flags = getelementptr inbounds %struct.cxgbi_sock, ptr %ctx, i32 0, i32 3
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags, align 4
  %tid = getelementptr inbounds %struct.cxgbi_sock, ptr %ctx, i32 0, i32 1
  %14 = ptrtoint ptr %tid to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tid, align 4
  %len2 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %16 = ptrtoint ptr %len2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %len2, align 4
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.26, ptr noundef %ctx, i32 noundef %11, i32 noundef %13, i32 noundef %15, ptr noundef %skb, i32 noundef %17) #13
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %lock = getelementptr inbounds %struct.cxgbi_sock, ptr %ctx, i32 0, i32 26
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #10
  %state6 = getelementptr inbounds %struct.cxgbi_sock, ptr %ctx, i32 0, i32 28
  %18 = ptrtoint ptr %state6 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %state6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %19)
  %cmp = icmp ugt i32 %19, 4
  br i1 %cmp, label %do.body10, label %if.end28, !prof !384

do.body10:                                        ; preds = %do.end5
  %20 = load i32, ptr @dbg_level, align 4
  %and11 = and i32 %20, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %do.body10.do.end24_crit_edge, label %do.end16

do.body10.do.end24_crit_edge:                     ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end24

do.end16:                                         ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #12
  %flags19 = getelementptr inbounds %struct.cxgbi_sock, ptr %ctx, i32 0, i32 3
  %21 = ptrtoint ptr %flags19 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flags19, align 4
  %tid20 = getelementptr inbounds %struct.cxgbi_sock, ptr %ctx, i32 0, i32 1
  %23 = ptrtoint ptr %tid20 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tid20, align 4
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.26, ptr noundef %ctx, i32 noundef %19, i32 noundef %22, i32 noundef %24) #13
  br label %do.end24

do.end24:                                         ; preds = %do.end16, %do.body10.do.end24_crit_edge
  %25 = ptrtoint ptr %state6 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %state6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %26)
  %cmp26.not = icmp eq i32 %26, 8
  br i1 %cmp26.not, label %do.end24.discard_crit_edge, label %do.end24.abort_conn_crit_edge

do.end24.abort_conn_crit_edge:                    ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %abort_conn

do.end24.discard_crit_edge:                       ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %discard

if.end28:                                         ; preds = %do.end5
  %seq = getelementptr inbounds %struct.cpl_iscsi_hdr, ptr %1, i32 0, i32 3
  %27 = ptrtoint ptr %seq to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %seq, align 4
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %seq29 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 20
  %29 = ptrtoint ptr %seq29 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %seq29, align 4
  %flags32 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 16
  %30 = ptrtoint ptr %flags32 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %flags32, align 8
  %31 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %data.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %33 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %32 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %34 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %transport_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %35 = ptrtoint ptr %transport_header.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %conv.i, ptr %transport_header.i, align 2
  %len1.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %36 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %len1.i, align 4
  %sub.i = add i32 %37, -16
  store i32 %sub.i, ptr %len1.i, align 4
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %38 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %data_len.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %39)
  %cmp.i = icmp ult i32 %sub.i, %39
  br i1 %cmp.i, label %do.body4.i, label %__skb_pull.exit, !prof !384

do.body4.i:                                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2398, 0\0A.popsection", ""() #10, !srcloc !386
  unreachable

__skb_pull.exit:                                  ; preds = %if.end28
  %add.ptr.i = getelementptr i8, ptr %32, i32 16
  %40 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %add.ptr.i, ptr %data.i, align 4
  %len34 = getelementptr inbounds %struct.cpl_iscsi_hdr, ptr %1, i32 0, i32 2
  %41 = ptrtoint ptr %len34 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %len34, align 2
  %conv = zext i16 %42 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %conv)
  %cmp36.not = icmp ugt i32 %sub.i, %conv
  br i1 %cmp36.not, label %if.end47, label %do.end41

do.end41:                                         ; preds = %__skb_pull.exit
  call void @__sanitizer_cov_trace_pc() #12
  %43 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ctx, align 4
  %ports = getelementptr inbounds %struct.cxgbi_device, ptr %44, i32 0, i32 3
  %45 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ports, align 4
  %port_id = getelementptr inbounds %struct.cxgbi_sock, ptr %ctx, i32 0, i32 12
  %47 = ptrtoint ptr %port_id to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %port_id, align 4
  %idxprom = zext i8 %48 to i32
  %arrayidx43 = getelementptr ptr, ptr %46, i32 %idxprom
  %49 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx43, align 4
  %tid44 = getelementptr inbounds %struct.cxgbi_sock, ptr %ctx, i32 0, i32 1
  %51 = ptrtoint ptr %tid44 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %tid44, align 4
  %call46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.26, ptr noundef %50, i32 noundef %52, i32 noundef %sub.i, i32 noundef %conv) #13
  br label %abort_conn

if.end47:                                         ; preds = %__skb_pull.exit
  %53 = ptrtoint ptr %flags32 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 8, ptr %flags32, align 4
  %sub = add i32 %37, -40
  %call49 = call i32 @skb_copy_bits(ptr noundef %skb, i32 noundef %sub, ptr noundef nonnull %ddp_cpl, i32 noundef 24) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %cmp50 = icmp slt i32 %call49, 0
  br i1 %cmp50, label %do.end55, label %if.end67

do.end55:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  %54 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ctx, align 4
  %ports58 = getelementptr inbounds %struct.cxgbi_device, ptr %55, i32 0, i32 3
  %56 = ptrtoint ptr %ports58 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ports58, align 4
  %port_id59 = getelementptr inbounds %struct.cxgbi_sock, ptr %ctx, i32 0, i32 12
  %58 = ptrtoint ptr %port_id59 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %port_id59, align 4
  %idxprom60 = zext i8 %59 to i32
  %arrayidx61 = getelementptr ptr, ptr %57, i32 %idxprom60
  %60 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %arrayidx61, align 4
  %tid64 = getelementptr inbounds %struct.cxgbi_sock, ptr %ctx, i32 0, i32 1
  %62 = ptrtoint ptr %tid64 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %tid64, align 4
  %64 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %len1.i, align 4
  %call66 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.26, ptr noundef %61, i32 noundef %63, i32 noundef %65, i32 noundef 24, i32 noundef %call49) #13
  br label %abort_conn

if.end67:                                         ; preds = %if.end47
  %66 = ptrtoint ptr %flags32 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %flags32, align 4
  %or.i.i241 = or i32 %67, 64
  store i32 %or.i.i241, ptr %flags32, align 4
  %68 = ptrtoint ptr %4 to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %4, align 2
  %conv69 = zext i16 %69 to i32
  %pdulen = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %70 = ptrtoint ptr %pdulen to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %conv69, ptr %pdulen, align 4
  %71 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %6, align 4
  %73 = ptrtoint ptr %cb to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %cb, align 8
  %74 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %7, align 4
  %76 = load i32, ptr @dbg_level, align 4
  %and75 = and i32 %76, 36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75)
  %tobool76.not = icmp eq i32 %and75, 0
  br i1 %tobool76.not, label %if.end67.do.end89_crit_edge, label %do.end80

if.end67.do.end89_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end89

do.end80:                                         ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #12
  %77 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %len1.i, align 4
  %call86 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.26, ptr noundef %ctx, ptr noundef %skb, i32 noundef %78, i32 noundef %conv69, i32 noundef %75) #13
  br label %do.end89

do.end89:                                         ; preds = %do.end80, %if.end67.do.end89_crit_edge
  %and90 = and i32 %75, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and90)
  %tobool91.not = icmp eq i32 %and90, 0
  br i1 %tobool91.not, label %do.end89.if.end93_crit_edge, label %if.then92

do.end89.if.end93_crit_edge:                      ; preds = %do.end89
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end93

if.then92:                                        ; preds = %do.end89
  call void @__sanitizer_cov_trace_pc() #12
  %79 = ptrtoint ptr %flags32 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %flags32, align 4
  %or.i.i243 = or i32 %80, 512
  store i32 %or.i.i243, ptr %flags32, align 4
  br label %if.end93

if.end93:                                         ; preds = %if.then92, %do.end89.if.end93_crit_edge
  %and94 = and i32 %75, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and94)
  %tobool95.not = icmp eq i32 %and94, 0
  br i1 %tobool95.not, label %if.end93.if.end97_crit_edge, label %if.then96

if.end93.if.end97_crit_edge:                      ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end97

if.then96:                                        ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #12
  %81 = ptrtoint ptr %flags32 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %flags32, align 4
  %or.i.i245 = or i32 %82, 1024
  store i32 %or.i.i245, ptr %flags32, align 4
  br label %if.end97

if.end97:                                         ; preds = %if.then96, %if.end93.if.end97_crit_edge
  %and98 = and i32 %75, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and98)
  %tobool99.not = icmp eq i32 %and98, 0
  br i1 %tobool99.not, label %if.end97.if.end101_crit_edge, label %if.then100

if.end97.if.end101_crit_edge:                     ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end101

if.then100:                                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #12
  %83 = ptrtoint ptr %flags32 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %flags32, align 4
  %or.i.i247 = or i32 %84, 2048
  store i32 %or.i.i247, ptr %flags32, align 4
  br label %if.end101

if.end101:                                        ; preds = %if.then100, %if.end97.if.end101_crit_edge
  %85 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %len1.i, align 4
  %add = add nuw nsw i32 %conv, 24
  call void @__sanitizer_cov_trace_cmp4(i32 %86, i32 %add)
  %cmp103 = icmp ugt i32 %86, %add
  br i1 %cmp103, label %if.then105, label %if.else144

if.then105:                                       ; preds = %if.end101
  %call106 = call i32 @skb_copy_bits(ptr noundef %skb, i32 noundef %conv, ptr noundef nonnull %data_cpl, i32 noundef 16) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call106)
  %cmp107 = icmp slt i32 %call106, 0
  br i1 %cmp107, label %do.end112, label %if.end124

do.end112:                                        ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #12
  %87 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %ctx, align 4
  %ports115 = getelementptr inbounds %struct.cxgbi_device, ptr %88, i32 0, i32 3
  %89 = ptrtoint ptr %ports115 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %ports115, align 4
  %port_id116 = getelementptr inbounds %struct.cxgbi_sock, ptr %ctx, i32 0, i32 12
  %91 = ptrtoint ptr %port_id116 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %port_id116, align 4
  %idxprom117 = zext i8 %92 to i32
  %arrayidx118 = getelementptr ptr, ptr %90, i32 %idxprom117
  %93 = ptrtoint ptr %arrayidx118 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %arrayidx118, align 4
  %tid121 = getelementptr inbounds %struct.cxgbi_sock, ptr %ctx, i32 0, i32 1
  %95 = ptrtoint ptr %tid121 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %tid121, align 4
  %97 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %len1.i, align 4
  %call123 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.26, ptr noundef %94, i32 noundef %96, i32 noundef 16, i32 noundef %98, i32 noundef %call106) #13
  br label %abort_conn

if.end124:                                        ; preds = %if.then105
  %99 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %2, align 2
  %conv126 = zext i16 %100 to i32
  %101 = load i32, ptr @dbg_level, align 4
  %and128 = and i32 %101, 34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and128)
  %tobool129.not = icmp eq i32 %and128, 0
  br i1 %tobool129.not, label %if.end124.do.end141_crit_edge, label %do.end133

if.end124.do.end141_crit_edge:                    ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end141

do.end133:                                        ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #12
  %102 = ptrtoint ptr %pdulen to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %pdulen, align 4
  %call138 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.26, ptr noundef %skb, i32 noundef %conv126, i32 noundef %103, i32 noundef %75) #13
  br label %do.end141

do.end141:                                        ; preds = %do.end133, %if.end124.do.end141_crit_edge
  %add142 = add nuw nsw i32 %conv, 16
  %add143 = add nuw nsw i32 %add142, %conv126
  br label %if.end149

if.else144:                                       ; preds = %if.end101
  %and145 = and i32 %75, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and145)
  %tobool146.not = icmp eq i32 %and145, 0
  br i1 %tobool146.not, label %if.else144.if.end149_crit_edge, label %if.then147

if.else144.if.end149_crit_edge:                   ; preds = %if.else144
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end149

if.then147:                                       ; preds = %if.else144
  call void @__sanitizer_cov_trace_pc() #12
  %104 = ptrtoint ptr %flags32 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %flags32, align 4
  %or.i.i249 = or i32 %105, 256
  store i32 %or.i.i249, ptr %flags32, align 4
  br label %if.end149

if.end149:                                        ; preds = %if.then147, %if.else144.if.end149_crit_edge, %do.end141
  %len.0 = phi i32 [ %add143, %do.end141 ], [ %conv, %if.then147 ], [ %conv, %if.else144.if.end149_crit_edge ]
  %106 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %5, align 4
  %108 = ptrtoint ptr %pdulen to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %pdulen, align 4
  %add154 = add i32 %109, %107
  %rcv_nxt = getelementptr inbounds %struct.cxgbi_sock, ptr %ctx, i32 0, i32 40
  %110 = ptrtoint ptr %rcv_nxt to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %add154, ptr %rcv_nxt, align 4
  %111 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %data_len.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %112)
  %tobool.not.i = icmp eq i32 %112, 0
  br i1 %tobool.not.i, label %__skb_trim.exit.i, label %if.then.i

if.then.i:                                        ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = call i32 @___pskb_trim(ptr noundef %skb, i32 noundef %len.0) #10
  br label %__pskb_trim.exit

__skb_trim.exit.i:                                ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #12
  %113 = ptrtoint ptr %len1.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %len.0, ptr %len1.i, align 4
  %114 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %data.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %115, i32 %len.0
  %tail.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %116 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %add.ptr.i.i.i.i, ptr %tail.i.i.i.i, align 8
  br label %__pskb_trim.exit

__pskb_trim.exit:                                 ; preds = %__skb_trim.exit.i, %if.then.i
  %receive_queue = getelementptr inbounds %struct.cxgbi_sock, ptr %ctx, i32 0, i32 33
  %prev.i.i = getelementptr inbounds %struct.cxgbi_sock, ptr %ctx, i32 0, i32 33, i32 0, i32 0, i32 1
  %117 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %prev.i.i, align 4
  %119 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %119)
  store volatile ptr %receive_queue, ptr %skb, align 8
  %prev10.i.i.i = getelementptr inbounds %struct.anon.51, ptr %skb, i32 0, i32 1
  %120 = ptrtoint ptr %prev10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store volatile ptr %118, ptr %prev10.i.i.i, align 4
  store volatile ptr %skb, ptr %prev.i.i, align 4
  %121 = ptrtoint ptr %118 to i32
  call void @__asan_store4_noabort(i32 %121)
  store volatile ptr %skb, ptr %118, align 4
  %qlen.i.i.i = getelementptr inbounds %struct.cxgbi_sock, ptr %ctx, i32 0, i32 33, i32 1
  %122 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %qlen.i.i.i, align 4
  %add.i.i.i = add i32 %123, 1
  store volatile i32 %add.i.i.i, ptr %qlen.i.i.i, align 4
  call void @cxgbi_conn_pdu_ready(ptr noundef %ctx) #10
  call void @_raw_spin_unlock_bh(ptr noundef %lock) #10
  br label %cleanup

abort_conn:                                       ; preds = %do.end112, %do.end55, %do.end41, %do.end24.abort_conn_crit_edge
  call void @send_abort_req(ptr noundef %ctx)
  br label %discard

discard:                                          ; preds = %abort_conn, %do.end24.discard_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %lock) #10
  call void @__kfree_skb(ptr noundef %skb) #10
  br label %cleanup

cleanup:                                          ; preds = %discard, %__pskb_trim.exit
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ddp_cpl) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %data_cpl) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @do_act_open_rpl(ptr noundef %tdev, ptr noundef %skb, ptr noundef %ctx) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %state = getelementptr inbounds %struct.cxgbi_sock, ptr %ctx, i32 0, i32 28
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  %flags = getelementptr inbounds %struct.cxgbi_sock, ptr %ctx, i32 0, i32 3
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %atid = getelementptr inbounds %struct.cxgbi_sock, ptr %ctx, i32 0, i32 2
  %6 = ptrtoint ptr %atid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %atid, align 4
  %status = getelementptr inbounds %struct.cpl_act_open_rpl, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %status, align 1
  %conv = zext i8 %9 to i32
  %sin_addr = getelementptr inbounds %struct.cxgbi_sock, ptr %ctx, i32 0, i32 30, i32 0, i32 2
  %sin_port = getelementptr inbounds %struct.cxgbi_sock, ptr %ctx, i32 0, i32 30, i32 0, i32 1
  %10 = ptrtoint ptr %sin_port to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %sin_port, align 2
  %conv1 = zext i16 %11 to i32
  %sin_addr2 = getelementptr inbounds %struct.cxgbi_sock, ptr %ctx, i32 0, i32 31, i32 0, i32 2
  %sin_port4 = getelementptr inbounds %struct.cxgbi_sock, ptr %ctx, i32 0, i32 31, i32 0, i32 1
  %12 = ptrtoint ptr %sin_port4 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %sin_port4, align 2
  %conv5 = zext i16 %13 to i32
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.51, ptr noundef %ctx, i32 noundef %3, i32 noundef %5, i32 noundef %7, i32 noundef %conv, ptr noundef %sin_addr, i32 noundef %conv1, ptr noundef %sin_addr2, i32 noundef %conv5) #13
  %14 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %status, align 1
  %16 = zext i8 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.150)
  switch i8 %15, label %if.then [
    i8 3, label %entry.if.end_crit_edge
    i8 22, label %entry.if.end_crit_edge59
    i8 23, label %entry.if.end_crit_edge60
  ]

entry.if.end_crit_edge60:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

entry.if.end_crit_edge59:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %1, align 4
  %and = and i32 %18, 16777215
  tail call void @cxgb3_queue_tid_release(ptr noundef %tdev, i32 noundef %and) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge, %entry.if.end_crit_edge59, %entry.if.end_crit_edge60
  %19 = load i32, ptr @dbg_level, align 4
  %and.i = and i32 %19, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.do.end3.i_crit_edge, label %do.end.i

if.end.do.end3.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end3.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %refcnt.i = getelementptr inbounds %struct.cxgbi_sock, ptr %ctx, i32 0, i32 27
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcnt.i, i32 noundef 4) #10
  %20 = ptrtoint ptr %refcnt.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %refcnt.i, align 4
  %call2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.51, ptr noundef %ctx, i32 noundef %21) #13
  br label %do.end3.i

do.end3.i:                                        ; preds = %do.end.i, %if.end.do.end3.i_crit_edge
  %refcnt4.i = getelementptr inbounds %struct.cxgbi_sock, ptr %ctx, i32 0, i32 27
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt4.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %refcnt4.i, i32 1, i32 3, i32 1) #10
  %22 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt4.i, ptr %refcnt4.i, i32 1, ptr elementtype(i32) %refcnt4.i) #10, !srcloc !383
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %22, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %do.end3.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !384

do.end3.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %do.end3.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %23 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %23)
  %.not.i.i.i.i.i = icmp sgt i32 %23, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.__cxgbi_sock_get.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !385

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.__cxgbi_sock_get.exit_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__cxgbi_sock_get.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %do.end3.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %do.end3.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcnt4.i, i32 noundef %.sink.i.i.i.i.i) #10
  br label %__cxgbi_sock_get.exit

__cxgbi_sock_get.exit:                            ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.__cxgbi_sock_get.exit_crit_edge
  %lock = getelementptr inbounds %struct.cxgbi_sock, ptr %ctx, i32 0, i32 26
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #10
  %24 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %status, align 1
  %26 = zext i8 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.151)
  switch i8 %25, label %sw.default.i [
    i8 22, label %land.lhs.true23
    i8 20, label %__cxgbi_sock_get.exit.act_open_rpl_status_to_errno.exit_crit_edge
    i8 23, label %sw.bb1.i
    i8 30, label %sw.bb2.i
    i8 3, label %sw.bb3.i
  ]

__cxgbi_sock_get.exit.act_open_rpl_status_to_errno.exit_crit_edge: ; preds = %__cxgbi_sock_get.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %act_open_rpl_status_to_errno.exit

land.lhs.true23:                                  ; preds = %__cxgbi_sock_get.exit
  %function = getelementptr inbounds %struct.cxgbi_sock, ptr %ctx, i32 0, i32 35, i32 2
  %27 = ptrtoint ptr %function to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %function, align 4
  %cmp24.not = icmp eq ptr %28, @act_open_retry_timer
  br i1 %cmp24.not, label %land.lhs.true23.act_open_rpl_status_to_errno.exit_crit_edge, label %if.then26

land.lhs.true23.act_open_rpl_status_to_errno.exit_crit_edge: ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #12
  br label %act_open_rpl_status_to_errno.exit

if.then26:                                        ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #12
  %retry_timer = getelementptr inbounds %struct.cxgbi_sock, ptr %ctx, i32 0, i32 35
  %29 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @act_open_retry_timer, ptr %function, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %30 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %30, 50
  %call30 = tail call i32 @mod_timer(ptr noundef %retry_timer, i32 noundef %add) #10
  br label %if.end34

sw.bb1.i:                                         ; preds = %__cxgbi_sock_get.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %act_open_rpl_status_to_errno.exit

sw.bb2.i:                                         ; preds = %__cxgbi_sock_get.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %act_open_rpl_status_to_errno.exit

sw.bb3.i:                                         ; preds = %__cxgbi_sock_get.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %act_open_rpl_status_to_errno.exit

sw.default.i:                                     ; preds = %__cxgbi_sock_get.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %act_open_rpl_status_to_errno.exit

act_open_rpl_status_to_errno.exit:                ; preds = %sw.default.i, %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %land.lhs.true23.act_open_rpl_status_to_errno.exit_crit_edge, %__cxgbi_sock_get.exit.act_open_rpl_status_to_errno.exit_crit_edge
  %retval.0.i = phi i32 [ -5, %sw.default.i ], [ -12, %sw.bb3.i ], [ -110, %sw.bb2.i ], [ -113, %sw.bb1.i ], [ -111, %__cxgbi_sock_get.exit.act_open_rpl_status_to_errno.exit_crit_edge ], [ -98, %land.lhs.true23.act_open_rpl_status_to_errno.exit_crit_edge ]
  tail call void @cxgbi_sock_fail_act_open(ptr noundef %ctx, i32 noundef %retval.0.i) #10
  br label %if.end34

if.end34:                                         ; preds = %act_open_rpl_status_to_errno.exit, %if.then26
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #10
  tail call fastcc void @__cxgbi_sock_put(ptr noundef nonnull @.str.51, ptr noundef %ctx)
  tail call void @__kfree_skb(ptr noundef %skb) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @do_act_establish(ptr nocapture noundef readnone %tdev, ptr noundef %skb, ptr noundef %ctx) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %and = and i32 %3, 16777215
  %rcv_isn2 = getelementptr inbounds %struct.cpl_act_establish, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %rcv_isn2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rcv_isn2, align 4
  %6 = load i32, ptr @dbg_level, align 4
  %and3 = and i32 %6, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool.not = icmp eq i32 %and3, 0
  br i1 %tobool.not, label %entry.do.end7_crit_edge, label %do.end

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %tos_tid = getelementptr inbounds %struct.cpl_act_establish, ptr %1, i32 0, i32 5
  %7 = ptrtoint ptr %tos_tid to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tos_tid, align 4
  %and1 = and i32 %8, 16777215
  %state = getelementptr inbounds %struct.cxgbi_sock, ptr %ctx, i32 0, i32 28
  %9 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %state, align 4
  %flags = getelementptr inbounds %struct.cxgbi_sock, ptr %ctx, i32 0, i32 3
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags, align 4
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.58, i32 noundef %and1, i32 noundef %and1, ptr noundef %ctx, i32 noundef %10, i32 noundef %12, i32 noundef %5) #13
  br label %do.end7

do.end7:                                          ; preds = %do.end, %entry.do.end7_crit_edge
  %13 = load i32, ptr @dbg_level, align 4
  %and.i = and i32 %13, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end7.do.end3.i_crit_edge, label %do.end.i

do.end7.do.end3.i_crit_edge:                      ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end3.i

do.end.i:                                         ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #12
  %refcnt.i = getelementptr inbounds %struct.cxgbi_sock, ptr %ctx, i32 0, i32 27
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcnt.i, i32 noundef 4) #10
  %14 = ptrtoint ptr %refcnt.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %refcnt.i, align 4
  %call2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.58, ptr noundef %ctx, i32 noundef %15) #13
  br label %do.end3.i

do.end3.i:                                        ; preds = %do.end.i, %do.end7.do.end3.i_crit_edge
  %refcnt4.i = getelementptr inbounds %struct.cxgbi_sock, ptr %ctx, i32 0, i32 27
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt4.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %refcnt4.i, i32 1, i32 3, i32 1) #10
  %16 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt4.i, ptr %refcnt4.i, i32 1, ptr elementtype(i32) %refcnt4.i) #10, !srcloc !383
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %do.end3.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !384

do.end3.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %do.end3.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %17 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %17)
  %.not.i.i.i.i.i = icmp sgt i32 %17, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.__cxgbi_sock_get.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !385

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.__cxgbi_sock_get.exit_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__cxgbi_sock_get.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %do.end3.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %do.end3.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcnt4.i, i32 noundef %.sink.i.i.i.i.i) #10
  br label %__cxgbi_sock_get.exit

__cxgbi_sock_get.exit:                            ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.__cxgbi_sock_get.exit_crit_edge
  %flags.i = getelementptr inbounds %struct.cxgbi_sock, ptr %ctx, i32 0, i32 3
  %18 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags.i, align 4
  %or.i.i = or i32 %19, 64
  store i32 %or.i.i, ptr %flags.i, align 4
  %20 = load i32, ptr @dbg_level, align 4
  %and.i99 = and i32 %20, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i99)
  %tobool.not.i100 = icmp eq i32 %and.i99, 0
  br i1 %tobool.not.i100, label %__cxgbi_sock_get.exit.cxgbi_sock_set_flag.exit_crit_edge, label %do.end.i101

__cxgbi_sock_get.exit.cxgbi_sock_set_flag.exit_crit_edge: ; preds = %__cxgbi_sock_get.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cxgbi_sock_set_flag.exit

do.end.i101:                                      ; preds = %__cxgbi_sock_get.exit
  call void @__sanitizer_cov_trace_pc() #12
  %state.i = getelementptr inbounds %struct.cxgbi_sock, ptr %ctx, i32 0, i32 28
  %21 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %state.i, align 4
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, ptr noundef %ctx, i32 noundef %22, i32 noundef %or.i.i, i32 noundef 6) #13
  br label %cxgbi_sock_set_flag.exit

cxgbi_sock_set_flag.exit:                         ; preds = %do.end.i101, %__cxgbi_sock_get.exit.cxgbi_sock_set_flag.exit_crit_edge
  %tid8 = getelementptr inbounds %struct.cxgbi_sock, ptr %ctx, i32 0, i32 1
  %23 = ptrtoint ptr %tid8 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %and, ptr %tid8, align 4
  %24 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ctx, align 4
  %lldev = getelementptr inbounds %struct.cxgbi_device, ptr %25, i32 0, i32 4
  %26 = ptrtoint ptr %lldev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %lldev, align 4
  tail call void @cxgb3_insert_tid(ptr noundef %27, ptr noundef nonnull @t3_client, ptr noundef %ctx, i32 noundef %and) #10
  %cmp.i.i = icmp eq ptr %ctx, null
  br i1 %cmp.i.i, label %cxgbi_sock_set_flag.exit.free_atid.exit_crit_edge, label %cxgbi_sock_flag.exit.i

cxgbi_sock_set_flag.exit.free_atid.exit_crit_edge: ; preds = %cxgbi_sock_set_flag.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_atid.exit

cxgbi_sock_flag.exit.i:                           ; preds = %cxgbi_sock_set_flag.exit
  %28 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %flags.i, align 4
  %30 = and i32 %29, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not.i103 = icmp eq i32 %30, 0
  br i1 %tobool.not.i103, label %cxgbi_sock_flag.exit.i.free_atid.exit_crit_edge, label %if.then.i

cxgbi_sock_flag.exit.i.free_atid.exit_crit_edge:  ; preds = %cxgbi_sock_flag.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_atid.exit

if.then.i:                                        ; preds = %cxgbi_sock_flag.exit.i
  %31 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ctx, align 4
  %lldev.i = getelementptr inbounds %struct.cxgbi_device, ptr %32, i32 0, i32 4
  %33 = ptrtoint ptr %lldev.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %lldev.i, align 4
  %atid.i = getelementptr inbounds %struct.cxgbi_sock, ptr %ctx, i32 0, i32 2
  %35 = ptrtoint ptr %atid.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %atid.i, align 4
  %call1.i = tail call ptr @cxgb3_free_atid(ptr noundef %34, i32 noundef %36) #10
  %37 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %flags.i, align 4
  %and.i.i.i = and i32 %38, -33
  store i32 %and.i.i.i, ptr %flags.i, align 4
  %39 = load i32, ptr @dbg_level, align 4
  %and.i.i = and i32 %39, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.cxgbi_sock_clear_flag.exit.i_crit_edge, label %do.end.i.i

if.then.i.cxgbi_sock_clear_flag.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cxgbi_sock_clear_flag.exit.i

do.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %state.i.i = getelementptr inbounds %struct.cxgbi_sock, ptr %ctx, i32 0, i32 28
  %40 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %state.i.i, align 4
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.14, ptr noundef nonnull %ctx, i32 noundef %41, i32 noundef %and.i.i.i, i32 noundef 5) #13
  br label %cxgbi_sock_clear_flag.exit.i

cxgbi_sock_clear_flag.exit.i:                     ; preds = %do.end.i.i, %if.then.i.cxgbi_sock_clear_flag.exit.i_crit_edge
  tail call fastcc void @__cxgbi_sock_put(ptr noundef nonnull @__func__.free_atid, ptr noundef nonnull %ctx) #10
  br label %free_atid.exit

free_atid.exit:                                   ; preds = %cxgbi_sock_clear_flag.exit.i, %cxgbi_sock_flag.exit.i.free_atid.exit_crit_edge, %cxgbi_sock_set_flag.exit.free_atid.exit_crit_edge
  %42 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %42, align 8
  %conv12 = trunc i32 %44 to i16
  %rss_qid = getelementptr inbounds %struct.cxgbi_sock, ptr %ctx, i32 0, i32 5
  %45 = ptrtoint ptr %rss_qid to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %conv12, ptr %rss_qid, align 4
  %lock = getelementptr inbounds %struct.cxgbi_sock, ptr %ctx, i32 0, i32 26
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #10
  %function = getelementptr inbounds %struct.cxgbi_sock, ptr %ctx, i32 0, i32 35, i32 2
  %46 = ptrtoint ptr %function to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %function, align 4
  %tobool13.not = icmp eq ptr %47, null
  br i1 %tobool13.not, label %free_atid.exit.if.end19_crit_edge, label %if.then14

free_atid.exit.if.end19_crit_edge:                ; preds = %free_atid.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.then14:                                        ; preds = %free_atid.exit
  call void @__sanitizer_cov_trace_pc() #12
  %retry_timer = getelementptr inbounds %struct.cxgbi_sock, ptr %ctx, i32 0, i32 35
  %call16 = tail call i32 @del_timer(ptr noundef %retry_timer) #10
  %48 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr null, ptr %function, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then14, %free_atid.exit.if.end19_crit_edge
  %state20 = getelementptr inbounds %struct.cxgbi_sock, ptr %ctx, i32 0, i32 28
  %49 = ptrtoint ptr %state20 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %state20, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %50)
  %cmp.not = icmp eq i32 %50, 2
  br i1 %cmp.not, label %if.end19.if.end33_crit_edge, label %do.end27, !prof !385

if.end19.if.end33_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

do.end27:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  %51 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %flags.i, align 4
  %53 = ptrtoint ptr %tid8 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %tid8, align 4
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.58, ptr noundef %ctx, i32 noundef %50, i32 noundef %52, i32 noundef %54) #13
  br label %if.end33

if.end33:                                         ; preds = %do.end27, %if.end19.if.end33_crit_edge
  %rcv_nxt = getelementptr inbounds %struct.cxgbi_sock, ptr %ctx, i32 0, i32 40
  %55 = ptrtoint ptr %rcv_nxt to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %5, ptr %rcv_nxt, align 4
  %rcv_wup = getelementptr inbounds %struct.cxgbi_sock, ptr %ctx, i32 0, i32 42
  %56 = ptrtoint ptr %rcv_wup to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %5, ptr %rcv_wup, align 4
  %copied_seq = getelementptr inbounds %struct.cxgbi_sock, ptr %ctx, i32 0, i32 41
  %57 = ptrtoint ptr %copied_seq to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %5, ptr %copied_seq, align 4
  %rcv_win = getelementptr inbounds %struct.cxgbi_sock, ptr %ctx, i32 0, i32 47
  %58 = ptrtoint ptr %rcv_win to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %rcv_win, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16776192, i32 %59)
  %cmp34 = icmp ugt i32 %59, 16776192
  br i1 %cmp34, label %if.then36, label %if.end33.if.end40_crit_edge

if.end33.if.end40_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end40

if.then36:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  %sub.neg = add i32 %5, 16776192
  %sub39 = sub i32 %sub.neg, %59
  %60 = ptrtoint ptr %rcv_wup to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %sub39, ptr %rcv_wup, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.then36, %if.end33.if.end40_crit_edge
  %snd_isn = getelementptr inbounds %struct.cpl_act_establish, ptr %1, i32 0, i32 8
  %61 = ptrtoint ptr %snd_isn to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %snd_isn, align 4
  %tcp_opt = getelementptr inbounds %struct.cpl_act_establish, ptr %1, i32 0, i32 7
  %63 = ptrtoint ptr %tcp_opt to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %tcp_opt, align 2
  %conv41 = zext i16 %64 to i32
  tail call void @cxgbi_sock_established(ptr noundef %ctx, i32 noundef %62, i32 noundef %conv41) #10
  br i1 %cmp.i.i, label %if.end40.if.else_crit_edge, label %cxgbi_sock_flag.exit

if.end40.if.else_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

cxgbi_sock_flag.exit:                             ; preds = %if.end40
  %65 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile i32, ptr %flags.i, align 4
  %67 = and i32 %66, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool43.not = icmp eq i32 %67, 0
  br i1 %tobool43.not, label %cxgbi_sock_flag.exit.if.else_crit_edge, label %if.then50, !prof !385

cxgbi_sock_flag.exit.if.else_crit_edge:           ; preds = %cxgbi_sock_flag.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.then50:                                        ; preds = %cxgbi_sock_flag.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @send_abort_req(ptr noundef nonnull %ctx)
  br label %if.end56

if.else:                                          ; preds = %cxgbi_sock_flag.exit.if.else_crit_edge, %if.end40.if.else_crit_edge
  %qlen.i = getelementptr inbounds %struct.cxgbi_sock, ptr %ctx, i32 0, i32 34, i32 1
  %68 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %qlen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool52.not = icmp eq i32 %69, 0
  br i1 %tobool52.not, label %if.else.if.end55_crit_edge, label %if.then53

if.else.if.end55_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end55

if.then53:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %call54 = tail call i32 @push_tx_frames(ptr noundef %ctx, i32 noundef 1)
  br label %if.end55

if.end55:                                         ; preds = %if.then53, %if.else.if.end55_crit_edge
  tail call void @cxgbi_conn_tx_open(ptr noundef %ctx) #10
  br label %if.end56

if.end56:                                         ; preds = %if.end55, %if.then50
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #10
  tail call void @__kfree_skb(ptr noundef %skb) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @do_wr_ack(ptr nocapture noundef readnone %cdev, ptr noundef %skb, ptr noundef %ctx) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %2 = load i32, ptr @dbg_level, align 4
  %and = and i32 %2, 36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %state = getelementptr inbounds %struct.cxgbi_sock, ptr %ctx, i32 0, i32 28
  %3 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state, align 4
  %flags = getelementptr inbounds %struct.cxgbi_sock, ptr %ctx, i32 0, i32 3
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags, align 4
  %tid = getelementptr inbounds %struct.cxgbi_sock, ptr %ctx, i32 0, i32 1
  %7 = ptrtoint ptr %tid to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tid, align 4
  %credits = getelementptr inbounds %struct.cpl_wr_ack, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %credits to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %credits, align 4
  %conv = zext i16 %10 to i32
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.74, ptr noundef %ctx, i32 noundef %4, i32 noundef %6, i32 noundef %8, i32 noundef %conv) #13
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %credits5 = getelementptr inbounds %struct.cpl_wr_ack, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %credits5 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %credits5, align 4
  %conv6 = zext i16 %12 to i32
  %snd_una = getelementptr inbounds %struct.cpl_wr_ack, ptr %1, i32 0, i32 4
  %13 = ptrtoint ptr %snd_una to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %snd_una, align 4
  tail call void @cxgbi_sock_rcv_wr_ack(ptr noundef %ctx, i32 noundef %conv6, i32 noundef %14, i32 noundef 1) #10
  tail call void @__kfree_skb(ptr noundef %skb) #10
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cxgb3i_exit_module() #2 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @cxgb3_unregister_client(ptr noundef nonnull @t3_client) #10
  tail call void @cxgbi_device_unregister_all(i32 noundef 1) #10
  tail call void @cxgbi_iscsi_cleanup(ptr noundef nonnull @cxgb3i_iscsi_transport, ptr noundef nonnull @cxgb3i_stt) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cxgb3_unregister_client(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @cxgbi_device_unregister_all(i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @cxgbi_iscsi_cleanup(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cxgb3i_init_module() #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.148, ptr noundef nonnull @version) #13
  %call1 = tail call i32 @cxgbi_iscsi_init(ptr noundef nonnull @cxgb3i_iscsi_transport, ptr noundef nonnull @cxgb3i_stt) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @cxgb3_register_client(ptr noundef nonnull @t3_client) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @cxgbi_sock_rcv_peer_close(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__kfree_skb(ptr noundef) local_unnamed_addr #0

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cxgbi_sock_closed(ptr noundef) local_unnamed_addr #0

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__cxgbi_sock_put(ptr noundef %fn, ptr noundef %csk) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %0 = load i32, ptr @dbg_level, align 4
  %and = and i32 %0, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %refcnt = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 27
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcnt, i32 noundef 4) #10
  %1 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %refcnt, align 4
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, ptr noundef %fn, ptr noundef %csk, i32 noundef %2) #13
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %refcnt4 = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 27
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt4, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !387
  tail call void @llvm.prefetch.p0(ptr %refcnt4, i32 1, i32 3, i32 1) #10
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt4, ptr %refcnt4, i32 1, ptr elementtype(i32) %refcnt4) #10, !srcloc !388
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %do.end3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !385

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %refcnt4, i32 noundef 3) #10
  br label %kref_put.exit

if.then.i:                                        ; preds = %do.end3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !389
  %tobool.not.i.i = icmp eq ptr %csk, null
  br i1 %tobool.not.i.i, label %if.then.i.kref_put.exit_crit_edge, label %do.body.i.i

if.then.i.kref_put.exit_crit_edge:                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kref_put.exit

do.body.i.i:                                      ; preds = %if.then.i
  %4 = load i32, ptr @dbg_level, align 4
  %and.i.i = and i32 %4, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool1.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool1.not.i.i, label %do.body.i.i.do.end6.i.i_crit_edge, label %do.end.i.i

do.body.i.i.do.end6.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end6.i.i

do.end.i.i:                                       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %state.i.i = getelementptr %struct.cxgbi_sock, ptr %csk, i32 0, i32 28
  %5 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %state.i.i, align 4
  %flags.i.i = getelementptr %struct.cxgbi_sock, ptr %csk, i32 0, i32 3
  %7 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags.i.i, align 4
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20, ptr noundef nonnull %csk, i32 noundef %6, i32 noundef %8) #13
  br label %do.end6.i.i

do.end6.i.i:                                      ; preds = %do.end.i.i, %do.body.i.i.do.end6.i.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %csk) #10
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %do.end6.i.i, %if.then.i.kref_put.exit_crit_edge, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxgb3_ofld_send(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @cxgbi_sock_rcv_abort_rpl(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @cxgbi_sock_rcv_close_conn_rpl(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @cxgbi_conn_pdu_ready(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @send_abort_req(ptr noundef %csk) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cpl_abort_req = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 23
  %0 = ptrtoint ptr %cpl_abort_req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cpl_abort_req, align 4
  %state = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 28
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %3)
  %cmp = icmp eq i32 %3, 8
  %tobool.not = icmp eq ptr %1, null
  %spec.select = select i1 %cmp, i1 true, i1 %tobool.not, !prof !384
  br i1 %spec.select, label %entry.cleanup_crit_edge, label %if.end, !prof !384

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load i32, ptr @dbg_level, align 4
  %and.i = and i32 %4, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.cxgbi_sock_set_state.exit_crit_edge, label %do.end.i

if.end.cxgbi_sock_set_state.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cxgbi_sock_set_state.exit

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %flags.i = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 3
  %5 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags.i, align 4
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, ptr noundef %csk, i32 noundef %3, i32 noundef %6, i32 noundef 8) #13
  br label %cxgbi_sock_set_state.exit

cxgbi_sock_set_state.exit:                        ; preds = %do.end.i, %if.end.cxgbi_sock_set_state.exit_crit_edge
  %7 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 8, ptr %state, align 4
  %flags.i50 = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 3
  %8 = ptrtoint ptr %flags.i50 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags.i50, align 4
  %or.i.i = or i32 %9, 4
  store i32 %or.i.i, ptr %flags.i50, align 4
  %10 = load i32, ptr @dbg_level, align 4
  %and.i51 = and i32 %10, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i51)
  %tobool.not.i52 = icmp eq i32 %and.i51, 0
  br i1 %tobool.not.i52, label %cxgbi_sock_set_state.exit.cxgbi_sock_set_flag.exit_crit_edge, label %do.end.i54

cxgbi_sock_set_state.exit.cxgbi_sock_set_flag.exit_crit_edge: ; preds = %cxgbi_sock_set_state.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cxgbi_sock_set_flag.exit

do.end.i54:                                       ; preds = %cxgbi_sock_set_state.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call.i53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, ptr noundef %csk, i32 noundef 8, i32 noundef %or.i.i, i32 noundef 2) #13
  br label %cxgbi_sock_set_flag.exit

cxgbi_sock_set_flag.exit:                         ; preds = %do.end.i54, %cxgbi_sock_set_state.exit.cxgbi_sock_set_flag.exit_crit_edge
  %write_queue.i = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 34
  %11 = ptrtoint ptr %write_queue.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %write_queue.i, align 4
  %cmp.i.i2.i = icmp eq ptr %12, %write_queue.i
  %tobool.not.i13.i = icmp eq ptr %12, null
  %tobool.not.i4.i = or i1 %cmp.i.i2.i, %tobool.not.i13.i
  br i1 %tobool.not.i4.i, label %cxgbi_sock_set_flag.exit.cxgbi_sock_purge_write_queue.exit_crit_edge, label %while.body.lr.ph.i

cxgbi_sock_set_flag.exit.cxgbi_sock_purge_write_queue.exit_crit_edge: ; preds = %cxgbi_sock_set_flag.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cxgbi_sock_purge_write_queue.exit

while.body.lr.ph.i:                               ; preds = %cxgbi_sock_set_flag.exit
  %qlen.i.i.i = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 34, i32 1
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %13 = phi ptr [ %12, %while.body.lr.ph.i ], [ %23, %while.body.i.while.body.i_crit_edge ]
  %14 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %qlen.i.i.i, align 4
  %sub.i.i.i = add i32 %15, -1
  store volatile i32 %sub.i.i.i, ptr %qlen.i.i.i, align 4
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %13, align 8
  %prev9.i.i.i = getelementptr inbounds %struct.anon.51, ptr %13, i32 0, i32 1
  %18 = ptrtoint ptr %prev9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev9.i.i.i, align 4
  store ptr null, ptr %prev9.i.i.i, align 4
  store ptr null, ptr %13, align 8
  %prev17.i.i.i = getelementptr inbounds %struct.anon.51, ptr %17, i32 0, i32 1
  %20 = ptrtoint ptr %prev17.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %19, ptr %prev17.i.i.i, align 4
  %21 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %17, ptr %19, align 8
  tail call void @__kfree_skb(ptr noundef nonnull %13) #10
  %22 = ptrtoint ptr %write_queue.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %write_queue.i, align 4
  %cmp.i.i.i = icmp eq ptr %23, %write_queue.i
  %tobool.not.i1.i = icmp eq ptr %23, null
  %tobool.not.i.i = or i1 %cmp.i.i.i, %tobool.not.i1.i
  br i1 %tobool.not.i.i, label %while.body.i.cxgbi_sock_purge_write_queue.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

while.body.i.cxgbi_sock_purge_write_queue.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cxgbi_sock_purge_write_queue.exit

cxgbi_sock_purge_write_queue.exit:                ; preds = %while.body.i.cxgbi_sock_purge_write_queue.exit_crit_edge, %cxgbi_sock_set_flag.exit.cxgbi_sock_purge_write_queue.exit_crit_edge
  %24 = ptrtoint ptr %cpl_abort_req to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %cpl_abort_req, align 4
  %head = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 18
  %25 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %head, align 8
  %priority = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15, i32 0, i32 6
  %27 = ptrtoint ptr %priority to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %priority, align 4
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3
  %28 = ptrtoint ptr %cb.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @abort_arp_failure, ptr %cb.i, align 8
  %29 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 184549376, ptr %26, align 4
  %tid = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 1
  %30 = ptrtoint ptr %tid to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %tid, align 4
  %shl = shl i32 %31, 8
  %wr_lo = getelementptr inbounds %struct.work_request_hdr, ptr %26, i32 0, i32 1
  %32 = ptrtoint ptr %wr_lo to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %shl, ptr %wr_lo, align 4
  %33 = load i32, ptr %tid, align 4
  %or = or i32 %33, 167772160
  %ot = getelementptr inbounds %struct.cpl_abort_req, ptr %26, i32 0, i32 1
  %34 = ptrtoint ptr %ot to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %or, ptr %ot, align 4
  %snd_nxt = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 43
  %35 = ptrtoint ptr %snd_nxt to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %snd_nxt, align 4
  %rsvd0 = getelementptr inbounds %struct.cpl_abort_req, ptr %26, i32 0, i32 2
  %37 = ptrtoint ptr %rsvd0 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %rsvd0, align 4
  %cmp.i = icmp eq ptr %csk, null
  br i1 %cmp.i, label %cxgbi_sock_purge_write_queue.exit.cxgbi_sock_flag.exit_crit_edge, label %if.end.i

cxgbi_sock_purge_write_queue.exit.cxgbi_sock_flag.exit_crit_edge: ; preds = %cxgbi_sock_purge_write_queue.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cxgbi_sock_flag.exit

if.end.i:                                         ; preds = %cxgbi_sock_purge_write_queue.exit
  call void @__sanitizer_cov_trace_pc() #12
  %38 = ptrtoint ptr %flags.i50 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %flags.i50, align 4
  %40 = and i32 %39, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %phi.cmp = icmp eq i32 %40, 0
  br label %cxgbi_sock_flag.exit

cxgbi_sock_flag.exit:                             ; preds = %if.end.i, %cxgbi_sock_purge_write_queue.exit.cxgbi_sock_flag.exit_crit_edge
  %retval.0.i = phi i1 [ %phi.cmp, %if.end.i ], [ true, %cxgbi_sock_purge_write_queue.exit.cxgbi_sock_flag.exit_crit_edge ]
  %conv = zext i1 %retval.0.i to i8
  %rsvd1 = getelementptr inbounds %struct.cpl_abort_req, ptr %26, i32 0, i32 3
  %41 = ptrtoint ptr %rsvd1 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv, ptr %rsvd1, align 4
  %cmd = getelementptr inbounds %struct.cpl_abort_req, ptr %26, i32 0, i32 4
  %42 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %cmd, align 1
  %43 = load i32, ptr @dbg_level, align 4
  %and = and i32 %43, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  br i1 %tobool10.not, label %cxgbi_sock_flag.exit.do.end21_crit_edge, label %do.end

cxgbi_sock_flag.exit.do.end21_crit_edge:          ; preds = %cxgbi_sock_flag.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end21

do.end:                                           ; preds = %cxgbi_sock_flag.exit
  call void @__sanitizer_cov_trace_pc() #12
  %44 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %state, align 4
  %46 = ptrtoint ptr %flags.i50 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %flags.i50, align 4
  %48 = ptrtoint ptr %tid to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %tid, align 4
  %50 = ptrtoint ptr %snd_nxt to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %snd_nxt, align 4
  %conv17 = zext i1 %retval.0.i to i32
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.47, ptr noundef %csk, i32 noundef %45, i32 noundef %47, i32 noundef %49, i32 noundef %51, i32 noundef %conv17) #13
  br label %do.end21

do.end21:                                         ; preds = %do.end, %cxgbi_sock_flag.exit.do.end21_crit_edge
  %52 = ptrtoint ptr %csk to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %csk, align 4
  %lldev = getelementptr inbounds %struct.cxgbi_device, ptr %53, i32 0, i32 4
  %54 = ptrtoint ptr %lldev to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %lldev, align 4
  %l2t = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 19
  %56 = ptrtoint ptr %l2t to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %l2t, align 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %57, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %59)
  %cmp.i56 = icmp eq i16 %59, 0
  br i1 %cmp.i56, label %if.then.i, label %if.end.i58, !prof !385

if.then.i:                                        ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #12
  %call.i57 = tail call i32 @cxgb3_ofld_send(ptr noundef %55, ptr noundef %1) #10
  br label %cleanup

if.end.i58:                                       ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #12
  %call3.i = tail call i32 @t3_l2t_send_slow(ptr noundef %55, ptr noundef %1, ptr noundef %57) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end.i58, %if.then.i, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___pskb_trim(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @abort_arp_failure(ptr noundef %tdev, ptr noundef %skb) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %2 = load i32, ptr @dbg_level, align 4
  %and = and i32 %2, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end5_crit_edge, label %do.end

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %ot = getelementptr inbounds %struct.cpl_abort_req, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %ot to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ot, align 4
  %and2 = and i32 %4, 16777215
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.49, ptr noundef %tdev, i32 noundef %and2, ptr noundef %skb) #13
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %cmd = getelementptr inbounds %struct.cpl_abort_req, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %cmd, align 1
  %call6 = tail call i32 @cxgb3_ofld_send(ptr noundef %tdev, ptr noundef %skb) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t3_l2t_send_slow(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @cxgb3_queue_tid_release(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @act_open_retry_timer(ptr noundef %t) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -320
  %0 = load i32, ptr @dbg_level, align 4
  %and = and i32 %0, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %state = getelementptr i8, ptr %t, i32 -180
  %1 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %state, align 4
  %flags = getelementptr i8, ptr %t, i32 -308
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags, align 4
  %tid = getelementptr i8, ptr %t, i32 -316
  %5 = ptrtoint ptr %tid to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tid, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.52, ptr noundef %add.ptr, i32 noundef %2, i32 noundef %4, i32 noundef %6) #13
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %7 = load i32, ptr @dbg_level, align 4
  %and.i = and i32 %7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end4.do.end3.i_crit_edge, label %do.end.i

do.end4.do.end3.i_crit_edge:                      ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end3.i

do.end.i:                                         ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #12
  %refcnt.i = getelementptr i8, ptr %t, i32 -184
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcnt.i, i32 noundef 4) #10
  %8 = ptrtoint ptr %refcnt.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %refcnt.i, align 4
  %call2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.52, ptr noundef %add.ptr, i32 noundef %9) #13
  br label %do.end3.i

do.end3.i:                                        ; preds = %do.end.i, %do.end4.do.end3.i_crit_edge
  %refcnt4.i = getelementptr i8, ptr %t, i32 -184
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt4.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %refcnt4.i, i32 1, i32 3, i32 1) #10
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt4.i, ptr %refcnt4.i, i32 1, ptr elementtype(i32) %refcnt4.i) #10, !srcloc !383
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %do.end3.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !384

do.end3.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %do.end3.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %11 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %.not.i.i.i.i.i = icmp sgt i32 %11, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.__cxgbi_sock_get.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !385

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.__cxgbi_sock_get.exit_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__cxgbi_sock_get.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %do.end3.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %do.end3.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcnt4.i, i32 noundef %.sink.i.i.i.i.i) #10
  br label %__cxgbi_sock_get.exit

__cxgbi_sock_get.exit:                            ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.__cxgbi_sock_get.exit_crit_edge
  %lock = getelementptr i8, ptr %t, i32 -228
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #10
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef 40, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #10
  %tobool.not.i24 = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i24, label %if.then7, label %if.then.i

if.then.i:                                        ; preds = %__cxgbi_sock_get.exit
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 7
  %12 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.i.not.i.i = icmp eq i32 %13, 0
  br i1 %tobool.i.not.i.i, label %if.else, label %do.body3.i.i, !prof !385

do.body3.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #10, !srcloc !390
  unreachable

if.then7:                                         ; preds = %__cxgbi_sock_get.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54, i32 noundef 40, i32 noundef 0) #13
  tail call void @cxgbi_sock_fail_act_open(ptr noundef %add.ptr, i32 noundef -12) #10
  br label %if.end8

if.else:                                          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %14 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tail.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %15, i32 40
  store ptr %add.ptr.i.i, ptr %tail.i.i, align 8
  %len9.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 6
  %16 = ptrtoint ptr %len9.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %len9.i.i, align 4
  %add.i.i = add i32 %17, 40
  store i32 %add.i.i, ptr %len9.i.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 18
  %18 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %head.i, align 8
  %20 = call ptr @memset(ptr %19, i32 0, i32 40)
  %21 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 1
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %add.ptr, ptr %21, align 4
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3
  %23 = ptrtoint ptr %cb.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @act_open_arp_failure, ptr %cb.i, align 8
  %l2t = getelementptr i8, ptr %t, i32 -256
  %24 = ptrtoint ptr %l2t to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %l2t, align 4
  tail call fastcc void @send_act_open_req(ptr noundef %add.ptr, ptr noundef nonnull %call.i.i, ptr noundef %25)
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then7
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #10
  tail call fastcc void @__cxgbi_sock_put(ptr noundef nonnull @.str.52, ptr noundef %add.ptr)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @cxgbi_sock_fail_act_open(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @act_open_arp_failure(ptr nocapture noundef readnone %dev, ptr noundef %skb) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @cxgbi_sock_act_open_req_arp_failure(ptr noundef null, ptr noundef %skb) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @send_act_open_req(ptr noundef %csk, ptr noundef %skb, ptr nocapture noundef readonly %e) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %rcv_win = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 47
  %0 = ptrtoint ptr %rcv_win to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rcv_win, align 4
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %entry
  %wscale.0.i = phi i32 [ 0, %entry ], [ %inc.i, %while.cond.i.while.cond.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %wscale.0.i)
  %cmp.i = icmp ult i32 %wscale.0.i, 14
  %shl.i = shl nuw nsw i32 65535, %wscale.0.i
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i, i32 %1)
  %cmp1.i = icmp ult i32 %shl.i, %1
  %or.cond.i = select i1 %cmp.i, i1 %cmp1.i, i1 false
  %inc.i = add nuw nsw i32 %wscale.0.i, 1
  br i1 %or.cond.i, label %while.cond.i.while.cond.i_crit_edge, label %cxgbi_sock_compute_wscale.exit

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.i

cxgbi_sock_compute_wscale.exit:                   ; preds = %while.cond.i
  %head = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %2 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %head, align 8
  %priority = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 6
  %4 = ptrtoint ptr %priority to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %priority, align 4
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 16777216, ptr %3, align 4
  %atid = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 2
  %6 = ptrtoint ptr %atid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %atid, align 4
  %or = or i32 %7, 50331648
  %ot = getelementptr inbounds %struct.cpl_act_open_req, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %ot to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %or, ptr %ot, align 4
  %sin_port = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 30, i32 0, i32 1
  %9 = ptrtoint ptr %sin_port to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %sin_port, align 2
  %local_port = getelementptr inbounds %struct.cpl_act_open_req, ptr %3, i32 0, i32 2
  %11 = ptrtoint ptr %local_port to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %local_port, align 4
  %sin_port1 = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 31, i32 0, i32 1
  %12 = ptrtoint ptr %sin_port1 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %sin_port1, align 2
  %peer_port = getelementptr inbounds %struct.cpl_act_open_req, ptr %3, i32 0, i32 3
  %14 = ptrtoint ptr %peer_port to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %peer_port, align 2
  %sin_addr = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 30, i32 0, i32 2
  %15 = ptrtoint ptr %sin_addr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %sin_addr, align 4
  %local_ip = getelementptr inbounds %struct.cpl_act_open_req, ptr %3, i32 0, i32 4
  %17 = ptrtoint ptr %local_ip to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %local_ip, align 4
  %sin_addr2 = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 31, i32 0, i32 2
  %18 = ptrtoint ptr %sin_addr2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sin_addr2, align 4
  %peer_ip = getelementptr inbounds %struct.cpl_act_open_req, ptr %3, i32 0, i32 5
  %20 = ptrtoint ptr %peer_ip to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %peer_ip, align 4
  %shl = shl nuw nsw i32 %wscale.0.i, 18
  %mss_idx = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 10
  %21 = ptrtoint ptr %mss_idx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %mss_idx, align 4
  %shl5 = shl i32 %22, 28
  %idx = getelementptr inbounds %struct.l2t_entry, ptr %e, i32 0, i32 1
  %23 = ptrtoint ptr %idx to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %idx, align 2
  %conv = zext i16 %24 to i32
  %shl7 = shl nuw nsw i32 %conv, 4
  %smt_idx = getelementptr inbounds %struct.l2t_entry, ptr %e, i32 0, i32 4
  %25 = ptrtoint ptr %smt_idx to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %smt_idx, align 4
  %conv9 = zext i16 %26 to i32
  %shl10 = shl nuw nsw i32 %conv9, 15
  %or4 = or i32 %shl, %shl5
  %or6 = or i32 %or4, %shl7
  %or8 = or i32 %or6, %shl10
  %or11 = or i32 %or8, 4259840
  %opt0h = getelementptr inbounds %struct.cpl_act_open_req, ptr %3, i32 0, i32 6
  %27 = ptrtoint ptr %opt0h to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %or11, ptr %opt0h, align 4
  %28 = ptrtoint ptr %rcv_win to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rcv_win, align 4
  %30 = shl i32 %29, 2
  %shl13 = and i32 %30, -4096
  %or14 = or i32 %shl13, 512
  %opt0l = getelementptr inbounds %struct.cpl_act_open_req, ptr %3, i32 0, i32 7
  %31 = ptrtoint ptr %opt0l to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %or14, ptr %opt0l, align 4
  %32 = load i32, ptr @dbg_level, align 4
  %and = and i32 %32, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %cxgbi_sock_compute_wscale.exit.do.end30_crit_edge, label %do.end

cxgbi_sock_compute_wscale.exit.do.end30_crit_edge: ; preds = %cxgbi_sock_compute_wscale.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end30

do.end:                                           ; preds = %cxgbi_sock_compute_wscale.exit
  call void @__sanitizer_cov_trace_pc() #12
  %state = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 28
  %33 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %state, align 4
  %flags = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 3
  %35 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %flags, align 4
  %37 = ptrtoint ptr %atid to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %atid, align 4
  %conv19 = zext i16 %10 to i32
  %conv22 = zext i16 %13 to i32
  %39 = ptrtoint ptr %mss_idx to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %mss_idx, align 4
  %41 = ptrtoint ptr %idx to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %idx, align 2
  %conv25 = zext i16 %42 to i32
  %43 = ptrtoint ptr %smt_idx to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %smt_idx, align 4
  %conv27 = zext i16 %44 to i32
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.56, ptr noundef %csk, i32 noundef %34, i32 noundef %36, i32 noundef %38, ptr noundef %local_ip, i32 noundef %conv19, ptr noundef %peer_ip, i32 noundef %conv22, i32 noundef %40, i32 noundef %conv25, i32 noundef %conv27) #13
  br label %do.end30

do.end30:                                         ; preds = %do.end, %cxgbi_sock_compute_wscale.exit.do.end30_crit_edge
  %45 = ptrtoint ptr %csk to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %csk, align 4
  %lldev = getelementptr inbounds %struct.cxgbi_device, ptr %46, i32 0, i32 4
  %47 = ptrtoint ptr %lldev to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %lldev, align 4
  %l2t = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 19
  %49 = ptrtoint ptr %l2t to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %l2t, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %50, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %52)
  %cmp.i62 = icmp eq i16 %52, 0
  br i1 %cmp.i62, label %if.then.i, label %if.end.i, !prof !385

if.then.i:                                        ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call i32 @cxgb3_ofld_send(ptr noundef %48, ptr noundef %skb) #10
  br label %l2t_send.exit

if.end.i:                                         ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #12
  %call3.i = tail call i32 @t3_l2t_send_slow(ptr noundef %48, ptr noundef %skb, ptr noundef %50) #10
  br label %l2t_send.exit

l2t_send.exit:                                    ; preds = %if.end.i, %if.then.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @cxgbi_sock_act_open_req_arp_failure(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @cxgb3_insert_tid(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @cxgbi_sock_established(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @push_tx_frames(ptr noundef %csk, i32 noundef %req_completion) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 28
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.152)
  switch i32 %1, label %lor.rhs [
    i32 6, label %entry.do.body_crit_edge
    i32 2, label %entry.do.body_crit_edge238
    i32 1, label %entry.do.body_crit_edge239
    i32 0, label %entry.do.body_crit_edge240
  ]

entry.do.body_crit_edge240:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

entry.do.body_crit_edge239:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

entry.do.body_crit_edge238:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

lor.rhs:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %1)
  %cmp4 = icmp ugt i32 %1, 7
  br i1 %cmp4, label %lor.rhs.do.body_crit_edge, label %while.cond.preheader, !prof !384

lor.rhs.do.body_crit_edge:                        ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

while.cond.preheader:                             ; preds = %lor.rhs
  %wr_cred = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 14
  %3 = ptrtoint ptr %wr_cred to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %wr_cred, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool13.not228 = icmp eq i32 %4, 0
  br i1 %tobool13.not228, label %while.cond.preheader.cleanup145_crit_edge, label %land.rhs.lr.ph

while.cond.preheader.cleanup145_crit_edge:        ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup145

land.rhs.lr.ph:                                   ; preds = %while.cond.preheader
  %write_queue = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 34
  %qlen.i = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 34, i32 1
  %wr_una_cred = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 15
  %wr_pending_head.i = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 20
  %wr_pending_tail.i = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 21
  %wr_max_cred = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 13
  %l2t1.i = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 19
  %tid.i = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 1
  %snd_nxt.i = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 43
  %cmp.i38.i = icmp eq ptr %csk, null
  %flags.i.i = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 3
  %rss_qid.i = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 5
  %snd_win.i = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 46
  br label %land.rhs

do.body:                                          ; preds = %lor.rhs.do.body_crit_edge, %entry.do.body_crit_edge, %entry.do.body_crit_edge238, %entry.do.body_crit_edge239, %entry.do.body_crit_edge240
  %5 = load i32, ptr @dbg_level, align 4
  %and = and i32 %5, 20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %do.body.cleanup145_crit_edge, label %do.end

do.body.cleanup145_crit_edge:                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup145

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %flags = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 3
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 4
  %tid = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 1
  %8 = ptrtoint ptr %tid to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tid, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.63, ptr noundef %csk, i32 noundef %1, i32 noundef %7, i32 noundef %9) #13
  br label %cleanup145

land.rhs:                                         ; preds = %cleanup.land.rhs_crit_edge, %land.rhs.lr.ph
  %req_completion.addr.0230 = phi i32 [ %req_completion, %land.rhs.lr.ph ], [ %req_completion.addr.2, %cleanup.land.rhs_crit_edge ]
  %total_size.0229 = phi i32 [ 0, %land.rhs.lr.ph ], [ %add128, %cleanup.land.rhs_crit_edge ]
  %10 = ptrtoint ptr %write_queue to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write_queue, align 4
  %cmp.i = icmp eq ptr %11, %write_queue
  %cmp15.not226 = icmp eq ptr %11, null
  %cmp15.not = or i1 %cmp.i, %cmp15.not226
  br i1 %cmp15.not, label %land.rhs.cleanup145_crit_edge, label %while.body

land.rhs.cleanup145_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup145

while.body:                                       ; preds = %land.rhs
  %len16 = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 6
  %12 = ptrtoint ptr %len16 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len16, align 4
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 17
  %14 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %end.i, align 4
  %nr_frags = getelementptr inbounds %struct.skb_shared_info, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %nr_frags to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %nr_frags, align 2
  %conv = zext i8 %17 to i32
  %data_len = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 7
  %18 = ptrtoint ptr %data_len to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %data_len, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %19)
  %cmp18 = icmp ne i32 %13, %19
  %conv19 = zext i1 %cmp18 to i32
  %add = add nuw nsw i32 %conv19, %conv
  %arrayidx = getelementptr [19 x i32], ptr @skb_wrs, i32 0, i32 %add
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %21)
  %cmp20 = icmp sgt i32 %21, 1
  br i1 %cmp20, label %land.lhs.true, label %while.body.if.end26_crit_edge

while.body.if.end26_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

land.lhs.true:                                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %add22 = add i32 %13, 24
  %22 = load i32, ptr @wrlen, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add22, i32 %22)
  %cmp23.not = icmp ugt i32 %add22, %22
  %spec.select = select i1 %cmp23.not, i32 %21, i32 1
  br label %if.end26

if.end26:                                         ; preds = %land.lhs.true, %while.body.if.end26_crit_edge
  %wrs_needed.0 = phi i32 [ %21, %while.body.if.end26_crit_edge ], [ %spec.select, %land.lhs.true ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %add)
  %cmp27 = icmp ugt i32 %add, 18
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %wrs_needed.0)
  %cmp30 = icmp slt i32 %wrs_needed.0, 1
  %spec.select213 = select i1 %cmp27, i1 true, i1 %cmp30
  br i1 %spec.select213, label %do.end48, label %if.end26.if.end54_crit_edge, !prof !384

if.end26.if.end54_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end54

do.end48:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 414, i32 noundef 9, ptr noundef null) #10
  br label %if.end54

if.end54:                                         ; preds = %do.end48, %if.end26.if.end54_crit_edge
  %23 = ptrtoint ptr %wr_cred to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %wr_cred, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %wrs_needed.0)
  %cmp63 = icmp slt i32 %24, %wrs_needed.0
  br i1 %cmp63, label %do.body66, label %if.end81

do.body66:                                        ; preds = %if.end54
  %25 = load i32, ptr @dbg_level, align 4
  %and67 = and i32 %25, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67)
  %tobool68.not = icmp eq i32 %and67, 0
  br i1 %tobool68.not, label %do.body66.cleanup145_crit_edge, label %do.end72

do.body66.cleanup145_crit_edge:                   ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup145

do.end72:                                         ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #12
  %26 = ptrtoint ptr %len16 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %len16, align 4
  %28 = ptrtoint ptr %data_len to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %data_len, align 8
  %call77 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.63, ptr noundef %csk, i32 noundef %27, i32 noundef %29, i32 noundef %add, i32 noundef %wrs_needed.0, i32 noundef %24) #13
  br label %cleanup145

if.end81:                                         ; preds = %if.end54
  %30 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %qlen.i, align 4
  %sub.i = add i32 %31, -1
  store volatile i32 %sub.i, ptr %qlen.i, align 4
  %32 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %11, align 8
  %prev9.i = getelementptr inbounds %struct.anon.51, ptr %11, i32 0, i32 1
  %34 = ptrtoint ptr %prev9.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %prev9.i, align 4
  store ptr null, ptr %prev9.i, align 4
  store ptr null, ptr %11, align 8
  %prev17.i = getelementptr inbounds %struct.anon.51, ptr %33, i32 0, i32 1
  %36 = ptrtoint ptr %prev17.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %35, ptr %prev17.i, align 4
  %37 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %33, ptr %35, align 8
  %priority = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 15, i32 0, i32 6
  %38 = ptrtoint ptr %priority to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %priority, align 4
  %39 = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 15, i32 0, i32 5
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %wrs_needed.0, ptr %39, align 8
  %41 = ptrtoint ptr %wr_cred to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %wr_cred, align 4
  %sub = sub i32 %42, %wrs_needed.0
  store i32 %sub, ptr %wr_cred, align 4
  %43 = ptrtoint ptr %wr_una_cred to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %wr_una_cred, align 4
  %add84 = add i32 %44, %wrs_needed.0
  store i32 %add84, ptr %wr_una_cred, align 4
  %wr_next.i = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 3, i32 8
  %45 = ptrtoint ptr %wr_next.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %wr_next.i, align 8
  %users.i.i = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 21
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %users.i.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %users.i.i, i32 1, i32 3, i32 1) #10
  %46 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users.i.i, ptr %users.i.i, i32 1, ptr elementtype(i32) %users.i.i) #10, !srcloc !383
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %46, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.end81.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !384

if.end81.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.end81
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %47 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %47)
  %.not.i.i.i.i.i = icmp sgt i32 %47, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.skb_get.exit.i_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !385

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.skb_get.exit.i_crit_edge:       ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_get.exit.i

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.end81.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.end81.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %users.i.i, i32 noundef %.sink.i.i.i.i.i) #10
  br label %skb_get.exit.i

skb_get.exit.i:                                   ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.skb_get.exit.i_crit_edge
  %48 = ptrtoint ptr %wr_pending_head.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %wr_pending_head.i, align 4
  %tobool.not.i = icmp eq ptr %49, null
  br i1 %tobool.not.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %skb_get.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %50 = ptrtoint ptr %wr_pending_head.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %11, ptr %wr_pending_head.i, align 4
  br label %cxgbi_sock_enqueue_wr.exit

if.else.i:                                        ; preds = %skb_get.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %51 = ptrtoint ptr %wr_pending_tail.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %wr_pending_tail.i, align 4
  %wr_next4.i = getelementptr inbounds %struct.sk_buff, ptr %52, i32 0, i32 3, i32 8
  %53 = ptrtoint ptr %wr_next4.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %11, ptr %wr_next4.i, align 8
  br label %cxgbi_sock_enqueue_wr.exit

cxgbi_sock_enqueue_wr.exit:                       ; preds = %if.else.i, %if.then.i
  %54 = ptrtoint ptr %wr_pending_tail.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %11, ptr %wr_pending_tail.i, align 4
  %55 = load i32, ptr @dbg_level, align 4
  %and86 = and i32 %55, 20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and86)
  %tobool87.not = icmp eq i32 %and86, 0
  br i1 %tobool87.not, label %cxgbi_sock_enqueue_wr.exit.do.end100_crit_edge, label %do.end91

cxgbi_sock_enqueue_wr.exit.do.end100_crit_edge:   ; preds = %cxgbi_sock_enqueue_wr.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end100

do.end91:                                         ; preds = %cxgbi_sock_enqueue_wr.exit
  call void @__sanitizer_cov_trace_pc() #12
  %56 = ptrtoint ptr %len16 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %len16, align 4
  %58 = ptrtoint ptr %data_len to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %data_len, align 8
  %60 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %39, align 8
  %62 = ptrtoint ptr %wr_cred to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %wr_cred, align 4
  %64 = ptrtoint ptr %wr_una_cred to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %wr_una_cred, align 4
  %call97 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.63, ptr noundef %csk, i32 noundef %57, i32 noundef %59, i32 noundef %add, i32 noundef %61, i32 noundef %63, i32 noundef %65) #13
  br label %do.end100

do.end100:                                        ; preds = %do.end91, %cxgbi_sock_enqueue_wr.exit.do.end100_crit_edge
  %flags.i = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 3, i32 16
  %66 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %67, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool102.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool102.not, label %do.end100.if.end127_crit_edge, label %if.then109, !prof !384

do.end100.if.end127_crit_edge:                    ; preds = %do.end100
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end127

if.then109:                                       ; preds = %do.end100
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %req_completion.addr.0230)
  %tobool110.not = icmp eq i32 %req_completion.addr.0230, 0
  br i1 %tobool110.not, label %if.then109.lor.lhs.false115_crit_edge, label %land.lhs.true111

if.then109.lor.lhs.false115_crit_edge:            ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false115

land.lhs.true111:                                 ; preds = %if.then109
  %68 = ptrtoint ptr %wr_una_cred to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %wr_una_cred, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %69, i32 %wrs_needed.0)
  %cmp113 = icmp eq i32 %69, %wrs_needed.0
  br i1 %cmp113, label %land.lhs.true111.if.then119_crit_edge, label %land.lhs.true111.lor.lhs.false115_crit_edge

land.lhs.true111.lor.lhs.false115_crit_edge:      ; preds = %land.lhs.true111
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false115

land.lhs.true111.if.then119_crit_edge:            ; preds = %land.lhs.true111
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then119

lor.lhs.false115:                                 ; preds = %land.lhs.true111.lor.lhs.false115_crit_edge, %if.then109.lor.lhs.false115_crit_edge
  %70 = ptrtoint ptr %wr_una_cred to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %wr_una_cred, align 4
  %72 = ptrtoint ptr %wr_max_cred to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %wr_max_cred, align 4
  %div = sdiv i32 %73, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %71, i32 %div)
  %cmp117.not = icmp slt i32 %71, %div
  br i1 %cmp117.not, label %lor.lhs.false115.if.end121_crit_edge, label %lor.lhs.false115.if.then119_crit_edge

lor.lhs.false115.if.then119_crit_edge:            ; preds = %lor.lhs.false115
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then119

lor.lhs.false115.if.end121_crit_edge:             ; preds = %lor.lhs.false115
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end121

if.then119:                                       ; preds = %lor.lhs.false115.if.then119_crit_edge, %land.lhs.true111.if.then119_crit_edge
  %74 = ptrtoint ptr %wr_una_cred to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 0, ptr %wr_una_cred, align 4
  br label %if.end121

if.end121:                                        ; preds = %if.then119, %lor.lhs.false115.if.end121_crit_edge
  %req_completion.addr.1 = phi i32 [ 1, %if.then119 ], [ %req_completion.addr.0230, %lor.lhs.false115.if.end121_crit_edge ]
  %ulp_mode = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 3, i32 14
  %75 = ptrtoint ptr %ulp_mode to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %ulp_mode, align 2
  %77 = and i8 %76, 3
  %and.i = zext i8 %77 to i32
  %arrayidx.i = getelementptr [4 x i32], ptr @ulp2_extra_len, i32 0, i32 %and.i
  %78 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %arrayidx.i, align 4
  %add125 = add i32 %79, %13
  %80 = ptrtoint ptr %l2t1.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %l2t1.i, align 4
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 19
  %82 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %data.i.i, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 18
  %84 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %83 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %85 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i = trunc i32 %sub.ptr.sub.i.i to i16
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 15, i32 0, i32 19
  %86 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 %conv.i.i, ptr %transport_header.i.i, align 2
  %add.ptr.i.i = getelementptr i8, ptr %83, i32 -24
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  %87 = ptrtoint ptr %len16 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %len16, align 4
  %add.i.i = add i32 %88, 24
  store i32 %add.i.i, ptr %len16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %req_completion.addr.1)
  %tobool.not.i214 = icmp eq i32 %req_completion.addr.1, 0
  %spec.select234 = select i1 %tobool.not.i214, i32 218103808, i32 220200960
  %89 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %spec.select234, ptr %add.ptr.i.i, align 4
  %90 = ptrtoint ptr %tid.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %tid.i, align 4
  %shl.i = shl i32 %91, 8
  %wr_lo.i = getelementptr i8, ptr %83, i32 -20
  %92 = ptrtoint ptr %wr_lo.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %shl.i, ptr %wr_lo.i, align 4
  %len2.i = getelementptr i8, ptr %83, i32 -16
  %93 = ptrtoint ptr %len2.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %add125, ptr %len2.i, align 4
  %94 = ptrtoint ptr %ulp_mode to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %ulp_mode, align 2
  %conv.i = zext i8 %95 to i32
  %shl3.i = shl nuw nsw i32 %conv.i, 6
  %96 = ptrtoint ptr %write_queue to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %write_queue, align 4
  %cmp.i.i = icmp eq ptr %97, %write_queue
  %tobool5.not42.i = icmp eq ptr %97, null
  %tobool5.not.i = or i1 %cmp.i.i, %tobool5.not42.i
  %shl7.i = select i1 %tobool5.not.i, i32 16384, i32 0
  %or8.i = or i32 %shl7.i, %shl3.i
  %flags.i215 = getelementptr i8, ptr %83, i32 -12
  %98 = ptrtoint ptr %flags.i215 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %or8.i, ptr %flags.i215, align 4
  %99 = ptrtoint ptr %snd_nxt.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %snd_nxt.i, align 4
  %sndseq.i = getelementptr i8, ptr %83, i32 -8
  %101 = ptrtoint ptr %sndseq.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %100, ptr %sndseq.i, align 4
  %smt_idx.i = getelementptr inbounds %struct.l2t_entry, ptr %81, i32 0, i32 4
  %102 = ptrtoint ptr %smt_idx.i to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %smt_idx.i, align 4
  %conv9.i = zext i16 %103 to i32
  %param.i = getelementptr i8, ptr %83, i32 -4
  %104 = ptrtoint ptr %param.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %conv9.i, ptr %param.i, align 4
  br i1 %cmp.i38.i, label %if.end121.if.then.i216_crit_edge, label %cxgbi_sock_flag.exit.i

if.end121.if.then.i216_crit_edge:                 ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i216

cxgbi_sock_flag.exit.i:                           ; preds = %if.end121
  %105 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load volatile i32, ptr %flags.i.i, align 4
  %107 = and i32 %106, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %107)
  %tobool12.not.i = icmp eq i32 %107, 0
  br i1 %tobool12.not.i, label %cxgbi_sock_flag.exit.i.if.then.i216_crit_edge, label %cxgbi_sock_flag.exit.i.make_tx_data_wr.exit_crit_edge

cxgbi_sock_flag.exit.i.make_tx_data_wr.exit_crit_edge: ; preds = %cxgbi_sock_flag.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %make_tx_data_wr.exit

cxgbi_sock_flag.exit.i.if.then.i216_crit_edge:    ; preds = %cxgbi_sock_flag.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i216

if.then.i216:                                     ; preds = %cxgbi_sock_flag.exit.i.if.then.i216_crit_edge, %if.end121.if.then.i216_crit_edge
  %108 = ptrtoint ptr %rss_qid.i to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %rss_qid.i, align 4
  %conv13.i = zext i16 %109 to i32
  %or15.i = or i32 %or8.i, %conv13.i
  %or17.i = or i32 %or15.i, 4456448
  %110 = ptrtoint ptr %flags.i215 to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %or17.i, ptr %flags.i215, align 4
  %111 = ptrtoint ptr %snd_win.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %snd_win.i, align 4
  %113 = shl i32 %112, 1
  %shl18.i = and i32 %113, -65536
  %or20.i = or i32 %shl18.i, %conv9.i
  %114 = ptrtoint ptr %param.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %or20.i, ptr %param.i, align 4
  %115 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %flags.i.i, align 4
  %or.i.i.i = or i32 %116, 8
  store i32 %or.i.i.i, ptr %flags.i.i, align 4
  %117 = load i32, ptr @dbg_level, align 4
  %and.i.i = and i32 %117, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i216.make_tx_data_wr.exit_crit_edge, label %do.end.i.i

if.then.i216.make_tx_data_wr.exit_crit_edge:      ; preds = %if.then.i216
  call void @__sanitizer_cov_trace_pc() #12
  br label %make_tx_data_wr.exit

do.end.i.i:                                       ; preds = %if.then.i216
  call void @__sanitizer_cov_trace_pc() #12
  %118 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %state, align 4
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, ptr noundef %csk, i32 noundef %119, i32 noundef %or.i.i.i, i32 noundef 3) #13
  br label %make_tx_data_wr.exit

make_tx_data_wr.exit:                             ; preds = %do.end.i.i, %if.then.i216.make_tx_data_wr.exit_crit_edge, %cxgbi_sock_flag.exit.i.make_tx_data_wr.exit_crit_edge
  %120 = ptrtoint ptr %snd_nxt.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %snd_nxt.i, align 4
  %add126 = add i32 %121, %add125
  store i32 %add126, ptr %snd_nxt.i, align 4
  %122 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %flags.i, align 4
  %and.i.i218 = and i32 %123, -2
  store i32 %and.i.i218, ptr %flags.i, align 4
  br label %if.end127

if.end127:                                        ; preds = %make_tx_data_wr.exit, %do.end100.if.end127_crit_edge
  %req_completion.addr.2 = phi i32 [ %req_completion.addr.1, %make_tx_data_wr.exit ], [ %req_completion.addr.0230, %do.end100.if.end127_crit_edge ]
  %truesize = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 20
  %124 = ptrtoint ptr %truesize to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %truesize, align 8
  %add128 = add i32 %125, %total_size.0229
  %126 = load i32, ptr @dbg_level, align 4
  %and130 = and i32 %126, 20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and130)
  %tobool131.not = icmp eq i32 %and130, 0
  br i1 %tobool131.not, label %if.end127.do.end141_crit_edge, label %do.end135

if.end127.do.end141_crit_edge:                    ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end141

do.end135:                                        ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #12
  %127 = ptrtoint ptr %tid.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %tid.i, align 4
  %call138 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.63, ptr noundef %csk, i32 noundef %128, ptr noundef nonnull %11) #13
  br label %do.end141

do.end141:                                        ; preds = %do.end135, %if.end127.do.end141_crit_edge
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 3
  %129 = ptrtoint ptr %cb.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr @arp_failure_skb_discard, ptr %cb.i, align 8
  %130 = ptrtoint ptr %csk to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %csk, align 4
  %lldev = getelementptr inbounds %struct.cxgbi_device, ptr %131, i32 0, i32 4
  %132 = ptrtoint ptr %lldev to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %lldev, align 4
  %134 = ptrtoint ptr %l2t1.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %l2t1.i, align 4
  %136 = ptrtoint ptr %135 to i32
  call void @__asan_load2_noabort(i32 %136)
  %137 = load i16, ptr %135, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %137)
  %cmp.i219 = icmp eq i16 %137, 0
  br i1 %cmp.i219, label %if.then.i220, label %if.end.i, !prof !385

if.then.i220:                                     ; preds = %do.end141
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call i32 @cxgb3_ofld_send(ptr noundef %133, ptr noundef nonnull %11) #10
  br label %cleanup

if.end.i:                                         ; preds = %do.end141
  call void @__sanitizer_cov_trace_pc() #12
  %call3.i = tail call i32 @t3_l2t_send_slow(ptr noundef %133, ptr noundef nonnull %11, ptr noundef %135) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %if.then.i220
  %138 = ptrtoint ptr %wr_cred to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %wr_cred, align 4
  %tobool13.not = icmp eq i32 %139, 0
  br i1 %tobool13.not, label %cleanup.cleanup145_crit_edge, label %cleanup.land.rhs_crit_edge

cleanup.land.rhs_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs

cleanup.cleanup145_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup145

cleanup145:                                       ; preds = %cleanup.cleanup145_crit_edge, %do.end72, %do.body66.cleanup145_crit_edge, %land.rhs.cleanup145_crit_edge, %do.end, %do.body.cleanup145_crit_edge, %while.cond.preheader.cleanup145_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ 0, %do.body.cleanup145_crit_edge ], [ %total_size.0229, %do.end72 ], [ %total_size.0229, %do.body66.cleanup145_crit_edge ], [ 0, %while.cond.preheader.cleanup145_crit_edge ], [ %add128, %cleanup.cleanup145_crit_edge ], [ %total_size.0229, %land.rhs.cleanup145_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cxgbi_conn_tx_open(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cxgb3_free_atid(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @arp_failure_skb_discard(ptr nocapture noundef readnone %dev, ptr noundef %skb) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @cxgbi_sock_rcv_wr_ack(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cxgb3i_dev_open(ptr noundef %t3dev) #1 align 64 {
entry:
  %port.i = alloca %struct.adap_ports, align 4
  %rx_page_info.i = alloca %struct.ofld_page_info, align 4
  %wr_len.i = alloca i32, align 4
  %tformat.i = alloca %struct.cxgbi_tag_format, align 4
  %uinfo.i = alloca %struct.ulp_iscsi_info, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @cxgbi_device_find_by_lldev(ptr noundef %t3dev) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.76, ptr noundef nonnull %call) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %nports = getelementptr inbounds %struct.adapter, ptr %t3dev, i32 0, i32 10, i32 9
  %0 = ptrtoint ptr %nports to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nports, align 4
  %call3 = tail call ptr @cxgbi_device_register(i32 noundef 0, i32 noundef %1) #10
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %do.end8, label %if.end11

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.76, ptr noundef %t3dev) #13
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %flags = getelementptr inbounds %struct.cxgbi_device, ptr %call3, i32 0, i32 2
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 17, ptr %flags, align 4
  %lldev = getelementptr inbounds %struct.cxgbi_device, ptr %call3, i32 0, i32 4
  %3 = ptrtoint ptr %lldev to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %t3dev, ptr %lldev, align 4
  %pdev = getelementptr inbounds %struct.adapter, ptr %t3dev, i32 0, i32 3
  %4 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev, align 8
  %pdev12 = getelementptr inbounds %struct.cxgbi_device, ptr %call3, i32 0, i32 9
  %6 = ptrtoint ptr %pdev12 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %pdev12, align 4
  %port = getelementptr inbounds %struct.adapter, ptr %t3dev, i32 0, i32 21
  %ports = getelementptr inbounds %struct.cxgbi_device, ptr %call3, i32 0, i32 3
  %7 = ptrtoint ptr %ports to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %port, ptr %ports, align 4
  %8 = ptrtoint ptr %nports to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nports, align 4
  %conv = trunc i32 %9 to i8
  %nports15 = getelementptr inbounds %struct.cxgbi_device, ptr %call3, i32 0, i32 8
  %10 = ptrtoint ptr %nports15 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv, ptr %nports15, align 1
  %mtus = getelementptr inbounds %struct.adapter, ptr %t3dev, i32 0, i32 10, i32 6
  %mtus18 = getelementptr inbounds %struct.cxgbi_device, ptr %call3, i32 0, i32 6
  %11 = ptrtoint ptr %mtus18 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %mtus, ptr %mtus18, align 4
  %nmtus = getelementptr inbounds %struct.cxgbi_device, ptr %call3, i32 0, i32 7
  %12 = ptrtoint ptr %nmtus to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 16, ptr %nmtus, align 4
  %13 = load i32, ptr @cxgb3i_rx_credit_thres, align 4
  %rx_credit_thres = getelementptr inbounds %struct.cxgbi_device, ptr %call3, i32 0, i32 14
  %14 = ptrtoint ptr %rx_credit_thres to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %rx_credit_thres, align 4
  %skb_tx_rsvd = getelementptr inbounds %struct.cxgbi_device, ptr %call3, i32 0, i32 15
  %15 = ptrtoint ptr %skb_tx_rsvd to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 100, ptr %skb_tx_rsvd, align 4
  %skb_rx_extra = getelementptr inbounds %struct.cxgbi_device, ptr %call3, i32 0, i32 17
  %16 = ptrtoint ptr %skb_rx_extra to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 16, ptr %skb_rx_extra, align 4
  %itp = getelementptr inbounds %struct.cxgbi_device, ptr %call3, i32 0, i32 11
  %17 = ptrtoint ptr %itp to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @cxgb3i_iscsi_transport, ptr %itp, align 4
  %18 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %port, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %tformat.i) #10
  %20 = getelementptr inbounds %struct.cxgbi_tag_format, ptr %tformat.i, i32 0, i32 2
  %21 = getelementptr inbounds %struct.cxgbi_tag_format, ptr %tformat.i, i32 0, i32 3
  %22 = getelementptr inbounds %struct.cxgbi_tag_format, ptr %tformat.i, i32 0, i32 4
  %23 = getelementptr inbounds %struct.cxgbi_tag_format, ptr %tformat.i, i32 0, i32 5
  %24 = getelementptr inbounds %struct.cxgbi_tag_format, ptr %tformat.i, i32 0, i32 6
  %25 = getelementptr inbounds %struct.cxgbi_tag_format, ptr %tformat.i, i32 0, i32 7
  %26 = getelementptr inbounds %struct.cxgbi_tag_format, ptr %tformat.i, i32 0, i32 8
  %27 = getelementptr inbounds %struct.cxgbi_tag_format, ptr %tformat.i, i32 0, i32 9
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %uinfo.i) #10
  %28 = getelementptr inbounds %struct.ulp_iscsi_info, ptr %uinfo.i, i32 0, i32 1
  %29 = getelementptr inbounds %struct.ulp_iscsi_info, ptr %uinfo.i, i32 0, i32 2
  %30 = getelementptr inbounds %struct.ulp_iscsi_info, ptr %uinfo.i, i32 0, i32 3
  %31 = getelementptr inbounds %struct.ulp_iscsi_info, ptr %uinfo.i, i32 0, i32 4
  %32 = getelementptr inbounds %struct.ulp_iscsi_info, ptr %uinfo.i, i32 0, i32 5
  %33 = getelementptr inbounds %struct.ulp_iscsi_info, ptr %uinfo.i, i32 0, i32 6
  %ctl.i = getelementptr inbounds %struct.t3cdev, ptr %t3dev, i32 0, i32 7
  %34 = call ptr @memset(ptr %uinfo.i, i32 255, i32 32)
  %35 = ptrtoint ptr %ctl.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ctl.i, align 4
  %call.i = call i32 %36(ptr noundef %t3dev, i32 noundef 11, ptr noundef nonnull %uinfo.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.90, ptr noundef %19, i32 noundef %call.i) #13
  br label %do.end24

if.end.i:                                         ; preds = %if.end11
  %37 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %28, align 4
  %39 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %29, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %38)
  %cmp2.not.i = icmp ugt i32 %40, %38
  br i1 %cmp2.not.i, label %if.end13.i, label %do.end6.i

do.end6.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %call12.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92, ptr noundef nonnull @.str.90, ptr noundef %19, i32 noundef %38, i32 noundef %40) #13
  br label %do.end24

if.end13.i:                                       ; preds = %if.end.i
  %sub.i = sub i32 %40, %38
  %add.i = add i32 %sub.i, 1
  %shr.i = lshr i32 %add.i, 6
  %call16.i = call i32 @cxgbi_tagmask_set(i32 noundef %shr.i) #10
  %41 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %28, align 4
  %43 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %29, align 4
  %45 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %30, align 4
  %call26.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.90, ptr noundef %19, i32 noundef %42, i32 noundef %44, i32 noundef %shr.i, i32 noundef %46, i32 noundef %call16.i) #13
  %47 = getelementptr inbounds i8, ptr %tformat.i, i32 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %47, align 4
  %49 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %31, align 4
  %51 = ptrtoint ptr %tformat.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %tformat.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool.not.i.i.i = icmp eq i32 %call16.i, 0
  %52 = call i32 @llvm.ctlz.i32(i32 %call16.i, i1 true) #10, !range !391
  %sub.i.i.i = sub nuw nsw i32 32, %52
  %cond.i.i.i = select i1 %tobool.not.i.i.i, i32 0, i32 %sub.i.i.i
  %53 = trunc i32 %cond.i.i.i to i8
  %.neg.i.i = mul i8 %53, -16
  %54 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %53, ptr %22, align 1
  %bf.set4.i.i = add i8 %.neg.i.i, -26
  %55 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %bf.set4.i.i, ptr %20, align 1
  %sub5.i.i = add nsw i32 %cond.i.i.i, -1
  %conv7.i.i = add nsw i8 %53, -7
  %56 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %conv7.i.i, ptr %21, align 2
  %shl.i.i = shl nuw i32 1, %sub5.i.i
  %57 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %shl.i.i, ptr %23, align 4
  %conv10.i.i = zext i8 %conv7.i.i to i32
  %notmask.i.i = shl nsw i32 -1, %conv10.i.i
  %sub12.i.i = xor i32 %notmask.i.i, -1
  %58 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %sub12.i.i, ptr %24, align 4
  %59 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 63, ptr %25, align 4
  %sub15.i.i = add i32 %shl.i.i, -1
  %60 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %sub15.i.i, ptr %26, align 4
  %notmask63.i.i = shl nsw i32 -1, %cond.i.i.i
  %sub17.i.i = xor i32 %notmask63.i.i, -1
  %61 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %sub17.i.i, ptr %27, align 4
  %62 = lshr i32 %50, 24
  %63 = lshr i32 %50, 16
  %conv31.i.i = and i32 %63, 255
  %64 = lshr i32 %50, 8
  %conv34.i.i = and i32 %64, 255
  %conv37.i.i = and i32 %50, 255
  %call38.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.101, i32 noundef %call16.i, i32 noundef %cond.i.i.i, i32 noundef %conv10.i.i, i32 noundef 6, i32 noundef %shl.i.i, i32 noundef %sub17.i.i, i32 noundef %62, i32 noundef %conv31.i.i, i32 noundef %conv34.i.i, i32 noundef %conv37.i.i) #13
  %ulp_iscsi.i = getelementptr inbounds %struct.t3cdev, ptr %t3dev, i32 0, i32 14
  %65 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %29, align 4
  %67 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %28, align 4
  %sub32.i = add i32 %66, 1
  %add33.i = sub i32 %sub32.i, %68
  %call36.i = call i32 @cxgbi_ddp_ppm_setup(ptr noundef %ulp_iscsi.i, ptr noundef nonnull %call3, ptr noundef nonnull %tformat.i, i32 noundef %add33.i, i32 noundef %68, i32 noundef %68, i32 noundef 0, i32 noundef 0, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i)
  %tobool.not.i = icmp eq i32 %call36.i, 0
  br i1 %tobool.not.i, label %if.end38.i, label %if.end13.i.do.end24_crit_edge

if.end13.i.do.end24_crit_edge:                    ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end24

if.end38.i:                                       ; preds = %if.end13.i
  %69 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %flags, align 4
  %and.i = and i32 %70, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool39.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool39.not.i, label %if.then40.i, label %if.end38.i.if.end27_crit_edge

if.end38.i.if.end27_crit_edge:                    ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.then40.i:                                      ; preds = %if.end38.i
  %71 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %call16.i, ptr %30, align 4
  %72 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %28, align 4
  %shl.i = and i32 %add.i, -64
  %add43.i = add i32 %73, %shl.i
  %74 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %add43.i, ptr %29, align 4
  %75 = ptrtoint ptr %ctl.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %ctl.i, align 4
  %call46.i = call i32 %76(ptr noundef %t3dev, i32 noundef 12, ptr noundef nonnull %uinfo.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46.i)
  %cmp47.i = icmp slt i32 %call46.i, 0
  br i1 %cmp47.i, label %do.end51.i, label %if.then40.i.if.end27_crit_edge

if.then40.i.if.end27_crit_edge:                   ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

do.end51.i:                                       ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #12
  %call55.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.90, ptr noundef %19, i32 noundef %call46.i) #13
  %77 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %flags, align 4
  %or.i = or i32 %78, 256
  store i32 %or.i, ptr %flags, align 4
  br label %if.end27

do.end24:                                         ; preds = %if.end13.i.do.end24_crit_edge, %do.end6.i, %do.end.i
  %retval.0.i.ph = phi i32 [ %call36.i, %if.end13.i.do.end24_crit_edge ], [ -13, %do.end6.i ], [ %call.i, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %uinfo.i) #10
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %tformat.i) #10
  %call26 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.76, ptr noundef nonnull %call3, i32 noundef %retval.0.i.ph) #13
  br label %err_out

if.end27:                                         ; preds = %do.end51.i, %if.then40.i.if.end27_crit_edge, %if.end38.i.if.end27_crit_edge
  %csk_ddp_setup_digest.i = getelementptr inbounds %struct.cxgbi_device, ptr %call3, i32 0, i32 26
  %79 = ptrtoint ptr %csk_ddp_setup_digest.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr @ddp_setup_conn_digest, ptr %csk_ddp_setup_digest.i, align 4
  %csk_ddp_setup_pgidx.i = getelementptr inbounds %struct.cxgbi_device, ptr %call3, i32 0, i32 27
  %80 = ptrtoint ptr %csk_ddp_setup_pgidx.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr @ddp_setup_conn_pgidx, ptr %csk_ddp_setup_pgidx.i, align 4
  %csk_ddp_set_map.i = getelementptr inbounds %struct.cxgbi_device, ptr %call3, i32 0, i32 24
  %81 = ptrtoint ptr %csk_ddp_set_map.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr @ddp_set_map, ptr %csk_ddp_set_map.i, align 4
  %csk_ddp_clear_map.i = getelementptr inbounds %struct.cxgbi_device, ptr %call3, i32 0, i32 25
  %82 = ptrtoint ptr %csk_ddp_clear_map.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr @ddp_clear_map, ptr %csk_ddp_clear_map.i, align 4
  %cdev2ppm.i = getelementptr inbounds %struct.cxgbi_device, ptr %call3, i32 0, i32 23
  %83 = ptrtoint ptr %cdev2ppm.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr @cdev2ppm, ptr %cdev2ppm.i, align 4
  %84 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %33, align 4
  %sub59.i = add i32 %85, -312
  %86 = call i32 @llvm.umin.i32(i32 %sub59.i, i32 15912) #10
  %tx_max_size.i = getelementptr inbounds %struct.cxgbi_device, ptr %call3, i32 0, i32 18
  %87 = ptrtoint ptr %tx_max_size.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %86, ptr %tx_max_size.i, align 4
  %88 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %32, align 4
  %sub62.i = add i32 %89, -312
  %90 = call i32 @llvm.umin.i32(i32 %sub62.i, i32 15912) #10
  %rx_max_size.i = getelementptr inbounds %struct.cxgbi_device, ptr %call3, i32 0, i32 19
  %91 = ptrtoint ptr %rx_max_size.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %90, ptr %rx_max_size.i, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %uinfo.i) #10
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %tformat.i) #10
  %92 = ptrtoint ptr %lldev to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %lldev, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %port.i) #10
  %94 = ptrtoint ptr %port.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 -1, ptr %port.i, align 4, !annotation !392
  %95 = getelementptr inbounds %struct.adap_ports, ptr %port.i, i32 0, i32 1
  %96 = ptrtoint ptr %95 to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr inttoptr (i32 -1 to ptr), ptr %95, align 4, !annotation !392
  %97 = getelementptr inbounds %struct.adap_ports, ptr %port.i, i32 0, i32 1, i32 1
  %98 = ptrtoint ptr %97 to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr inttoptr (i32 -1 to ptr), ptr %97, align 4, !annotation !392
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rx_page_info.i) #10
  %99 = ptrtoint ptr %rx_page_info.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 -1, ptr %rx_page_info.i, align 4, !annotation !392
  %100 = getelementptr inbounds %struct.ofld_page_info, ptr %rx_page_info.i, i32 0, i32 1
  %101 = ptrtoint ptr %100 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 -1, ptr %100, align 4, !annotation !392
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wr_len.i) #10
  %102 = ptrtoint ptr %wr_len.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 -1, ptr %wr_len.i, align 4, !annotation !392
  %ctl.i98 = getelementptr inbounds %struct.t3cdev, ptr %93, i32 0, i32 7
  %103 = ptrtoint ptr %ctl.i98 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %ctl.i98, align 4
  %call.i99 = call i32 %104(ptr noundef %93, i32 noundef 7, ptr noundef nonnull %wr_len.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i99)
  %cmp.i100 = icmp slt i32 %call.i99, 0
  br i1 %cmp.i100, label %if.end27.do.end.i101_crit_edge, label %lor.lhs.false.i

if.end27.do.end.i101_crit_edge:                   ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i101

lor.lhs.false.i:                                  ; preds = %if.end27
  %105 = ptrtoint ptr %ctl.i98 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %ctl.i98, align 4
  %call2.i = call i32 %106(ptr noundef %93, i32 noundef 10, ptr noundef nonnull %port.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.i = icmp slt i32 %call2.i, 0
  br i1 %cmp3.i, label %lor.lhs.false.i.do.end.i101_crit_edge, label %lor.lhs.false4.i

lor.lhs.false.i.do.end.i101_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i101

lor.lhs.false4.i:                                 ; preds = %lor.lhs.false.i
  %107 = ptrtoint ptr %ctl.i98 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %ctl.i98, align 4
  %call6.i = call i32 %108(ptr noundef %93, i32 noundef 50, ptr noundef nonnull %rx_page_info.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp7.i = icmp slt i32 %call6.i, 0
  br i1 %cmp7.i, label %lor.lhs.false4.i.do.end.i101_crit_edge, label %if.end.i102

lor.lhs.false4.i.do.end.i101_crit_edge:           ; preds = %lor.lhs.false4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i101

do.end.i101:                                      ; preds = %lor.lhs.false4.i.do.end.i101_crit_edge, %lor.lhs.false.i.do.end.i101_crit_edge, %if.end27.do.end.i101_crit_edge
  %call8.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.113, ptr noundef %93) #13
  br label %do.end33

if.end.i102:                                      ; preds = %lor.lhs.false4.i
  %109 = load i32, ptr @cxgb3i_max_connect, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %109)
  %cmp9.i = icmp ugt i32 %109, 16384
  br i1 %cmp9.i, label %if.then10.i, label %if.end.i102.if.end11.i_crit_edge

if.end.i102.if.end11.i_crit_edge:                 ; preds = %if.end.i102
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11.i

if.then10.i:                                      ; preds = %if.end.i102
  call void @__sanitizer_cov_trace_pc() #12
  store i32 16384, ptr @cxgb3i_max_connect, align 4
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then10.i, %if.end.i102.if.end11.i_crit_edge
  %110 = load i32, ptr @cxgb3i_sport_base, align 4
  %111 = load i32, ptr @cxgb3i_max_connect, align 4
  %call12.i103 = call i32 @cxgbi_device_portmap_create(ptr noundef nonnull %call3, i32 noundef %110, i32 noundef %111) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i103)
  %cmp13.i = icmp slt i32 %call12.i103, 0
  br i1 %cmp13.i, label %if.end11.i.do.end33_crit_edge, label %if.end15.i

if.end11.i.do.end33_crit_edge:                    ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end33

if.end15.i:                                       ; preds = %if.end11.i
  %112 = ptrtoint ptr %wr_len.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %wr_len.i, align 4
  %114 = load i32, ptr getelementptr inbounds ([19 x i32], ptr @skb_wrs, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %114)
  %tobool.not.i.i = icmp eq i32 %114, 0
  br i1 %tobool.not.i.i, label %for.cond.preheader.i.i, label %if.end15.i.if.end36_crit_edge

if.end15.i.if.end36_crit_edge:                    ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

for.cond.preheader.i.i:                           ; preds = %if.end15.i
  %sub3.i.i = add i32 %113, -1
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %cond.end.i.i.for.body.i.i_crit_edge, %for.cond.preheader.i.i
  %i.018.i.i = phi i32 [ 1, %for.cond.preheader.i.i ], [ %inc.i.i, %cond.end.i.i.for.body.i.i_crit_edge ]
  %div15.lhs.trunc.i.i = mul nuw nsw i32 %i.018.i.i, 3
  %div151617.i.i = lshr i32 %div15.lhs.trunc.i.i, 1
  %div15.zext.i.i = and i32 %div151617.i.i, 127
  %and.i.i = and i32 %i.018.i.i, 1
  %add.i.i = add nuw nsw i32 %div15.zext.i.i, %and.i.i
  %add1.i.i = add nuw nsw i32 %add.i.i, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %add1.i.i, i32 %113)
  %cmp2.not.i.i = icmp ugt i32 %add1.i.i, %113
  br i1 %cmp2.not.i.i, label %cond.false.i.i, label %for.body.i.i.cond.end.i.i_crit_edge

for.body.i.i.cond.end.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end.i.i

cond.false.i.i:                                   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i = add nuw nsw i32 %add.i.i, 1
  %div4.i.i = udiv i32 %sub.i.i, %sub3.i.i
  %add5.i.i = add nuw nsw i32 %div4.i.i, 1
  br label %cond.end.i.i

cond.end.i.i:                                     ; preds = %cond.false.i.i, %for.body.i.i.cond.end.i.i_crit_edge
  %cond.i.i = phi i32 [ %add5.i.i, %cond.false.i.i ], [ 1, %for.body.i.i.cond.end.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr [19 x i32], ptr @skb_wrs, i32 0, i32 %i.018.i.i
  %115 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %cond.i.i, ptr %arrayidx.i.i, align 4
  %inc.i.i = add nuw nsw i32 %i.018.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 19
  br i1 %exitcond.not.i.i, label %for.end.i.i, label %cond.end.i.i.for.body.i.i_crit_edge

cond.end.i.i.for.body.i.i_crit_edge:              ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %mul6.i.i = shl i32 %113, 3
  store i32 %mul6.i.i, ptr @wrlen, align 4
  br label %if.end36

do.end33:                                         ; preds = %if.end11.i.do.end33_crit_edge, %do.end.i101
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wr_len.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rx_page_info.i) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %port.i) #10
  %call35 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.76, ptr noundef nonnull %call3) #13
  br label %err_out

if.end36:                                         ; preds = %for.end.i.i, %if.end15.i.if.end36_crit_edge
  %csk_release_offload_resources.i = getelementptr inbounds %struct.cxgbi_device, ptr %call3, i32 0, i32 28
  %116 = ptrtoint ptr %csk_release_offload_resources.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr @release_offload_resources, ptr %csk_release_offload_resources.i, align 4
  %csk_push_tx_frames.i = getelementptr inbounds %struct.cxgbi_device, ptr %call3, i32 0, i32 31
  %117 = ptrtoint ptr %csk_push_tx_frames.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr @push_tx_frames, ptr %csk_push_tx_frames.i, align 4
  %csk_send_abort_req.i = getelementptr inbounds %struct.cxgbi_device, ptr %call3, i32 0, i32 32
  %118 = ptrtoint ptr %csk_send_abort_req.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr @send_abort_req, ptr %csk_send_abort_req.i, align 4
  %csk_send_close_req.i = getelementptr inbounds %struct.cxgbi_device, ptr %call3, i32 0, i32 33
  %119 = ptrtoint ptr %csk_send_close_req.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr @send_close_req, ptr %csk_send_close_req.i, align 4
  %csk_send_rx_credits.i = getelementptr inbounds %struct.cxgbi_device, ptr %call3, i32 0, i32 30
  %120 = ptrtoint ptr %csk_send_rx_credits.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr @send_rx_credits, ptr %csk_send_rx_credits.i, align 4
  %csk_alloc_cpls.i = getelementptr inbounds %struct.cxgbi_device, ptr %call3, i32 0, i32 34
  %121 = ptrtoint ptr %csk_alloc_cpls.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr @alloc_cpls, ptr %csk_alloc_cpls.i, align 4
  %csk_init_act_open.i = getelementptr inbounds %struct.cxgbi_device, ptr %call3, i32 0, i32 35
  %122 = ptrtoint ptr %csk_init_act_open.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr @init_act_open, ptr %csk_init_act_open.i, align 4
  %call20.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.115, ptr noundef nonnull @.str.113, ptr noundef %call3) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wr_len.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rx_page_info.i) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %port.i) #10
  %123 = load ptr, ptr @cxgb3i_stt, align 4
  %call37 = call i32 @cxgbi_hbas_add(ptr noundef nonnull %call3, i64 noundef 512, i32 noundef 16384, ptr noundef nonnull @cxgb3i_host_template, ptr noundef %123) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %for.cond.preheader, label %if.end36.err_out_crit_edge

if.end36.err_out_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_out

for.cond.preheader:                               ; preds = %if.end36
  %124 = ptrtoint ptr %nports15 to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %nports15, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %125)
  %cmp111.not = icmp eq i8 %125, 0
  br i1 %cmp111.not, label %for.cond.preheader.cond.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.cond.end_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %hbas = getelementptr inbounds %struct.cxgbi_device, ptr %call3, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0112 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %126 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %ports, align 4
  %arrayidx = getelementptr ptr, ptr %127, i32 %i.0112
  %128 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %arrayidx, align 4
  %iscsi_ipv4addr.i = getelementptr i8, ptr %129, i32 6124
  %130 = ptrtoint ptr %iscsi_ipv4addr.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %iscsi_ipv4addr.i, align 4
  %132 = ptrtoint ptr %hbas to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %hbas, align 4
  %arrayidx46 = getelementptr ptr, ptr %133, i32 %i.0112
  %134 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %arrayidx46, align 4
  %ipv4addr = getelementptr inbounds %struct.cxgbi_hba, ptr %135, i32 0, i32 4
  %136 = ptrtoint ptr %ipv4addr to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %131, ptr %ipv4addr, align 4
  %inc = add nuw nsw i32 %i.0112, 1
  %137 = ptrtoint ptr %nports15 to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %nports15, align 1
  %conv42 = zext i8 %138 to i32
  %cmp = icmp ult i32 %inc, %conv42
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.cond.end_crit_edge

for.body.cond.end_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

cond.end:                                         ; preds = %for.body.cond.end_crit_edge, %for.cond.preheader.cond.end_crit_edge
  %139 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %flags, align 4
  %call53 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.76, ptr noundef nonnull %call3, i32 noundef %140, ptr noundef %t3dev, i32 noundef 0) #13
  br label %cleanup

err_out:                                          ; preds = %if.end36.err_out_crit_edge, %do.end33, %do.end24
  call void @cxgbi_device_unregister(ptr noundef nonnull %call3) #10
  br label %cleanup

cleanup:                                          ; preds = %err_out, %cond.end, %do.end8, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cxgb3i_dev_close(ptr noundef %t3dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @cxgbi_device_find_by_lldev(ptr noundef %t3dev) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %lor.lhs.false

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

lor.lhs.false:                                    ; preds = %entry
  %flags = getelementptr inbounds %struct.cxgbi_device, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.end, label %lor.lhs.false.cond.end_crit_edge

lor.lhs.false.cond.end_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.end:                                         ; preds = %lor.lhs.false.cond.end_crit_edge, %entry.cond.end_crit_edge
  %cond = phi i32 [ 0, %entry.cond.end_crit_edge ], [ %1, %lor.lhs.false.cond.end_crit_edge ]
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.144, ptr noundef nonnull @.str.145, ptr noundef %call, i32 noundef %cond) #13
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @cxgbi_device_unregister(ptr noundef nonnull %call) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %cond.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cxgb3i_dev_event_handler(ptr noundef %t3dev, i32 noundef %event, i32 noundef %port) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @cxgbi_device_find_by_lldev(ptr noundef %t3dev) #10
  %0 = load i32, ptr @dbg_level, align 4
  %and = and i32 %0, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.146, ptr noundef nonnull @.str.147, ptr noundef %t3dev, ptr noundef %call, i32 noundef %event, i32 noundef %port) #13
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %tobool5.not = icmp eq ptr %call, null
  br i1 %tobool5.not, label %do.end4.cleanup_crit_edge, label %if.end7

do.end4.cleanup_crit_edge:                        ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %do.end4
  %1 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.153)
  switch i32 %event, label %if.end7.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 0, label %sw.bb8
  ]

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  %flags = getelementptr inbounds %struct.cxgbi_device, ptr %call, i32 0, i32 2
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %or = or i32 %3, 4
  store i32 %or, ptr %flags, align 4
  br label %cleanup

sw.bb8:                                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  %flags9 = getelementptr inbounds %struct.cxgbi_device, ptr %call, i32 0, i32 2
  %4 = ptrtoint ptr %flags9 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags9, align 4
  %and10 = and i32 %5, -5
  store i32 %and10, ptr %flags9, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb8, %sw.bb, %if.end7.cleanup_crit_edge, %do.end4.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cxgbi_device_find_by_lldev(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cxgbi_device_register(i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxgbi_hbas_add(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @cxgbi_device_unregister(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxgbi_tagmask_set(i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxgbi_ddp_ppm_setup(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ddp_setup_conn_digest(ptr noundef %csk, i32 noundef %tid, i32 noundef %hcrc, i32 noundef %dcrc) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef 32, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #10
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %do.end.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 7
  %0 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.i.not.i.i = icmp eq i32 %1, 0
  br i1 %tobool.i.not.i.i, label %__skb_put.exit.i, label %do.body3.i.i, !prof !385

do.body3.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #10, !srcloc !390
  unreachable

__skb_put.exit.i:                                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %2 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tail.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 32
  store ptr %add.ptr.i.i, ptr %tail.i.i, align 8
  %len9.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 6
  %4 = ptrtoint ptr %len9.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len9.i.i, align 4
  %add.i.i = add i32 %5, 32
  store i32 %add.i.i, ptr %len9.i.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 18
  %6 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %head.i, align 8
  %8 = call ptr @memset(ptr %7, i32 0, i32 32)
  br label %alloc_wr.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54, i32 noundef 32, i32 noundef 0) #13
  br label %alloc_wr.exit

alloc_wr.exit:                                    ; preds = %do.end.i, %__skb_put.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %hcrc)
  %tobool.not = icmp ne i32 %hcrc, 0
  %cond = zext i1 %tobool.not to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dcrc)
  %tobool1.not = icmp eq i32 %dcrc, 0
  %cond2 = select i1 %tobool1.not, i32 0, i32 2
  %or = or i32 %cond2, %cond
  %9 = load i32, ptr @dbg_level, align 4
  %and = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %alloc_wr.exit.do.end7_crit_edge, label %do.end

alloc_wr.exit.do.end7_crit_edge:                  ; preds = %alloc_wr.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7

do.end:                                           ; preds = %alloc_wr.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.103, ptr noundef nonnull @.str.104, ptr noundef %csk, i32 noundef %tid, i32 noundef %hcrc, i32 noundef %dcrc) #13
  br label %do.end7

do.end7:                                          ; preds = %do.end, %alloc_wr.exit.do.end7_crit_edge
  br i1 %tobool.not.i, label %do.end7.cleanup_crit_edge, label %if.end10

do.end7.cleanup_crit_edge:                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end10:                                         ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #12
  %head = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 18
  %10 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %head, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 16777216, ptr %11, align 8
  %or11 = or i32 %tid, 83886080
  %ot = getelementptr inbounds %struct.cpl_set_tcb_field, ptr %11, i32 0, i32 1
  %13 = ptrtoint ptr %ot to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %or11, ptr %ot, align 8
  %reply = getelementptr inbounds %struct.cpl_set_tcb_field, ptr %11, i32 0, i32 2
  %14 = ptrtoint ptr %reply to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -128, ptr %reply, align 4
  %cpu_idx = getelementptr inbounds %struct.cpl_set_tcb_field, ptr %11, i32 0, i32 3
  %15 = ptrtoint ptr %cpu_idx to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %cpu_idx, align 1
  %word = getelementptr inbounds %struct.cpl_set_tcb_field, ptr %11, i32 0, i32 4
  %16 = ptrtoint ptr %word to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 31, ptr %word, align 2
  %mask = getelementptr inbounds %struct.cpl_set_tcb_field, ptr %11, i32 0, i32 5
  %17 = ptrtoint ptr %mask to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 251658240, ptr %mask, align 8
  %18 = shl nuw nsw i32 %or, 24
  %shl = zext i32 %18 to i64
  %val12 = getelementptr inbounds %struct.cpl_set_tcb_field, ptr %11, i32 0, i32 6
  %19 = ptrtoint ptr %val12 to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %shl, ptr %val12, align 8
  %priority = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15, i32 0, i32 6
  %20 = ptrtoint ptr %priority to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %priority, align 4
  %21 = ptrtoint ptr %csk to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %csk, align 4
  %lldev = getelementptr inbounds %struct.cxgbi_device, ptr %22, i32 0, i32 4
  %23 = ptrtoint ptr %lldev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %lldev, align 4
  %call13 = tail call i32 @cxgb3_ofld_send(ptr noundef %24, ptr noundef nonnull %call.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %do.end7.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end10 ], [ -12, %do.end7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ddp_setup_conn_pgidx(ptr noundef %csk, i32 noundef %tid, i32 noundef %pg_idx) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef 32, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #10
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %do.end.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 7
  %0 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.i.not.i.i = icmp eq i32 %1, 0
  br i1 %tobool.i.not.i.i, label %__skb_put.exit.i, label %do.body3.i.i, !prof !385

do.body3.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #10, !srcloc !390
  unreachable

__skb_put.exit.i:                                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %2 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tail.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 32
  store ptr %add.ptr.i.i, ptr %tail.i.i, align 8
  %len9.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 6
  %4 = ptrtoint ptr %len9.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len9.i.i, align 4
  %add.i.i = add i32 %5, 32
  store i32 %add.i.i, ptr %len9.i.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 18
  %6 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %head.i, align 8
  %8 = call ptr @memset(ptr %7, i32 0, i32 32)
  br label %alloc_wr.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54, i32 noundef 32, i32 noundef 0) #13
  br label %alloc_wr.exit

alloc_wr.exit:                                    ; preds = %do.end.i, %__skb_put.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %pg_idx)
  %cmp = icmp slt i32 %pg_idx, 4
  %spec.select = select i1 %cmp, i32 %pg_idx, i32 0
  %conv = sext i32 %spec.select to i64
  %9 = load i32, ptr @dbg_level, align 4
  %and = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %alloc_wr.exit.do.end4_crit_edge, label %do.end

alloc_wr.exit.do.end4_crit_edge:                  ; preds = %alloc_wr.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end4

do.end:                                           ; preds = %alloc_wr.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.105, ptr noundef nonnull @.str.106, ptr noundef %csk, i32 noundef %tid, i32 noundef %pg_idx) #13
  br label %do.end4

do.end4:                                          ; preds = %do.end, %alloc_wr.exit.do.end4_crit_edge
  br i1 %tobool.not.i, label %do.end4.cleanup_crit_edge, label %if.end7

do.end4.cleanup_crit_edge:                        ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #12
  %head = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 18
  %10 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %head, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 16777216, ptr %11, align 8
  %or = or i32 %tid, 83886080
  %ot = getelementptr inbounds %struct.cpl_set_tcb_field, ptr %11, i32 0, i32 1
  %13 = ptrtoint ptr %ot to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %or, ptr %ot, align 8
  %reply = getelementptr inbounds %struct.cpl_set_tcb_field, ptr %11, i32 0, i32 2
  %14 = ptrtoint ptr %reply to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -128, ptr %reply, align 4
  %cpu_idx = getelementptr inbounds %struct.cpl_set_tcb_field, ptr %11, i32 0, i32 3
  %15 = ptrtoint ptr %cpu_idx to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %cpu_idx, align 1
  %word = getelementptr inbounds %struct.cpl_set_tcb_field, ptr %11, i32 0, i32 4
  %16 = ptrtoint ptr %word to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 31, ptr %word, align 2
  %mask = getelementptr inbounds %struct.cpl_set_tcb_field, ptr %11, i32 0, i32 5
  %17 = ptrtoint ptr %mask to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 4026531840, ptr %mask, align 8
  %shl = shl nsw i64 %conv, 28
  %val8 = getelementptr inbounds %struct.cpl_set_tcb_field, ptr %11, i32 0, i32 6
  %18 = ptrtoint ptr %val8 to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %shl, ptr %val8, align 8
  %priority = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15, i32 0, i32 6
  %19 = ptrtoint ptr %priority to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %priority, align 4
  %20 = ptrtoint ptr %csk to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %csk, align 4
  %lldev = getelementptr inbounds %struct.cxgbi_device, ptr %21, i32 0, i32 4
  %22 = ptrtoint ptr %lldev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %lldev, align 4
  %call9 = tail call i32 @cxgb3_ofld_send(ptr noundef %23, ptr noundef nonnull %call.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %do.end4.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end7 ], [ -12, %do.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ddp_set_map(ptr nocapture noundef readonly %ppm, ptr nocapture noundef readnone %csk, ptr noundef %ttinfo) #1 align 64 {
entry:
  %sg = alloca ptr, align 4
  %sg_off = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %idx1 = getelementptr inbounds %struct.cxgbi_task_tag_info, ptr %ttinfo, i32 0, i32 4
  %0 = ptrtoint ptr %idx1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %idx1, align 8
  %npods2 = getelementptr inbounds %struct.cxgbi_task_tag_info, ptr %ttinfo, i32 0, i32 3
  %2 = ptrtoint ptr %npods2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %npods2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sg) #10
  %sgl = getelementptr inbounds %struct.cxgbi_task_tag_info, ptr %ttinfo, i32 0, i32 9
  %4 = ptrtoint ptr %sgl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sgl, align 8
  %6 = ptrtoint ptr %sg to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %sg, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sg_off) #10
  %7 = ptrtoint ptr %sg_off to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %sg_off, align 4, !annotation !392
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp27.not = icmp eq i32 %3, 0
  br i1 %cmp27.not, label %entry.cleanup6_crit_edge, label %for.body.lr.ph

entry.cleanup6_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup6

for.body.lr.ph:                                   ; preds = %entry
  %llimit = getelementptr inbounds %struct.cxgbi_ppm, ptr %ppm, i32 0, i32 7
  %8 = ptrtoint ptr %llimit to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %llimit, align 4
  %shl = shl i32 %1, 6
  %add = add i32 %9, %shl
  %lldev = getelementptr inbounds %struct.cxgbi_ppm, ptr %ppm, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.lr.ph
  %i.029 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end.for.body_crit_edge ]
  %pm_addr.028 = phi i32 [ %add, %for.body.lr.ph ], [ %add5, %if.end.for.body_crit_edge ]
  %call.i.i = call ptr @__alloc_skb(i32 noundef 80, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #10
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %alloc_wr.exit.thread, label %if.then.i

if.then.i:                                        ; preds = %for.body
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 7
  %10 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.i.not.i.i = icmp eq i32 %11, 0
  br i1 %tobool.i.not.i.i, label %if.end, label %do.body3.i.i, !prof !385

do.body3.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #10, !srcloc !390
  unreachable

alloc_wr.exit.thread:                             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %call3.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54, i32 noundef 80, i32 noundef 0) #13
  br label %cleanup6

if.end:                                           ; preds = %if.then.i
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %12 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tail.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %13, i32 80
  store ptr %add.ptr.i.i, ptr %tail.i.i, align 8
  %len9.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 6
  %14 = ptrtoint ptr %len9.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len9.i.i, align 4
  %add.i.i = add i32 %15, 80
  store i32 %add.i.i, ptr %len9.i.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 18
  %16 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %head.i, align 8
  %18 = call ptr @memset(ptr %17, i32 0, i32 80)
  %19 = load ptr, ptr %head.i, align 8
  %20 = getelementptr inbounds i8, ptr %19, i32 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %20, align 4
  %22 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 83886080, ptr %19, align 4
  %shr.i = lshr i32 %pm_addr.028, 5
  %or.i = or i32 %shr.i, 805306368
  %cmd_lock_addr.i = getelementptr inbounds %struct.ulp_mem_io, ptr %19, i32 0, i32 1
  %23 = ptrtoint ptr %cmd_lock_addr.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %or.i, ptr %cmd_lock_addr.i, align 4
  %len.i = getelementptr inbounds %struct.ulp_mem_io, ptr %19, i32 0, i32 2
  %24 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 536870921, ptr %len.i, align 4
  %25 = load ptr, ptr %head.i, align 8
  %add.ptr = getelementptr %struct.ulp_mem_io, ptr %25, i32 1
  %mul = shl i32 %i.029, 2
  %26 = ptrtoint ptr %sg_off to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %mul, ptr %sg_off, align 4
  call void @cxgbi_ddp_set_one_ppod(ptr noundef %add.ptr, ptr noundef %ttinfo, ptr noundef nonnull %sg, ptr noundef nonnull %sg_off) #10
  %priority = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15, i32 0, i32 6
  %27 = ptrtoint ptr %priority to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %priority, align 4
  %28 = ptrtoint ptr %lldev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %lldev, align 4
  %call3 = call i32 @cxgb3_ofld_send(ptr noundef %29, ptr noundef nonnull %call.i.i) #10
  %inc = add nuw i32 %i.029, 1
  %add5 = add i32 %pm_addr.028, 64
  %exitcond.not = icmp eq i32 %inc, %3
  br i1 %exitcond.not, label %if.end.cleanup6_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

if.end.cleanup6_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup6

cleanup6:                                         ; preds = %if.end.cleanup6_crit_edge, %alloc_wr.exit.thread, %entry.cleanup6_crit_edge
  %retval.2 = phi i32 [ -12, %alloc_wr.exit.thread ], [ 0, %entry.cleanup6_crit_edge ], [ 0, %if.end.cleanup6_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sg_off) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sg) #10
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ddp_clear_map(ptr noundef %cdev, ptr nocapture noundef readonly %ppm, ptr nocapture noundef readonly %ttinfo) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %idx1 = getelementptr inbounds %struct.cxgbi_task_tag_info, ptr %ttinfo, i32 0, i32 4
  %0 = ptrtoint ptr %idx1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %idx1, align 8
  %shl = shl i32 %1, 6
  %llimit = getelementptr inbounds %struct.cxgbi_ppm, ptr %ppm, i32 0, i32 7
  %2 = ptrtoint ptr %llimit to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %llimit, align 4
  %add = add i32 %shl, %3
  %npods2 = getelementptr inbounds %struct.cxgbi_task_tag_info, ptr %ttinfo, i32 0, i32 3
  %4 = ptrtoint ptr %npods2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %npods2, align 4
  %6 = load i32, ptr @dbg_level, align 4
  %and = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end5_crit_edge, label %do.end

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.107, ptr noundef nonnull @.str.108, ptr noundef %cdev, i32 noundef %1, i32 noundef %5) #13
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp33.not = icmp eq i32 %5, 0
  br i1 %cmp33.not, label %do.end5.for.end_crit_edge, label %for.body.lr.ph

do.end5.for.end_crit_edge:                        ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end5
  %lldev = getelementptr inbounds %struct.cxgbi_ppm, ptr %ppm, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %idx.037 = phi i32 [ %1, %for.body.lr.ph ], [ %inc16, %cleanup.for.body_crit_edge ]
  %pm_addr.035 = phi i32 [ %add, %for.body.lr.ph ], [ %add17, %cleanup.for.body_crit_edge ]
  %i.034 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cleanup.for.body_crit_edge ]
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef 80, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #10
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %do.end11, label %if.then.i

if.then.i:                                        ; preds = %for.body
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 7
  %7 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not.i.i = icmp eq i32 %8, 0
  br i1 %tobool.i.not.i.i, label %if.end14, label %do.body3.i.i, !prof !385

do.body3.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #10, !srcloc !390
  unreachable

do.end11:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54, i32 noundef 80, i32 noundef 0) #13
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.110, ptr noundef nonnull @.str.108, ptr noundef %cdev, i32 noundef %idx.037, i32 noundef %i.034, i32 noundef %5) #13
  br label %cleanup

if.end14:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %9 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tail.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %10, i32 80
  store ptr %add.ptr.i.i, ptr %tail.i.i, align 8
  %len9.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 6
  %11 = ptrtoint ptr %len9.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %len9.i.i, align 4
  %add.i.i = add i32 %12, 80
  store i32 %add.i.i, ptr %len9.i.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 18
  %13 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %head.i, align 8
  %15 = call ptr @memset(ptr %14, i32 0, i32 80)
  %16 = load ptr, ptr %head.i, align 8
  %17 = getelementptr inbounds i8, ptr %16, i32 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %17, align 4
  %19 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 83886080, ptr %16, align 4
  %shr.i = lshr i32 %pm_addr.035, 5
  %or.i = or i32 %shr.i, 805306368
  %cmd_lock_addr.i = getelementptr inbounds %struct.ulp_mem_io, ptr %16, i32 0, i32 1
  %20 = ptrtoint ptr %cmd_lock_addr.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %or.i, ptr %cmd_lock_addr.i, align 4
  %len.i = getelementptr inbounds %struct.ulp_mem_io, ptr %16, i32 0, i32 2
  %21 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 536870921, ptr %len.i, align 4
  %priority = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15, i32 0, i32 6
  %22 = ptrtoint ptr %priority to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %priority, align 4
  %23 = ptrtoint ptr %lldev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %lldev, align 4
  %call15 = tail call i32 @cxgb3_ofld_send(ptr noundef %24, ptr noundef nonnull %call.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %do.end11
  %inc = add nuw i32 %i.034, 1
  %inc16 = add i32 %idx.037, 1
  %add17 = add i32 %pm_addr.035, 64
  %exitcond.not = icmp eq i32 %inc, %5
  br i1 %exitcond.not, label %cleanup.for.end_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %do.end5.for.end_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @cdev2ppm(ptr nocapture noundef readonly %cdev) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %lldev = getelementptr inbounds %struct.cxgbi_device, ptr %cdev, i32 0, i32 4
  %0 = ptrtoint ptr %lldev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lldev, align 4
  %ulp_iscsi = getelementptr inbounds %struct.t3cdev, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %ulp_iscsi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ulp_iscsi, align 4
  ret ptr %3
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @cxgbi_ddp_set_one_ppod(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxgbi_device_portmap_create(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @release_offload_resources(ptr noundef %csk) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %csk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %csk, align 4
  %lldev = getelementptr inbounds %struct.cxgbi_device, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %lldev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lldev, align 4
  %4 = load i32, ptr @dbg_level, align 4
  %and = and i32 %4, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %state = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 28
  %5 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %state, align 4
  %flags = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 3
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags, align 4
  %tid = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 1
  %9 = ptrtoint ptr %tid to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tid, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.117, ptr noundef %csk, i32 noundef %6, i32 noundef %8, i32 noundef %10) #13
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %rss_qid = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 5
  %11 = ptrtoint ptr %rss_qid to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %rss_qid, align 4
  tail call void @cxgbi_sock_free_cpl_skbs(ptr noundef %csk) #10
  %wr_cred = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 14
  %12 = ptrtoint ptr %wr_cred to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %wr_cred, align 4
  %wr_max_cred = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 13
  %14 = ptrtoint ptr %wr_max_cred to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %wr_max_cred, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp.not = icmp eq i32 %13, %15
  br i1 %cmp.not, label %do.end3.if.end5_crit_edge, label %if.then4

do.end3.if.end5_crit_edge:                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.then4:                                         ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @cxgbi_sock_purge_wr_queue(ptr noundef %csk) #10
  %wr_pending_tail.i = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 21
  %16 = ptrtoint ptr %wr_pending_tail.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %wr_pending_tail.i, align 4
  %wr_pending_head.i = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 20
  %17 = ptrtoint ptr %wr_pending_head.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %wr_pending_head.i, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %do.end3.if.end5_crit_edge
  %l2t.i = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 19
  %18 = ptrtoint ptr %l2t.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %l2t.i, align 4
  %tobool.not.i = icmp eq ptr %19, null
  br i1 %tobool.not.i, label %if.end5.l2t_put.exit_crit_edge, label %if.then.i

if.end5.l2t_put.exit_crit_edge:                   ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %l2t_put.exit

if.then.i:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %csk to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %csk, align 4
  %lldev.i = getelementptr inbounds %struct.cxgbi_device, ptr %21, i32 0, i32 4
  %22 = ptrtoint ptr %lldev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %lldev.i, align 4
  tail call fastcc void @l2t_release(ptr noundef %23, ptr noundef nonnull %19) #10
  %24 = ptrtoint ptr %l2t.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %l2t.i, align 4
  tail call fastcc void @__cxgbi_sock_put(ptr noundef nonnull @__func__.l2t_put, ptr noundef %csk) #10
  br label %l2t_put.exit

l2t_put.exit:                                     ; preds = %if.then.i, %if.end5.l2t_put.exit_crit_edge
  %cmp.i = icmp eq ptr %csk, null
  br i1 %cmp.i, label %l2t_put.exit.if.end14_crit_edge, label %cxgbi_sock_flag.exit

l2t_put.exit.if.end14_crit_edge:                  ; preds = %l2t_put.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

cxgbi_sock_flag.exit:                             ; preds = %l2t_put.exit
  %flags.i = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 3
  %25 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %flags.i, align 4
  %27 = and i32 %26, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool7.not = icmp eq i32 %27, 0
  %28 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %flags.i, align 4
  br i1 %tobool7.not, label %cxgbi_sock_flag.exit46, label %cxgbi_sock_flag.exit.i

cxgbi_sock_flag.exit.i:                           ; preds = %cxgbi_sock_flag.exit
  %30 = and i32 %29, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not.i36 = icmp eq i32 %30, 0
  br i1 %tobool.not.i36, label %cxgbi_sock_flag.exit.i.if.end14_crit_edge, label %if.then.i38

cxgbi_sock_flag.exit.i.if.end14_crit_edge:        ; preds = %cxgbi_sock_flag.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.then.i38:                                      ; preds = %cxgbi_sock_flag.exit.i
  %31 = ptrtoint ptr %csk to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %csk, align 4
  %lldev.i37 = getelementptr inbounds %struct.cxgbi_device, ptr %32, i32 0, i32 4
  %33 = ptrtoint ptr %lldev.i37 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %lldev.i37, align 4
  %atid.i = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 2
  %35 = ptrtoint ptr %atid.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %atid.i, align 4
  %call1.i = tail call ptr @cxgb3_free_atid(ptr noundef %34, i32 noundef %36) #10
  %37 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %flags.i, align 4
  %and.i.i.i = and i32 %38, -33
  store i32 %and.i.i.i, ptr %flags.i, align 4
  %39 = load i32, ptr @dbg_level, align 4
  %and.i.i = and i32 %39, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i38.cxgbi_sock_clear_flag.exit.i_crit_edge, label %do.end.i.i

if.then.i38.cxgbi_sock_clear_flag.exit.i_crit_edge: ; preds = %if.then.i38
  call void @__sanitizer_cov_trace_pc() #12
  br label %cxgbi_sock_clear_flag.exit.i

do.end.i.i:                                       ; preds = %if.then.i38
  call void @__sanitizer_cov_trace_pc() #12
  %state.i.i = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 28
  %40 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %state.i.i, align 4
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.14, ptr noundef nonnull %csk, i32 noundef %41, i32 noundef %and.i.i.i, i32 noundef 5) #13
  br label %cxgbi_sock_clear_flag.exit.i

cxgbi_sock_clear_flag.exit.i:                     ; preds = %do.end.i.i, %if.then.i38.cxgbi_sock_clear_flag.exit.i_crit_edge
  tail call fastcc void @__cxgbi_sock_put(ptr noundef nonnull @__func__.free_atid, ptr noundef nonnull %csk) #10
  br label %if.end14

cxgbi_sock_flag.exit46:                           ; preds = %cxgbi_sock_flag.exit
  %42 = and i32 %29, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool10.not = icmp eq i32 %42, 0
  br i1 %tobool10.not, label %cxgbi_sock_flag.exit46.if.end14_crit_edge, label %if.then11

cxgbi_sock_flag.exit46.if.end14_crit_edge:        ; preds = %cxgbi_sock_flag.exit46
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.then11:                                        ; preds = %cxgbi_sock_flag.exit46
  %tid12 = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 1
  %43 = ptrtoint ptr %tid12 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %tid12, align 4
  tail call void @cxgb3_remove_tid(ptr noundef %3, ptr noundef nonnull %csk, i32 noundef %44) #10
  %45 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %flags.i, align 4
  %and.i.i48 = and i32 %46, -65
  store i32 %and.i.i48, ptr %flags.i, align 4
  %47 = load i32, ptr @dbg_level, align 4
  %and.i = and i32 %47, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i49 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i49, label %if.then11.cxgbi_sock_clear_flag.exit_crit_edge, label %do.end.i

if.then11.cxgbi_sock_clear_flag.exit_crit_edge:   ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  br label %cxgbi_sock_clear_flag.exit

do.end.i:                                         ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  %state.i = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 28
  %48 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %state.i, align 4
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.14, ptr noundef nonnull %csk, i32 noundef %49, i32 noundef %and.i.i48, i32 noundef 6) #13
  br label %cxgbi_sock_clear_flag.exit

cxgbi_sock_clear_flag.exit:                       ; preds = %do.end.i, %if.then11.cxgbi_sock_clear_flag.exit_crit_edge
  tail call fastcc void @__cxgbi_sock_put(ptr noundef nonnull @.str.117, ptr noundef nonnull %csk)
  br label %if.end14

if.end14:                                         ; preds = %cxgbi_sock_clear_flag.exit, %cxgbi_sock_flag.exit46.if.end14_crit_edge, %cxgbi_sock_clear_flag.exit.i, %cxgbi_sock_flag.exit.i.if.end14_crit_edge, %l2t_put.exit.if.end14_crit_edge
  %dst = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 32
  %50 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr null, ptr %dst, align 4
  %51 = ptrtoint ptr %csk to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr null, ptr %csk, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @send_close_req(ptr noundef %csk) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cpl_close = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 22
  %0 = ptrtoint ptr %cpl_close to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cpl_close, align 4
  %head = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %head, align 8
  %tid1 = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 1
  %4 = ptrtoint ptr %tid1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tid1, align 4
  %6 = load i32, ptr @dbg_level, align 4
  %and = and i32 %6, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end5_crit_edge, label %do.end

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %state = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 28
  %7 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %state, align 4
  %flags = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 3
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.123, ptr noundef %csk, i32 noundef %8, i32 noundef %10, i32 noundef %5) #13
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %11 = ptrtoint ptr %cpl_close to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %cpl_close, align 4
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 150994944, ptr %3, align 4
  %shl = shl i32 %5, 8
  %wr_lo = getelementptr inbounds %struct.work_request_hdr, ptr %3, i32 0, i32 1
  %13 = ptrtoint ptr %wr_lo to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %shl, ptr %wr_lo, align 4
  %or = or i32 %5, 134217728
  %ot = getelementptr inbounds %struct.cpl_close_con_req, ptr %3, i32 0, i32 1
  %14 = ptrtoint ptr %ot to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %or, ptr %ot, align 4
  %write_seq = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 45
  %15 = ptrtoint ptr %write_seq to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %write_seq, align 4
  %rsvd = getelementptr inbounds %struct.cpl_close_con_req, ptr %3, i32 0, i32 2
  %17 = ptrtoint ptr %rsvd to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %rsvd, align 4
  tail call void @cxgbi_sock_skb_entail(ptr noundef %csk, ptr noundef %1) #10
  %state8 = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 28
  %18 = ptrtoint ptr %state8 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %state8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %19)
  %cmp = icmp ugt i32 %19, 2
  br i1 %cmp, label %if.then9, label %do.end5.if.end11_crit_edge

do.end5.if.end11_crit_edge:                       ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.then9:                                         ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #12
  %call10 = tail call i32 @push_tx_frames(ptr noundef %csk, i32 noundef 1)
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %do.end5.if.end11_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @send_rx_credits(ptr noundef %csk, i32 noundef %credits) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @dbg_level, align 4
  %and = and i32 %0, 36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %state = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 28
  %1 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %state, align 4
  %flags = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 3
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags, align 4
  %tid = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 1
  %5 = ptrtoint ptr %tid to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tid, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.124, ptr noundef nonnull @.str.125, ptr noundef %csk, i32 noundef %2, i32 noundef %4, i32 noundef %6, i32 noundef %credits, i32 noundef -1610612736) #13
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef 16, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #10
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %do.end9, label %if.then.i

if.then.i:                                        ; preds = %do.end3
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 7
  %7 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not.i.i = icmp eq i32 %8, 0
  br i1 %tobool.i.not.i.i, label %if.end12, label %do.body3.i.i, !prof !385

do.body3.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #10, !srcloc !390
  unreachable

do.end9:                                          ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #12
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54, i32 noundef 16, i32 noundef 0) #13
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.127, ptr noundef nonnull @.str.125, ptr noundef %csk, i32 noundef %credits) #13
  br label %cleanup

if.end12:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %9 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tail.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %10, i32 16
  store ptr %add.ptr.i.i, ptr %tail.i.i, align 8
  %len9.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 6
  %11 = ptrtoint ptr %len9.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %len9.i.i, align 4
  %add.i.i = add i32 %12, 16
  store i32 %add.i.i, ptr %len9.i.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 18
  %13 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %head.i, align 8
  %15 = call ptr @memset(ptr %14, i32 0, i32 16)
  %16 = load ptr, ptr %head.i, align 8
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 16777216, ptr %16, align 4
  %tid13 = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 1
  %18 = ptrtoint ptr %tid13 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tid13, align 4
  %or = or i32 %19, 218103808
  %ot = getelementptr inbounds %struct.cpl_rx_data_ack, ptr %16, i32 0, i32 1
  %20 = ptrtoint ptr %ot to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %or, ptr %ot, align 4
  %or14 = or i32 %credits, -1610612736
  %credit_dack = getelementptr inbounds %struct.cpl_rx_data_ack, ptr %16, i32 0, i32 2
  %21 = ptrtoint ptr %credit_dack to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %or14, ptr %credit_dack, align 4
  %priority = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15, i32 0, i32 6
  %22 = ptrtoint ptr %priority to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %priority, align 4
  %23 = ptrtoint ptr %csk to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %csk, align 4
  %lldev = getelementptr inbounds %struct.cxgbi_device, ptr %24, i32 0, i32 4
  %25 = ptrtoint ptr %lldev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %lldev, align 4
  %call15 = tail call i32 @cxgb3_ofld_send(ptr noundef %26, ptr noundef nonnull %call.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %do.end9
  %retval.0 = phi i32 [ %credits, %if.end12 ], [ 0, %do.end9 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @alloc_cpls(ptr noundef %csk) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef 16, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #10
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %alloc_wr.exit.thread, label %if.then.i

if.then.i:                                        ; preds = %entry
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 7
  %0 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.i.not.i.i = icmp eq i32 %1, 0
  br i1 %tobool.i.not.i.i, label %if.end, label %do.body3.i.i, !prof !385

do.body3.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #10, !srcloc !390
  unreachable

alloc_wr.exit.thread:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54, i32 noundef 16, i32 noundef 0) #13
  %cpl_close48 = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 22
  %2 = ptrtoint ptr %cpl_close48 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %cpl_close48, align 4
  br label %return

if.end:                                           ; preds = %if.then.i
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %3 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tail.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 16
  store ptr %add.ptr.i.i, ptr %tail.i.i, align 8
  %len9.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 6
  %5 = ptrtoint ptr %len9.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %len9.i.i, align 4
  %add.i.i = add i32 %6, 16
  store i32 %add.i.i, ptr %len9.i.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 18
  %7 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %head.i, align 8
  %9 = call ptr @memset(ptr %8, i32 0, i32 16)
  %cpl_close = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 22
  %10 = ptrtoint ptr %cpl_close to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i.i, ptr %cpl_close, align 4
  %call.i.i18 = tail call ptr @__alloc_skb(i32 noundef 24, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #10
  %tobool.not.i19 = icmp eq ptr %call.i.i18, null
  br i1 %tobool.not.i19, label %alloc_wr.exit32.thread, label %if.then.i22

if.then.i22:                                      ; preds = %if.end
  %data_len.i.i.i20 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i18, i32 0, i32 7
  %11 = ptrtoint ptr %data_len.i.i.i20 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %data_len.i.i.i20, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.i.not.i.i21 = icmp eq i32 %12, 0
  br i1 %tobool.i.not.i.i21, label %if.end6, label %do.body3.i.i23, !prof !385

do.body3.i.i23:                                   ; preds = %if.then.i22
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #10, !srcloc !390
  unreachable

alloc_wr.exit32.thread:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call3.i30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54, i32 noundef 24, i32 noundef 0) #13
  %cpl_abort_req49 = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 23
  br label %free_cpl_skbs

if.end6:                                          ; preds = %if.then.i22
  %tail.i.i24 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i18, i32 0, i32 16
  %13 = ptrtoint ptr %tail.i.i24 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tail.i.i24, align 8
  %add.ptr.i.i25 = getelementptr i8, ptr %14, i32 24
  store ptr %add.ptr.i.i25, ptr %tail.i.i24, align 8
  %len9.i.i26 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i18, i32 0, i32 6
  %15 = ptrtoint ptr %len9.i.i26 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %len9.i.i26, align 4
  %add.i.i27 = add i32 %16, 24
  store i32 %add.i.i27, ptr %len9.i.i26, align 4
  %head.i28 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i18, i32 0, i32 18
  %17 = ptrtoint ptr %head.i28 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %head.i28, align 8
  %19 = call ptr @memset(ptr %18, i32 0, i32 24)
  %cpl_abort_req = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 23
  %20 = ptrtoint ptr %cpl_abort_req to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call.i.i18, ptr %cpl_abort_req, align 4
  %call.i.i33 = tail call ptr @__alloc_skb(i32 noundef 24, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #10
  %tobool.not.i34 = icmp eq ptr %call.i.i33, null
  br i1 %tobool.not.i34, label %alloc_wr.exit47.thread, label %if.then.i37

if.then.i37:                                      ; preds = %if.end6
  %data_len.i.i.i35 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i33, i32 0, i32 7
  %21 = ptrtoint ptr %data_len.i.i.i35 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %data_len.i.i.i35, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.i.not.i.i36 = icmp eq i32 %22, 0
  br i1 %tobool.i.not.i.i36, label %alloc_wr.exit47, label %do.body3.i.i38, !prof !385

do.body3.i.i38:                                   ; preds = %if.then.i37
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #10, !srcloc !390
  unreachable

alloc_wr.exit47.thread:                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  %call3.i45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54, i32 noundef 24, i32 noundef 0) #13
  %cpl_abort_rpl50 = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 24
  br label %free_cpl_skbs

alloc_wr.exit47:                                  ; preds = %if.then.i37
  call void @__sanitizer_cov_trace_pc() #12
  %tail.i.i39 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i33, i32 0, i32 16
  %23 = ptrtoint ptr %tail.i.i39 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %tail.i.i39, align 8
  %add.ptr.i.i40 = getelementptr i8, ptr %24, i32 24
  store ptr %add.ptr.i.i40, ptr %tail.i.i39, align 8
  %len9.i.i41 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i33, i32 0, i32 6
  %25 = ptrtoint ptr %len9.i.i41 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %len9.i.i41, align 4
  %add.i.i42 = add i32 %26, 24
  store i32 %add.i.i42, ptr %len9.i.i41, align 4
  %head.i43 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i33, i32 0, i32 18
  %27 = ptrtoint ptr %head.i43 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %head.i43, align 8
  %29 = call ptr @memset(ptr %28, i32 0, i32 24)
  %cpl_abort_rpl = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 24
  %30 = ptrtoint ptr %cpl_abort_rpl to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call.i.i33, ptr %cpl_abort_rpl, align 4
  br label %return

free_cpl_skbs:                                    ; preds = %alloc_wr.exit47.thread, %alloc_wr.exit32.thread
  %cpl_abort_rpl50.sink = phi ptr [ %cpl_abort_rpl50, %alloc_wr.exit47.thread ], [ %cpl_abort_req49, %alloc_wr.exit32.thread ]
  %31 = ptrtoint ptr %cpl_abort_rpl50.sink to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %cpl_abort_rpl50.sink, align 4
  tail call void @cxgbi_sock_free_cpl_skbs(ptr noundef %csk) #10
  br label %return

return:                                           ; preds = %free_cpl_skbs, %alloc_wr.exit47, %alloc_wr.exit.thread
  %retval.0 = phi i32 [ -12, %free_cpl_skbs ], [ 0, %alloc_wr.exit47 ], [ -12, %alloc_wr.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @init_act_open(ptr noundef %csk) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dst1 = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 32
  %0 = ptrtoint ptr %dst1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dst1, align 4
  %2 = ptrtoint ptr %csk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %csk, align 4
  %lldev = getelementptr inbounds %struct.cxgbi_device, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %lldev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lldev, align 4
  %ports = getelementptr inbounds %struct.cxgbi_device, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ports, align 4
  %port_id = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 12
  %8 = ptrtoint ptr %port_id to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %port_id, align 4
  %idxprom = zext i8 %9 to i32
  %arrayidx = getelementptr ptr, ptr %7, i32 %idxprom
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %hbas = getelementptr inbounds %struct.cxgbi_device, ptr %3, i32 0, i32 5
  %12 = ptrtoint ptr %hbas to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hbas, align 4
  %arrayidx5 = getelementptr ptr, ptr %13, i32 %idxprom
  %14 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx5, align 4
  %16 = load i32, ptr @dbg_level, align 4
  %and = and i32 %16, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end8_crit_edge, label %do.end

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end8

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %state = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 28
  %17 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %state, align 4
  %flags = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 3
  %19 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.129, ptr noundef nonnull @.str.130, ptr noundef %csk, i32 noundef %18, i32 noundef %20) #13
  br label %do.end8

do.end8:                                          ; preds = %do.end, %entry.do.end8_crit_edge
  %ipv4addr.i = getelementptr inbounds %struct.cxgbi_hba, ptr %15, i32 0, i32 4
  %21 = ptrtoint ptr %ipv4addr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ipv4addr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i = icmp eq i32 %22, 0
  br i1 %tobool.not.i, label %if.else26.i, label %if.then.i

if.then.i:                                        ; preds = %do.end8
  %vdev.i = getelementptr inbounds %struct.cxgbi_hba, ptr %15, i32 0, i32 1
  %23 = ptrtoint ptr %vdev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %vdev.i, align 4
  %tobool1.not.i = icmp eq ptr %24, null
  br i1 %tobool1.not.i, label %if.then.i.if.else.i_crit_edge, label %land.lhs.true.i

if.then.i.if.else.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.then.i
  %iscsi_ipv4addr.i.i = getelementptr i8, ptr %24, i32 6124
  %25 = ptrtoint ptr %iscsi_ipv4addr.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %iscsi_ipv4addr.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %26)
  %cmp.not.i = icmp eq i32 %22, %26
  br i1 %cmp.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %cxgb3i_set_private_ipv4addr.exit.i

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

cxgb3i_set_private_ipv4addr.exit.i:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  %flags.i.i = getelementptr i8, ptr %24, i32 6136
  %27 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %flags.i.i, align 8
  %28 = ptrtoint ptr %iscsi_ipv4addr.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %22, ptr %iscsi_ipv4addr.i.i, align 4
  %iscsic.i.i = getelementptr i8, ptr %24, i32 6128
  %dev_addr.i.i = getelementptr inbounds %struct.net_device, ptr %24, i32 0, i32 86
  %29 = ptrtoint ptr %dev_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev_addr.i.i, align 64
  %31 = call ptr @memcpy(ptr %iscsic.i.i, ptr %30, i32 6)
  %32 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %15, align 4
  %flags.i60.i = getelementptr i8, ptr %33, i32 6136
  %34 = ptrtoint ptr %flags.i60.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %flags.i60.i, align 8
  %iscsi_ipv4addr.i61.i = getelementptr i8, ptr %33, i32 6124
  %35 = ptrtoint ptr %iscsi_ipv4addr.i61.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %iscsi_ipv4addr.i61.i, align 4
  %36 = ptrtoint ptr %vdev.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %vdev.i, align 4
  %call9.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.140, ptr noundef nonnull @.str.141, ptr noundef %37, ptr noundef %ipv4addr.i) #13
  br label %update_address.exit

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.then.i.if.else.i_crit_edge
  %38 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %15, align 4
  %iscsi_ipv4addr.i62.i = getelementptr i8, ptr %39, i32 6124
  %40 = ptrtoint ptr %iscsi_ipv4addr.i62.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %iscsi_ipv4addr.i62.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %41)
  %cmp13.not.i = icmp eq i32 %22, %41
  br i1 %cmp13.not.i, label %if.else.i.update_address.exit_crit_edge, label %cxgb3i_set_private_ipv4addr.exit71.i

if.else.i.update_address.exit_crit_edge:          ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %update_address.exit

cxgb3i_set_private_ipv4addr.exit71.i:             ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %flags.i66.i = getelementptr i8, ptr %39, i32 6136
  %42 = ptrtoint ptr %flags.i66.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 1, ptr %flags.i66.i, align 8
  %43 = ptrtoint ptr %iscsi_ipv4addr.i62.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %22, ptr %iscsi_ipv4addr.i62.i, align 4
  %iscsic.i68.i = getelementptr i8, ptr %39, i32 6128
  %dev_addr.i69.i = getelementptr inbounds %struct.net_device, ptr %39, i32 0, i32 86
  %44 = ptrtoint ptr %dev_addr.i69.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev_addr.i69.i, align 64
  %46 = call ptr @memcpy(ptr %iscsic.i68.i, ptr %45, i32 6)
  %47 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %15, align 4
  %call24.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.140, ptr noundef nonnull @.str.141, ptr noundef %48, ptr noundef %ipv4addr.i) #13
  br label %update_address.exit

if.else26.i:                                      ; preds = %do.end8
  %49 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %15, align 4
  %iscsi_ipv4addr.i72.i = getelementptr i8, ptr %50, i32 6124
  %51 = ptrtoint ptr %iscsi_ipv4addr.i72.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %iscsi_ipv4addr.i72.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool29.not.i = icmp eq i32 %52, 0
  br i1 %tobool29.not.i, label %if.else26.i.update_address.exit_crit_edge, label %if.then30.i

if.else26.i.update_address.exit_crit_edge:        ; preds = %if.else26.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %update_address.exit

if.then30.i:                                      ; preds = %if.else26.i
  %vdev31.i = getelementptr inbounds %struct.cxgbi_hba, ptr %15, i32 0, i32 1
  %53 = ptrtoint ptr %vdev31.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %vdev31.i, align 4
  %tobool32.not.i = icmp eq ptr %54, null
  br i1 %tobool32.not.i, label %if.then30.i.if.end35.i_crit_edge, label %if.then33.i

if.then30.i.if.end35.i_crit_edge:                 ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35.i

if.then33.i:                                      ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #12
  %flags.i73.i = getelementptr i8, ptr %54, i32 6136
  %55 = ptrtoint ptr %flags.i73.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %flags.i73.i, align 8
  %iscsi_ipv4addr.i74.i = getelementptr i8, ptr %54, i32 6124
  %56 = ptrtoint ptr %iscsi_ipv4addr.i74.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %iscsi_ipv4addr.i74.i, align 4
  br label %if.end35.i

if.end35.i:                                       ; preds = %if.then33.i, %if.then30.i.if.end35.i_crit_edge
  %57 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %15, align 4
  %flags.i75.i = getelementptr i8, ptr %58, i32 6136
  %59 = ptrtoint ptr %flags.i75.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %flags.i75.i, align 8
  %iscsi_ipv4addr.i76.i = getelementptr i8, ptr %58, i32 6124
  %60 = ptrtoint ptr %iscsi_ipv4addr.i76.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %iscsi_ipv4addr.i76.i, align 4
  br label %update_address.exit

update_address.exit:                              ; preds = %if.end35.i, %if.else26.i.update_address.exit_crit_edge, %cxgb3i_set_private_ipv4addr.exit71.i, %if.else.i.update_address.exit_crit_edge, %cxgb3i_set_private_ipv4addr.exit.i
  %61 = ptrtoint ptr %ipv4addr.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %ipv4addr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool9.not = icmp eq i32 %62, 0
  br i1 %tobool9.not, label %update_address.exit.if.end12_crit_edge, label %if.then10

update_address.exit.if.end12_crit_edge:           ; preds = %update_address.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.then10:                                        ; preds = %update_address.exit
  call void @__sanitizer_cov_trace_pc() #12
  %sin_addr = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 30, i32 0, i32 2
  %63 = ptrtoint ptr %sin_addr to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %sin_addr, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %update_address.exit.if.end12_crit_edge
  %rss_qid = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 5
  %64 = ptrtoint ptr %rss_qid to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 0, ptr %rss_qid, align 4
  %sin_addr13 = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 31, i32 0, i32 2
  %call15 = tail call ptr @t3_l2t_get(ptr noundef %5, ptr noundef %1, ptr noundef %11, ptr noundef %sin_addr13) #10
  %l2t = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 19
  %65 = ptrtoint ptr %l2t to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %call15, ptr %l2t, align 4
  %tobool17.not = icmp eq ptr %call15, null
  br i1 %tobool17.not, label %do.end21, label %if.end24

do.end21:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.132, ptr noundef nonnull @.str.130) #13
  br label %cleanup

if.end24:                                         ; preds = %if.end12
  %66 = load i32, ptr @dbg_level, align 4
  %and.i = and i32 %66, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i124 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i124, label %if.end24.do.end3.i_crit_edge, label %do.end.i

if.end24.do.end3.i_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end3.i

do.end.i:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  %refcnt.i = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 27
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcnt.i, i32 noundef 4) #10
  %67 = ptrtoint ptr %refcnt.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load volatile i32, ptr %refcnt.i, align 4
  %call2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.130, ptr noundef %csk, i32 noundef %68) #13
  br label %do.end3.i

do.end3.i:                                        ; preds = %do.end.i, %if.end24.do.end3.i_crit_edge
  %refcnt4.i = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 27
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt4.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %refcnt4.i, i32 1, i32 3, i32 1) #10
  %69 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt4.i, ptr %refcnt4.i, i32 1, ptr elementtype(i32) %refcnt4.i) #10, !srcloc !383
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %69, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %do.end3.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !384

do.end3.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %do.end3.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %70 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %70)
  %.not.i.i.i.i.i = icmp sgt i32 %70, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.__cxgbi_sock_get.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !385

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.__cxgbi_sock_get.exit_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__cxgbi_sock_get.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %do.end3.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %do.end3.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcnt4.i, i32 noundef %.sink.i.i.i.i.i) #10
  br label %__cxgbi_sock_get.exit

__cxgbi_sock_get.exit:                            ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.__cxgbi_sock_get.exit_crit_edge
  %call25 = tail call i32 @cxgb3_alloc_atid(ptr noundef %5, ptr noundef nonnull @t3_client, ptr noundef %csk) #10
  %atid = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 2
  %71 = ptrtoint ptr %atid to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %call25, ptr %atid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp = icmp slt i32 %call25, 0
  br i1 %cmp, label %do.end30, label %if.end33

do.end30:                                         ; preds = %__cxgbi_sock_get.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.135, ptr noundef nonnull @.str.130) #13
  br label %put_sock

if.end33:                                         ; preds = %__cxgbi_sock_get.exit
  %flags.i = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 3
  %72 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %flags.i, align 4
  %or.i.i = or i32 %73, 32
  store i32 %or.i.i, ptr %flags.i, align 4
  %74 = load i32, ptr @dbg_level, align 4
  %and.i125 = and i32 %74, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i125)
  %tobool.not.i126 = icmp eq i32 %and.i125, 0
  br i1 %tobool.not.i126, label %if.end33.cxgbi_sock_set_flag.exit_crit_edge, label %do.end.i127

if.end33.cxgbi_sock_set_flag.exit_crit_edge:      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  br label %cxgbi_sock_set_flag.exit

do.end.i127:                                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  %state.i = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 28
  %75 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %state.i, align 4
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, ptr noundef %csk, i32 noundef %76, i32 noundef %or.i.i, i32 noundef 5) #13
  br label %cxgbi_sock_set_flag.exit

cxgbi_sock_set_flag.exit:                         ; preds = %do.end.i127, %if.end33.cxgbi_sock_set_flag.exit_crit_edge
  %77 = load i32, ptr @dbg_level, align 4
  %and.i129 = and i32 %77, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i129)
  %tobool.not.i130 = icmp eq i32 %and.i129, 0
  br i1 %tobool.not.i130, label %cxgbi_sock_set_flag.exit.do.end3.i139_crit_edge, label %do.end.i134

cxgbi_sock_set_flag.exit.do.end3.i139_crit_edge:  ; preds = %cxgbi_sock_set_flag.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end3.i139

do.end.i134:                                      ; preds = %cxgbi_sock_set_flag.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i.i.i132 = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcnt4.i, i32 noundef 4) #10
  %78 = ptrtoint ptr %refcnt4.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load volatile i32, ptr %refcnt4.i, align 4
  %call2.i133 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.130, ptr noundef %csk, i32 noundef %79) #13
  br label %do.end3.i139

do.end3.i139:                                     ; preds = %do.end.i134, %cxgbi_sock_set_flag.exit.do.end3.i139_crit_edge
  %call.i.i.i.i.i.i.i136 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt4.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %refcnt4.i, i32 1, i32 3, i32 1) #10
  %80 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt4.i, ptr %refcnt4.i, i32 1, ptr elementtype(i32) %refcnt4.i) #10, !srcloc !383
  %asmresult.i.i.i.i.i.i.i137 = extractvalue { i32, i32, i32 } %80, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i137)
  %tobool1.not.i.i.i.i.i138 = icmp eq i32 %asmresult.i.i.i.i.i.i.i137, 0
  br i1 %tobool1.not.i.i.i.i.i138, label %do.end3.i139.if.end15.sink.split.i.i.i.i.i144_crit_edge, label %if.else.i.i.i.i.i142, !prof !384

do.end3.i139.if.end15.sink.split.i.i.i.i.i144_crit_edge: ; preds = %do.end3.i139
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i144

if.else.i.i.i.i.i142:                             ; preds = %do.end3.i139
  %add.i.i.i.i.i140 = add i32 %asmresult.i.i.i.i.i.i.i137, 1
  %81 = or i32 %add.i.i.i.i.i140, %asmresult.i.i.i.i.i.i.i137
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %81)
  %.not.i.i.i.i.i141 = icmp sgt i32 %81, -1
  br i1 %.not.i.i.i.i.i141, label %if.else.i.i.i.i.i142.__cxgbi_sock_get.exit145_crit_edge, label %if.else.i.i.i.i.i142.if.end15.sink.split.i.i.i.i.i144_crit_edge, !prof !385

if.else.i.i.i.i.i142.if.end15.sink.split.i.i.i.i.i144_crit_edge: ; preds = %if.else.i.i.i.i.i142
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i144

if.else.i.i.i.i.i142.__cxgbi_sock_get.exit145_crit_edge: ; preds = %if.else.i.i.i.i.i142
  call void @__sanitizer_cov_trace_pc() #12
  br label %__cxgbi_sock_get.exit145

if.end15.sink.split.i.i.i.i.i144:                 ; preds = %if.else.i.i.i.i.i142.if.end15.sink.split.i.i.i.i.i144_crit_edge, %do.end3.i139.if.end15.sink.split.i.i.i.i.i144_crit_edge
  %.sink.i.i.i.i.i143 = phi i32 [ 2, %do.end3.i139.if.end15.sink.split.i.i.i.i.i144_crit_edge ], [ 1, %if.else.i.i.i.i.i142.if.end15.sink.split.i.i.i.i.i144_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcnt4.i, i32 noundef %.sink.i.i.i.i.i143) #10
  br label %__cxgbi_sock_get.exit145

__cxgbi_sock_get.exit145:                         ; preds = %if.end15.sink.split.i.i.i.i.i144, %if.else.i.i.i.i.i142.__cxgbi_sock_get.exit145_crit_edge
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef 40, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #10
  %tobool.not.i146 = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i146, label %if.then36, label %if.then.i147

if.then.i147:                                     ; preds = %__cxgbi_sock_get.exit145
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 7
  %82 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %tobool.i.not.i.i = icmp eq i32 %83, 0
  br i1 %tobool.i.not.i.i, label %if.end37, label %do.body3.i.i, !prof !385

do.body3.i.i:                                     ; preds = %if.then.i147
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #10, !srcloc !390
  unreachable

if.then36:                                        ; preds = %__cxgbi_sock_get.exit145
  call void @__sanitizer_cov_trace_pc() #12
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54, i32 noundef 40, i32 noundef 0) #13
  %84 = ptrtoint ptr %atid to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %atid, align 4
  %call62 = tail call ptr @cxgb3_free_atid(ptr noundef %5, i32 noundef %85) #10
  br label %put_sock

if.end37:                                         ; preds = %if.then.i147
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %86 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %tail.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %87, i32 40
  store ptr %add.ptr.i.i, ptr %tail.i.i, align 8
  %len9.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 6
  %88 = ptrtoint ptr %len9.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %len9.i.i, align 4
  %add.i.i = add i32 %89, 40
  store i32 %add.i.i, ptr %len9.i.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 18
  %90 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %head.i, align 8
  %92 = call ptr @memset(ptr %91, i32 0, i32 40)
  %93 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 1
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %csk, ptr %93, align 4
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3
  %95 = ptrtoint ptr %cb.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr @act_open_arp_failure, ptr %cb.i, align 8
  %96 = load i32, ptr @cxgb3i_snd_win, align 4
  %snd_win = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 46
  %97 = ptrtoint ptr %snd_win to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %96, ptr %snd_win, align 4
  %98 = load i32, ptr @cxgb3i_rcv_win, align 4
  %rcv_win = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 47
  %99 = ptrtoint ptr %rcv_win to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %98, ptr %rcv_win, align 4
  %l4opt = getelementptr inbounds %struct.t3cdev, ptr %5, i32 0, i32 12
  %100 = ptrtoint ptr %l4opt to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %l4opt, align 4
  %max_wrs = getelementptr inbounds %struct.t3c_data, ptr %101, i32 0, i32 3
  %102 = ptrtoint ptr %max_wrs to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %max_wrs, align 16
  %sub = add i32 %103, -1
  %wr_cred = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 14
  %104 = ptrtoint ptr %wr_cred to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %sub, ptr %wr_cred, align 4
  %wr_max_cred = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 13
  %105 = ptrtoint ptr %wr_max_cred to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %sub, ptr %wr_max_cred, align 4
  %wr_una_cred = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 15
  %106 = ptrtoint ptr %wr_una_cred to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 0, ptr %wr_una_cred, align 4
  %ops.i = getelementptr inbounds %struct.dst_entry, ptr %1, i32 0, i32 1
  %107 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %ops.i, align 4
  %mtu.i = getelementptr inbounds %struct.dst_ops, ptr %108, i32 0, i32 5
  %109 = ptrtoint ptr %mtu.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %mtu.i, align 4
  %call.i149 = tail call i32 %110(ptr noundef %1) #10
  %call39 = tail call i32 @cxgbi_sock_select_mss(ptr noundef %csk, i32 noundef %call.i149) #10
  %mss_idx = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 10
  %111 = ptrtoint ptr %mss_idx to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %call39, ptr %mss_idx, align 4
  %wr_pending_tail.i = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 21
  %112 = ptrtoint ptr %wr_pending_tail.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr null, ptr %wr_pending_tail.i, align 4
  %wr_pending_head.i = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 20
  %113 = ptrtoint ptr %wr_pending_head.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr null, ptr %wr_pending_head.i, align 4
  %err = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 37
  %114 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 0, ptr %err, align 4
  %115 = load i32, ptr @dbg_level, align 4
  %and41 = and i32 %115, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %if.end37.do.end59_crit_edge, label %do.end46

if.end37.do.end59_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end59

do.end46:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  %state48 = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 28
  %116 = ptrtoint ptr %state48 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %state48, align 4
  %118 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %flags.i, align 4
  %sin_addr50 = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 30, i32 0, i32 2
  %sin_port = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 30, i32 0, i32 1
  %120 = ptrtoint ptr %sin_port to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %sin_port, align 2
  %conv = zext i16 %121 to i32
  %sin_port54 = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 31, i32 0, i32 1
  %122 = ptrtoint ptr %sin_port54 to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %sin_port54, align 2
  %conv55 = zext i16 %123 to i32
  %call56 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.138, ptr noundef nonnull @.str.130, ptr noundef %csk, i32 noundef %117, i32 noundef %119, ptr noundef %sin_addr50, i32 noundef %conv, ptr noundef %sin_addr13, i32 noundef %conv55) #13
  br label %do.end59

do.end59:                                         ; preds = %do.end46, %if.end37.do.end59_crit_edge
  %124 = load i32, ptr @dbg_level, align 4
  %and.i150 = and i32 %124, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i150)
  %tobool.not.i151 = icmp eq i32 %and.i150, 0
  br i1 %tobool.not.i151, label %do.end59.cxgbi_sock_set_state.exit_crit_edge, label %do.end.i154

do.end59.cxgbi_sock_set_state.exit_crit_edge:     ; preds = %do.end59
  call void @__sanitizer_cov_trace_pc() #12
  br label %cxgbi_sock_set_state.exit

do.end.i154:                                      ; preds = %do.end59
  call void @__sanitizer_cov_trace_pc() #12
  %state2.i = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 28
  %125 = ptrtoint ptr %state2.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %state2.i, align 4
  %127 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %flags.i, align 4
  %call.i153 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, ptr noundef %csk, i32 noundef %126, i32 noundef %128, i32 noundef 2) #13
  br label %cxgbi_sock_set_state.exit

cxgbi_sock_set_state.exit:                        ; preds = %do.end.i154, %do.end59.cxgbi_sock_set_state.exit_crit_edge
  %state4.i = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 28
  %129 = ptrtoint ptr %state4.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 2, ptr %state4.i, align 4
  %130 = ptrtoint ptr %l2t to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %l2t, align 4
  tail call fastcc void @send_act_open_req(ptr noundef %csk, ptr noundef nonnull %call.i.i, ptr noundef %131)
  br label %cleanup

put_sock:                                         ; preds = %if.then36, %do.end30
  %ret.0 = phi i32 [ -22, %do.end30 ], [ -12, %if.then36 ]
  tail call fastcc void @__cxgbi_sock_put(ptr noundef nonnull @.str.130, ptr noundef %csk)
  %132 = ptrtoint ptr %l2t to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %l2t, align 4
  tail call fastcc void @l2t_release(ptr noundef %5, ptr noundef %133)
  %134 = ptrtoint ptr %l2t to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr null, ptr %l2t, align 4
  br label %cleanup

cleanup:                                          ; preds = %put_sock, %cxgbi_sock_set_state.exit, %do.end21
  %retval.0 = phi i32 [ %ret.0, %put_sock ], [ 0, %cxgbi_sock_set_state.exit ], [ -22, %do.end21 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cxgbi_sock_free_cpl_skbs(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @cxgbi_sock_purge_wr_queue(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @cxgb3_remove_tid(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @l2t_release(ptr noundef %t, ptr noundef %e) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %0 = tail call i32 @llvm.read_register.i32(metadata !373) #10
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !393
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.120, i32 noundef 696, ptr noundef nonnull @.str.121) #10
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %l2opt = getelementptr inbounds %struct.t3cdev, ptr %t, i32 0, i32 10
  %4 = ptrtoint ptr %l2opt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %l2opt, align 4
  %call = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end7_crit_edge

rcu_read_lock.exit.do.end7_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b16 = load i1, ptr @l2t_release.__warned, align 1
  br i1 %.b16, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @l2t_release.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.118, i32 noundef 134, ptr noundef nonnull @.str.119) #10
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %rcu_read_lock.exit.do.end7_crit_edge
  %refcnt = getelementptr inbounds %struct.l2t_entry, ptr %e, i32 0, i32 11
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !394
  tail call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #10
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 1, ptr elementtype(i32) %refcnt) #10, !srcloc !395
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %6, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !396
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp ne i32 %asmresult.i.i.i.i.i, 0
  %tobool11.not = icmp eq ptr %5, null
  %or.cond = select i1 %cmp.i.i, i1 true, i1 %tobool11.not
  br i1 %or.cond, label %do.end7.if.end13_crit_edge, label %if.then12

do.end7.if.end13_crit_edge:                       ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.then12:                                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @t3_l2e_free(ptr noundef nonnull %5, ptr noundef %e) #10
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %do.end7.if.end13_crit_edge
  %call.i17 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i17, label %if.end13.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i20

if.end13.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i20:                                ; preds = %if.end13
  %call1.i18 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i18)
  %tobool.not.i19 = icmp eq i32 %call1.i18, 0
  br i1 %tobool.not.i19, label %land.lhs.true.i20.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i22

land.lhs.true.i20.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i20
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i22:                               ; preds = %land.lhs.true.i20
  %.b4.i21 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i21, label %land.lhs.true2.i22.rcu_read_unlock.exit_crit_edge, label %if.then.i23

land.lhs.true2.i22.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i22
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i23:                                      ; preds = %land.lhs.true2.i22
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.120, i32 noundef 724, ptr noundef nonnull @.str.122) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i23, %land.lhs.true2.i22.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i20.rcu_read_unlock.exit_crit_edge, %if.end13.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !397
  %7 = tail call i32 @llvm.read_register.i32(metadata !373) #10
  %and.i.i.i.i.i24 = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i24 to ptr
  %preempt_count.i.i.i.i25 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i.i.i25 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i.i.i25, align 4
  %sub.i.i.i = add i32 %10, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i25, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @t3_l2e_free(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #0

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @cxgbi_sock_skb_entail(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @t3_l2t_get(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxgb3_alloc_atid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxgbi_sock_select_mss(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsi_queuecommand(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsi_eh_abort(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsi_eh_device_reset(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsi_eh_recover_target(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsi_target_alloc(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_change_queue_depth(ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsi_eh_cmd_timed_out(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cxgbi_create_session(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @cxgbi_destroy_session(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cxgbi_create_conn(ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @iscsi_conn_unbind(ptr noundef, i1 noundef zeroext) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxgbi_bind_conn(ptr noundef, ptr noundef, i64 noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsi_conn_start(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @iscsi_conn_stop(ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @iscsi_tcp_conn_teardown(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxgbi_set_conn_param(ptr noundef, i32 noundef, ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxgbi_get_ep_param(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsi_conn_get_param(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsi_session_get_param(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxgbi_get_host_param(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxgbi_set_host_param(ptr noundef, i32 noundef, ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsi_conn_send_pdu(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @cxgbi_get_conn_stats(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsi_tcp_task_init(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsi_tcp_task_xmit(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @cxgbi_cleanup_task(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxgbi_conn_alloc_pdu(ptr noundef, i8 noundef zeroext) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxgbi_conn_xmit_pdu(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxgbi_conn_init_pdu(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @cxgbi_parse_pdu_itt(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @iscsi_session_recovery_timedout(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cxgbi_ep_connect(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxgbi_ep_poll(ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @cxgbi_ep_disconnect(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @cxgbi_attr_is_visible(i32 noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxgbi_iscsi_init(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @cxgb3_register_client(ptr noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 172)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 172)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind readonly }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !13, !15, !16, !18, !20, !21, !23, !25, !26, !28, !30, !31, !33, !35, !36, !38, !40, !41, !43, !45, !47, !49, !51, !53, !54, !55, !57, !58, !60, !61, !63, !64, !66, !67, !69, !71, !72, !73, !74, !75, !77, !78, !79, !81, !82, !83, !84, !85, !87, !88, !89, !90, !92, !93, !94, !95, !97, !98, !99, !101, !102, !103, !104, !106, !107, !108, !109, !111, !112, !113, !114, !116, !117, !118, !119, !121, !122, !123, !124, !126, !127, !128, !129, !131, !132, !133, !135, !136, !137, !139, !140, !141, !143, !144, !145, !147, !148, !149, !151, !152, !153, !155, !157, !158, !159, !160, !162, !163, !164, !165, !167, !168, !169, !170, !172, !173, !174, !176, !177, !178, !179, !181, !182, !183, !184, !186, !187, !188, !189, !191, !192, !193, !195, !197, !198, !199, !200, !202, !203, !204, !206, !207, !208, !210, !211, !212, !214, !216, !218, !220, !221, !222, !223, !225, !227, !228, !229, !230, !232, !233, !234, !236, !237, !238, !240, !241, !242, !244, !245, !246, !248, !249, !250, !251, !253, !254, !255, !257, !258, !259, !261, !262, !263, !265, !266, !267, !268, !269, !271, !272, !273, !274, !276, !277, !278, !279, !281, !282, !283, !284, !286, !287, !288, !290, !291, !292, !293, !295, !296, !297, !299, !300, !301, !303, !305, !306, !307, !309, !310, !311, !313, !314, !316, !317, !318, !320, !321, !322, !323, !325, !326, !327, !329, !330, !331, !332, !334, !335, !336, !338, !339, !340, !342, !343, !344, !346, !347, !348, !349, !351, !352, !354, !356, !357, !358, !359, !361, !362, !363, !364, !366, !368, !369, !370, !371}
!llvm.named.register.sp = !{!373}
!llvm.module.flags = !{!374, !375, !376, !377, !378, !379, !380, !381}
!llvm.ident = !{!382}

!0 = !{ptr @__UNIQUE_ID_author632, !1, !"__UNIQUE_ID_author632", i1 false, i1 false}
!1 = !{!"../drivers/scsi/cxgbi/cxgb3i/cxgb3i.c", i32 42, i32 1}
!2 = !{ptr @__UNIQUE_ID_description633, !3, !"__UNIQUE_ID_description633", i1 false, i1 false}
!3 = !{!"../drivers/scsi/cxgbi/cxgb3i/cxgb3i.c", i32 43, i32 1}
!4 = !{ptr @__UNIQUE_ID_version634, !5, !"__UNIQUE_ID_version634", i1 false, i1 false}
!5 = !{!"../drivers/scsi/cxgbi/cxgb3i/cxgb3i.c", i32 44, i32 1}
!6 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @__modver_attr, !5, !"__modver_attr", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_file635, !11, !"__UNIQUE_ID_file635", i1 false, i1 false}
!11 = !{!"../drivers/scsi/cxgbi/cxgb3i/cxgb3i.c", i32 45, i32 1}
!12 = !{ptr @__UNIQUE_ID_license636, !11, !"__UNIQUE_ID_license636", i1 false, i1 false}
!13 = !{ptr @__param_dbg_level, !14, !"__param_dbg_level", i1 false, i1 false}
!14 = !{!"../drivers/scsi/cxgbi/cxgb3i/cxgb3i.c", i32 47, i32 1}
!15 = !{ptr @__UNIQUE_ID_dbg_leveltype637, !14, !"__UNIQUE_ID_dbg_leveltype637", i1 false, i1 false}
!16 = !{ptr @__UNIQUE_ID_dbg_level638, !17, !"__UNIQUE_ID_dbg_level638", i1 false, i1 false}
!17 = !{!"../drivers/scsi/cxgbi/cxgb3i/cxgb3i.c", i32 48, i32 1}
!18 = !{ptr @__param_cxgb3i_rcv_win, !19, !"__param_cxgb3i_rcv_win", i1 false, i1 false}
!19 = !{!"../drivers/scsi/cxgbi/cxgb3i/cxgb3i.c", i32 51, i32 1}
!20 = !{ptr @__UNIQUE_ID_cxgb3i_rcv_wintype639, !19, !"__UNIQUE_ID_cxgb3i_rcv_wintype639", i1 false, i1 false}
!21 = !{ptr @__UNIQUE_ID_cxgb3i_rcv_win640, !22, !"__UNIQUE_ID_cxgb3i_rcv_win640", i1 false, i1 false}
!22 = !{!"../drivers/scsi/cxgbi/cxgb3i/cxgb3i.c", i32 52, i32 1}
!23 = !{ptr @__param_cxgb3i_snd_win, !24, !"__param_cxgb3i_snd_win", i1 false, i1 false}
!24 = !{!"../drivers/scsi/cxgbi/cxgb3i/cxgb3i.c", i32 55, i32 1}
!25 = !{ptr @__UNIQUE_ID_cxgb3i_snd_wintype641, !24, !"__UNIQUE_ID_cxgb3i_snd_wintype641", i1 false, i1 false}
!26 = !{ptr @__UNIQUE_ID_cxgb3i_snd_win642, !27, !"__UNIQUE_ID_cxgb3i_snd_win642", i1 false, i1 false}
!27 = !{!"../drivers/scsi/cxgbi/cxgb3i/cxgb3i.c", i32 56, i32 1}
!28 = !{ptr @__param_cxgb3i_rx_credit_thres, !29, !"__param_cxgb3i_rx_credit_thres", i1 false, i1 false}
!29 = !{!"../drivers/scsi/cxgbi/cxgb3i/cxgb3i.c", i32 59, i32 1}
!30 = !{ptr @__UNIQUE_ID_cxgb3i_rx_credit_threstype643, !29, !"__UNIQUE_ID_cxgb3i_rx_credit_threstype643", i1 false, i1 false}
!31 = !{ptr @__UNIQUE_ID_cxgb3i_rx_credit_thres644, !32, !"__UNIQUE_ID_cxgb3i_rx_credit_thres644", i1 false, i1 false}
!32 = !{!"../drivers/scsi/cxgbi/cxgb3i/cxgb3i.c", i32 60, i32 1}
!33 = !{ptr @__param_cxgb3i_max_connect, !34, !"__param_cxgb3i_max_connect", i1 false, i1 false}
!34 = !{!"../drivers/scsi/cxgbi/cxgb3i/cxgb3i.c", i32 64, i32 1}
!35 = !{ptr @__UNIQUE_ID_cxgb3i_max_connecttype645, !34, !"__UNIQUE_ID_cxgb3i_max_connecttype645", i1 false, i1 false}
!36 = !{ptr @__UNIQUE_ID_cxgb3i_max_connect646, !37, !"__UNIQUE_ID_cxgb3i_max_connect646", i1 false, i1 false}
!37 = !{!"../drivers/scsi/cxgbi/cxgb3i/cxgb3i.c", i32 65, i32 1}
!38 = !{ptr @__param_cxgb3i_sport_base, !39, !"__param_cxgb3i_sport_base", i1 false, i1 false}
!39 = !{!"../drivers/scsi/cxgbi/cxgb3i/cxgb3i.c", i32 68, i32 1}
!40 = !{ptr @__UNIQUE_ID_cxgb3i_sport_basetype647, !39, !"__UNIQUE_ID_cxgb3i_sport_basetype647", i1 false, i1 false}
!41 = !{ptr @__UNIQUE_ID_cxgb3i_sport_base648, !42, !"__UNIQUE_ID_cxgb3i_sport_base648", i1 false, i1 false}
!42 = !{!"../drivers/scsi/cxgbi/cxgb3i/cxgb3i.c", i32 69, i32 1}
!43 = !{ptr @cxgb3i_cpl_handlers, !44, !"cxgb3i_cpl_handlers", i1 false, i1 false}
!44 = !{!"../drivers/scsi/cxgbi/cxgb3i/cxgb3i.c", i32 1023, i32 24}
!45 = !{ptr @__initcall__kmod_cxgb3i__653_1413_cxgb3i_init_module6, !46, !"__initcall__kmod_cxgb3i__653_1413_cxgb3i_init_module6", i1 false, i1 false}
!46 = !{!"../drivers/scsi/cxgbi/cxgb3i/cxgb3i.c", i32 1413, i32 1}
!47 = !{ptr @__exitcall_cxgb3i_exit_module, !48, !"__exitcall_cxgb3i_exit_module", i1 false, i1 false}
!48 = !{!"../drivers/scsi/cxgbi/cxgb3i/cxgb3i.c", i32 1414, i32 1}
!49 = !{ptr @dbg_level, !50, !"dbg_level", i1 false, i1 false}
!50 = !{!"../drivers/scsi/cxgbi/cxgb3i/cxgb3i.c", i32 30, i32 21}
!51 = !{ptr @cxgb3i_stt, !52, !"cxgb3i_stt", i1 false, i1 false}
!52 = !{!"../drivers/scsi/cxgbi/cxgb3i/cxgb3i.c", i32 147, i32 40}
!53 = !{ptr @__param_str_dbg_level, !14, !"__param_str_dbg_level", i1 false, i1 false}
!54 = !{ptr @__param_str_cxgb3i_rcv_win, !19, !"__param_str_cxgb3i_rcv_win", i1 false, i1 false}
!55 = !{ptr @cxgb3i_rcv_win, !56, !"cxgb3i_rcv_win", i1 false, i1 false}
!56 = !{!"../drivers/scsi/cxgbi/cxgb3i/cxgb3i.c", i32 50, i32 12}
!57 = !{ptr @__param_str_cxgb3i_snd_win, !24, !"__param_str_cxgb3i_snd_win", i1 false, i1 false}
!58 = !{ptr @cxgb3i_snd_win, !59, !"cxgb3i_snd_win", i1 false, i1 false}
!59 = !{!"../drivers/scsi/cxgbi/cxgb3i/cxgb3i.c", i32 54, i32 12}
!60 = !{ptr @__param_str_cxgb3i_rx_credit_thres, !29, !"__param_str_cxgb3i_rx_credit_thres", i1 false, i1 false}
!61 = !{ptr @cxgb3i_rx_credit_thres, !62, !"cxgb3i_rx_credit_thres", i1 false, i1 false}
!62 = !{!"../drivers/scsi/cxgbi/cxgb3i/cxgb3i.c", i32 58, i32 12}
!63 = !{ptr @__param_str_cxgb3i_max_connect, !34, !"__param_str_cxgb3i_max_connect", i1 false, i1 false}
!64 = !{ptr @cxgb3i_max_connect, !65, !"cxgb3i_max_connect", i1 false, i1 false}
!65 = !{!"../drivers/scsi/cxgbi/cxgb3i/cxgb3i.c", i32 63, i32 21}
!66 = !{ptr @__param_str_cxgb3i_sport_base, !39, !"__param_str_cxgb3i_sport_base", i1 false, i1 false}
!67 = !{ptr @cxgb3i_sport_base, !68, !"cxgb3i_sport_base", i1 false, i1 false}
!68 = !{!"../drivers/scsi/cxgbi/cxgb3i/cxgb3i.c", i32 67, i32 21}
!69 = !{ptr @.str.3, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/scsi/cxgbi/cxgb3i/cxgb3i.c", i32 609, i32 2}
!71 = !{ptr @.str.4, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.5, !70, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @do_peer_close._entry, !70, !"_entry", i1 false, i1 false}
!74 = !{ptr @do_peer_close._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.6, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/scsi/cxgbi/cxgb3i/cxgb3i.c", i32 666, i32 2}
!77 = !{ptr @do_abort_req._entry, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @do_abort_req._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.7, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/scsi/cxgbi/cxgb3i/../libcxgbi.h", i32 332, i32 2}
!81 = !{ptr @.str.8, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @.str.9, !80, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @__cxgbi_sock_get._entry, !80, !"_entry", i1 false, i1 false}
!84 = !{ptr @__cxgbi_sock_get._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.10, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/scsi/cxgbi/cxgb3i/../libcxgbi.h", i32 278, i32 2}
!87 = !{ptr @.str.11, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @cxgbi_sock_set_flag._entry, !86, !"_entry", i1 false, i1 false}
!89 = !{ptr @cxgbi_sock_set_flag._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.12, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/scsi/cxgbi/cxgb3i/../libcxgbi.h", i32 302, i32 2}
!92 = !{ptr @.str.13, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @cxgbi_sock_set_state._entry, !91, !"_entry", i1 false, i1 false}
!94 = !{ptr @cxgbi_sock_set_state._entry_ptr, !91, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.14, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/scsi/cxgbi/cxgb3i/../libcxgbi.h", i32 287, i32 2}
!97 = !{ptr @cxgbi_sock_clear_flag._entry, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @cxgbi_sock_clear_flag._entry_ptr, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.15, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/scsi/cxgbi/cxgb3i/cxgb3i.c", i32 280, i32 2}
!101 = !{ptr @.str.16, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @send_abort_rpl._entry, !100, !"_entry", i1 false, i1 false}
!103 = !{ptr @send_abort_rpl._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.17, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/scsi/cxgbi/cxgb3i/../libcxgbi.h", i32 323, i32 2}
!106 = !{ptr @.str.18, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @__cxgbi_sock_put._entry, !105, !"_entry", i1 false, i1 false}
!108 = !{ptr @__cxgbi_sock_put._entry_ptr, !105, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.19, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/scsi/cxgbi/cxgb3i/../libcxgbi.h", i32 314, i32 3}
!111 = !{ptr @.str.20, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @cxgbi_sock_free._entry, !110, !"_entry", i1 false, i1 false}
!113 = !{ptr @cxgbi_sock_free._entry_ptr, !110, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.21, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/scsi/cxgbi/cxgb3i/cxgb3i.c", i32 712, i32 2}
!116 = !{ptr @.str.22, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @do_abort_rpl._entry, !115, !"_entry", i1 false, i1 false}
!118 = !{ptr @do_abort_rpl._entry_ptr, !115, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.23, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/scsi/cxgbi/cxgb3i/cxgb3i.c", i32 628, i32 2}
!121 = !{ptr @.str.24, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @do_close_con_rpl._entry, !120, !"_entry", i1 false, i1 false}
!123 = !{ptr @do_close_con_rpl._entry_ptr, !120, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.25, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/scsi/cxgbi/cxgb3i/cxgb3i.c", i32 753, i32 2}
!126 = !{ptr @.str.26, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @do_iscsi_hdr._entry, !125, !"_entry", i1 false, i1 false}
!128 = !{ptr @do_iscsi_hdr._entry_ptr, !125, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.28, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/scsi/cxgbi/cxgb3i/cxgb3i.c", i32 760, i32 3}
!131 = !{ptr @do_iscsi_hdr._entry.27, !130, !"_entry", i1 false, i1 false}
!132 = !{ptr @do_iscsi_hdr._entry_ptr.29, !130, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.31, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/scsi/cxgbi/cxgb3i/cxgb3i.c", i32 778, i32 3}
!135 = !{ptr @do_iscsi_hdr._entry.30, !134, !"_entry", i1 false, i1 false}
!136 = !{ptr @do_iscsi_hdr._entry_ptr.32, !134, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.34, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/scsi/cxgbi/cxgb3i/cxgb3i.c", i32 788, i32 3}
!139 = !{ptr @do_iscsi_hdr._entry.33, !138, !"_entry", i1 false, i1 false}
!140 = !{ptr @do_iscsi_hdr._entry_ptr.35, !138, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.37, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/scsi/cxgbi/cxgb3i/cxgb3i.c", i32 799, i32 2}
!143 = !{ptr @do_iscsi_hdr._entry.36, !142, !"_entry", i1 false, i1 false}
!144 = !{ptr @do_iscsi_hdr._entry_ptr.38, !142, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.40, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/scsi/cxgbi/cxgb3i/cxgb3i.c", i32 813, i32 4}
!147 = !{ptr @do_iscsi_hdr._entry.39, !146, !"_entry", i1 false, i1 false}
!148 = !{ptr @do_iscsi_hdr._entry_ptr.41, !146, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.43, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/scsi/cxgbi/cxgb3i/cxgb3i.c", i32 819, i32 3}
!151 = !{ptr @do_iscsi_hdr._entry.42, !150, !"_entry", i1 false, i1 false}
!152 = !{ptr @do_iscsi_hdr._entry_ptr.44, !150, !"_entry_ptr", i1 false, i1 false}
!153 = distinct !{null, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../include/linux/skbuff.h", i32 2789, i32 6}
!155 = !{ptr @.str.46, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/scsi/cxgbi/cxgb3i/cxgb3i.c", i32 262, i32 2}
!157 = !{ptr @.str.47, !156, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @send_abort_req._entry, !156, !"_entry", i1 false, i1 false}
!159 = !{ptr @send_abort_req._entry_ptr, !156, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @.str.48, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/scsi/cxgbi/cxgb3i/cxgb3i.c", i32 232, i32 2}
!162 = !{ptr @.str.49, !161, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @abort_arp_failure._entry, !161, !"_entry", i1 false, i1 false}
!164 = !{ptr @abort_arp_failure._entry_ptr, !161, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @.str.50, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/scsi/cxgbi/cxgb3i/cxgb3i.c", i32 575, i32 2}
!167 = !{ptr @.str.51, !166, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @do_act_open_rpl._entry, !166, !"_entry", i1 false, i1 false}
!169 = !{ptr @do_act_open_rpl._entry_ptr, !166, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.52, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/scsi/cxgbi/cxgb3i/cxgb3i.c", i32 552, i32 2}
!172 = !{ptr @act_open_retry_timer._entry, !171, !"_entry", i1 false, i1 false}
!173 = !{ptr @act_open_retry_timer._entry_ptr, !171, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @.str.53, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/scsi/cxgbi/cxgb3i/../libcxgbi.h", i32 374, i32 3}
!176 = !{ptr @.str.54, !175, !"<string literal>", i1 false, i1 false}
!177 = !{ptr @alloc_wr._entry, !175, !"_entry", i1 false, i1 false}
!178 = !{ptr @alloc_wr._entry_ptr, !175, !"_entry_ptr", i1 false, i1 false}
!179 = !{ptr @.str.55, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/scsi/cxgbi/cxgb3i/cxgb3i.c", i32 179, i32 2}
!181 = !{ptr @.str.56, !180, !"<string literal>", i1 false, i1 false}
!182 = !{ptr @send_act_open_req._entry, !180, !"_entry", i1 false, i1 false}
!183 = !{ptr @send_act_open_req._entry_ptr, !180, !"_entry_ptr", i1 false, i1 false}
!184 = !{ptr @.str.57, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/scsi/cxgbi/cxgb3i/cxgb3i.c", i32 482, i32 2}
!186 = !{ptr @.str.58, !185, !"<string literal>", i1 false, i1 false}
!187 = !{ptr @do_act_establish._entry, !185, !"_entry", i1 false, i1 false}
!188 = !{ptr @do_act_establish._entry_ptr, !185, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @.str.60, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/scsi/cxgbi/cxgb3i/cxgb3i.c", i32 502, i32 3}
!191 = !{ptr @do_act_establish._entry.59, !190, !"_entry", i1 false, i1 false}
!192 = !{ptr @do_act_establish._entry_ptr.61, !190, !"_entry_ptr", i1 false, i1 false}
!193 = !{ptr @__func__.free_atid, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/scsi/cxgbi/cxgb3i/cxgb3i.c", i32 470, i32 3}
!195 = !{ptr @.str.62, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/scsi/cxgbi/cxgb3i/cxgb3i.c", i32 400, i32 4}
!197 = !{ptr @.str.63, !196, !"<string literal>", i1 false, i1 false}
!198 = !{ptr @push_tx_frames._entry, !196, !"_entry", i1 false, i1 false}
!199 = !{ptr @push_tx_frames._entry_ptr, !196, !"_entry_ptr", i1 false, i1 false}
!200 = !{ptr @.str.65, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/scsi/cxgbi/cxgb3i/cxgb3i.c", i32 417, i32 4}
!202 = !{ptr @push_tx_frames._entry.64, !201, !"_entry", i1 false, i1 false}
!203 = !{ptr @push_tx_frames._entry_ptr.66, !201, !"_entry_ptr", i1 false, i1 false}
!204 = !{ptr @.str.68, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/scsi/cxgbi/cxgb3i/cxgb3i.c", i32 431, i32 3}
!206 = !{ptr @push_tx_frames._entry.67, !205, !"_entry", i1 false, i1 false}
!207 = !{ptr @push_tx_frames._entry_ptr.69, !205, !"_entry_ptr", i1 false, i1 false}
!208 = !{ptr @.str.71, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/scsi/cxgbi/cxgb3i/cxgb3i.c", i32 450, i32 3}
!210 = !{ptr @push_tx_frames._entry.70, !209, !"_entry", i1 false, i1 false}
!211 = !{ptr @push_tx_frames._entry_ptr.72, !209, !"_entry_ptr", i1 false, i1 false}
!212 = !{ptr @skb_wrs, !213, !"skb_wrs", i1 false, i1 false}
!213 = !{!"../drivers/scsi/cxgbi/cxgb3i/cxgb3i.c", i32 333, i32 21}
!214 = !{ptr @wrlen, !215, !"wrlen", i1 false, i1 false}
!215 = !{!"../drivers/scsi/cxgbi/cxgb3i/cxgb3i.c", i32 332, i32 21}
!216 = !{ptr @ulp2_extra_len, !217, !"ulp2_extra_len", i1 false, i1 false}
!217 = !{!"../drivers/scsi/cxgbi/cxgb3i/../libcxgbi.h", i32 92, i32 27}
!218 = !{ptr @.str.73, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/scsi/cxgbi/cxgb3i/cxgb3i.c", i32 852, i32 2}
!220 = !{ptr @.str.74, !219, !"<string literal>", i1 false, i1 false}
!221 = !{ptr @do_wr_ack._entry, !219, !"_entry", i1 false, i1 false}
!222 = !{ptr @do_wr_ack._entry_ptr, !219, !"_entry_ptr", i1 false, i1 false}
!223 = !{ptr @t3_client, !224, !"t3_client", i1 false, i1 false}
!224 = !{!"../drivers/scsi/cxgbi/cxgb3i/cxgb3i.c", i32 75, i32 28}
!225 = !{ptr @.str.75, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/scsi/cxgbi/cxgb3i/cxgb3i.c", i32 1309, i32 3}
!227 = !{ptr @.str.76, !226, !"<string literal>", i1 false, i1 false}
!228 = !{ptr @cxgb3i_dev_open._entry, !226, !"_entry", i1 false, i1 false}
!229 = !{ptr @cxgb3i_dev_open._entry_ptr, !226, !"_entry_ptr", i1 false, i1 false}
!230 = !{ptr @.str.78, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/scsi/cxgbi/cxgb3i/cxgb3i.c", i32 1315, i32 3}
!232 = !{ptr @cxgb3i_dev_open._entry.77, !231, !"_entry", i1 false, i1 false}
!233 = !{ptr @cxgb3i_dev_open._entry_ptr.79, !231, !"_entry_ptr", i1 false, i1 false}
!234 = !{ptr @.str.81, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/scsi/cxgbi/cxgb3i/cxgb3i.c", i32 1333, i32 3}
!236 = !{ptr @cxgb3i_dev_open._entry.80, !235, !"_entry", i1 false, i1 false}
!237 = !{ptr @cxgb3i_dev_open._entry_ptr.82, !235, !"_entry_ptr", i1 false, i1 false}
!238 = !{ptr @.str.84, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/scsi/cxgbi/cxgb3i/cxgb3i.c", i32 1339, i32 3}
!240 = !{ptr @cxgb3i_dev_open._entry.83, !239, !"_entry", i1 false, i1 false}
!241 = !{ptr @cxgb3i_dev_open._entry_ptr.85, !239, !"_entry_ptr", i1 false, i1 false}
!242 = !{ptr @.str.87, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/scsi/cxgbi/cxgb3i/cxgb3i.c", i32 1352, i32 2}
!244 = !{ptr @cxgb3i_dev_open._entry.86, !243, !"_entry", i1 false, i1 false}
!245 = !{ptr @cxgb3i_dev_open._entry_ptr.88, !243, !"_entry_ptr", i1 false, i1 false}
!246 = !{ptr @.str.89, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/scsi/cxgbi/cxgb3i/cxgb3i.c", i32 1232, i32 3}
!248 = !{ptr @.str.90, !247, !"<string literal>", i1 false, i1 false}
!249 = !{ptr @cxgb3i_ddp_init._entry, !247, !"_entry", i1 false, i1 false}
!250 = !{ptr @cxgb3i_ddp_init._entry_ptr, !247, !"_entry_ptr", i1 false, i1 false}
!251 = !{ptr @.str.92, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/scsi/cxgbi/cxgb3i/cxgb3i.c", i32 1237, i32 3}
!253 = !{ptr @cxgb3i_ddp_init._entry.91, !252, !"_entry", i1 false, i1 false}
!254 = !{ptr @cxgb3i_ddp_init._entry_ptr.93, !252, !"_entry_ptr", i1 false, i1 false}
!255 = !{ptr @.str.95, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/scsi/cxgbi/cxgb3i/cxgb3i.c", i32 1245, i32 2}
!257 = !{ptr @cxgb3i_ddp_init._entry.94, !256, !"_entry", i1 false, i1 false}
!258 = !{ptr @cxgb3i_ddp_init._entry_ptr.96, !256, !"_entry_ptr", i1 false, i1 false}
!259 = !{ptr @.str.98, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/scsi/cxgbi/cxgb3i/cxgb3i.c", i32 1266, i32 4}
!261 = !{ptr @cxgb3i_ddp_init._entry.97, !260, !"_entry", i1 false, i1 false}
!262 = !{ptr @cxgb3i_ddp_init._entry_ptr.99, !260, !"_entry_ptr", i1 false, i1 false}
!263 = !{ptr @.str.100, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/net/ethernet/chelsio/libcxgb/libcxgb_ppm.h", i32 309, i32 2}
!265 = !{ptr @.str.101, !264, !"<string literal>", i1 false, i1 false}
!266 = !{ptr @.str.102, !264, !"<string literal>", i1 false, i1 false}
!267 = !{ptr @cxgbi_tagmask_check._entry, !264, !"_entry", i1 false, i1 false}
!268 = !{ptr @cxgbi_tagmask_check._entry_ptr, !264, !"_entry_ptr", i1 false, i1 false}
!269 = !{ptr @.str.103, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/scsi/cxgbi/cxgb3i/cxgb3i.c", i32 1196, i32 2}
!271 = !{ptr @.str.104, !270, !"<string literal>", i1 false, i1 false}
!272 = !{ptr @ddp_setup_conn_digest._entry, !270, !"_entry", i1 false, i1 false}
!273 = !{ptr @ddp_setup_conn_digest._entry_ptr, !270, !"_entry_ptr", i1 false, i1 false}
!274 = !{ptr @.str.105, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/scsi/cxgbi/cxgb3i/cxgb3i.c", i32 1160, i32 2}
!276 = !{ptr @.str.106, !275, !"<string literal>", i1 false, i1 false}
!277 = !{ptr @ddp_setup_conn_pgidx._entry, !275, !"_entry", i1 false, i1 false}
!278 = !{ptr @ddp_setup_conn_pgidx._entry_ptr, !275, !"_entry_ptr", i1 false, i1 false}
!279 = !{ptr @.str.107, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/scsi/cxgbi/cxgb3i/cxgb3i.c", i32 1133, i32 2}
!281 = !{ptr @.str.108, !280, !"<string literal>", i1 false, i1 false}
!282 = !{ptr @ddp_clear_map._entry, !280, !"_entry", i1 false, i1 false}
!283 = !{ptr @ddp_clear_map._entry_ptr, !280, !"_entry_ptr", i1 false, i1 false}
!284 = !{ptr @.str.110, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/scsi/cxgbi/cxgb3i/cxgb3i.c", i32 1142, i32 4}
!286 = !{ptr @ddp_clear_map._entry.109, !285, !"_entry", i1 false, i1 false}
!287 = !{ptr @ddp_clear_map._entry_ptr.111, !285, !"_entry_ptr", i1 false, i1 false}
!288 = !{ptr @.str.112, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/scsi/cxgbi/cxgb3i/cxgb3i.c", i32 1049, i32 3}
!290 = !{ptr @.str.113, !289, !"<string literal>", i1 false, i1 false}
!291 = !{ptr @cxgb3i_ofld_init._entry, !289, !"_entry", i1 false, i1 false}
!292 = !{ptr @cxgb3i_ofld_init._entry_ptr, !289, !"_entry_ptr", i1 false, i1 false}
!293 = !{ptr @.str.115, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/scsi/cxgbi/cxgb3i/cxgb3i.c", i32 1070, i32 2}
!295 = !{ptr @cxgb3i_ofld_init._entry.114, !294, !"_entry", i1 false, i1 false}
!296 = !{ptr @cxgb3i_ofld_init._entry_ptr.116, !294, !"_entry_ptr", i1 false, i1 false}
!297 = !{ptr @.str.117, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/scsi/cxgbi/cxgb3i/cxgb3i.c", i32 907, i32 2}
!299 = !{ptr @release_offload_resources._entry, !298, !"_entry", i1 false, i1 false}
!300 = !{ptr @release_offload_resources._entry_ptr, !298, !"_entry_ptr", i1 false, i1 false}
!301 = !{ptr @__func__.l2t_put, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/scsi/cxgbi/cxgb3i/cxgb3i.c", i32 895, i32 3}
!303 = distinct !{null, !304, !"__warned", i1 false, i1 false}
!304 = !{!"../drivers/net/ethernet/chelsio/cxgb3/l2t.h", i32 134, i32 6}
!305 = !{ptr @.str.118, !304, !"<string literal>", i1 false, i1 false}
!306 = !{ptr @.str.119, !304, !"<string literal>", i1 false, i1 false}
!307 = distinct !{null, !308, !"__warned", i1 false, i1 false}
!308 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!309 = !{ptr @.str.120, !308, !"<string literal>", i1 false, i1 false}
!310 = !{ptr @.str.121, !308, !"<string literal>", i1 false, i1 false}
!311 = distinct !{null, !312, !"__warned", i1 false, i1 false}
!312 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!313 = !{ptr @.str.122, !312, !"<string literal>", i1 false, i1 false}
!314 = !{ptr @.str.123, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../drivers/scsi/cxgbi/cxgb3i/cxgb3i.c", i32 206, i32 2}
!316 = !{ptr @send_close_req._entry, !315, !"_entry", i1 false, i1 false}
!317 = !{ptr @send_close_req._entry_ptr, !315, !"_entry_ptr", i1 false, i1 false}
!318 = !{ptr @.str.124, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../drivers/scsi/cxgbi/cxgb3i/cxgb3i.c", i32 304, i32 2}
!320 = !{ptr @.str.125, !319, !"<string literal>", i1 false, i1 false}
!321 = !{ptr @send_rx_credits._entry, !319, !"_entry", i1 false, i1 false}
!322 = !{ptr @send_rx_credits._entry_ptr, !319, !"_entry_ptr", i1 false, i1 false}
!323 = !{ptr @.str.127, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../drivers/scsi/cxgbi/cxgb3i/cxgb3i.c", i32 310, i32 3}
!325 = !{ptr @send_rx_credits._entry.126, !324, !"_entry", i1 false, i1 false}
!326 = !{ptr @send_rx_credits._entry_ptr.128, !324, !"_entry_ptr", i1 false, i1 false}
!327 = !{ptr @.str.129, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../drivers/scsi/cxgbi/cxgb3i/cxgb3i.c", i32 962, i32 2}
!329 = !{ptr @.str.130, !328, !"<string literal>", i1 false, i1 false}
!330 = !{ptr @init_act_open._entry, !328, !"_entry", i1 false, i1 false}
!331 = !{ptr @init_act_open._entry_ptr, !328, !"_entry_ptr", i1 false, i1 false}
!332 = !{ptr @.str.132, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../drivers/scsi/cxgbi/cxgb3i/cxgb3i.c", i32 973, i32 3}
!334 = !{ptr @init_act_open._entry.131, !333, !"_entry", i1 false, i1 false}
!335 = !{ptr @init_act_open._entry_ptr.133, !333, !"_entry_ptr", i1 false, i1 false}
!336 = !{ptr @.str.135, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../drivers/scsi/cxgbi/cxgb3i/cxgb3i.c", i32 980, i32 3}
!338 = !{ptr @init_act_open._entry.134, !337, !"_entry", i1 false, i1 false}
!339 = !{ptr @init_act_open._entry_ptr.136, !337, !"_entry_ptr", i1 false, i1 false}
!340 = !{ptr @.str.138, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../drivers/scsi/cxgbi/cxgb3i/cxgb3i.c", i32 1003, i32 2}
!342 = !{ptr @init_act_open._entry.137, !341, !"_entry", i1 false, i1 false}
!343 = !{ptr @init_act_open._entry_ptr.139, !341, !"_entry_ptr", i1 false, i1 false}
!344 = !{ptr @.str.140, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../drivers/scsi/cxgbi/cxgb3i/cxgb3i.c", i32 937, i32 4}
!346 = !{ptr @.str.141, !345, !"<string literal>", i1 false, i1 false}
!347 = !{ptr @update_address._entry, !345, !"_entry", i1 false, i1 false}
!348 = !{ptr @update_address._entry_ptr, !345, !"_entry_ptr", i1 false, i1 false}
!349 = !{ptr @update_address._entry.142, !350, !"_entry", i1 false, i1 false}
!350 = !{!"../drivers/scsi/cxgbi/cxgb3i/cxgb3i.c", i32 942, i32 4}
!351 = !{ptr @update_address._entry_ptr.143, !350, !"_entry_ptr", i1 false, i1 false}
!352 = !{ptr @cxgb3i_host_template, !353, !"cxgb3i_host_template", i1 false, i1 false}
!353 = !{!"../drivers/scsi/cxgbi/cxgb3i/cxgb3i.c", i32 83, i32 34}
!354 = !{ptr @.str.144, !355, !"<string literal>", i1 false, i1 false}
!355 = !{!"../drivers/scsi/cxgbi/cxgb3i/cxgb3i.c", i32 1291, i32 3}
!356 = !{ptr @.str.145, !355, !"<string literal>", i1 false, i1 false}
!357 = !{ptr @cxgb3i_dev_close._entry, !355, !"_entry", i1 false, i1 false}
!358 = !{ptr @cxgb3i_dev_close._entry_ptr, !355, !"_entry_ptr", i1 false, i1 false}
!359 = !{ptr @.str.146, !360, !"<string literal>", i1 false, i1 false}
!360 = !{!"../drivers/scsi/cxgbi/cxgb3i/cxgb3i.c", i32 1364, i32 2}
!361 = !{ptr @.str.147, !360, !"<string literal>", i1 false, i1 false}
!362 = !{ptr @cxgb3i_dev_event_handler._entry, !360, !"_entry", i1 false, i1 false}
!363 = !{ptr @cxgb3i_dev_event_handler._entry_ptr, !360, !"_entry_ptr", i1 false, i1 false}
!364 = !{ptr @cxgb3i_iscsi_transport, !365, !"cxgb3i_iscsi_transport", i1 false, i1 false}
!365 = !{!"../drivers/scsi/cxgbi/cxgb3i/cxgb3i.c", i32 103, i32 31}
!366 = !{ptr @.str.148, !367, !"<string literal>", i1 false, i1 false}
!367 = !{!"../drivers/scsi/cxgbi/cxgb3i/cxgb3i.c", i32 1390, i32 2}
!368 = !{ptr @.str.149, !367, !"<string literal>", i1 false, i1 false}
!369 = !{ptr @cxgb3i_init_module._entry, !367, !"_entry", i1 false, i1 false}
!370 = !{ptr @cxgb3i_init_module._entry_ptr, !367, !"_entry_ptr", i1 false, i1 false}
!371 = !{ptr @version, !372, !"version", i1 false, i1 false}
!372 = !{!"../drivers/scsi/cxgbi/cxgb3i/cxgb3i.c", i32 38, i32 13}
!373 = !{!"sp"}
!374 = !{i32 1, !"wchar_size", i32 2}
!375 = !{i32 1, !"min_enum_size", i32 4}
!376 = !{i32 8, !"branch-target-enforcement", i32 0}
!377 = !{i32 8, !"sign-return-address", i32 0}
!378 = !{i32 8, !"sign-return-address-all", i32 0}
!379 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!380 = !{i32 7, !"uwtable", i32 1}
!381 = !{i32 7, !"frame-pointer", i32 2}
!382 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!383 = !{i64 2148381285, i64 2148381317, i64 2148381346, i64 2148381380, i64 2148381411, i64 2148381434}
!384 = !{!"branch_weights", i32 1, i32 2000}
!385 = !{!"branch_weights", i32 2000, i32 1}
!386 = !{i64 2155385008, i64 2155385496, i64 2155385045, i64 2155385101, i64 2155385135, i64 2155385159, i64 2155385200, i64 2155385221, i64 2155385249, i64 2155385283}
!387 = !{i64 2148469310}
!388 = !{i64 2148383750, i64 2148383782, i64 2148383811, i64 2148383845, i64 2148383876, i64 2148383899}
!389 = !{i64 2149345424}
!390 = !{i64 2155382040, i64 2155382528, i64 2155382077, i64 2155382133, i64 2155382167, i64 2155382191, i64 2155382232, i64 2155382253, i64 2155382281, i64 2155382315}
!391 = !{i32 0, i32 33}
!392 = !{!"auto-init"}
!393 = !{i64 2149395914}
!394 = !{i64 2148468231}
!395 = !{i64 2148382940, i64 2148382972, i64 2148383001, i64 2148383035, i64 2148383066, i64 2148383089}
!396 = !{i64 2148468460}
!397 = !{i64 2149396180}
