; ModuleID = '/llk/IR_all_yes/drivers/infiniband/hw/mlx4/mad.c_pt.bc'
source_filename = "../drivers/infiniband/hw/mlx4/mad.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.mlx4_ib_demux_ctx = type { ptr, i32, ptr, ptr, ptr, %struct.spinlock, %struct.atomic64_t, [128 x i64], ptr, %struct.mutex, %struct.rb_root, %struct.list_head, ptr, ptr, %struct.atomic_t, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic64_t = type { i64 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.rb_root = type { ptr }
%struct.list_head = type { ptr, ptr }
%struct.mlx4_ib_dev = type { %struct.ib_device, ptr, i32, ptr, %struct.mlx4_uar, i32, %struct.spinlock, [2 x [2 x ptr]], [2 x ptr], %struct.spinlock, [2 x %struct.atomic64_t], %struct.mlx4_ib_sriov, %struct.mutex, i8, %struct.mlx4_ib_iboe, [2 x %struct.mlx4_ib_counters], ptr, ptr, ptr, [128 x ptr], [2 x %struct.mlx4_ib_iov_port], %struct.pkey_mgt, ptr, i32, i32, i32, [2 x ptr], [2 x %struct.mutex], i8, %struct.spinlock, %struct.list_head, [2 x %struct.mlx4_ib_diag_counters] }
%struct.ib_device = type { ptr, %struct.ib_device_ops, [64 x i8], %struct.callback_head, %struct.list_head, %struct.rw_semaphore, %struct.spinlock, %struct.rw_semaphore, %struct.xarray, %struct.mutex, %struct.rwlock_t, ptr, i32, %union.anon.175, [4 x ptr], i64, [64 x i8], i64, i32, i8, i8, i32, %struct.ib_device_attr, ptr, %struct.rdmacg_device, i32, %struct.spinlock, [3 x %struct.list_head], ptr, ptr, %struct.refcount_struct, %struct.completion, %struct.work_struct, ptr, %struct.mutex, %struct.xarray, [16 x i8], i32, i32 }
%struct.ib_device_ops = type { ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%union.anon.175 = type { %struct.ib_core_device }
%struct.ib_core_device = type { %struct.device, %struct.possible_net_t, ptr, %struct.list_head, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.possible_net_t = type { ptr }
%struct.ib_device_attr = type { i64, i64, i64, i64, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, i32, i32, %struct.ib_odp_caps, i64, i64, %struct.ib_rss_caps, i32, i32, %struct.ib_tm_caps, %struct.ib_cq_caps, i64, i32 }
%struct.ib_odp_caps = type { i64, %struct.anon.166 }
%struct.anon.166 = type { i32, i32, i32, i32 }
%struct.ib_rss_caps = type { i32, i32, i32 }
%struct.ib_tm_caps = type { i32, i32, i32, i32, i32 }
%struct.ib_cq_caps = type { i16, i16 }
%struct.rdmacg_device = type { %struct.list_head, %struct.list_head, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.mlx4_uar = type { i32, i32, %struct.list_head, i32, ptr, ptr }
%struct.mlx4_ib_sriov = type { [2 x %struct.mlx4_ib_demux_ctx], [2 x ptr], %struct.spinlock, i32, %struct.mlx4_sriov_alias_guid, %struct.xarray, i32, %struct.spinlock, %struct.rb_root, %struct.list_head, %struct.xarray }
%struct.mlx4_sriov_alias_guid = type { [2 x %struct.mlx4_sriov_alias_guid_port_rec_det], %struct.spinlock, ptr }
%struct.mlx4_sriov_alias_guid_port_rec_det = type { [16 x %struct.mlx4_sriov_alias_guid_info_rec_det], ptr, %struct.delayed_work, i32, i32, ptr, %struct.list_head }
%struct.mlx4_sriov_alias_guid_info_rec_det = type { [64 x i8], i64, i32, [8 x i32], i64 }
%struct.mlx4_ib_iboe = type { %struct.spinlock, [2 x ptr], [2 x %struct.atomic64_t], %struct.notifier_block, [2 x %struct.mlx4_port_gid_table], [2 x i32] }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mlx4_port_gid_table = type { [128 x %struct.gid_entry] }
%struct.gid_entry = type { %union.ib_gid, i32, ptr, i16 }
%union.ib_gid = type { %struct.anon.162 }
%struct.anon.162 = type { i64, i64 }
%struct.mlx4_ib_counters = type { %struct.list_head, %struct.mutex, i32 }
%struct.mlx4_ib_iov_port = type { [100 x i8], i8, ptr, %struct.list_head, ptr, %struct.ib_port_attr, ptr, ptr, ptr, ptr, ptr, %struct.mlx4_ib_iov_sysfs_attr }
%struct.ib_port_attr = type { i64, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i16, i32, i32, i8, i8, i8, i8, i8, i8, i16, i8, i16 }
%struct.mlx4_ib_iov_sysfs_attr = type { ptr, ptr, i32, i32, [15 x i8], %struct.device_attribute, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.pkey_mgt = type { [128 x [2 x [128 x i8]]], [2 x [128 x i16]], [128 x %struct.list_head], [128 x ptr] }
%struct.mlx4_ib_diag_counters = type { ptr, ptr, i32 }
%struct.mlx4_dev = type { ptr, i32, i32, %struct.mlx4_caps, %struct.mlx4_phys_caps, %struct.mlx4_quotas, %struct.xarray, i8, i8, [64 x i8], i32, i32, [3 x i64], [3 x i64], ptr, i8 }
%struct.mlx4_caps = type { i64, i32, i32, [3 x i32], [3 x i32], [3 x i32], [3 x i64], [3 x i32], [3 x i32], [3 x i32], [3 x i32], [3 x i32], [3 x i32], [3 x i64], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i16, [3 x i8], i32, i32, [5 x i32], i32, [5 x i32], i32, i32, [3 x i32], [3 x i8], [3 x i8], [3 x i8], [3 x i32], [3 x i32], i32, [3 x i8], i16, i32, i32, i8, i32, i32, i16, [3 x i64], i32, [3 x i8], [3 x i8], i8, i32, i32, i32, [3 x i8], %struct.mlx4_rate_limit_caps, i32, i8 }
%struct.mlx4_rate_limit_caps = type { i16, i8, i16, i8, i16 }
%struct.mlx4_phys_caps = type { [3 x i32], [3 x i32], i32, i32, i32, i32 }
%struct.mlx4_quotas = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.ib_wc = type { %union.anon.137, i32, i32, i32, i32, ptr, %union.anon.138, i32, i32, i32, i16, i8, i8, i32, [6 x i8], i16, i8 }
%union.anon.137 = type { i64 }
%union.anon.138 = type { i32 }
%struct.ib_qp = type { ptr, ptr, ptr, ptr, %struct.spinlock, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, %struct.atomic_t, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, i32, i8, %struct.rdma_restrack_entry, ptr }
%struct.rdma_restrack_entry = type { i8, i8, %struct.kref, %struct.completion, ptr, ptr, i32, i8, i32 }
%struct.mlx4_cmd_mailbox = type { ptr, i32 }
%struct.ib_sge = type { i64, i32, i32 }
%struct.ib_ud_wr = type { %struct.ib_send_wr, ptr, ptr, i32, i32, i32, i32, i16, i32 }
%struct.ib_send_wr = type { ptr, %union.anon.163, ptr, i32, i32, i32, %union.anon.164 }
%union.anon.163 = type { i64 }
%union.anon.164 = type { i32 }
%struct.rdma_ah_attr = type { %struct.ib_global_route, i8, i8, i32, i8, i32, %union.anon.167 }
%struct.ib_global_route = type { ptr, %union.ib_gid, i32, i8, i8, i8 }
%union.anon.167 = type { %struct.opa_ah_attr }
%struct.opa_ah_attr = type { i32, i8, i8 }
%struct.mlx4_ib_demux_pv_ctx = type { i32, i32, i32, i32, ptr, ptr, ptr, %struct.work_struct, ptr, ptr, [2 x %struct.mlx4_ib_demux_pv_qp] }
%struct.mlx4_ib_demux_pv_qp = type { ptr, i32, ptr, ptr, %struct.spinlock, i32, i32 }
%struct.ib_port_data = type { ptr, %struct.ib_port_immutable, %struct.spinlock, %struct.spinlock, %struct.list_head, %struct.ib_port_cache, ptr, %struct.hlist_node, %struct.rdma_port_counter, ptr }
%struct.ib_port_immutable = type { i32, i32, i32, i32 }
%struct.ib_port_cache = type { i64, ptr, ptr, i8, i32 }
%struct.rdma_port_counter = type { %struct.rdma_counter_mode, ptr, i32, %struct.mutex }
%struct.rdma_counter_mode = type { i32, i32, %struct.auto_mode_param }
%struct.auto_mode_param = type { i32 }
%struct.mlx4_ib_tun_tx_buf = type { %struct.mlx4_ib_buf, ptr }
%struct.mlx4_ib_buf = type { ptr, i32 }
%struct.mlx4_rcv_tunnel_mad = type { %struct.mlx4_rcv_tunnel_hdr, %struct.ib_grh, %struct.ib_mad }
%struct.mlx4_rcv_tunnel_hdr = type { i32, i8, i8, i16, i16, i16, i32 }
%struct.ib_grh = type { i32, i16, i8, i8, %union.ib_gid, %union.ib_gid }
%struct.ib_mad = type { %struct.ib_mad_hdr, [232 x i8] }
%struct.ib_mad_hdr = type { i8, i8, i8, i8, i16, i16, i64, i16, i16, i32 }
%struct.ib_mad_send_buf = type { ptr, ptr, ptr, ptr, [2 x ptr], i32, i32, i32, i32, i32, i32, i32 }
%struct.mlx4_counter = type { [3 x i8], i8, i32, [2 x i32], i64, i64, i64, i64 }
%struct.counter_index = type { %struct.list_head, i32, i8 }
%struct.ib_event = type { ptr, %union.anon.129, i32 }
%union.anon.129 = type { ptr }
%union.sl2vl_tbl_to_u64 = type { i64 }
%struct.ib_event_work = type { %struct.work_struct, ptr, %struct.mlx4_eqe, i32 }
%struct.mlx4_eqe = type { i8, i8, i8, i8, %union.anon.183, i8, [2 x i8], i8 }
%union.anon.183 = type { [6 x i32] }
%struct.anon.194 = type { [3 x i8], i8, %union.anon.195 }
%union.anon.195 = type { %struct.anon.197, [12 x i8] }
%struct.anon.197 = type { i32, i32 }
%struct.anon.196 = type <{ i16, i16, i32, [3 x i8], i8, i64 }>
%struct.ib_smp = type { i8, i8, i8, i8, i16, i8, i8, i64, i16, i16, i32, i64, i16, i16, [28 x i8], [64 x i8], [64 x i8], [64 x i8] }
%struct.ib_mad_agent = type { ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, %struct.list_head, i8, i8, i8 }
%struct.ib_pd = type { i32, i32, ptr, ptr, %struct.atomic_t, i32, ptr, %struct.rdma_restrack_entry }
%struct.ib_ah = type { ptr, ptr, ptr, ptr, i32 }
%struct.mlx4_ib_demux_work = type { %struct.work_struct, ptr, i32, i32, i8 }
%struct.mlx4_dev_persistent = type { ptr, ptr, [3 x i32], i32, [3 x i32], [3 x i32], %struct.work_struct, ptr, %struct.mutex, i8, %struct.mutex, i8, %struct.mutex, i32, %struct.mlx4_fw_crdump }
%struct.mlx4_fw_crdump = type { i8, ptr, ptr }
%struct.ib_cq_init_attr = type { i32, i32, i32 }
%struct.page = type { i32, %union.anon.2, %union.anon.124, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.124 = type { %struct.atomic_t }
%struct.ib_cq = type { ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.atomic_t, i32, ptr, %struct.list_head, %union.anon.139, ptr, ptr, i64, i8, i32, %struct.rdma_restrack_entry }
%union.anon.139 = type { %struct.work_struct }
%struct.ib_recv_wr = type { ptr, %union.anon.165, ptr, i32 }
%union.anon.165 = type { i64 }
%struct.mlx4_ib_qp_tunnel_init_attr = type { %struct.ib_qp_init_attr, i32, i32, i32 }
%struct.ib_qp_init_attr = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.ib_qp_cap, i32, i32, i32, i32, ptr, i32 }
%struct.ib_qp_cap = type { i32, i32, i32, i32, i32, i32 }
%struct.ib_qp_attr = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ib_qp_cap, %struct.rdma_ah_attr, %struct.rdma_ah_attr, i16, i16, i8, i8, i8, i8, i8, i32, i8, i8, i8, i32, i8, i32, ptr }
%struct.mlx4_mad_rcv_buf = type { %struct.ib_grh, [256 x i8] }
%struct.mlx4_ib_ah = type { %struct.ib_ah, %union.mlx4_ext_av }
%union.mlx4_ext_av = type { %struct.mlx4_eth_av }
%struct.mlx4_eth_av = type { i32, i8, i8, i16, i8, i8, i8, i8, i32, [16 x i8], [6 x i8], [2 x i8], i16, [6 x i8] }
%struct.mlx4_tunnel_mad = type { %struct.ib_grh, %struct.mlx4_ib_tunnel_header, %struct.ib_mad }
%struct.mlx4_ib_tunnel_header = type { %struct.mlx4_av, i32, i32, i16, [6 x i8], i16, [6 x i8] }
%struct.mlx4_av = type { i32, i8, i8, i16, i8, i8, i8, i8, i32, [16 x i8] }

@mlx4_ib_send_to_slave.__UNIQUE_ID_ddebug512 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 -123, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mlx4_ib\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mlx4_ib_send_to_slave\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/infiniband/hw/mlx4/mad.c\00", [63 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"dest_qpt (%d) > IB_QPT_GSI\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"<mlx4_ib> %s: dest_qpt (%d) > IB_QPT_GSI\0A\00", [54 x i8] zeroinitializer }, align 32
@mlx4_ib_send_to_slave.__UNIQUE_ID_ddebug513 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.5, i8 0, i8 -118, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"unable to get %s cached pkey for index %d, ret %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"<mlx4_ib> %s: unable to get %s cached pkey for index %d, ret %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"SMI\00", [28 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"GSI\00", [28 x i8] zeroinitializer }, align 32
@mlx4_ib_send_to_slave.__UNIQUE_ID_ddebug514 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.9, i8 0, i8 -116, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"unable to get %s pkey ix for pkey 0x%x, ret %d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"<mlx4_ib> %s: unable to get %s pkey ix for pkey 0x%x, ret %d\0A\00", [34 x i8] zeroinitializer }, align 32
@handle_port_mgmt_change_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 1216, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [86 x i8], [42 x i8] } { [86 x i8] c"\014<mlx4_ib> %s: Could not change QP1 subnet prefix for port %d: query_gid error (%d)\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"handle_port_mgmt_change_event\00", [34 x i8] zeroinitializer }, align 32
@handle_port_mgmt_change_event._entry_ptr = internal global ptr @handle_port_mgmt_change_event._entry, section ".printk_index", align 4
@handle_port_mgmt_change_event.__UNIQUE_ID_ddebug519 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.2, ptr @.str.13, i8 1, i8 49, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"Changing QP1 subnet prefix for port %d. old=0x%llx. new=0x%llx\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"<mlx4_ib> %s: Changing QP1 subnet prefix for port %d. old=0x%llx. new=0x%llx\0A\00", [50 x i8] zeroinitializer }, align 32
@handle_port_mgmt_change_event.__UNIQUE_ID_ddebug520 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.2, ptr @.str.15, i8 1, i8 60, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"port %u, sl2vl[%d] = %02x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"<mlx4_ib> %s: port %u, sl2vl[%d] = %02x\0A\00", [55 x i8] zeroinitializer }, align 32
@handle_port_mgmt_change_event._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.12, ptr @.str.2, i32 1273, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"\014<mlx4_ib> %s: Unsupported subtype 0x%x for Port Management Change event\0A\00", [53 x i8] zeroinitializer }, align 32
@handle_port_mgmt_change_event._entry_ptr.19 = internal global ptr @handle_port_mgmt_change_event._entry.17, section ".printk_index", align 4
@mlx4_ib_init_sriov.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.20 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"&dev->sriov.going_down_lock\00", [36 x i8] zeroinitializer }, align 32
@mlx4_ib_init_sriov._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.2, i32 2311, ptr @.str.23, ptr @.str.24 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"mlx4_ib: multi-function enabled\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mlx4_ib_init_sriov\00", [45 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mlx4_ib_init_sriov._entry_ptr = internal global ptr @mlx4_ib_init_sriov._entry, section ".printk_index", align 4
@mlx4_ib_init_sriov._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.22, ptr @.str.2, i32 2314, ptr @.str.23, ptr @.str.24 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"mlx4_ib: operating in qp1 tunnel mode\0A\00", [57 x i8] zeroinitializer }, align 32
@mlx4_ib_init_sriov._entry_ptr.27 = internal global ptr @mlx4_ib_init_sriov._entry.25, section ".printk_index", align 4
@mlx4_ib_init_sriov._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.22, ptr @.str.2, i32 2327, ptr @.str.23, ptr @.str.24 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"mlx4_ib: Failed init alias guid process.\0A\00", [54 x i8] zeroinitializer }, align 32
@mlx4_ib_init_sriov._entry_ptr.30 = internal global ptr @mlx4_ib_init_sriov._entry.28, section ".printk_index", align 4
@mlx4_ib_init_sriov._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.22, ptr @.str.2, i32 2332, ptr @.str.23, ptr @.str.24 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"mlx4_ib: Failed to register sysfs\0A\00", [61 x i8] zeroinitializer }, align 32
@mlx4_ib_init_sriov._entry_ptr.33 = internal global ptr @mlx4_ib_init_sriov._entry.31, section ".printk_index", align 4
@mlx4_ib_init_sriov._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.22, ptr @.str.2, i32 2337, ptr @.str.23, ptr @.str.24 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"mlx4_ib: initializing demux service for %d qp1 clients\0A\00", [40 x i8] zeroinitializer }, align 32
@mlx4_ib_init_sriov._entry_ptr.36 = internal global ptr @mlx4_ib_init_sriov._entry.34, section ".printk_index", align 4
@ib_lid_cpu16.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.37 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/rdma/ib_verbs.h\00", [40 x i8] zeroinitializer }, align 32
@rdma_destroy_ah.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.38 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Destroy of kernel AH shouldn't fail\00", [60 x i8] zeroinitializer }, align 32
@ib_lid_be16.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@smp_snoop.__UNIQUE_ID_ddebug508 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.39, ptr @.str.2, ptr @.str.40, i8 0, i8 67, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"smp_snoop\00", [22 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"PKEY[%d] = x%x\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"<mlx4_ib> %s: PKEY[%d] = x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@smp_snoop.__UNIQUE_ID_ddebug509 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.39, ptr @.str.2, ptr @.str.42, i8 0, i8 69, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"PKEY Change event: port=%u, block=0x%x, change_bitmap=0x%x\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"<mlx4_ib> %s: PKEY Change event: port=%u, block=0x%x, change_bitmap=0x%x\0A\00", [54 x i8] zeroinitializer }, align 32
@smp_snoop.__UNIQUE_ID_ddebug510 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.39, ptr @.str.2, ptr @.str.15, i8 0, i8 80, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@__propagate_pkey_ev.__UNIQUE_ID_ddebug511 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.44, ptr @.str.2, ptr @.str.45, i8 0, i8 89, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"__propagate_pkey_ev\00", [44 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"propagate_pkey_ev: slave %d, port %d, ix %d (%d)\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"<mlx4_ib> %s: propagate_pkey_ev: slave %d, port %d, ix %d (%d)\0A\00", [32 x i8] zeroinitializer }, align 32
@handle_slaves_guid_change._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.2, i32 1159, ptr @.str.23, ptr @.str.24 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"mlx4_ib: Failed in get GUID INFO MAD_IFC\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"handle_slaves_guid_change\00", [38 x i8] zeroinitializer }, align 32
@handle_slaves_guid_change._entry_ptr = internal global ptr @handle_slaves_guid_change._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@ib_dealloc_pd.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.49 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Destroy of kernel PD shouldn't fail\00", [60 x i8] zeroinitializer }, align 32
@ib_destroy_cq.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.50 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Destroy of kernel CQ shouldn't fail\00", [60 x i8] zeroinitializer }, align 32
@create_pv_resources._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.2, i32 1999, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013<mlx4_ib> %s: Failed allocating qp0 tunnel bufs (%d)\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"create_pv_resources\00", [44 x i8] zeroinitializer }, align 32
@create_pv_resources._entry_ptr = internal global ptr @create_pv_resources._entry, section ".printk_index", align 4
@create_pv_resources._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.52, ptr @.str.2, i32 2006, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013<mlx4_ib> %s: Failed allocating qp1 tunnel bufs (%d)\0A\00", [40 x i8] zeroinitializer }, align 32
@create_pv_resources._entry_ptr.55 = internal global ptr @create_pv_resources._entry.53, section ".printk_index", align 4
@create_pv_resources._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.52, ptr @.str.2, i32 2020, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013<mlx4_ib> %s: Couldn't create tunnel CQ (%d)\0A\00", [48 x i8] zeroinitializer }, align 32
@create_pv_resources._entry_ptr.58 = internal global ptr @create_pv_resources._entry.56, section ".printk_index", align 4
@create_pv_resources._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.52, ptr @.str.2, i32 2027, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013<mlx4_ib> %s: Couldn't create tunnel PD (%d)\0A\00", [48 x i8] zeroinitializer }, align 32
@create_pv_resources._entry_ptr.61 = internal global ptr @create_pv_resources._entry.59, section ".printk_index", align 4
@create_pv_resources._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.52, ptr @.str.2, i32 2035, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013<mlx4_ib> %s: Couldn't create %s QP0 (%d)\0A\00", [51 x i8] zeroinitializer }, align 32
@create_pv_resources._entry_ptr.64 = internal global ptr @create_pv_resources._entry.62, section ".printk_index", align 4
@.str.65 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"tunnel for\00", [21 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@create_pv_resources._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.52, ptr @.str.2, i32 2043, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013<mlx4_ib> %s: Couldn't create %s QP1 (%d)\0A\00", [51 x i8] zeroinitializer }, align 32
@create_pv_resources._entry_ptr.69 = internal global ptr @create_pv_resources._entry.67, section ".printk_index", align 4
@create_pv_resources.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.70 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"(work_completion)(&ctx->work)\00", [34 x i8] zeroinitializer }, align 32
@create_pv_resources.__key.71 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@create_pv_resources._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.52, ptr @.str.2, i32 2057, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013<mlx4_ib> %s: Couldn't arm tunnel cq (%d)\0A\00", [51 x i8] zeroinitializer }, align 32
@create_pv_resources._entry_ptr.74 = internal global ptr @create_pv_resources._entry.72, section ".printk_index", align 4
@mlx4_ib_alloc_pv_bufs.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.75 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&tun_qp->tx_lock\00", [47 x i8] zeroinitializer }, align 32
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.76 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@create_pv_sqp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.79, ptr @.str.2, i32 1841, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013<mlx4_ib> %s: Couldn't create %s QP (%d)\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"create_pv_sqp\00", [18 x i8] zeroinitializer }, align 32
@create_pv_sqp._entry_ptr = internal global ptr @create_pv_sqp._entry, section ".printk_index", align 4
@.str.80 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"tunnel\00", [25 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"special\00", [24 x i8] zeroinitializer }, align 32
@create_pv_sqp._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.79, ptr @.str.2, i32 1860, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013<mlx4_ib> %s: Couldn't change %s qp state to INIT (%d)\0A\00", [38 x i8] zeroinitializer }, align 32
@create_pv_sqp._entry_ptr.84 = internal global ptr @create_pv_sqp._entry.82, section ".printk_index", align 4
@create_pv_sqp._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.79, ptr @.str.2, i32 1867, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013<mlx4_ib> %s: Couldn't change %s qp state to RTR (%d)\0A\00", [39 x i8] zeroinitializer }, align 32
@create_pv_sqp._entry_ptr.87 = internal global ptr @create_pv_sqp._entry.85, section ".printk_index", align 4
@create_pv_sqp._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.79, ptr @.str.2, i32 1875, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013<mlx4_ib> %s: Couldn't change %s qp state to RTS (%d)\0A\00", [39 x i8] zeroinitializer }, align 32
@create_pv_sqp._entry_ptr.90 = internal global ptr @create_pv_sqp._entry.88, section ".printk_index", align 4
@create_pv_sqp._entry.91 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.79, ptr @.str.2, i32 1883, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\013<mlx4_ib> %s:  mlx4_ib_post_pv_buf error (err = %d, i = %d)\0A\00", [33 x i8] zeroinitializer }, align 32
@create_pv_sqp._entry_ptr.93 = internal global ptr @create_pv_sqp._entry.91, section ".printk_index", align 4
@pv_qp_event_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.95, ptr @.str.2, i32 1794, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013<mlx4_ib> %s: Fatal error (%d) on a MAD QP on port %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pv_qp_event_handler\00", [44 x i8] zeroinitializer }, align 32
@pv_qp_event_handler._entry_ptr = internal global ptr @pv_qp_event_handler._entry, section ".printk_index", align 4
@mlx4_ib_tunnel_comp_worker._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.97, ptr @.str.2, i32 1756, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013<mlx4_ib> %s: Failed reposting tunnel buf:%lld\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"mlx4_ib_tunnel_comp_worker\00", [37 x i8] zeroinitializer }, align 32
@mlx4_ib_tunnel_comp_worker._entry_ptr = internal global ptr @mlx4_ib_tunnel_comp_worker._entry, section ".printk_index", align 4
@mlx4_ib_tunnel_comp_worker.__UNIQUE_ID_ddebug522 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.97, ptr @.str.2, ptr @.str.98, i8 1, i8 -69, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.98 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"mlx4_ib: completion error in tunnel: %d. status = %d, wrid = 0x%llx\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"<mlx4_ib> %s: mlx4_ib: completion error in tunnel: %d. status = %d, wrid = 0x%llx\0A\00", [45 x i8] zeroinitializer }, align 32
@mlx4_ib_multiplex_mad._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.101, ptr @.str.2, i32 1498, ptr @.str.23, ptr @.str.24 }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"mlx4_ib: can't multiplex bad sqp:%d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mlx4_ib_multiplex_mad\00", [42 x i8] zeroinitializer }, align 32
@mlx4_ib_multiplex_mad._entry_ptr = internal global ptr @mlx4_ib_multiplex_mad._entry, section ".printk_index", align 4
@mlx4_ib_multiplex_mad._entry.102 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.101, ptr @.str.2, i32 1504, ptr @.str.23, ptr @.str.24 }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"mlx4_ib: can't multiplex bad sqp:%d: belongs to another slave\0A\00", [33 x i8] zeroinitializer }, align 32
@mlx4_ib_multiplex_mad._entry_ptr.104 = internal global ptr @mlx4_ib_multiplex_mad._entry.102, section ".printk_index", align 4
@mlx4_ib_multiplex_mad._entry.105 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.101, ptr @.str.2, i32 1524, ptr @.str.23, ptr @.str.24 }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"mlx4_ib: egress mad has non-null tid msb:%d class:%d slave:%d\0A\00", [33 x i8] zeroinitializer }, align 32
@mlx4_ib_multiplex_mad._entry_ptr.107 = internal global ptr @mlx4_ib_multiplex_mad._entry.105, section ".printk_index", align 4
@mlx4_ib_multiplex_mad._entry.108 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.101, ptr @.str.2, i32 1560, ptr @.str.23, ptr @.str.24 }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"mlx4_ib: dropping unsupported egress mad from class:%d for slave:%d\0A\00", [59 x i8] zeroinitializer }, align 32
@mlx4_ib_multiplex_mad._entry_ptr.110 = internal global ptr @mlx4_ib_multiplex_mad._entry.108, section ".printk_index", align 4
@mlx4_ib_multiplex_mad.__UNIQUE_ID_ddebug521 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.101, ptr @.str.2, ptr @.str.111, i8 1, i8 -113, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.111 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"failed sending %s to wire on behalf of slave %d (%d)\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"<mlx4_ib> %s: failed sending %s to wire on behalf of slave %d (%d)\0A\00", [60 x i8] zeroinitializer }, align 32
@mlx4_ib_sqp_comp_worker._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.114, ptr @.str.2, i32 1933, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013<mlx4_ib> %s: Failed reposting SQP buf:%lld\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mlx4_ib_sqp_comp_worker\00", [40 x i8] zeroinitializer }, align 32
@mlx4_ib_sqp_comp_worker._entry_ptr = internal global ptr @mlx4_ib_sqp_comp_worker._entry, section ".printk_index", align 4
@mlx4_ib_sqp_comp_worker.__UNIQUE_ID_ddebug523 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.114, ptr @.str.2, ptr @.str.98, i8 1, i8 -27, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@mlx4_ib_demux_mad._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.116, ptr @.str.2, i32 704, ptr @.str.23, ptr @.str.24 }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"mlx4_ib: RoCE grh not present.\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mlx4_ib_demux_mad\00", [46 x i8] zeroinitializer }, align 32
@mlx4_ib_demux_mad._entry_ptr = internal global ptr @mlx4_ib_demux_mad._entry, section ".printk_index", align 4
@mlx4_ib_demux_mad._entry.117 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.116, ptr @.str.2, i32 708, ptr @.str.23, ptr @.str.24 }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"mlx4_ib: RoCE mgmt class is not CM\0A\00", [60 x i8] zeroinitializer }, align 32
@mlx4_ib_demux_mad._entry_ptr.119 = internal global ptr @mlx4_ib_demux_mad._entry.117, section ".printk_index", align 4
@mlx4_ib_demux_mad.__UNIQUE_ID_ddebug515 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.116, ptr @.str.2, ptr @.str.120, i8 0, i8 -77, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.120 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"resolved slave %d from gid %pI6 wire port %d other %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"<mlx4_ib> %s: resolved slave %d from gid %pI6 wire port %d other %d\0A\00", [59 x i8] zeroinitializer }, align 32
@mlx4_ib_demux_mad._entry.122 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.116, ptr @.str.2, i32 722, ptr @.str.23, ptr @.str.24 }, [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"mlx4_ib: failed matching grh\0A\00", [34 x i8] zeroinitializer }, align 32
@mlx4_ib_demux_mad._entry_ptr.124 = internal global ptr @mlx4_ib_demux_mad._entry.122, section ".printk_index", align 4
@mlx4_ib_demux_mad._entry.125 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.126, ptr @.str.116, ptr @.str.2, i32 727, ptr @.str.23, ptr @.str.24 }, [40 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"mlx4_ib: slave id: %d is bigger than allowed:%d\0A\00", [47 x i8] zeroinitializer }, align 32
@mlx4_ib_demux_mad._entry_ptr.127 = internal global ptr @mlx4_ib_demux_mad._entry.125, section ".printk_index", align 4
@mlx4_ib_demux_mad.__UNIQUE_ID_ddebug516 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.116, ptr @.str.2, ptr @.str.128, i8 0, i8 -72, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.128 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"failed sending %s to slave %d via tunnel qp (%d)\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"<mlx4_ib> %s: failed sending %s to slave %d via tunnel qp (%d)\0A\00", [32 x i8] zeroinitializer }, align 32
@mlx4_ib_demux_mad._entry.130 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.116, ptr @.str.2, i32 764, ptr @.str.23, ptr @.str.24 }, [40 x i8] zeroinitializer }, align 32
@mlx4_ib_demux_mad._entry_ptr.131 = internal global ptr @mlx4_ib_demux_mad._entry.130, section ".printk_index", align 4
@mlx4_ib_demux_mad._entry.132 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.116, ptr @.str.2, i32 781, ptr @.str.23, ptr @.str.24 }, [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"mlx4_ib: demux QP0. rejecting unsolicited mad for slave %d class 0x%x, method 0x%x\0A\00", [44 x i8] zeroinitializer }, align 32
@mlx4_ib_demux_mad._entry_ptr.134 = internal global ptr @mlx4_ib_demux_mad._entry.132, section ".printk_index", align 4
@mlx4_ib_demux_mad.__UNIQUE_ID_ddebug517 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.116, ptr @.str.2, ptr @.str.135, i8 0, i8 -56, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.135 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"dropping unsupported ingress mad from class:%d for slave:%d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"<mlx4_ib> %s: dropping unsupported ingress mad from class:%d for slave:%d\0A\00", [53 x i8] zeroinitializer }, align 32
@mlx4_ib_demux_mad._entry.137 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.126, ptr @.str.116, ptr @.str.2, i32 810, ptr @.str.23, ptr @.str.24 }, [40 x i8] zeroinitializer }, align 32
@mlx4_ib_demux_mad._entry_ptr.138 = internal global ptr @mlx4_ib_demux_mad._entry.137, section ".printk_index", align 4
@mlx4_ib_demux_mad.__UNIQUE_ID_ddebug518 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.116, ptr @.str.2, ptr @.str.128, i8 0, i8 -52, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@mlx4_ib_alloc_demux_ctx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.139, ptr @.str.140, ptr @.str.2, i32 2193, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013<mlx4_ib> %s: Failed initializing mcg para-virt (%d)\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mlx4_ib_alloc_demux_ctx\00", [40 x i8] zeroinitializer }, align 32
@mlx4_ib_alloc_demux_ctx._entry_ptr = internal global ptr @mlx4_ib_alloc_demux_ctx._entry, section ".printk_index", align 4
@.str.141 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mlx4_ibt%d\00", [21 x i8] zeroinitializer }, align 32
@mlx4_ib_alloc_demux_ctx._entry.142 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.143, ptr @.str.140, ptr @.str.2, i32 2200, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013<mlx4_ib> %s: Failed to create tunnelling WQ for port %d\0A\00", [36 x i8] zeroinitializer }, align 32
@mlx4_ib_alloc_demux_ctx._entry_ptr.144 = internal global ptr @mlx4_ib_alloc_demux_ctx._entry.142, section ".printk_index", align 4
@.str.145 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mlx4_ibwi%d\00", [20 x i8] zeroinitializer }, align 32
@mlx4_ib_alloc_demux_ctx._entry.146 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.140, ptr @.str.2, i32 2208, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013<mlx4_ib> %s: Failed to create wire WQ for port %d\0A\00", [42 x i8] zeroinitializer }, align 32
@mlx4_ib_alloc_demux_ctx._entry_ptr.148 = internal global ptr @mlx4_ib_alloc_demux_ctx._entry.146, section ".printk_index", align 4
@.str.149 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mlx4_ibud%d\00", [20 x i8] zeroinitializer }, align 32
@mlx4_ib_alloc_demux_ctx._entry.150 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.151, ptr @.str.140, ptr @.str.2, i32 2216, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013<mlx4_ib> %s: Failed to create up/down WQ for port %d\0A\00", [39 x i8] zeroinitializer }, align 32
@mlx4_ib_alloc_demux_ctx._entry_ptr.152 = internal global ptr @mlx4_ib_alloc_demux_ctx._entry.150, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 6]
@__sancov_gen_cov_switch_values.153 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.154 = internal global [5 x i64] [i64 3, i64 16, i64 1, i64 18, i64 29]
@__sancov_gen_cov_switch_values.155 = internal global [8 x i64] [i64 6, i64 8, i64 1, i64 4, i64 9, i64 10, i64 33, i64 129]
@__sancov_gen_cov_switch_values.156 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 7]
@__sancov_gen_cov_switch_values.157 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 129]
@__sancov_gen_cov_switch_values.158 = internal global [4 x i64] [i64 2, i64 16, i64 18, i64 29]
@__sancov_gen_cov_switch_values.159 = internal global [6 x i64] [i64 4, i64 8, i64 20, i64 21, i64 22, i64 23]
@__sancov_gen_cov_switch_values.160 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 129]
@__sancov_gen_cov_switch_values.161 = internal global [6 x i64] [i64 4, i64 16, i64 20, i64 21, i64 22, i64 23]
@__sancov_gen_cov_switch_values.162 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 129]
@__sancov_gen_cov_switch_values.163 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 128]
@__sancov_gen_cov_switch_values.164 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 128]
@__sancov_gen_cov_switch_values.165 = internal global [9 x i64] [i64 7, i64 8, i64 1, i64 2, i64 6, i64 18, i64 19, i64 20, i64 21]
@__sancov_gen_cov_switch_values.166 = internal global [7 x i64] [i64 5, i64 8, i64 1, i64 3, i64 6, i64 7, i64 129]
@__sancov_gen_cov_switch_values.167 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 6]
@__sancov_gen_cov_switch_values.168 = internal global [7 x i64] [i64 5, i64 8, i64 1, i64 3, i64 6, i64 7, i64 129]
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.587, i32 532, i32 3 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.587, i32 552, i32 4 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.587, i32 560, i32 4 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.587, i32 1215, i32 6 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.587, i32 1218, i32 6 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.587, i32 1265, i32 5 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.587, i32 1272, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.587, i32 2308, i32 2 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.587, i32 2311, i32 2 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.587, i32 2314, i32 3 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.587, i32 2327, i32 3 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.587, i32 2332, i32 3 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.587, i32 2336, i32 2 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 4605, i32 2 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 3630, i32 2 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.587, i32 268, i32 5 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.587, i32 277, i32 4 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.587, i32 354, i32 6 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.587, i32 1159, i32 4 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 3498, i32 2 }
@___asan_gen_.317 = private unnamed_addr constant [27 x i8] c"../include/rdma/ib_verbs.h\00", align 1
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 3936, i32 2 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.587, i32 1999, i32 4 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.587, i32 2006, i32 3 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.587, i32 2020, i32 3 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.587, i32 2027, i32 3 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.587, i32 2034, i32 4 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.587, i32 2042, i32 3 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.587, i32 2048, i32 3 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.587, i32 2050, i32 3 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.587, i32 2057, i32 3 }
@___asan_gen_.379 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.587, i32 1669, i32 2 }
@___asan_gen_.389 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 326, i32 6 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.587, i32 1840, i32 3 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.587, i32 1859, i32 3 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.587, i32 1866, i32 3 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.587, i32 1874, i32 3 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.587, i32 1882, i32 4 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.587, i32 1793, i32 2 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.587, i32 1755, i32 6 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.587, i32 1772, i32 4 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.587, i32 1498, i32 3 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.587, i32 1503, i32 3 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.587, i32 1522, i32 4 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.587, i32 1559, i32 4 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.587, i32 1597, i32 3 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.587, i32 1932, i32 6 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.587, i32 704, i32 4 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.587, i32 708, i32 4 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.587, i32 717, i32 5 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.587, i32 722, i32 4 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.587, i32 726, i32 4 }
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.587, i32 736, i32 4 }
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.587, i32 764, i32 5 }
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.587, i32 779, i32 5 }
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.587, i32 802, i32 4 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.587, i32 809, i32 3 }
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.587, i32 2193, i32 3 }
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.587, i32 2197, i32 31 }
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.587, i32 2200, i32 3 }
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.587, i32 2205, i32 31 }
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.587, i32 2208, i32 3 }
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.587, i32 2213, i32 31 }
@___asan_gen_.583 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.586 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.587 = private constant [36 x i8] c"../drivers/infiniband/hw/mlx4/mad.c\00", align 1
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.587, i32 2216, i32 3 }
@llvm.compiler.used = appending global [178 x ptr] [ptr @create_pv_resources._entry, ptr @create_pv_resources._entry.53, ptr @create_pv_resources._entry.56, ptr @create_pv_resources._entry.59, ptr @create_pv_resources._entry.62, ptr @create_pv_resources._entry.67, ptr @create_pv_resources._entry.72, ptr @create_pv_resources._entry_ptr, ptr @create_pv_resources._entry_ptr.55, ptr @create_pv_resources._entry_ptr.58, ptr @create_pv_resources._entry_ptr.61, ptr @create_pv_resources._entry_ptr.64, ptr @create_pv_resources._entry_ptr.69, ptr @create_pv_resources._entry_ptr.74, ptr @create_pv_sqp._entry, ptr @create_pv_sqp._entry.82, ptr @create_pv_sqp._entry.85, ptr @create_pv_sqp._entry.88, ptr @create_pv_sqp._entry.91, ptr @create_pv_sqp._entry_ptr, ptr @create_pv_sqp._entry_ptr.84, ptr @create_pv_sqp._entry_ptr.87, ptr @create_pv_sqp._entry_ptr.90, ptr @create_pv_sqp._entry_ptr.93, ptr @handle_port_mgmt_change_event._entry, ptr @handle_port_mgmt_change_event._entry.17, ptr @handle_port_mgmt_change_event._entry_ptr, ptr @handle_port_mgmt_change_event._entry_ptr.19, ptr @handle_slaves_guid_change._entry, ptr @handle_slaves_guid_change._entry_ptr, ptr @mlx4_ib_alloc_demux_ctx._entry, ptr @mlx4_ib_alloc_demux_ctx._entry.142, ptr @mlx4_ib_alloc_demux_ctx._entry.146, ptr @mlx4_ib_alloc_demux_ctx._entry.150, ptr @mlx4_ib_alloc_demux_ctx._entry_ptr, ptr @mlx4_ib_alloc_demux_ctx._entry_ptr.144, ptr @mlx4_ib_alloc_demux_ctx._entry_ptr.148, ptr @mlx4_ib_alloc_demux_ctx._entry_ptr.152, ptr @mlx4_ib_demux_mad._entry, ptr @mlx4_ib_demux_mad._entry.117, ptr @mlx4_ib_demux_mad._entry.122, ptr @mlx4_ib_demux_mad._entry.125, ptr @mlx4_ib_demux_mad._entry.130, ptr @mlx4_ib_demux_mad._entry.132, ptr @mlx4_ib_demux_mad._entry.137, ptr @mlx4_ib_demux_mad._entry_ptr, ptr @mlx4_ib_demux_mad._entry_ptr.119, ptr @mlx4_ib_demux_mad._entry_ptr.124, ptr @mlx4_ib_demux_mad._entry_ptr.127, ptr @mlx4_ib_demux_mad._entry_ptr.131, ptr @mlx4_ib_demux_mad._entry_ptr.134, ptr @mlx4_ib_demux_mad._entry_ptr.138, ptr @mlx4_ib_init_sriov._entry, ptr @mlx4_ib_init_sriov._entry.25, ptr @mlx4_ib_init_sriov._entry.28, ptr @mlx4_ib_init_sriov._entry.31, ptr @mlx4_ib_init_sriov._entry.34, ptr @mlx4_ib_init_sriov._entry_ptr, ptr @mlx4_ib_init_sriov._entry_ptr.27, ptr @mlx4_ib_init_sriov._entry_ptr.30, ptr @mlx4_ib_init_sriov._entry_ptr.33, ptr @mlx4_ib_init_sriov._entry_ptr.36, ptr @mlx4_ib_multiplex_mad._entry, ptr @mlx4_ib_multiplex_mad._entry.102, ptr @mlx4_ib_multiplex_mad._entry.105, ptr @mlx4_ib_multiplex_mad._entry.108, ptr @mlx4_ib_multiplex_mad._entry_ptr, ptr @mlx4_ib_multiplex_mad._entry_ptr.104, ptr @mlx4_ib_multiplex_mad._entry_ptr.107, ptr @mlx4_ib_multiplex_mad._entry_ptr.110, ptr @mlx4_ib_sqp_comp_worker._entry, ptr @mlx4_ib_sqp_comp_worker._entry_ptr, ptr @mlx4_ib_tunnel_comp_worker._entry, ptr @mlx4_ib_tunnel_comp_worker._entry_ptr, ptr @pv_qp_event_handler._entry, ptr @pv_qp_event_handler._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @mlx4_ib_init_sriov.__key, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.29, ptr @.str.32, ptr @.str.35, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.54, ptr @.str.57, ptr @.str.60, ptr @.str.63, ptr @.str.65, ptr @.str.66, ptr @.str.68, ptr @create_pv_resources.__key, ptr @.str.70, ptr @create_pv_resources.__key.71, ptr @.str.73, ptr @mlx4_ib_alloc_pv_bufs.__key, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.83, ptr @.str.86, ptr @.str.89, ptr @.str.92, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.103, ptr @.str.106, ptr @.str.109, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.118, ptr @.str.120, ptr @.str.121, ptr @.str.123, ptr @.str.126, ptr @.str.128, ptr @.str.129, ptr @.str.133, ptr @.str.135, ptr @.str.136, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.143, ptr @.str.145, ptr @.str.147, ptr @.str.149, ptr @.str.151], section "llvm.metadata"
@0 = internal global [140 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_port_mgmt_change_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 86, i32 128, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_port_mgmt_change_event._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_ib_init_sriov.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_ib_init_sriov._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_ib_init_sriov._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_ib_init_sriov._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_ib_init_sriov._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_ib_init_sriov._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_slaves_guid_change._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @create_pv_resources._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @create_pv_resources._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @create_pv_resources._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @create_pv_resources._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @create_pv_resources._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @create_pv_resources._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @create_pv_resources.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @create_pv_resources.__key.71 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @create_pv_resources._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_ib_alloc_pv_bufs.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @create_pv_sqp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @create_pv_sqp._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @create_pv_sqp._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @create_pv_sqp._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @create_pv_sqp._entry.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pv_qp_event_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_ib_tunnel_comp_worker._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_ib_multiplex_mad._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_ib_multiplex_mad._entry.102 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_ib_multiplex_mad._entry.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_ib_multiplex_mad._entry.108 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_ib_sqp_comp_worker._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_ib_demux_mad._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_ib_demux_mad._entry.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_ib_demux_mad._entry.122 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_ib_demux_mad._entry.125 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_ib_demux_mad._entry.130 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_ib_demux_mad._entry.132 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_ib_demux_mad._entry.137 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_ib_alloc_demux_ctx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_ib_alloc_demux_ctx._entry.142 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_ib_alloc_demux_ctx._entry.146 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_ib_alloc_demux_ctx._entry.150 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @mlx4_ib_gen_node_guid() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @prandom_u32() #11
  %conv = zext i32 %call to i64
  %or = or i64 %conv, 5634997092352000
  ret i64 %or
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prandom_u32() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @mlx4_ib_get_new_demux_tid(ptr noundef %ctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tid = getelementptr inbounds %struct.mlx4_ib_demux_ctx, ptr %ctx, i32 0, i32 14
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %tid, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !276
  tail call void @llvm.prefetch.p0(ptr %tid, i32 1, i32 3, i32 1) #11
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tid, ptr %tid, i32 1, ptr elementtype(i32) %tid) #11, !srcloc !277
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !278
  %conv = sext i32 %asmresult.i.i.i.i to i64
  %or = or i64 %conv, -72057594037927936
  ret i64 %or
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx4_MAD_IFC(ptr nocapture noundef readonly %dev, i32 noundef %mad_ifc_flags, i32 noundef %port, ptr noundef readonly %in_wc, ptr noundef readonly %in_grh, ptr nocapture noundef readonly %in_mad, ptr nocapture noundef writeonly %response_mad) local_unnamed_addr #0 align 64 {
entry:
  %out_param.addr.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.mlx4_ib_dev, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 8
  %call = tail call ptr @mlx4_alloc_cmd_mailbox(ptr noundef %1) #11
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %2 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %call, align 4
  %5 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev1, align 8
  %call5 = tail call ptr @mlx4_alloc_cmd_mailbox(ptr noundef %6) #11
  %cmp.i132 = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i132, label %if.then7, label %if.end10

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev1, align 8
  tail call void @mlx4_free_cmd_mailbox(ptr noundef %8, ptr noundef %call) #11
  %9 = ptrtoint ptr %call5 to i32
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %10 = call ptr @memcpy(ptr %4, ptr %in_mad, i32 256)
  %and = and i32 %mad_ifc_flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp ne i32 %and, 0
  %tobool11.not = icmp eq ptr %in_wc, null
  %or.cond = or i1 %tobool.not, %tobool11.not
  %op_modifier.0 = zext i1 %or.cond to i8
  %and15 = and i32 %mad_ifc_flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp ne i32 %and15, 0
  %or.cond130 = or i1 %tobool16.not, %tobool11.not
  %11 = or i8 %op_modifier.0, 2
  %op_modifier.1 = select i1 %or.cond130, i8 %11, i8 %op_modifier.0
  %12 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev1, align 8
  %flags.i = getelementptr inbounds %struct.mlx4_dev, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %15, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool26.not = icmp eq i32 %and.i, 0
  br i1 %tobool26.not, label %if.end10.if.end35_crit_edge, label %land.lhs.true

if.end10.if.end35_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35

land.lhs.true:                                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  %and27 = and i32 %mad_ifc_flags, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  %or.cond131 = and i1 %tobool28.not, %tobool11.not
  %16 = or i8 %op_modifier.1, 8
  %spec.select = select i1 %or.cond131, i8 %op_modifier.1, i8 %16
  br label %if.end35

if.end35:                                         ; preds = %land.lhs.true, %if.end10.if.end35_crit_edge
  %op_modifier.2 = phi i8 [ %op_modifier.1, %if.end10.if.end35_crit_edge ], [ %spec.select, %land.lhs.true ]
  br i1 %tobool11.not, label %if.end35.if.end57_crit_edge, label %if.then37

if.end35.if.end57_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end57

if.then37:                                        ; preds = %if.end35
  %add.ptr = getelementptr i8, ptr %4, i32 256
  %17 = call ptr @memset(ptr %add.ptr, i32 0, i32 256)
  %qp = getelementptr inbounds %struct.ib_wc, ptr %in_wc, i32 0, i32 5
  %18 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %qp, align 8
  %qp_num = getelementptr inbounds %struct.ib_qp, ptr %19, i32 0, i32 19
  %20 = ptrtoint ptr %qp_num to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %qp_num, align 4
  %22 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %add.ptr, align 4
  %src_qp = getelementptr inbounds %struct.ib_wc, ptr %in_wc, i32 0, i32 7
  %23 = ptrtoint ptr %src_qp to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %src_qp, align 8
  %rqpn = getelementptr i8, ptr %4, i32 264
  %25 = ptrtoint ptr %rqpn to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %rqpn, align 4
  %sl = getelementptr inbounds %struct.ib_wc, ptr %in_wc, i32 0, i32 11
  %26 = ptrtoint ptr %sl to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %sl, align 2
  %shl = shl i8 %27, 4
  %sl41 = getelementptr i8, ptr %4, i32 268
  %28 = ptrtoint ptr %sl41 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %shl, ptr %sl41, align 4
  %dlid_path_bits = getelementptr inbounds %struct.ib_wc, ptr %in_wc, i32 0, i32 12
  %29 = ptrtoint ptr %dlid_path_bits to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %dlid_path_bits, align 1
  %wc_flags = getelementptr inbounds %struct.ib_wc, ptr %in_wc, i32 0, i32 9
  %31 = ptrtoint ptr %wc_flags to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %wc_flags, align 8
  %.tr = trunc i32 %32 to i8
  %33 = shl i8 %.tr, 7
  %conv46 = or i8 %33, %30
  %g_path = getelementptr i8, ptr %4, i32 269
  %34 = ptrtoint ptr %g_path to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv46, ptr %g_path, align 1
  %pkey_index = getelementptr inbounds %struct.ib_wc, ptr %in_wc, i32 0, i32 10
  %35 = ptrtoint ptr %pkey_index to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %pkey_index, align 4
  %pkey = getelementptr i8, ptr %4, i32 274
  %37 = ptrtoint ptr %pkey to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %36, ptr %pkey, align 2
  %tobool47.not = icmp eq ptr %in_grh, null
  br i1 %tobool47.not, label %if.then37.if.end49_crit_edge, label %if.then48

if.then37.if.end49_crit_edge:                     ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end49

if.then48:                                        ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #13
  %grh = getelementptr i8, ptr %4, i32 320
  %38 = call ptr @memcpy(ptr %grh, ptr %in_grh, i32 40)
  br label %if.end49

if.end49:                                         ; preds = %if.then48, %if.then37.if.end49_crit_edge
  %39 = or i8 %op_modifier.2, 4
  %slid = getelementptr inbounds %struct.ib_wc, ptr %in_wc, i32 0, i32 8
  %40 = ptrtoint ptr %slid to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %slid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %41)
  %tobool.not.i = icmp ult i32 %41, 65536
  br i1 %tobool.not.i, label %if.end49.ib_lid_cpu16.exit_crit_edge, label %land.rhs.i

if.end49.ib_lid_cpu16.exit_crit_edge:             ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #13
  br label %ib_lid_cpu16.exit

land.rhs.i:                                       ; preds = %if.end49
  %.b39.i = load i1, ptr @ib_lid_cpu16.__already_done, align 1
  br i1 %.b39.i, label %land.rhs.i.ib_lid_cpu16.exit_crit_edge, label %if.then.i, !prof !279

land.rhs.i.ib_lid_cpu16.exit_crit_edge:           ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ib_lid_cpu16.exit

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @ib_lid_cpu16.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.37, i32 noundef 4605, i32 noundef 9, ptr noundef null) #11
  br label %ib_lid_cpu16.exit

ib_lid_cpu16.exit:                                ; preds = %if.then.i, %land.rhs.i.ib_lid_cpu16.exit_crit_edge, %if.end49.ib_lid_cpu16.exit_crit_edge
  %conv54 = shl i32 %41, 16
  %or56 = or i32 %conv54, %port
  br label %if.end57

if.end57:                                         ; preds = %ib_lid_cpu16.exit, %if.end35.if.end57_crit_edge
  %in_modifier.0 = phi i32 [ %or56, %ib_lid_cpu16.exit ], [ %port, %if.end35.if.end57_crit_edge ]
  %op_modifier.3 = phi i8 [ %39, %ib_lid_cpu16.exit ], [ %op_modifier.2, %if.end35.if.end57_crit_edge ]
  %42 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev1, align 8
  %dma = getelementptr inbounds %struct.mlx4_cmd_mailbox, ptr %call, i32 0, i32 1
  %44 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %dma, align 4
  %conv59 = zext i32 %45 to i64
  %dma60 = getelementptr inbounds %struct.mlx4_cmd_mailbox, ptr %call5, i32 0, i32 1
  %46 = ptrtoint ptr %dma60 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %dma60, align 4
  %conv61 = zext i32 %47 to i64
  %flags.i133 = getelementptr inbounds %struct.mlx4_dev, ptr %43, i32 0, i32 1
  %48 = ptrtoint ptr %flags.i133 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %flags.i133, align 4
  %and.i134 = and i32 %49, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i134)
  %tobool64.not = icmp eq i32 %and.i134, 0
  %and66 = and i8 %op_modifier.3, -9
  %cond68 = select i1 %tobool64.not, i8 %op_modifier.3, i8 %and66
  %50 = lshr i8 %op_modifier.3, 3
  %.lobit = and i8 %50, 1
  %51 = zext i8 %.lobit to i32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %out_param.addr.i)
  %52 = ptrtoint ptr %out_param.addr.i to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 %conv61, ptr %out_param.addr.i, align 8
  %call.i = call i32 @__mlx4_cmd(ptr noundef %43, i64 noundef %conv59, ptr noundef nonnull %out_param.addr.i, i32 noundef 0, i32 noundef %in_modifier.0, i8 noundef zeroext %cond68, i16 noundef zeroext 36, i32 noundef 60000, i32 noundef %51) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %out_param.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool75.not = icmp eq i32 %call.i, 0
  br i1 %tobool75.not, label %if.then76, label %if.end57.if.end78_crit_edge

if.end57.if.end78_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end78

if.then76:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #13
  %53 = ptrtoint ptr %call5 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %call5, align 4
  %55 = call ptr @memcpy(ptr %response_mad, ptr %54, i32 256)
  br label %if.end78

if.end78:                                         ; preds = %if.then76, %if.end57.if.end78_crit_edge
  %56 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev1, align 8
  call void @mlx4_free_cmd_mailbox(ptr noundef %57, ptr noundef %call) #11
  %58 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev1, align 8
  call void @mlx4_free_cmd_mailbox(ptr noundef %59, ptr noundef %call5) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end78, %if.then7, %if.then
  %retval.0 = phi i32 [ %2, %if.then ], [ %9, %if.then7 ], [ %call.i, %if.end78 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx4_alloc_cmd_mailbox(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx4_free_cmd_mailbox(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx4_ib_find_real_gid(ptr nocapture noundef readonly %ibdev, i32 noundef %port, i64 noundef %guid) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sriov = getelementptr inbounds %struct.mlx4_ib_dev, ptr %ibdev, i32 0, i32 11
  %sub = add i32 %port, -1
  %dev1 = getelementptr inbounds %struct.mlx4_ib_dev, ptr %ibdev, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 8
  %sqp_demux = getelementptr inbounds %struct.mlx4_dev, ptr %1, i32 0, i32 3, i32 81
  %2 = ptrtoint ptr %sqp_demux to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %sqp_demux, align 4
  %conv = zext i16 %3 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp11.not = icmp eq i16 %3, 0
  br i1 %cmp11.not, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.012 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx3 = getelementptr [2 x %struct.mlx4_ib_demux_ctx], ptr %sriov, i32 0, i32 %sub, i32 7, i32 %i.012
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %arrayidx3, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %guid)
  %cmp4 = icmp eq i64 %5, %guid
  br i1 %cmp4, label %for.body.cleanup_crit_edge, label %for.inc

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.012, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ -1, %for.inc.cleanup_crit_edge ], [ %i.012, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx4_ib_send_to_slave(ptr noundef %dev, i32 noundef %slave, i32 noundef %port, i32 noundef %dest_qpt, ptr nocapture noundef readonly %wc, ptr noundef %grh, ptr nocapture noundef readonly %mad) local_unnamed_addr #0 align 64 {
entry:
  %list = alloca %struct.ib_sge, align 8
  %wr = alloca %struct.ib_ud_wr, align 8
  %bad_wr = alloca ptr, align 4
  %attr = alloca %struct.rdma_ah_attr, align 8
  %cached_pkey = alloca i16, align 2
  %pkey_ix = alloca i16, align 2
  %sgid = alloca %union.ib_gid, align 8
  %dgid = alloca %union.ib_gid, align 8
  %vlan = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %list) #11
  %0 = getelementptr inbounds %struct.ib_sge, ptr %list, i32 0, i32 1
  %1 = getelementptr inbounds %struct.ib_sge, ptr %list, i32 0, i32 2
  %2 = call ptr @memset(ptr %list, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %wr) #11
  %3 = call ptr @memset(ptr %wr, i32 255, i32 72)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bad_wr) #11
  %4 = ptrtoint ptr %bad_wr to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %bad_wr, align 4, !annotation !280
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %attr) #11
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %cached_pkey) #11
  %5 = ptrtoint ptr %cached_pkey to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 -1, ptr %cached_pkey, align 2, !annotation !280
  %dev1 = getelementptr inbounds %struct.mlx4_ib_dev, ptr %dev, i32 0, i32 1
  %6 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev1, align 8
  %arrayidx = getelementptr %struct.mlx4_dev, ptr %7, i32 0, i32 3, i32 73, i32 %port
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp = icmp eq i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dest_qpt)
  %cmp3 = icmp ugt i32 %dest_qpt, 1
  br i1 %cmp3, label %do.body, label %if.end8

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx4_ib_send_to_slave.__UNIQUE_ID_ddebug512, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx4_ib_send_to_slave, %if.then7)) #11
          to label %cleanup219 [label %if.then7], !srcloc !281

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mlx4_ib_send_to_slave.__UNIQUE_ID_ddebug512, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef %dest_qpt) #11
  br label %cleanup219

if.end8:                                          ; preds = %entry
  %sriov = getelementptr inbounds %struct.mlx4_ib_dev, ptr %dev, i32 0, i32 11
  %sub = add i32 %port, -1
  %tun = getelementptr [2 x %struct.mlx4_ib_demux_ctx], ptr %sriov, i32 0, i32 %sub, i32 13
  %10 = ptrtoint ptr %tun to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tun, align 8
  %arrayidx10 = getelementptr ptr, ptr %11, i32 %slave
  %12 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx10, align 4
  %tobool11.not = icmp eq ptr %13, null
  br i1 %tobool11.not, label %if.end8.cleanup219_crit_edge, label %lor.lhs.false

if.end8.cleanup219_crit_edge:                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup219

lor.lhs.false:                                    ; preds = %if.end8
  %state = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %15)
  %cmp12.not = icmp eq i32 %15, 2
  br i1 %cmp12.not, label %if.end15, label %lor.lhs.false.cleanup219_crit_edge

lor.lhs.false.cleanup219_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup219

if.end15:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dest_qpt)
  %tobool16.not = icmp eq i32 %dest_qpt, 0
  %arrayidx20 = getelementptr %struct.mlx4_ib_demux_pv_ctx, ptr %13, i32 0, i32 10, i32 1
  %qp = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, ptr %13, i32 0, i32 10
  %tun_qp.0 = select i1 %tobool16.not, ptr %qp, ptr %arrayidx20
  br i1 %tobool16.not, label %if.else75, label %if.then23

if.then23:                                        ; preds = %if.end15
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %pkey_ix) #11
  %16 = ptrtoint ptr %pkey_ix to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 -1, ptr %pkey_ix, align 2, !annotation !280
  %pkey_index = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 10
  %17 = ptrtoint ptr %pkey_index to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %pkey_index, align 4
  %conv24 = zext i16 %18 to i32
  %call25 = call i32 @ib_get_cached_pkey(ptr noundef %dev, i32 noundef %port, i32 noundef %conv24, ptr noundef nonnull %cached_pkey) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end49, label %do.body28

do.body28:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx4_ib_send_to_slave.__UNIQUE_ID_ddebug513, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx4_ib_send_to_slave, %if.then40)) #11
          to label %cleanup [label %if.then40], !srcloc !281

if.then40:                                        ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #13
  %src_qp41 = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 7
  %19 = ptrtoint ptr %src_qp41 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %src_qp41, align 8
  %21 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev1, align 8
  %base_proxy_sqpn.i = getelementptr inbounds %struct.mlx4_dev, ptr %22, i32 0, i32 4, i32 4
  %23 = ptrtoint ptr %base_proxy_sqpn.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %base_proxy_sqpn.i, align 8
  %mul.i = shl i32 %slave, 3
  %add.i = add i32 %24, %mul.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %20)
  %cmp.not.i = icmp sgt i32 %add.i, %20
  %add2.i = add i32 %add.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add2.i, i32 %20)
  %cmp3.i = icmp slt i32 %add2.i, %20
  %tobool43.not = or i1 %cmp.not.i, %cmp3.i
  %cond = select i1 %tobool43.not, ptr @.str.8, ptr @.str.7
  %25 = ptrtoint ptr %pkey_index to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %pkey_index, align 4
  %conv45 = zext i16 %26 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mlx4_ib_send_to_slave.__UNIQUE_ID_ddebug513, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, ptr noundef nonnull %cond, i32 noundef %conv45, i32 noundef %call25) #11
  br label %cleanup.thread

if.end49:                                         ; preds = %if.then23
  %27 = ptrtoint ptr %cached_pkey to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %cached_pkey, align 2
  %call50 = call fastcc i32 @find_slave_port_pkey_ix(ptr noundef %dev, i32 noundef %slave, i32 noundef %port, i16 noundef zeroext %28, ptr noundef nonnull %pkey_ix)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %cleanup.thread365, label %do.body53

do.body53:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx4_ib_send_to_slave.__UNIQUE_ID_ddebug514, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx4_ib_send_to_slave, %if.then65)) #11
          to label %cleanup [label %if.then65], !srcloc !281

if.then65:                                        ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #13
  %src_qp66 = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 7
  %29 = ptrtoint ptr %src_qp66 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %src_qp66, align 8
  %31 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev1, align 8
  %base_proxy_sqpn.i343 = getelementptr inbounds %struct.mlx4_dev, ptr %32, i32 0, i32 4, i32 4
  %33 = ptrtoint ptr %base_proxy_sqpn.i343 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %base_proxy_sqpn.i343, align 8
  %mul.i344 = shl i32 %slave, 3
  %add.i345 = add i32 %34, %mul.i344
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i345, i32 %30)
  %cmp.not.i346 = icmp sgt i32 %add.i345, %30
  %add2.i347 = add i32 %add.i345, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add2.i347, i32 %30)
  %cmp3.i348 = icmp slt i32 %add2.i347, %30
  %tobool68.not = or i1 %cmp.not.i346, %cmp3.i348
  %cond69 = select i1 %tobool68.not, ptr @.str.8, ptr @.str.7
  %35 = ptrtoint ptr %cached_pkey to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %cached_pkey, align 2
  %conv70 = zext i16 %36 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mlx4_ib_send_to_slave.__UNIQUE_ID_ddebug514, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, ptr noundef nonnull %cond69, i32 noundef %conv70, i32 noundef %call50) #11
  br label %cleanup.thread

cleanup.thread365:                                ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #13
  %37 = ptrtoint ptr %pkey_ix to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %pkey_ix, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %pkey_ix) #11
  br label %if.end81

cleanup.thread:                                   ; preds = %if.then65, %if.then40
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %pkey_ix) #11
  br label %cleanup219

cleanup:                                          ; preds = %do.body53, %do.body28
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %pkey_ix) #11
  br label %cleanup219

if.else75:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  %pkeys = getelementptr inbounds %struct.mlx4_ib_dev, ptr %dev, i32 0, i32 21
  %arrayidx78 = getelementptr [128 x [2 x [128 x i8]]], ptr %pkeys, i32 0, i32 %slave, i32 %sub
  %39 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx78, align 8
  %conv80 = zext i8 %40 to i16
  br label %if.end81

if.end81:                                         ; preds = %if.else75, %cleanup.thread365
  %tun_pkey_ix.1 = phi i16 [ %conv80, %if.else75 ], [ %38, %cleanup.thread365 ]
  %41 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev1, align 8
  %base_proxy_sqpn = getelementptr inbounds %struct.mlx4_dev, ptr %42, i32 0, i32 4, i32 4
  %43 = ptrtoint ptr %base_proxy_sqpn to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %base_proxy_sqpn, align 8
  %mul = shl i32 %slave, 3
  %mul84 = shl nuw nsw i32 %dest_qpt, 1
  %add83 = add i32 %sub, %mul
  %add85 = add i32 %add83, %mul84
  %sub86 = add i32 %add85, %44
  %45 = ptrtoint ptr %tun_qp.0 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %tun_qp.0, align 4
  %47 = call ptr @memset(ptr %attr, i32 0, i32 56)
  %port_data.i.i = getelementptr inbounds %struct.ib_device, ptr %dev, i32 0, i32 11
  %48 = ptrtoint ptr %port_data.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %port_data.i.i, align 8
  %core_cap_flags.i.i = getelementptr %struct.ib_port_data, ptr %49, i32 %port, i32 1, i32 2
  %50 = ptrtoint ptr %core_cap_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %core_cap_flags.i.i, align 4
  %and.i.i = and i32 %51, 10485760
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.end.i, label %if.end81.rdma_ah_find_type.exit_crit_edge

if.end81.rdma_ah_find_type.exit_crit_edge:        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #13
  br label %rdma_ah_find_type.exit

if.end.i:                                         ; preds = %if.end81
  %and.i13.i = and i32 %51, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i13.i)
  %tobool.i14.not.i = icmp eq i32 %and.i13.i, 0
  br i1 %tobool.i14.not.i, label %if.end.i.rdma_ah_find_type.exit_crit_edge, label %if.then2.i

if.end.i.rdma_ah_find_type.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rdma_ah_find_type.exit

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %and.i17.i = and i32 %51, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i17.i)
  %cmp.i.not.i = icmp eq i32 %and.i17.i, 0
  %..i = select i1 %cmp.i.not.i, i32 1, i32 3
  br label %rdma_ah_find_type.exit

rdma_ah_find_type.exit:                           ; preds = %if.then2.i, %if.end.i.rdma_ah_find_type.exit_crit_edge, %if.end81.rdma_ah_find_type.exit_crit_edge
  %retval.0.i350 = phi i32 [ 2, %if.end81.rdma_ah_find_type.exit_crit_edge ], [ %..i, %if.then2.i ], [ 0, %if.end.i.rdma_ah_find_type.exit_crit_edge ]
  %type = getelementptr inbounds %struct.rdma_ah_attr, ptr %attr, i32 0, i32 5
  %52 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %retval.0.i350, ptr %type, align 4
  %port_num1.i = getelementptr inbounds %struct.rdma_ah_attr, ptr %attr, i32 0, i32 3
  %53 = ptrtoint ptr %port_num1.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %port, ptr %port_num1.i, align 4
  br i1 %cmp, label %if.then91, label %rdma_ah_find_type.exit.if.end100_crit_edge

rdma_ah_find_type.exit.if.end100_crit_edge:       ; preds = %rdma_ah_find_type.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end100

if.then91:                                        ; preds = %rdma_ah_find_type.exit
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %sgid) #11
  %54 = call ptr @memset(ptr %sgid, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %dgid) #11
  %55 = call ptr @memset(ptr %dgid, i32 255, i32 16)
  %call.i = call i32 @ib_get_rdma_header_version(ptr noundef %grh) #11
  %56 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %56, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call.i, label %if.then91.cleanup219.critedge_crit_edge [
    i32 4, label %if.then91.get_gids_from_l3_hdr.exit_crit_edge
    i32 6, label %if.then2.i351
  ]

if.then91.get_gids_from_l3_hdr.exit_crit_edge:    ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #13
  br label %get_gids_from_l3_hdr.exit

if.then91.cleanup219.critedge_crit_edge:          ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup219.critedge

if.then2.i351:                                    ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #13
  br label %get_gids_from_l3_hdr.exit

get_gids_from_l3_hdr.exit:                        ; preds = %if.then2.i351, %if.then91.get_gids_from_l3_hdr.exit_crit_edge
  %net_type.0.i = phi i32 [ 3, %if.then2.i351 ], [ 2, %if.then91.get_gids_from_l3_hdr.exit_crit_edge ]
  %call5.i = call i32 @ib_get_gids_from_rdma_hdr(ptr noundef %grh, i32 noundef %net_type.0.i, ptr noundef nonnull %sgid, ptr noundef nonnull %dgid) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool93.not = icmp eq i32 %call5.i, 0
  br i1 %tobool93.not, label %if.end95, label %get_gids_from_l3_hdr.exit.cleanup219.critedge_crit_edge

get_gids_from_l3_hdr.exit.cleanup219.critedge_crit_edge: ; preds = %get_gids_from_l3_hdr.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup219.critedge

if.end95:                                         ; preds = %get_gids_from_l3_hdr.exit
  call void @__sanitizer_cov_trace_pc() #13
  %ah_flags.i = getelementptr inbounds %struct.rdma_ah_attr, ptr %attr, i32 0, i32 4
  %57 = ptrtoint ptr %ah_flags.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 1, ptr %ah_flags.i, align 8
  %dgid1.i = getelementptr inbounds %struct.ib_global_route, ptr %attr, i32 0, i32 1
  %58 = call ptr @memcpy(ptr %dgid1.i, ptr %dgid, i32 16)
  %flow_label2.i = getelementptr inbounds %struct.ib_global_route, ptr %attr, i32 0, i32 2
  %59 = ptrtoint ptr %attr to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr null, ptr %attr, align 8
  %60 = call ptr @memset(ptr %flow_label2.i, i32 0, i32 7)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %dgid) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %sgid) #11
  br label %if.end100

if.end100:                                        ; preds = %if.end95, %rdma_ah_find_type.exit.if.end100_crit_edge
  %pd = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, ptr %13, i32 0, i32 6
  %61 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %pd, align 4
  %call101 = call ptr @rdma_create_ah(ptr noundef %62, ptr noundef nonnull %attr, i32 noundef 0) #11
  %cmp.i = icmp ugt ptr %call101, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end100.cleanup219_crit_edge, label %if.end104

if.end100.cleanup219_crit_edge:                   ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup219

if.end104:                                        ; preds = %if.end100
  %tx_lock = getelementptr inbounds %struct.mlx4_ib_demux_pv_qp, ptr %tun_qp.0, i32 0, i32 4
  call void @_raw_spin_lock(ptr noundef %tx_lock) #11
  %tx_ix_head = getelementptr inbounds %struct.mlx4_ib_demux_pv_qp, ptr %tun_qp.0, i32 0, i32 5
  %63 = ptrtoint ptr %tx_ix_head to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %tx_ix_head, align 4
  %tx_ix_tail = getelementptr inbounds %struct.mlx4_ib_demux_pv_qp, ptr %tun_qp.0, i32 0, i32 6
  %65 = ptrtoint ptr %tx_ix_tail to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %tx_ix_tail, align 4
  %sub105 = sub i32 %64, %66
  call void @__sanitizer_cov_trace_const_cmp4(i32 510, i32 %sub105)
  %cmp106 = icmp ugt i32 %sub105, 510
  br i1 %cmp106, label %if.end111, label %if.end115

if.end111:                                        ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #13
  call void @_raw_spin_unlock(ptr noundef %tx_lock) #11
  br label %end

if.end115:                                        ; preds = %if.end104
  %inc = add i32 %64, 1
  %67 = ptrtoint ptr %tx_ix_head to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %inc, ptr %tx_ix_head, align 4
  %and = and i32 %inc, 511
  call void @_raw_spin_unlock(ptr noundef %tx_lock) #11
  %tx_ring = getelementptr inbounds %struct.mlx4_ib_demux_pv_qp, ptr %tun_qp.0, i32 0, i32 3
  %68 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %tx_ring, align 4
  %arrayidx116 = getelementptr %struct.mlx4_ib_tun_tx_buf, ptr %69, i32 %and
  %70 = ptrtoint ptr %arrayidx116 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %arrayidx116, align 4
  %ah119 = getelementptr %struct.mlx4_ib_tun_tx_buf, ptr %69, i32 %and, i32 1
  %72 = ptrtoint ptr %ah119 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %ah119, align 4
  %tobool120.not = icmp eq ptr %73, null
  br i1 %tobool120.not, label %if.end115.if.end125_crit_edge, label %if.then121

if.end115.if.end125_crit_edge:                    ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end125

if.then121:                                       ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @rdma_destroy_ah(ptr noundef nonnull %73)
  br label %if.end125

if.end125:                                        ; preds = %if.then121, %if.end115.if.end125_crit_edge
  %74 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %tx_ring, align 4
  %ah128 = getelementptr %struct.mlx4_ib_tun_tx_buf, ptr %75, i32 %and, i32 1
  %76 = ptrtoint ptr %ah128 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %call101, ptr %ah128, align 4
  %77 = load ptr, ptr %tx_ring, align 4
  %map = getelementptr %struct.mlx4_ib_tun_tx_buf, ptr %77, i32 %and, i32 0, i32 1
  %78 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %map, align 4
  %80 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dev, align 8
  call void @dma_sync_single_for_cpu(ptr noundef %81, i32 noundef %79, i32 noundef 312, i32 noundef 1) #11
  %tobool134.not = icmp eq ptr %grh, null
  br i1 %tobool134.not, label %land.end.critedge, label %if.then135

if.then135:                                       ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #13
  %grh136 = getelementptr inbounds %struct.mlx4_rcv_tunnel_mad, ptr %71, i32 0, i32 1
  %82 = call ptr @memcpy(ptr %grh136, ptr %grh, i32 40)
  %mad138.c = getelementptr inbounds %struct.mlx4_rcv_tunnel_mad, ptr %71, i32 0, i32 2
  %83 = call ptr @memcpy(ptr %mad138.c, ptr %mad, i32 256)
  %pkey_index139.c = getelementptr inbounds %struct.mlx4_rcv_tunnel_hdr, ptr %71, i32 0, i32 3
  %84 = ptrtoint ptr %pkey_index139.c to i32
  call void @__asan_storeN_noabort(i32 %84, i32 2)
  store i16 %tun_pkey_ix.1, ptr %pkey_index139.c, align 1
  %src_qp140.c = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 7
  %85 = ptrtoint ptr %src_qp140.c to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %src_qp140.c, align 8
  %and141.c = and i32 %86, 16777215
  %87 = ptrtoint ptr %71 to i32
  call void @__asan_storeN_noabort(i32 %87, i32 4)
  store i32 %and141.c, ptr %71, align 1
  %wc_flags = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 9
  %88 = ptrtoint ptr %wc_flags to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %wc_flags, align 8
  %.tr = trunc i32 %89 to i8
  %phi.cast = shl i8 %.tr, 7
  br label %land.end

land.end.critedge:                                ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #13
  %mad138.c332 = getelementptr inbounds %struct.mlx4_rcv_tunnel_mad, ptr %71, i32 0, i32 2
  %90 = call ptr @memcpy(ptr %mad138.c332, ptr %mad, i32 256)
  %pkey_index139.c333 = getelementptr inbounds %struct.mlx4_rcv_tunnel_hdr, ptr %71, i32 0, i32 3
  %91 = ptrtoint ptr %pkey_index139.c333 to i32
  call void @__asan_storeN_noabort(i32 %91, i32 2)
  store i16 %tun_pkey_ix.1, ptr %pkey_index139.c333, align 1
  %src_qp140.c334 = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 7
  %92 = ptrtoint ptr %src_qp140.c334 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %src_qp140.c334, align 8
  %and141.c335 = and i32 %93, 16777215
  %94 = ptrtoint ptr %71 to i32
  call void @__asan_storeN_noabort(i32 %94, i32 4)
  store i32 %and141.c335, ptr %71, align 1
  br label %land.end

land.end:                                         ; preds = %land.end.critedge, %if.then135
  %95 = phi i8 [ %phi.cast, %if.then135 ], [ 0, %land.end.critedge ]
  %g_ml_path = getelementptr inbounds %struct.mlx4_rcv_tunnel_hdr, ptr %71, i32 0, i32 1
  %96 = ptrtoint ptr %g_ml_path to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %95, ptr %g_ml_path, align 1
  br i1 %cmp, label %if.then150, label %if.else173

if.then150:                                       ; preds = %land.end
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %vlan) #11
  %97 = ptrtoint ptr %vlan to i32
  call void @__asan_store2_noabort(i32 %97)
  store i16 0, ptr %vlan, align 2
  %98 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %dev1, align 8
  %call152 = call zeroext i1 @mlx4_get_slave_default_vlan(ptr noundef %99, i32 noundef %port, i32 noundef %slave, ptr noundef nonnull %vlan, ptr noundef null) #11
  br i1 %call152, label %if.then153, label %if.else161

if.then153:                                       ; preds = %if.then150
  %100 = ptrtoint ptr %vlan to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %vlan, align 2
  %vlan_id = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 15
  %102 = ptrtoint ptr %vlan_id to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %vlan_id, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %101, i16 %103)
  %cmp156.not = icmp eq i16 %101, %103
  br i1 %cmp156.not, label %if.then153.cleanup170.thread_crit_edge, label %cleanup170

if.then153.cleanup170.thread_crit_edge:           ; preds = %if.then153
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup170.thread

if.else161:                                       ; preds = %if.then150
  call void @__sanitizer_cov_trace_pc() #13
  %vlan_id162 = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 15
  %104 = ptrtoint ptr %vlan_id162 to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %vlan_id162, align 2
  br label %cleanup170.thread

cleanup170.thread:                                ; preds = %if.else161, %if.then153.cleanup170.thread_crit_edge
  %storemerge = phi i16 [ %105, %if.else161 ], [ -1, %if.then153.cleanup170.thread_crit_edge ]
  %sl_vid = getelementptr inbounds %struct.mlx4_rcv_tunnel_hdr, ptr %71, i32 0, i32 4
  %106 = ptrtoint ptr %sl_vid to i32
  call void @__asan_storeN_noabort(i32 %106, i32 2)
  store i16 %storemerge, ptr %sl_vid, align 1
  %mac_31_0 = getelementptr inbounds %struct.mlx4_rcv_tunnel_hdr, ptr %71, i32 0, i32 6
  %smac = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 14
  %107 = ptrtoint ptr %smac to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %smac, align 4
  %109 = ptrtoint ptr %mac_31_0 to i32
  call void @__asan_storeN_noabort(i32 %109, i32 4)
  store i32 %108, ptr %mac_31_0, align 1
  %slid_mac_47_32 = getelementptr inbounds %struct.mlx4_rcv_tunnel_hdr, ptr %71, i32 0, i32 5
  %arrayidx169 = getelementptr %struct.ib_wc, ptr %wc, i32 0, i32 14, i32 4
  %110 = ptrtoint ptr %arrayidx169 to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %arrayidx169, align 4
  %112 = ptrtoint ptr %slid_mac_47_32 to i32
  call void @__asan_storeN_noabort(i32 %112, i32 2)
  store i16 %111, ptr %slid_mac_47_32, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %vlan) #11
  br label %if.end182

cleanup170:                                       ; preds = %if.then153
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %vlan) #11
  br label %out

if.else173:                                       ; preds = %land.end
  %sl = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 11
  %113 = ptrtoint ptr %sl to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %sl, align 2
  %conv175 = zext i8 %114 to i16
  %shl = shl i16 %conv175, 12
  %sl_vid178 = getelementptr inbounds %struct.mlx4_rcv_tunnel_hdr, ptr %71, i32 0, i32 4
  %115 = ptrtoint ptr %sl_vid178 to i32
  call void @__asan_storeN_noabort(i32 %115, i32 2)
  store i16 %shl, ptr %sl_vid178, align 1
  %slid = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 8
  %116 = ptrtoint ptr %slid to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %slid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %117)
  %tobool.not.i = icmp ult i32 %117, 65536
  br i1 %tobool.not.i, label %if.else173.ib_lid_be16.exit_crit_edge, label %land.rhs.i

if.else173.ib_lid_be16.exit_crit_edge:            ; preds = %if.else173
  call void @__sanitizer_cov_trace_pc() #13
  br label %ib_lid_be16.exit

land.rhs.i:                                       ; preds = %if.else173
  %.b39.i = load i1, ptr @ib_lid_be16.__already_done, align 1
  br i1 %.b39.i, label %land.rhs.i.ib_lid_be16.exit_crit_edge, label %if.then.i, !prof !279

land.rhs.i.ib_lid_be16.exit_crit_edge:            ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ib_lid_be16.exit

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @ib_lid_be16.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.37, i32 noundef 4616, i32 noundef 9, ptr noundef null) #11
  br label %ib_lid_be16.exit

ib_lid_be16.exit:                                 ; preds = %if.then.i, %land.rhs.i.ib_lid_be16.exit_crit_edge, %if.else173.ib_lid_be16.exit_crit_edge
  %conv.i = trunc i32 %117 to i16
  %slid_mac_47_32181 = getelementptr inbounds %struct.mlx4_rcv_tunnel_hdr, ptr %71, i32 0, i32 5
  %118 = ptrtoint ptr %slid_mac_47_32181 to i32
  call void @__asan_storeN_noabort(i32 %118, i32 2)
  store i16 %conv.i, ptr %slid_mac_47_32181, align 1
  br label %if.end182

if.end182:                                        ; preds = %ib_lid_be16.exit, %cleanup170.thread
  %119 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %tx_ring, align 4
  %map187 = getelementptr %struct.mlx4_ib_tun_tx_buf, ptr %120, i32 %and, i32 0, i32 1
  %121 = ptrtoint ptr %map187 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %map187, align 4
  %123 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %dev, align 8
  call void @dma_sync_single_for_device(ptr noundef %124, i32 noundef %122, i32 noundef 312, i32 noundef 1) #11
  %125 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %tx_ring, align 4
  %map192 = getelementptr %struct.mlx4_ib_tun_tx_buf, ptr %126, i32 %and, i32 0, i32 1
  %127 = ptrtoint ptr %map192 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %map192, align 4
  %conv193 = zext i32 %128 to i64
  %129 = ptrtoint ptr %list to i32
  call void @__asan_store8_noabort(i32 %129)
  store i64 %conv193, ptr %list, align 8
  %130 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 312, ptr %0, align 8
  %131 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %pd, align 4
  %133 = ptrtoint ptr %132 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %132, align 4
  %135 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %134, ptr %1, align 4
  %ah196 = getelementptr inbounds %struct.ib_ud_wr, ptr %wr, i32 0, i32 1
  %136 = ptrtoint ptr %ah196 to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr %call101, ptr %ah196, align 8
  %port_num = getelementptr inbounds %struct.ib_ud_wr, ptr %wr, i32 0, i32 8
  %137 = ptrtoint ptr %port_num to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %port, ptr %port_num, align 4
  %remote_qkey = getelementptr inbounds %struct.ib_ud_wr, ptr %wr, i32 0, i32 6
  %138 = ptrtoint ptr %remote_qkey to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 -2147483648, ptr %remote_qkey, align 4
  %remote_qpn = getelementptr inbounds %struct.ib_ud_wr, ptr %wr, i32 0, i32 5
  %139 = ptrtoint ptr %remote_qpn to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %sub86, ptr %remote_qpn, align 8
  %140 = ptrtoint ptr %wr to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr null, ptr %wr, align 8
  %conv198 = zext i32 %and to i64
  %conv200 = zext i32 %dest_qpt to i64
  %shl201 = shl nuw nsw i64 %conv200, 32
  %or = or i64 %shl201, %conv198
  %141 = getelementptr inbounds %struct.ib_send_wr, ptr %wr, i32 0, i32 1
  %142 = ptrtoint ptr %141 to i32
  call void @__asan_store8_noabort(i32 %142)
  store i64 %or, ptr %141, align 8
  %sg_list = getelementptr inbounds %struct.ib_send_wr, ptr %wr, i32 0, i32 2
  %143 = ptrtoint ptr %sg_list to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr %list, ptr %sg_list, align 8
  %num_sge = getelementptr inbounds %struct.ib_send_wr, ptr %wr, i32 0, i32 3
  %144 = ptrtoint ptr %num_sge to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 1, ptr %num_sge, align 4
  %opcode = getelementptr inbounds %struct.ib_send_wr, ptr %wr, i32 0, i32 4
  %145 = ptrtoint ptr %opcode to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 2, ptr %opcode, align 8
  %send_flags = getelementptr inbounds %struct.ib_send_wr, ptr %wr, i32 0, i32 5
  %146 = ptrtoint ptr %send_flags to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 2, ptr %send_flags, align 4
  %147 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %46, align 4
  %post_send.i = getelementptr inbounds %struct.ib_device, ptr %148, i32 0, i32 1, i32 6
  %149 = ptrtoint ptr %post_send.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %post_send.i, align 4
  %call.i354 = call i32 %150(ptr noundef %46, ptr noundef nonnull %wr, ptr noundef nonnull %bad_wr) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i354)
  %tobool209.not = icmp eq i32 %call.i354, 0
  br i1 %tobool209.not, label %if.end182.cleanup219_crit_edge, label %if.end182.out_crit_edge

if.end182.out_crit_edge:                          ; preds = %if.end182
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end182.cleanup219_crit_edge:                   ; preds = %if.end182
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup219

out:                                              ; preds = %if.end182.out_crit_edge, %cleanup170
  %ret.3 = phi i32 [ 0, %cleanup170 ], [ %call.i354, %if.end182.out_crit_edge ]
  call void @_raw_spin_lock(ptr noundef %tx_lock) #11
  %151 = ptrtoint ptr %tx_ix_tail to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %tx_ix_tail, align 4
  %inc214 = add i32 %152, 1
  store i32 %inc214, ptr %tx_ix_tail, align 4
  call void @_raw_spin_unlock(ptr noundef %tx_lock) #11
  %153 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %tx_ring, align 4
  %ah218 = getelementptr %struct.mlx4_ib_tun_tx_buf, ptr %154, i32 %and, i32 1
  %155 = ptrtoint ptr %ah218 to i32
  call void @__asan_store4_noabort(i32 %155)
  store ptr null, ptr %ah218, align 4
  br label %end

end:                                              ; preds = %out, %if.end111
  %ret.4 = phi i32 [ -11, %if.end111 ], [ %ret.3, %out ]
  %call.i355 = call i32 @rdma_destroy_ah_user(ptr noundef %call101, i32 noundef 0, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i355)
  %tobool.not.i356 = icmp eq i32 %call.i355, 0
  br i1 %tobool.not.i356, label %end.cleanup219_crit_edge, label %land.rhs.i357

end.cleanup219_crit_edge:                         ; preds = %end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup219

land.rhs.i357:                                    ; preds = %end
  %.b1.i = load i1, ptr @rdma_destroy_ah.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i357.cleanup219_crit_edge, label %if.then.i358, !prof !279

land.rhs.i357.cleanup219_crit_edge:               ; preds = %land.rhs.i357
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup219

if.then.i358:                                     ; preds = %land.rhs.i357
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rdma_destroy_ah.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.37, i32 noundef 3630, i32 noundef 9, ptr noundef nonnull @.str.38) #11
  br label %cleanup219

cleanup219.critedge:                              ; preds = %get_gids_from_l3_hdr.exit.cleanup219.critedge_crit_edge, %if.then91.cleanup219.critedge_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %dgid) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %sgid) #11
  br label %cleanup219

cleanup219:                                       ; preds = %cleanup219.critedge, %if.then.i358, %land.rhs.i357.cleanup219_crit_edge, %end.cleanup219_crit_edge, %if.end182.cleanup219_crit_edge, %if.end100.cleanup219_crit_edge, %cleanup, %cleanup.thread, %lor.lhs.false.cleanup219_crit_edge, %if.end8.cleanup219_crit_edge, %if.then7, %do.body
  %retval.4 = phi i32 [ -22, %cleanup ], [ -22, %if.then7 ], [ -11, %lor.lhs.false.cleanup219_crit_edge ], [ -11, %if.end8.cleanup219_crit_edge ], [ -22, %cleanup219.critedge ], [ -12, %if.end100.cleanup219_crit_edge ], [ 0, %if.end182.cleanup219_crit_edge ], [ -22, %do.body ], [ -22, %cleanup.thread ], [ %ret.4, %end.cleanup219_crit_edge ], [ %ret.4, %land.rhs.i357.cleanup219_crit_edge ], [ %ret.4, %if.then.i358 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cached_pkey) #11
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %attr) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bad_wr) #11
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %wr) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %list) #11
  ret i32 %retval.4
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_get_cached_pkey(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @find_slave_port_pkey_ix(ptr noundef %dev, i32 noundef %slave, i32 noundef %port, i16 noundef zeroext %pkey, ptr noundef %ix) unnamed_addr #0 align 64 {
entry:
  %slot_pkey = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %slot_pkey) #11
  %0 = ptrtoint ptr %slot_pkey to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %slot_pkey, align 2, !annotation !280
  %dev1 = getelementptr inbounds %struct.mlx4_ib_dev, ptr %dev, i32 0, i32 1
  %1 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev1, align 8
  %function.i = getelementptr inbounds %struct.mlx4_dev, ptr %2, i32 0, i32 3, i32 1
  %3 = ptrtoint ptr %function.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %function.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %slave)
  %cmp = icmp eq i32 %4, %slave
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call2 = tail call i32 @ib_find_cached_pkey(ptr noundef %dev, i32 noundef %port, i16 noundef zeroext %pkey, ptr noundef %ix) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev1, align 8
  %arrayidx582 = getelementptr %struct.mlx4_dev, ptr %6, i32 0, i32 3, i32 9, i32 %port
  %7 = ptrtoint ptr %arrayidx582 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx582, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp683 = icmp sgt i32 %8, 0
  br i1 %cmp683, label %for.body.lr.ph, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end
  %arrayidx = getelementptr %struct.mlx4_dev, ptr %2, i32 0, i32 4, i32 1, i32 %port
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %conv = add i32 %10, 255
  %pkeys = getelementptr inbounds %struct.mlx4_ib_dev, ptr %dev, i32 0, i32 21
  %sub9 = add i32 %port, -1
  %conv13 = and i32 %conv, 255
  %11 = and i16 %pkey, 32767
  %and31 = zext i16 %11 to i32
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %partial_ix.085 = phi i8 [ -1, %for.body.lr.ph ], [ %partial_ix.1, %for.inc.for.body_crit_edge ]
  %i.084 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx11 = getelementptr [128 x [2 x [128 x i8]]], ptr %pkeys, i32 0, i32 %slave, i32 %sub9, i32 %i.084
  %12 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx11, align 1
  %conv12 = zext i8 %13 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv13, i32 %conv12)
  %cmp14 = icmp eq i32 %conv13, %conv12
  br i1 %cmp14, label %for.body.for.inc_crit_edge, label %if.end17

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end17:                                         ; preds = %for.body
  %call26 = call i32 @ib_get_cached_pkey(ptr noundef %dev, i32 noundef %port, i32 noundef %conv12, ptr noundef nonnull %slot_pkey) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool.not = icmp eq i32 %call26, 0
  br i1 %tobool.not, label %if.end28, label %if.end17.for.inc_crit_edge

if.end17.for.inc_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end28:                                         ; preds = %if.end17
  %14 = ptrtoint ptr %slot_pkey to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %slot_pkey, align 2
  %conv29 = zext i16 %15 to i32
  %and = and i32 %conv29, 32767
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %and31)
  %cmp32 = icmp eq i32 %and, %and31
  br i1 %cmp32, label %if.then34, label %if.end28.for.inc_crit_edge

if.end28.for.inc_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then34:                                        ; preds = %if.end28
  %and36 = and i32 %conv29, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %if.else, label %if.then38

if.then38:                                        ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #13
  %conv39 = zext i8 %13 to i16
  %16 = ptrtoint ptr %ix to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv39, ptr %ix, align 2
  br label %cleanup

if.else:                                          ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %partial_ix.085)
  %cmp41 = icmp eq i8 %partial_ix.085, -1
  %spec.select = select i1 %cmp41, i8 %13, i8 %partial_ix.085
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.end28.for.inc_crit_edge, %if.end17.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %partial_ix.1 = phi i8 [ %partial_ix.085, %for.body.for.inc_crit_edge ], [ %partial_ix.085, %if.end17.for.inc_crit_edge ], [ %partial_ix.085, %if.end28.for.inc_crit_edge ], [ %spec.select, %if.else ]
  %inc = add nuw nsw i32 %i.084, 1
  %17 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev1, align 8
  %arrayidx5 = getelementptr %struct.mlx4_dev, ptr %18, i32 0, i32 3, i32 9, i32 %port
  %19 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx5, align 4
  %cmp6 = icmp slt i32 %inc, %20
  br i1 %cmp6, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %partial_ix.1)
  %cmp48.not = icmp eq i8 %partial_ix.1, -1
  br i1 %cmp48.not, label %for.end.cleanup_crit_edge, label %if.then50

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then50:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %conv51 = zext i8 %partial_ix.1 to i16
  %21 = ptrtoint ptr %ix to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv51, ptr %ix, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.then50, %for.end.cleanup_crit_edge, %if.then38, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %call2, %if.then ], [ 0, %if.then38 ], [ 0, %if.then50 ], [ -22, %for.end.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %slot_pkey) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdma_create_ah(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rdma_destroy_ah(ptr noundef %ah) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 @rdma_destroy_ah_user(ptr noundef %ah, i32 noundef 0, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end28_crit_edge, label %land.rhs

entry.if.end28_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28

land.rhs:                                         ; preds = %entry
  %.b1 = load i1, ptr @rdma_destroy_ah.__already_done, align 1
  br i1 %.b1, label %land.rhs.if.end28_crit_edge, label %if.then, !prof !279

land.rhs.if.end28_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rdma_destroy_ah.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.37, i32 noundef 3630, i32 noundef 9, ptr noundef nonnull @.str.38) #11
  br label %if.end28

if.end28:                                         ; preds = %if.then, %land.rhs.if.end28_crit_edge, %entry.if.end28_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mlx4_get_slave_default_vlan(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx4_ib_process_mad(ptr noundef %ibdev, i32 noundef %mad_flags, i32 noundef %port_num, ptr noundef %in_wc, ptr noundef %in_grh, ptr noundef %in, ptr nocapture noundef %out, ptr nocapture noundef readnone %out_mad_size, ptr nocapture noundef readnone %out_mad_pkey_index) local_unnamed_addr #0 align 64 {
entry:
  %pattr.i = alloca %struct.ib_port_attr, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call1 = tail call i32 @rdma_port_get_link_layer(ptr noundef %ibdev, i32 noundef %port_num) #11
  %0 = zext i32 %call1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.153)
  switch i32 %call1, label %entry.cleanup_crit_edge [
    i32 1, label %if.then
    i32 2, label %if.then28
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then:                                          ; preds = %entry
  %dev2 = getelementptr inbounds %struct.mlx4_ib_dev, ptr %ibdev, i32 0, i32 1
  %1 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev2, align 8
  %flags.i = getelementptr inbounds %struct.mlx4_dev, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %4, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.then.if.end_crit_edge, label %land.lhs.true

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %if.then
  %mgmt_class = getelementptr inbounds %struct.ib_mad_hdr, ptr %in, i32 0, i32 1
  %5 = ptrtoint ptr %mgmt_class to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %mgmt_class, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %6)
  %cmp4 = icmp eq i8 %6, 4
  br i1 %cmp4, label %land.lhs.true6, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true6:                                   ; preds = %land.lhs.true
  %attr_id = getelementptr inbounds %struct.ib_mad_hdr, ptr %in, i32 0, i32 7
  %7 = ptrtoint ptr %attr_id to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %attr_id, align 8
  %9 = zext i16 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.154)
  switch i16 %8, label %land.lhs.true6.if.end_crit_edge [
    i16 18, label %land.lhs.true6.if.then22_crit_edge
    i16 29, label %land.lhs.true6.if.then22_crit_edge54
    i16 1, label %land.lhs.true6.if.then22_crit_edge55
  ]

land.lhs.true6.if.then22_crit_edge55:             ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then22

land.lhs.true6.if.then22_crit_edge54:             ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then22

land.lhs.true6.if.then22_crit_edge:               ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then22

land.lhs.true6.if.end_crit_edge:                  ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then22:                                        ; preds = %land.lhs.true6.if.then22_crit_edge, %land.lhs.true6.if.then22_crit_edge54, %land.lhs.true6.if.then22_crit_edge55
  %call23 = tail call fastcc i32 @iboe_process_mad(ptr noundef %ibdev, i32 noundef %port_num, ptr noundef %in, ptr noundef %out)
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true6.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %if.then.if.end_crit_edge
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %pattr.i) #11
  %10 = call ptr @memset(ptr %pattr.i, i32 255, i32 72)
  %tobool.not.i = icmp eq ptr %in_wc, null
  br i1 %tobool.not.i, label %cond.end.thread.i, label %cond.true.i

cond.end.thread.i:                                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %method199.i = getelementptr inbounds %struct.ib_mad_hdr, ptr %in, i32 0, i32 3
  %11 = ptrtoint ptr %method199.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %method199.i, align 1
  br label %if.end.i

cond.true.i:                                      ; preds = %if.end
  %slid1.i = getelementptr inbounds %struct.ib_wc, ptr %in_wc, i32 0, i32 8
  %13 = ptrtoint ptr %slid1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %slid1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %14)
  %tobool.not.i.i = icmp ult i32 %14, 65536
  br i1 %tobool.not.i.i, label %cond.true.i.cond.end.i_crit_edge, label %land.rhs.i.i

cond.true.i.cond.end.i_crit_edge:                 ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end.i

land.rhs.i.i:                                     ; preds = %cond.true.i
  %.b39.i.i = load i1, ptr @ib_lid_cpu16.__already_done, align 1
  br i1 %.b39.i.i, label %land.rhs.i.i.cond.end.i_crit_edge, label %if.then.i.i, !prof !279

land.rhs.i.i.cond.end.i_crit_edge:                ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end.i

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @ib_lid_cpu16.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.37, i32 noundef 4605, i32 noundef 9, ptr noundef null) #11
  br label %cond.end.i

cond.end.i:                                       ; preds = %if.then.i.i, %land.rhs.i.i.cond.end.i_crit_edge, %cond.true.i.cond.end.i_crit_edge
  %conv.i.i = trunc i32 %14 to i16
  %method.i = getelementptr inbounds %struct.ib_mad_hdr, ptr %in, i32 0, i32 3
  %15 = ptrtoint ptr %method.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %method.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %16)
  %cmp.i = icmp eq i8 %16, 5
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv.i.i)
  %cmp6.i = icmp eq i16 %conv.i.i, 0
  %or.cond.i = select i1 %cmp.i, i1 %cmp6.i, i1 false
  br i1 %or.cond.i, label %if.then.i, label %cond.end.i.if.end.i_crit_edge

cond.end.i.if.end.i_crit_edge:                    ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i:                                        ; preds = %cond.end.i
  %mgmt_class.i.i = getelementptr inbounds %struct.ib_mad_hdr, ptr %in, i32 0, i32 1
  %17 = ptrtoint ptr %mgmt_class.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %mgmt_class.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %18)
  %cmp.i.i = icmp ne i8 %18, 1
  %conv1.i.i = zext i1 %cmp.i.i to i32
  %sub.i.i = add i32 %port_num, -1
  %arrayidx2.i.i = getelementptr %struct.mlx4_ib_dev, ptr %ibdev, i32 0, i32 7, i32 %sub.i.i, i32 %conv1.i.i
  %19 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx2.i.i, align 4
  %tobool.not.i190.i = icmp eq ptr %20, null
  br i1 %tobool.not.i190.i, label %if.then.i.ib_process_mad.exit_crit_edge, label %if.then.i191.i

if.then.i.ib_process_mad.exit_crit_edge:          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ib_process_mad.exit

if.then.i191.i:                                   ; preds = %if.then.i
  %call.i.i = tail call ptr @ib_create_send_mad(ptr noundef nonnull %20, i32 noundef %conv1.i.i, i16 noundef zeroext 0, i32 noundef 0, i32 noundef 24, i32 noundef 232, i32 noundef 2592, i8 noundef zeroext 1) #11
  %cmp.i.i.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %if.then.i191.i.ib_process_mad.exit_crit_edge, label %do.body5.i.i

if.then.i191.i.ib_process_mad.exit_crit_edge:     ; preds = %if.then.i191.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ib_process_mad.exit

do.body5.i.i:                                     ; preds = %if.then.i191.i
  %sm_lock.i.i = getelementptr inbounds %struct.mlx4_ib_dev, ptr %ibdev, i32 0, i32 9
  %call9.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %sm_lock.i.i) #11
  %mad12.i.i = getelementptr inbounds %struct.ib_mad_send_buf, ptr %call.i.i, i32 0, i32 1
  %21 = ptrtoint ptr %mad12.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mad12.i.i, align 4
  %23 = call ptr @memcpy(ptr %22, ptr %in, i32 256)
  %arrayidx14.i.i = getelementptr %struct.mlx4_ib_dev, ptr %ibdev, i32 0, i32 8, i32 %sub.i.i
  %24 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx14.i.i, align 4
  %ah.i.i = getelementptr inbounds %struct.ib_mad_send_buf, ptr %call.i.i, i32 0, i32 3
  %26 = ptrtoint ptr %ah.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %25, ptr %ah.i.i, align 4
  %tobool15.not.i.i = icmp eq ptr %25, null
  br i1 %tobool15.not.i.i, label %if.then21.critedge.i.i, label %if.then16.i.i

if.then16.i.i:                                    ; preds = %do.body5.i.i
  %call17.i.i = tail call i32 @ib_post_send_mad(ptr noundef %call.i.i, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i.i)
  %phi.cmp.i.i = icmp eq i32 %call17.i.i, 0
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %sm_lock.i.i, i32 noundef %call9.i.i) #11
  br i1 %phi.cmp.i.i, label %if.then16.i.i.ib_process_mad.exit_crit_edge, label %if.then16.i.i.if.then21.i.i_crit_edge

if.then16.i.i.if.then21.i.i_crit_edge:            ; preds = %if.then16.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then21.i.i

if.then16.i.i.ib_process_mad.exit_crit_edge:      ; preds = %if.then16.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ib_process_mad.exit

if.then21.critedge.i.i:                           ; preds = %do.body5.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %sm_lock.i.i, i32 noundef %call9.i.i) #11
  br label %if.then21.i.i

if.then21.i.i:                                    ; preds = %if.then21.critedge.i.i, %if.then16.i.i.if.then21.i.i_crit_edge
  tail call void @ib_free_send_mad(ptr noundef %call.i.i) #11
  br label %ib_process_mad.exit

if.end.i:                                         ; preds = %cond.end.i.if.end.i_crit_edge, %cond.end.thread.i
  %27 = phi i8 [ %12, %cond.end.thread.i ], [ %16, %cond.end.i.if.end.i_crit_edge ]
  %method203.i = phi ptr [ %method199.i, %cond.end.thread.i ], [ %method.i, %cond.end.i.if.end.i_crit_edge ]
  %mgmt_class.i = getelementptr inbounds %struct.ib_mad_hdr, ptr %in, i32 0, i32 1
  %28 = ptrtoint ptr %mgmt_class.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %mgmt_class.i, align 1
  %30 = zext i8 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.155)
  switch i8 %29, label %if.end.i.ib_process_mad.exit_crit_edge [
    i8 1, label %if.end.i.if.then18.i_crit_edge
    i8 -127, label %if.end.i.if.then18.i_crit_edge56
    i8 4, label %if.end.i.if.then67.i_crit_edge
    i8 9, label %if.end.i.if.then67.i_crit_edge57
    i8 10, label %if.end.i.if.then67.i_crit_edge58
    i8 33, label %if.end.i.if.then67.i_crit_edge59
  ]

if.end.i.if.then67.i_crit_edge59:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then67.i

if.end.i.if.then67.i_crit_edge58:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then67.i

if.end.i.if.then67.i_crit_edge57:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then67.i

if.end.i.if.then67.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then67.i

if.end.i.if.then18.i_crit_edge56:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then18.i

if.end.i.if.then18.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then18.i

if.end.i.ib_process_mad.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ib_process_mad.exit

if.then18.i:                                      ; preds = %if.end.i.if.then18.i_crit_edge, %if.end.i.if.then18.i_crit_edge56
  %31 = zext i8 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.156)
  switch i8 %27, label %if.then18.i.ib_process_mad.exit_crit_edge [
    i8 1, label %if.then18.i.if.end37.i_crit_edge
    i8 2, label %if.then18.i.if.end37.i_crit_edge60
    i8 7, label %if.then18.i.if.end37.i_crit_edge61
  ]

if.then18.i.if.end37.i_crit_edge61:               ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end37.i

if.then18.i.if.end37.i_crit_edge60:               ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end37.i

if.then18.i.if.end37.i_crit_edge:                 ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end37.i

if.then18.i.ib_process_mad.exit_crit_edge:        ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ib_process_mad.exit

if.end37.i:                                       ; preds = %if.then18.i.if.end37.i_crit_edge, %if.then18.i.if.end37.i_crit_edge60, %if.then18.i.if.end37.i_crit_edge61
  %attr_id.i = getelementptr inbounds %struct.ib_mad_hdr, ptr %in, i32 0, i32 7
  %32 = ptrtoint ptr %attr_id.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %attr_id.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 32, i16 %33)
  %cmp40.i = icmp eq i16 %33, 32
  br i1 %cmp40.i, label %if.end37.i.ib_process_mad.exit_crit_edge, label %if.end37.i.if.end83.i_crit_edge

if.end37.i.if.end83.i_crit_edge:                  ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end83.i

if.end37.i.ib_process_mad.exit_crit_edge:         ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ib_process_mad.exit

if.then67.i:                                      ; preds = %if.end.i.if.then67.i_crit_edge, %if.end.i.if.then67.i_crit_edge57, %if.end.i.if.then67.i_crit_edge58, %if.end.i.if.then67.i_crit_edge59
  %.off.i = add i8 %27, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off.i)
  %switch.i = icmp ult i8 %.off.i, 2
  br i1 %switch.i, label %if.then67.i.if.end83.i_crit_edge, label %if.then67.i.ib_process_mad.exit_crit_edge

if.then67.i.ib_process_mad.exit_crit_edge:        ; preds = %if.then67.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ib_process_mad.exit

if.then67.i.if.end83.i_crit_edge:                 ; preds = %if.then67.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end83.i

if.end83.i:                                       ; preds = %if.then67.i.if.end83.i_crit_edge, %if.end37.i.if.end83.i_crit_edge
  %34 = zext i8 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.157)
  switch i8 %29, label %if.end83.i.if.end112.i_crit_edge [
    i8 1, label %if.end83.i.land.lhs.true95.i_crit_edge
    i8 -127, label %if.end83.i.land.lhs.true95.i_crit_edge62
  ]

if.end83.i.land.lhs.true95.i_crit_edge62:         ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true95.i

if.end83.i.land.lhs.true95.i_crit_edge:           ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true95.i

if.end83.i.if.end112.i_crit_edge:                 ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end112.i

land.lhs.true95.i:                                ; preds = %if.end83.i.land.lhs.true95.i_crit_edge, %if.end83.i.land.lhs.true95.i_crit_edge62
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %27)
  %cmp99.i = icmp eq i8 %27, 2
  br i1 %cmp99.i, label %land.lhs.true101.i, label %land.lhs.true95.i.if.end112.i_crit_edge

land.lhs.true95.i.if.end112.i_crit_edge:          ; preds = %land.lhs.true95.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end112.i

land.lhs.true101.i:                               ; preds = %land.lhs.true95.i
  %attr_id103.i = getelementptr inbounds %struct.ib_mad_hdr, ptr %in, i32 0, i32 7
  %35 = ptrtoint ptr %attr_id103.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %attr_id103.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 21, i16 %36)
  %cmp105.i = icmp eq i16 %36, 21
  br i1 %cmp105.i, label %land.lhs.true107.i, label %land.lhs.true101.i.if.end112.i_crit_edge

land.lhs.true101.i.if.end112.i_crit_edge:         ; preds = %land.lhs.true101.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end112.i

land.lhs.true107.i:                               ; preds = %land.lhs.true101.i
  %call108.i = call i32 @ib_query_port(ptr noundef %ibdev, i32 noundef %port_num, ptr noundef nonnull %pattr.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call108.i)
  %tobool109.not.i = icmp eq i32 %call108.i, 0
  br i1 %tobool109.not.i, label %if.then110.i, label %land.lhs.true107.i.if.end112.i_crit_edge

land.lhs.true107.i.if.end112.i_crit_edge:         ; preds = %land.lhs.true107.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end112.i

if.then110.i:                                     ; preds = %land.lhs.true107.i
  %lid.i = getelementptr inbounds %struct.ib_port_attr, ptr %pattr.i, i32 0, i32 13
  %37 = ptrtoint ptr %lid.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %lid.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %38)
  %tobool.not.i192.i = icmp ult i32 %38, 65536
  br i1 %tobool.not.i192.i, label %if.then110.i.ib_lid_cpu16.exit197.i_crit_edge, label %land.rhs.i194.i

if.then110.i.ib_lid_cpu16.exit197.i_crit_edge:    ; preds = %if.then110.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ib_lid_cpu16.exit197.i

land.rhs.i194.i:                                  ; preds = %if.then110.i
  %.b39.i193.i = load i1, ptr @ib_lid_cpu16.__already_done, align 1
  br i1 %.b39.i193.i, label %land.rhs.i194.i.ib_lid_cpu16.exit197.i_crit_edge, label %if.then.i195.i, !prof !279

land.rhs.i194.i.ib_lid_cpu16.exit197.i_crit_edge: ; preds = %land.rhs.i194.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ib_lid_cpu16.exit197.i

if.then.i195.i:                                   ; preds = %land.rhs.i194.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @ib_lid_cpu16.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.37, i32 noundef 4605, i32 noundef 9, ptr noundef null) #11
  br label %ib_lid_cpu16.exit197.i

ib_lid_cpu16.exit197.i:                           ; preds = %if.then.i195.i, %land.rhs.i194.i.ib_lid_cpu16.exit197.i_crit_edge, %if.then110.i.ib_lid_cpu16.exit197.i_crit_edge
  %conv.i196.i = trunc i32 %38 to i16
  br label %if.end112.i

if.end112.i:                                      ; preds = %ib_lid_cpu16.exit197.i, %land.lhs.true107.i.if.end112.i_crit_edge, %land.lhs.true101.i.if.end112.i_crit_edge, %land.lhs.true95.i.if.end112.i_crit_edge, %if.end83.i.if.end112.i_crit_edge
  %prev_lid.0.i = phi i16 [ 0, %land.lhs.true107.i.if.end112.i_crit_edge ], [ %conv.i196.i, %ib_lid_cpu16.exit197.i ], [ 0, %land.lhs.true101.i.if.end112.i_crit_edge ], [ 0, %land.lhs.true95.i.if.end112.i_crit_edge ], [ 0, %if.end83.i.if.end112.i_crit_edge ]
  %or.i = and i32 %mad_flags, 3
  %or119.i = or i32 %or.i, 4
  %call120.i = call i32 @mlx4_MAD_IFC(ptr noundef %ibdev, i32 noundef %or119.i, i32 noundef %port_num, ptr noundef %in_wc, ptr noundef %in_grh, ptr noundef %in, ptr noundef %out) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call120.i)
  %tobool121.not.i = icmp eq i32 %call120.i, 0
  br i1 %tobool121.not.i, label %if.end123.i, label %if.end112.i.ib_process_mad.exit_crit_edge

if.end112.i.ib_process_mad.exit_crit_edge:        ; preds = %if.end112.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ib_process_mad.exit

if.end123.i:                                      ; preds = %if.end112.i
  %status.i = getelementptr inbounds %struct.ib_mad_hdr, ptr %out, i32 0, i32 4
  %39 = ptrtoint ptr %status.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %status.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %40)
  %tobool125.not.i = icmp eq i16 %40, 0
  br i1 %tobool125.not.i, label %if.then126.i, label %if.end123.i.if.end132.i_crit_edge

if.end123.i.if.end132.i_crit_edge:                ; preds = %if.end123.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end132.i

if.then126.i:                                     ; preds = %if.end123.i
  call fastcc void @smp_snoop(ptr noundef %ibdev, i32 noundef %port_num, ptr noundef %in, i16 noundef zeroext %prev_lid.0.i) #11
  %41 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev2, align 8
  %flags.i.i = getelementptr inbounds %struct.mlx4_dev, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %44, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool129.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool129.not.i, label %if.then130.i, label %if.then126.i.if.end132.i_crit_edge

if.then126.i.if.end132.i_crit_edge:               ; preds = %if.then126.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end132.i

if.then130.i:                                     ; preds = %if.then126.i
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @node_desc_override(ptr noundef %ibdev, ptr noundef %out) #11
  br label %if.end132.i

if.end132.i:                                      ; preds = %if.then130.i, %if.then126.i.if.end132.i_crit_edge, %if.end123.i.if.end132.i_crit_edge
  %45 = ptrtoint ptr %mgmt_class.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %mgmt_class.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -127, i8 %46)
  %cmp136.i = icmp eq i8 %46, -127
  br i1 %cmp136.i, label %if.then138.i, label %if.end132.i.if.end144.i_crit_edge

if.end132.i.if.end144.i_crit_edge:                ; preds = %if.end132.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end144.i

if.then138.i:                                     ; preds = %if.end132.i
  call void @__sanitizer_cov_trace_pc() #13
  %47 = ptrtoint ptr %status.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %status.i, align 4
  %49 = or i16 %48, -32768
  store i16 %49, ptr %status.i, align 4
  br label %if.end144.i

if.end144.i:                                      ; preds = %if.then138.i, %if.end132.i.if.end144.i_crit_edge
  %50 = ptrtoint ptr %method203.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %method203.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %51)
  %cmp148.i = icmp eq i8 %51, 7
  %..i = select i1 %cmp148.i, i32 5, i32 3
  br label %ib_process_mad.exit

ib_process_mad.exit:                              ; preds = %if.end144.i, %if.end112.i.ib_process_mad.exit_crit_edge, %if.then67.i.ib_process_mad.exit_crit_edge, %if.end37.i.ib_process_mad.exit_crit_edge, %if.then18.i.ib_process_mad.exit_crit_edge, %if.end.i.ib_process_mad.exit_crit_edge, %if.then21.i.i, %if.then16.i.i.ib_process_mad.exit_crit_edge, %if.then.i191.i.ib_process_mad.exit_crit_edge, %if.then.i.ib_process_mad.exit_crit_edge
  %retval.0.i = phi i32 [ 1, %if.then18.i.ib_process_mad.exit_crit_edge ], [ 1, %if.end37.i.ib_process_mad.exit_crit_edge ], [ 1, %if.then67.i.ib_process_mad.exit_crit_edge ], [ 1, %if.end.i.ib_process_mad.exit_crit_edge ], [ 0, %if.end112.i.ib_process_mad.exit_crit_edge ], [ %..i, %if.end144.i ], [ 5, %if.then.i.ib_process_mad.exit_crit_edge ], [ 5, %if.then.i191.i.ib_process_mad.exit_crit_edge ], [ 5, %if.then16.i.i.ib_process_mad.exit_crit_edge ], [ 5, %if.then21.i.i ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %pattr.i) #11
  br label %cleanup

if.then28:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call29 = tail call fastcc i32 @iboe_process_mad(ptr noundef %ibdev, i32 noundef %port_num, ptr noundef %in, ptr noundef %out)
  br label %cleanup

cleanup:                                          ; preds = %if.then28, %ib_process_mad.exit, %if.then22, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call23, %if.then22 ], [ %retval.0.i, %ib_process_mad.exit ], [ %call29, %if.then28 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdma_port_get_link_layer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @iboe_process_mad(ptr noundef %ibdev, i32 noundef %port_num, ptr nocapture noundef readonly %in_mad, ptr nocapture noundef writeonly %out_mad) unnamed_addr #0 align 64 {
entry:
  %counter_stats = alloca %struct.mlx4_counter, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %counter_stats) #11
  %mgmt_class = getelementptr inbounds %struct.ib_mad_hdr, ptr %in_mad, i32 0, i32 1
  %0 = ptrtoint ptr %mgmt_class to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %mgmt_class, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %1)
  %cmp.not = icmp eq i8 %1, 4
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %attr_id = getelementptr inbounds %struct.ib_mad_hdr, ptr %in_mad, i32 0, i32 7
  %2 = ptrtoint ptr %attr_id to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %attr_id, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %3)
  %cmp4 = icmp eq i16 %3, 1
  br i1 %cmp4, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr = getelementptr %struct.ib_mad, ptr %out_mad, i32 0, i32 1, i32 40
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_storeN_noabort(i32 %4, i32 2)
  store i16 0, ptr %add.ptr, align 1
  %cpi.sroa.4.0..sroa_idx.i = getelementptr %struct.ib_mad, ptr %out_mad, i32 0, i32 1, i32 42
  %5 = ptrtoint ptr %cpi.sroa.4.0..sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %5, i32 2)
  store i16 512, ptr %cpi.sroa.4.0..sroa_idx.i, align 1
  %cpi.sroa.5.0..sroa_idx.i = getelementptr %struct.ib_mad, ptr %out_mad, i32 0, i32 1, i32 44
  %6 = call ptr @memset(ptr %cpi.sroa.5.0..sroa_idx.i, i32 0, i32 68)
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %7 = call ptr @memset(ptr %counter_stats, i32 0, i32 48)
  %sub = add i32 %port_num, -1
  %arrayidx = getelementptr %struct.mlx4_ib_dev, ptr %ibdev, i32 0, i32 15, i32 %sub
  %mutex = getelementptr %struct.mlx4_ib_dev, ptr %ibdev, i32 0, i32 15, i32 %sub, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #11
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %tmp_counter.04 = load ptr, ptr %arrayidx, align 4
  %cmp17.not5 = icmp eq ptr %tmp_counter.04, %arrayidx
  br i1 %cmp17.not5, label %cleanup.critedge, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end8
  %dev19 = getelementptr inbounds %struct.mlx4_ib_dev, ptr %ibdev, i32 0, i32 1
  br label %for.body

for.cond:                                         ; preds = %for.body
  %9 = ptrtoint ptr %tmp_counter.06 to i32
  call void @__asan_load4_noabort(i32 %9)
  %tmp_counter.0 = load ptr, ptr %tmp_counter.06, align 4
  %cmp17.not = icmp eq ptr %tmp_counter.0, %arrayidx
  br i1 %cmp17.not, label %for.end, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %tmp_counter.06 = phi ptr [ %tmp_counter.04, %for.body.lr.ph ], [ %tmp_counter.0, %for.cond.for.body_crit_edge ]
  %10 = ptrtoint ptr %dev19 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev19, align 8
  %index = getelementptr inbounds %struct.counter_index, ptr %tmp_counter.06, i32 0, i32 1
  %12 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %index, align 4
  %call20 = call i32 @mlx4_get_counter_stats(ptr noundef %11, i32 noundef %13, ptr noundef nonnull %counter_stats, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool.not = icmp eq i32 %call20, 0
  br i1 %tobool.not, label %for.cond, label %for.end.thread

for.end.thread:                                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  call void @mutex_unlock(ptr noundef %mutex) #11
  br label %cleanup

for.end:                                          ; preds = %for.cond
  call void @mutex_unlock(ptr noundef %mutex) #11
  %counter_mode = getelementptr inbounds %struct.mlx4_counter, ptr %counter_stats, i32 0, i32 1
  %14 = ptrtoint ptr %counter_mode to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %counter_mode, align 1
  %16 = and i8 %15, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %cond = icmp eq i8 %16, 0
  br i1 %cond, label %sw.bb, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %for.end
  %17 = ptrtoint ptr %attr_id to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %attr_id, align 8
  %19 = zext i16 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.158)
  switch i16 %18, label %sw.bb.cleanup_crit_edge [
    i16 18, label %sw.bb.i
    i16 29, label %sw.bb41.i
  ]

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb.i:                                          ; preds = %sw.bb
  %tx_bytes.i = getelementptr inbounds %struct.mlx4_counter, ptr %counter_stats, i32 0, i32 7
  %20 = ptrtoint ptr %tx_bytes.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %tx_bytes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 17179869183, i64 %21)
  %cmp.i = icmp ugt i64 %21, 17179869183
  %shr.i = lshr i64 %21, 2
  %conv4.i = trunc i64 %shr.i to i32
  %conv4.sink.i = select i1 %cmp.i, i32 -1, i32 %conv4.i
  %22 = getelementptr %struct.ib_mad, ptr %out_mad, i32 0, i32 1, i32 64
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_storeN_noabort(i32 %23, i32 4)
  store i32 %conv4.sink.i, ptr %22, align 1
  %rx_bytes.i = getelementptr inbounds %struct.mlx4_counter, ptr %counter_stats, i32 0, i32 5
  %24 = ptrtoint ptr %rx_bytes.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %rx_bytes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 17179869183, i64 %25)
  %cmp8.i = icmp ugt i64 %25, 17179869183
  %shr7.i = lshr i64 %25, 2
  %conv14.i = trunc i64 %shr7.i to i32
  %conv14.sink.i = select i1 %cmp8.i, i32 -1, i32 %conv14.i
  %26 = getelementptr %struct.ib_mad, ptr %out_mad, i32 0, i32 1, i32 68
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_storeN_noabort(i32 %27, i32 4)
  store i32 %conv14.sink.i, ptr %26, align 1
  %tx_frames.i = getelementptr inbounds %struct.mlx4_counter, ptr %counter_stats, i32 0, i32 6
  %28 = ptrtoint ptr %tx_frames.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %tx_frames.i, align 8
  %30 = call i64 @llvm.umin.i64(i64 %29, i64 4294967295) #11
  %31 = trunc i64 %30 to i32
  %32 = getelementptr %struct.ib_mad, ptr %out_mad, i32 0, i32 1, i32 72
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_storeN_noabort(i32 %33, i32 4)
  store i32 %31, ptr %32, align 1
  %rx_frames.i = getelementptr inbounds %struct.mlx4_counter, ptr %counter_stats, i32 0, i32 4
  %34 = ptrtoint ptr %rx_frames.i to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %rx_frames.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %35)
  %cmp31.i = icmp ugt i64 %35, 4294967295
  br i1 %cmp31.i, label %if.then33.i, label %if.else34.i

if.then33.i:                                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #13
  %port_rcv_packets.i = getelementptr %struct.ib_mad, ptr %out_mad, i32 0, i32 1, i32 76
  %36 = ptrtoint ptr %port_rcv_packets.i to i32
  call void @__asan_storeN_noabort(i32 %36, i32 4)
  store i32 -1, ptr %port_rcv_packets.i, align 1
  br label %cleanup

if.else34.i:                                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv36.i = trunc i64 %35 to i32
  %port_rcv_packets37.i = getelementptr %struct.ib_mad, ptr %out_mad, i32 0, i32 1, i32 76
  %37 = ptrtoint ptr %port_rcv_packets37.i to i32
  call void @__asan_storeN_noabort(i32 %37, i32 4)
  store i32 %conv36.i, ptr %port_rcv_packets37.i, align 1
  br label %cleanup

sw.bb41.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  %tx_bytes42.i = getelementptr inbounds %struct.mlx4_counter, ptr %counter_stats, i32 0, i32 7
  %38 = ptrtoint ptr %tx_bytes42.i to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %tx_bytes42.i, align 8
  %shr43.i = lshr i64 %39, 2
  %port_xmit_data44.i = getelementptr %struct.ib_mad, ptr %out_mad, i32 0, i32 1, i32 48
  %40 = ptrtoint ptr %port_xmit_data44.i to i32
  call void @__asan_storeN_noabort(i32 %40, i32 8)
  store i64 %shr43.i, ptr %port_xmit_data44.i, align 1
  %rx_bytes45.i = getelementptr inbounds %struct.mlx4_counter, ptr %counter_stats, i32 0, i32 5
  %41 = ptrtoint ptr %rx_bytes45.i to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %rx_bytes45.i, align 8
  %shr46.i = lshr i64 %42, 2
  %port_rcv_data47.i = getelementptr %struct.ib_mad, ptr %out_mad, i32 0, i32 1, i32 56
  %43 = ptrtoint ptr %port_rcv_data47.i to i32
  call void @__asan_storeN_noabort(i32 %43, i32 8)
  store i64 %shr46.i, ptr %port_rcv_data47.i, align 1
  %tx_frames48.i = getelementptr inbounds %struct.mlx4_counter, ptr %counter_stats, i32 0, i32 6
  %44 = ptrtoint ptr %tx_frames48.i to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %tx_frames48.i, align 8
  %port_xmit_packets49.i = getelementptr %struct.ib_mad, ptr %out_mad, i32 0, i32 1, i32 64
  %46 = ptrtoint ptr %port_xmit_packets49.i to i32
  call void @__asan_storeN_noabort(i32 %46, i32 8)
  store i64 %45, ptr %port_xmit_packets49.i, align 1
  %rx_frames50.i = getelementptr inbounds %struct.mlx4_counter, ptr %counter_stats, i32 0, i32 4
  %47 = ptrtoint ptr %rx_frames50.i to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %rx_frames50.i, align 8
  %port_rcv_packets51.i = getelementptr %struct.ib_mad, ptr %out_mad, i32 0, i32 1, i32 72
  %49 = ptrtoint ptr %port_rcv_packets51.i to i32
  call void @__asan_storeN_noabort(i32 %49, i32 8)
  store i64 %48, ptr %port_rcv_packets51.i, align 1
  br label %cleanup

cleanup.critedge:                                 ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  call void @mutex_unlock(ptr noundef %mutex) #11
  br label %cleanup

cleanup:                                          ; preds = %cleanup.critedge, %sw.bb41.i, %if.else34.i, %if.then33.i, %sw.bb.cleanup_crit_edge, %for.end.cleanup_crit_edge, %for.end.thread, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 3, %if.then6 ], [ -22, %entry.cleanup_crit_edge ], [ 0, %for.end.cleanup_crit_edge ], [ 0, %for.end.thread ], [ 3, %sw.bb.cleanup_crit_edge ], [ 3, %if.then33.i ], [ 3, %if.else34.i ], [ 3, %sw.bb41.i ], [ 0, %cleanup.critedge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %counter_stats) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx4_ib_mad_init(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %num_ports = getelementptr inbounds %struct.mlx4_ib_dev, ptr %dev, i32 0, i32 2
  %0 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_ports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp75 = icmp sgt i32 %1, 0
  br i1 %cmp75, label %entry.for.body_crit_edge, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.1.for.body_crit_edge, %entry.for.body_crit_edge
  %p.076 = phi i32 [ %add, %for.inc.1.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %add = add nuw nsw i32 %p.076, 1
  %call = tail call i32 @rdma_port_get_link_layer(ptr noundef %dev, i32 noundef %add) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp4 = icmp eq i32 %call, 1
  br i1 %cmp4, label %if.then, label %if.else.1

if.then:                                          ; preds = %for.body
  %call7 = tail call ptr @ib_register_mad_agent(ptr noundef %dev, i32 noundef %add, i32 noundef 0, ptr noundef null, i8 noundef zeroext 0, ptr noundef nonnull @send_handler, ptr noundef null, ptr noundef null, i32 noundef 0) #11
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then.if.then9_crit_edge, label %if.then.1

if.then.if.then9_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then9

if.then9:                                         ; preds = %if.then.1.if.then9_crit_edge, %if.then.if.then9_crit_edge
  %call7.lcssa = phi ptr [ %call7, %if.then.if.then9_crit_edge ], [ %call7.1, %if.then.1.if.then9_crit_edge ]
  %2 = ptrtoint ptr %call7.lcssa to i32
  %3 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num_ports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp2178 = icmp sgt i32 %4, 0
  br i1 %cmp2178, label %if.then9.for.cond23.preheader_crit_edge, label %if.then9.cleanup_crit_edge

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then9.for.cond23.preheader_crit_edge:          ; preds = %if.then9
  br label %for.cond23.preheader

if.else.1:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx14 = getelementptr %struct.mlx4_ib_dev, ptr %dev, i32 0, i32 7, i32 %p.076, i32 0
  %5 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %arrayidx14, align 4
  br label %for.inc.1

if.then.1:                                        ; preds = %if.then
  %arrayidx11 = getelementptr %struct.mlx4_ib_dev, ptr %dev, i32 0, i32 7, i32 %p.076, i32 0
  %6 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call7, ptr %arrayidx11, align 4
  %call7.1 = tail call ptr @ib_register_mad_agent(ptr noundef %dev, i32 noundef %add, i32 noundef 1, ptr noundef null, i8 noundef zeroext 0, ptr noundef nonnull @send_handler, ptr noundef null, ptr noundef null, i32 noundef 0) #11
  %cmp.i.1 = icmp ugt ptr %call7.1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.1, label %if.then.1.if.then9_crit_edge, label %if.then.1.for.inc.1_crit_edge

if.then.1.for.inc.1_crit_edge:                    ; preds = %if.then.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.1

if.then.1.if.then9_crit_edge:                     ; preds = %if.then.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then9

for.inc.1:                                        ; preds = %if.then.1.for.inc.1_crit_edge, %if.else.1
  %call7.1.sink = phi ptr [ null, %if.else.1 ], [ %call7.1, %if.then.1.for.inc.1_crit_edge ]
  %arrayidx11.1 = getelementptr %struct.mlx4_ib_dev, ptr %dev, i32 0, i32 7, i32 %p.076, i32 1
  %7 = ptrtoint ptr %arrayidx11.1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7.1.sink, ptr %arrayidx11.1, align 4
  %8 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_ports, align 4
  %cmp = icmp slt i32 %add, %9
  br i1 %cmp, label %for.inc.1.for.body_crit_edge, label %for.inc.1.cleanup_crit_edge

for.inc.1.cleanup_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.inc.1.for.body_crit_edge:                     ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.cond23.preheader:                             ; preds = %for.inc35.1.for.cond23.preheader_crit_edge, %if.then9.for.cond23.preheader_crit_edge
  %p.179 = phi i32 [ %inc39, %for.inc35.1.for.cond23.preheader_crit_edge ], [ 0, %if.then9.for.cond23.preheader_crit_edge ]
  %arrayidx28 = getelementptr %struct.mlx4_ib_dev, ptr %dev, i32 0, i32 7, i32 %p.179, i32 0
  %10 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx28, align 4
  %tobool29.not = icmp eq ptr %11, null
  br i1 %tobool29.not, label %for.cond23.preheader.for.inc35_crit_edge, label %if.then30

for.cond23.preheader.for.inc35_crit_edge:         ; preds = %for.cond23.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc35

if.then30:                                        ; preds = %for.cond23.preheader
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @ib_unregister_mad_agent(ptr noundef nonnull %11) #11
  br label %for.inc35

for.inc35:                                        ; preds = %if.then30, %for.cond23.preheader.for.inc35_crit_edge
  %arrayidx28.1 = getelementptr %struct.mlx4_ib_dev, ptr %dev, i32 0, i32 7, i32 %p.179, i32 1
  %12 = ptrtoint ptr %arrayidx28.1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx28.1, align 4
  %tobool29.not.1 = icmp eq ptr %13, null
  br i1 %tobool29.not.1, label %for.inc35.for.inc35.1_crit_edge, label %if.then30.1

for.inc35.for.inc35.1_crit_edge:                  ; preds = %for.inc35
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc35.1

if.then30.1:                                      ; preds = %for.inc35
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @ib_unregister_mad_agent(ptr noundef nonnull %13) #11
  br label %for.inc35.1

for.inc35.1:                                      ; preds = %if.then30.1, %for.inc35.for.inc35.1_crit_edge
  %inc39 = add nuw nsw i32 %p.179, 1
  %14 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_ports, align 4
  %cmp21 = icmp slt i32 %inc39, %15
  br i1 %cmp21, label %for.inc35.1.for.cond23.preheader_crit_edge, label %for.inc35.1.cleanup_crit_edge

for.inc35.1.cleanup_crit_edge:                    ; preds = %for.inc35.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.inc35.1.for.cond23.preheader_crit_edge:       ; preds = %for.inc35.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond23.preheader

cleanup:                                          ; preds = %for.inc35.1.cleanup_crit_edge, %for.inc.1.cleanup_crit_edge, %if.then9.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %2, %if.then9.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ %2, %for.inc35.1.cleanup_crit_edge ], [ 0, %for.inc.1.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ib_register_mad_agent(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @send_handler(ptr nocapture noundef readnone %agent, ptr nocapture noundef readonly %mad_send_wc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mad_send_wc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mad_send_wc, align 4
  %context = getelementptr inbounds %struct.ib_mad_send_buf, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %context, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  %call.i = tail call i32 @rdma_destroy_ah_user(ptr noundef nonnull %3, i32 noundef 0, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %land.rhs.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.rhs.i:                                       ; preds = %if.then
  %.b1.i = load i1, ptr @rdma_destroy_ah.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.if.end_crit_edge, label %if.then.i, !prof !279

land.rhs.i.if.end_crit_edge:                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rdma_destroy_ah.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.37, i32 noundef 3630, i32 noundef 9, ptr noundef nonnull @.str.38) #11
  br label %if.end

if.end:                                           ; preds = %if.then.i, %land.rhs.i.if.end_crit_edge, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %4 = ptrtoint ptr %mad_send_wc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mad_send_wc, align 4
  tail call void @ib_free_send_mad(ptr noundef %5) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_unregister_mad_agent(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx4_ib_mad_cleanup(ptr nocapture noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %num_ports = getelementptr inbounds %struct.mlx4_ib_dev, ptr %dev, i32 0, i32 2
  %0 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_ports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp32 = icmp sgt i32 %1, 0
  br i1 %cmp32, label %entry.for.cond1.preheader_crit_edge, label %entry.for.end16_crit_edge

entry.for.end16_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end16

entry.for.cond1.preheader_crit_edge:              ; preds = %entry
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.inc14.for.cond1.preheader_crit_edge, %entry.for.cond1.preheader_crit_edge
  %p.033 = phi i32 [ %inc15, %for.inc14.for.cond1.preheader_crit_edge ], [ 0, %entry.for.cond1.preheader_crit_edge ]
  %arrayidx4 = getelementptr %struct.mlx4_ib_dev, ptr %dev, i32 0, i32 7, i32 %p.033, i32 0
  %2 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx4, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %for.cond1.preheader.for.inc_crit_edge, label %if.then

for.cond1.preheader.for.inc_crit_edge:            ; preds = %for.cond1.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then:                                          ; preds = %for.cond1.preheader
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %arrayidx4, align 4
  tail call void @ib_unregister_mad_agent(ptr noundef nonnull %3) #11
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.cond1.preheader.for.inc_crit_edge
  %arrayidx4.1 = getelementptr %struct.mlx4_ib_dev, ptr %dev, i32 0, i32 7, i32 %p.033, i32 1
  %5 = ptrtoint ptr %arrayidx4.1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx4.1, align 4
  %tobool.not.1 = icmp eq ptr %6, null
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %arrayidx4.1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %arrayidx4.1, align 4
  tail call void @ib_unregister_mad_agent(ptr noundef nonnull %6) #11
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1, %for.inc.for.inc.1_crit_edge
  %arrayidx8 = getelementptr %struct.mlx4_ib_dev, ptr %dev, i32 0, i32 8, i32 %p.033
  %8 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx8, align 4
  %tobool9.not = icmp eq ptr %9, null
  br i1 %tobool9.not, label %for.inc.1.for.inc14_crit_edge, label %if.then10

for.inc.1.for.inc14_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc14

if.then10:                                        ; preds = %for.inc.1
  %call.i = tail call i32 @rdma_destroy_ah_user(ptr noundef nonnull %9, i32 noundef 0, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then10.for.inc14_crit_edge, label %land.rhs.i

if.then10.for.inc14_crit_edge:                    ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc14

land.rhs.i:                                       ; preds = %if.then10
  %.b1.i = load i1, ptr @rdma_destroy_ah.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.for.inc14_crit_edge, label %if.then.i, !prof !279

land.rhs.i.for.inc14_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc14

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rdma_destroy_ah.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.37, i32 noundef 3630, i32 noundef 9, ptr noundef nonnull @.str.38) #11
  br label %for.inc14

for.inc14:                                        ; preds = %if.then.i, %land.rhs.i.for.inc14_crit_edge, %if.then10.for.inc14_crit_edge, %for.inc.1.for.inc14_crit_edge
  %inc15 = add nuw nsw i32 %p.033, 1
  %10 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_ports, align 4
  %cmp = icmp slt i32 %inc15, %11
  br i1 %cmp, label %for.inc14.for.cond1.preheader_crit_edge, label %for.inc14.for.end16_crit_edge

for.inc14.for.end16_crit_edge:                    ; preds = %for.inc14
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end16

for.inc14.for.cond1.preheader_crit_edge:          ; preds = %for.inc14
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond1.preheader

for.end16:                                        ; preds = %for.inc14.for.end16_crit_edge, %entry.for.end16_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @handle_port_mgmt_change_event(ptr noundef %work) local_unnamed_addr #0 align 64 {
entry:
  %event.i201 = alloca %struct.ib_event, align 4
  %event.i196 = alloca %struct.ib_event, align 4
  %event.i = alloca %struct.ib_event, align 4
  %event.i.i = alloca %struct.ib_event, align 4
  %gid = alloca %union.ib_gid, align 8
  %sl2vl64 = alloca %union.sl2vl_tbl_to_u64, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ib_dev = getelementptr inbounds %struct.ib_event_work, ptr %work, i32 0, i32 1
  %0 = ptrtoint ptr %ib_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ib_dev, align 4
  %event = getelementptr inbounds %struct.ib_event_work, ptr %work, i32 0, i32 2, i32 4
  %port1 = getelementptr inbounds %struct.anon.194, ptr %event, i32 0, i32 1
  %2 = ptrtoint ptr %port1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %port1, align 1
  %conv = zext i8 %3 to i32
  %subtype = getelementptr inbounds %struct.ib_event_work, ptr %work, i32 0, i32 2, i32 3
  %4 = ptrtoint ptr %subtype to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %subtype, align 1
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.159)
  switch i8 %5, label %do.end128 [
    i8 21, label %sw.bb
    i8 22, label %sw.bb71
    i8 20, label %sw.bb79
    i8 23, label %sw.bb95
  ]

sw.bb:                                            ; preds = %entry
  %changed_attr4 = getelementptr inbounds %struct.ib_event_work, ptr %work, i32 0, i32 2, i32 4, i32 0, i32 2
  %7 = ptrtoint ptr %changed_attr4 to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %8 = load i32, ptr %changed_attr4, align 1
  %and = and i32 %8, 17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %sw.bb.if.end_crit_edge, label %if.then

sw.bb.if.end_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  %params = getelementptr inbounds %struct.ib_event_work, ptr %work, i32 0, i32 2, i32 4, i32 0, i32 1
  %9 = ptrtoint ptr %params to i32
  call void @__asan_loadN_noabort(i32 %9, i32 2)
  %10 = load i16, ptr %params, align 1
  %mstr_sm_sl = getelementptr inbounds %struct.anon.196, ptr %params, i32 0, i32 4
  %11 = ptrtoint ptr %mstr_sm_sl to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %mstr_sm_sl, align 1
  %13 = and i8 %12, 15
  tail call fastcc void @update_sm_ah(ptr noundef %1, i32 noundef %conv, i16 noundef zeroext %10, i8 noundef zeroext %13)
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb.if.end_crit_edge
  %and12 = and i32 %8, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.end.if.end15_crit_edge, label %if.then14

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

if.then14:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %event.i.i) #11
  %14 = getelementptr inbounds %struct.ib_event, ptr %event.i.i, i32 0, i32 1
  %15 = getelementptr inbounds %struct.ib_event, ptr %event.i.i, i32 0, i32 2
  %16 = ptrtoint ptr %event.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %1, ptr %event.i.i, align 4
  %17 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %conv, ptr %14, align 4
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 11, ptr %15, align 4
  call void @ib_dispatch_event(ptr noundef nonnull %event.i.i) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %event.i.i) #11
  %dev1.i = getelementptr inbounds %struct.mlx4_ib_dev, ptr %1, i32 0, i32 1
  %19 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev1.i, align 8
  %flags.i.i = getelementptr inbounds %struct.mlx4_dev, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %22, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %if.then14.if.end15_crit_edge, label %land.lhs.true.i

if.then14.if.end15_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

land.lhs.true.i:                                  ; preds = %if.then14
  %is_going_down.i = getelementptr inbounds %struct.mlx4_ib_dev, ptr %1, i32 0, i32 11, i32 3
  %23 = ptrtoint ptr %is_going_down.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %is_going_down.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool2.not.i = icmp eq i32 %24, 0
  br i1 %tobool2.not.i, label %if.then.i, label %land.lhs.true.i.if.end15_crit_edge

land.lhs.true.i.if.end15_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  %call4.i = call i32 @mlx4_gen_slaves_port_mgt_ev(ptr noundef %20, i8 noundef zeroext %3, i32 noundef 4) #11
  br label %if.end15

if.end15:                                         ; preds = %if.then.i, %land.lhs.true.i.if.end15_crit_edge, %if.then14.if.end15_crit_edge, %if.end.if.end15_crit_edge
  %and16 = and i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.end15.if.end66_crit_edge, label %if.then18

if.end15.if.end66_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end66

if.then18:                                        ; preds = %if.end15
  %dev19 = getelementptr inbounds %struct.mlx4_ib_dev, ptr %1, i32 0, i32 1
  %25 = ptrtoint ptr %dev19 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev19, align 8
  %flags.i = getelementptr inbounds %struct.mlx4_dev, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %28, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool20.not = icmp eq i32 %and.i, 0
  br i1 %tobool20.not, label %if.then18.if.end57_crit_edge, label %if.then21

if.then18.if.end57_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end57

if.then21:                                        ; preds = %if.then18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %gid) #11
  %gid_prefix = getelementptr inbounds %struct.ib_event_work, ptr %work, i32 0, i32 2, i32 4, i32 0, i32 4
  %29 = call ptr @memset(ptr %gid, i32 255, i32 16)
  %30 = ptrtoint ptr %gid_prefix to i32
  call void @__asan_loadN_noabort(i32 %30, i32 8)
  %31 = load i64, ptr %gid_prefix, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %31)
  %tobool24.not = icmp eq i64 %31, 0
  br i1 %tobool24.not, label %if.end31, label %if.end31.thread

if.end31.thread:                                  ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #13
  %32 = ptrtoint ptr %gid to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %31, ptr %gid, align 8
  br label %do.body37

if.end31:                                         ; preds = %if.then21
  %call27 = call i32 @__mlx4_ib_query_gid(ptr noundef %1, i32 noundef %conv, i32 noundef 0, ptr noundef nonnull %gid, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool32.not = icmp eq i32 %call27, 0
  br i1 %tobool32.not, label %if.end31.do.body37_crit_edge, label %do.end

if.end31.do.body37_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body37

do.end:                                           ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  %call35 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef %conv, i32 noundef %call27) #14
  br label %if.end56

do.body37:                                        ; preds = %if.end31.do.body37_crit_edge, %if.end31.thread
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @handle_port_mgmt_change_event.__UNIQUE_ID_ddebug519, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@handle_port_mgmt_change_event, %if.then43)) #11
          to label %do.end49 [label %if.then43], !srcloc !281

if.then43:                                        ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #13
  %sriov = getelementptr inbounds %struct.mlx4_ib_dev, ptr %1, i32 0, i32 11
  %sub = add nsw i32 %conv, -1
  %subnet_prefix44 = getelementptr [2 x %struct.mlx4_ib_demux_ctx], ptr %sriov, i32 0, i32 %sub, i32 6
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %subnet_prefix44, i32 noundef 8) #11
  %call.i = call i64 @generic_atomic64_read(ptr noundef %subnet_prefix44) #11
  %33 = ptrtoint ptr %gid to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %gid, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @handle_port_mgmt_change_event.__UNIQUE_ID_ddebug519, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.12, i32 noundef %conv, i64 noundef %call.i, i64 noundef %34) #11
  br label %do.end49

do.end49:                                         ; preds = %if.then43, %do.body37
  %sriov50 = getelementptr inbounds %struct.mlx4_ib_dev, ptr %1, i32 0, i32 11
  %sub52 = add nsw i32 %conv, -1
  %subnet_prefix54 = getelementptr [2 x %struct.mlx4_ib_demux_ctx], ptr %sriov50, i32 0, i32 %sub52, i32 6
  %35 = ptrtoint ptr %gid to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %gid, align 8
  %call.i.i189 = call zeroext i1 @__kasan_check_write(ptr noundef %subnet_prefix54, i32 noundef 8) #11
  call void @generic_atomic64_set(ptr noundef %subnet_prefix54, i64 noundef %36) #11
  br label %if.end56

if.end56:                                         ; preds = %do.end49, %do.end
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %gid) #11
  br label %if.end57

if.end57:                                         ; preds = %if.end56, %if.then18.if.end57_crit_edge
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %event.i) #11
  %37 = getelementptr inbounds %struct.ib_event, ptr %event.i, i32 0, i32 1
  %38 = getelementptr inbounds %struct.ib_event, ptr %event.i, i32 0, i32 2
  %39 = ptrtoint ptr %event.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %1, ptr %event.i, align 4
  %40 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %conv, ptr %37, align 4
  %41 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 18, ptr %38, align 4
  call void @ib_dispatch_event(ptr noundef nonnull %event.i) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %event.i) #11
  %42 = ptrtoint ptr %dev19 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev19, align 8
  %flags.i194 = getelementptr inbounds %struct.mlx4_dev, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %flags.i194 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %flags.i194, align 4
  %and.i195 = and i32 %45, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i195)
  %tobool60.not = icmp eq i32 %and.i195, 0
  br i1 %tobool60.not, label %if.end57.if.end66_crit_edge, label %if.then61

if.end57.if.end66_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end66

if.then61:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #13
  %call64 = call i32 @mlx4_gen_slaves_port_mgt_ev(ptr noundef %43, i8 noundef zeroext %3, i32 noundef 2) #11
  br label %if.end66

if.end66:                                         ; preds = %if.then61, %if.end57.if.end66_crit_edge, %if.end15.if.end66_crit_edge
  %and67 = and i32 %8, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67)
  %tobool68.not = icmp eq i32 %and67, 0
  br i1 %tobool68.not, label %if.end66.sw.epilog_crit_edge, label %if.then69

if.end66.sw.epilog_crit_edge:                     ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.then69:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @handle_client_rereg_event(ptr noundef %1, i32 noundef %conv)
  br label %sw.epilog

sw.bb71:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %event.i196) #11
  %46 = getelementptr inbounds %struct.ib_event, ptr %event.i196, i32 0, i32 1
  %47 = getelementptr inbounds %struct.ib_event, ptr %event.i196, i32 0, i32 2
  %48 = ptrtoint ptr %event.i196 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %1, ptr %event.i196, align 4
  %49 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %conv, ptr %46, align 4
  %50 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 12, ptr %47, align 4
  call void @ib_dispatch_event(ptr noundef nonnull %event.i196) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %event.i196) #11
  %dev72 = getelementptr inbounds %struct.mlx4_ib_dev, ptr %1, i32 0, i32 1
  %51 = ptrtoint ptr %dev72 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev72, align 8
  %flags.i197 = getelementptr inbounds %struct.mlx4_dev, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %flags.i197 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %flags.i197, align 4
  %and.i198 = and i32 %54, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i198)
  %tobool74.not = icmp eq i32 %and.i198, 0
  br i1 %tobool74.not, label %sw.bb71.sw.epilog_crit_edge, label %land.lhs.true

sw.bb71.sw.epilog_crit_edge:                      ; preds = %sw.bb71
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

land.lhs.true:                                    ; preds = %sw.bb71
  %is_going_down = getelementptr inbounds %struct.mlx4_ib_dev, ptr %1, i32 0, i32 11, i32 3
  %55 = ptrtoint ptr %is_going_down to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %is_going_down, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool76.not = icmp eq i32 %56, 0
  br i1 %tobool76.not, label %if.then77, label %land.lhs.true.sw.epilog_crit_edge

land.lhs.true.sw.epilog_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.then77:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %params.i = getelementptr inbounds %struct.ib_event_work, ptr %work, i32 0, i32 2, i32 4, i32 0, i32 1
  %57 = ptrtoint ptr %params.i to i32
  call void @__asan_loadN_noabort(i32 %57, i32 4)
  %58 = load i32, ptr %params.i, align 1
  %tbl_entries_mask.i = getelementptr inbounds %struct.ib_event_work, ptr %work, i32 0, i32 2, i32 4, i32 0, i32 2
  %59 = ptrtoint ptr %tbl_entries_mask.i to i32
  call void @__asan_loadN_noabort(i32 %59, i32 4)
  %60 = load i32, ptr %tbl_entries_mask.i, align 1
  call fastcc void @__propagate_pkey_ev(ptr noundef %1, i32 noundef %conv, i32 noundef %58, i32 noundef %60) #11
  br label %sw.epilog

sw.bb79:                                          ; preds = %entry
  %dev80 = getelementptr inbounds %struct.mlx4_ib_dev, ptr %1, i32 0, i32 1
  %61 = ptrtoint ptr %dev80 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev80, align 8
  %flags.i199 = getelementptr inbounds %struct.mlx4_dev, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %flags.i199 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %flags.i199, align 4
  %and.i200 = and i32 %64, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i200)
  %tobool82.not = icmp eq i32 %and.i200, 0
  br i1 %tobool82.not, label %if.then83, label %if.else84

if.then83:                                        ; preds = %sw.bb79
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %event.i201) #11
  %65 = getelementptr inbounds %struct.ib_event, ptr %event.i201, i32 0, i32 1
  %66 = getelementptr inbounds %struct.ib_event, ptr %event.i201, i32 0, i32 2
  %67 = ptrtoint ptr %event.i201 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %1, ptr %event.i201, align 4
  %68 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %conv, ptr %65, align 4
  %69 = ptrtoint ptr %66 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 18, ptr %66, align 4
  call void @ib_dispatch_event(ptr noundef nonnull %event.i201) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %event.i201) #11
  br label %sw.epilog

if.else84:                                        ; preds = %sw.bb79
  %is_going_down86 = getelementptr inbounds %struct.mlx4_ib_dev, ptr %1, i32 0, i32 11, i32 3
  %70 = ptrtoint ptr %is_going_down86 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %is_going_down86, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool87.not = icmp eq i32 %71, 0
  br i1 %tobool87.not, label %if.end.i, label %if.else84.sw.epilog_crit_edge

if.else84.sw.epilog_crit_edge:                    ; preds = %if.else84
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.end.i:                                         ; preds = %if.else84
  %params90 = getelementptr inbounds %struct.ib_event_work, ptr %work, i32 0, i32 2, i32 4, i32 0, i32 1
  %72 = ptrtoint ptr %params90 to i32
  call void @__asan_loadN_noabort(i32 %72, i32 4)
  %73 = load i32, ptr %params90, align 1
  %tbl_entries_mask = getelementptr inbounds %struct.ib_event_work, ptr %work, i32 0, i32 2, i32 4, i32 0, i32 2
  %74 = ptrtoint ptr %tbl_entries_mask to i32
  call void @__asan_loadN_noabort(i32 %74, i32 4)
  %75 = load i32, ptr %tbl_entries_mask, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %76 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %76, i32 noundef 3264, i32 noundef 256) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %77 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i61.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %77, i32 noundef 3264, i32 noundef 256) #15
  %tobool7.not.i = icmp eq ptr %call7.i.i, null
  %tobool9.not.i = icmp eq ptr %call7.i61.i, null
  %or.cond.i = select i1 %tobool7.not.i, i1 true, i1 %tobool9.not.i
  br i1 %or.cond.i, label %if.end.i.handle_slaves_guid_change.exit_crit_edge, label %if.end11.i

if.end.i.handle_slaves_guid_change.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %handle_slaves_guid_change.exit

if.end11.i:                                       ; preds = %if.end.i
  %mul.i = shl i32 %73, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool13.not.i = icmp eq i32 %75, 0
  %attr_id.i = getelementptr inbounds %struct.ib_smp, ptr %call7.i.i, i32 0, i32 8
  %attr_mod.i = getelementptr inbounds %struct.ib_smp, ptr %call7.i.i, i32 0, i32 10
  %data.i = getelementptr inbounds %struct.ib_smp, ptr %call7.i61.i, i32 0, i32 15
  %78 = and i32 %75, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %tobool16.not.i = icmp ne i32 %78, 0
  %79 = or i1 %tobool13.not.i, %tobool16.not.i
  br i1 %79, label %if.end18.i, label %land.lhs.true.i204.1

if.end18.i:                                       ; preds = %if.end11.i
  %80 = call ptr @memset(ptr %call7.i.i, i32 0, i32 256)
  %81 = call ptr @memset(ptr %call7.i61.i, i32 0, i32 256)
  %82 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 16843009, ptr %call7.i.i, align 8
  %83 = ptrtoint ptr %attr_id.i to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 20, ptr %attr_id.i, align 8
  %84 = ptrtoint ptr %attr_mod.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %mul.i, ptr %attr_mod.i, align 4
  %call20.i = tail call i32 @mlx4_MAD_IFC(ptr noundef %1, i32 noundef 7, i32 noundef %conv, ptr noundef null, ptr noundef null, ptr noundef nonnull %call7.i.i, ptr noundef nonnull %call7.i61.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool21.not.i = icmp eq i32 %call20.i, 0
  br i1 %tobool21.not.i, label %for.inc.i, label %if.end18.i.do.end.i_crit_edge

if.end18.i.do.end.i_crit_edge:                    ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

do.end.i:                                         ; preds = %if.end18.i.3.do.end.i_crit_edge, %if.end18.i.2.do.end.i_crit_edge, %if.end18.i.1.do.end.i_crit_edge, %if.end18.i.do.end.i_crit_edge
  %parent.i = getelementptr inbounds %struct.ib_device, ptr %1, i32 0, i32 13, i32 0, i32 0, i32 1
  %85 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %parent.i, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %86, ptr noundef nonnull @.str.47) #14
  br label %handle_slaves_guid_change.exit

for.inc.i:                                        ; preds = %if.end18.i
  tail call void @mlx4_ib_update_cache_on_guid_change(ptr noundef %1, i32 noundef %mul.i, i32 noundef %conv, ptr noundef %data.i) #11
  tail call void @mlx4_ib_notify_slaves_on_guid_change(ptr noundef %1, i32 noundef %mul.i, i32 noundef %conv, ptr noundef %data.i) #11
  %87 = and i32 %75, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %tobool16.not.i.1 = icmp ne i32 %87, 0
  %88 = or i1 %tobool13.not.i, %tobool16.not.i.1
  br i1 %88, label %for.inc.i.if.end18.i.1_crit_edge, label %for.inc.i.land.lhs.true.i204.2_crit_edge

for.inc.i.land.lhs.true.i204.2_crit_edge:         ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true.i204.2

for.inc.i.if.end18.i.1_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18.i.1

land.lhs.true.i204.1:                             ; preds = %if.end11.i
  %.old = and i32 %75, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.old)
  %tobool16.not.i.1.old = icmp eq i32 %.old, 0
  br i1 %tobool16.not.i.1.old, label %land.lhs.true.i204.1.land.lhs.true.i204.2_crit_edge, label %land.lhs.true.i204.1.if.end18.i.1_crit_edge

land.lhs.true.i204.1.if.end18.i.1_crit_edge:      ; preds = %land.lhs.true.i204.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18.i.1

land.lhs.true.i204.1.land.lhs.true.i204.2_crit_edge: ; preds = %land.lhs.true.i204.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true.i204.2

if.end18.i.1:                                     ; preds = %land.lhs.true.i204.1.if.end18.i.1_crit_edge, %for.inc.i.if.end18.i.1_crit_edge
  %89 = call ptr @memset(ptr %call7.i.i, i32 0, i32 256)
  %90 = call ptr @memset(ptr %call7.i61.i, i32 0, i32 256)
  %91 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 16843009, ptr %call7.i.i, align 8
  %92 = ptrtoint ptr %attr_id.i to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 20, ptr %attr_id.i, align 8
  %add.i.1 = or i32 %mul.i, 1
  %93 = ptrtoint ptr %attr_mod.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %add.i.1, ptr %attr_mod.i, align 4
  %call20.i.1 = tail call i32 @mlx4_MAD_IFC(ptr noundef %1, i32 noundef 7, i32 noundef %conv, ptr noundef null, ptr noundef null, ptr noundef nonnull %call7.i.i, ptr noundef nonnull %call7.i61.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i.1)
  %tobool21.not.i.1 = icmp eq i32 %call20.i.1, 0
  br i1 %tobool21.not.i.1, label %for.inc.i.1, label %if.end18.i.1.do.end.i_crit_edge

if.end18.i.1.do.end.i_crit_edge:                  ; preds = %if.end18.i.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

for.inc.i.1:                                      ; preds = %if.end18.i.1
  tail call void @mlx4_ib_update_cache_on_guid_change(ptr noundef %1, i32 noundef %add.i.1, i32 noundef %conv, ptr noundef %data.i) #11
  tail call void @mlx4_ib_notify_slaves_on_guid_change(ptr noundef %1, i32 noundef %add.i.1, i32 noundef %conv, ptr noundef %data.i) #11
  %94 = and i32 %75, 16711680
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %tobool16.not.i.2 = icmp ne i32 %94, 0
  %95 = or i1 %tobool13.not.i, %tobool16.not.i.2
  br i1 %95, label %for.inc.i.1.if.end18.i.2_crit_edge, label %for.inc.i.1.land.lhs.true.i204.3_crit_edge

for.inc.i.1.land.lhs.true.i204.3_crit_edge:       ; preds = %for.inc.i.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true.i204.3

for.inc.i.1.if.end18.i.2_crit_edge:               ; preds = %for.inc.i.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18.i.2

land.lhs.true.i204.2:                             ; preds = %land.lhs.true.i204.1.land.lhs.true.i204.2_crit_edge, %for.inc.i.land.lhs.true.i204.2_crit_edge
  %.old216 = and i32 %75, 16711680
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.old216)
  %tobool16.not.i.2.old = icmp eq i32 %.old216, 0
  br i1 %tobool16.not.i.2.old, label %land.lhs.true.i204.2.land.lhs.true.i204.3_crit_edge, label %land.lhs.true.i204.2.if.end18.i.2_crit_edge

land.lhs.true.i204.2.if.end18.i.2_crit_edge:      ; preds = %land.lhs.true.i204.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18.i.2

land.lhs.true.i204.2.land.lhs.true.i204.3_crit_edge: ; preds = %land.lhs.true.i204.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true.i204.3

if.end18.i.2:                                     ; preds = %land.lhs.true.i204.2.if.end18.i.2_crit_edge, %for.inc.i.1.if.end18.i.2_crit_edge
  %96 = call ptr @memset(ptr %call7.i.i, i32 0, i32 256)
  %97 = call ptr @memset(ptr %call7.i61.i, i32 0, i32 256)
  %98 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 16843009, ptr %call7.i.i, align 8
  %99 = ptrtoint ptr %attr_id.i to i32
  call void @__asan_store2_noabort(i32 %99)
  store i16 20, ptr %attr_id.i, align 8
  %add.i.2 = or i32 %mul.i, 2
  %100 = ptrtoint ptr %attr_mod.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %add.i.2, ptr %attr_mod.i, align 4
  %call20.i.2 = tail call i32 @mlx4_MAD_IFC(ptr noundef %1, i32 noundef 7, i32 noundef %conv, ptr noundef null, ptr noundef null, ptr noundef nonnull %call7.i.i, ptr noundef nonnull %call7.i61.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i.2)
  %tobool21.not.i.2 = icmp eq i32 %call20.i.2, 0
  br i1 %tobool21.not.i.2, label %for.inc.i.2, label %if.end18.i.2.do.end.i_crit_edge

if.end18.i.2.do.end.i_crit_edge:                  ; preds = %if.end18.i.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

for.inc.i.2:                                      ; preds = %if.end18.i.2
  tail call void @mlx4_ib_update_cache_on_guid_change(ptr noundef %1, i32 noundef %add.i.2, i32 noundef %conv, ptr noundef %data.i) #11
  tail call void @mlx4_ib_notify_slaves_on_guid_change(ptr noundef %1, i32 noundef %add.i.2, i32 noundef %conv, ptr noundef %data.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %75)
  %tobool16.not.i.3 = icmp ult i32 %75, 16777216
  %or.cond219 = xor i1 %tobool13.not.i, %tobool16.not.i.3
  br i1 %or.cond219, label %for.inc.i.2.handle_slaves_guid_change.exit_crit_edge, label %for.inc.i.2.if.end18.i.3_crit_edge

for.inc.i.2.if.end18.i.3_crit_edge:               ; preds = %for.inc.i.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18.i.3

for.inc.i.2.handle_slaves_guid_change.exit_crit_edge: ; preds = %for.inc.i.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %handle_slaves_guid_change.exit

land.lhs.true.i204.3:                             ; preds = %land.lhs.true.i204.2.land.lhs.true.i204.3_crit_edge, %for.inc.i.1.land.lhs.true.i204.3_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %75)
  %tobool16.not.i.3.old = icmp ult i32 %75, 16777216
  br i1 %tobool16.not.i.3.old, label %land.lhs.true.i204.3.handle_slaves_guid_change.exit_crit_edge, label %land.lhs.true.i204.3.if.end18.i.3_crit_edge

land.lhs.true.i204.3.if.end18.i.3_crit_edge:      ; preds = %land.lhs.true.i204.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18.i.3

land.lhs.true.i204.3.handle_slaves_guid_change.exit_crit_edge: ; preds = %land.lhs.true.i204.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %handle_slaves_guid_change.exit

if.end18.i.3:                                     ; preds = %land.lhs.true.i204.3.if.end18.i.3_crit_edge, %for.inc.i.2.if.end18.i.3_crit_edge
  %101 = call ptr @memset(ptr %call7.i.i, i32 0, i32 256)
  %102 = call ptr @memset(ptr %call7.i61.i, i32 0, i32 256)
  %103 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 16843009, ptr %call7.i.i, align 8
  %104 = ptrtoint ptr %attr_id.i to i32
  call void @__asan_store2_noabort(i32 %104)
  store i16 20, ptr %attr_id.i, align 8
  %add.i.3 = or i32 %mul.i, 3
  %105 = ptrtoint ptr %attr_mod.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %add.i.3, ptr %attr_mod.i, align 4
  %call20.i.3 = tail call i32 @mlx4_MAD_IFC(ptr noundef %1, i32 noundef 7, i32 noundef %conv, ptr noundef null, ptr noundef null, ptr noundef nonnull %call7.i.i, ptr noundef nonnull %call7.i61.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i.3)
  %tobool21.not.i.3 = icmp eq i32 %call20.i.3, 0
  br i1 %tobool21.not.i.3, label %if.end23.i.3, label %if.end18.i.3.do.end.i_crit_edge

if.end18.i.3.do.end.i_crit_edge:                  ; preds = %if.end18.i.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

if.end23.i.3:                                     ; preds = %if.end18.i.3
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @mlx4_ib_update_cache_on_guid_change(ptr noundef %1, i32 noundef %add.i.3, i32 noundef %conv, ptr noundef %data.i) #11
  tail call void @mlx4_ib_notify_slaves_on_guid_change(ptr noundef %1, i32 noundef %add.i.3, i32 noundef %conv, ptr noundef %data.i) #11
  br label %handle_slaves_guid_change.exit

handle_slaves_guid_change.exit:                   ; preds = %if.end23.i.3, %land.lhs.true.i204.3.handle_slaves_guid_change.exit_crit_edge, %for.inc.i.2.handle_slaves_guid_change.exit_crit_edge, %do.end.i, %if.end.i.handle_slaves_guid_change.exit_crit_edge
  tail call void @kfree(ptr noundef %call7.i.i) #11
  tail call void @kfree(ptr noundef %call7.i61.i) #11
  br label %sw.epilog

sw.bb95:                                          ; preds = %entry
  %dev96 = getelementptr inbounds %struct.mlx4_ib_dev, ptr %1, i32 0, i32 1
  %106 = ptrtoint ptr %dev96 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %dev96, align 8
  %flags.i205 = getelementptr inbounds %struct.mlx4_dev, ptr %107, i32 0, i32 1
  %108 = ptrtoint ptr %flags.i205 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %flags.i205, align 4
  %and.i206 = and i32 %109, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i206)
  %tobool98.not = icmp eq i32 %and.i206, 0
  br i1 %tobool98.not, label %if.then99, label %sw.bb95.sw.epilog_crit_edge

sw.bb95.sw.epilog_crit_edge:                      ; preds = %sw.bb95
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.then99:                                        ; preds = %sw.bb95
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %sl2vl64) #11
  %110 = ptrtoint ptr %sl2vl64 to i32
  call void @__asan_store8_noabort(i32 %110)
  store i64 -1, ptr %sl2vl64, align 8, !annotation !280
  %params102 = getelementptr inbounds %struct.ib_event_work, ptr %work, i32 0, i32 2, i32 4, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.then99
  %jj.0211 = phi i32 [ 0, %if.then99 ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx103 = getelementptr [8 x i8], ptr %params102, i32 0, i32 %jj.0211
  %111 = ptrtoint ptr %arrayidx103 to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %arrayidx103, align 1
  %arrayidx104 = getelementptr [8 x i8], ptr %sl2vl64, i32 0, i32 %jj.0211
  %113 = ptrtoint ptr %arrayidx104 to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 %112, ptr %arrayidx104, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @handle_port_mgmt_change_event.__UNIQUE_ID_ddebug520, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@handle_port_mgmt_change_event, %if.then117)) #11
          to label %for.inc [label %if.then117], !srcloc !281

if.then117:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %conv119 = zext i8 %112 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @handle_port_mgmt_change_event.__UNIQUE_ID_ddebug520, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.12, i32 noundef %conv, i32 noundef %jj.0211, i32 noundef %conv119) #11
  br label %for.inc

for.inc:                                          ; preds = %if.then117, %for.body
  %inc = add nuw nsw i32 %jj.0211, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  %sub123 = add nsw i32 %conv, -1
  %arrayidx124 = getelementptr %struct.mlx4_ib_dev, ptr %1, i32 0, i32 10, i32 %sub123
  %114 = ptrtoint ptr %sl2vl64 to i32
  call void @__asan_load8_noabort(i32 %114)
  %115 = load i64, ptr %sl2vl64, align 8
  %call.i.i193 = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx124, i32 noundef 8) #11
  tail call void @generic_atomic64_set(ptr noundef %arrayidx124, i64 noundef %115) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %sl2vl64) #11
  br label %sw.epilog

do.end128:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %conv2 = zext i8 %5 to i32
  %call132 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.12, i32 noundef %conv2) #14
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end128, %for.end, %sw.bb95.sw.epilog_crit_edge, %handle_slaves_guid_change.exit, %if.else84.sw.epilog_crit_edge, %if.then83, %if.then77, %land.lhs.true.sw.epilog_crit_edge, %sw.bb71.sw.epilog_crit_edge, %if.then69, %if.end66.sw.epilog_crit_edge
  call void @kfree(ptr noundef %work) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @update_sm_ah(ptr noundef %dev, i32 noundef %port_num, i16 noundef zeroext %lid, i8 noundef zeroext %sl) unnamed_addr #0 align 64 {
entry:
  %ah_attr = alloca %struct.rdma_ah_attr, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %ah_attr) #11
  %sub = add i32 %port_num, -1
  %arrayidx = getelementptr %struct.mlx4_ib_dev, ptr %dev, i32 0, i32 7, i32 %sub
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = call ptr @memset(ptr %ah_attr, i32 0, i32 56)
  %port_data.i.i = getelementptr inbounds %struct.ib_device, ptr %dev, i32 0, i32 11
  %3 = ptrtoint ptr %port_data.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %port_data.i.i, align 8
  %core_cap_flags.i.i = getelementptr %struct.ib_port_data, ptr %4, i32 %port_num, i32 1, i32 2
  %5 = ptrtoint ptr %core_cap_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %core_cap_flags.i.i, align 4
  %and.i.i = and i32 %6, 10485760
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.end.i, label %if.end.rdma_ah_find_type.exit.thread_crit_edge

if.end.rdma_ah_find_type.exit.thread_crit_edge:   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %rdma_ah_find_type.exit.thread

if.end.i:                                         ; preds = %if.end
  %and.i13.i = and i32 %6, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i13.i)
  %tobool.i14.not.i = icmp eq i32 %and.i13.i, 0
  br i1 %tobool.i14.not.i, label %if.end.i.rdma_ah_find_type.exit.thread_crit_edge, label %if.then2.i

if.end.i.rdma_ah_find_type.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rdma_ah_find_type.exit.thread

if.then2.i:                                       ; preds = %if.end.i
  %and.i17.i = and i32 %6, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i17.i)
  %cmp.i.not.i = icmp eq i32 %and.i17.i, 0
  %type50 = getelementptr inbounds %struct.rdma_ah_attr, ptr %ah_attr, i32 0, i32 5
  br i1 %cmp.i.not.i, label %if.then.i, label %if.then5.i

rdma_ah_find_type.exit.thread:                    ; preds = %if.end.i.rdma_ah_find_type.exit.thread_crit_edge, %if.end.rdma_ah_find_type.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ 0, %if.end.i.rdma_ah_find_type.exit.thread_crit_edge ], [ 2, %if.end.rdma_ah_find_type.exit.thread_crit_edge ]
  %type46 = getelementptr inbounds %struct.rdma_ah_attr, ptr %ah_attr, i32 0, i32 5
  %7 = ptrtoint ptr %type46 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %retval.0.i.ph, ptr %type46, align 4
  br label %rdma_ah_set_dlid.exit

if.then.i:                                        ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %type50 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %type50, align 4
  %9 = getelementptr inbounds %struct.rdma_ah_attr, ptr %ah_attr, i32 0, i32 6
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %lid, ptr %9, align 8
  br label %rdma_ah_set_dlid.exit

if.then5.i:                                       ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %type50 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 3, ptr %type50, align 4
  %conv = zext i16 %lid to i32
  %12 = getelementptr inbounds %struct.rdma_ah_attr, ptr %ah_attr, i32 0, i32 6
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv, ptr %12, align 8
  br label %rdma_ah_set_dlid.exit

rdma_ah_set_dlid.exit:                            ; preds = %if.then5.i, %if.then.i, %rdma_ah_find_type.exit.thread
  %sl1.i = getelementptr inbounds %struct.rdma_ah_attr, ptr %ah_attr, i32 0, i32 1
  %14 = ptrtoint ptr %sl1.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %sl, ptr %sl1.i, align 8
  %port_num1.i = getelementptr inbounds %struct.rdma_ah_attr, ptr %ah_attr, i32 0, i32 3
  %15 = ptrtoint ptr %port_num1.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %port_num, ptr %port_num1.i, align 4
  %qp = getelementptr inbounds %struct.ib_mad_agent, ptr %1, i32 0, i32 1
  %16 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %qp, align 4
  %pd = getelementptr inbounds %struct.ib_qp, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pd, align 4
  %call6 = call ptr @rdma_create_ah(ptr noundef %19, ptr noundef nonnull %ah_attr, i32 noundef 0) #11
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %rdma_ah_set_dlid.exit.cleanup_crit_edge, label %do.body10

rdma_ah_set_dlid.exit.cleanup_crit_edge:          ; preds = %rdma_ah_set_dlid.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body10:                                        ; preds = %rdma_ah_set_dlid.exit
  %sm_lock = getelementptr inbounds %struct.mlx4_ib_dev, ptr %dev, i32 0, i32 9
  %call13 = call i32 @_raw_spin_lock_irqsave(ptr noundef %sm_lock) #11
  %arrayidx17 = getelementptr %struct.mlx4_ib_dev, ptr %dev, i32 0, i32 8, i32 %sub
  %20 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx17, align 4
  %tobool18.not = icmp eq ptr %21, null
  br i1 %tobool18.not, label %do.body10.if.end23_crit_edge, label %if.then19

do.body10.if.end23_crit_edge:                     ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23

if.then19:                                        ; preds = %do.body10
  %call.i = call i32 @rdma_destroy_ah_user(ptr noundef nonnull %21, i32 noundef 0, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then19.if.end23_crit_edge, label %land.rhs.i

if.then19.if.end23_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23

land.rhs.i:                                       ; preds = %if.then19
  %.b1.i = load i1, ptr @rdma_destroy_ah.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.if.end23_crit_edge, label %if.then.i44, !prof !279

land.rhs.i.if.end23_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23

if.then.i44:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rdma_destroy_ah.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.37, i32 noundef 3630, i32 noundef 9, ptr noundef nonnull @.str.38) #11
  br label %if.end23

if.end23:                                         ; preds = %if.then.i44, %land.rhs.i.if.end23_crit_edge, %if.then19.if.end23_crit_edge, %do.body10.if.end23_crit_edge
  %22 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call6, ptr %arrayidx17, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %sm_lock, i32 noundef %call13) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %rdma_ah_set_dlid.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %ah_attr) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @handle_lid_change_event(ptr noundef %dev, i32 noundef %port_num) unnamed_addr #0 align 64 {
entry:
  %event.i = alloca %struct.ib_event, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %event.i) #11
  %0 = getelementptr inbounds %struct.ib_event, ptr %event.i, i32 0, i32 1
  %1 = getelementptr inbounds %struct.ib_event, ptr %event.i, i32 0, i32 2
  %2 = ptrtoint ptr %event.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev, ptr %event.i, align 4
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %port_num, ptr %0, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 11, ptr %1, align 4
  call void @ib_dispatch_event(ptr noundef nonnull %event.i) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %event.i) #11
  %dev1 = getelementptr inbounds %struct.mlx4_ib_dev, ptr %dev, i32 0, i32 1
  %5 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev1, align 8
  %flags.i = getelementptr inbounds %struct.mlx4_dev, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %8, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %is_going_down = getelementptr inbounds %struct.mlx4_ib_dev, ptr %dev, i32 0, i32 11, i32 3
  %9 = ptrtoint ptr %is_going_down to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %is_going_down, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool2.not = icmp eq i32 %10, 0
  br i1 %tobool2.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %conv = trunc i32 %port_num to i8
  %call4 = call i32 @mlx4_gen_slaves_port_mgt_ev(ptr noundef %6, i8 noundef zeroext %conv, i32 noundef 4) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mlx4_ib_query_gid(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx4_ib_dispatch_event(ptr noundef %dev, i32 noundef %port_num, i32 noundef %type) local_unnamed_addr #0 align 64 {
entry:
  %event = alloca %struct.ib_event, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %event) #11
  %0 = getelementptr inbounds %struct.ib_event, ptr %event, i32 0, i32 1
  %1 = getelementptr inbounds %struct.ib_event, ptr %event, i32 0, i32 2
  %2 = ptrtoint ptr %event to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev, ptr %event, align 4
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %port_num, ptr %0, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %type, ptr %1, align 4
  call void @ib_dispatch_event(ptr noundef nonnull %event) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %event) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_gen_slaves_port_mgt_ev(ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @handle_client_rereg_event(ptr noundef %dev, i32 noundef %port_num) unnamed_addr #0 align 64 {
entry:
  %event.i = alloca %struct.ib_event, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.mlx4_ib_dev, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 8
  %flags.i = getelementptr inbounds %struct.mlx4_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %entry.if.end7_crit_edge, label %if.then

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.then:                                          ; preds = %entry
  tail call void @mlx4_ib_invalidate_all_guid_record(ptr noundef %dev, i32 noundef %port_num) #11
  %is_going_down = getelementptr inbounds %struct.mlx4_ib_dev, ptr %dev, i32 0, i32 11, i32 3
  %4 = ptrtoint ptr %is_going_down to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %is_going_down, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool2.not = icmp eq i32 %5, 0
  br i1 %tobool2.not, label %if.then3, label %if.then.if.end7_crit_edge

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %sriov = getelementptr inbounds %struct.mlx4_ib_dev, ptr %dev, i32 0, i32 11
  %sub = add i32 %port_num, -1
  %arrayidx = getelementptr [2 x %struct.mlx4_ib_demux_ctx], ptr %sriov, i32 0, i32 %sub
  tail call void @mlx4_ib_mcg_port_cleanup(ptr noundef %arrayidx, i32 noundef 0) #11
  %6 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev1, align 8
  %conv = trunc i32 %port_num to i8
  %call6 = tail call i32 @mlx4_gen_slaves_port_mgt_ev(ptr noundef %7, i8 noundef zeroext %conv, i32 noundef 8) #11
  br label %if.end7

if.end7:                                          ; preds = %if.then3, %if.then.if.end7_crit_edge, %entry.if.end7_crit_edge
  %8 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev1, align 8
  %flags.i40 = getelementptr inbounds %struct.mlx4_dev, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %flags.i40 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags.i40, align 4
  %12 = and i32 %11, 264
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %12)
  %.not = icmp eq i32 %12, 256
  br i1 %.not, label %land.lhs.true13, label %if.end7.if.end23_crit_edge

if.end7.if.end23_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23

land.lhs.true13:                                  ; preds = %if.end7
  %flags2 = getelementptr inbounds %struct.mlx4_dev, ptr %9, i32 0, i32 3, i32 61
  %13 = ptrtoint ptr %flags2 to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %flags2, align 8
  %and15 = and i64 %14, 137438953472
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and15)
  %tobool16.not = icmp eq i64 %and15, 0
  br i1 %tobool16.not, label %if.then17, label %land.lhs.true13.if.end23_crit_edge

land.lhs.true13.if.end23_crit_edge:               ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23

if.then17:                                        ; preds = %land.lhs.true13
  %and.i43 = and i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i43)
  %tobool20.not = icmp eq i32 %and.i43, 0
  br i1 %tobool20.not, label %if.else, label %if.then21

if.then21:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @mlx4_ib_sl2vl_update(ptr noundef %dev, i32 noundef %port_num) #11
  br label %if.end23

if.else:                                          ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @mlx4_sched_ib_sl2vl_update_work(ptr noundef %dev, i32 noundef %port_num) #11
  br label %if.end23

if.end23:                                         ; preds = %if.else, %if.then21, %land.lhs.true13.if.end23_crit_edge, %if.end7.if.end23_crit_edge
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %event.i) #11
  %15 = getelementptr inbounds %struct.ib_event, ptr %event.i, i32 0, i32 1
  %16 = getelementptr inbounds %struct.ib_event, ptr %event.i, i32 0, i32 2
  %17 = ptrtoint ptr %event.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %dev, ptr %event.i, align 4
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %port_num, ptr %15, align 4
  %19 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 17, ptr %16, align 4
  call void @ib_dispatch_event(ptr noundef nonnull %event.i) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %event.i) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_dispatch_event(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx4_ib_send_to_wire(ptr nocapture noundef readonly %dev, i32 noundef %slave, i32 noundef %port, i32 noundef %dest_qpt, i16 noundef zeroext %pkey_index, i32 noundef %remote_qpn, i32 noundef %qkey, ptr noundef %attr, ptr noundef %s_mac, i16 noundef zeroext %vlan_id, ptr nocapture noundef readonly %mad) local_unnamed_addr #0 align 64 {
entry:
  %list = alloca %struct.ib_sge, align 8
  %wr = alloca %struct.ib_ud_wr, align 8
  %bad_wr = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %list) #11
  %0 = getelementptr inbounds %struct.ib_sge, ptr %list, i32 0, i32 1
  %1 = getelementptr inbounds %struct.ib_sge, ptr %list, i32 0, i32 2
  %2 = call ptr @memset(ptr %list, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %wr) #11
  %3 = call ptr @memset(ptr %wr, i32 255, i32 72)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bad_wr) #11
  %4 = ptrtoint ptr %bad_wr to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %bad_wr, align 4, !annotation !280
  %sub = add i32 %port, -1
  %arrayidx = getelementptr %struct.mlx4_ib_dev, ptr %dev, i32 0, i32 11, i32 1, i32 %sub
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %state = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %8)
  %cmp.not = icmp eq i32 %8, 2
  br i1 %cmp.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dest_qpt)
  %cmp1 = icmp eq i32 %dest_qpt, 0
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %qp = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, ptr %6, i32 0, i32 10
  %pkeys = getelementptr inbounds %struct.mlx4_ib_dev, ptr %dev, i32 0, i32 21
  %arrayidx6 = getelementptr [128 x [2 x [128 x i8]]], ptr %pkeys, i32 0, i32 %slave, i32 %sub
  br label %if.end17

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx9 = getelementptr %struct.mlx4_ib_demux_pv_ctx, ptr %6, i32 0, i32 10, i32 1
  %pkeys10 = getelementptr inbounds %struct.mlx4_ib_dev, ptr %dev, i32 0, i32 21
  %idxprom = zext i16 %pkey_index to i32
  %arrayidx15 = getelementptr [128 x [2 x [128 x i8]]], ptr %pkeys10, i32 0, i32 %slave, i32 %sub, i32 %idxprom
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.then2
  %sqp.0 = phi ptr [ %qp, %if.then2 ], [ %arrayidx9, %if.else ]
  %wire_pkey_ix.0.in.in = phi ptr [ %arrayidx6, %if.then2 ], [ %arrayidx15, %if.else ]
  %src_qpnum.0 = phi i32 [ 0, %if.then2 ], [ 1, %if.else ]
  %9 = ptrtoint ptr %wire_pkey_ix.0.in.in to i32
  call void @__asan_load1_noabort(i32 %9)
  %wire_pkey_ix.0.in = load i8, ptr %wire_pkey_ix.0.in.in, align 1
  %wire_pkey_ix.0 = zext i8 %wire_pkey_ix.0.in to i16
  %10 = ptrtoint ptr %sqp.0 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sqp.0, align 4
  %pd = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, ptr %6, i32 0, i32 6
  %12 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pd, align 4
  %device = getelementptr inbounds %struct.ib_pd, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %device, align 4
  %size_ib_ah = getelementptr inbounds %struct.ib_device, ptr %15, i32 0, i32 1, i32 121
  %16 = ptrtoint ptr %size_ib_ah to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %size_ib_ah, align 4
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %17, i32 noundef 3520) #16
  %tobool21.not = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool21.not, label %if.end17.cleanup_crit_edge, label %if.end23

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end23:                                         ; preds = %if.end17
  %18 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pd, align 4
  %device25 = getelementptr inbounds %struct.ib_pd, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %device25 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %device25, align 4
  %22 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %call9.i.i.i, align 128
  %23 = load ptr, ptr %pd, align 4
  %pd28 = getelementptr inbounds %struct.ib_ah, ptr %call9.i.i.i, i32 0, i32 1
  %24 = ptrtoint ptr %pd28 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %23, ptr %pd28, align 4
  %sgid_index = getelementptr inbounds %struct.ib_global_route, ptr %attr, i32 0, i32 3
  %25 = ptrtoint ptr %sgid_index to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %sgid_index, align 4
  %conv30 = zext i8 %26 to i32
  %call31 = tail call i32 @mlx4_ib_create_ah_slave(ptr noundef nonnull %call9.i.i.i, ptr noundef %attr, i32 noundef %conv30, ptr noundef %s_mac, i16 noundef zeroext %vlan_id) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end34, label %if.end23.out_crit_edge

if.end23.out_crit_edge:                           ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end34:                                         ; preds = %if.end23
  %tx_lock = getelementptr inbounds %struct.mlx4_ib_demux_pv_qp, ptr %sqp.0, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %tx_lock) #11
  %tx_ix_head = getelementptr inbounds %struct.mlx4_ib_demux_pv_qp, ptr %sqp.0, i32 0, i32 5
  %27 = ptrtoint ptr %tx_ix_head to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tx_ix_head, align 4
  %tx_ix_tail = getelementptr inbounds %struct.mlx4_ib_demux_pv_qp, ptr %sqp.0, i32 0, i32 6
  %29 = ptrtoint ptr %tx_ix_tail to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %tx_ix_tail, align 4
  %sub35 = sub i32 %28, %30
  call void @__sanitizer_cov_trace_const_cmp4(i32 2046, i32 %sub35)
  %cmp36 = icmp ugt i32 %sub35, 2046
  br i1 %cmp36, label %if.end41.thread, label %if.end45

if.end41.thread:                                  ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock(ptr noundef %tx_lock) #11
  br label %out

if.end45:                                         ; preds = %if.end34
  %inc = add i32 %28, 1
  %31 = ptrtoint ptr %tx_ix_head to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %inc, ptr %tx_ix_head, align 4
  %and = and i32 %inc, 2047
  tail call void @_raw_spin_unlock(ptr noundef %tx_lock) #11
  %tx_ring = getelementptr inbounds %struct.mlx4_ib_demux_pv_qp, ptr %sqp.0, i32 0, i32 3
  %32 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %tx_ring, align 4
  %arrayidx46 = getelementptr %struct.mlx4_ib_tun_tx_buf, ptr %33, i32 %and
  %34 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx46, align 4
  %ah49 = getelementptr %struct.mlx4_ib_tun_tx_buf, ptr %33, i32 %and, i32 1
  %36 = ptrtoint ptr %ah49 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ah49, align 4
  tail call void @kfree(ptr noundef %37) #11
  %38 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %tx_ring, align 4
  %ah52 = getelementptr %struct.mlx4_ib_tun_tx_buf, ptr %39, i32 %and, i32 1
  %40 = ptrtoint ptr %ah52 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call9.i.i.i, ptr %ah52, align 4
  %41 = load ptr, ptr %tx_ring, align 4
  %map = getelementptr %struct.mlx4_ib_tun_tx_buf, ptr %41, i32 %and, i32 0, i32 1
  %42 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %map, align 4
  %44 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev, align 8
  tail call void @dma_sync_single_for_cpu(ptr noundef %45, i32 noundef %43, i32 noundef 256, i32 noundef 1) #11
  %46 = call ptr @memcpy(ptr %35, ptr %mad, i32 256)
  %47 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %tx_ring, align 4
  %map61 = getelementptr %struct.mlx4_ib_tun_tx_buf, ptr %48, i32 %and, i32 0, i32 1
  %49 = ptrtoint ptr %map61 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %map61, align 4
  %51 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev, align 8
  tail call void @dma_sync_single_for_device(ptr noundef %52, i32 noundef %50, i32 noundef 256, i32 noundef 1) #11
  %53 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %tx_ring, align 4
  %map66 = getelementptr %struct.mlx4_ib_tun_tx_buf, ptr %54, i32 %and, i32 0, i32 1
  %55 = ptrtoint ptr %map66 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %map66, align 4
  %conv67 = zext i32 %56 to i64
  %57 = ptrtoint ptr %list to i32
  call void @__asan_store8_noabort(i32 %57)
  store i64 %conv67, ptr %list, align 8
  %58 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 256, ptr %0, align 8
  %59 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %pd, align 4
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %60, align 4
  %63 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %1, align 4
  %ah70 = getelementptr inbounds %struct.ib_ud_wr, ptr %wr, i32 0, i32 1
  %64 = ptrtoint ptr %ah70 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %call9.i.i.i, ptr %ah70, align 8
  %port_num = getelementptr inbounds %struct.ib_ud_wr, ptr %wr, i32 0, i32 8
  %65 = ptrtoint ptr %port_num to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %port, ptr %port_num, align 4
  %pkey_index71 = getelementptr inbounds %struct.ib_ud_wr, ptr %wr, i32 0, i32 7
  %66 = ptrtoint ptr %pkey_index71 to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %wire_pkey_ix.0, ptr %pkey_index71, align 8
  %remote_qkey = getelementptr inbounds %struct.ib_ud_wr, ptr %wr, i32 0, i32 6
  %67 = ptrtoint ptr %remote_qkey to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %qkey, ptr %remote_qkey, align 4
  %remote_qpn72 = getelementptr inbounds %struct.ib_ud_wr, ptr %wr, i32 0, i32 5
  %68 = ptrtoint ptr %remote_qpn72 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %remote_qpn, ptr %remote_qpn72, align 8
  %69 = ptrtoint ptr %wr to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr null, ptr %wr, align 8
  %conv74 = zext i32 %and to i64
  %70 = zext i32 %src_qpnum.0 to i64
  %shl = shl nuw nsw i64 %70, 32
  %or = or i64 %shl, %conv74
  %71 = getelementptr inbounds %struct.ib_send_wr, ptr %wr, i32 0, i32 1
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_store8_noabort(i32 %72)
  store i64 %or, ptr %71, align 8
  %sg_list = getelementptr inbounds %struct.ib_send_wr, ptr %wr, i32 0, i32 2
  %73 = ptrtoint ptr %sg_list to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %list, ptr %sg_list, align 8
  %num_sge = getelementptr inbounds %struct.ib_send_wr, ptr %wr, i32 0, i32 3
  %74 = ptrtoint ptr %num_sge to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 1, ptr %num_sge, align 4
  %opcode = getelementptr inbounds %struct.ib_send_wr, ptr %wr, i32 0, i32 4
  %75 = ptrtoint ptr %opcode to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 2, ptr %opcode, align 8
  %send_flags = getelementptr inbounds %struct.ib_send_wr, ptr %wr, i32 0, i32 5
  %76 = ptrtoint ptr %send_flags to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 2, ptr %send_flags, align 4
  %77 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %11, align 4
  %post_send.i = getelementptr inbounds %struct.ib_device, ptr %78, i32 0, i32 1, i32 6
  %79 = ptrtoint ptr %post_send.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %post_send.i, align 4
  %call.i = call i32 %80(ptr noundef %11, ptr noundef nonnull %wr, ptr noundef nonnull %bad_wr) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool84.not = icmp eq i32 %call.i, 0
  br i1 %tobool84.not, label %if.end45.cleanup_crit_edge, label %if.end86

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end86:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #13
  call void @_raw_spin_lock(ptr noundef %tx_lock) #11
  %81 = ptrtoint ptr %tx_ix_tail to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %tx_ix_tail, align 4
  %inc89 = add i32 %82, 1
  store i32 %inc89, ptr %tx_ix_tail, align 4
  call void @_raw_spin_unlock(ptr noundef %tx_lock) #11
  %83 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %tx_ring, align 4
  %ah93 = getelementptr %struct.mlx4_ib_tun_tx_buf, ptr %84, i32 %and, i32 1
  %85 = ptrtoint ptr %ah93 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr null, ptr %ah93, align 4
  br label %out

out:                                              ; preds = %if.end86, %if.end41.thread, %if.end23.out_crit_edge
  %ret.1 = phi i32 [ %call31, %if.end23.out_crit_edge ], [ %call.i, %if.end86 ], [ -11, %if.end41.thread ]
  call void @kfree(ptr noundef nonnull %call9.i.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end45.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %out ], [ -11, %lor.lhs.false.cleanup_crit_edge ], [ -11, %entry.cleanup_crit_edge ], [ -12, %if.end17.cleanup_crit_edge ], [ 0, %if.end45.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bad_wr) #11
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %wr) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %list) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_ib_create_ah_slave(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx4_ib_tunnels_update_work(ptr noundef %work) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.mlx4_ib_demux_work, ptr %work, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %slave = getelementptr inbounds %struct.mlx4_ib_demux_work, ptr %work, i32 0, i32 2
  %2 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %slave, align 4
  %port = getelementptr inbounds %struct.mlx4_ib_demux_work, ptr %work, i32 0, i32 4
  %4 = ptrtoint ptr %port to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %port, align 4
  %conv = zext i8 %5 to i32
  %do_init = getelementptr inbounds %struct.mlx4_ib_demux_work, ptr %work, i32 0, i32 3
  %6 = ptrtoint ptr %do_init to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %do_init, align 4
  tail call fastcc void @mlx4_ib_tunnels_update(ptr noundef %1, i32 noundef %3, i32 noundef %conv, i32 noundef %7)
  tail call void @kfree(ptr noundef %work) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlx4_ib_tunnels_update(ptr noundef %dev, i32 noundef %slave, i32 noundef %port, i32 noundef %do_init) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %do_init)
  %tobool.not = icmp eq i32 %do_init, 0
  %sriov = getelementptr inbounds %struct.mlx4_ib_dev, ptr %dev, i32 0, i32 11
  %sub = add i32 %port, -1
  br i1 %tobool.not, label %if.then, label %if.end11

if.then:                                          ; preds = %entry
  %arrayidx = getelementptr [2 x %struct.mlx4_ib_demux_ctx], ptr %sriov, i32 0, i32 %sub
  tail call void @clean_vf_mcast(ptr noundef %arrayidx, i32 noundef %slave) #11
  %dev1 = getelementptr inbounds %struct.mlx4_ib_dev, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 8
  %function.i = getelementptr inbounds %struct.mlx4_dev, ptr %1, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %function.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %function.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %slave)
  %cmp = icmp eq i32 %3, %slave
  br i1 %cmp, label %if.then2, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx5 = getelementptr %struct.mlx4_ib_dev, ptr %dev, i32 0, i32 11, i32 1, i32 %sub
  %4 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx5, align 4
  tail call fastcc void @destroy_pv_resources(ptr noundef %5, i32 noundef 1)
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then.if.end_crit_edge
  %tun = getelementptr [2 x %struct.mlx4_ib_demux_ctx], ptr %sriov, i32 0, i32 %sub, i32 13
  %6 = ptrtoint ptr %tun to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tun, align 8
  %arrayidx10 = getelementptr ptr, ptr %7, i32 %slave
  %8 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx10, align 4
  tail call fastcc void @destroy_pv_resources(ptr noundef %9, i32 noundef 1)
  br label %cleanup

if.end11:                                         ; preds = %entry
  %tun16 = getelementptr [2 x %struct.mlx4_ib_demux_ctx], ptr %sriov, i32 0, i32 %sub, i32 13
  %10 = ptrtoint ptr %tun16 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tun16, align 8
  %arrayidx17 = getelementptr ptr, ptr %11, i32 %slave
  %12 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx17, align 4
  %call18 = tail call fastcc i32 @create_pv_resources(ptr noundef %dev, i32 noundef %port, i32 noundef 1, ptr noundef %13)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %land.lhs.true, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end11
  %dev20 = getelementptr inbounds %struct.mlx4_ib_dev, ptr %dev, i32 0, i32 1
  %14 = ptrtoint ptr %dev20 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev20, align 8
  %function.i1 = getelementptr inbounds %struct.mlx4_dev, ptr %15, i32 0, i32 3, i32 1
  %16 = ptrtoint ptr %function.i1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %function.i1, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %slave)
  %cmp22 = icmp eq i32 %17, %slave
  br i1 %cmp22, label %if.then23, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then23:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx28 = getelementptr %struct.mlx4_ib_dev, ptr %dev, i32 0, i32 11, i32 1, i32 %sub
  %18 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx28, align 4
  %call29 = tail call fastcc i32 @create_pv_resources(ptr noundef %dev, i32 noundef %port, i32 noundef 0, ptr noundef %19)
  br label %cleanup

cleanup:                                          ; preds = %if.then23, %land.lhs.true.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx4_ib_init_sriov(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %gid = alloca %union.ib_gid, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.mlx4_ib_dev, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 8
  %flags.i = getelementptr inbounds %struct.mlx4_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %3, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %entry.cleanup102_crit_edge, label %if.end

entry.cleanup102_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup102

if.end:                                           ; preds = %entry
  %sriov = getelementptr inbounds %struct.mlx4_ib_dev, ptr %dev, i32 0, i32 11
  %is_going_down = getelementptr inbounds %struct.mlx4_ib_dev, ptr %dev, i32 0, i32 11, i32 3
  %4 = ptrtoint ptr %is_going_down to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %is_going_down, align 4
  %going_down_lock = getelementptr inbounds %struct.mlx4_ib_dev, ptr %dev, i32 0, i32 11, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %going_down_lock, ptr noundef nonnull @.str.20, ptr noundef nonnull @mlx4_ib_init_sriov.__key, i16 noundef signext 3) #11
  tail call void @mlx4_ib_cm_paravirt_init(ptr noundef %dev) #11
  %parent = getelementptr inbounds %struct.ib_device, ptr %dev, i32 0, i32 13, i32 0, i32 0, i32 1
  %5 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %parent, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %6, ptr noundef nonnull @.str.21) #14
  %7 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev1, align 8
  %flags.i161 = getelementptr inbounds %struct.mlx4_dev, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %flags.i161 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags.i161, align 4
  %and.i162 = and i32 %10, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i162)
  %tobool9.not = icmp eq i32 %and.i162, 0
  br i1 %tobool9.not, label %for.cond.preheader, label %do.end13

for.cond.preheader:                               ; preds = %if.end
  %11 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev1, align 8
  %sqp_demux188 = getelementptr inbounds %struct.mlx4_dev, ptr %12, i32 0, i32 3, i32 81
  %13 = ptrtoint ptr %sqp_demux188 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %sqp_demux188, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %cmp190.not = icmp eq i16 %14, 0
  br i1 %cmp190.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %node_guid = getelementptr inbounds %struct.ib_device, ptr %dev, i32 0, i32 17
  br label %for.body

do.end13:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %15 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %parent, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %16, ptr noundef nonnull @.str.26) #14
  br label %cleanup102

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %17 = phi ptr [ %12, %for.body.lr.ph ], [ %23, %for.inc.for.body_crit_edge ]
  %i.0191 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %function.i = getelementptr inbounds %struct.mlx4_dev, ptr %17, i32 0, i32 3, i32 1
  %18 = ptrtoint ptr %function.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %function.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0191, i32 %19)
  %cmp21 = icmp eq i32 %i.0191, %19
  br i1 %cmp21, label %if.then23, label %if.else

if.then23:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %20 = ptrtoint ptr %node_guid to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %node_guid, align 8
  br label %for.inc

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = tail call i32 @prandom_u32() #11
  %conv.i = zext i32 %call.i to i64
  %or.i = or i64 %conv.i, 5634997092352000
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then23
  %.sink = phi i64 [ %21, %if.then23 ], [ %or.i, %if.else ]
  tail call void @mlx4_put_slave_node_guid(ptr noundef %17, i32 noundef %i.0191, i64 noundef %.sink) #11
  %inc = add nuw nsw i32 %i.0191, 1
  %22 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev1, align 8
  %sqp_demux = getelementptr inbounds %struct.mlx4_dev, ptr %23, i32 0, i32 3, i32 81
  %24 = ptrtoint ptr %sqp_demux to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %sqp_demux, align 4
  %conv = zext i16 %25 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %call29 = tail call i32 @mlx4_ib_init_alias_guid_service(ptr noundef %dev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end37, label %do.end34

do.end34:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %26 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %parent, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %27, ptr noundef nonnull @.str.29) #14
  br label %paravirt_err

if.end37:                                         ; preds = %for.end
  %call38 = tail call i32 @mlx4_ib_device_register_sysfs(ptr noundef %dev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  %28 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %parent, align 8
  br i1 %tobool39.not, label %do.end49, label %do.end43

do.end43:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %29, ptr noundef nonnull @.str.32) #14
  br label %sysfs_err

do.end49:                                         ; preds = %if.end37
  %30 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev1, align 8
  %sqp_demux54 = getelementptr inbounds %struct.mlx4_dev, ptr %31, i32 0, i32 3, i32 81
  %32 = ptrtoint ptr %sqp_demux54 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %sqp_demux54, align 4
  %conv55 = zext i16 %33 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %29, ptr noundef nonnull @.str.35, i32 noundef %conv55) #14
  %num_ports = getelementptr inbounds %struct.mlx4_ib_dev, ptr %dev, i32 0, i32 2
  %34 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %num_ports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp57193 = icmp sgt i32 %35, 0
  br i1 %cmp57193, label %for.body59.lr.ph, label %do.end49.for.end90_crit_edge

do.end49.for.end90_crit_edge:                     ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end90

for.body59.lr.ph:                                 ; preds = %do.end49
  %36 = getelementptr inbounds %struct.anon.162, ptr %gid, i32 0, i32 1
  br label %for.body59

for.body59:                                       ; preds = %cleanup.for.body59_crit_edge, %for.body59.lr.ph
  %i.1194 = phi i32 [ 0, %for.body59.lr.ph ], [ %add, %cleanup.for.body59_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %gid) #11
  %add = add nuw nsw i32 %i.1194, 1
  %37 = call ptr @memset(ptr %gid, i32 255, i32 16)
  %call61 = call i32 @__mlx4_ib_query_gid(ptr noundef %dev, i32 noundef %add, i32 noundef 0, ptr noundef nonnull %gid, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.end64, label %for.body59.cleanup.thread_crit_edge

for.body59.cleanup.thread_crit_edge:              ; preds = %for.body59
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread

if.end64:                                         ; preds = %for.body59
  %38 = ptrtoint ptr %36 to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %36, align 8
  %guid_cache = getelementptr [2 x %struct.mlx4_ib_demux_ctx], ptr %sriov, i32 0, i32 %i.1194, i32 7
  %40 = ptrtoint ptr %guid_cache to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %39, ptr %guid_cache, align 8
  %subnet_prefix = getelementptr [2 x %struct.mlx4_ib_demux_ctx], ptr %sriov, i32 0, i32 %i.1194, i32 6
  %41 = ptrtoint ptr %gid to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %gid, align 8
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %subnet_prefix, i32 noundef 8) #11
  call void @generic_atomic64_set(ptr noundef %subnet_prefix, i64 noundef %42) #11
  %43 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev1, align 8
  %function.i163 = getelementptr inbounds %struct.mlx4_dev, ptr %44, i32 0, i32 3, i32 1
  %45 = ptrtoint ptr %function.i163 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %function.i163, align 8
  %arrayidx75 = getelementptr %struct.mlx4_ib_dev, ptr %dev, i32 0, i32 11, i32 1, i32 %i.1194
  %47 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr null, ptr %arrayidx75, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %48 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %48, i32 noundef 3520, i32 noundef 216) #15
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end64.cleanup.thread_crit_edge, label %if.end79

if.end64.cleanup.thread_crit_edge:                ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread

if.end79:                                         ; preds = %if.end64
  %ib_dev1.i = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, ptr %call7.i.i.i, i32 0, i32 4
  %49 = ptrtoint ptr %ib_dev1.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %dev, ptr %ib_dev1.i, align 8
  %50 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %add, ptr %call7.i.i.i, align 8
  %slave3.i = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, ptr %call7.i.i.i, i32 0, i32 1
  %51 = ptrtoint ptr %slave3.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %46, ptr %slave3.i, align 4
  %52 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call7.i.i.i, ptr %arrayidx75, align 4
  %arrayidx = getelementptr [2 x %struct.mlx4_ib_demux_ctx], ptr %sriov, i32 0, i32 %i.1194
  %call84 = call fastcc i32 @mlx4_ib_alloc_demux_ctx(ptr noundef %dev, ptr noundef %arrayidx, i32 noundef %add)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %tobool85.not = icmp eq i32 %call84, 0
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %gid) #11
  br i1 %tobool85.not, label %cleanup, label %free_pv

cleanup.thread:                                   ; preds = %if.end64.cleanup.thread_crit_edge, %for.body59.cleanup.thread_crit_edge
  %err.0.ph = phi i32 [ -12, %if.end64.cleanup.thread_crit_edge ], [ %call61, %for.body59.cleanup.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %gid) #11
  br label %demux_err

cleanup:                                          ; preds = %if.end79
  %53 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %num_ports, align 4
  %cmp57 = icmp slt i32 %add, %54
  br i1 %cmp57, label %cleanup.for.body59_crit_edge, label %cleanup.for.end90_crit_edge

cleanup.for.end90_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end90

cleanup.for.body59_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body59

for.end90:                                        ; preds = %cleanup.for.end90_crit_edge, %do.end49.for.end90_crit_edge
  call fastcc void @mlx4_ib_master_tunnels(ptr noundef %dev)
  br label %cleanup102

free_pv:                                          ; preds = %if.end79
  %55 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev1, align 8
  %function.i164 = getelementptr inbounds %struct.mlx4_dev, ptr %56, i32 0, i32 3, i32 1
  %57 = ptrtoint ptr %function.i164 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %function.i164, align 8
  %tun.i = getelementptr [2 x %struct.mlx4_ib_demux_ctx], ptr %sriov, i32 0, i32 %i.1194, i32 13
  %59 = ptrtoint ptr %tun.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %tun.i, align 8
  %arrayidx1.i = getelementptr ptr, ptr %60, i32 %58
  %61 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %arrayidx1.i, align 4
  %tobool.not.i165 = icmp eq ptr %62, null
  br i1 %tobool.not.i165, label %free_pv.demux_err_crit_edge, label %if.then.i

free_pv.demux_err_crit_edge:                      ; preds = %free_pv
  call void @__sanitizer_cov_trace_pc() #13
  br label %demux_err

if.then.i:                                        ; preds = %free_pv
  call void @__sanitizer_cov_trace_pc() #13
  call void @kfree(ptr noundef nonnull %62) #11
  %63 = ptrtoint ptr %tun.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %tun.i, align 8
  %arrayidx13.i = getelementptr ptr, ptr %64, i32 %58
  %65 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr null, ptr %arrayidx13.i, align 4
  br label %demux_err

demux_err:                                        ; preds = %if.then.i, %free_pv.demux_err_crit_edge, %cleanup.thread
  %err.0180 = phi i32 [ %err.0.ph, %cleanup.thread ], [ %call84, %free_pv.demux_err_crit_edge ], [ %call84, %if.then.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.1194)
  %cmp94196.not = icmp eq i32 %i.1194, 0
  br i1 %cmp94196.not, label %demux_err.while.end_crit_edge, label %demux_err.while.body_crit_edge

demux_err.while.body_crit_edge:                   ; preds = %demux_err
  br label %while.body

demux_err.while.end_crit_edge:                    ; preds = %demux_err
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body:                                       ; preds = %free_pv_object.exit175.while.body_crit_edge, %demux_err.while.body_crit_edge
  %dec197.in = phi i32 [ %dec197, %free_pv_object.exit175.while.body_crit_edge ], [ %i.1194, %demux_err.while.body_crit_edge ]
  %dec197 = add nsw i32 %dec197.in, -1
  %66 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev1, align 8
  %function.i167 = getelementptr inbounds %struct.mlx4_dev, ptr %67, i32 0, i32 3, i32 1
  %68 = ptrtoint ptr %function.i167 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %function.i167, align 8
  %tun.i169 = getelementptr [2 x %struct.mlx4_ib_demux_ctx], ptr %sriov, i32 0, i32 %dec197, i32 13
  %70 = ptrtoint ptr %tun.i169 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %tun.i169, align 8
  %arrayidx1.i170 = getelementptr ptr, ptr %71, i32 %69
  %72 = ptrtoint ptr %arrayidx1.i170 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %arrayidx1.i170, align 4
  %tobool.not.i171 = icmp eq ptr %73, null
  br i1 %tobool.not.i171, label %while.body.free_pv_object.exit175_crit_edge, label %if.then.i173

while.body.free_pv_object.exit175_crit_edge:      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %free_pv_object.exit175

if.then.i173:                                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  call void @kfree(ptr noundef nonnull %73) #11
  %74 = ptrtoint ptr %tun.i169 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %tun.i169, align 8
  %arrayidx13.i172 = getelementptr ptr, ptr %75, i32 %69
  %76 = ptrtoint ptr %arrayidx13.i172 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr null, ptr %arrayidx13.i172, align 4
  br label %free_pv_object.exit175

free_pv_object.exit175:                           ; preds = %if.then.i173, %while.body.free_pv_object.exit175_crit_edge
  %arrayidx101 = getelementptr [2 x %struct.mlx4_ib_demux_ctx], ptr %sriov, i32 0, i32 %dec197
  call fastcc void @mlx4_ib_free_demux_ctx(ptr noundef %arrayidx101)
  %cmp94 = icmp sgt i32 %dec197.in, 1
  br i1 %cmp94, label %free_pv_object.exit175.while.body_crit_edge, label %free_pv_object.exit175.while.end_crit_edge

free_pv_object.exit175.while.end_crit_edge:       ; preds = %free_pv_object.exit175
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

free_pv_object.exit175.while.body_crit_edge:      ; preds = %free_pv_object.exit175
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.end:                                        ; preds = %free_pv_object.exit175.while.end_crit_edge, %demux_err.while.end_crit_edge
  call void @mlx4_ib_device_unregister_sysfs(ptr noundef %dev) #11
  br label %sysfs_err

sysfs_err:                                        ; preds = %while.end, %do.end43
  %err.1 = phi i32 [ %call38, %do.end43 ], [ %err.0180, %while.end ]
  call void @mlx4_ib_destroy_alias_guid_service(ptr noundef %dev) #11
  br label %paravirt_err

paravirt_err:                                     ; preds = %sysfs_err, %do.end34
  %err.2 = phi i32 [ %call29, %do.end34 ], [ %err.1, %sysfs_err ]
  call void @mlx4_ib_cm_paravirt_clean(ptr noundef %dev, i32 noundef -1) #11
  br label %cleanup102

cleanup102:                                       ; preds = %paravirt_err, %for.end90, %do.end13, %entry.cleanup102_crit_edge
  %retval.0 = phi i32 [ 0, %do.end13 ], [ %err.2, %paravirt_err ], [ 0, %for.end90 ], [ 0, %entry.cleanup102_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx4_ib_cm_paravirt_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx4_put_slave_node_guid(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_ib_init_alias_guid_service(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_ib_device_register_sysfs(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlx4_ib_alloc_demux_ctx(ptr noundef %dev, ptr noundef %ctx, i32 noundef %port) unnamed_addr #0 align 64 {
entry:
  %name = alloca [12 x i8], align 1
  %actv_ports.sroa.0 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %name) #11
  %dev1 = getelementptr inbounds %struct.mlx4_ib_dev, ptr %dev, i32 0, i32 1
  %0 = call ptr @memset(ptr %name, i32 255, i32 12)
  %1 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev1, align 8
  %sqp_demux = getelementptr inbounds %struct.mlx4_dev, ptr %2, i32 0, i32 3, i32 81
  %3 = ptrtoint ptr %sqp_demux to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %sqp_demux, align 4
  %conv = zext i16 %4 to i32
  %5 = shl nuw nsw i32 %conv, 2
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %5, i32 noundef 3520) #16
  %tun = getelementptr inbounds %struct.mlx4_ib_demux_ctx, ptr %ctx, i32 0, i32 13
  %6 = ptrtoint ptr %tun to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call8.i.i, ptr %tun, align 8
  %tobool.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool.not, label %entry.cleanup91_crit_edge, label %if.end

entry.cleanup91_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup91

if.end:                                           ; preds = %entry
  %dev3 = getelementptr inbounds %struct.mlx4_ib_demux_ctx, ptr %ctx, i32 0, i32 8
  %7 = ptrtoint ptr %dev3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %dev, ptr %dev3, align 8
  %port4 = getelementptr inbounds %struct.mlx4_ib_demux_ctx, ptr %ctx, i32 0, i32 1
  %8 = ptrtoint ptr %port4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %port, ptr %port4, align 4
  %9 = ptrtoint ptr %ctx to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %dev, ptr %ctx, align 8
  %10 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev1, align 8
  %sqp_demux8162 = getelementptr inbounds %struct.mlx4_dev, ptr %11, i32 0, i32 3, i32 81
  %12 = ptrtoint ptr %sqp_demux8162 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %sqp_demux8162, align 4
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %11, align 8
  %num_vfs163 = getelementptr inbounds %struct.mlx4_dev_persistent, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %num_vfs163 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_vfs163, align 4
  %conv10164 = add i32 %17, 1
  %conv11165 = zext i16 %13 to i32
  %conv12166 = and i32 %conv10164, 65535
  %18 = tail call i32 @llvm.umin.i32(i32 %conv12166, i32 %conv11165)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp16167.not = icmp eq i32 %18, 0
  br i1 %cmp16167.not, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %sub = add i32 %port, 31
  %and.i = and i32 %sub, 31
  %19 = shl nuw i32 1, %and.i
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %20 = phi ptr [ %11, %for.body.lr.ph ], [ %32, %for.inc.for.body_crit_edge ]
  %i.0168 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %actv_ports.sroa.0)
  %call19 = tail call i32 @mlx4_get_active_ports(ptr noundef %20, i32 noundef %i.0168) #11
  %21 = ptrtoint ptr %actv_ports.sroa.0 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %call19, ptr %actv_ports.sroa.0, align 4
  %actv_ports.sroa.0.0.actv_ports.sroa.0.0. = load volatile i32, ptr %actv_ports.sroa.0, align 4
  %22 = and i32 %actv_ports.sroa.0.0.actv_ports.sroa.0.0., %19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool21.not = icmp eq i32 %22, 0
  br i1 %tobool21.not, label %for.body.for.inc_crit_edge, label %if.end23

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end23:                                         ; preds = %for.body
  %23 = ptrtoint ptr %tun to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %tun, align 8
  %arrayidx = getelementptr ptr, ptr %24, i32 %i.0168
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %arrayidx, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %26 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i143 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %26, i32 noundef 3520, i32 noundef 216) #15
  %tobool.not.i = icmp eq ptr %call7.i.i.i143, null
  br i1 %tobool.not.i, label %cleanup, label %select.unfold

select.unfold:                                    ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  %ib_dev1.i = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, ptr %call7.i.i.i143, i32 0, i32 4
  %27 = ptrtoint ptr %ib_dev1.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %dev, ptr %ib_dev1.i, align 8
  %28 = ptrtoint ptr %call7.i.i.i143 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %port, ptr %call7.i.i.i143, align 8
  %slave3.i = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, ptr %call7.i.i.i143, i32 0, i32 1
  %29 = ptrtoint ptr %slave3.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %i.0168, ptr %slave3.i, align 4
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call7.i.i.i143, ptr %arrayidx, align 4
  br label %for.inc

cleanup:                                          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actv_ports.sroa.0)
  br label %err_mcg

for.inc:                                          ; preds = %select.unfold, %for.body.for.inc_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actv_ports.sroa.0)
  %inc = add nuw nsw i32 %i.0168, 1
  %31 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev1, align 8
  %sqp_demux8 = getelementptr inbounds %struct.mlx4_dev, ptr %32, i32 0, i32 3, i32 81
  %33 = ptrtoint ptr %sqp_demux8 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %sqp_demux8, align 4
  %35 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %32, align 8
  %num_vfs = getelementptr inbounds %struct.mlx4_dev_persistent, ptr %36, i32 0, i32 3
  %37 = ptrtoint ptr %num_vfs to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %num_vfs, align 4
  %conv10 = add i32 %38, 1
  %conv11 = zext i16 %34 to i32
  %conv12 = and i32 %conv10, 65535
  %39 = tail call i32 @llvm.umin.i32(i32 %conv12, i32 %conv11)
  %cmp16 = icmp ult i32 %inc, %39
  br i1 %cmp16, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  %call29 = tail call i32 @mlx4_ib_mcg_port_init(ptr noundef %ctx) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end34, label %do.end

do.end:                                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.139, ptr noundef nonnull @.str.140, i32 noundef %call29) #14
  br label %err_mcg

if.end34:                                         ; preds = %for.end
  %call36 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name, i32 noundef 12, ptr noundef nonnull @.str.141, i32 noundef %port)
  %call38 = call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull %name, i32 noundef 655370, i32 noundef 1) #11
  %wq = getelementptr inbounds %struct.mlx4_ib_demux_ctx, ptr %ctx, i32 0, i32 2
  %40 = ptrtoint ptr %wq to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call38, ptr %wq, align 8
  %tobool40.not = icmp eq ptr %call38, null
  br i1 %tobool40.not, label %do.end44, label %if.end47

do.end44:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #13
  %call46 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.143, ptr noundef nonnull @.str.140, i32 noundef %port) #14
  br label %err_wq

if.end47:                                         ; preds = %if.end34
  %call49 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name, i32 noundef 12, ptr noundef nonnull @.str.145, i32 noundef %port)
  %call51 = call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull %name, i32 noundef 655370, i32 noundef 1) #11
  %wi_wq = getelementptr inbounds %struct.mlx4_ib_demux_ctx, ptr %ctx, i32 0, i32 3
  %41 = ptrtoint ptr %wi_wq to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call51, ptr %wi_wq, align 4
  %tobool53.not = icmp eq ptr %call51, null
  br i1 %tobool53.not, label %do.end57, label %if.end60

do.end57:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #13
  %call59 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.147, ptr noundef nonnull @.str.140, i32 noundef %port) #14
  br label %err_wiwq

if.end60:                                         ; preds = %if.end47
  %call62 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name, i32 noundef 12, ptr noundef nonnull @.str.149, i32 noundef %port)
  %call64 = call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull %name, i32 noundef 655370, i32 noundef 1) #11
  %ud_wq = getelementptr inbounds %struct.mlx4_ib_demux_ctx, ptr %ctx, i32 0, i32 4
  %42 = ptrtoint ptr %ud_wq to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call64, ptr %ud_wq, align 8
  %tobool66.not = icmp eq ptr %call64, null
  br i1 %tobool66.not, label %do.end70, label %if.end60.cleanup91_crit_edge

if.end60.cleanup91_crit_edge:                     ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup91

do.end70:                                         ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #13
  %call72 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.151, ptr noundef nonnull @.str.140, i32 noundef %port) #14
  %43 = ptrtoint ptr %wi_wq to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %wi_wq, align 4
  call void @destroy_workqueue(ptr noundef %44) #11
  %45 = ptrtoint ptr %wi_wq to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %wi_wq, align 4
  br label %err_wiwq

err_wiwq:                                         ; preds = %do.end70, %do.end57
  %46 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %wq, align 8
  call void @destroy_workqueue(ptr noundef %47) #11
  %48 = ptrtoint ptr %wq to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr null, ptr %wq, align 8
  br label %err_wq

err_wq:                                           ; preds = %err_wiwq, %do.end44
  call void @mlx4_ib_mcg_port_cleanup(ptr noundef %ctx, i32 noundef 1) #11
  br label %err_mcg

err_mcg:                                          ; preds = %err_wq, %do.end, %cleanup
  %ret.4 = phi i32 [ -12, %cleanup ], [ %call29, %do.end ], [ -12, %err_wq ]
  %49 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev1, align 8
  %sqp_demux81170 = getelementptr inbounds %struct.mlx4_dev, ptr %50, i32 0, i32 3, i32 81
  %51 = ptrtoint ptr %sqp_demux81170 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %sqp_demux81170, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %52)
  %cmp83172.not = icmp eq i16 %52, 0
  br i1 %cmp83172.not, label %err_mcg.for.end88_crit_edge, label %for.body85.lr.ph

err_mcg.for.end88_crit_edge:                      ; preds = %err_mcg
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end88

for.body85.lr.ph:                                 ; preds = %err_mcg
  %sriov.i = getelementptr inbounds %struct.mlx4_ib_dev, ptr %dev, i32 0, i32 11
  %sub.i = add i32 %port, -1
  %tun.i = getelementptr [2 x %struct.mlx4_ib_demux_ctx], ptr %sriov.i, i32 0, i32 %sub.i, i32 13
  br label %for.body85

for.body85:                                       ; preds = %free_pv_object.exit.for.body85_crit_edge, %for.body85.lr.ph
  %i.1173 = phi i32 [ 0, %for.body85.lr.ph ], [ %inc87, %free_pv_object.exit.for.body85_crit_edge ]
  %53 = ptrtoint ptr %tun.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %tun.i, align 8
  %arrayidx1.i = getelementptr ptr, ptr %54, i32 %i.1173
  %55 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx1.i, align 4
  %tobool.not.i144 = icmp eq ptr %56, null
  br i1 %tobool.not.i144, label %for.body85.free_pv_object.exit_crit_edge, label %if.then.i

for.body85.free_pv_object.exit_crit_edge:         ; preds = %for.body85
  call void @__sanitizer_cov_trace_pc() #13
  br label %free_pv_object.exit

if.then.i:                                        ; preds = %for.body85
  call void @__sanitizer_cov_trace_pc() #13
  call void @kfree(ptr noundef nonnull %56) #11
  %57 = ptrtoint ptr %tun.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %tun.i, align 8
  %arrayidx13.i = getelementptr ptr, ptr %58, i32 %i.1173
  %59 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr null, ptr %arrayidx13.i, align 4
  br label %free_pv_object.exit

free_pv_object.exit:                              ; preds = %if.then.i, %for.body85.free_pv_object.exit_crit_edge
  %inc87 = add nuw nsw i32 %i.1173, 1
  %60 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev1, align 8
  %sqp_demux81 = getelementptr inbounds %struct.mlx4_dev, ptr %61, i32 0, i32 3, i32 81
  %62 = ptrtoint ptr %sqp_demux81 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %sqp_demux81, align 4
  %conv82 = zext i16 %63 to i32
  %cmp83 = icmp ult i32 %inc87, %conv82
  br i1 %cmp83, label %free_pv_object.exit.for.body85_crit_edge, label %free_pv_object.exit.for.end88_crit_edge

free_pv_object.exit.for.end88_crit_edge:          ; preds = %free_pv_object.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end88

free_pv_object.exit.for.body85_crit_edge:         ; preds = %free_pv_object.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body85

for.end88:                                        ; preds = %free_pv_object.exit.for.end88_crit_edge, %err_mcg.for.end88_crit_edge
  %64 = ptrtoint ptr %tun to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %tun, align 8
  call void @kfree(ptr noundef %65) #11
  %66 = ptrtoint ptr %tun to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr null, ptr %tun, align 8
  br label %cleanup91

cleanup91:                                        ; preds = %for.end88, %if.end60.cleanup91_crit_edge, %entry.cleanup91_crit_edge
  %retval.0 = phi i32 [ %ret.4, %for.end88 ], [ -12, %entry.cleanup91_crit_edge ], [ 0, %if.end60.cleanup91_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %name) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlx4_ib_master_tunnels(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.mlx4_ib_dev, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 8
  %flags.i = getelementptr inbounds %struct.mlx4_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %4 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1, align 8
  %num_ports1 = getelementptr inbounds %struct.mlx4_dev, ptr %5, i32 0, i32 3, i32 2
  %6 = ptrtoint ptr %num_ports1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_ports1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp2 = icmp sgt i32 %7, 0
  br i1 %cmp2, label %for.body.lr.ph, label %for.cond.preheader.cleanup_crit_edge

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %sriov.i = getelementptr inbounds %struct.mlx4_ib_dev, ptr %dev, i32 0, i32 11
  br label %for.body

for.body:                                         ; preds = %mlx4_ib_tunnels_update.exit.for.body_crit_edge, %for.body.lr.ph
  %8 = phi ptr [ %5, %for.body.lr.ph ], [ %22, %mlx4_ib_tunnels_update.exit.for.body_crit_edge ]
  %i.03 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %mlx4_ib_tunnels_update.exit.for.body_crit_edge ]
  %function.i = getelementptr inbounds %struct.mlx4_dev, ptr %8, i32 0, i32 3, i32 1
  %9 = ptrtoint ptr %function.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %function.i, align 8
  %add = add nuw nsw i32 %i.03, 1
  %tun16.i = getelementptr [2 x %struct.mlx4_ib_demux_ctx], ptr %sriov.i, i32 0, i32 %i.03, i32 13
  %11 = ptrtoint ptr %tun16.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tun16.i, align 8
  %arrayidx17.i = getelementptr ptr, ptr %12, i32 %10
  %13 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx17.i, align 4
  %call18.i = tail call fastcc i32 @create_pv_resources(ptr noundef %dev, i32 noundef %add, i32 noundef 1, ptr noundef %14) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %tobool19.not.i = icmp eq i32 %call18.i, 0
  br i1 %tobool19.not.i, label %land.lhs.true.i, label %for.body.mlx4_ib_tunnels_update.exit_crit_edge

for.body.mlx4_ib_tunnels_update.exit_crit_edge:   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlx4_ib_tunnels_update.exit

land.lhs.true.i:                                  ; preds = %for.body
  %15 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev1, align 8
  %function.i1.i = getelementptr inbounds %struct.mlx4_dev, ptr %16, i32 0, i32 3, i32 1
  %17 = ptrtoint ptr %function.i1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %function.i1.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %10)
  %cmp22.i = icmp eq i32 %18, %10
  br i1 %cmp22.i, label %if.then23.i, label %land.lhs.true.i.mlx4_ib_tunnels_update.exit_crit_edge

land.lhs.true.i.mlx4_ib_tunnels_update.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlx4_ib_tunnels_update.exit

if.then23.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx28.i = getelementptr %struct.mlx4_ib_dev, ptr %dev, i32 0, i32 11, i32 1, i32 %i.03
  %19 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx28.i, align 4
  %call29.i = tail call fastcc i32 @create_pv_resources(ptr noundef %dev, i32 noundef %add, i32 noundef 0, ptr noundef %20) #11
  br label %mlx4_ib_tunnels_update.exit

mlx4_ib_tunnels_update.exit:                      ; preds = %if.then23.i, %land.lhs.true.i.mlx4_ib_tunnels_update.exit_crit_edge, %for.body.mlx4_ib_tunnels_update.exit_crit_edge
  %21 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev1, align 8
  %num_ports = getelementptr inbounds %struct.mlx4_dev, ptr %22, i32 0, i32 3, i32 2
  %23 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %num_ports, align 4
  %cmp = icmp slt i32 %add, %24
  br i1 %cmp, label %mlx4_ib_tunnels_update.exit.for.body_crit_edge, label %mlx4_ib_tunnels_update.exit.cleanup_crit_edge

mlx4_ib_tunnels_update.exit.cleanup_crit_edge:    ; preds = %mlx4_ib_tunnels_update.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

mlx4_ib_tunnels_update.exit.for.body_crit_edge:   ; preds = %mlx4_ib_tunnels_update.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

cleanup:                                          ; preds = %mlx4_ib_tunnels_update.exit.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlx4_ib_free_demux_ctx(ptr noundef %ctx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ctx, null
  br i1 %tobool.not, label %entry.if.end31_crit_edge, label %if.then

entry.if.end31_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31

if.then:                                          ; preds = %entry
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 8
  tail call void @mlx4_ib_mcg_port_cleanup(ptr noundef nonnull %ctx, i32 noundef 1) #11
  %dev1 = getelementptr inbounds %struct.mlx4_ib_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 8
  %sqp_demux58 = getelementptr inbounds %struct.mlx4_dev, ptr %3, i32 0, i32 3, i32 81
  %4 = ptrtoint ptr %sqp_demux58 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %sqp_demux58, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %cmp60.not = icmp eq i16 %5, 0
  br i1 %cmp60.not, label %if.then.for.end_crit_edge, label %for.body.lr.ph

if.then.for.end_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.then
  %tun = getelementptr inbounds %struct.mlx4_ib_demux_ctx, ptr %ctx, i32 0, i32 13
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.061 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %6 = ptrtoint ptr %tun to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tun, align 8
  %arrayidx = getelementptr ptr, ptr %7, i32 %i.061
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %tobool3.not = icmp eq ptr %9, null
  br i1 %tobool3.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end:                                           ; preds = %for.body
  %state = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp7.not = icmp eq i32 %11, 0
  br i1 %cmp7.not, label %if.end.for.inc_crit_edge, label %if.then9

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 3, ptr %state, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then9, %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.061, 1
  %13 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev1, align 8
  %sqp_demux = getelementptr inbounds %struct.mlx4_dev, ptr %14, i32 0, i32 3, i32 81
  %15 = ptrtoint ptr %sqp_demux to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %sqp_demux, align 4
  %conv = zext i16 %16 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then.for.end_crit_edge
  %wq = getelementptr inbounds %struct.mlx4_ib_demux_ctx, ptr %ctx, i32 0, i32 2
  %17 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %wq, align 8
  tail call void @flush_workqueue(ptr noundef %18) #11
  %wi_wq = getelementptr inbounds %struct.mlx4_ib_demux_ctx, ptr %ctx, i32 0, i32 3
  %19 = ptrtoint ptr %wi_wq to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %wi_wq, align 4
  tail call void @flush_workqueue(ptr noundef %20) #11
  %21 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev1, align 8
  %sqp_demux1762 = getelementptr inbounds %struct.mlx4_dev, ptr %22, i32 0, i32 3, i32 81
  %23 = ptrtoint ptr %sqp_demux1762 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %sqp_demux1762, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %cmp1964.not = icmp eq i16 %24, 0
  br i1 %cmp1964.not, label %for.end.for.end27_crit_edge, label %for.body21.lr.ph

for.end.for.end27_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end27

for.body21.lr.ph:                                 ; preds = %for.end
  %port = getelementptr inbounds %struct.mlx4_ib_demux_ctx, ptr %ctx, i32 0, i32 1
  %tun22 = getelementptr inbounds %struct.mlx4_ib_demux_ctx, ptr %ctx, i32 0, i32 13
  %sriov.i = getelementptr inbounds %struct.mlx4_ib_dev, ptr %1, i32 0, i32 11
  br label %for.body21

for.body21:                                       ; preds = %free_pv_object.exit.for.body21_crit_edge, %for.body21.lr.ph
  %i.165 = phi i32 [ 0, %for.body21.lr.ph ], [ %inc26, %free_pv_object.exit.for.body21_crit_edge ]
  %25 = ptrtoint ptr %tun22 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %tun22, align 8
  %arrayidx23 = getelementptr ptr, ptr %26, i32 %i.165
  %27 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx23, align 4
  tail call fastcc void @destroy_pv_resources(ptr noundef %28, i32 noundef 0)
  %29 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %port, align 4
  %sub.i = add i32 %30, -1
  %tun.i = getelementptr [2 x %struct.mlx4_ib_demux_ctx], ptr %sriov.i, i32 0, i32 %sub.i, i32 13
  %31 = ptrtoint ptr %tun.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %tun.i, align 8
  %arrayidx1.i = getelementptr ptr, ptr %32, i32 %i.165
  %33 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx1.i, align 4
  %tobool.not.i = icmp eq ptr %34, null
  br i1 %tobool.not.i, label %for.body21.free_pv_object.exit_crit_edge, label %if.then.i

for.body21.free_pv_object.exit_crit_edge:         ; preds = %for.body21
  call void @__sanitizer_cov_trace_pc() #13
  br label %free_pv_object.exit

if.then.i:                                        ; preds = %for.body21
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef nonnull %34) #11
  %35 = ptrtoint ptr %tun.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %tun.i, align 8
  %arrayidx13.i = getelementptr ptr, ptr %36, i32 %i.165
  %37 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %arrayidx13.i, align 4
  br label %free_pv_object.exit

free_pv_object.exit:                              ; preds = %if.then.i, %for.body21.free_pv_object.exit_crit_edge
  %inc26 = add nuw nsw i32 %i.165, 1
  %38 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev1, align 8
  %sqp_demux17 = getelementptr inbounds %struct.mlx4_dev, ptr %39, i32 0, i32 3, i32 81
  %40 = ptrtoint ptr %sqp_demux17 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %sqp_demux17, align 4
  %conv18 = zext i16 %41 to i32
  %cmp19 = icmp ult i32 %inc26, %conv18
  br i1 %cmp19, label %free_pv_object.exit.for.body21_crit_edge, label %free_pv_object.exit.for.end27_crit_edge

free_pv_object.exit.for.end27_crit_edge:          ; preds = %free_pv_object.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end27

free_pv_object.exit.for.body21_crit_edge:         ; preds = %free_pv_object.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body21

for.end27:                                        ; preds = %free_pv_object.exit.for.end27_crit_edge, %for.end.for.end27_crit_edge
  %tun28 = getelementptr inbounds %struct.mlx4_ib_demux_ctx, ptr %ctx, i32 0, i32 13
  %42 = ptrtoint ptr %tun28 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %tun28, align 8
  tail call void @kfree(ptr noundef %43) #11
  %ud_wq = getelementptr inbounds %struct.mlx4_ib_demux_ctx, ptr %ctx, i32 0, i32 4
  %44 = ptrtoint ptr %ud_wq to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ud_wq, align 8
  tail call void @destroy_workqueue(ptr noundef %45) #11
  %46 = ptrtoint ptr %wi_wq to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %wi_wq, align 4
  tail call void @destroy_workqueue(ptr noundef %47) #11
  %48 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %wq, align 8
  tail call void @destroy_workqueue(ptr noundef %49) #11
  br label %if.end31

if.end31:                                         ; preds = %for.end27, %entry.if.end31_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx4_ib_device_unregister_sysfs(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx4_ib_destroy_alias_guid_service(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx4_ib_cm_paravirt_clean(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx4_ib_close_sriov(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.mlx4_ib_dev, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 8
  %flags.i = getelementptr inbounds %struct.mlx4_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %3, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body2

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body2:                                         ; preds = %entry
  %sriov = getelementptr inbounds %struct.mlx4_ib_dev, ptr %dev, i32 0, i32 11
  %going_down_lock = getelementptr inbounds %struct.mlx4_ib_dev, ptr %dev, i32 0, i32 11, i32 2
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %going_down_lock) #11
  %is_going_down = getelementptr inbounds %struct.mlx4_ib_dev, ptr %dev, i32 0, i32 11, i32 3
  %4 = ptrtoint ptr %is_going_down to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %is_going_down, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %going_down_lock, i32 noundef %call4) #11
  %5 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev1, align 8
  %flags.i49 = getelementptr inbounds %struct.mlx4_dev, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %flags.i49 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags.i49, align 4
  %and.i50 = and i32 %8, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i50)
  %tobool12.not = icmp eq i32 %and.i50, 0
  br i1 %tobool12.not, label %do.body2.cleanup_crit_edge, label %for.cond.preheader

do.body2.cleanup_crit_edge:                       ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.preheader:                               ; preds = %do.body2
  %num_ports = getelementptr inbounds %struct.mlx4_ib_dev, ptr %dev, i32 0, i32 2
  %9 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_ports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp1451 = icmp sgt i32 %10, 0
  br i1 %cmp1451, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %mlx4_ib_free_sqp_ctx.exit.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.052 = phi i32 [ %inc, %mlx4_ib_free_sqp_ctx.exit.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr [2 x %struct.mlx4_ib_demux_ctx], ptr %sriov, i32 0, i32 %i.052
  %ud_wq = getelementptr [2 x %struct.mlx4_ib_demux_ctx], ptr %sriov, i32 0, i32 %i.052, i32 4
  %11 = ptrtoint ptr %ud_wq to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ud_wq, align 8
  tail call void @flush_workqueue(ptr noundef %12) #11
  %arrayidx18 = getelementptr %struct.mlx4_ib_dev, ptr %dev, i32 0, i32 11, i32 1, i32 %i.052
  %13 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx18, align 4
  %state.i = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp.not.i = icmp eq i32 %16, 0
  br i1 %cmp.not.i, label %for.body.mlx4_ib_free_sqp_ctx.exit_crit_edge, label %if.then.i

for.body.mlx4_ib_free_sqp_ctx.exit_crit_edge:     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlx4_ib_free_sqp_ctx.exit

if.then.i:                                        ; preds = %for.body
  %17 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 3, ptr %state.i, align 4
  %wq.i = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, ptr %14, i32 0, i32 8
  %18 = ptrtoint ptr %wq.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %wq.i, align 4
  tail call void @flush_workqueue(ptr noundef %19) #11
  %has_smi.i = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, ptr %14, i32 0, i32 3
  %20 = ptrtoint ptr %has_smi.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %has_smi.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i = icmp eq i32 %21, 0
  br i1 %tobool.not.i, label %if.then.i.if.end.i_crit_edge, label %if.then2.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then2.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %qp.i = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, ptr %14, i32 0, i32 10
  %22 = ptrtoint ptr %qp.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %qp.i, align 4
  %call.i.i = tail call i32 @ib_destroy_qp_user(ptr noundef %23, ptr noundef null) #11
  %24 = ptrtoint ptr %qp.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %qp.i, align 4
  tail call fastcc void @mlx4_ib_free_pv_qp_bufs(ptr noundef %14, i32 noundef 0, i32 noundef 0) #11
  br label %if.end.i

if.end.i:                                         ; preds = %if.then2.i, %if.then.i.if.end.i_crit_edge
  %arrayidx8.i = getelementptr %struct.mlx4_ib_demux_pv_ctx, ptr %14, i32 0, i32 10, i32 1
  %25 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx8.i, align 4
  %call.i32.i = tail call i32 @ib_destroy_qp_user(ptr noundef %26, ptr noundef null) #11
  %27 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %arrayidx8.i, align 4
  tail call fastcc void @mlx4_ib_free_pv_qp_bufs(ptr noundef %14, i32 noundef 1, i32 noundef 0) #11
  %pd.i = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, ptr %14, i32 0, i32 6
  %28 = ptrtoint ptr %pd.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pd.i, align 4
  %call.i33.i = tail call i32 @ib_dealloc_pd_user(ptr noundef %29, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i33.i)
  %tobool.not.i.i = icmp eq i32 %call.i33.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.ib_dealloc_pd.exit.i_crit_edge, label %land.rhs.i.i

if.end.i.ib_dealloc_pd.exit.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ib_dealloc_pd.exit.i

land.rhs.i.i:                                     ; preds = %if.end.i
  %.b38.i.i = load i1, ptr @ib_dealloc_pd.__already_done, align 1
  br i1 %.b38.i.i, label %land.rhs.i.i.ib_dealloc_pd.exit.i_crit_edge, label %if.then.i.i, !prof !279

land.rhs.i.i.ib_dealloc_pd.exit.i_crit_edge:      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ib_dealloc_pd.exit.i

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @ib_dealloc_pd.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.37, i32 noundef 3498, i32 noundef 9, ptr noundef nonnull @.str.49) #11
  br label %ib_dealloc_pd.exit.i

ib_dealloc_pd.exit.i:                             ; preds = %if.then.i.i, %land.rhs.i.i.ib_dealloc_pd.exit.i_crit_edge, %if.end.i.ib_dealloc_pd.exit.i_crit_edge
  %30 = ptrtoint ptr %pd.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %pd.i, align 4
  %cq.i = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, ptr %14, i32 0, i32 5
  %31 = ptrtoint ptr %cq.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %cq.i, align 4
  %call.i34.i = tail call i32 @ib_destroy_cq_user(ptr noundef %32, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i34.i)
  %tobool.not.i35.i = icmp eq i32 %call.i34.i, 0
  br i1 %tobool.not.i35.i, label %ib_dealloc_pd.exit.i.ib_destroy_cq.exit.i_crit_edge, label %land.rhs.i37.i

ib_dealloc_pd.exit.i.ib_destroy_cq.exit.i_crit_edge: ; preds = %ib_dealloc_pd.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ib_destroy_cq.exit.i

land.rhs.i37.i:                                   ; preds = %ib_dealloc_pd.exit.i
  %.b38.i36.i = load i1, ptr @ib_destroy_cq.__already_done, align 1
  br i1 %.b38.i36.i, label %land.rhs.i37.i.ib_destroy_cq.exit.i_crit_edge, label %if.then.i38.i, !prof !279

land.rhs.i37.i.ib_destroy_cq.exit.i_crit_edge:    ; preds = %land.rhs.i37.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ib_destroy_cq.exit.i

if.then.i38.i:                                    ; preds = %land.rhs.i37.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @ib_destroy_cq.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.37, i32 noundef 3936, i32 noundef 9, ptr noundef nonnull @.str.50) #11
  br label %ib_destroy_cq.exit.i

ib_destroy_cq.exit.i:                             ; preds = %if.then.i38.i, %land.rhs.i37.i.ib_destroy_cq.exit.i_crit_edge, %ib_dealloc_pd.exit.i.ib_destroy_cq.exit.i_crit_edge
  %33 = ptrtoint ptr %cq.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %cq.i, align 4
  %34 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %state.i, align 4
  br label %mlx4_ib_free_sqp_ctx.exit

mlx4_ib_free_sqp_ctx.exit:                        ; preds = %ib_destroy_cq.exit.i, %for.body.mlx4_ib_free_sqp_ctx.exit_crit_edge
  %35 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx18, align 4
  tail call void @kfree(ptr noundef %36) #11
  %37 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %arrayidx18, align 4
  tail call fastcc void @mlx4_ib_free_demux_ctx(ptr noundef %arrayidx)
  %inc = add nuw nsw i32 %i.052, 1
  %38 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %num_ports, align 4
  %cmp14 = icmp slt i32 %inc, %39
  br i1 %cmp14, label %mlx4_ib_free_sqp_ctx.exit.for.body_crit_edge, label %mlx4_ib_free_sqp_ctx.exit.for.end_crit_edge

mlx4_ib_free_sqp_ctx.exit.for.end_crit_edge:      ; preds = %mlx4_ib_free_sqp_ctx.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

mlx4_ib_free_sqp_ctx.exit.for.body_crit_edge:     ; preds = %mlx4_ib_free_sqp_ctx.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %mlx4_ib_free_sqp_ctx.exit.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  tail call void @mlx4_ib_cm_paravirt_clean(ptr noundef %dev, i32 noundef -1) #11
  tail call void @mlx4_ib_destroy_alias_guid_service(ptr noundef %dev) #11
  tail call void @mlx4_ib_device_unregister_sysfs(ptr noundef %dev) #11
  br label %cleanup

cleanup:                                          ; preds = %for.end, %do.body2.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_workqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mlx4_cmd(ptr noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i16 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_find_cached_pkey(ptr noundef, i32 noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_get_rdma_header_version(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_get_gids_from_rdma_hdr(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdma_destroy_ah_user(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_cpu(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_get_counter_stats(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_query_port(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @smp_snoop(ptr noundef %ibdev, i32 noundef %port_num, ptr noundef %mad, i16 noundef zeroext %prev_lid) unnamed_addr #0 align 64 {
entry:
  %event.i257 = alloca %struct.ib_event, align 4
  %event.i254 = alloca %struct.ib_event, align 4
  %event.i = alloca %struct.ib_event, align 4
  %sl2vl64 = alloca %union.sl2vl_tbl_to_u64, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mgmt_class = getelementptr inbounds %struct.ib_mad_hdr, ptr %mad, i32 0, i32 1
  %0 = ptrtoint ptr %mgmt_class to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %mgmt_class, align 1
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.160)
  switch i8 %1, label %entry.cleanup_crit_edge [
    i8 1, label %entry.land.lhs.true_crit_edge
    i8 -127, label %entry.land.lhs.true_crit_edge272
  ]

entry.land.lhs.true_crit_edge272:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true:                                    ; preds = %entry.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge272
  %method = getelementptr inbounds %struct.ib_mad_hdr, ptr %mad, i32 0, i32 3
  %3 = ptrtoint ptr %method to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %method, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %4)
  %cmp9 = icmp eq i8 %4, 2
  br i1 %cmp9, label %if.then, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then:                                          ; preds = %land.lhs.true
  %attr_id = getelementptr inbounds %struct.ib_mad_hdr, ptr %mad, i32 0, i32 7
  %5 = ptrtoint ptr %attr_id to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %attr_id, align 8
  %7 = zext i16 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.161)
  switch i16 %6, label %if.then.cleanup_crit_edge [
    i16 21, label %sw.bb
    i16 22, label %sw.bb30
    i16 20, label %sw.bb96
    i16 23, label %sw.bb121
  ]

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %if.then
  %dev13 = getelementptr inbounds %struct.mlx4_ib_dev, ptr %ibdev, i32 0, i32 1
  %8 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev13, align 8
  %flags = getelementptr inbounds %struct.mlx4_dev, ptr %9, i32 0, i32 3, i32 60
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %flags, align 8
  %and = and i64 %11, 576460752303423488
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %lid15 = getelementptr inbounds %struct.ib_smp, ptr %mad, i32 0, i32 15, i32 16
  %12 = ptrtoint ptr %lid15 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %lid15, align 8
  %sm_lid = getelementptr inbounds %struct.ib_smp, ptr %mad, i32 0, i32 15, i32 18
  %14 = ptrtoint ptr %sm_lid to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %sm_lid, align 2
  %neighbormtu_mastersmsl = getelementptr inbounds %struct.ib_smp, ptr %mad, i32 0, i32 15, i32 36
  %16 = ptrtoint ptr %neighbormtu_mastersmsl to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %neighbormtu_mastersmsl, align 4
  %18 = and i8 %17, 15
  tail call fastcc void @update_sm_ah(ptr noundef %ibdev, i32 noundef %port_num, i16 noundef zeroext %15, i8 noundef zeroext %18)
  %clientrereg_resv_subnetto = getelementptr inbounds %struct.ib_smp, ptr %mad, i32 0, i32 15, i32 51
  %19 = ptrtoint ptr %clientrereg_resv_subnetto to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %clientrereg_resv_subnetto, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %20)
  %tobool21.not = icmp sgt i8 %20, -1
  br i1 %tobool21.not, label %if.end.if.end23_crit_edge, label %if.then22

if.end.if.end23_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23

if.then22:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @handle_client_rereg_event(ptr noundef %ibdev, i32 noundef %port_num)
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %if.end.if.end23_crit_edge
  call void @__sanitizer_cov_trace_cmp2(i16 %13, i16 %prev_lid)
  %cmp26.not = icmp eq i16 %13, %prev_lid
  br i1 %cmp26.not, label %if.end23.cleanup_crit_edge, label %if.then28

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then28:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @handle_lid_change_event(ptr noundef %ibdev, i32 noundef %port_num)
  br label %cleanup

sw.bb30:                                          ; preds = %if.then
  %dev31 = getelementptr inbounds %struct.mlx4_ib_dev, ptr %ibdev, i32 0, i32 1
  %21 = ptrtoint ptr %dev31 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev31, align 8
  %flags33 = getelementptr inbounds %struct.mlx4_dev, ptr %22, i32 0, i32 3, i32 60
  %23 = ptrtoint ptr %flags33 to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %flags33, align 8
  %and34 = and i64 %24, 576460752303423488
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and34)
  %tobool35.not = icmp eq i64 %and34, 0
  br i1 %tobool35.not, label %if.end37, label %sw.bb30.cleanup_crit_edge

sw.bb30.cleanup_crit_edge:                        ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end37:                                         ; preds = %sw.bb30
  %flags.i = getelementptr inbounds %struct.mlx4_dev, ptr %22, i32 0, i32 1
  %25 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %26, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool40.not = icmp eq i32 %and.i, 0
  br i1 %tobool40.not, label %if.then41, label %if.end42

if.then41:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %event.i) #11
  %27 = getelementptr inbounds %struct.ib_event, ptr %event.i, i32 0, i32 1
  %28 = getelementptr inbounds %struct.ib_event, ptr %event.i, i32 0, i32 2
  %29 = ptrtoint ptr %event.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %ibdev, ptr %event.i, align 4
  %30 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %port_num, ptr %27, align 4
  %31 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 12, ptr %28, align 4
  call void @ib_dispatch_event(ptr noundef nonnull %event.i) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %event.i) #11
  br label %cleanup

if.end42:                                         ; preds = %if.end37
  %attr_mod = getelementptr inbounds %struct.ib_smp, ptr %mad, i32 0, i32 10
  %32 = ptrtoint ptr %attr_mod to i32
  call void @__asan_loadN_noabort(i32 %32, i32 4)
  %33 = load i32, ptr %attr_mod, align 1
  %and43 = and i32 %33, 65535
  %data44 = getelementptr inbounds %struct.ib_smp, ptr %mad, i32 0, i32 15
  %mul = shl nuw nsw i32 %and43, 5
  %sub = add i32 %port_num, -1
  br label %do.body

do.body:                                          ; preds = %for.inc.do.body_crit_edge, %if.end42
  %pkey_change_bitmap.0270 = phi i32 [ 0, %if.end42 ], [ %pkey_change_bitmap.1, %for.inc.do.body_crit_edge ]
  %i.0267 = phi i32 [ 0, %if.end42 ], [ %inc, %for.inc.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smp_snoop.__UNIQUE_ID_ddebug508, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smp_snoop, %if.then51)) #11
          to label %do.end [label %if.then51], !srcloc !281

if.then51:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %add = add nuw nsw i32 %i.0267, %mul
  %arrayidx52 = getelementptr i16, ptr %data44, i32 %i.0267
  %34 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %arrayidx52, align 2
  %conv53 = zext i16 %35 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @smp_snoop.__UNIQUE_ID_ddebug508, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.39, i32 noundef %add, i32 noundef %conv53) #11
  br label %do.end

do.end:                                           ; preds = %if.then51, %do.body
  %arrayidx55 = getelementptr i16, ptr %data44, i32 %i.0267
  %36 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %arrayidx55, align 2
  %add59 = add nuw nsw i32 %i.0267, %mul
  %arrayidx60 = getelementptr %struct.mlx4_ib_dev, ptr %ibdev, i32 0, i32 21, i32 1, i32 %sub, i32 %add59
  %38 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %arrayidx60, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %37, i16 %39)
  %cmp62.not = icmp eq i16 %37, %39
  br i1 %cmp62.not, label %do.end.for.inc_crit_edge, label %if.then64

do.end.for.inc_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then64:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %shl = shl nuw i32 1, %i.0267
  %or = or i32 %pkey_change_bitmap.0270, %shl
  %40 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %37, ptr %arrayidx60, align 2
  br label %for.inc

for.inc:                                          ; preds = %if.then64, %do.end.for.inc_crit_edge
  %pkey_change_bitmap.1 = phi i32 [ %or, %if.then64 ], [ %pkey_change_bitmap.0270, %do.end.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %i.0267, 1
  %exitcond271.not = icmp eq i32 %inc, 32
  br i1 %exitcond271.not, label %do.body74, label %for.inc.do.body_crit_edge

for.inc.do.body_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

do.body74:                                        ; preds = %for.inc
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smp_snoop.__UNIQUE_ID_ddebug509, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smp_snoop, %if.then86)) #11
          to label %do.end89 [label %if.then86], !srcloc !281

if.then86:                                        ; preds = %do.body74
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @smp_snoop.__UNIQUE_ID_ddebug509, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.39, i32 noundef %port_num, i32 noundef %and43, i32 noundef %pkey_change_bitmap.1) #11
  br label %do.end89

do.end89:                                         ; preds = %if.then86, %do.body74
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pkey_change_bitmap.1)
  %tobool90.not = icmp eq i32 %pkey_change_bitmap.1, 0
  br i1 %tobool90.not, label %do.end89.cleanup_crit_edge, label %if.then91

do.end89.cleanup_crit_edge:                       ; preds = %do.end89
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then91:                                        ; preds = %do.end89
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %event.i254) #11
  %41 = getelementptr inbounds %struct.ib_event, ptr %event.i254, i32 0, i32 1
  %42 = getelementptr inbounds %struct.ib_event, ptr %event.i254, i32 0, i32 2
  %43 = ptrtoint ptr %event.i254 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %ibdev, ptr %event.i254, align 4
  %44 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %port_num, ptr %41, align 4
  %45 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 12, ptr %42, align 4
  call void @ib_dispatch_event(ptr noundef nonnull %event.i254) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %event.i254) #11
  %is_going_down = getelementptr inbounds %struct.mlx4_ib_dev, ptr %ibdev, i32 0, i32 11, i32 3
  %46 = ptrtoint ptr %is_going_down to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %is_going_down, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool92.not = icmp eq i32 %47, 0
  br i1 %tobool92.not, label %if.then93, label %if.then91.cleanup_crit_edge

if.then91.cleanup_crit_edge:                      ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then93:                                        ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @__propagate_pkey_ev(ptr noundef %ibdev, i32 noundef %port_num, i32 noundef %and43, i32 noundef %pkey_change_bitmap.1)
  br label %cleanup

sw.bb96:                                          ; preds = %if.then
  %dev97 = getelementptr inbounds %struct.mlx4_ib_dev, ptr %ibdev, i32 0, i32 1
  %48 = ptrtoint ptr %dev97 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev97, align 8
  %flags99 = getelementptr inbounds %struct.mlx4_dev, ptr %49, i32 0, i32 3, i32 60
  %50 = ptrtoint ptr %flags99 to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %flags99, align 8
  %and100 = and i64 %51, 576460752303423488
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and100)
  %tobool101.not = icmp eq i64 %and100, 0
  br i1 %tobool101.not, label %if.end103, label %sw.bb96.cleanup_crit_edge

sw.bb96.cleanup_crit_edge:                        ; preds = %sw.bb96
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end103:                                        ; preds = %sw.bb96
  %flags.i255 = getelementptr inbounds %struct.mlx4_dev, ptr %49, i32 0, i32 1
  %52 = ptrtoint ptr %flags.i255 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %flags.i255, align 4
  %and.i256 = and i32 %53, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i256)
  %tobool106.not = icmp eq i32 %and.i256, 0
  br i1 %tobool106.not, label %if.then107, label %if.end103.if.end108_crit_edge

if.end103.if.end108_crit_edge:                    ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end108

if.then107:                                       ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %event.i257) #11
  %54 = getelementptr inbounds %struct.ib_event, ptr %event.i257, i32 0, i32 1
  %55 = getelementptr inbounds %struct.ib_event, ptr %event.i257, i32 0, i32 2
  %56 = ptrtoint ptr %event.i257 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %ibdev, ptr %event.i257, align 4
  %57 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %port_num, ptr %54, align 4
  %58 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 18, ptr %55, align 4
  call void @ib_dispatch_event(ptr noundef nonnull %event.i257) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %event.i257) #11
  br label %if.end108

if.end108:                                        ; preds = %if.then107, %if.end103.if.end108_crit_edge
  %59 = ptrtoint ptr %dev97 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev97, align 8
  %flags.i258 = getelementptr inbounds %struct.mlx4_dev, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %flags.i258 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %flags.i258, align 4
  %and.i259 = and i32 %62, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i259)
  %tobool111.not = icmp eq i32 %and.i259, 0
  br i1 %tobool111.not, label %if.end108.cleanup_crit_edge, label %land.lhs.true112

if.end108.cleanup_crit_edge:                      ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true112:                                 ; preds = %if.end108
  %is_going_down114 = getelementptr inbounds %struct.mlx4_ib_dev, ptr %ibdev, i32 0, i32 11, i32 3
  %63 = ptrtoint ptr %is_going_down114 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %is_going_down114, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool115.not = icmp eq i32 %64, 0
  br i1 %tobool115.not, label %if.then116, label %land.lhs.true112.cleanup_crit_edge

land.lhs.true112.cleanup_crit_edge:               ; preds = %land.lhs.true112
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then116:                                       ; preds = %land.lhs.true112
  call void @__sanitizer_cov_trace_pc() #13
  %attr_mod117 = getelementptr inbounds %struct.ib_smp, ptr %mad, i32 0, i32 10
  %65 = ptrtoint ptr %attr_mod117 to i32
  call void @__asan_loadN_noabort(i32 %65, i32 4)
  %66 = load i32, ptr %attr_mod117, align 1
  %data118 = getelementptr inbounds %struct.ib_smp, ptr %mad, i32 0, i32 15
  call void @mlx4_ib_update_cache_on_guid_change(ptr noundef %ibdev, i32 noundef %66, i32 noundef %port_num, ptr noundef %data118) #11
  call void @mlx4_ib_notify_slaves_on_guid_change(ptr noundef %ibdev, i32 noundef %66, i32 noundef %port_num, ptr noundef %data118) #11
  br label %cleanup

sw.bb121:                                         ; preds = %if.then
  %dev122 = getelementptr inbounds %struct.mlx4_ib_dev, ptr %ibdev, i32 0, i32 1
  %67 = ptrtoint ptr %dev122 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dev122, align 8
  %flags124 = getelementptr inbounds %struct.mlx4_dev, ptr %68, i32 0, i32 3, i32 60
  %69 = ptrtoint ptr %flags124 to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %flags124, align 8
  %and125 = and i64 %70, 576460752303423488
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and125)
  %tobool126.not = icmp eq i64 %and125, 0
  br i1 %tobool126.not, label %sw.bb121.if.end133_crit_edge, label %land.lhs.true127

sw.bb121.if.end133_crit_edge:                     ; preds = %sw.bb121
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end133

land.lhs.true127:                                 ; preds = %sw.bb121
  %flags2 = getelementptr inbounds %struct.mlx4_dev, ptr %68, i32 0, i32 3, i32 61
  %71 = ptrtoint ptr %flags2 to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %flags2, align 8
  %and130 = and i64 %72, 137438953472
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and130)
  %tobool131.not = icmp eq i64 %and130, 0
  br i1 %tobool131.not, label %land.lhs.true127.if.end133_crit_edge, label %land.lhs.true127.cleanup_crit_edge

land.lhs.true127.cleanup_crit_edge:               ; preds = %land.lhs.true127
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true127.if.end133_crit_edge:             ; preds = %land.lhs.true127
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end133

if.end133:                                        ; preds = %land.lhs.true127.if.end133_crit_edge, %sw.bb121.if.end133_crit_edge
  %flags.i260 = getelementptr inbounds %struct.mlx4_dev, ptr %68, i32 0, i32 1
  %73 = ptrtoint ptr %flags.i260 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %flags.i260, align 4
  %and.i261 = and i32 %74, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i261)
  %tobool136.not = icmp eq i32 %and.i261, 0
  br i1 %tobool136.not, label %if.then137, label %if.end133.cleanup_crit_edge

if.end133.cleanup_crit_edge:                      ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then137:                                       ; preds = %if.end133
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %sl2vl64) #11
  %75 = ptrtoint ptr %sl2vl64 to i32
  call void @__asan_store8_noabort(i32 %75)
  store i64 -1, ptr %sl2vl64, align 8, !annotation !280
  br label %for.body141

for.body141:                                      ; preds = %for.inc163.for.body141_crit_edge, %if.then137
  %jj.0265 = phi i32 [ 0, %if.then137 ], [ %inc164, %for.inc163.for.body141_crit_edge ]
  %arrayidx143 = getelementptr %struct.ib_smp, ptr %mad, i32 0, i32 15, i32 %jj.0265
  %76 = ptrtoint ptr %arrayidx143 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %arrayidx143, align 1
  %arrayidx144 = getelementptr [8 x i8], ptr %sl2vl64, i32 0, i32 %jj.0265
  %78 = ptrtoint ptr %arrayidx144 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %77, ptr %arrayidx144, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smp_snoop.__UNIQUE_ID_ddebug510, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smp_snoop, %if.then157)) #11
          to label %for.inc163 [label %if.then157], !srcloc !281

if.then157:                                       ; preds = %for.body141
  call void @__sanitizer_cov_trace_pc() #13
  %conv159 = zext i8 %77 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @smp_snoop.__UNIQUE_ID_ddebug510, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.39, i32 noundef %port_num, i32 noundef %jj.0265, i32 noundef %conv159) #11
  br label %for.inc163

for.inc163:                                       ; preds = %if.then157, %for.body141
  %inc164 = add nuw nsw i32 %jj.0265, 1
  %exitcond.not = icmp eq i32 %inc164, 8
  br i1 %exitcond.not, label %for.end165, label %for.inc163.for.body141_crit_edge

for.inc163.for.body141_crit_edge:                 ; preds = %for.inc163
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body141

for.end165:                                       ; preds = %for.inc163
  call void @__sanitizer_cov_trace_pc() #13
  %sub166 = add i32 %port_num, -1
  %arrayidx167 = getelementptr %struct.mlx4_ib_dev, ptr %ibdev, i32 0, i32 10, i32 %sub166
  %79 = ptrtoint ptr %sl2vl64 to i32
  call void @__asan_load8_noabort(i32 %79)
  %80 = load i64, ptr %sl2vl64, align 8
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx167, i32 noundef 8) #11
  tail call void @generic_atomic64_set(ptr noundef %arrayidx167, i64 noundef %80) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %sl2vl64) #11
  br label %cleanup

cleanup:                                          ; preds = %for.end165, %if.end133.cleanup_crit_edge, %land.lhs.true127.cleanup_crit_edge, %if.then116, %land.lhs.true112.cleanup_crit_edge, %if.end108.cleanup_crit_edge, %sw.bb96.cleanup_crit_edge, %if.then93, %if.then91.cleanup_crit_edge, %do.end89.cleanup_crit_edge, %if.then41, %sw.bb30.cleanup_crit_edge, %if.then28, %if.end23.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.then.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @node_desc_override(ptr noundef %dev, ptr nocapture noundef %mad) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mgmt_class = getelementptr inbounds %struct.ib_mad_hdr, ptr %mad, i32 0, i32 1
  %0 = ptrtoint ptr %mgmt_class to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %mgmt_class, align 1
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.162)
  switch i8 %1, label %entry.if.end_crit_edge [
    i8 1, label %entry.land.lhs.true_crit_edge
    i8 -127, label %entry.land.lhs.true_crit_edge32
  ]

entry.land.lhs.true_crit_edge32:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %entry.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge32
  %method = getelementptr inbounds %struct.ib_mad_hdr, ptr %mad, i32 0, i32 3
  %3 = ptrtoint ptr %method to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %method, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -127, i8 %4)
  %cmp9 = icmp eq i8 %4, -127
  br i1 %cmp9, label %land.lhs.true11, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true11:                                  ; preds = %land.lhs.true
  %attr_id = getelementptr inbounds %struct.ib_mad_hdr, ptr %mad, i32 0, i32 7
  %5 = ptrtoint ptr %attr_id to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %attr_id, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %6)
  %cmp14 = icmp eq i16 %6, 16
  br i1 %cmp14, label %do.body16, label %land.lhs.true11.if.end_crit_edge

land.lhs.true11.if.end_crit_edge:                 ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.body16:                                        ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #13
  %sm_lock = getelementptr inbounds %struct.mlx4_ib_dev, ptr %dev, i32 0, i32 9
  %call20 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %sm_lock) #11
  %data = getelementptr inbounds %struct.ib_smp, ptr %mad, i32 0, i32 15
  %node_desc = getelementptr inbounds %struct.ib_device, ptr %dev, i32 0, i32 16
  %7 = call ptr @memcpy(ptr %data, ptr %node_desc, i32 64)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %sm_lock, i32 noundef %call20) #11
  br label %if.end

if.end:                                           ; preds = %do.body16, %land.lhs.true11.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ib_create_send_mad(ptr noundef, i32 noundef, i16 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_post_send_mad(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_free_send_mad(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__propagate_pkey_ev(ptr nocapture noundef readonly %dev, i32 noundef %port_num, i32 noundef %block, i32 noundef %change_bitmap) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.mlx4_ib_dev, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 8
  %sqp_demux78 = getelementptr inbounds %struct.mlx4_dev, ptr %1, i32 0, i32 3, i32 81
  %2 = ptrtoint ptr %sqp_demux78 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %sqp_demux78, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp80.not = icmp eq i16 %3, 0
  br i1 %cmp80.not, label %entry.for.end48_crit_edge, label %for.body.lr.ph

entry.for.end48_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end48

for.body.lr.ph:                                   ; preds = %entry
  %pkeys = getelementptr inbounds %struct.mlx4_ib_dev, ptr %dev, i32 0, i32 21
  %sub = add i32 %port_num, -1
  %mul = shl i32 %block, 5
  %conv31 = trunc i32 %port_num to i8
  br label %for.body

for.body:                                         ; preds = %for.inc46.for.body_crit_edge, %for.body.lr.ph
  %4 = phi ptr [ %1, %for.body.lr.ph ], [ %14, %for.inc46.for.body_crit_edge ]
  %slave.081 = phi i32 [ 0, %for.body.lr.ph ], [ %inc47, %for.inc46.for.body_crit_edge ]
  %function.i = getelementptr inbounds %struct.mlx4_dev, ptr %4, i32 0, i32 3, i32 1
  %5 = ptrtoint ptr %function.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %function.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %slave.081, i32 %6)
  %cmp4 = icmp eq i32 %slave.081, %6
  br i1 %cmp4, label %for.body.for.inc46_crit_edge, label %if.end

for.body.for.inc46_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc46

if.end:                                           ; preds = %for.body
  %call7 = tail call i32 @mlx4_is_slave_active(ptr noundef %4, i32 noundef %slave.081) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %if.end.for.inc46_crit_edge, label %if.end.for.body13_crit_edge

if.end.for.body13_crit_edge:                      ; preds = %if.end
  br label %for.body13

if.end.for.inc46_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc46

for.body13:                                       ; preds = %for.inc43.for.body13_crit_edge, %if.end.for.body13_crit_edge
  %i.075 = phi i32 [ %inc44, %for.inc43.for.body13_crit_edge ], [ 0, %if.end.for.body13_crit_edge ]
  %shl = shl nuw i32 1, %i.075
  %and = and i32 %shl, %change_bitmap
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool14.not = icmp eq i32 %and, 0
  br i1 %tobool14.not, label %for.body13.for.inc43_crit_edge, label %for.cond17.preheader

for.body13.for.inc43_crit_edge:                   ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc43

for.cond17.preheader:                             ; preds = %for.body13
  %7 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev1, align 8
  %arrayidx = getelementptr %struct.mlx4_dev, ptr %8, i32 0, i32 3, i32 9, i32 %port_num
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp2073 = icmp sgt i32 %10, 0
  br i1 %cmp2073, label %for.body22.lr.ph, label %for.cond17.preheader.for.inc43_crit_edge

for.cond17.preheader.for.inc43_crit_edge:         ; preds = %for.cond17.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc43

for.body22.lr.ph:                                 ; preds = %for.cond17.preheader
  %add = add nuw nsw i32 %i.075, %mul
  br label %for.body22

for.body22:                                       ; preds = %for.inc.for.body22_crit_edge, %for.body22.lr.ph
  %ix.074 = phi i32 [ 0, %for.body22.lr.ph ], [ %inc, %for.inc.for.body22_crit_edge ]
  %arrayidx25 = getelementptr [128 x [2 x [128 x i8]]], ptr %pkeys, i32 0, i32 %slave.081, i32 %sub, i32 %ix.074
  %11 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx25, align 1
  %conv26 = zext i8 %12 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv26)
  %cmp27 = icmp eq i32 %add, %conv26
  br i1 %cmp27, label %if.then29, label %for.inc

if.then29:                                        ; preds = %for.body22
  call void @__sanitizer_cov_trace_pc() #13
  %call32 = tail call i32 @mlx4_gen_pkey_eqe(ptr noundef %8, i32 noundef %slave.081, i8 noundef zeroext %conv31) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__propagate_pkey_ev.__UNIQUE_ID_ddebug511, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__propagate_pkey_ev, %if.then37)) #11
          to label %for.inc46 [label %if.then37], !srcloc !281

if.then37:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__propagate_pkey_ev.__UNIQUE_ID_ddebug511, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.44, i32 noundef %slave.081, i32 noundef %port_num, i32 noundef %ix.074, i32 noundef %call32) #11
  br label %for.inc46

for.inc:                                          ; preds = %for.body22
  %inc = add nuw nsw i32 %ix.074, 1
  %exitcond.not = icmp eq i32 %inc, %10
  br i1 %exitcond.not, label %for.inc.for.inc43_crit_edge, label %for.inc.for.body22_crit_edge

for.inc.for.body22_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body22

for.inc.for.inc43_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc43

for.inc43:                                        ; preds = %for.inc.for.inc43_crit_edge, %for.cond17.preheader.for.inc43_crit_edge, %for.body13.for.inc43_crit_edge
  %inc44 = add nuw nsw i32 %i.075, 1
  %exitcond84.not = icmp eq i32 %inc44, 32
  br i1 %exitcond84.not, label %for.inc43.for.inc46_crit_edge, label %for.inc43.for.body13_crit_edge

for.inc43.for.body13_crit_edge:                   ; preds = %for.inc43
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body13

for.inc43.for.inc46_crit_edge:                    ; preds = %for.inc43
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc46

for.inc46:                                        ; preds = %for.inc43.for.inc46_crit_edge, %if.then37, %if.then29, %if.end.for.inc46_crit_edge, %for.body.for.inc46_crit_edge
  %inc47 = add nuw nsw i32 %slave.081, 1
  %13 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev1, align 8
  %sqp_demux = getelementptr inbounds %struct.mlx4_dev, ptr %14, i32 0, i32 3, i32 81
  %15 = ptrtoint ptr %sqp_demux to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %sqp_demux, align 4
  %conv = zext i16 %16 to i32
  %cmp = icmp ult i32 %inc47, %conv
  br i1 %cmp, label %for.inc46.for.body_crit_edge, label %for.inc46.for.end48_crit_edge

for.inc46.for.end48_crit_edge:                    ; preds = %for.inc46
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end48

for.inc46.for.body_crit_edge:                     ; preds = %for.inc46
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end48:                                        ; preds = %for.inc46.for.end48_crit_edge, %entry.for.end48_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx4_ib_update_cache_on_guid_change(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx4_ib_notify_slaves_on_guid_change(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_is_slave_active(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_gen_pkey_eqe(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_set(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx4_ib_invalidate_all_guid_record(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx4_ib_mcg_port_cleanup(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx4_ib_sl2vl_update(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx4_sched_ib_sl2vl_update_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @clean_vf_mcast(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @destroy_pv_resources(ptr noundef %ctx, i32 noundef %flush) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ctx, null
  br i1 %tobool.not, label %entry.if.end23_crit_edge, label %if.end

entry.if.end23_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23

if.end:                                           ; preds = %entry
  %state = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, ptr %ctx, i32 0, i32 2
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end.if.end23_crit_edge, label %if.then1

if.end.if.end23_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23

if.then1:                                         ; preds = %if.end
  %2 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 3, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %flush)
  %tobool3.not = icmp eq i32 %flush, 0
  br i1 %tobool3.not, label %if.then1.if.end5_crit_edge, label %if.then4

if.then1.if.end5_crit_edge:                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

if.then4:                                         ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #13
  %wq = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, ptr %ctx, i32 0, i32 8
  %3 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %wq, align 4
  tail call void @flush_workqueue(ptr noundef %4) #11
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.then1.if.end5_crit_edge
  %has_smi = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, ptr %ctx, i32 0, i32 3
  %5 = ptrtoint ptr %has_smi to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %has_smi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool6.not = icmp eq i32 %6, 0
  br i1 %tobool6.not, label %if.end5.if.end12_crit_edge, label %if.then7

if.end5.if.end12_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  %qp = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, ptr %ctx, i32 0, i32 10
  %7 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %qp, align 4
  %call.i = tail call i32 @ib_destroy_qp_user(ptr noundef %8, ptr noundef null) #11
  %9 = ptrtoint ptr %qp to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %qp, align 4
  tail call fastcc void @mlx4_ib_free_pv_qp_bufs(ptr noundef nonnull %ctx, i32 noundef 0, i32 noundef 1)
  br label %if.end12

if.end12:                                         ; preds = %if.then7, %if.end5.if.end12_crit_edge
  %arrayidx14 = getelementptr %struct.mlx4_ib_demux_pv_ctx, ptr %ctx, i32 0, i32 10, i32 1
  %10 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx14, align 4
  %call.i1 = tail call i32 @ib_destroy_qp_user(ptr noundef %11, ptr noundef null) #11
  %12 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %arrayidx14, align 4
  tail call fastcc void @mlx4_ib_free_pv_qp_bufs(ptr noundef nonnull %ctx, i32 noundef 1, i32 noundef 1)
  %pd = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, ptr %ctx, i32 0, i32 6
  %13 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pd, align 4
  %call.i2 = tail call i32 @ib_dealloc_pd_user(ptr noundef %14, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2)
  %tobool.not.i = icmp eq i32 %call.i2, 0
  br i1 %tobool.not.i, label %if.end12.ib_dealloc_pd.exit_crit_edge, label %land.rhs.i

if.end12.ib_dealloc_pd.exit_crit_edge:            ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %ib_dealloc_pd.exit

land.rhs.i:                                       ; preds = %if.end12
  %.b38.i = load i1, ptr @ib_dealloc_pd.__already_done, align 1
  br i1 %.b38.i, label %land.rhs.i.ib_dealloc_pd.exit_crit_edge, label %if.then.i, !prof !279

land.rhs.i.ib_dealloc_pd.exit_crit_edge:          ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ib_dealloc_pd.exit

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @ib_dealloc_pd.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.37, i32 noundef 3498, i32 noundef 9, ptr noundef nonnull @.str.49) #11
  br label %ib_dealloc_pd.exit

ib_dealloc_pd.exit:                               ; preds = %if.then.i, %land.rhs.i.ib_dealloc_pd.exit_crit_edge, %if.end12.ib_dealloc_pd.exit_crit_edge
  %15 = ptrtoint ptr %pd to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %pd, align 4
  %cq = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, ptr %ctx, i32 0, i32 5
  %16 = ptrtoint ptr %cq to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cq, align 4
  %call.i3 = tail call i32 @ib_destroy_cq_user(ptr noundef %17, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3)
  %tobool.not.i4 = icmp eq i32 %call.i3, 0
  br i1 %tobool.not.i4, label %ib_dealloc_pd.exit.ib_destroy_cq.exit_crit_edge, label %land.rhs.i6

ib_dealloc_pd.exit.ib_destroy_cq.exit_crit_edge:  ; preds = %ib_dealloc_pd.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %ib_destroy_cq.exit

land.rhs.i6:                                      ; preds = %ib_dealloc_pd.exit
  %.b38.i5 = load i1, ptr @ib_destroy_cq.__already_done, align 1
  br i1 %.b38.i5, label %land.rhs.i6.ib_destroy_cq.exit_crit_edge, label %if.then.i7, !prof !279

land.rhs.i6.ib_destroy_cq.exit_crit_edge:         ; preds = %land.rhs.i6
  call void @__sanitizer_cov_trace_pc() #13
  br label %ib_destroy_cq.exit

if.then.i7:                                       ; preds = %land.rhs.i6
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @ib_destroy_cq.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.37, i32 noundef 3936, i32 noundef 9, ptr noundef nonnull @.str.50) #11
  br label %ib_destroy_cq.exit

ib_destroy_cq.exit:                               ; preds = %if.then.i7, %land.rhs.i6.ib_destroy_cq.exit_crit_edge, %ib_dealloc_pd.exit.ib_destroy_cq.exit_crit_edge
  %18 = ptrtoint ptr %cq to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %cq, align 4
  %19 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %state, align 4
  br label %if.end23

if.end23:                                         ; preds = %ib_destroy_cq.exit, %if.end.if.end23_crit_edge, %entry.if.end23_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @create_pv_resources(ptr noundef %ibdev, i32 noundef %port, i32 noundef %create_tun, ptr noundef %ctx) unnamed_addr #0 align 64 {
entry:
  %cq_attr = alloca %struct.ib_cq_init_attr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cq_attr) #11
  %0 = call ptr @memset(ptr %cq_attr, i32 0, i32 12)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %create_tun)
  %tobool.not = icmp eq i32 %create_tun, 0
  %state = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, ptr %ctx, i32 0, i32 2
  %1 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp.not = icmp eq i32 %2, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %state, align 4
  %4 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ctx, align 4
  %call = tail call i32 @rdma_port_get_link_layer(ptr noundef %ibdev, i32 noundef %5) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp3 = icmp eq i32 %call, 1
  br i1 %cmp3, label %if.then4, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %has_smi = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, ptr %ctx, i32 0, i32 3
  %6 = ptrtoint ptr %has_smi to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %has_smi, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  %has_smi6 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, ptr %ctx, i32 0, i32 3
  %7 = ptrtoint ptr %has_smi6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %has_smi6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool7.not = icmp eq i32 %8, 0
  br i1 %tobool7.not, label %if.end5.if.end14_crit_edge, label %if.then8

if.end5.if.end14_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

if.then8:                                         ; preds = %if.end5
  %call9 = tail call fastcc i32 @mlx4_ib_alloc_pv_bufs(ptr noundef %ctx, i32 noundef 0, i32 noundef %create_tun)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then8.if.end14_crit_edge, label %do.end

if.then8.if.end14_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

do.end:                                           ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.52, i32 noundef %call9) #14
  br label %cleanup.sink.split

if.end14:                                         ; preds = %if.then8.if.end14_crit_edge, %if.end5.if.end14_crit_edge
  %call15 = tail call fastcc i32 @mlx4_ib_alloc_pv_bufs(ptr noundef %ctx, i32 noundef 1, i32 noundef %create_tun)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end23, label %do.end20

do.end20:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.52, i32 noundef %call15) #14
  br label %err_out_qp0

if.end23:                                         ; preds = %if.end14
  %mul = select i1 %tobool.not, i32 4096, i32 1024
  %9 = ptrtoint ptr %has_smi6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %has_smi6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool25.not = icmp ne i32 %10, 0
  %mul27 = zext i1 %tobool25.not to i32
  %spec.select = shl nuw nsw i32 %mul, %mul27
  %11 = ptrtoint ptr %cq_attr to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %spec.select, ptr %cq_attr, align 4
  %ib_dev = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, ptr %ctx, i32 0, i32 4
  %12 = ptrtoint ptr %ib_dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ib_dev, align 4
  %cond30 = select i1 %tobool.not, ptr @mlx4_ib_wire_comp_handler, ptr @mlx4_ib_tunnel_comp_handler
  %call31 = call ptr @__ib_create_cq(ptr noundef %13, ptr noundef nonnull %cond30, ptr noundef null, ptr noundef %ctx, ptr noundef nonnull %cq_attr, ptr noundef nonnull @.str) #11
  %cq = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, ptr %ctx, i32 0, i32 5
  %14 = ptrtoint ptr %cq to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call31, ptr %cq, align 4
  %cmp.i = icmp ugt ptr %call31, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then34, label %if.end42

if.then34:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  %15 = ptrtoint ptr %call31 to i32
  %call41 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.52, i32 noundef %15) #14
  br label %err_buf

if.end42:                                         ; preds = %if.end23
  %16 = ptrtoint ptr %ib_dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ib_dev, align 4
  %call44 = call ptr @__ib_alloc_pd(ptr noundef %17, i32 noundef 0, ptr noundef nonnull @.str) #11
  %pd = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, ptr %ctx, i32 0, i32 6
  %18 = ptrtoint ptr %pd to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call44, ptr %pd, align 4
  %cmp.i1 = icmp ugt ptr %call44, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i1, label %if.then47, label %if.end55

if.then47:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #13
  %19 = ptrtoint ptr %call44 to i32
  %call54 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.52, i32 noundef %19) #14
  br label %err_cq

if.end55:                                         ; preds = %if.end42
  %20 = ptrtoint ptr %has_smi6 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %has_smi6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool57.not = icmp eq i32 %21, 0
  br i1 %tobool57.not, label %if.end55.if.end70_crit_edge, label %if.then58

if.end55.if.end70_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end70

if.then58:                                        ; preds = %if.end55
  %call59 = call fastcc i32 @create_pv_sqp(ptr noundef %ctx, i32 noundef 0, i32 noundef %create_tun)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %if.then58.if.end70_crit_edge, label %do.end64

if.then58.if.end70_crit_edge:                     ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end70

do.end64:                                         ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #13
  %cond67 = select i1 %tobool.not, ptr @.str.66, ptr @.str.65
  %call68 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.52, ptr noundef nonnull %cond67, i32 noundef %call59) #14
  br label %err_pd

if.end70:                                         ; preds = %if.then58.if.end70_crit_edge, %if.end55.if.end70_crit_edge
  %call71 = call fastcc i32 @create_pv_sqp(ptr noundef %ctx, i32 noundef 1, i32 noundef %create_tun)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %if.end81, label %do.end76

do.end76:                                         ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #13
  %cond79 = select i1 %tobool.not, ptr @.str.66, ptr @.str.65
  %call80 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.52, ptr noundef nonnull %cond79, i32 noundef %call71) #14
  br label %err_qp0

if.end81:                                         ; preds = %if.end70
  %work93 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, ptr %ctx, i32 0, i32 7
  call void @__init_work(ptr noundef %work93, i32 noundef 0) #11
  %22 = ptrtoint ptr %work93 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -64, ptr %work93, align 4
  %lockdep_map99 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, ptr %ctx, i32 0, i32 7, i32 3
  br i1 %tobool.not, label %do.body92, label %do.body84

do.body84:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #13
  call void @lockdep_init_map_type(ptr noundef %lockdep_map99, ptr noundef nonnull @.str.70, ptr noundef nonnull @create_pv_resources.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %entry88 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, ptr %ctx, i32 0, i32 7, i32 1
  %23 = ptrtoint ptr %entry88 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %entry88, ptr %entry88, align 4
  br label %if.end106

do.body92:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #13
  call void @lockdep_init_map_type(ptr noundef %lockdep_map99, ptr noundef nonnull @.str.70, ptr noundef nonnull @create_pv_resources.__key.71, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %entry101 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, ptr %ctx, i32 0, i32 7, i32 1
  %24 = ptrtoint ptr %entry101 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %entry101, ptr %entry101, align 4
  br label %if.end106

if.end106:                                        ; preds = %do.body92, %do.body84
  %entry88.sink = phi ptr [ %entry101, %do.body92 ], [ %entry88, %do.body84 ]
  %mlx4_ib_tunnel_comp_worker.sink = phi ptr [ @mlx4_ib_sqp_comp_worker, %do.body92 ], [ @mlx4_ib_tunnel_comp_worker, %do.body84 ]
  %25 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, ptr %ctx, i32 0, i32 7, i32 1, i32 1
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %entry88.sink, ptr %25, align 4
  %27 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, ptr %ctx, i32 0, i32 7, i32 2
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %mlx4_ib_tunnel_comp_worker.sink, ptr %27, align 4
  %sriov = getelementptr inbounds %struct.mlx4_ib_dev, ptr %ibdev, i32 0, i32 11
  %sub = add i32 %port, -1
  %wq = getelementptr [2 x %struct.mlx4_ib_demux_ctx], ptr %sriov, i32 0, i32 %sub, i32 2
  %29 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %wq, align 8
  %wq108 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, ptr %ctx, i32 0, i32 8
  %31 = ptrtoint ptr %wq108 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %30, ptr %wq108, align 4
  %wi_wq = getelementptr [2 x %struct.mlx4_ib_demux_ctx], ptr %sriov, i32 0, i32 %sub, i32 3
  %32 = ptrtoint ptr %wi_wq to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %wi_wq, align 4
  %wi_wq114 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, ptr %ctx, i32 0, i32 9
  %34 = ptrtoint ptr %wi_wq114 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %33, ptr %wi_wq114, align 4
  %35 = ptrtoint ptr %cq to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %cq, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %36, align 8
  %req_notify_cq.i = getelementptr inbounds %struct.ib_device, ptr %38, i32 0, i32 1, i32 12
  %39 = ptrtoint ptr %req_notify_cq.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %req_notify_cq.i, align 4
  %call.i = call i32 %40(ptr noundef %36, i32 noundef 2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool117.not = icmp eq i32 %call.i, 0
  br i1 %tobool117.not, label %if.end106.cleanup.sink.split_crit_edge, label %do.end121

if.end106.cleanup.sink.split_crit_edge:           ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

do.end121:                                        ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #13
  %call123 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.52, i32 noundef %call.i) #14
  %41 = ptrtoint ptr %wq108 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %wq108, align 4
  %arrayidx127 = getelementptr %struct.mlx4_ib_demux_pv_ctx, ptr %ctx, i32 0, i32 10, i32 1
  %42 = ptrtoint ptr %arrayidx127 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx127, align 4
  %call.i3 = call i32 @ib_destroy_qp_user(ptr noundef %43, ptr noundef null) #11
  %44 = ptrtoint ptr %arrayidx127 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %arrayidx127, align 4
  br label %err_qp0

err_qp0:                                          ; preds = %do.end121, %do.end76
  %ret.0 = phi i32 [ %call71, %do.end76 ], [ %call.i, %do.end121 ]
  %45 = ptrtoint ptr %has_smi6 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %has_smi6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool134.not = icmp eq i32 %46, 0
  br i1 %tobool134.not, label %err_qp0.if.end140_crit_edge, label %if.then135

err_qp0.if.end140_crit_edge:                      ; preds = %err_qp0
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end140

if.then135:                                       ; preds = %err_qp0
  call void @__sanitizer_cov_trace_pc() #13
  %qp136 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, ptr %ctx, i32 0, i32 10
  %47 = ptrtoint ptr %qp136 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %qp136, align 4
  %call.i4 = call i32 @ib_destroy_qp_user(ptr noundef %48, ptr noundef null) #11
  br label %if.end140

if.end140:                                        ; preds = %if.then135, %err_qp0.if.end140_crit_edge
  %qp141 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, ptr %ctx, i32 0, i32 10
  %49 = ptrtoint ptr %qp141 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr null, ptr %qp141, align 4
  br label %err_pd

err_pd:                                           ; preds = %if.end140, %do.end64
  %ret.1 = phi i32 [ %call59, %do.end64 ], [ %ret.0, %if.end140 ]
  %50 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pd, align 4
  %call.i5 = call i32 @ib_dealloc_pd_user(ptr noundef %51, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i5)
  %tobool.not.i = icmp eq i32 %call.i5, 0
  br i1 %tobool.not.i, label %err_pd.ib_dealloc_pd.exit_crit_edge, label %land.rhs.i

err_pd.ib_dealloc_pd.exit_crit_edge:              ; preds = %err_pd
  call void @__sanitizer_cov_trace_pc() #13
  br label %ib_dealloc_pd.exit

land.rhs.i:                                       ; preds = %err_pd
  %.b38.i = load i1, ptr @ib_dealloc_pd.__already_done, align 1
  br i1 %.b38.i, label %land.rhs.i.ib_dealloc_pd.exit_crit_edge, label %if.then.i, !prof !279

land.rhs.i.ib_dealloc_pd.exit_crit_edge:          ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ib_dealloc_pd.exit

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @ib_dealloc_pd.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.37, i32 noundef 3498, i32 noundef 9, ptr noundef nonnull @.str.49) #11
  br label %ib_dealloc_pd.exit

ib_dealloc_pd.exit:                               ; preds = %if.then.i, %land.rhs.i.ib_dealloc_pd.exit_crit_edge, %err_pd.ib_dealloc_pd.exit_crit_edge
  %52 = ptrtoint ptr %pd to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr null, ptr %pd, align 4
  br label %err_cq

err_cq:                                           ; preds = %ib_dealloc_pd.exit, %if.then47
  %ret.2 = phi i32 [ %19, %if.then47 ], [ %ret.1, %ib_dealloc_pd.exit ]
  %53 = ptrtoint ptr %cq to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %cq, align 4
  %call.i6 = call i32 @ib_destroy_cq_user(ptr noundef %54, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i6)
  %tobool.not.i7 = icmp eq i32 %call.i6, 0
  br i1 %tobool.not.i7, label %err_cq.ib_destroy_cq.exit_crit_edge, label %land.rhs.i9

err_cq.ib_destroy_cq.exit_crit_edge:              ; preds = %err_cq
  call void @__sanitizer_cov_trace_pc() #13
  br label %ib_destroy_cq.exit

land.rhs.i9:                                      ; preds = %err_cq
  %.b38.i8 = load i1, ptr @ib_destroy_cq.__already_done, align 1
  br i1 %.b38.i8, label %land.rhs.i9.ib_destroy_cq.exit_crit_edge, label %if.then.i10, !prof !279

land.rhs.i9.ib_destroy_cq.exit_crit_edge:         ; preds = %land.rhs.i9
  call void @__sanitizer_cov_trace_pc() #13
  br label %ib_destroy_cq.exit

if.then.i10:                                      ; preds = %land.rhs.i9
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @ib_destroy_cq.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.37, i32 noundef 3936, i32 noundef 9, ptr noundef nonnull @.str.50) #11
  br label %ib_destroy_cq.exit

ib_destroy_cq.exit:                               ; preds = %if.then.i10, %land.rhs.i9.ib_destroy_cq.exit_crit_edge, %err_cq.ib_destroy_cq.exit_crit_edge
  %55 = ptrtoint ptr %cq to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr null, ptr %cq, align 4
  br label %err_buf

err_buf:                                          ; preds = %ib_destroy_cq.exit, %if.then34
  %ret.3 = phi i32 [ %15, %if.then34 ], [ %ret.2, %ib_destroy_cq.exit ]
  call fastcc void @mlx4_ib_free_pv_qp_bufs(ptr noundef %ctx, i32 noundef 1, i32 noundef %create_tun)
  br label %err_out_qp0

err_out_qp0:                                      ; preds = %err_buf, %do.end20
  %ret.4 = phi i32 [ %call15, %do.end20 ], [ %ret.3, %err_buf ]
  %56 = ptrtoint ptr %has_smi6 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %has_smi6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool149.not = icmp eq i32 %57, 0
  br i1 %tobool149.not, label %err_out_qp0.cleanup.sink.split_crit_edge, label %if.then150

err_out_qp0.cleanup.sink.split_crit_edge:         ; preds = %err_out_qp0
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.then150:                                       ; preds = %err_out_qp0
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @mlx4_ib_free_pv_qp_bufs(ptr noundef %ctx, i32 noundef 0, i32 noundef %create_tun)
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then150, %err_out_qp0.cleanup.sink.split_crit_edge, %if.end106.cleanup.sink.split_crit_edge, %do.end
  %.sink = phi i32 [ 2, %if.end106.cleanup.sink.split_crit_edge ], [ 0, %err_out_qp0.cleanup.sink.split_crit_edge ], [ 0, %if.then150 ], [ 0, %do.end ]
  %retval.0.ph = phi i32 [ 0, %if.end106.cleanup.sink.split_crit_edge ], [ %ret.4, %err_out_qp0.cleanup.sink.split_crit_edge ], [ %ret.4, %if.then150 ], [ %call9, %do.end ]
  %58 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %.sink, ptr %state, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -17, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cq_attr) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlx4_ib_free_pv_qp_bufs(ptr nocapture noundef readonly %ctx, i32 noundef %qp_type, i32 noundef %is_tun) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_tun)
  %tobool.not = icmp eq i32 %is_tun, 0
  %cond = select i1 %tobool.not, i32 2048, i32 512
  %rx_buf_size.0 = select i1 %tobool.not, i32 296, i32 352
  %ib_dev = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, ptr %ctx, i32 0, i32 4
  %ring = getelementptr %struct.mlx4_ib_demux_pv_ctx, ptr %ctx, i32 0, i32 10, i32 %qp_type, i32 2
  br label %for.body

for.cond8.preheader:                              ; preds = %for.body
  %tx_buf_size.0 = select i1 %tobool.not, i32 256, i32 312
  %tx_ring = getelementptr %struct.mlx4_ib_demux_pv_ctx, ptr %ctx, i32 0, i32 10, i32 %qp_type, i32 3
  br label %for.body11

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.058 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %0 = ptrtoint ptr %ib_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ib_dev, align 4
  %2 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ring, align 4
  %map = getelementptr %struct.mlx4_ib_buf, ptr %3, i32 %i.058, i32 1
  %4 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %map, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  tail call void @dma_unmap_page_attrs(ptr noundef %7, i32 noundef %5, i32 noundef %rx_buf_size.0, i32 noundef 2, i32 noundef 0) #11
  %8 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ring, align 4
  %arrayidx7 = getelementptr %struct.mlx4_ib_buf, ptr %9, i32 %i.058
  %10 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx7, align 4
  tail call void @kfree(ptr noundef %11) #11
  %inc = add nuw nsw i32 %i.058, 1
  %exitcond.not = icmp eq i32 %inc, %cond
  br i1 %exitcond.not, label %for.cond8.preheader, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body11:                                       ; preds = %for.inc28.for.body11_crit_edge, %for.cond8.preheader
  %i.159 = phi i32 [ 0, %for.cond8.preheader ], [ %inc29, %for.inc28.for.body11_crit_edge ]
  %12 = ptrtoint ptr %ib_dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ib_dev, align 4
  %14 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tx_ring, align 4
  %map14 = getelementptr %struct.mlx4_ib_tun_tx_buf, ptr %15, i32 %i.159, i32 0, i32 1
  %16 = ptrtoint ptr %map14 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %map14, align 4
  %18 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %13, align 8
  tail call void @dma_unmap_page_attrs(ptr noundef %19, i32 noundef %17, i32 noundef %tx_buf_size.0, i32 noundef 1, i32 noundef 0) #11
  %20 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tx_ring, align 4
  %arrayidx17 = getelementptr %struct.mlx4_ib_tun_tx_buf, ptr %21, i32 %i.159
  %22 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx17, align 4
  tail call void @kfree(ptr noundef %23) #11
  %24 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %tx_ring, align 4
  %ah = getelementptr %struct.mlx4_ib_tun_tx_buf, ptr %25, i32 %i.159, i32 1
  %26 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ah, align 4
  %tobool22.not = icmp eq ptr %27, null
  br i1 %tobool22.not, label %for.body11.for.inc28_crit_edge, label %if.then23

for.body11.for.inc28_crit_edge:                   ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc28

if.then23:                                        ; preds = %for.body11
  %call.i = tail call i32 @rdma_destroy_ah_user(ptr noundef nonnull %27, i32 noundef 0, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then23.for.inc28_crit_edge, label %land.rhs.i

if.then23.for.inc28_crit_edge:                    ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc28

land.rhs.i:                                       ; preds = %if.then23
  %.b1.i = load i1, ptr @rdma_destroy_ah.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.for.inc28_crit_edge, label %if.then.i, !prof !279

land.rhs.i.for.inc28_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc28

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rdma_destroy_ah.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.37, i32 noundef 3630, i32 noundef 9, ptr noundef nonnull @.str.38) #11
  br label %for.inc28

for.inc28:                                        ; preds = %if.then.i, %land.rhs.i.for.inc28_crit_edge, %if.then23.for.inc28_crit_edge, %for.body11.for.inc28_crit_edge
  %inc29 = add nuw nsw i32 %i.159, 1
  %exitcond60.not = icmp eq i32 %inc29, %cond
  br i1 %exitcond60.not, label %for.end30, label %for.inc28.for.body11_crit_edge

for.inc28.for.body11_crit_edge:                   ; preds = %for.inc28
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body11

for.end30:                                        ; preds = %for.inc28
  call void @__sanitizer_cov_trace_pc() #13
  %28 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %tx_ring, align 4
  tail call void @kfree(ptr noundef %29) #11
  %30 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ring, align 4
  tail call void @kfree(ptr noundef %31) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_destroy_qp_user(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_dealloc_pd_user(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_destroy_cq_user(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlx4_ib_alloc_pv_bufs(ptr noundef %ctx, i32 noundef %qp_type, i32 noundef %is_tun) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_tun)
  %tobool.not = icmp eq i32 %is_tun, 0
  %cond = select i1 %tobool.not, i32 2048, i32 512
  %0 = shl nuw nsw i32 %cond, 3
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %0, i32 noundef 3520) #16
  %ring285 = getelementptr %struct.mlx4_ib_demux_pv_ctx, ptr %ctx, i32 0, i32 10, i32 %qp_type, i32 2
  %1 = ptrtoint ptr %ring285 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call8.i.i, ptr %ring285, align 4
  %tobool2.not286 = icmp eq ptr %call8.i.i, null
  br i1 %tobool2.not286, label %entry.cleanup_crit_edge, label %if.end7.i.i232

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7.i.i232:                                   ; preds = %entry
  %2 = mul nuw nsw i32 %cond, 12
  %call8.i.i231 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %2, i32 noundef 3520) #16
  %tx_ring = getelementptr %struct.mlx4_ib_demux_pv_ctx, ptr %ctx, i32 0, i32 10, i32 %qp_type, i32 3
  %3 = ptrtoint ptr %tx_ring to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call8.i.i231, ptr %tx_ring, align 4
  %tobool7.not = icmp eq ptr %call8.i.i231, null
  br i1 %tobool7.not, label %if.then8, label %if.end11

if.then8:                                         ; preds = %if.end7.i.i232
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %ring285 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ring285, align 4
  tail call void @kfree(ptr noundef %5) #11
  %6 = ptrtoint ptr %ring285 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %ring285, align 4
  br label %cleanup

if.end11:                                         ; preds = %if.end7.i.i232
  %. = select i1 %tobool.not, i32 296, i32 352
  %.195 = select i1 %tobool.not, i32 256, i32 312
  %ib_dev = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, ptr %ctx, i32 0, i32 4
  br label %if.end8.i

if.end8.i:                                        ; preds = %for.inc.if.end8.i_crit_edge, %if.end11
  %i.0271 = phi i32 [ 0, %if.end11 ], [ %inc, %for.inc.if.end8.i_crit_edge ]
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %., i32 noundef 3264) #16
  %7 = ptrtoint ptr %ring285 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ring285, align 4
  %arrayidx18 = getelementptr %struct.mlx4_ib_buf, ptr %8, i32 %i.0271
  %9 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call9.i, ptr %arrayidx18, align 4
  %10 = load ptr, ptr %ring285, align 4
  %arrayidx20 = getelementptr %struct.mlx4_ib_buf, ptr %10, i32 %i.0271
  %11 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx20, align 4
  %tobool22.not = icmp eq ptr %12, null
  br i1 %tobool22.not, label %if.end8.i.err_crit_edge, label %if.end24

if.end8.i.err_crit_edge:                          ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err

if.end24:                                         ; preds = %if.end8.i
  %13 = ptrtoint ptr %ib_dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ib_dev, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 8
  %call.i.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef nonnull %12) #11
  br i1 %call.i.i, label %land.rhs.i.i, label %if.end39.i.i

land.rhs.i.i:                                     ; preds = %if.end24
  %.b1.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.ib_dma_map_single.exit_crit_edge, label %if.then.i.i, !prof !279

land.rhs.i.i.ib_dma_map_single.exit_crit_edge:    ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ib_dma_map_single.exit

if.then.i.i:                                      ; preds = %land.rhs.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i = tail call ptr @dev_driver_string(ptr noundef %16) #11
  %init_name.i.i.i = getelementptr inbounds %struct.device, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %18, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i235, label %if.then.i.i.dev_name.exit.i.i_crit_edge

if.then.i.i.dev_name.exit.i.i_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit.i.i

if.end.i.i.i235:                                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %19 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %16, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i.i235, %if.then.i.i.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %20, %if.end.i.i.i235 ], [ %18, %if.then.i.i.dev_name.exit.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.76, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.77, ptr noundef %call16.i.i, ptr noundef %retval.0.i.i.i) #11
  br label %ib_dma_map_single.exit

if.end39.i.i:                                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @debug_dma_map_single(ptr noundef %16, ptr noundef nonnull %12, i32 noundef %.) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %21 = load ptr, ptr @mem_map, align 4
  %22 = ptrtoint ptr %12 to i32
  %sub.i.i = add i32 %22, 1073741824
  %shr.i.i = lshr i32 %sub.i.i, 12
  %add.ptr.i.i = getelementptr %struct.page, ptr %21, i32 %shr.i.i
  %and.i.i = and i32 %22, 4095
  %call41.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %16, ptr noundef %add.ptr.i.i, i32 noundef %and.i.i, i32 noundef %., i32 noundef 2, i32 noundef 0) #11
  br label %ib_dma_map_single.exit

ib_dma_map_single.exit:                           ; preds = %if.end39.i.i, %dev_name.exit.i.i, %land.rhs.i.i.ib_dma_map_single.exit_crit_edge
  %retval.0.i.i236 = phi i32 [ %call41.i.i, %if.end39.i.i ], [ -1, %dev_name.exit.i.i ], [ -1, %land.rhs.i.i.ib_dma_map_single.exit_crit_edge ]
  %23 = ptrtoint ptr %ring285 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ring285, align 4
  %map = getelementptr %struct.mlx4_ib_buf, ptr %24, i32 %i.0271, i32 1
  %25 = ptrtoint ptr %map to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %retval.0.i.i236, ptr %map, align 4
  %26 = ptrtoint ptr %ib_dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ib_dev, align 4
  %28 = load ptr, ptr %ring285, align 4
  %map34 = getelementptr %struct.mlx4_ib_buf, ptr %28, i32 %i.0271, i32 1
  %29 = ptrtoint ptr %map34 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %map34, align 4
  %31 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %27, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %32, i32 noundef %30) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %30)
  %cmp.i.i.not = icmp eq i32 %30, -1
  br i1 %cmp.i.i.not, label %if.then38, label %for.inc

if.then38:                                        ; preds = %ib_dma_map_single.exit
  call void @__sanitizer_cov_trace_pc() #13
  %33 = ptrtoint ptr %ring285 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ring285, align 4
  %arrayidx40 = getelementptr %struct.mlx4_ib_buf, ptr %34, i32 %i.0271
  %35 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx40, align 4
  tail call void @kfree(ptr noundef %36) #11
  br label %err

for.inc:                                          ; preds = %ib_dma_map_single.exit
  %inc = add nuw nsw i32 %i.0271, 1
  %exitcond.not = icmp eq i32 %inc, %cond
  br i1 %exitcond.not, label %for.inc.if.end8.i199_crit_edge, label %for.inc.if.end8.i_crit_edge

for.inc.if.end8.i_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8.i

for.inc.if.end8.i199_crit_edge:                   ; preds = %for.inc
  br label %if.end8.i199

if.end8.i199:                                     ; preds = %if.end82.if.end8.i199_crit_edge, %for.inc.if.end8.i199_crit_edge
  %i.1272 = phi i32 [ %inc86, %if.end82.if.end8.i199_crit_edge ], [ 0, %for.inc.if.end8.i199_crit_edge ]
  %call9.i198 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %.195, i32 noundef 3264) #16
  %37 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %tx_ring, align 4
  %arrayidx49 = getelementptr %struct.mlx4_ib_tun_tx_buf, ptr %38, i32 %i.1272
  %39 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call9.i198, ptr %arrayidx49, align 4
  %40 = load ptr, ptr %tx_ring, align 4
  %arrayidx52 = getelementptr %struct.mlx4_ib_tun_tx_buf, ptr %40, i32 %i.1272
  %41 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx52, align 4
  %tobool55.not = icmp eq ptr %42, null
  br i1 %tobool55.not, label %if.end8.i199.tx_err_crit_edge, label %if.end57

if.end8.i199.tx_err_crit_edge:                    ; preds = %if.end8.i199
  call void @__sanitizer_cov_trace_pc() #13
  br label %tx_err

if.end57:                                         ; preds = %if.end8.i199
  %43 = ptrtoint ptr %ib_dev to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ib_dev, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %44, align 8
  %call.i.i237 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef nonnull %42) #11
  br i1 %call.i.i237, label %land.rhs.i.i239, label %if.end39.i.i252

land.rhs.i.i239:                                  ; preds = %if.end57
  %.b1.i.i238 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i238, label %land.rhs.i.i239.ib_dma_map_single.exit255_crit_edge, label %if.then.i.i243, !prof !279

land.rhs.i.i239.ib_dma_map_single.exit255_crit_edge: ; preds = %land.rhs.i.i239
  call void @__sanitizer_cov_trace_pc() #13
  br label %ib_dma_map_single.exit255

if.then.i.i243:                                   ; preds = %land.rhs.i.i239
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i240 = tail call ptr @dev_driver_string(ptr noundef %46) #11
  %init_name.i.i.i241 = getelementptr inbounds %struct.device, ptr %46, i32 0, i32 3
  %47 = ptrtoint ptr %init_name.i.i.i241 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %init_name.i.i.i241, align 8
  %tobool.not.i.i.i242 = icmp eq ptr %48, null
  br i1 %tobool.not.i.i.i242, label %if.end.i.i.i244, label %if.then.i.i243.dev_name.exit.i.i246_crit_edge

if.then.i.i243.dev_name.exit.i.i246_crit_edge:    ; preds = %if.then.i.i243
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit.i.i246

if.end.i.i.i244:                                  ; preds = %if.then.i.i243
  call void @__sanitizer_cov_trace_pc() #13
  %49 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %46, align 4
  br label %dev_name.exit.i.i246

dev_name.exit.i.i246:                             ; preds = %if.end.i.i.i244, %if.then.i.i243.dev_name.exit.i.i246_crit_edge
  %retval.0.i.i.i245 = phi ptr [ %50, %if.end.i.i.i244 ], [ %48, %if.then.i.i243.dev_name.exit.i.i246_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.76, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.77, ptr noundef %call16.i.i240, ptr noundef %retval.0.i.i.i245) #11
  br label %ib_dma_map_single.exit255

if.end39.i.i252:                                  ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @debug_dma_map_single(ptr noundef %46, ptr noundef nonnull %42, i32 noundef %.195) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %51 = load ptr, ptr @mem_map, align 4
  %52 = ptrtoint ptr %42 to i32
  %sub.i.i247 = add i32 %52, 1073741824
  %shr.i.i248 = lshr i32 %sub.i.i247, 12
  %add.ptr.i.i249 = getelementptr %struct.page, ptr %51, i32 %shr.i.i248
  %and.i.i250 = and i32 %52, 4095
  %call41.i.i251 = tail call i32 @dma_map_page_attrs(ptr noundef %46, ptr noundef %add.ptr.i.i249, i32 noundef %and.i.i250, i32 noundef %.195, i32 noundef 1, i32 noundef 0) #11
  br label %ib_dma_map_single.exit255

ib_dma_map_single.exit255:                        ; preds = %if.end39.i.i252, %dev_name.exit.i.i246, %land.rhs.i.i239.ib_dma_map_single.exit255_crit_edge
  %retval.0.i.i253 = phi i32 [ %call41.i.i251, %if.end39.i.i252 ], [ -1, %dev_name.exit.i.i246 ], [ -1, %land.rhs.i.i239.ib_dma_map_single.exit255_crit_edge ]
  %53 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %tx_ring, align 4
  %map68 = getelementptr %struct.mlx4_ib_tun_tx_buf, ptr %54, i32 %i.1272, i32 0, i32 1
  %55 = ptrtoint ptr %map68 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %retval.0.i.i253, ptr %map68, align 4
  %56 = ptrtoint ptr %ib_dev to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ib_dev, align 4
  %58 = load ptr, ptr %tx_ring, align 4
  %map73 = getelementptr %struct.mlx4_ib_tun_tx_buf, ptr %58, i32 %i.1272, i32 0, i32 1
  %59 = ptrtoint ptr %map73 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %map73, align 4
  %61 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %57, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %62, i32 noundef %60) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %60)
  %cmp.i.i256.not = icmp eq i32 %60, -1
  %63 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %tx_ring, align 4
  br i1 %cmp.i.i256.not, label %if.then77, label %if.end82

if.then77:                                        ; preds = %ib_dma_map_single.exit255
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx79 = getelementptr %struct.mlx4_ib_tun_tx_buf, ptr %64, i32 %i.1272
  %65 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %arrayidx79, align 4
  tail call void @kfree(ptr noundef %66) #11
  br label %tx_err

if.end82:                                         ; preds = %ib_dma_map_single.exit255
  %ah = getelementptr %struct.mlx4_ib_tun_tx_buf, ptr %64, i32 %i.1272, i32 1
  %67 = ptrtoint ptr %ah to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr null, ptr %ah, align 4
  %inc86 = add nuw nsw i32 %i.1272, 1
  %exitcond283.not = icmp eq i32 %inc86, %cond
  br i1 %exitcond283.not, label %do.body, label %if.end82.if.end8.i199_crit_edge

if.end82.if.end8.i199_crit_edge:                  ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8.i199

do.body:                                          ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #13
  %tx_lock = getelementptr %struct.mlx4_ib_demux_pv_ctx, ptr %ctx, i32 0, i32 10, i32 %qp_type, i32 4
  tail call void @__raw_spin_lock_init(ptr noundef %tx_lock, ptr noundef nonnull @.str.75, ptr noundef nonnull @mlx4_ib_alloc_pv_bufs.__key, i16 noundef signext 3) #11
  %tx_ix_head = getelementptr %struct.mlx4_ib_demux_pv_ctx, ptr %ctx, i32 0, i32 10, i32 %qp_type, i32 5
  %68 = ptrtoint ptr %tx_ix_head to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 0, ptr %tx_ix_head, align 4
  %tx_ix_tail = getelementptr %struct.mlx4_ib_demux_pv_ctx, ptr %ctx, i32 0, i32 10, i32 %qp_type, i32 6
  %69 = ptrtoint ptr %tx_ix_tail to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 0, ptr %tx_ix_tail, align 4
  %proxy_qpt = getelementptr %struct.mlx4_ib_demux_pv_ctx, ptr %ctx, i32 0, i32 10, i32 %qp_type, i32 1
  %70 = ptrtoint ptr %proxy_qpt to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %qp_type, ptr %proxy_qpt, align 4
  br label %cleanup

tx_err:                                           ; preds = %if.then77, %if.end8.i199.tx_err_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.1272)
  %cmp89273.not = icmp eq i32 %i.1272, 0
  br i1 %cmp89273.not, label %tx_err.while.body104.preheader_crit_edge, label %tx_err.while.body_crit_edge

tx_err.while.body_crit_edge:                      ; preds = %tx_err
  br label %while.body

tx_err.while.body104.preheader_crit_edge:         ; preds = %tx_err
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body104.preheader

while.body:                                       ; preds = %while.body.while.body_crit_edge, %tx_err.while.body_crit_edge
  %i.2274 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %i.1272, %tx_err.while.body_crit_edge ]
  %dec = add nsw i32 %i.2274, -1
  %71 = ptrtoint ptr %ib_dev to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %ib_dev, align 4
  %73 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %tx_ring, align 4
  %map95 = getelementptr %struct.mlx4_ib_tun_tx_buf, ptr %74, i32 %dec, i32 0, i32 1
  %75 = ptrtoint ptr %map95 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %map95, align 4
  %77 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %72, align 8
  tail call void @dma_unmap_page_attrs(ptr noundef %78, i32 noundef %76, i32 noundef %.195, i32 noundef 1, i32 noundef 0) #11
  %79 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %tx_ring, align 4
  %arrayidx98 = getelementptr %struct.mlx4_ib_tun_tx_buf, ptr %80, i32 %dec
  %81 = ptrtoint ptr %arrayidx98 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %arrayidx98, align 4
  tail call void @kfree(ptr noundef %82) #11
  %cmp89 = icmp sgt i32 %i.2274, 1
  br i1 %cmp89, label %while.body.while.body_crit_edge, label %while.body.while.body104.preheader_crit_edge

while.body.while.body104.preheader_crit_edge:     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body104.preheader

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

err:                                              ; preds = %if.then38, %if.end8.i.err_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0271)
  %cmp102275.not = icmp eq i32 %i.0271, 0
  br i1 %cmp102275.not, label %err.while.end114_crit_edge, label %err.while.body104.preheader_crit_edge

err.while.body104.preheader_crit_edge:            ; preds = %err
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body104.preheader

err.while.end114_crit_edge:                       ; preds = %err
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end114

while.body104.preheader:                          ; preds = %err.while.body104.preheader_crit_edge, %while.body.while.body104.preheader_crit_edge, %tx_err.while.body104.preheader_crit_edge
  %i.4276.ph = phi i32 [ %cond, %tx_err.while.body104.preheader_crit_edge ], [ %i.0271, %err.while.body104.preheader_crit_edge ], [ %cond, %while.body.while.body104.preheader_crit_edge ]
  br label %while.body104

while.body104:                                    ; preds = %while.body104.while.body104_crit_edge, %while.body104.preheader
  %i.4276 = phi i32 [ %dec105, %while.body104.while.body104_crit_edge ], [ %i.4276.ph, %while.body104.preheader ]
  %dec105 = add nsw i32 %i.4276, -1
  %83 = ptrtoint ptr %ib_dev to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %ib_dev, align 4
  %85 = ptrtoint ptr %ring285 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %ring285, align 4
  %map109 = getelementptr %struct.mlx4_ib_buf, ptr %86, i32 %dec105, i32 1
  %87 = ptrtoint ptr %map109 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %map109, align 4
  %89 = ptrtoint ptr %84 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %84, align 8
  tail call void @dma_unmap_page_attrs(ptr noundef %90, i32 noundef %88, i32 noundef %., i32 noundef 2, i32 noundef 0) #11
  %91 = ptrtoint ptr %ring285 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %ring285, align 4
  %arrayidx112 = getelementptr %struct.mlx4_ib_buf, ptr %92, i32 %dec105
  %93 = ptrtoint ptr %arrayidx112 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %arrayidx112, align 4
  tail call void @kfree(ptr noundef %94) #11
  %cmp102 = icmp sgt i32 %i.4276, 1
  br i1 %cmp102, label %while.body104.while.body104_crit_edge, label %while.body104.while.end114_crit_edge

while.body104.while.end114_crit_edge:             ; preds = %while.body104
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end114

while.body104.while.body104_crit_edge:            ; preds = %while.body104
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body104

while.end114:                                     ; preds = %while.body104.while.end114_crit_edge, %err.while.end114_crit_edge
  %95 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %tx_ring, align 4
  tail call void @kfree(ptr noundef %96) #11
  %97 = ptrtoint ptr %tx_ring to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr null, ptr %tx_ring, align 4
  %98 = ptrtoint ptr %ring285 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %ring285, align 4
  tail call void @kfree(ptr noundef %99) #11
  %100 = ptrtoint ptr %ring285 to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr null, ptr %ring285, align 4
  br label %cleanup

cleanup:                                          ; preds = %while.end114, %do.body, %if.then8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %while.end114 ], [ 0, %do.body ], [ -12, %if.then8 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__ib_create_cq(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx4_ib_tunnel_comp_handler(ptr nocapture noundef readonly %cq, ptr nocapture noundef readnone %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %cq_context = getelementptr inbounds %struct.ib_cq, ptr %cq, i32 0, i32 4
  %0 = ptrtoint ptr %cq_context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cq_context, align 8
  %ib_dev = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %ib_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ib_dev, align 4
  %going_down_lock = getelementptr inbounds %struct.mlx4_ib_dev, ptr %3, i32 0, i32 11, i32 2
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %going_down_lock) #11
  %is_going_down = getelementptr inbounds %struct.mlx4_ib_dev, ptr %3, i32 0, i32 11, i32 3
  %4 = ptrtoint ptr %is_going_down to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %is_going_down, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %state = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp7 = icmp eq i32 %7, 2
  br i1 %cmp7, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %wq = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, ptr %1, i32 0, i32 8
  %8 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %wq, align 4
  %work = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, ptr %1, i32 0, i32 7
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %9, ptr noundef %work) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %going_down_lock, i32 noundef %call3) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx4_ib_wire_comp_handler(ptr nocapture noundef readonly %cq, ptr nocapture noundef readnone %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %cq_context = getelementptr inbounds %struct.ib_cq, ptr %cq, i32 0, i32 4
  %0 = ptrtoint ptr %cq_context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cq_context, align 8
  %ib_dev = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %ib_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ib_dev, align 4
  %going_down_lock = getelementptr inbounds %struct.mlx4_ib_dev, ptr %3, i32 0, i32 11, i32 2
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %going_down_lock) #11
  %is_going_down = getelementptr inbounds %struct.mlx4_ib_dev, ptr %3, i32 0, i32 11, i32 3
  %4 = ptrtoint ptr %is_going_down to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %is_going_down, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %state = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp7 = icmp eq i32 %7, 2
  br i1 %cmp7, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %wi_wq = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, ptr %1, i32 0, i32 9
  %8 = ptrtoint ptr %wi_wq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %wi_wq, align 4
  %work = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, ptr %1, i32 0, i32 7
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %9, ptr noundef %work) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %going_down_lock, i32 noundef %call3) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__ib_alloc_pd(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @create_pv_sqp(ptr noundef %ctx, i32 noundef %qp_type, i32 noundef %create_tun) unnamed_addr #0 align 64 {
entry:
  %sg_list.i = alloca %struct.ib_sge, align 8
  %recv_wr.i = alloca %struct.ib_recv_wr, align 8
  %bad_recv_wr.i = alloca ptr, align 4
  %qp_init_attr = alloca %struct.mlx4_ib_qp_tunnel_init_attr, align 4
  %attr = alloca %struct.ib_qp_attr, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 84, ptr nonnull %qp_init_attr) #11
  call void @llvm.lifetime.start.p0(i64 216, ptr nonnull %attr) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %create_tun)
  %tobool.not = icmp eq i32 %create_tun, 0
  %cond = select i1 %tobool.not, i32 2048, i32 512
  %arrayidx = getelementptr %struct.mlx4_ib_demux_pv_ctx, ptr %ctx, i32 0, i32 10, i32 %qp_type
  %0 = getelementptr inbounds i8, ptr %qp_init_attr, i32 16
  %1 = call ptr @memset(ptr %0, i32 0, i32 68)
  %cq = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, ptr %ctx, i32 0, i32 5
  %2 = ptrtoint ptr %cq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cq, align 4
  %send_cq = getelementptr inbounds %struct.ib_qp_init_attr, ptr %qp_init_attr, i32 0, i32 2
  %4 = ptrtoint ptr %send_cq to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %send_cq, align 4
  %recv_cq = getelementptr inbounds %struct.ib_qp_init_attr, ptr %qp_init_attr, i32 0, i32 3
  %5 = ptrtoint ptr %recv_cq to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %3, ptr %recv_cq, align 4
  %cap = getelementptr inbounds %struct.ib_qp_init_attr, ptr %qp_init_attr, i32 0, i32 6
  %6 = ptrtoint ptr %cap to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %cond, ptr %cap, align 4
  %max_recv_wr = getelementptr inbounds %struct.ib_qp_init_attr, ptr %qp_init_attr, i32 0, i32 6, i32 1
  %7 = ptrtoint ptr %max_recv_wr to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %cond, ptr %max_recv_wr, align 4
  %max_send_sge = getelementptr inbounds %struct.ib_qp_init_attr, ptr %qp_init_attr, i32 0, i32 6, i32 2
  %8 = ptrtoint ptr %max_send_sge to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %max_send_sge, align 4
  %max_recv_sge = getelementptr inbounds %struct.ib_qp_init_attr, ptr %qp_init_attr, i32 0, i32 6, i32 3
  %9 = ptrtoint ptr %max_recv_sge to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %max_recv_sge, align 4
  br i1 %tobool.not, label %entry.if.end22_crit_edge, label %if.then12

entry.if.end22_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

if.then12:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ctx, align 4
  %port16 = getelementptr inbounds %struct.mlx4_ib_qp_tunnel_init_attr, ptr %qp_init_attr, i32 0, i32 3
  %12 = ptrtoint ptr %port16 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %port16, align 4
  %slave = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, ptr %ctx, i32 0, i32 1
  %13 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %slave, align 4
  %slave17 = getelementptr inbounds %struct.mlx4_ib_qp_tunnel_init_attr, ptr %qp_init_attr, i32 0, i32 1
  %15 = ptrtoint ptr %slave17 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %slave17, align 4
  %proxy_qp_type = getelementptr inbounds %struct.mlx4_ib_qp_tunnel_init_attr, ptr %qp_init_attr, i32 0, i32 2
  %16 = ptrtoint ptr %proxy_qp_type to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %qp_type, ptr %proxy_qp_type, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then12, %entry.if.end22_crit_edge
  %.sink174 = phi i32 [ 4, %if.then12 ], [ %qp_type, %entry.if.end22_crit_edge ]
  %.sink = phi i32 [ 1073741824, %if.then12 ], [ -2147483648, %entry.if.end22_crit_edge ]
  %qp_attr_mask_INIT.0 = phi i32 [ 113, %if.then12 ], [ 81, %entry.if.end22_crit_edge ]
  %17 = getelementptr inbounds %struct.ib_qp_init_attr, ptr %qp_init_attr, i32 0, i32 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %.sink174, ptr %17, align 4
  %19 = getelementptr inbounds %struct.ib_qp_init_attr, ptr %qp_init_attr, i32 0, i32 9
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %.sink, ptr %19, align 4
  %21 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ctx, align 4
  %port_num = getelementptr inbounds %struct.ib_qp_init_attr, ptr %qp_init_attr, i32 0, i32 10
  %23 = ptrtoint ptr %port_num to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %port_num, align 4
  %qp_context = getelementptr inbounds %struct.ib_qp_init_attr, ptr %qp_init_attr, i32 0, i32 1
  %24 = ptrtoint ptr %qp_context to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %ctx, ptr %qp_context, align 4
  %25 = ptrtoint ptr %qp_init_attr to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @pv_qp_event_handler, ptr %qp_init_attr, align 4
  %pd = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, ptr %ctx, i32 0, i32 6
  %26 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pd, align 4
  %call.i = call ptr @ib_create_qp_kernel(ptr noundef %27, ptr noundef nonnull %qp_init_attr, ptr noundef nonnull @.str) #11
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call.i, ptr %arrayidx, align 4
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then31, label %if.end38

if.then31:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  %29 = ptrtoint ptr %call.i to i32
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %arrayidx, align 4
  %cond36 = select i1 %tobool.not, ptr @.str.81, ptr @.str.80
  %call37 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.79, ptr noundef nonnull %cond36, i32 noundef %29) #14
  br label %cleanup

if.end38:                                         ; preds = %if.end22
  %31 = call ptr @memset(ptr %attr, i32 0, i32 216)
  %32 = ptrtoint ptr %attr to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1, ptr %attr, align 8
  br i1 %tobool.not, label %if.end38.if.then48_crit_edge, label %if.then40

if.end38.if.then48_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then48

if.then40:                                        ; preds = %if.end38
  %ib_dev = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, ptr %ctx, i32 0, i32 4
  %33 = ptrtoint ptr %ib_dev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ib_dev, align 4
  %slave42 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, ptr %ctx, i32 0, i32 1
  %35 = ptrtoint ptr %slave42 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %slave42, align 4
  %37 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %ctx, align 4
  %pkey_index = getelementptr inbounds %struct.ib_qp_attr, ptr %attr, i32 0, i32 12
  %call44 = call fastcc i32 @find_slave_port_pkey_ix(ptr noundef %34, i32 noundef %36, i32 noundef %38, i16 noundef zeroext -1, ptr noundef %pkey_index)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %phi.cmp = icmp eq i32 %call44, 0
  br i1 %phi.cmp, label %if.then40.if.end57_crit_edge, label %if.then40.if.then48_crit_edge

if.then40.if.then48_crit_edge:                    ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then48

if.then40.if.end57_crit_edge:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end57

if.then48:                                        ; preds = %if.then40.if.then48_crit_edge, %if.end38.if.then48_crit_edge
  %ib_dev49 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, ptr %ctx, i32 0, i32 4
  %39 = ptrtoint ptr %ib_dev49 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ib_dev49, align 4
  %pkeys = getelementptr inbounds %struct.mlx4_ib_dev, ptr %40, i32 0, i32 21
  %slave51 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, ptr %ctx, i32 0, i32 1
  %41 = ptrtoint ptr %slave51 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %slave51, align 4
  %43 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %ctx, align 4
  %sub = add i32 %44, -1
  %arrayidx54 = getelementptr [128 x [2 x [128 x i8]]], ptr %pkeys, i32 0, i32 %42, i32 %sub
  %45 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx54, align 8
  %conv = zext i8 %46 to i16
  %pkey_index56 = getelementptr inbounds %struct.ib_qp_attr, ptr %attr, i32 0, i32 12
  %47 = ptrtoint ptr %pkey_index56 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %conv, ptr %pkey_index56, align 8
  br label %if.end57

if.end57:                                         ; preds = %if.then48, %if.then40.if.end57_crit_edge
  %qkey = getelementptr inbounds %struct.ib_qp_attr, ptr %attr, i32 0, i32 4
  %48 = ptrtoint ptr %qkey to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 -2147418112, ptr %qkey, align 8
  %49 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %ctx, align 4
  %port_num59 = getelementptr inbounds %struct.ib_qp_attr, ptr %attr, i32 0, i32 19
  %51 = ptrtoint ptr %port_num59 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %port_num59, align 4
  %52 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx, align 4
  %call61 = call i32 @ib_modify_qp(ptr noundef %53, ptr noundef nonnull %attr, i32 noundef %qp_attr_mask_INIT.0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.end71, label %do.end66

do.end66:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #13
  %cond69 = select i1 %tobool.not, ptr @.str.81, ptr @.str.80
  %call70 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.79, ptr noundef nonnull %cond69, i32 noundef %call61) #14
  br label %err_qp

if.end71:                                         ; preds = %if.end57
  %54 = ptrtoint ptr %attr to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 2, ptr %attr, align 8
  %55 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx, align 4
  %call74 = call i32 @ib_modify_qp(ptr noundef %56, ptr noundef nonnull %attr, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %if.end84, label %do.end79

do.end79:                                         ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #13
  %cond82 = select i1 %tobool.not, ptr @.str.81, ptr @.str.80
  %call83 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.79, ptr noundef nonnull %cond82, i32 noundef %call74) #14
  br label %err_qp

if.end84:                                         ; preds = %if.end71
  %57 = ptrtoint ptr %attr to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 3, ptr %attr, align 8
  %sq_psn = getelementptr inbounds %struct.ib_qp_attr, ptr %attr, i32 0, i32 6
  %58 = ptrtoint ptr %sq_psn to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %sq_psn, align 8
  %59 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx, align 4
  %call87 = call i32 @ib_modify_qp(ptr noundef %60, ptr noundef nonnull %attr, i32 noundef 65537) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %for.cond.preheader, label %do.end92

for.cond.preheader:                               ; preds = %if.end84
  %61 = getelementptr inbounds %struct.ib_sge, ptr %sg_list.i, i32 0, i32 1
  %62 = getelementptr inbounds %struct.ib_sge, ptr %sg_list.i, i32 0, i32 2
  %ring.i = getelementptr %struct.mlx4_ib_demux_pv_ctx, ptr %ctx, i32 0, i32 10, i32 %qp_type, i32 2
  %sg_list1.i = getelementptr inbounds %struct.ib_recv_wr, ptr %recv_wr.i, i32 0, i32 2
  %num_sge.i = getelementptr inbounds %struct.ib_recv_wr, ptr %recv_wr.i, i32 0, i32 3
  %proxy_qpt.i = getelementptr %struct.mlx4_ib_demux_pv_ctx, ptr %ctx, i32 0, i32 10, i32 %qp_type, i32 1
  %63 = getelementptr inbounds %struct.ib_recv_wr, ptr %recv_wr.i, i32 0, i32 1
  %ib_dev.i = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, ptr %ctx, i32 0, i32 4
  br label %for.body

do.end92:                                         ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #13
  %cond95 = select i1 %tobool.not, ptr @.str.81, ptr @.str.80
  %call96 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.79, ptr noundef nonnull %cond95, i32 noundef %call87) #14
  br label %err_qp

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %i.0171 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.inc.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %sg_list.i) #11
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %recv_wr.i) #11
  %64 = ptrtoint ptr %recv_wr.i to i32
  call void @__asan_store8_noabort(i32 %64)
  store i64 -1, ptr %recv_wr.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bad_recv_wr.i) #11
  %65 = ptrtoint ptr %bad_recv_wr.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr inttoptr (i32 -1 to ptr), ptr %bad_recv_wr.i, align 4, !annotation !280
  %66 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %arrayidx, align 4
  %qp_type.i = getelementptr inbounds %struct.ib_qp, ptr %67, i32 0, i32 22
  %68 = ptrtoint ptr %qp_type.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %qp_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %69)
  %cmp.i168 = icmp eq i32 %69, 4
  %cond.i = select i1 %cmp.i168, i32 352, i32 296
  %70 = ptrtoint ptr %ring.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %ring.i, align 4
  %map.i = getelementptr %struct.mlx4_ib_buf, ptr %71, i32 %i.0171, i32 1
  %72 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %map.i, align 4
  %conv.i = zext i32 %73 to i64
  %74 = ptrtoint ptr %sg_list.i to i32
  call void @__asan_store8_noabort(i32 %74)
  store i64 %conv.i, ptr %sg_list.i, align 8
  %75 = ptrtoint ptr %61 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %cond.i, ptr %61, align 8
  %76 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %pd, align 4
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %77, align 4
  %80 = ptrtoint ptr %62 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %79, ptr %62, align 4
  %81 = ptrtoint ptr %recv_wr.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr null, ptr %recv_wr.i, align 8
  %82 = ptrtoint ptr %sg_list1.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %sg_list.i, ptr %sg_list1.i, align 8
  %83 = ptrtoint ptr %num_sge.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 1, ptr %num_sge.i, align 4
  %conv2.i = zext i32 %i.0171 to i64
  %84 = ptrtoint ptr %proxy_qpt.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %proxy_qpt.i, align 4
  %and.i = and i32 %85, 3
  %conv3.i = zext i32 %and.i to i64
  %shl.i = shl nuw nsw i64 %conv3.i, 32
  %or.i = or i64 %shl.i, %conv2.i
  %or4.i = or i64 %or.i, 17179869184
  %86 = ptrtoint ptr %63 to i32
  call void @__asan_store8_noabort(i32 %86)
  store i64 %or4.i, ptr %63, align 8
  %87 = ptrtoint ptr %ib_dev.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %ib_dev.i, align 4
  %89 = load i32, ptr %map.i, align 4
  %90 = ptrtoint ptr %88 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %88, align 8
  call void @dma_sync_single_for_device(ptr noundef %91, i32 noundef %89, i32 noundef %cond.i, i32 noundef 2) #11
  %92 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %arrayidx, align 4
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %93, align 4
  %post_recv.i.i = getelementptr inbounds %struct.ib_device, ptr %95, i32 0, i32 1, i32 7
  %96 = ptrtoint ptr %post_recv.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %post_recv.i.i, align 4
  %call.i.i = call i32 %97(ptr noundef %93, ptr noundef nonnull %recv_wr.i, ptr noundef nonnull %bad_recv_wr.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bad_recv_wr.i) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %recv_wr.i) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %sg_list.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool101.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool101.not, label %for.inc, label %do.end105

do.end105:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %call107 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92, ptr noundef nonnull @.str.79, i32 noundef %call.i.i, i32 noundef %i.0171) #14
  br label %err_qp

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.0171, 1
  %exitcond.not = icmp eq i32 %inc, %cond
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

err_qp:                                           ; preds = %do.end105, %do.end92, %do.end79, %do.end66
  %ret.1 = phi i32 [ %call61, %do.end66 ], [ %call74, %do.end79 ], [ %call87, %do.end92 ], [ %call.i.i, %do.end105 ]
  %98 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %arrayidx, align 4
  %call.i169 = call i32 @ib_destroy_qp_user(ptr noundef %99, ptr noundef null) #11
  %100 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr null, ptr %arrayidx, align 4
  br label %cleanup

cleanup:                                          ; preds = %err_qp, %for.inc.cleanup_crit_edge, %if.then31
  %retval.0 = phi i32 [ %29, %if.then31 ], [ %ret.1, %err_qp ], [ 0, %for.inc.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 216, ptr nonnull %attr) #11
  call void @llvm.lifetime.end.p0(i64 84, ptr nonnull %qp_init_attr) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx4_ib_tunnel_comp_worker(ptr noundef %work) #0 align 64 {
entry:
  %sg_list.i = alloca %struct.ib_sge, align 8
  %recv_wr.i = alloca %struct.ib_recv_wr, align 8
  %bad_recv_wr.i = alloca ptr, align 4
  %wc = alloca %struct.ib_wc, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %wc) #11
  %0 = call ptr @memset(ptr %wc, i32 255, i32 64)
  %add.ptr = getelementptr i8, ptr %work, i32 -28
  %cq = getelementptr i8, ptr %work, i32 -8
  %1 = ptrtoint ptr %cq to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cq, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 8
  %req_notify_cq.i = getelementptr inbounds %struct.ib_device, ptr %4, i32 0, i32 1, i32 12
  %5 = ptrtoint ptr %req_notify_cq.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %req_notify_cq.i, align 4
  %call.i = tail call i32 %6(ptr noundef %2, i32 noundef 2) #11
  %7 = ptrtoint ptr %cq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cq, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 8
  %poll_cq.i75 = getelementptr inbounds %struct.ib_device, ptr %10, i32 0, i32 1, i32 10
  %11 = ptrtoint ptr %poll_cq.i75 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %poll_cq.i75, align 4
  %call.i6576 = call i32 %12(ptr noundef %8, i32 noundef 1, ptr noundef nonnull %wc) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i6576)
  %cmp77 = icmp eq i32 %call.i6576, 1
  br i1 %cmp77, label %while.body.lr.ph, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %qp = getelementptr i8, ptr %work, i32 52
  %status = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 1
  %slave = getelementptr i8, ptr %work, i32 -24
  %opcode = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 2
  %13 = getelementptr inbounds %struct.ib_sge, ptr %sg_list.i, i32 0, i32 1
  %14 = getelementptr inbounds %struct.ib_sge, ptr %sg_list.i, i32 0, i32 2
  %pd.i = getelementptr i8, ptr %work, i32 -4
  %sg_list1.i = getelementptr inbounds %struct.ib_recv_wr, ptr %recv_wr.i, i32 0, i32 2
  %num_sge.i = getelementptr inbounds %struct.ib_recv_wr, ptr %recv_wr.i, i32 0, i32 3
  %15 = getelementptr inbounds %struct.ib_recv_wr, ptr %recv_wr.i, i32 0, i32 1
  %ib_dev.i = getelementptr i8, ptr %work, i32 -12
  br label %while.body

while.body:                                       ; preds = %if.end49.while.body_crit_edge, %while.body.lr.ph
  %16 = ptrtoint ptr %wc to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %wc, align 8
  %shr = lshr i64 %17, 32
  %18 = trunc i64 %shr to i32
  %idxprom = and i32 %18, 3
  %arrayidx = getelementptr [2 x %struct.mlx4_ib_demux_pv_qp], ptr %qp, i32 0, i32 %idxprom
  %19 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %status, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp3 = icmp eq i32 %20, 0
  br i1 %cmp3, label %if.then, label %do.body19

if.then:                                          ; preds = %while.body
  %21 = ptrtoint ptr %opcode to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %opcode, align 4
  %23 = zext i32 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.163)
  switch i32 %22, label %if.then.if.end49_crit_edge [
    i32 128, label %sw.bb
    i32 0, label %sw.bb9
  ]

if.then.if.end49_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end49

sw.bb:                                            ; preds = %if.then
  call fastcc void @mlx4_ib_multiplex_mad(ptr noundef %add.ptr, ptr noundef nonnull %wc)
  %24 = ptrtoint ptr %wc to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %wc, align 8
  %26 = trunc i64 %25 to i32
  %conv = and i32 %26, 511
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %sg_list.i) #11
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %recv_wr.i) #11
  %27 = ptrtoint ptr %recv_wr.i to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 -1, ptr %recv_wr.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bad_recv_wr.i) #11
  %28 = ptrtoint ptr %bad_recv_wr.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr inttoptr (i32 -1 to ptr), ptr %bad_recv_wr.i, align 4, !annotation !280
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx, align 4
  %qp_type.i = getelementptr inbounds %struct.ib_qp, ptr %30, i32 0, i32 22
  %31 = ptrtoint ptr %qp_type.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %qp_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %32)
  %cmp.i = icmp eq i32 %32, 4
  %cond.i = select i1 %cmp.i, i32 352, i32 296
  %ring.i = getelementptr inbounds %struct.mlx4_ib_demux_pv_qp, ptr %arrayidx, i32 0, i32 2
  %33 = ptrtoint ptr %ring.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ring.i, align 4
  %map.i = getelementptr %struct.mlx4_ib_buf, ptr %34, i32 %conv, i32 1
  %35 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %map.i, align 4
  %conv.i = zext i32 %36 to i64
  %37 = ptrtoint ptr %sg_list.i to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %conv.i, ptr %sg_list.i, align 8
  %38 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %cond.i, ptr %13, align 8
  %39 = ptrtoint ptr %pd.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pd.i, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %40, align 4
  %43 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %14, align 4
  %44 = ptrtoint ptr %recv_wr.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %recv_wr.i, align 8
  %45 = ptrtoint ptr %sg_list1.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %sg_list.i, ptr %sg_list1.i, align 8
  %46 = ptrtoint ptr %num_sge.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 1, ptr %num_sge.i, align 4
  %conv2.i74 = zext i32 %conv to i64
  %proxy_qpt.i = getelementptr inbounds %struct.mlx4_ib_demux_pv_qp, ptr %arrayidx, i32 0, i32 1
  %47 = ptrtoint ptr %proxy_qpt.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %proxy_qpt.i, align 4
  %and.i = and i32 %48, 3
  %conv3.i = zext i32 %and.i to i64
  %shl.i = shl nuw nsw i64 %conv3.i, 32
  %or.i = or i64 %shl.i, %conv2.i74
  %or4.i = or i64 %or.i, 17179869184
  %49 = ptrtoint ptr %15 to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 %or4.i, ptr %15, align 8
  %50 = ptrtoint ptr %ib_dev.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ib_dev.i, align 4
  %52 = load i32, ptr %map.i, align 4
  %53 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %51, align 8
  call void @dma_sync_single_for_device(ptr noundef %54, i32 noundef %52, i32 noundef %cond.i, i32 noundef 2) #11
  %55 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx, align 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %56, align 4
  %post_recv.i.i = getelementptr inbounds %struct.ib_device, ptr %58, i32 0, i32 1, i32 7
  %59 = ptrtoint ptr %post_recv.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %post_recv.i.i, align 4
  %call.i.i = call i32 %60(ptr noundef %56, ptr noundef nonnull %recv_wr.i, ptr noundef nonnull %bad_recv_wr.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bad_recv_wr.i) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %recv_wr.i) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %sg_list.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not, label %sw.bb.if.end49_crit_edge, label %do.end

sw.bb.if.end49_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end49

do.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  %61 = ptrtoint ptr %wc to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %wc, align 8
  %call8 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.97, i64 noundef %62) #14
  br label %if.end49

sw.bb9:                                           ; preds = %if.then
  %tx_ring = getelementptr inbounds %struct.mlx4_ib_demux_pv_qp, ptr %arrayidx, i32 0, i32 3
  %63 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %tx_ring, align 4
  %65 = trunc i64 %17 to i32
  %idxprom11 = and i32 %65, 511
  %ah = getelementptr %struct.mlx4_ib_tun_tx_buf, ptr %64, i32 %idxprom11, i32 1
  %66 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ah, align 4
  %call.i66 = call i32 @rdma_destroy_ah_user(ptr noundef %67, i32 noundef 0, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i66)
  %tobool.not.i = icmp eq i32 %call.i66, 0
  br i1 %tobool.not.i, label %sw.bb9.rdma_destroy_ah.exit_crit_edge, label %land.rhs.i

sw.bb9.rdma_destroy_ah.exit_crit_edge:            ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #13
  br label %rdma_destroy_ah.exit

land.rhs.i:                                       ; preds = %sw.bb9
  %.b1.i = load i1, ptr @rdma_destroy_ah.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.rdma_destroy_ah.exit_crit_edge, label %if.then.i, !prof !279

land.rhs.i.rdma_destroy_ah.exit_crit_edge:        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rdma_destroy_ah.exit

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rdma_destroy_ah.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.37, i32 noundef 3630, i32 noundef 9, ptr noundef nonnull @.str.38) #11
  br label %rdma_destroy_ah.exit

rdma_destroy_ah.exit:                             ; preds = %if.then.i, %land.rhs.i.rdma_destroy_ah.exit_crit_edge, %sw.bb9.rdma_destroy_ah.exit_crit_edge
  %68 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %tx_ring, align 4
  %70 = ptrtoint ptr %wc to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %wc, align 8
  %72 = trunc i64 %71 to i32
  %idxprom15 = and i32 %72, 511
  %ah17 = getelementptr %struct.mlx4_ib_tun_tx_buf, ptr %69, i32 %idxprom15, i32 1
  %73 = ptrtoint ptr %ah17 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr null, ptr %ah17, align 4
  %tx_lock = getelementptr inbounds %struct.mlx4_ib_demux_pv_qp, ptr %arrayidx, i32 0, i32 4
  call void @_raw_spin_lock(ptr noundef %tx_lock) #11
  %tx_ix_tail = getelementptr inbounds %struct.mlx4_ib_demux_pv_qp, ptr %arrayidx, i32 0, i32 6
  %74 = ptrtoint ptr %tx_ix_tail to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %tx_ix_tail, align 4
  %inc = add i32 %75, 1
  store i32 %inc, ptr %tx_ix_tail, align 4
  call void @_raw_spin_unlock(ptr noundef %tx_lock) #11
  br label %if.end49

do.body19:                                        ; preds = %while.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx4_ib_tunnel_comp_worker.__UNIQUE_ID_ddebug522, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx4_ib_tunnel_comp_worker, %if.then25)) #11
          to label %do.end29 [label %if.then25], !srcloc !281

if.then25:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #13
  %76 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %slave, align 4
  %78 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %status, align 8
  %80 = ptrtoint ptr %wc to i32
  call void @__asan_load8_noabort(i32 %80)
  %81 = load i64, ptr %wc, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mlx4_ib_tunnel_comp_worker.__UNIQUE_ID_ddebug522, ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.97, i32 noundef %77, i32 noundef %79, i64 noundef %81) #11
  br label %do.end29

do.end29:                                         ; preds = %if.then25, %do.body19
  %82 = ptrtoint ptr %wc to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %wc, align 8
  %84 = and i64 %83, 17179869184
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %84)
  %tobool32.not = icmp eq i64 %84, 0
  br i1 %tobool32.not, label %if.then33, label %do.end29.if.end49_crit_edge

do.end29.if.end49_crit_edge:                      ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end49

if.then33:                                        ; preds = %do.end29
  %tx_ring34 = getelementptr inbounds %struct.mlx4_ib_demux_pv_qp, ptr %arrayidx, i32 0, i32 3
  %85 = ptrtoint ptr %tx_ring34 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %tx_ring34, align 4
  %87 = trunc i64 %83 to i32
  %idxprom36 = and i32 %87, 511
  %ah38 = getelementptr %struct.mlx4_ib_tun_tx_buf, ptr %86, i32 %idxprom36, i32 1
  %88 = ptrtoint ptr %ah38 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %ah38, align 4
  %call.i67 = call i32 @rdma_destroy_ah_user(ptr noundef %89, i32 noundef 0, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i67)
  %tobool.not.i68 = icmp eq i32 %call.i67, 0
  br i1 %tobool.not.i68, label %if.then33.rdma_destroy_ah.exit72_crit_edge, label %land.rhs.i70

if.then33.rdma_destroy_ah.exit72_crit_edge:       ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #13
  br label %rdma_destroy_ah.exit72

land.rhs.i70:                                     ; preds = %if.then33
  %.b1.i69 = load i1, ptr @rdma_destroy_ah.__already_done, align 1
  br i1 %.b1.i69, label %land.rhs.i70.rdma_destroy_ah.exit72_crit_edge, label %if.then.i71, !prof !279

land.rhs.i70.rdma_destroy_ah.exit72_crit_edge:    ; preds = %land.rhs.i70
  call void @__sanitizer_cov_trace_pc() #13
  br label %rdma_destroy_ah.exit72

if.then.i71:                                      ; preds = %land.rhs.i70
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rdma_destroy_ah.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.37, i32 noundef 3630, i32 noundef 9, ptr noundef nonnull @.str.38) #11
  br label %rdma_destroy_ah.exit72

rdma_destroy_ah.exit72:                           ; preds = %if.then.i71, %land.rhs.i70.rdma_destroy_ah.exit72_crit_edge, %if.then33.rdma_destroy_ah.exit72_crit_edge
  %90 = ptrtoint ptr %tx_ring34 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %tx_ring34, align 4
  %92 = ptrtoint ptr %wc to i32
  call void @__asan_load8_noabort(i32 %92)
  %93 = load i64, ptr %wc, align 8
  %94 = trunc i64 %93 to i32
  %idxprom41 = and i32 %94, 511
  %ah43 = getelementptr %struct.mlx4_ib_tun_tx_buf, ptr %91, i32 %idxprom41, i32 1
  %95 = ptrtoint ptr %ah43 to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr null, ptr %ah43, align 4
  %tx_lock44 = getelementptr inbounds %struct.mlx4_ib_demux_pv_qp, ptr %arrayidx, i32 0, i32 4
  call void @_raw_spin_lock(ptr noundef %tx_lock44) #11
  %tx_ix_tail45 = getelementptr inbounds %struct.mlx4_ib_demux_pv_qp, ptr %arrayidx, i32 0, i32 6
  %96 = ptrtoint ptr %tx_ix_tail45 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %tx_ix_tail45, align 4
  %inc46 = add i32 %97, 1
  store i32 %inc46, ptr %tx_ix_tail45, align 4
  call void @_raw_spin_unlock(ptr noundef %tx_lock44) #11
  br label %if.end49

if.end49:                                         ; preds = %rdma_destroy_ah.exit72, %do.end29.if.end49_crit_edge, %rdma_destroy_ah.exit, %do.end, %sw.bb.if.end49_crit_edge, %if.then.if.end49_crit_edge
  %98 = ptrtoint ptr %cq to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %cq, align 4
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %99, align 8
  %poll_cq.i = getelementptr inbounds %struct.ib_device, ptr %101, i32 0, i32 1, i32 10
  %102 = ptrtoint ptr %poll_cq.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %poll_cq.i, align 4
  %call.i65 = call i32 %103(ptr noundef %99, i32 noundef 1, ptr noundef nonnull %wc) #11
  %cmp = icmp eq i32 %call.i65, 1
  br i1 %cmp, label %if.end49.while.body_crit_edge, label %if.end49.while.end_crit_edge

if.end49.while.end_crit_edge:                     ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

if.end49.while.body_crit_edge:                    ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.end:                                        ; preds = %if.end49.while.end_crit_edge, %entry.while.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %wc) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx4_ib_sqp_comp_worker(ptr noundef %work) #0 align 64 {
entry:
  %sg_list.i = alloca %struct.ib_sge, align 8
  %recv_wr.i = alloca %struct.ib_recv_wr, align 8
  %bad_recv_wr.i = alloca ptr, align 4
  %wc = alloca %struct.ib_wc, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %wc) #11
  %0 = call ptr @memset(ptr %wc, i32 255, i32 64)
  %add.ptr = getelementptr i8, ptr %work, i32 -28
  %cq = getelementptr i8, ptr %work, i32 -8
  %1 = ptrtoint ptr %cq to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cq, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 8
  %req_notify_cq.i = getelementptr inbounds %struct.ib_device, ptr %4, i32 0, i32 1, i32 12
  %5 = ptrtoint ptr %req_notify_cq.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %req_notify_cq.i, align 4
  %call.i = tail call i32 %6(ptr noundef %2, i32 noundef 2) #11
  %7 = ptrtoint ptr %cq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cq, align 4
  %call280 = call i32 @mlx4_ib_poll_cq(ptr noundef %8, i32 noundef 1, ptr noundef nonnull %wc) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call280)
  %cmp81 = icmp eq i32 %call280, 1
  br i1 %cmp81, label %while.body.lr.ph, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %qp = getelementptr i8, ptr %work, i32 52
  %status = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 1
  %slave = getelementptr i8, ptr %work, i32 -24
  %opcode = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 2
  %ib_dev = getelementptr i8, ptr %work, i32 -12
  %9 = getelementptr inbounds %struct.ib_sge, ptr %sg_list.i, i32 0, i32 1
  %10 = getelementptr inbounds %struct.ib_sge, ptr %sg_list.i, i32 0, i32 2
  %pd.i = getelementptr i8, ptr %work, i32 -4
  %sg_list1.i = getelementptr inbounds %struct.ib_recv_wr, ptr %recv_wr.i, i32 0, i32 2
  %num_sge.i = getelementptr inbounds %struct.ib_recv_wr, ptr %recv_wr.i, i32 0, i32 3
  %11 = getelementptr inbounds %struct.ib_recv_wr, ptr %recv_wr.i, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %if.end59.while.body_crit_edge, %while.body.lr.ph
  %12 = ptrtoint ptr %wc to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %wc, align 8
  %shr = lshr i64 %13, 32
  %14 = trunc i64 %shr to i32
  %idxprom = and i32 %14, 3
  %arrayidx = getelementptr [2 x %struct.mlx4_ib_demux_pv_qp], ptr %qp, i32 0, i32 %idxprom
  %15 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %status, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp3 = icmp eq i32 %16, 0
  br i1 %cmp3, label %if.then, label %do.body29

if.then:                                          ; preds = %while.body
  %17 = ptrtoint ptr %opcode to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %opcode, align 4
  %19 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.164)
  switch i32 %18, label %if.then.if.end59_crit_edge [
    i32 0, label %sw.bb
    i32 128, label %sw.bb13
  ]

if.then.if.end59_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end59

sw.bb:                                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %tx_ring = getelementptr inbounds %struct.mlx4_ib_demux_pv_qp, ptr %arrayidx, i32 0, i32 3
  %20 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tx_ring, align 4
  %22 = trunc i64 %13 to i32
  %idxprom5 = and i32 %22, 2047
  %ah = getelementptr %struct.mlx4_ib_tun_tx_buf, ptr %21, i32 %idxprom5, i32 1
  %23 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ah, align 4
  call void @kfree(ptr noundef %24) #11
  %25 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %tx_ring, align 4
  %27 = ptrtoint ptr %wc to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %wc, align 8
  %29 = trunc i64 %28 to i32
  %idxprom9 = and i32 %29, 2047
  %ah11 = getelementptr %struct.mlx4_ib_tun_tx_buf, ptr %26, i32 %idxprom9, i32 1
  %30 = ptrtoint ptr %ah11 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %ah11, align 4
  %tx_lock = getelementptr inbounds %struct.mlx4_ib_demux_pv_qp, ptr %arrayidx, i32 0, i32 4
  call void @_raw_spin_lock(ptr noundef %tx_lock) #11
  %tx_ix_tail = getelementptr inbounds %struct.mlx4_ib_demux_pv_qp, ptr %arrayidx, i32 0, i32 6
  %31 = ptrtoint ptr %tx_ix_tail to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %tx_ix_tail, align 4
  %inc = add i32 %32, 1
  store i32 %inc, ptr %tx_ix_tail, align 4
  call void @_raw_spin_unlock(ptr noundef %tx_lock) #11
  br label %if.end59

sw.bb13:                                          ; preds = %if.then
  %ring = getelementptr inbounds %struct.mlx4_ib_demux_pv_qp, ptr %arrayidx, i32 0, i32 2
  %33 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ring, align 4
  %35 = trunc i64 %13 to i32
  %idxprom15 = and i32 %35, 2047
  %arrayidx16 = getelementptr %struct.mlx4_ib_buf, ptr %34, i32 %idxprom15
  %36 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx16, align 4
  %payload = getelementptr inbounds %struct.mlx4_mad_rcv_buf, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %ib_dev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ib_dev, align 4
  %40 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %add.ptr, align 4
  call fastcc void @mlx4_ib_demux_mad(ptr noundef %39, i32 noundef %41, ptr noundef nonnull %wc, ptr noundef %37, ptr noundef %payload)
  %42 = ptrtoint ptr %wc to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %wc, align 8
  %44 = trunc i64 %43 to i32
  %conv = and i32 %44, 2047
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %sg_list.i) #11
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %recv_wr.i) #11
  %45 = ptrtoint ptr %recv_wr.i to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 -1, ptr %recv_wr.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bad_recv_wr.i) #11
  %46 = ptrtoint ptr %bad_recv_wr.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr inttoptr (i32 -1 to ptr), ptr %bad_recv_wr.i, align 4, !annotation !280
  %47 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx, align 4
  %qp_type.i = getelementptr inbounds %struct.ib_qp, ptr %48, i32 0, i32 22
  %49 = ptrtoint ptr %qp_type.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %qp_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %50)
  %cmp.i = icmp eq i32 %50, 4
  %cond.i = select i1 %cmp.i, i32 352, i32 296
  %51 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ring, align 4
  %map.i = getelementptr %struct.mlx4_ib_buf, ptr %52, i32 %conv, i32 1
  %53 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %map.i, align 4
  %conv.i = zext i32 %54 to i64
  %55 = ptrtoint ptr %sg_list.i to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 %conv.i, ptr %sg_list.i, align 8
  %56 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %cond.i, ptr %9, align 8
  %57 = ptrtoint ptr %pd.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %pd.i, align 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %58, align 4
  %61 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %10, align 4
  %62 = ptrtoint ptr %recv_wr.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr null, ptr %recv_wr.i, align 8
  %63 = ptrtoint ptr %sg_list1.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %sg_list.i, ptr %sg_list1.i, align 8
  %64 = ptrtoint ptr %num_sge.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 1, ptr %num_sge.i, align 4
  %conv2.i79 = zext i32 %conv to i64
  %proxy_qpt.i = getelementptr inbounds %struct.mlx4_ib_demux_pv_qp, ptr %arrayidx, i32 0, i32 1
  %65 = ptrtoint ptr %proxy_qpt.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %proxy_qpt.i, align 4
  %and.i = and i32 %66, 3
  %conv3.i = zext i32 %and.i to i64
  %shl.i = shl nuw nsw i64 %conv3.i, 32
  %or.i = or i64 %shl.i, %conv2.i79
  %or4.i = or i64 %or.i, 17179869184
  %67 = ptrtoint ptr %11 to i32
  call void @__asan_store8_noabort(i32 %67)
  store i64 %or4.i, ptr %11, align 8
  %68 = ptrtoint ptr %ib_dev to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %ib_dev, align 4
  %70 = load i32, ptr %map.i, align 4
  %71 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %69, align 8
  call void @dma_sync_single_for_device(ptr noundef %72, i32 noundef %70, i32 noundef %cond.i, i32 noundef 2) #11
  %73 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %arrayidx, align 4
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %74, align 4
  %post_recv.i.i = getelementptr inbounds %struct.ib_device, ptr %76, i32 0, i32 1, i32 7
  %77 = ptrtoint ptr %post_recv.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %post_recv.i.i, align 4
  %call.i.i = call i32 %78(ptr noundef %74, ptr noundef nonnull %recv_wr.i, ptr noundef nonnull %bad_recv_wr.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bad_recv_wr.i) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %recv_wr.i) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %sg_list.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not, label %sw.bb13.if.end59_crit_edge, label %do.end

sw.bb13.if.end59_crit_edge:                       ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end59

do.end:                                           ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #13
  %79 = ptrtoint ptr %wc to i32
  call void @__asan_load8_noabort(i32 %79)
  %80 = load i64, ptr %wc, align 8
  %call28 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.113, ptr noundef nonnull @.str.114, i64 noundef %80) #14
  br label %if.end59

do.body29:                                        ; preds = %while.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx4_ib_sqp_comp_worker.__UNIQUE_ID_ddebug523, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx4_ib_sqp_comp_worker, %if.then35)) #11
          to label %do.end39 [label %if.then35], !srcloc !281

if.then35:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #13
  %81 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %slave, align 4
  %83 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %status, align 8
  %85 = ptrtoint ptr %wc to i32
  call void @__asan_load8_noabort(i32 %85)
  %86 = load i64, ptr %wc, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mlx4_ib_sqp_comp_worker.__UNIQUE_ID_ddebug523, ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.114, i32 noundef %82, i32 noundef %84, i64 noundef %86) #11
  br label %do.end39

do.end39:                                         ; preds = %if.then35, %do.body29
  %87 = ptrtoint ptr %wc to i32
  call void @__asan_load8_noabort(i32 %87)
  %88 = load i64, ptr %wc, align 8
  %89 = and i64 %88, 17179869184
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %89)
  %tobool42.not = icmp eq i64 %89, 0
  br i1 %tobool42.not, label %if.then43, label %do.end39.if.end59_crit_edge

do.end39.if.end59_crit_edge:                      ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end59

if.then43:                                        ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #13
  %tx_ring44 = getelementptr inbounds %struct.mlx4_ib_demux_pv_qp, ptr %arrayidx, i32 0, i32 3
  %90 = ptrtoint ptr %tx_ring44 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %tx_ring44, align 4
  %92 = trunc i64 %88 to i32
  %idxprom46 = and i32 %92, 2047
  %ah48 = getelementptr %struct.mlx4_ib_tun_tx_buf, ptr %91, i32 %idxprom46, i32 1
  %93 = ptrtoint ptr %ah48 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %ah48, align 4
  call void @kfree(ptr noundef %94) #11
  %95 = ptrtoint ptr %tx_ring44 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %tx_ring44, align 4
  %97 = ptrtoint ptr %wc to i32
  call void @__asan_load8_noabort(i32 %97)
  %98 = load i64, ptr %wc, align 8
  %99 = trunc i64 %98 to i32
  %idxprom51 = and i32 %99, 2047
  %ah53 = getelementptr %struct.mlx4_ib_tun_tx_buf, ptr %96, i32 %idxprom51, i32 1
  %100 = ptrtoint ptr %ah53 to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr null, ptr %ah53, align 4
  %tx_lock54 = getelementptr inbounds %struct.mlx4_ib_demux_pv_qp, ptr %arrayidx, i32 0, i32 4
  call void @_raw_spin_lock(ptr noundef %tx_lock54) #11
  %tx_ix_tail55 = getelementptr inbounds %struct.mlx4_ib_demux_pv_qp, ptr %arrayidx, i32 0, i32 6
  %101 = ptrtoint ptr %tx_ix_tail55 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %tx_ix_tail55, align 4
  %inc56 = add i32 %102, 1
  store i32 %inc56, ptr %tx_ix_tail55, align 4
  call void @_raw_spin_unlock(ptr noundef %tx_lock54) #11
  br label %if.end59

if.end59:                                         ; preds = %if.then43, %do.end39.if.end59_crit_edge, %do.end, %sw.bb13.if.end59_crit_edge, %sw.bb, %if.then.if.end59_crit_edge
  %103 = ptrtoint ptr %cq to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %cq, align 4
  %call2 = call i32 @mlx4_ib_poll_cq(ptr noundef %104, i32 noundef 1, ptr noundef nonnull %wc) #11
  %cmp = icmp eq i32 %call2, 1
  br i1 %cmp, label %if.end59.while.body_crit_edge, label %if.end59.while.end_crit_edge

if.end59.while.end_crit_edge:                     ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

if.end59.while.body_crit_edge:                    ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.end:                                        ; preds = %if.end59.while.end_crit_edge, %entry.while.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %wc) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pv_qp_event_handler(ptr nocapture noundef readonly %event, ptr nocapture noundef readonly %qp_context) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %event1 = getelementptr inbounds %struct.ib_event, ptr %event, i32 0, i32 2
  %0 = ptrtoint ptr %event1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %event1, align 4
  %2 = ptrtoint ptr %qp_context to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %qp_context, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95, i32 noundef %1, i32 noundef %3) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_modify_qp(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ib_create_qp_kernel(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlx4_ib_multiplex_mad(ptr nocapture noundef readonly %ctx, ptr noundef %wc) unnamed_addr #0 align 64 {
entry:
  %ah = alloca %struct.mlx4_ib_ah, align 4
  %ah_attr = alloca %struct.rdma_ah_attr, align 8
  %vlan_id = alloca i16, align 2
  %qos = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ib_dev = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, ptr %ctx, i32 0, i32 4
  %0 = ptrtoint ptr %ib_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ib_dev, align 4
  %2 = ptrtoint ptr %wc to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %wc, align 8
  %shr = lshr i64 %3, 32
  %4 = trunc i64 %shr to i32
  %idxprom = and i32 %4, 3
  %5 = trunc i64 %3 to i32
  %conv = and i32 %5, 511
  %ring = getelementptr %struct.mlx4_ib_demux_pv_ctx, ptr %ctx, i32 0, i32 10, i32 %idxprom, i32 2
  %6 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ring, align 4
  %arrayidx2 = getelementptr %struct.mlx4_ib_buf, ptr %7, i32 %conv
  %8 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx2, align 4
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %ah) #11
  %10 = getelementptr inbounds i8, ptr %ah, i32 4
  %11 = call ptr @memset(ptr %10, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %ah_attr) #11
  %12 = call ptr @memset(ptr %ah_attr, i32 255, i32 56)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %vlan_id) #11
  %13 = ptrtoint ptr %vlan_id to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 -1, ptr %vlan_id, align 2, !annotation !280
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %qos) #11
  %14 = ptrtoint ptr %qos to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -1, ptr %qos, align 1, !annotation !280
  %src_qp = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 7
  %15 = ptrtoint ptr %src_qp to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %src_qp, align 8
  %dev3 = getelementptr inbounds %struct.mlx4_ib_dev, ptr %1, i32 0, i32 1
  %17 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev3, align 8
  %base_proxy_sqpn = getelementptr inbounds %struct.mlx4_dev, ptr %18, i32 0, i32 4, i32 4
  %19 = ptrtoint ptr %base_proxy_sqpn to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %base_proxy_sqpn, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %20)
  %cmp = icmp uge i32 %16, %20
  %add = add i32 %20, 1024
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %add)
  %cmp9.not = icmp ult i32 %16, %add
  %or.cond = and i1 %cmp, %cmp9.not
  br i1 %or.cond, label %lor.lhs.false11, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

lor.lhs.false11:                                  ; preds = %entry
  %and13 = and i32 %16, 1
  %21 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ctx, align 4
  %sub = add i32 %22, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %and13, i32 %sub)
  %cmp15.not = icmp eq i32 %and13, %sub
  %and19 = and i32 %16, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool.not = icmp eq i32 %and19, 0
  %or.cond280 = and i1 %tobool.not, %cmp15.not
  br i1 %or.cond280, label %if.end, label %lor.lhs.false11.do.end_crit_edge

lor.lhs.false11.do.end_crit_edge:                 ; preds = %lor.lhs.false11
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false11.do.end_crit_edge, %entry.do.end_crit_edge
  %parent = getelementptr inbounds %struct.ib_device, ptr %1, i32 0, i32 13, i32 0, i32 0, i32 1
  %23 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %parent, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %24, ptr noundef nonnull @.str.100, i32 noundef %16) #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false11
  %and23 = and i32 %16, -8
  %sub27 = sub i32 %and23, %20
  %div279 = lshr i32 %sub27, 3
  %slave28 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, ptr %ctx, i32 0, i32 1
  %25 = ptrtoint ptr %slave28 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %slave28, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div279, i32 %26)
  %cmp29.not = icmp eq i32 %div279, %26
  br i1 %cmp29.not, label %if.end38, label %do.end34

do.end34:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %parent36 = getelementptr inbounds %struct.ib_device, ptr %1, i32 0, i32 13, i32 0, i32 0, i32 1
  %27 = ptrtoint ptr %parent36 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %parent36, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %28, ptr noundef nonnull @.str.103, i32 noundef %16) #14
  br label %cleanup

if.end38:                                         ; preds = %if.end
  %map = getelementptr %struct.mlx4_ib_buf, ptr %7, i32 %conv, i32 1
  %29 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %map, align 4
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %1, align 8
  tail call void @dma_sync_single_for_cpu(ptr noundef %32, i32 noundef %30, i32 noundef 352, i32 noundef 2) #11
  %mad = getelementptr inbounds %struct.mlx4_tunnel_mad, ptr %9, i32 0, i32 2
  %method = getelementptr inbounds %struct.mlx4_tunnel_mad, ptr %9, i32 0, i32 2, i32 0, i32 3
  %33 = ptrtoint ptr %method to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %method, align 1
  %35 = zext i8 %34 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.165)
  switch i8 %34, label %if.end38.sw.epilog_crit_edge [
    i8 2, label %if.end38.sw.bb_crit_edge
    i8 1, label %if.end38.sw.bb_crit_edge299
    i8 6, label %if.end38.sw.bb_crit_edge300
    i8 18, label %if.end38.sw.bb_crit_edge301
    i8 21, label %if.end38.sw.bb_crit_edge302
    i8 20, label %if.end38.sw.bb_crit_edge303
    i8 19, label %if.end38.sw.bb_crit_edge304
  ]

if.end38.sw.bb_crit_edge304:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

if.end38.sw.bb_crit_edge303:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

if.end38.sw.bb_crit_edge302:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

if.end38.sw.bb_crit_edge301:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

if.end38.sw.bb_crit_edge300:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

if.end38.sw.bb_crit_edge299:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

if.end38.sw.bb_crit_edge:                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

if.end38.sw.epilog_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end38.sw.bb_crit_edge, %if.end38.sw.bb_crit_edge299, %if.end38.sw.bb_crit_edge300, %if.end38.sw.bb_crit_edge301, %if.end38.sw.bb_crit_edge302, %if.end38.sw.bb_crit_edge303, %if.end38.sw.bb_crit_edge304
  %tid = getelementptr inbounds %struct.mlx4_tunnel_mad, ptr %9, i32 0, i32 2, i32 0, i32 6
  %36 = ptrtoint ptr %tid to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %tid, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool46.not = icmp eq i8 %37, 0
  br i1 %tobool46.not, label %if.else, label %do.end50

do.end50:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  %38 = ptrtoint ptr %ib_dev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ib_dev, align 4
  %parent52 = getelementptr inbounds %struct.ib_device, ptr %39, i32 0, i32 13, i32 0, i32 0, i32 1
  %40 = ptrtoint ptr %parent52 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %parent52, align 8
  %conv53 = zext i8 %37 to i32
  %mgmt_class = getelementptr inbounds %struct.mlx4_tunnel_mad, ptr %9, i32 0, i32 2, i32 0, i32 1
  %42 = ptrtoint ptr %mgmt_class to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %mgmt_class, align 1
  %conv56 = zext i8 %43 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %41, ptr noundef nonnull @.str.106, i32 noundef %conv53, i32 noundef %conv56, i32 noundef %div279) #14
  br label %cleanup

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  %conv57 = trunc i32 %div279 to i8
  %44 = ptrtoint ptr %tid to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %conv57, ptr %tid, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else, %if.end38.sw.epilog_crit_edge
  %mgmt_class61 = getelementptr inbounds %struct.mlx4_tunnel_mad, ptr %9, i32 0, i32 2, i32 0, i32 1
  %45 = ptrtoint ptr %mgmt_class61 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %mgmt_class61, align 1
  %47 = zext i8 %46 to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values.166)
  switch i8 %46, label %sw.default106 [
    i8 1, label %sw.epilog.sw.bb63_crit_edge
    i8 -127, label %sw.epilog.sw.bb63_crit_edge305
    i8 3, label %sw.bb74
    i8 7, label %sw.bb82
    i8 6, label %sw.bb90
  ]

sw.epilog.sw.bb63_crit_edge305:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb63

sw.epilog.sw.bb63_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb63

sw.bb63:                                          ; preds = %sw.epilog.sw.bb63_crit_edge, %sw.epilog.sw.bb63_crit_edge305
  %48 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev3, align 8
  %function.i = getelementptr inbounds %struct.mlx4_dev, ptr %49, i32 0, i32 3, i32 1
  %50 = ptrtoint ptr %function.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %function.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %div279, i32 %51)
  %cmp66.not = icmp eq i32 %div279, %51
  br i1 %cmp66.not, label %sw.bb63.sw.epilog122_crit_edge, label %land.lhs.true

sw.bb63.sw.epilog122_crit_edge:                   ; preds = %sw.bb63
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog122

land.lhs.true:                                    ; preds = %sw.bb63
  %52 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %ctx, align 4
  %call70 = tail call i32 @mlx4_vf_smi_enabled(ptr noundef %49, i32 noundef %div279, i32 noundef %53) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.sw.epilog122_crit_edge

land.lhs.true.sw.epilog122_crit_edge:             ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog122

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb74:                                          ; preds = %sw.epilog
  %attr_id.i = getelementptr inbounds %struct.mlx4_tunnel_mad, ptr %9, i32 0, i32 2, i32 0, i32 7
  %54 = ptrtoint ptr %attr_id.i to i32
  call void @__asan_loadN_noabort(i32 %54, i32 2)
  %55 = load i16, ptr %attr_id.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 56, i16 %55)
  %cond.i = icmp eq i16 %55, 56
  br i1 %cond.i, label %mlx4_ib_multiplex_sa_handler.exit, label %sw.bb74.sw.epilog122_crit_edge

sw.bb74.sw.epilog122_crit_edge:                   ; preds = %sw.bb74
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog122

mlx4_ib_multiplex_sa_handler.exit:                ; preds = %sw.bb74
  %56 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %ctx, align 4
  %58 = ptrtoint ptr %ib_dev to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ib_dev, align 4
  %call.i = tail call i32 @mlx4_ib_mcg_multiplex_handler(ptr noundef %59, i32 noundef %57, i32 noundef %div279, ptr noundef %mad) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool79.not = icmp eq i32 %call.i, 0
  br i1 %tobool79.not, label %mlx4_ib_multiplex_sa_handler.exit.sw.epilog122_crit_edge, label %mlx4_ib_multiplex_sa_handler.exit.cleanup_crit_edge

mlx4_ib_multiplex_sa_handler.exit.cleanup_crit_edge: ; preds = %mlx4_ib_multiplex_sa_handler.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

mlx4_ib_multiplex_sa_handler.exit.sw.epilog122_crit_edge: ; preds = %mlx4_ib_multiplex_sa_handler.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog122

sw.bb82:                                          ; preds = %sw.epilog
  %60 = ptrtoint ptr %ib_dev to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %ib_dev, align 4
  %62 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %ctx, align 4
  %call86 = tail call i32 @mlx4_ib_multiplex_cm_handler(ptr noundef %61, i32 noundef %63, i32 noundef %div279, ptr noundef %mad) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %sw.bb82.sw.epilog122_crit_edge, label %sw.bb82.cleanup_crit_edge

sw.bb82.cleanup_crit_edge:                        ; preds = %sw.bb82
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb82.sw.epilog122_crit_edge:                   ; preds = %sw.bb82
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog122

sw.bb90:                                          ; preds = %sw.epilog
  %64 = ptrtoint ptr %method to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %method, align 1
  %.off = add i8 %65, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off)
  %switch = icmp ult i8 %.off, 2
  br i1 %switch, label %sw.bb90.sw.epilog122_crit_edge, label %sw.bb90.cleanup_crit_edge

sw.bb90.cleanup_crit_edge:                        ; preds = %sw.bb90
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb90.sw.epilog122_crit_edge:                   ; preds = %sw.bb90
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog122

sw.default106:                                    ; preds = %sw.epilog
  %66 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev3, align 8
  %function.i281 = getelementptr inbounds %struct.mlx4_dev, ptr %67, i32 0, i32 3, i32 1
  %68 = ptrtoint ptr %function.i281 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %function.i281, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %div279, i32 %69)
  %cmp109.not = icmp eq i32 %div279, %69
  br i1 %cmp109.not, label %sw.default106.sw.epilog122_crit_edge, label %do.end114

sw.default106.sw.epilog122_crit_edge:             ; preds = %sw.default106
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog122

do.end114:                                        ; preds = %sw.default106
  call void @__sanitizer_cov_trace_pc() #13
  %70 = ptrtoint ptr %ib_dev to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %ib_dev, align 4
  %parent116 = getelementptr inbounds %struct.ib_device, ptr %71, i32 0, i32 13, i32 0, i32 0, i32 1
  %72 = ptrtoint ptr %parent116 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %parent116, align 8
  %conv120 = zext i8 %46 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %73, ptr noundef nonnull @.str.109, i32 noundef %conv120, i32 noundef %div279) #14
  br label %cleanup

sw.epilog122:                                     ; preds = %sw.default106.sw.epilog122_crit_edge, %sw.bb90.sw.epilog122_crit_edge, %sw.bb82.sw.epilog122_crit_edge, %mlx4_ib_multiplex_sa_handler.exit.sw.epilog122_crit_edge, %sw.bb74.sw.epilog122_crit_edge, %land.lhs.true.sw.epilog122_crit_edge, %sw.bb63.sw.epilog122_crit_edge
  %av = getelementptr inbounds %struct.mlx4_ib_ah, ptr %ah, i32 0, i32 1
  %hdr = getelementptr inbounds %struct.mlx4_tunnel_mad, ptr %9, i32 0, i32 1
  %74 = call ptr @memcpy(ptr %av, ptr %hdr, i32 32)
  %75 = ptrtoint ptr %ib_dev to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %ib_dev, align 4
  %77 = ptrtoint ptr %ah to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %76, ptr %ah, align 4
  %78 = ptrtoint ptr %av to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %av, align 4
  %shr126 = lshr i32 %79, 24
  %80 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dev3, align 8
  %call128 = tail call i32 @mlx4_slave_convert_port(ptr noundef %81, i32 noundef %div279, i32 noundef %shr126) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call128)
  %cmp129 = icmp slt i32 %call128, 0
  br i1 %cmp129, label %sw.epilog122.cleanup_crit_edge, label %if.end132

sw.epilog122.cleanup_crit_edge:                   ; preds = %sw.epilog122
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end132:                                        ; preds = %sw.epilog122
  %shl = shl i32 %call128, 24
  %82 = ptrtoint ptr %av to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %av, align 4
  %and135 = and i32 %83, 16777215
  %or = or i32 %and135, %shl
  store i32 %or, ptr %av, align 4
  %port_data.i.i = getelementptr inbounds %struct.ib_device, ptr %1, i32 0, i32 11
  %84 = ptrtoint ptr %port_data.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %port_data.i.i, align 8
  %core_cap_flags.i.i = getelementptr %struct.ib_port_data, ptr %85, i32 %call128, i32 1, i32 2
  %86 = ptrtoint ptr %core_cap_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %core_cap_flags.i.i, align 4
  %and.i.i = and i32 %87, 10485760
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.end.i, label %if.end132.rdma_ah_find_type.exit_crit_edge

if.end132.rdma_ah_find_type.exit_crit_edge:       ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #13
  br label %rdma_ah_find_type.exit

if.end.i:                                         ; preds = %if.end132
  %and.i13.i = and i32 %87, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i13.i)
  %tobool.i14.not.i = icmp eq i32 %and.i13.i, 0
  br i1 %tobool.i14.not.i, label %if.end.i.rdma_ah_find_type.exit_crit_edge, label %if.then2.i

if.end.i.rdma_ah_find_type.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rdma_ah_find_type.exit

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %and.i17.i = and i32 %87, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i17.i)
  %cmp.i.not.i = icmp eq i32 %and.i17.i, 0
  %..i = select i1 %cmp.i.not.i, i32 1, i32 3
  br label %rdma_ah_find_type.exit

rdma_ah_find_type.exit:                           ; preds = %if.then2.i, %if.end.i.rdma_ah_find_type.exit_crit_edge, %if.end132.rdma_ah_find_type.exit_crit_edge
  %retval.0.i282 = phi i32 [ 2, %if.end132.rdma_ah_find_type.exit_crit_edge ], [ %..i, %if.then2.i ], [ 0, %if.end.i.rdma_ah_find_type.exit_crit_edge ]
  %type = getelementptr inbounds %struct.ib_ah, ptr %ah, i32 0, i32 4
  %88 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %retval.0.i282, ptr %type, align 4
  %call142 = call i32 @mlx4_ib_query_ah(ptr noundef nonnull %ah, ptr noundef nonnull %ah_attr) #11
  %ah_flags.i = getelementptr inbounds %struct.rdma_ah_attr, ptr %ah_attr, i32 0, i32 4
  %89 = ptrtoint ptr %ah_flags.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %ah_flags.i, align 8
  %91 = and i8 %90, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %91)
  %tobool145.not = icmp eq i8 %91, 0
  br i1 %tobool145.not, label %rdma_ah_find_type.exit.if.end148_crit_edge, label %if.then146

rdma_ah_find_type.exit.if.end148_crit_edge:       ; preds = %rdma_ah_find_type.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end148

if.then146:                                       ; preds = %rdma_ah_find_type.exit
  %92 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %ctx, align 4
  %call1.i = call i32 @rdma_port_get_link_layer(ptr noundef %1, i32 noundef %93) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call1.i)
  %cmp.i = icmp eq i32 %call1.i, 1
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then146
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i283 = trunc i32 %div279 to i8
  %sgid_index.i = getelementptr inbounds %struct.ib_global_route, ptr %ah_attr, i32 0, i32 3
  %94 = ptrtoint ptr %sgid_index.i to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %conv.i283, ptr %sgid_index.i, align 4
  br label %if.end148

if.else.i:                                        ; preds = %if.then146
  %call.i.i = call i32 @rdma_port_get_link_layer(ptr noundef %1, i32 noundef %93) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, 1
  br i1 %cmp.i.i, label %if.else.i.get_slave_base_gid_ix.exit.i_crit_edge, label %if.end.i.i

if.else.i.get_slave_base_gid_ix.exit.i_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %get_slave_base_gid_ix.exit.i

if.end.i.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  %95 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %dev3, align 8
  %call2.i.i = call i32 @mlx4_get_base_gid_ix(ptr noundef %96, i32 noundef %div279, i32 noundef %93) #11
  br label %get_slave_base_gid_ix.exit.i

get_slave_base_gid_ix.exit.i:                     ; preds = %if.end.i.i, %if.else.i.get_slave_base_gid_ix.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %call2.i.i, %if.end.i.i ], [ %div279, %if.else.i.get_slave_base_gid_ix.exit.i_crit_edge ]
  %sgid_index3.i = getelementptr inbounds %struct.ib_global_route, ptr %ah_attr, i32 0, i32 3
  %97 = ptrtoint ptr %sgid_index3.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %sgid_index3.i, align 4
  %99 = trunc i32 %retval.0.i.i to i8
  %conv5.i = add i8 %98, %99
  store i8 %conv5.i, ptr %sgid_index3.i, align 4
  br label %if.end148

if.end148:                                        ; preds = %get_slave_base_gid_ix.exit.i, %if.then.i, %rdma_ah_find_type.exit.if.end148_crit_edge
  %type.i = getelementptr inbounds %struct.rdma_ah_attr, ptr %ah_attr, i32 0, i32 5
  %100 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %101)
  %cmp.i285 = icmp ne i32 %101, 2
  %102 = getelementptr inbounds %struct.rdma_ah_attr, ptr %ah_attr, i32 0, i32 6
  %tobool150.not298 = icmp eq ptr %102, null
  %tobool150.not = select i1 %cmp.i285, i1 true, i1 %tobool150.not298
  br i1 %tobool150.not, label %if.end148.if.end153_crit_edge, label %if.then151

if.end148.if.end153_crit_edge:                    ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end153

if.then151:                                       ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #13
  %mac = getelementptr inbounds %struct.mlx4_tunnel_mad, ptr %9, i32 0, i32 1, i32 4
  %103 = call ptr @memcpy(ptr %102, ptr %mac, i32 6)
  br label %if.end153

if.end153:                                        ; preds = %if.then151, %if.end148.if.end153_crit_edge
  %vlan = getelementptr inbounds %struct.mlx4_tunnel_mad, ptr %9, i32 0, i32 1, i32 3
  %104 = ptrtoint ptr %vlan to i32
  call void @__asan_loadN_noabort(i32 %104, i32 2)
  %105 = load i16, ptr %vlan, align 1
  %106 = ptrtoint ptr %vlan_id to i32
  call void @__asan_store2_noabort(i32 %106)
  store i16 %105, ptr %vlan_id, align 2
  %107 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %dev3, align 8
  %109 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %ctx, align 4
  %call157 = call zeroext i1 @mlx4_get_slave_default_vlan(ptr noundef %108, i32 noundef %110, i32 noundef %div279, ptr noundef nonnull %vlan_id, ptr noundef nonnull %qos) #11
  br i1 %call157, label %if.then158, label %if.end153.if.end159_crit_edge

if.end153.if.end159_crit_edge:                    ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end159

if.then158:                                       ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #13
  %111 = ptrtoint ptr %qos to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %qos, align 1
  %sl1.i = getelementptr inbounds %struct.rdma_ah_attr, ptr %ah_attr, i32 0, i32 1
  %113 = ptrtoint ptr %sl1.i to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 %112, ptr %sl1.i, align 8
  br label %if.end159

if.end159:                                        ; preds = %if.then158, %if.end153.if.end159_crit_edge
  %114 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %ctx, align 4
  %116 = ptrtoint ptr %src_qp to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %src_qp, align 8
  %118 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %dev3, align 8
  %base_proxy_sqpn.i = getelementptr inbounds %struct.mlx4_dev, ptr %119, i32 0, i32 4, i32 4
  %120 = ptrtoint ptr %base_proxy_sqpn.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %base_proxy_sqpn.i, align 8
  %mul.i = and i32 %sub27, -8
  %add.i = add i32 %121, %mul.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %117)
  %cmp.not.i = icmp sgt i32 %add.i, %117
  %add2.i = add i32 %add.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add2.i, i32 %117)
  %cmp3.i = icmp slt i32 %add2.i, %117
  %tobool163.not = or i1 %cmp.not.i, %cmp3.i
  %cond = zext i1 %tobool163.not to i32
  %pkey_index = getelementptr inbounds %struct.mlx4_tunnel_mad, ptr %9, i32 0, i32 1, i32 5
  %122 = ptrtoint ptr %pkey_index to i32
  call void @__asan_loadN_noabort(i32 %122, i32 2)
  %123 = load i16, ptr %pkey_index, align 1
  %remote_qpn = getelementptr inbounds %struct.mlx4_tunnel_mad, ptr %9, i32 0, i32 1, i32 1
  %124 = ptrtoint ptr %remote_qpn to i32
  call void @__asan_loadN_noabort(i32 %124, i32 4)
  %125 = load i32, ptr %remote_qpn, align 1
  %qkey = getelementptr inbounds %struct.mlx4_tunnel_mad, ptr %9, i32 0, i32 1, i32 2
  %126 = ptrtoint ptr %qkey to i32
  call void @__asan_loadN_noabort(i32 %126, i32 4)
  %127 = load i32, ptr %qkey, align 1
  %smac = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 14
  %128 = ptrtoint ptr %vlan_id to i32
  call void @__asan_load2_noabort(i32 %128)
  %129 = load i16, ptr %vlan_id, align 2
  %call169 = call i32 @mlx4_ib_send_to_wire(ptr noundef %1, i32 noundef %div279, i32 noundef %115, i32 noundef %cond, i16 noundef zeroext %123, i32 noundef %125, i32 noundef %127, ptr noundef nonnull %ah_attr, ptr noundef %smac, i16 noundef zeroext %129, ptr noundef %mad)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call169)
  %tobool170.not = icmp eq i32 %call169, 0
  br i1 %tobool170.not, label %if.end159.cleanup_crit_edge, label %do.body172

if.end159.cleanup_crit_edge:                      ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body172:                                       ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx4_ib_multiplex_mad.__UNIQUE_ID_ddebug521, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx4_ib_multiplex_mad, %if.then177)) #11
          to label %cleanup [label %if.then177], !srcloc !281

if.then177:                                       ; preds = %do.body172
  call void @__sanitizer_cov_trace_pc() #13
  %130 = ptrtoint ptr %src_qp to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %src_qp, align 8
  %132 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %dev3, align 8
  %base_proxy_sqpn.i288 = getelementptr inbounds %struct.mlx4_dev, ptr %133, i32 0, i32 4, i32 4
  %134 = ptrtoint ptr %base_proxy_sqpn.i288 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %base_proxy_sqpn.i288, align 8
  %add.i290 = add i32 %135, %mul.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i290, i32 %131)
  %cmp.not.i291 = icmp sgt i32 %add.i290, %131
  %add2.i292 = add i32 %add.i290, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add2.i292, i32 %131)
  %cmp3.i293 = icmp slt i32 %add2.i292, %131
  %tobool180.not = or i1 %cmp.not.i291, %cmp3.i293
  %cond181 = select i1 %tobool180.not, ptr @.str.8, ptr @.str.7
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mlx4_ib_multiplex_mad.__UNIQUE_ID_ddebug521, ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.101, ptr noundef nonnull %cond181, i32 noundef %div279, i32 noundef %call169) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then177, %do.body172, %if.end159.cleanup_crit_edge, %sw.epilog122.cleanup_crit_edge, %do.end114, %sw.bb90.cleanup_crit_edge, %sw.bb82.cleanup_crit_edge, %mlx4_ib_multiplex_sa_handler.exit.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %do.end50, %do.end34, %do.end
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %qos) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %vlan_id) #11
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %ah_attr) #11
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %ah) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_vf_smi_enabled(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_ib_multiplex_cm_handler(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_slave_convert_port(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_ib_query_ah(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_ib_mcg_multiplex_handler(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_get_base_gid_ix(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_ib_poll_cq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlx4_ib_demux_mad(ptr noundef %ibdev, i32 noundef %port, ptr nocapture noundef readonly %wc, ptr noundef %grh, ptr noundef %mad) unnamed_addr #0 align 64 {
entry:
  %slave = alloca i32, align 4
  %dgid = alloca %union.ib_gid, align 8
  %sgid = alloca %union.ib_gid, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %slave) #11
  %0 = ptrtoint ptr %slave to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %slave, align 4
  %call1 = tail call i32 @rdma_port_get_link_layer(ptr noundef %ibdev, i32 noundef %port) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call1)
  %cmp = icmp eq i32 %call1, 1
  br i1 %cmp, label %if.end94, label %if.then2

if.then2:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %dgid) #11
  %1 = call ptr @memset(ptr %dgid, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %sgid) #11
  %2 = call ptr @memset(ptr %sgid, i32 255, i32 16)
  %call.i10 = tail call i32 @ib_get_rdma_header_version(ptr noundef %grh) #11
  %3 = zext i32 %call.i10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.167)
  switch i32 %call.i10, label %if.then2.cleanup_crit_edge [
    i32 4, label %if.then2.get_gids_from_l3_hdr.exit_crit_edge
    i32 6, label %if.then2.i
  ]

if.then2.get_gids_from_l3_hdr.exit_crit_edge:     ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #13
  br label %get_gids_from_l3_hdr.exit

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then2.i:                                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #13
  br label %get_gids_from_l3_hdr.exit

get_gids_from_l3_hdr.exit:                        ; preds = %if.then2.i, %if.then2.get_gids_from_l3_hdr.exit_crit_edge
  %net_type.0.i = phi i32 [ 3, %if.then2.i ], [ 2, %if.then2.get_gids_from_l3_hdr.exit_crit_edge ]
  %call5.i = call i32 @ib_get_gids_from_rdma_hdr(ptr noundef %grh, i32 noundef %net_type.0.i, ptr noundef nonnull %sgid, ptr noundef nonnull %dgid) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool4.not = icmp eq i32 %call5.i, 0
  br i1 %tobool4.not, label %if.end6, label %get_gids_from_l3_hdr.exit.cleanup_crit_edge

get_gids_from_l3_hdr.exit.cleanup_crit_edge:      ; preds = %get_gids_from_l3_hdr.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end6:                                          ; preds = %get_gids_from_l3_hdr.exit
  %wc_flags = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 9
  %4 = ptrtoint ptr %wc_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %wc_flags, align 8
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %do.end, label %if.end9

do.end:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  %parent = getelementptr inbounds %struct.ib_device, ptr %ibdev, i32 0, i32 13, i32 0, i32 0, i32 1
  %6 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %7, ptr noundef nonnull @.str.115) #14
  br label %cleanup

if.end9:                                          ; preds = %if.end6
  %mgmt_class = getelementptr inbounds %struct.ib_mad_hdr, ptr %mad, i32 0, i32 1
  %8 = ptrtoint ptr %mgmt_class to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %mgmt_class, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %9)
  %cmp10.not = icmp eq i8 %9, 7
  br i1 %cmp10.not, label %if.end17, label %do.end15

do.end15:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  %parent16 = getelementptr inbounds %struct.ib_device, ptr %ibdev, i32 0, i32 13, i32 0, i32 0, i32 1
  %10 = ptrtoint ptr %parent16 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %parent16, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %11, ptr noundef nonnull @.str.118) #14
  br label %cleanup

if.end17:                                         ; preds = %if.end9
  %dev18 = getelementptr inbounds %struct.mlx4_ib_dev, ptr %ibdev, i32 0, i32 1
  %12 = ptrtoint ptr %dev18 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev18, align 8
  %call19 = call i32 @mlx4_get_slave_from_roce_gid(ptr noundef %13, i32 noundef %port, ptr noundef nonnull %dgid, ptr noundef nonnull %slave) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end17.if.end51_crit_edge, label %land.lhs.true

if.end17.if.end51_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end51

land.lhs.true:                                    ; preds = %if.end17
  %14 = ptrtoint ptr %dev18 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev18, align 8
  %flags.i.i = getelementptr inbounds %struct.mlx4_dev, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags.i.i, align 4
  %18 = and i32 %17, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i = icmp eq i32 %18, 0
  %and.i5.i = and i32 %17, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i5.i)
  %tobool2.i = icmp eq i32 %and.i5.i, 0
  %tobool23.not = or i1 %tobool.not.i, %tobool2.i
  br i1 %tobool23.not, label %land.lhs.true.do.end49_crit_edge, label %if.then24

land.lhs.true.do.end49_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end49

if.then24:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %port)
  %cmp25 = icmp eq i32 %port, 1
  %cond = select i1 %cmp25, i32 2, i32 1
  %call29 = call i32 @mlx4_get_slave_from_roce_gid(ptr noundef %15, i32 noundef %cond, ptr noundef nonnull %dgid, ptr noundef nonnull %slave) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.then31, label %if.then24.do.end49_crit_edge

if.then24.do.end49_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end49

if.then31:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx4_ib_demux_mad.__UNIQUE_ID_ddebug515, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx4_ib_demux_mad, %if.then37)) #11
          to label %if.end51 [label %if.then37], !srcloc !281

if.then37:                                        ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #13
  %19 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %slave, align 4
  %dgid38 = getelementptr inbounds %struct.ib_grh, ptr %grh, i32 0, i32 5
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mlx4_ib_demux_mad.__UNIQUE_ID_ddebug515, ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.116, i32 noundef %20, ptr noundef %dgid38, i32 noundef %cond, i32 noundef %cond) #11
  br label %if.end51

do.end49:                                         ; preds = %if.then24.do.end49_crit_edge, %land.lhs.true.do.end49_crit_edge
  %parent50 = getelementptr inbounds %struct.ib_device, ptr %ibdev, i32 0, i32 13, i32 0, i32 0, i32 1
  %21 = ptrtoint ptr %parent50 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %parent50, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %22, ptr noundef nonnull @.str.123) #14
  br label %cleanup

if.end51:                                         ; preds = %if.then37, %if.then31, %if.end17.if.end51_crit_edge
  %port.addr.032 = phi i32 [ %cond, %if.then31 ], [ %port, %if.end17.if.end51_crit_edge ], [ %cond, %if.then37 ]
  %23 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %slave, align 4
  %25 = ptrtoint ptr %dev18 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev18, align 8
  %sqp_demux = getelementptr inbounds %struct.mlx4_dev, ptr %26, i32 0, i32 3, i32 81
  %27 = ptrtoint ptr %sqp_demux to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %sqp_demux, align 4
  %conv53 = zext i16 %28 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %conv53)
  %cmp54.not = icmp slt i32 %24, %conv53
  br i1 %cmp54.not, label %if.end65, label %do.end59

do.end59:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #13
  %parent60 = getelementptr inbounds %struct.ib_device, ptr %ibdev, i32 0, i32 13, i32 0, i32 0, i32 1
  %29 = ptrtoint ptr %parent60 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %parent60, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %30, ptr noundef nonnull @.str.126, i32 noundef %24, i32 noundef %conv53) #14
  br label %cleanup

if.end65:                                         ; preds = %if.end51
  %call66 = call i32 @mlx4_ib_demux_cm_handler(ptr noundef %ibdev, i32 noundef %port.addr.032, ptr noundef null, ptr noundef %mad) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %if.end69, label %if.end65.cleanup_crit_edge

if.end65.cleanup_crit_edge:                       ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end69:                                         ; preds = %if.end65
  %31 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %slave, align 4
  %qp = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 5
  %33 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %qp, align 8
  %qp_type = getelementptr inbounds %struct.ib_qp, ptr %34, i32 0, i32 22
  %35 = ptrtoint ptr %qp_type to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %qp_type, align 4
  %call70 = call i32 @mlx4_ib_send_to_slave(ptr noundef %ibdev, i32 noundef %32, i32 noundef %port.addr.032, i32 noundef %36, ptr noundef %wc, ptr noundef %grh, ptr noundef %mad)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %if.end69.cleanup_crit_edge, label %do.body73

if.end69.cleanup_crit_edge:                       ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body73:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx4_ib_demux_mad.__UNIQUE_ID_ddebug516, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx4_ib_demux_mad, %if.then85)) #11
          to label %cleanup [label %if.then85], !srcloc !281

if.then85:                                        ; preds = %do.body73
  call void @__sanitizer_cov_trace_pc() #13
  %src_qp = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 7
  %37 = ptrtoint ptr %src_qp to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %src_qp, align 8
  %39 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %slave, align 4
  %41 = ptrtoint ptr %dev18 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev18, align 8
  %base_proxy_sqpn.i = getelementptr inbounds %struct.mlx4_dev, ptr %42, i32 0, i32 4, i32 4
  %43 = ptrtoint ptr %base_proxy_sqpn.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %base_proxy_sqpn.i, align 8
  %mul.i = shl i32 %40, 3
  %add.i = add i32 %44, %mul.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %38)
  %cmp.not.i = icmp sgt i32 %add.i, %38
  %add2.i = add i32 %add.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add2.i, i32 %38)
  %cmp3.i = icmp slt i32 %add2.i, %38
  %tobool87.not = or i1 %cmp.not.i, %cmp3.i
  %cond88 = select i1 %tobool87.not, ptr @.str.8, ptr @.str.7
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mlx4_ib_demux_mad.__UNIQUE_ID_ddebug516, ptr noundef nonnull @.str.129, ptr noundef nonnull @.str.116, ptr noundef nonnull %cond88, i32 noundef %40, i32 noundef %call70) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then85, %do.body73, %if.end69.cleanup_crit_edge, %if.end65.cleanup_crit_edge, %do.end59, %do.end49, %do.end15, %do.end, %get_gids_from_l3_hdr.exit.cleanup_crit_edge, %if.then2.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %sgid) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %dgid) #11
  br label %cleanup256

if.end94:                                         ; preds = %entry
  %dev95 = getelementptr inbounds %struct.mlx4_ib_dev, ptr %ibdev, i32 0, i32 1
  %45 = ptrtoint ptr %dev95 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev95, align 8
  %function.i = getelementptr inbounds %struct.mlx4_dev, ptr %46, i32 0, i32 3, i32 1
  %47 = ptrtoint ptr %function.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %function.i, align 8
  %49 = ptrtoint ptr %slave to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %slave, align 4
  %method = getelementptr inbounds %struct.ib_mad_hdr, ptr %mad, i32 0, i32 3
  %50 = ptrtoint ptr %method to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %method, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %51)
  %tobool100.not = icmp sgt i8 %51, -1
  br i1 %tobool100.not, label %if.end94.if.end108_crit_edge, label %if.then101

if.end94.if.end108_crit_edge:                     ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end108

if.then101:                                       ; preds = %if.end94
  %tid = getelementptr inbounds %struct.ib_mad_hdr, ptr %mad, i32 0, i32 6
  %52 = ptrtoint ptr %tid to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %tid, align 1
  %conv103 = zext i8 %53 to i32
  %54 = ptrtoint ptr %slave to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %conv103, ptr %slave, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %53)
  %cmp104.not = icmp eq i8 %53, -1
  br i1 %cmp104.not, label %if.then101.if.end108_crit_edge, label %if.then106

if.then101.if.end108_crit_edge:                   ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end108

if.then106:                                       ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #13
  %55 = ptrtoint ptr %tid to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 0, ptr %tid, align 1
  br label %if.end108

if.end108:                                        ; preds = %if.then106, %if.then101.if.end108_crit_edge, %if.end94.if.end108_crit_edge
  %wc_flags109 = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 9
  %56 = ptrtoint ptr %wc_flags109 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %wc_flags109, align 8
  %and110 = and i32 %57, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and110)
  %tobool111.not = icmp eq i32 %and110, 0
  br i1 %tobool111.not, label %if.end108.if.end136_crit_edge, label %if.then112

if.end108.if.end136_crit_edge:                    ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end136

if.then112:                                       ; preds = %if.end108
  %interface_id = getelementptr inbounds %struct.ib_grh, ptr %grh, i32 0, i32 5, i32 0, i32 1
  %58 = ptrtoint ptr %interface_id to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %interface_id, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 144115188075855874, i64 %59)
  %cmp114 = icmp eq i64 %59, 144115188075855874
  br i1 %cmp114, label %land.lhs.true116, label %if.then112.if.else123_crit_edge

if.then112.if.else123_crit_edge:                  ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #13
  %.pre = add i32 %port, -1
  br label %if.else123

land.lhs.true116:                                 ; preds = %if.then112
  %dgid113 = getelementptr inbounds %struct.ib_grh, ptr %grh, i32 0, i32 5
  %60 = ptrtoint ptr %dgid113 to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %dgid113, align 8
  %sriov = getelementptr inbounds %struct.mlx4_ib_dev, ptr %ibdev, i32 0, i32 11
  %sub = add i32 %port, -1
  %subnet_prefix118 = getelementptr [2 x %struct.mlx4_ib_demux_ctx], ptr %sriov, i32 0, i32 %sub, i32 6
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %subnet_prefix118, i32 noundef 8) #11
  %call.i = tail call i64 @generic_atomic64_read(ptr noundef %subnet_prefix118) #11
  call void @__sanitizer_cov_trace_cmp8(i64 %61, i64 %call.i)
  %cmp120 = icmp eq i64 %61, %call.i
  br i1 %cmp120, label %if.then122, label %land.lhs.true116.if.else123_crit_edge

land.lhs.true116.if.else123_crit_edge:            ; preds = %land.lhs.true116
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else123

if.then122:                                       ; preds = %land.lhs.true116
  call void @__sanitizer_cov_trace_pc() #13
  %62 = ptrtoint ptr %slave to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %slave, align 4
  br label %if.end136

if.else123:                                       ; preds = %land.lhs.true116.if.else123_crit_edge, %if.then112.if.else123_crit_edge
  %sub.i.pre-phi = phi i32 [ %.pre, %if.then112.if.else123_crit_edge ], [ %sub, %land.lhs.true116.if.else123_crit_edge ]
  %63 = ptrtoint ptr %interface_id to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %interface_id, align 8
  %sriov.i = getelementptr inbounds %struct.mlx4_ib_dev, ptr %ibdev, i32 0, i32 11
  %65 = ptrtoint ptr %dev95 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dev95, align 8
  %sqp_demux.i = getelementptr inbounds %struct.mlx4_dev, ptr %66, i32 0, i32 3, i32 81
  %67 = ptrtoint ptr %sqp_demux.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %sqp_demux.i, align 4
  %conv.i = zext i16 %68 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %68)
  %cmp11.not.i = icmp eq i16 %68, 0
  br i1 %cmp11.not.i, label %if.else123.do.end132_crit_edge, label %if.else123.for.body.i_crit_edge

if.else123.for.body.i_crit_edge:                  ; preds = %if.else123
  br label %for.body.i

if.else123.do.end132_crit_edge:                   ; preds = %if.else123
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end132

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.else123.for.body.i_crit_edge
  %i.012.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.else123.for.body.i_crit_edge ]
  %arrayidx3.i = getelementptr [2 x %struct.mlx4_ib_demux_ctx], ptr %sriov.i, i32 0, i32 %sub.i.pre-phi, i32 7, i32 %i.012.i
  %69 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %arrayidx3.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %70, i64 %64)
  %cmp4.i = icmp eq i64 %70, %64
  br i1 %cmp4.i, label %mlx4_ib_find_real_gid.exit, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.012.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv.i
  br i1 %exitcond.not.i, label %for.inc.i.do.end132_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc.i.do.end132_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end132

mlx4_ib_find_real_gid.exit:                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %71 = ptrtoint ptr %slave to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %i.012.i, ptr %slave, align 4
  br label %if.end136

do.end132:                                        ; preds = %for.inc.i.do.end132_crit_edge, %if.else123.do.end132_crit_edge
  %72 = ptrtoint ptr %slave to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 -1, ptr %slave, align 4
  %parent133 = getelementptr inbounds %struct.ib_device, ptr %ibdev, i32 0, i32 13, i32 0, i32 0, i32 1
  %73 = ptrtoint ptr %parent133 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %parent133, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %74, ptr noundef nonnull @.str.123) #14
  br label %cleanup256

if.end136:                                        ; preds = %mlx4_ib_find_real_gid.exit, %if.then122, %if.end108.if.end136_crit_edge
  %mgmt_class138 = getelementptr inbounds %struct.ib_mad_hdr, ptr %mad, i32 0, i32 1
  %75 = ptrtoint ptr %mgmt_class138 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %mgmt_class138, align 1
  %77 = zext i8 %76 to i64
  call void @__sanitizer_cov_trace_switch(i64 %77, ptr @__sancov_gen_cov_switch_values.168)
  switch i8 %76, label %sw.default [
    i8 1, label %if.end136.sw.bb_crit_edge
    i8 -127, label %if.end136.sw.bb_crit_edge51
    i8 3, label %sw.bb171
    i8 7, label %sw.bb176
    i8 6, label %sw.bb181
  ]

if.end136.sw.bb_crit_edge51:                      ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

if.end136.sw.bb_crit_edge:                        ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

sw.bb:                                            ; preds = %if.end136.sw.bb_crit_edge, %if.end136.sw.bb_crit_edge51
  %78 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %slave, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %79)
  %cmp140.not = icmp eq i32 %79, 255
  br i1 %cmp140.not, label %sw.bb.sw.epilog_crit_edge, label %land.lhs.true142

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

land.lhs.true142:                                 ; preds = %sw.bb
  %80 = ptrtoint ptr %dev95 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dev95, align 8
  %function.i15 = getelementptr inbounds %struct.mlx4_dev, ptr %81, i32 0, i32 3, i32 1
  %82 = ptrtoint ptr %function.i15 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %function.i15, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %79, i32 %83)
  %cmp145.not = icmp eq i32 %79, %83
  br i1 %cmp145.not, label %land.lhs.true142.sw.epilog_crit_edge, label %if.then147

land.lhs.true142.sw.epilog_crit_edge:             ; preds = %land.lhs.true142
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.then147:                                       ; preds = %land.lhs.true142
  %call149 = tail call i32 @mlx4_vf_smi_enabled(ptr noundef %81, i32 noundef %79, i32 noundef %port) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call149)
  %tobool150.not = icmp eq i32 %call149, 0
  br i1 %tobool150.not, label %if.then147.cleanup256_crit_edge, label %if.end152

if.then147.cleanup256_crit_edge:                  ; preds = %if.then147
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup256

if.end152:                                        ; preds = %if.then147
  %84 = ptrtoint ptr %method to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %method, align 1
  %conv155 = zext i8 %85 to i32
  %and156 = and i32 %conv155, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and156)
  %tobool157.not = icmp eq i32 %and156, 0
  br i1 %tobool157.not, label %do.end161, label %if.end152.sw.epilog_crit_edge

if.end152.sw.epilog_crit_edge:                    ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

do.end161:                                        ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #13
  %parent162 = getelementptr inbounds %struct.ib_device, ptr %ibdev, i32 0, i32 13, i32 0, i32 0, i32 1
  %86 = ptrtoint ptr %parent162 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %parent162, align 8
  %88 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %slave, align 4
  %90 = ptrtoint ptr %mgmt_class138 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %mgmt_class138, align 1
  %conv165 = zext i8 %91 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %87, ptr noundef nonnull @.str.133, i32 noundef %89, i32 noundef %conv165, i32 noundef %conv155) #14
  br label %cleanup256

sw.bb171:                                         ; preds = %if.end136
  %attr_id.i = getelementptr inbounds %struct.ib_mad_hdr, ptr %mad, i32 0, i32 7
  %92 = ptrtoint ptr %attr_id.i to i32
  call void @__asan_loadN_noabort(i32 %92, i32 2)
  %93 = load i16, ptr %attr_id.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 56, i16 %93)
  %cond.i = icmp eq i16 %93, 56
  br i1 %cond.i, label %mlx4_ib_demux_sa_handler.exit, label %sw.bb171.sw.epilog_crit_edge

sw.bb171.sw.epilog_crit_edge:                     ; preds = %sw.bb171
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

mlx4_ib_demux_sa_handler.exit:                    ; preds = %sw.bb171
  %94 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %slave, align 4
  %call.i16 = tail call i32 @mlx4_ib_mcg_demux_handler(ptr noundef %ibdev, i32 noundef %port, i32 noundef %95, ptr noundef %mad) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i16)
  %tobool173.not = icmp eq i32 %call.i16, 0
  br i1 %tobool173.not, label %mlx4_ib_demux_sa_handler.exit.sw.epilog_crit_edge, label %mlx4_ib_demux_sa_handler.exit.cleanup256_crit_edge

mlx4_ib_demux_sa_handler.exit.cleanup256_crit_edge: ; preds = %mlx4_ib_demux_sa_handler.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup256

mlx4_ib_demux_sa_handler.exit.sw.epilog_crit_edge: ; preds = %mlx4_ib_demux_sa_handler.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb176:                                         ; preds = %if.end136
  %call177 = call i32 @mlx4_ib_demux_cm_handler(ptr noundef %ibdev, i32 noundef %port, ptr noundef nonnull %slave, ptr noundef %mad) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call177)
  %tobool178.not = icmp eq i32 %call177, 0
  br i1 %tobool178.not, label %sw.bb176.sw.epilog_crit_edge, label %sw.bb176.cleanup256_crit_edge

sw.bb176.cleanup256_crit_edge:                    ; preds = %sw.bb176
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup256

sw.bb176.sw.epilog_crit_edge:                     ; preds = %sw.bb176
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb181:                                         ; preds = %if.end136
  %96 = ptrtoint ptr %method to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %method, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -127, i8 %97)
  %cmp185.not = icmp eq i8 %97, -127
  br i1 %cmp185.not, label %sw.bb181.sw.epilog_crit_edge, label %sw.bb181.cleanup256_crit_edge

sw.bb181.cleanup256_crit_edge:                    ; preds = %sw.bb181
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup256

sw.bb181.sw.epilog_crit_edge:                     ; preds = %sw.bb181
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.default:                                       ; preds = %if.end136
  %98 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %slave, align 4
  %100 = ptrtoint ptr %dev95 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %dev95, align 8
  %function.i17 = getelementptr inbounds %struct.mlx4_dev, ptr %101, i32 0, i32 3, i32 1
  %102 = ptrtoint ptr %function.i17 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %function.i17, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %99, i32 %103)
  %cmp191.not = icmp eq i32 %99, %103
  br i1 %cmp191.not, label %sw.default.sw.epilog_crit_edge, label %do.body194

sw.default.sw.epilog_crit_edge:                   ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

do.body194:                                       ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx4_ib_demux_mad.__UNIQUE_ID_ddebug517, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx4_ib_demux_mad, %if.then206)) #11
          to label %cleanup256 [label %if.then206], !srcloc !281

if.then206:                                       ; preds = %do.body194
  call void @__sanitizer_cov_trace_pc() #13
  %104 = ptrtoint ptr %mgmt_class138 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %mgmt_class138, align 1
  %conv209 = zext i8 %105 to i32
  %106 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %slave, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mlx4_ib_demux_mad.__UNIQUE_ID_ddebug517, ptr noundef nonnull @.str.136, ptr noundef nonnull @.str.116, i32 noundef %conv209, i32 noundef %107) #11
  br label %cleanup256

sw.epilog:                                        ; preds = %sw.default.sw.epilog_crit_edge, %sw.bb181.sw.epilog_crit_edge, %sw.bb176.sw.epilog_crit_edge, %mlx4_ib_demux_sa_handler.exit.sw.epilog_crit_edge, %sw.bb171.sw.epilog_crit_edge, %if.end152.sw.epilog_crit_edge, %land.lhs.true142.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  %108 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %slave, align 4
  %110 = ptrtoint ptr %dev95 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %dev95, align 8
  %sqp_demux216 = getelementptr inbounds %struct.mlx4_dev, ptr %111, i32 0, i32 3, i32 81
  %112 = ptrtoint ptr %sqp_demux216 to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %sqp_demux216, align 4
  %conv217 = zext i16 %113 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %109, i32 %conv217)
  %cmp218.not = icmp slt i32 %109, %conv217
  br i1 %cmp218.not, label %if.end229, label %do.end223

do.end223:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  %parent224 = getelementptr inbounds %struct.ib_device, ptr %ibdev, i32 0, i32 13, i32 0, i32 0, i32 1
  %114 = ptrtoint ptr %parent224 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %parent224, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %115, ptr noundef nonnull @.str.126, i32 noundef %109, i32 noundef %conv217) #14
  br label %cleanup256

if.end229:                                        ; preds = %sw.epilog
  %qp230 = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 5
  %116 = ptrtoint ptr %qp230 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %qp230, align 8
  %qp_type231 = getelementptr inbounds %struct.ib_qp, ptr %117, i32 0, i32 22
  %118 = ptrtoint ptr %qp_type231 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %qp_type231, align 4
  %call232 = call i32 @mlx4_ib_send_to_slave(ptr noundef %ibdev, i32 noundef %109, i32 noundef %port, i32 noundef %119, ptr noundef %wc, ptr noundef %grh, ptr noundef %mad)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call232)
  %tobool233.not = icmp eq i32 %call232, 0
  br i1 %tobool233.not, label %if.end229.cleanup256_crit_edge, label %do.body235

if.end229.cleanup256_crit_edge:                   ; preds = %if.end229
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup256

do.body235:                                       ; preds = %if.end229
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx4_ib_demux_mad.__UNIQUE_ID_ddebug518, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx4_ib_demux_mad, %if.then247)) #11
          to label %cleanup256 [label %if.then247], !srcloc !281

if.then247:                                       ; preds = %do.body235
  call void @__sanitizer_cov_trace_pc() #13
  %src_qp248 = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 7
  %120 = ptrtoint ptr %src_qp248 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %src_qp248, align 8
  %122 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %slave, align 4
  %124 = ptrtoint ptr %dev95 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %dev95, align 8
  %base_proxy_sqpn.i19 = getelementptr inbounds %struct.mlx4_dev, ptr %125, i32 0, i32 4, i32 4
  %126 = ptrtoint ptr %base_proxy_sqpn.i19 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %base_proxy_sqpn.i19, align 8
  %mul.i20 = shl i32 %123, 3
  %add.i21 = add i32 %127, %mul.i20
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i21, i32 %121)
  %cmp.not.i22 = icmp sgt i32 %add.i21, %121
  %add2.i23 = add i32 %add.i21, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add2.i23, i32 %121)
  %cmp3.i24 = icmp slt i32 %add2.i23, %121
  %tobool250.not = or i1 %cmp.not.i22, %cmp3.i24
  %cond251 = select i1 %tobool250.not, ptr @.str.8, ptr @.str.7
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mlx4_ib_demux_mad.__UNIQUE_ID_ddebug518, ptr noundef nonnull @.str.129, ptr noundef nonnull @.str.116, ptr noundef nonnull %cond251, i32 noundef %123, i32 noundef %call232) #11
  br label %cleanup256

cleanup256:                                       ; preds = %if.then247, %do.body235, %if.end229.cleanup256_crit_edge, %do.end223, %if.then206, %do.body194, %sw.bb181.cleanup256_crit_edge, %sw.bb176.cleanup256_crit_edge, %mlx4_ib_demux_sa_handler.exit.cleanup256_crit_edge, %do.end161, %if.then147.cleanup256_crit_edge, %do.end132, %cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %slave) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_get_slave_from_roce_gid(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_ib_demux_cm_handler(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_ib_mcg_demux_handler(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_get_active_ports(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_ib_mcg_port_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

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

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 140)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 140)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !9, !10, !11, !12, !13, !15, !16, !17, !19, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !39, !40, !41, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !65, !66, !68, !70, !71, !72, !73, !75, !76, !77, !79, !81, !82, !83, !84, !86, !87, !88, !89, !91, !92, !94, !95, !97, !98, !99, !100, !102, !103, !104, !106, !107, !108, !110, !111, !112, !114, !115, !116, !117, !118, !120, !121, !122, !124, !125, !127, !129, !130, !131, !133, !134, !136, !137, !138, !140, !141, !142, !143, !144, !145, !147, !148, !149, !151, !152, !153, !155, !156, !157, !159, !160, !161, !163, !164, !165, !166, !168, !169, !170, !171, !173, !174, !175, !177, !178, !179, !180, !182, !183, !184, !186, !187, !188, !190, !191, !192, !194, !195, !196, !198, !199, !200, !201, !203, !205, !206, !207, !208, !210, !211, !212, !214, !215, !216, !218, !219, !220, !222, !223, !224, !226, !227, !228, !230, !231, !233, !234, !235, !237, !238, !239, !241, !242, !244, !246, !247, !248, !249, !251, !253, !254, !255, !257, !259, !260, !261, !263, !265, !266}
!llvm.module.flags = !{!267, !268, !269, !270, !271, !272, !273, !274}
!llvm.ident = !{!275}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/infiniband/hw/mlx4/mad.c", i32 532, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @mlx4_ib_send_to_slave.__UNIQUE_ID_ddebug512, !1, !"__UNIQUE_ID_ddebug512", i1 false, i1 false}
!6 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/infiniband/hw/mlx4/mad.c", i32 552, i32 4}
!9 = !{ptr @mlx4_ib_send_to_slave.__UNIQUE_ID_ddebug513, !8, !"__UNIQUE_ID_ddebug513", i1 false, i1 false}
!10 = !{ptr @.str.6, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.7, !8, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.8, !8, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.9, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/infiniband/hw/mlx4/mad.c", i32 560, i32 4}
!15 = !{ptr @mlx4_ib_send_to_slave.__UNIQUE_ID_ddebug514, !14, !"__UNIQUE_ID_ddebug514", i1 false, i1 false}
!16 = !{ptr @.str.10, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.11, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/infiniband/hw/mlx4/mad.c", i32 1215, i32 6}
!19 = !{ptr @.str.12, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @handle_port_mgmt_change_event._entry, !18, !"_entry", i1 false, i1 false}
!21 = !{ptr @handle_port_mgmt_change_event._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/infiniband/hw/mlx4/mad.c", i32 1218, i32 6}
!24 = !{ptr @handle_port_mgmt_change_event.__UNIQUE_ID_ddebug519, !23, !"__UNIQUE_ID_ddebug519", i1 false, i1 false}
!25 = !{ptr @.str.14, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.15, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/infiniband/hw/mlx4/mad.c", i32 1265, i32 5}
!28 = !{ptr @handle_port_mgmt_change_event.__UNIQUE_ID_ddebug520, !27, !"__UNIQUE_ID_ddebug520", i1 false, i1 false}
!29 = !{ptr @.str.16, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.18, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/infiniband/hw/mlx4/mad.c", i32 1272, i32 3}
!32 = !{ptr @handle_port_mgmt_change_event._entry.17, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @handle_port_mgmt_change_event._entry_ptr.19, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @mlx4_ib_init_sriov.__key, !35, !"__key", i1 false, i1 false}
!35 = !{!"../drivers/infiniband/hw/mlx4/mad.c", i32 2308, i32 2}
!36 = !{ptr @.str.20, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.21, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/infiniband/hw/mlx4/mad.c", i32 2311, i32 2}
!39 = !{ptr @.str.22, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.23, !38, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.24, !38, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @mlx4_ib_init_sriov._entry, !38, !"_entry", i1 false, i1 false}
!43 = !{ptr @mlx4_ib_init_sriov._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.26, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/infiniband/hw/mlx4/mad.c", i32 2314, i32 3}
!46 = !{ptr @mlx4_ib_init_sriov._entry.25, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @mlx4_ib_init_sriov._entry_ptr.27, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.29, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/infiniband/hw/mlx4/mad.c", i32 2327, i32 3}
!50 = !{ptr @mlx4_ib_init_sriov._entry.28, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @mlx4_ib_init_sriov._entry_ptr.30, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.32, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/infiniband/hw/mlx4/mad.c", i32 2332, i32 3}
!54 = !{ptr @mlx4_ib_init_sriov._entry.31, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @mlx4_ib_init_sriov._entry_ptr.33, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.35, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/infiniband/hw/mlx4/mad.c", i32 2336, i32 2}
!58 = !{ptr @mlx4_ib_init_sriov._entry.34, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @mlx4_ib_init_sriov._entry_ptr.36, !57, !"_entry_ptr", i1 false, i1 false}
!60 = distinct !{null, !61, !"__already_done", i1 false, i1 false}
!61 = !{!"../include/rdma/ib_verbs.h", i32 4605, i32 2}
!62 = !{ptr @.str.37, !61, !"<string literal>", i1 false, i1 false}
!63 = distinct !{null, !64, !"__already_done", i1 false, i1 false}
!64 = !{!"../include/rdma/ib_verbs.h", i32 3630, i32 2}
!65 = !{ptr @.str.38, !64, !"<string literal>", i1 false, i1 false}
!66 = distinct !{null, !67, !"__already_done", i1 false, i1 false}
!67 = !{!"../include/rdma/ib_verbs.h", i32 4616, i32 2}
!68 = !{ptr @.str.39, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/infiniband/hw/mlx4/mad.c", i32 268, i32 5}
!70 = !{ptr @.str.40, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @smp_snoop.__UNIQUE_ID_ddebug508, !69, !"__UNIQUE_ID_ddebug508", i1 false, i1 false}
!72 = !{ptr @.str.41, !69, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @.str.42, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/infiniband/hw/mlx4/mad.c", i32 277, i32 4}
!75 = !{ptr @smp_snoop.__UNIQUE_ID_ddebug509, !74, !"__UNIQUE_ID_ddebug509", i1 false, i1 false}
!76 = !{ptr @.str.43, !74, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @smp_snoop.__UNIQUE_ID_ddebug510, !78, !"__UNIQUE_ID_ddebug510", i1 false, i1 false}
!78 = !{!"../drivers/infiniband/hw/mlx4/mad.c", i32 321, i32 6}
!79 = !{ptr @.str.44, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/infiniband/hw/mlx4/mad.c", i32 354, i32 6}
!81 = !{ptr @.str.45, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @__propagate_pkey_ev.__UNIQUE_ID_ddebug511, !80, !"__UNIQUE_ID_ddebug511", i1 false, i1 false}
!83 = !{ptr @.str.46, !80, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @.str.47, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/infiniband/hw/mlx4/mad.c", i32 1159, i32 4}
!86 = !{ptr @.str.48, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @handle_slaves_guid_change._entry, !85, !"_entry", i1 false, i1 false}
!88 = !{ptr @handle_slaves_guid_change._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!89 = distinct !{null, !90, !"__already_done", i1 false, i1 false}
!90 = !{!"../include/rdma/ib_verbs.h", i32 3498, i32 2}
!91 = !{ptr @.str.49, !90, !"<string literal>", i1 false, i1 false}
!92 = distinct !{null, !93, !"__already_done", i1 false, i1 false}
!93 = !{!"../include/rdma/ib_verbs.h", i32 3936, i32 2}
!94 = !{ptr @.str.50, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @.str.51, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/infiniband/hw/mlx4/mad.c", i32 1999, i32 4}
!97 = !{ptr @.str.52, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @create_pv_resources._entry, !96, !"_entry", i1 false, i1 false}
!99 = !{ptr @create_pv_resources._entry_ptr, !96, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.54, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/infiniband/hw/mlx4/mad.c", i32 2006, i32 3}
!102 = !{ptr @create_pv_resources._entry.53, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @create_pv_resources._entry_ptr.55, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.57, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/infiniband/hw/mlx4/mad.c", i32 2020, i32 3}
!106 = !{ptr @create_pv_resources._entry.56, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @create_pv_resources._entry_ptr.58, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.60, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/infiniband/hw/mlx4/mad.c", i32 2027, i32 3}
!110 = !{ptr @create_pv_resources._entry.59, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @create_pv_resources._entry_ptr.61, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.63, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/infiniband/hw/mlx4/mad.c", i32 2034, i32 4}
!114 = !{ptr @create_pv_resources._entry.62, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @create_pv_resources._entry_ptr.64, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.65, !113, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @.str.66, !113, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @.str.68, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/infiniband/hw/mlx4/mad.c", i32 2042, i32 3}
!120 = !{ptr @create_pv_resources._entry.67, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @create_pv_resources._entry_ptr.69, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @create_pv_resources.__key, !123, !"__key", i1 false, i1 false}
!123 = !{!"../drivers/infiniband/hw/mlx4/mad.c", i32 2048, i32 3}
!124 = !{ptr @.str.70, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @create_pv_resources.__key.71, !126, !"__key", i1 false, i1 false}
!126 = !{!"../drivers/infiniband/hw/mlx4/mad.c", i32 2050, i32 3}
!127 = !{ptr @.str.73, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/infiniband/hw/mlx4/mad.c", i32 2057, i32 3}
!129 = !{ptr @create_pv_resources._entry.72, !128, !"_entry", i1 false, i1 false}
!130 = !{ptr @create_pv_resources._entry_ptr.74, !128, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @mlx4_ib_alloc_pv_bufs.__key, !132, !"__key", i1 false, i1 false}
!132 = !{!"../drivers/infiniband/hw/mlx4/mad.c", i32 1669, i32 2}
!133 = !{ptr @.str.75, !132, !"<string literal>", i1 false, i1 false}
!134 = distinct !{null, !135, !"__already_done", i1 false, i1 false}
!135 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!136 = !{ptr @.str.76, !135, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @.str.77, !135, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @.str.78, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/infiniband/hw/mlx4/mad.c", i32 1840, i32 3}
!140 = !{ptr @.str.79, !139, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @create_pv_sqp._entry, !139, !"_entry", i1 false, i1 false}
!142 = !{ptr @create_pv_sqp._entry_ptr, !139, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.80, !139, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @.str.81, !139, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @.str.83, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/infiniband/hw/mlx4/mad.c", i32 1859, i32 3}
!147 = !{ptr @create_pv_sqp._entry.82, !146, !"_entry", i1 false, i1 false}
!148 = !{ptr @create_pv_sqp._entry_ptr.84, !146, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.86, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/infiniband/hw/mlx4/mad.c", i32 1866, i32 3}
!151 = !{ptr @create_pv_sqp._entry.85, !150, !"_entry", i1 false, i1 false}
!152 = !{ptr @create_pv_sqp._entry_ptr.87, !150, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @.str.89, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/infiniband/hw/mlx4/mad.c", i32 1874, i32 3}
!155 = !{ptr @create_pv_sqp._entry.88, !154, !"_entry", i1 false, i1 false}
!156 = !{ptr @create_pv_sqp._entry_ptr.90, !154, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.92, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/infiniband/hw/mlx4/mad.c", i32 1882, i32 4}
!159 = !{ptr @create_pv_sqp._entry.91, !158, !"_entry", i1 false, i1 false}
!160 = !{ptr @create_pv_sqp._entry_ptr.93, !158, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @.str.94, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/infiniband/hw/mlx4/mad.c", i32 1793, i32 2}
!163 = !{ptr @.str.95, !162, !"<string literal>", i1 false, i1 false}
!164 = !{ptr @pv_qp_event_handler._entry, !162, !"_entry", i1 false, i1 false}
!165 = !{ptr @pv_qp_event_handler._entry_ptr, !162, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @.str.96, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/infiniband/hw/mlx4/mad.c", i32 1755, i32 6}
!168 = !{ptr @.str.97, !167, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @mlx4_ib_tunnel_comp_worker._entry, !167, !"_entry", i1 false, i1 false}
!170 = !{ptr @mlx4_ib_tunnel_comp_worker._entry_ptr, !167, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @.str.98, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/infiniband/hw/mlx4/mad.c", i32 1772, i32 4}
!173 = !{ptr @mlx4_ib_tunnel_comp_worker.__UNIQUE_ID_ddebug522, !172, !"__UNIQUE_ID_ddebug522", i1 false, i1 false}
!174 = !{ptr @.str.99, !172, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @.str.100, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/infiniband/hw/mlx4/mad.c", i32 1498, i32 3}
!177 = !{ptr @.str.101, !176, !"<string literal>", i1 false, i1 false}
!178 = !{ptr @mlx4_ib_multiplex_mad._entry, !176, !"_entry", i1 false, i1 false}
!179 = !{ptr @mlx4_ib_multiplex_mad._entry_ptr, !176, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @.str.103, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/infiniband/hw/mlx4/mad.c", i32 1503, i32 3}
!182 = !{ptr @mlx4_ib_multiplex_mad._entry.102, !181, !"_entry", i1 false, i1 false}
!183 = !{ptr @mlx4_ib_multiplex_mad._entry_ptr.104, !181, !"_entry_ptr", i1 false, i1 false}
!184 = !{ptr @.str.106, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/infiniband/hw/mlx4/mad.c", i32 1522, i32 4}
!186 = !{ptr @mlx4_ib_multiplex_mad._entry.105, !185, !"_entry", i1 false, i1 false}
!187 = !{ptr @mlx4_ib_multiplex_mad._entry_ptr.107, !185, !"_entry_ptr", i1 false, i1 false}
!188 = !{ptr @.str.109, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/infiniband/hw/mlx4/mad.c", i32 1559, i32 4}
!190 = !{ptr @mlx4_ib_multiplex_mad._entry.108, !189, !"_entry", i1 false, i1 false}
!191 = !{ptr @mlx4_ib_multiplex_mad._entry_ptr.110, !189, !"_entry_ptr", i1 false, i1 false}
!192 = !{ptr @.str.111, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/infiniband/hw/mlx4/mad.c", i32 1597, i32 3}
!194 = !{ptr @mlx4_ib_multiplex_mad.__UNIQUE_ID_ddebug521, !193, !"__UNIQUE_ID_ddebug521", i1 false, i1 false}
!195 = !{ptr @.str.112, !193, !"<string literal>", i1 false, i1 false}
!196 = !{ptr @.str.113, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/infiniband/hw/mlx4/mad.c", i32 1932, i32 6}
!198 = !{ptr @.str.114, !197, !"<string literal>", i1 false, i1 false}
!199 = !{ptr @mlx4_ib_sqp_comp_worker._entry, !197, !"_entry", i1 false, i1 false}
!200 = !{ptr @mlx4_ib_sqp_comp_worker._entry_ptr, !197, !"_entry_ptr", i1 false, i1 false}
!201 = !{ptr @mlx4_ib_sqp_comp_worker.__UNIQUE_ID_ddebug523, !202, !"__UNIQUE_ID_ddebug523", i1 false, i1 false}
!202 = !{!"../drivers/infiniband/hw/mlx4/mad.c", i32 1939, i32 4}
!203 = !{ptr @.str.115, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/infiniband/hw/mlx4/mad.c", i32 704, i32 4}
!205 = !{ptr @.str.116, !204, !"<string literal>", i1 false, i1 false}
!206 = !{ptr @mlx4_ib_demux_mad._entry, !204, !"_entry", i1 false, i1 false}
!207 = !{ptr @mlx4_ib_demux_mad._entry_ptr, !204, !"_entry_ptr", i1 false, i1 false}
!208 = !{ptr @.str.118, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/infiniband/hw/mlx4/mad.c", i32 708, i32 4}
!210 = !{ptr @mlx4_ib_demux_mad._entry.117, !209, !"_entry", i1 false, i1 false}
!211 = !{ptr @mlx4_ib_demux_mad._entry_ptr.119, !209, !"_entry_ptr", i1 false, i1 false}
!212 = !{ptr @.str.120, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/infiniband/hw/mlx4/mad.c", i32 717, i32 5}
!214 = !{ptr @mlx4_ib_demux_mad.__UNIQUE_ID_ddebug515, !213, !"__UNIQUE_ID_ddebug515", i1 false, i1 false}
!215 = !{ptr @.str.121, !213, !"<string literal>", i1 false, i1 false}
!216 = !{ptr @.str.123, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/infiniband/hw/mlx4/mad.c", i32 722, i32 4}
!218 = !{ptr @mlx4_ib_demux_mad._entry.122, !217, !"_entry", i1 false, i1 false}
!219 = !{ptr @mlx4_ib_demux_mad._entry_ptr.124, !217, !"_entry_ptr", i1 false, i1 false}
!220 = !{ptr @.str.126, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/infiniband/hw/mlx4/mad.c", i32 726, i32 4}
!222 = !{ptr @mlx4_ib_demux_mad._entry.125, !221, !"_entry", i1 false, i1 false}
!223 = !{ptr @mlx4_ib_demux_mad._entry_ptr.127, !221, !"_entry_ptr", i1 false, i1 false}
!224 = !{ptr @.str.128, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/infiniband/hw/mlx4/mad.c", i32 736, i32 4}
!226 = !{ptr @mlx4_ib_demux_mad.__UNIQUE_ID_ddebug516, !225, !"__UNIQUE_ID_ddebug516", i1 false, i1 false}
!227 = !{ptr @.str.129, !225, !"<string literal>", i1 false, i1 false}
!228 = !{ptr @mlx4_ib_demux_mad._entry.130, !229, !"_entry", i1 false, i1 false}
!229 = !{!"../drivers/infiniband/hw/mlx4/mad.c", i32 764, i32 5}
!230 = !{ptr @mlx4_ib_demux_mad._entry_ptr.131, !229, !"_entry_ptr", i1 false, i1 false}
!231 = !{ptr @.str.133, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/infiniband/hw/mlx4/mad.c", i32 779, i32 5}
!233 = !{ptr @mlx4_ib_demux_mad._entry.132, !232, !"_entry", i1 false, i1 false}
!234 = !{ptr @mlx4_ib_demux_mad._entry_ptr.134, !232, !"_entry_ptr", i1 false, i1 false}
!235 = !{ptr @.str.135, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/infiniband/hw/mlx4/mad.c", i32 802, i32 4}
!237 = !{ptr @mlx4_ib_demux_mad.__UNIQUE_ID_ddebug517, !236, !"__UNIQUE_ID_ddebug517", i1 false, i1 false}
!238 = !{ptr @.str.136, !236, !"<string literal>", i1 false, i1 false}
!239 = !{ptr @mlx4_ib_demux_mad._entry.137, !240, !"_entry", i1 false, i1 false}
!240 = !{!"../drivers/infiniband/hw/mlx4/mad.c", i32 809, i32 3}
!241 = !{ptr @mlx4_ib_demux_mad._entry_ptr.138, !240, !"_entry_ptr", i1 false, i1 false}
!242 = !{ptr @mlx4_ib_demux_mad.__UNIQUE_ID_ddebug518, !243, !"__UNIQUE_ID_ddebug518", i1 false, i1 false}
!243 = !{!"../drivers/infiniband/hw/mlx4/mad.c", i32 816, i32 3}
!244 = !{ptr @.str.139, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/infiniband/hw/mlx4/mad.c", i32 2193, i32 3}
!246 = !{ptr @.str.140, !245, !"<string literal>", i1 false, i1 false}
!247 = !{ptr @mlx4_ib_alloc_demux_ctx._entry, !245, !"_entry", i1 false, i1 false}
!248 = !{ptr @mlx4_ib_alloc_demux_ctx._entry_ptr, !245, !"_entry_ptr", i1 false, i1 false}
!249 = !{ptr @.str.141, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/infiniband/hw/mlx4/mad.c", i32 2197, i32 31}
!251 = !{ptr @.str.143, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/infiniband/hw/mlx4/mad.c", i32 2200, i32 3}
!253 = !{ptr @mlx4_ib_alloc_demux_ctx._entry.142, !252, !"_entry", i1 false, i1 false}
!254 = !{ptr @mlx4_ib_alloc_demux_ctx._entry_ptr.144, !252, !"_entry_ptr", i1 false, i1 false}
!255 = !{ptr @.str.145, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/infiniband/hw/mlx4/mad.c", i32 2205, i32 31}
!257 = !{ptr @.str.147, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/infiniband/hw/mlx4/mad.c", i32 2208, i32 3}
!259 = !{ptr @mlx4_ib_alloc_demux_ctx._entry.146, !258, !"_entry", i1 false, i1 false}
!260 = !{ptr @mlx4_ib_alloc_demux_ctx._entry_ptr.148, !258, !"_entry_ptr", i1 false, i1 false}
!261 = !{ptr @.str.149, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/infiniband/hw/mlx4/mad.c", i32 2213, i32 31}
!263 = !{ptr @.str.151, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/infiniband/hw/mlx4/mad.c", i32 2216, i32 3}
!265 = !{ptr @mlx4_ib_alloc_demux_ctx._entry.150, !264, !"_entry", i1 false, i1 false}
!266 = !{ptr @mlx4_ib_alloc_demux_ctx._entry_ptr.152, !264, !"_entry_ptr", i1 false, i1 false}
!267 = !{i32 1, !"wchar_size", i32 2}
!268 = !{i32 1, !"min_enum_size", i32 4}
!269 = !{i32 8, !"branch-target-enforcement", i32 0}
!270 = !{i32 8, !"sign-return-address", i32 0}
!271 = !{i32 8, !"sign-return-address-all", i32 0}
!272 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!273 = !{i32 7, !"uwtable", i32 1}
!274 = !{i32 7, !"frame-pointer", i32 2}
!275 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!276 = !{i64 2148644003}
!277 = !{i64 2148559288, i64 2148559320, i64 2148559349, i64 2148559383, i64 2148559414, i64 2148559437}
!278 = !{i64 2148644232}
!279 = !{!"branch_weights", i32 2000, i32 1}
!280 = !{!"auto-init"}
!281 = !{i64 2149260177, i64 2149260182, i64 2149260195, i64 2149260239, i64 2149260273, i64 2149260294}
