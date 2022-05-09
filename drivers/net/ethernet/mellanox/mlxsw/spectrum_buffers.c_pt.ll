; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlxsw/spectrum_buffers.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlxsw/spectrum_buffers.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mlxsw_sp_sb_pool_des = type { i32, i8 }
%struct.mlxsw_sp_sb_pm = type { i32, i32, %struct.mlxsw_cp_sb_occ }
%struct.mlxsw_cp_sb_occ = type { i32, i32 }
%struct.mlxsw_sp_sb_pr = type { i32, i32, i8 }
%struct.mlxsw_sp_sb_mm = type { i32, i32, i16 }
%struct.mlxsw_sp_sb_cm = type { i32, i32, i16, %struct.mlxsw_cp_sb_occ, i8 }
%struct.mlxsw_sp_sb_vals = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.mlxsw_sp_sb_ops = type { ptr }
%struct.mlxsw_reg_info = type { i16, i16, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mlxsw_sp = type { ptr, ptr, ptr, [6 x i8], ptr, ptr, ptr, %struct.rhashtable, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, ptr, ptr, ptr, %struct.mlxsw_sp_parsing, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.rhashtable, %struct.mutex }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mlxsw_sp_parsing = type { %struct.refcount_struct, i16, i16, %struct.mutex }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.mlxsw_sp_sb = type { ptr, ptr, i32, i32, i64 }
%struct.mlxsw_sp_hdroom = type { i32, %struct.anon.166, %struct.anon.167, %struct.anon.168, i32, i32 }
%struct.anon.166 = type { [8 x %struct.mlxsw_sp_hdroom_prio] }
%struct.mlxsw_sp_hdroom_prio = type { i8, i8, i8, i8 }
%struct.anon.167 = type { [10 x %struct.mlxsw_sp_hdroom_buf] }
%struct.mlxsw_sp_hdroom_buf = type { i32, i32, i32, i8 }
%struct.anon.168 = type { i32, i32, i8 }
%struct.mlxsw_sp_port = type { ptr, ptr, ptr, i16, i8, i16, i16, %struct.anon.161, %struct.anon.162, %struct.mlxsw_sp_port_mapping, %struct.anon.163, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.anon.165, i32, i32, ptr, i64 }
%struct.anon.161 = type { i8 }
%struct.anon.162 = type { ptr, ptr, ptr, i32 }
%struct.mlxsw_sp_port_mapping = type { i8, i8, i8, i8 }
%struct.anon.163 = type { %struct.rtnl_link_stats64, %struct.mlxsw_sp_port_xstats, %struct.delayed_work }
%struct.rtnl_link_stats64 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.mlxsw_sp_port_xstats = type { i64, [16 x i64], [16 x i64], [16 x i64], [16 x i64], [8 x i64], [8 x i64] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.anon.165 = type { %struct.delayed_work, %struct.hwtstamp_config, i16, i16, %struct.mlxsw_sp_ptp_port_stats }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.mlxsw_sp_ptp_port_stats = type { %struct.mlxsw_sp_ptp_port_dir_stats, %struct.mlxsw_sp_ptp_port_dir_stats }
%struct.mlxsw_sp_ptp_port_dir_stats = type { i64, i64 }
%struct.mlxsw_sp_sb_port = type { [8 x %struct.mlxsw_sp_sb_cm], [16 x %struct.mlxsw_sp_sb_cm], ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.160, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.160 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
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
%struct.devlink_sb_pool_info = type { i32, i32, i32, i32 }

@mlxsw_sp1_sb_pool_dess = internal constant { [11 x %struct.mlxsw_sp_sb_pool_des], [40 x i8] } { [11 x %struct.mlxsw_sp_sb_pool_des] [%struct.mlxsw_sp_sb_pool_des zeroinitializer, %struct.mlxsw_sp_sb_pool_des { i32 0, i8 1 }, %struct.mlxsw_sp_sb_pool_des { i32 0, i8 2 }, %struct.mlxsw_sp_sb_pool_des { i32 0, i8 3 }, %struct.mlxsw_sp_sb_pool_des { i32 1, i8 0 }, %struct.mlxsw_sp_sb_pool_des { i32 1, i8 1 }, %struct.mlxsw_sp_sb_pool_des { i32 1, i8 2 }, %struct.mlxsw_sp_sb_pool_des { i32 1, i8 3 }, %struct.mlxsw_sp_sb_pool_des { i32 1, i8 15 }, %struct.mlxsw_sp_sb_pool_des { i32 0, i8 4 }, %struct.mlxsw_sp_sb_pool_des { i32 1, i8 4 }], [40 x i8] zeroinitializer }, align 32
@mlxsw_sp1_sb_pms = internal constant { [11 x %struct.mlxsw_sp_sb_pm], [48 x i8] } { [11 x %struct.mlxsw_sp_sb_pm] [%struct.mlxsw_sp_sb_pm { i32 0, i32 14, %struct.mlxsw_cp_sb_occ zeroinitializer }, %struct.mlxsw_sp_sb_pm { i32 0, i32 1, %struct.mlxsw_cp_sb_occ zeroinitializer }, %struct.mlxsw_sp_sb_pm { i32 0, i32 1, %struct.mlxsw_cp_sb_occ zeroinitializer }, %struct.mlxsw_sp_sb_pm { i32 0, i32 1, %struct.mlxsw_cp_sb_occ zeroinitializer }, %struct.mlxsw_sp_sb_pm { i32 0, i32 7, %struct.mlxsw_cp_sb_occ zeroinitializer }, %struct.mlxsw_sp_sb_pm { i32 0, i32 1, %struct.mlxsw_cp_sb_occ zeroinitializer }, %struct.mlxsw_sp_sb_pm { i32 0, i32 1, %struct.mlxsw_cp_sb_occ zeroinitializer }, %struct.mlxsw_sp_sb_pm { i32 0, i32 1, %struct.mlxsw_cp_sb_occ zeroinitializer }, %struct.mlxsw_sp_sb_pm { i32 10000, i32 90000, %struct.mlxsw_cp_sb_occ zeroinitializer }, %struct.mlxsw_sp_sb_pm { i32 0, i32 8, %struct.mlxsw_cp_sb_occ zeroinitializer }, %struct.mlxsw_sp_sb_pm { i32 0, i32 1, %struct.mlxsw_cp_sb_occ zeroinitializer }], [48 x i8] zeroinitializer }, align 32
@mlxsw_sp_cpu_port_sb_pms = internal constant { [11 x %struct.mlxsw_sp_sb_pm], [48 x i8] } { [11 x %struct.mlxsw_sp_sb_pm] [%struct.mlxsw_sp_sb_pm zeroinitializer, %struct.mlxsw_sp_sb_pm zeroinitializer, %struct.mlxsw_sp_sb_pm zeroinitializer, %struct.mlxsw_sp_sb_pm zeroinitializer, %struct.mlxsw_sp_sb_pm zeroinitializer, %struct.mlxsw_sp_sb_pm zeroinitializer, %struct.mlxsw_sp_sb_pm zeroinitializer, %struct.mlxsw_sp_sb_pm zeroinitializer, %struct.mlxsw_sp_sb_pm { i32 0, i32 90000, %struct.mlxsw_cp_sb_occ zeroinitializer }, %struct.mlxsw_sp_sb_pm zeroinitializer, %struct.mlxsw_sp_sb_pm { i32 0, i32 14, %struct.mlxsw_cp_sb_occ zeroinitializer }], [48 x i8] zeroinitializer }, align 32
@mlxsw_sp1_sb_prs = internal constant { [11 x %struct.mlxsw_sp_sb_pr], [60 x i8] } { [11 x %struct.mlxsw_sp_sb_pr] [%struct.mlxsw_sp_sb_pr { i32 1, i32 -2, i8 0 }, %struct.mlxsw_sp_sb_pr { i32 1, i32 0, i8 0 }, %struct.mlxsw_sp_sb_pr { i32 1, i32 0, i8 0 }, %struct.mlxsw_sp_sb_pr { i32 1, i32 0, i8 0 }, %struct.mlxsw_sp_sb_pr { i32 1, i32 -2, i8 -128 }, %struct.mlxsw_sp_sb_pr { i32 1, i32 0, i8 0 }, %struct.mlxsw_sp_sb_pr { i32 1, i32 0, i8 0 }, %struct.mlxsw_sp_sb_pr { i32 1, i32 0, i8 0 }, %struct.mlxsw_sp_sb_pr { i32 0, i32 -1, i8 -64 }, %struct.mlxsw_sp_sb_pr { i32 1, i32 256000, i8 -128 }, %struct.mlxsw_sp_sb_pr { i32 1, i32 256000, i8 -128 }], [60 x i8] zeroinitializer }, align 32
@mlxsw_sp_sb_mms = internal constant { [15 x %struct.mlxsw_sp_sb_mm], [44 x i8] } { [15 x %struct.mlxsw_sp_sb_mm] [%struct.mlxsw_sp_sb_mm { i32 0, i32 6, i16 4 }, %struct.mlxsw_sp_sb_mm { i32 0, i32 6, i16 4 }, %struct.mlxsw_sp_sb_mm { i32 0, i32 6, i16 4 }, %struct.mlxsw_sp_sb_mm { i32 0, i32 6, i16 4 }, %struct.mlxsw_sp_sb_mm { i32 0, i32 6, i16 4 }, %struct.mlxsw_sp_sb_mm { i32 0, i32 6, i16 4 }, %struct.mlxsw_sp_sb_mm { i32 0, i32 6, i16 4 }, %struct.mlxsw_sp_sb_mm { i32 0, i32 6, i16 4 }, %struct.mlxsw_sp_sb_mm { i32 0, i32 6, i16 4 }, %struct.mlxsw_sp_sb_mm { i32 0, i32 6, i16 4 }, %struct.mlxsw_sp_sb_mm { i32 0, i32 6, i16 4 }, %struct.mlxsw_sp_sb_mm { i32 0, i32 6, i16 4 }, %struct.mlxsw_sp_sb_mm { i32 0, i32 6, i16 4 }, %struct.mlxsw_sp_sb_mm { i32 0, i32 6, i16 4 }, %struct.mlxsw_sp_sb_mm { i32 0, i32 6, i16 4 }], [44 x i8] zeroinitializer }, align 32
@mlxsw_sp1_sb_cms_ingress = internal constant { [10 x %struct.mlxsw_sp_sb_cm], [48 x i8] } { [10 x %struct.mlxsw_sp_sb_cm] [%struct.mlxsw_sp_sb_cm { i32 10000, i32 8, i16 0, %struct.mlxsw_cp_sb_occ zeroinitializer, i8 0 }, %struct.mlxsw_sp_sb_cm { i32 0, i32 1, i16 0, %struct.mlxsw_cp_sb_occ zeroinitializer, i8 0 }, %struct.mlxsw_sp_sb_cm { i32 0, i32 1, i16 0, %struct.mlxsw_cp_sb_occ zeroinitializer, i8 0 }, %struct.mlxsw_sp_sb_cm { i32 0, i32 1, i16 0, %struct.mlxsw_cp_sb_occ zeroinitializer, i8 0 }, %struct.mlxsw_sp_sb_cm { i32 0, i32 1, i16 0, %struct.mlxsw_cp_sb_occ zeroinitializer, i8 0 }, %struct.mlxsw_sp_sb_cm { i32 0, i32 1, i16 0, %struct.mlxsw_cp_sb_occ zeroinitializer, i8 0 }, %struct.mlxsw_sp_sb_cm { i32 0, i32 1, i16 0, %struct.mlxsw_cp_sb_occ zeroinitializer, i8 0 }, %struct.mlxsw_sp_sb_cm { i32 0, i32 1, i16 0, %struct.mlxsw_cp_sb_occ zeroinitializer, i8 0 }, %struct.mlxsw_sp_sb_cm zeroinitializer, %struct.mlxsw_sp_sb_cm { i32 10000, i32 8, i16 9, %struct.mlxsw_cp_sb_occ zeroinitializer, i8 0 }], [48 x i8] zeroinitializer }, align 32
@mlxsw_sp1_sb_cms_egress = internal constant { [17 x %struct.mlxsw_sp_sb_cm], [104 x i8] } { [17 x %struct.mlxsw_sp_sb_cm] [%struct.mlxsw_sp_sb_cm { i32 1500, i32 9, i16 4, %struct.mlxsw_cp_sb_occ zeroinitializer, i8 0 }, %struct.mlxsw_sp_sb_cm { i32 1500, i32 9, i16 4, %struct.mlxsw_cp_sb_occ zeroinitializer, i8 0 }, %struct.mlxsw_sp_sb_cm { i32 1500, i32 9, i16 4, %struct.mlxsw_cp_sb_occ zeroinitializer, i8 0 }, %struct.mlxsw_sp_sb_cm { i32 1500, i32 9, i16 4, %struct.mlxsw_cp_sb_occ zeroinitializer, i8 0 }, %struct.mlxsw_sp_sb_cm { i32 1500, i32 9, i16 4, %struct.mlxsw_cp_sb_occ zeroinitializer, i8 0 }, %struct.mlxsw_sp_sb_cm { i32 1500, i32 9, i16 4, %struct.mlxsw_cp_sb_occ zeroinitializer, i8 0 }, %struct.mlxsw_sp_sb_cm { i32 1500, i32 9, i16 4, %struct.mlxsw_cp_sb_occ zeroinitializer, i8 0 }, %struct.mlxsw_sp_sb_cm { i32 1500, i32 9, i16 4, %struct.mlxsw_cp_sb_occ zeroinitializer, i8 0 }, %struct.mlxsw_sp_sb_cm { i32 0, i32 -1, i16 8, %struct.mlxsw_cp_sb_occ zeroinitializer, i8 -64 }, %struct.mlxsw_sp_sb_cm { i32 0, i32 -1, i16 8, %struct.mlxsw_cp_sb_occ zeroinitializer, i8 -64 }, %struct.mlxsw_sp_sb_cm { i32 0, i32 -1, i16 8, %struct.mlxsw_cp_sb_occ zeroinitializer, i8 -64 }, %struct.mlxsw_sp_sb_cm { i32 0, i32 -1, i16 8, %struct.mlxsw_cp_sb_occ zeroinitializer, i8 -64 }, %struct.mlxsw_sp_sb_cm { i32 0, i32 -1, i16 8, %struct.mlxsw_cp_sb_occ zeroinitializer, i8 -64 }, %struct.mlxsw_sp_sb_cm { i32 0, i32 -1, i16 8, %struct.mlxsw_cp_sb_occ zeroinitializer, i8 -64 }, %struct.mlxsw_sp_sb_cm { i32 0, i32 -1, i16 8, %struct.mlxsw_cp_sb_occ zeroinitializer, i8 -64 }, %struct.mlxsw_sp_sb_cm { i32 0, i32 -1, i16 8, %struct.mlxsw_cp_sb_occ zeroinitializer, i8 -64 }, %struct.mlxsw_sp_sb_cm { i32 1, i32 255, i16 4, %struct.mlxsw_cp_sb_occ zeroinitializer, i8 0 }], [104 x i8] zeroinitializer }, align 32
@mlxsw_sp_cpu_port_sb_cms = internal constant { [32 x %struct.mlxsw_sp_sb_cm], [192 x i8] } { [32 x %struct.mlxsw_sp_sb_cm] [%struct.mlxsw_sp_sb_cm { i32 1000, i32 8, i16 10, %struct.mlxsw_cp_sb_occ zeroinitializer, i8 0 }, %struct.mlxsw_sp_sb_cm { i32 1000, i32 8, i16 10, %struct.mlxsw_cp_sb_occ zeroinitializer, i8 0 }, %struct.mlxsw_sp_sb_cm { i32 1000, i32 8, i16 10, %struct.mlxsw_cp_sb_occ zeroinitializer, i8 0 }, %struct.mlxsw_sp_sb_cm { i32 1000, i32 8, i16 10, %struct.mlxsw_cp_sb_occ zeroinitializer, i8 0 }, %struct.mlxsw_sp_sb_cm { i32 1000, i32 8, i16 10, %struct.mlxsw_cp_sb_occ zeroinitializer, i8 0 }, %struct.mlxsw_sp_sb_cm { i32 1000, i32 8, i16 10, %struct.mlxsw_cp_sb_occ zeroinitializer, i8 0 }, %struct.mlxsw_sp_sb_cm { i32 0, i32 0, i16 10, %struct.mlxsw_cp_sb_occ zeroinitializer, i8 0 }, %struct.mlxsw_sp_sb_cm { i32 1000, i32 8, i16 10, %struct.mlxsw_cp_sb_occ zeroinitializer, i8 0 }, %struct.mlxsw_sp_sb_cm { i32 0, i32 0, i16 10, %struct.mlxsw_cp_sb_occ zeroinitializer, i8 0 }, %struct.mlxsw_sp_sb_cm { i32 0, i32 0, i16 10, %struct.mlxsw_cp_sb_occ zeroinitializer, i8 0 }, %struct.mlxsw_sp_sb_cm { i32 0, i32 0, i16 10, %struct.mlxsw_cp_sb_occ zeroinitializer, i8 0 }, %struct.mlxsw_sp_sb_cm { i32 0, i32 0, i16 10, %struct.mlxsw_cp_sb_occ zeroinitializer, i8 0 }, %struct.mlxsw_sp_sb_cm { i32 0, i32 0, i16 10, %struct.mlxsw_cp_sb_occ zeroinitializer, i8 0 }, %struct.mlxsw_sp_sb_cm { i32 0, i32 0, i16 10, %struct.mlxsw_cp_sb_occ zeroinitializer, i8 0 }, %struct.mlxsw_sp_sb_cm { i32 0, i32 0, i16 10, %struct.mlxsw_cp_sb_occ zeroinitializer, i8 0 }, %struct.mlxsw_sp_sb_cm { i32 0, i32 0, i16 10, %struct.mlxsw_cp_sb_occ zeroinitializer, i8 0 }, %struct.mlxsw_sp_sb_cm { i32 0, i32 0, i16 10, %struct.mlxsw_cp_sb_occ zeroinitializer, i8 0 }, %struct.mlxsw_sp_sb_cm { i32 0, i32 0, i16 10, %struct.mlxsw_cp_sb_occ zeroinitializer, i8 0 }, %struct.mlxsw_sp_sb_cm { i32 0, i32 0, i16 10, %struct.mlxsw_cp_sb_occ zeroinitializer, i8 0 }, %struct.mlxsw_sp_sb_cm { i32 0, i32 0, i16 10, %struct.mlxsw_cp_sb_occ zeroinitializer, i8 0 }, %struct.mlxsw_sp_sb_cm { i32 0, i32 0, i16 10, %struct.mlxsw_cp_sb_occ zeroinitializer, i8 0 }, %struct.mlxsw_sp_sb_cm { i32 0, i32 0, i16 10, %struct.mlxsw_cp_sb_occ zeroinitializer, i8 0 }, %struct.mlxsw_sp_sb_cm { i32 0, i32 0, i16 10, %struct.mlxsw_cp_sb_occ zeroinitializer, i8 0 }, %struct.mlxsw_sp_sb_cm { i32 0, i32 0, i16 10, %struct.mlxsw_cp_sb_occ zeroinitializer, i8 0 }, %struct.mlxsw_sp_sb_cm { i32 0, i32 0, i16 10, %struct.mlxsw_cp_sb_occ zeroinitializer, i8 0 }, %struct.mlxsw_sp_sb_cm { i32 0, i32 0, i16 10, %struct.mlxsw_cp_sb_occ zeroinitializer, i8 0 }, %struct.mlxsw_sp_sb_cm { i32 0, i32 0, i16 10, %struct.mlxsw_cp_sb_occ zeroinitializer, i8 0 }, %struct.mlxsw_sp_sb_cm { i32 0, i32 0, i16 10, %struct.mlxsw_cp_sb_occ zeroinitializer, i8 0 }, %struct.mlxsw_sp_sb_cm { i32 0, i32 0, i16 10, %struct.mlxsw_cp_sb_occ zeroinitializer, i8 0 }, %struct.mlxsw_sp_sb_cm { i32 0, i32 0, i16 10, %struct.mlxsw_cp_sb_occ zeroinitializer, i8 0 }, %struct.mlxsw_sp_sb_cm { i32 0, i32 0, i16 10, %struct.mlxsw_cp_sb_occ zeroinitializer, i8 0 }, %struct.mlxsw_sp_sb_cm { i32 0, i32 0, i16 10, %struct.mlxsw_cp_sb_occ zeroinitializer, i8 0 }], [192 x i8] zeroinitializer }, align 32
@mlxsw_sp1_sb_vals = dso_local constant { %struct.mlxsw_sp_sb_vals, [44 x i8] } { %struct.mlxsw_sp_sb_vals { i32 11, ptr @mlxsw_sp1_sb_pool_dess, ptr @mlxsw_sp1_sb_pms, ptr @mlxsw_sp_cpu_port_sb_pms, ptr @mlxsw_sp1_sb_prs, ptr @mlxsw_sp_sb_mms, ptr @mlxsw_sp1_sb_cms_ingress, ptr @mlxsw_sp1_sb_cms_egress, ptr @mlxsw_sp_cpu_port_sb_cms, i32 15, i32 10, i32 17, i32 32 }, [44 x i8] zeroinitializer }, align 32
@mlxsw_sp2_sb_pool_dess = internal constant { [11 x %struct.mlxsw_sp_sb_pool_des], [40 x i8] } { [11 x %struct.mlxsw_sp_sb_pool_des] [%struct.mlxsw_sp_sb_pool_des zeroinitializer, %struct.mlxsw_sp_sb_pool_des { i32 0, i8 1 }, %struct.mlxsw_sp_sb_pool_des { i32 0, i8 2 }, %struct.mlxsw_sp_sb_pool_des { i32 0, i8 3 }, %struct.mlxsw_sp_sb_pool_des { i32 1, i8 0 }, %struct.mlxsw_sp_sb_pool_des { i32 1, i8 1 }, %struct.mlxsw_sp_sb_pool_des { i32 1, i8 2 }, %struct.mlxsw_sp_sb_pool_des { i32 1, i8 3 }, %struct.mlxsw_sp_sb_pool_des { i32 1, i8 15 }, %struct.mlxsw_sp_sb_pool_des { i32 0, i8 4 }, %struct.mlxsw_sp_sb_pool_des { i32 1, i8 4 }], [40 x i8] zeroinitializer }, align 32
@mlxsw_sp2_sb_pms = internal constant { [11 x %struct.mlxsw_sp_sb_pm], [48 x i8] } { [11 x %struct.mlxsw_sp_sb_pm] [%struct.mlxsw_sp_sb_pm { i32 0, i32 7, %struct.mlxsw_cp_sb_occ zeroinitializer }, %struct.mlxsw_sp_sb_pm zeroinitializer, %struct.mlxsw_sp_sb_pm zeroinitializer, %struct.mlxsw_sp_sb_pm zeroinitializer, %struct.mlxsw_sp_sb_pm { i32 0, i32 7, %struct.mlxsw_cp_sb_occ zeroinitializer }, %struct.mlxsw_sp_sb_pm zeroinitializer, %struct.mlxsw_sp_sb_pm zeroinitializer, %struct.mlxsw_sp_sb_pm zeroinitializer, %struct.mlxsw_sp_sb_pm { i32 10000, i32 90000, %struct.mlxsw_cp_sb_occ zeroinitializer }, %struct.mlxsw_sp_sb_pm { i32 0, i32 8, %struct.mlxsw_cp_sb_occ zeroinitializer }, %struct.mlxsw_sp_sb_pm { i32 0, i32 1, %struct.mlxsw_cp_sb_occ zeroinitializer }], [48 x i8] zeroinitializer }, align 32
@mlxsw_sp2_sb_prs = internal constant { [11 x %struct.mlxsw_sp_sb_pr], [60 x i8] } { [11 x %struct.mlxsw_sp_sb_pr] [%struct.mlxsw_sp_sb_pr { i32 1, i32 -2, i8 0 }, %struct.mlxsw_sp_sb_pr zeroinitializer, %struct.mlxsw_sp_sb_pr zeroinitializer, %struct.mlxsw_sp_sb_pr zeroinitializer, %struct.mlxsw_sp_sb_pr { i32 1, i32 -2, i8 -128 }, %struct.mlxsw_sp_sb_pr zeroinitializer, %struct.mlxsw_sp_sb_pr zeroinitializer, %struct.mlxsw_sp_sb_pr zeroinitializer, %struct.mlxsw_sp_sb_pr { i32 0, i32 -1, i8 -64 }, %struct.mlxsw_sp_sb_pr { i32 1, i32 256000, i8 -128 }, %struct.mlxsw_sp_sb_pr { i32 1, i32 256000, i8 -128 }], [60 x i8] zeroinitializer }, align 32
@mlxsw_sp2_sb_cms_ingress = internal constant { [10 x %struct.mlxsw_sp_sb_cm], [48 x i8] } { [10 x %struct.mlxsw_sp_sb_cm] [%struct.mlxsw_sp_sb_cm { i32 0, i32 7, i16 0, %struct.mlxsw_cp_sb_occ zeroinitializer, i8 0 }, %struct.mlxsw_sp_sb_cm { i32 0, i32 1, i16 0, %struct.mlxsw_cp_sb_occ zeroinitializer, i8 0 }, %struct.mlxsw_sp_sb_cm { i32 0, i32 1, i16 0, %struct.mlxsw_cp_sb_occ zeroinitializer, i8 0 }, %struct.mlxsw_sp_sb_cm { i32 0, i32 1, i16 0, %struct.mlxsw_cp_sb_occ zeroinitializer, i8 0 }, %struct.mlxsw_sp_sb_cm { i32 0, i32 1, i16 0, %struct.mlxsw_cp_sb_occ zeroinitializer, i8 0 }, %struct.mlxsw_sp_sb_cm { i32 0, i32 1, i16 0, %struct.mlxsw_cp_sb_occ zeroinitializer, i8 0 }, %struct.mlxsw_sp_sb_cm { i32 0, i32 1, i16 0, %struct.mlxsw_cp_sb_occ zeroinitializer, i8 0 }, %struct.mlxsw_sp_sb_cm { i32 0, i32 1, i16 0, %struct.mlxsw_cp_sb_occ zeroinitializer, i8 0 }, %struct.mlxsw_sp_sb_cm zeroinitializer, %struct.mlxsw_sp_sb_cm { i32 10000, i32 8, i16 9, %struct.mlxsw_cp_sb_occ zeroinitializer, i8 0 }], [48 x i8] zeroinitializer }, align 32
@mlxsw_sp2_sb_cms_egress = internal constant { [17 x %struct.mlxsw_sp_sb_cm], [104 x i8] } { [17 x %struct.mlxsw_sp_sb_cm] [%struct.mlxsw_sp_sb_cm { i32 0, i32 7, i16 4, %struct.mlxsw_cp_sb_occ zeroinitializer, i8 0 }, %struct.mlxsw_sp_sb_cm { i32 0, i32 7, i16 4, %struct.mlxsw_cp_sb_occ zeroinitializer, i8 0 }, %struct.mlxsw_sp_sb_cm { i32 0, i32 7, i16 4, %struct.mlxsw_cp_sb_occ zeroinitializer, i8 0 }, %struct.mlxsw_sp_sb_cm { i32 0, i32 7, i16 4, %struct.mlxsw_cp_sb_occ zeroinitializer, i8 0 }, %struct.mlxsw_sp_sb_cm { i32 0, i32 7, i16 4, %struct.mlxsw_cp_sb_occ zeroinitializer, i8 0 }, %struct.mlxsw_sp_sb_cm { i32 0, i32 7, i16 4, %struct.mlxsw_cp_sb_occ zeroinitializer, i8 0 }, %struct.mlxsw_sp_sb_cm { i32 0, i32 7, i16 4, %struct.mlxsw_cp_sb_occ zeroinitializer, i8 0 }, %struct.mlxsw_sp_sb_cm { i32 0, i32 7, i16 4, %struct.mlxsw_cp_sb_occ zeroinitializer, i8 0 }, %struct.mlxsw_sp_sb_cm { i32 0, i32 -1, i16 8, %struct.mlxsw_cp_sb_occ zeroinitializer, i8 -64 }, %struct.mlxsw_sp_sb_cm { i32 0, i32 -1, i16 8, %struct.mlxsw_cp_sb_occ zeroinitializer, i8 -64 }, %struct.mlxsw_sp_sb_cm { i32 0, i32 -1, i16 8, %struct.mlxsw_cp_sb_occ zeroinitializer, i8 -64 }, %struct.mlxsw_sp_sb_cm { i32 0, i32 -1, i16 8, %struct.mlxsw_cp_sb_occ zeroinitializer, i8 -64 }, %struct.mlxsw_sp_sb_cm { i32 0, i32 -1, i16 8, %struct.mlxsw_cp_sb_occ zeroinitializer, i8 -64 }, %struct.mlxsw_sp_sb_cm { i32 0, i32 -1, i16 8, %struct.mlxsw_cp_sb_occ zeroinitializer, i8 -64 }, %struct.mlxsw_sp_sb_cm { i32 0, i32 -1, i16 8, %struct.mlxsw_cp_sb_occ zeroinitializer, i8 -64 }, %struct.mlxsw_sp_sb_cm { i32 0, i32 -1, i16 8, %struct.mlxsw_cp_sb_occ zeroinitializer, i8 -64 }, %struct.mlxsw_sp_sb_cm { i32 1, i32 255, i16 4, %struct.mlxsw_cp_sb_occ zeroinitializer, i8 0 }], [104 x i8] zeroinitializer }, align 32
@mlxsw_sp2_sb_vals = dso_local constant { %struct.mlxsw_sp_sb_vals, [44 x i8] } { %struct.mlxsw_sp_sb_vals { i32 11, ptr @mlxsw_sp2_sb_pool_dess, ptr @mlxsw_sp2_sb_pms, ptr @mlxsw_sp_cpu_port_sb_pms, ptr @mlxsw_sp2_sb_prs, ptr @mlxsw_sp_sb_mms, ptr @mlxsw_sp2_sb_cms_ingress, ptr @mlxsw_sp2_sb_cms_egress, ptr @mlxsw_sp_cpu_port_sb_cms, i32 15, i32 10, i32 17, i32 32 }, [44 x i8] zeroinitializer }, align 32
@mlxsw_sp1_sb_ops = dso_local constant { %struct.mlxsw_sp_sb_ops, [28 x i8] } { %struct.mlxsw_sp_sb_ops { ptr @mlxsw_sp1_pb_int_buf_size_get }, [28 x i8] zeroinitializer }, align 32
@mlxsw_sp2_sb_ops = dso_local constant { %struct.mlxsw_sp_sb_ops, [28 x i8] } { %struct.mlxsw_sp_sb_ops { ptr @mlxsw_sp2_pb_int_buf_size_get }, [28 x i8] zeroinitializer }, align 32
@mlxsw_sp3_sb_ops = dso_local constant { %struct.mlxsw_sp_sb_ops, [28 x i8] } { %struct.mlxsw_sp_sb_ops { ptr @mlxsw_sp3_pb_int_buf_size_get }, [28 x i8] zeroinitializer }, align 32
@mlxsw_sp_sb_pool_set.__msg = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"mlxsw_spectrum: Exceeded shared buffer size\00", [52 x i8] zeroinitializer }, align 32
@mlxsw_sp_sb_pool_set.__msg.1 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"mlxsw_spectrum: Changing this pool's threshold type is forbidden\00", [63 x i8] zeroinitializer }, align 32
@mlxsw_sp_sb_pool_set.__msg.2 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"mlxsw_spectrum: Changing this pool's size is forbidden\00", [41 x i8] zeroinitializer }, align 32
@mlxsw_sp_sb_port_pool_set.__msg = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"mlxsw_spectrum: Changing CPU port's threshold is forbidden\00", [37 x i8] zeroinitializer }, align 32
@mlxsw_sp_sb_tc_pool_bind_set.__msg = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"mlxsw_spectrum: Changing CPU port's binding is forbidden\00", [39 x i8] zeroinitializer }, align 32
@mlxsw_sp_sb_tc_pool_bind_set.__msg.3 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"mlxsw_spectrum: Binding egress TC to ingress pool and vice versa is forbidden\00", [50 x i8] zeroinitializer }, align 32
@mlxsw_sp_sb_tc_pool_bind_set.__msg.4 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"mlxsw_spectrum: Binding this TC to a different pool is forbidden\00", [63 x i8] zeroinitializer }, align 32
@mlxsw_sp_sb_tc_pool_bind_set.__msg.5 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"mlxsw_spectrum: Changing this TC's threshold is forbidden\00", [38 x i8] zeroinitializer }, align 32
@mlxsw_reg_sbsr = internal constant { %struct.mlxsw_reg_info, [24 x i8] } { %struct.mlxsw_reg_info { i16 -20475, i16 1052, ptr @.str.115 }, [24 x i8] zeroinitializer }, align 32
@mlxsw_reg_pbmc = internal constant { %struct.mlxsw_reg_info, [24 x i8] } { %struct.mlxsw_reg_info { i16 20492, i16 108, ptr @.str.26 }, [24 x i8] zeroinitializer }, align 32
@__mlxsw_item_offset._entry = internal constant %struct.pi_entry { ptr @.str, ptr @.str.6, ptr @.str.7, i32 35, ptr null, ptr null }, align 1
@.str = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"\013mlxsw: item bug (name=%s,offset=%x,step=%x,in_step_offset=%x,typesize=%zx)\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"__mlxsw_item_offset\00", [44 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/net/ethernet/mellanox/mlxsw/item.h\00", [53 x i8] zeroinitializer }, align 32
@__mlxsw_item_offset._entry_ptr = internal global ptr @__mlxsw_item_offset._entry, section ".printk_index", align 4
@.str.8 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"reg_pbmc_local_port\00", [44 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"reg_pbmc_lp_msb\00", [16 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"reg_pbmc_xoff_timer_value\00", [38 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"reg_pbmc_xoff_refresh\00", [42 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"reg_pbmc_buf_lossy\00", [45 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"reg_pbmc_buf_epsb\00", [46 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"reg_pbmc_buf_size\00", [46 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"reg_pbmc_buf_xoff_threshold\00", [36 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"reg_pbmc_buf_xon_threshold\00", [37 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pbmc\00", [27 x i8] zeroinitializer }, align 32
@mlxsw_reg_pptb = internal constant { %struct.mlxsw_reg_info, [24 x i8] } { %struct.mlxsw_reg_info { i16 20491, i16 16, ptr @.str.41 }, [24 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"reg_pptb_mm\00", [20 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"reg_pptb_local_port\00", [44 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"reg_pptb_lp_msb\00", [16 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"reg_pptb_pm\00", [20 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"reg_pptb_pm_msb\00", [16 x i8] zeroinitializer }, align 32
@__mlxsw_item_bit_array_offset._entry = internal constant %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.7, i32 216, ptr null, ptr null }, align 1
@.str.37 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013mlxsw: item bug (name=%s,offset=%x,element_size=%x)\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"__mlxsw_item_bit_array_offset\00", [34 x i8] zeroinitializer }, align 32
@__mlxsw_item_bit_array_offset._entry_ptr = internal global ptr @__mlxsw_item_bit_array_offset._entry, section ".printk_index", align 4
@.str.39 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"reg_pptb_prio_to_buff\00", [42 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"reg_pptb_prio_to_buff_msb\00", [38 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pptb\00", [27 x i8] zeroinitializer }, align 32
@mlxsw_reg_sbib = internal constant { %struct.mlxsw_reg_info, [24 x i8] } { %struct.mlxsw_reg_info { i16 -20474, i16 16, ptr @.str.48 }, [24 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"reg_sbib_local_port\00", [44 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"reg_sbib_lp_msb\00", [16 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"reg_sbib_buff_size\00", [45 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sbib\00", [27 x i8] zeroinitializer }, align 32
@mlxsw_sp_sb_prs_init.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.49 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"drivers/net/ethernet/mellanox/mlxsw/spectrum_buffers.c\00", [41 x i8] zeroinitializer }, align 32
@mlxsw_reg_sbmm = internal constant { %struct.mlxsw_reg_info, [24 x i8] } { %struct.mlxsw_reg_info { i16 -20476, i16 40, ptr @.str.58 }, [24 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"reg_sbmm_prio\00", [18 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"reg_sbmm_min_buff\00", [46 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"reg_sbmm_max_buff\00", [46 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"reg_sbmm_pool\00", [18 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sbmm\00", [27 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"No egress pools\0A\00", [47 x i8] zeroinitializer }, align 32
@mlxsw_reg_sbpr = internal constant { %struct.mlxsw_reg_info, [24 x i8] } { %struct.mlxsw_reg_info { i16 -20479, i16 20, ptr @.str.70 }, [24 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"reg_sbpr_pool\00", [18 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"reg_sbpr_dir\00", [19 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"reg_sbpr_mode\00", [18 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"reg_sbpr_size\00", [18 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"reg_sbpr_infi_size\00", [45 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sbpr\00", [27 x i8] zeroinitializer }, align 32
@mlxsw_sp_sb_threshold_in.__msg = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"mlxsw_spectrum: Invalid dynamic threshold value\00", [48 x i8] zeroinitializer }, align 32
@mlxsw_reg_sbpm = internal constant { %struct.mlxsw_reg_info, [24 x i8] } { %struct.mlxsw_reg_info { i16 -20477, i16 40, ptr @.str.85 }, [24 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"reg_sbpm_local_port\00", [44 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"reg_sbpm_lp_msb\00", [16 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"reg_sbpm_pool\00", [18 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"reg_sbpm_dir\00", [19 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"reg_sbpm_clr\00", [19 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"reg_sbpm_min_buff\00", [46 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"reg_sbpm_max_buff\00", [46 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sbpm\00", [27 x i8] zeroinitializer }, align 32
@mlxsw_reg_sbcm = internal constant { %struct.mlxsw_reg_info, [24 x i8] } { %struct.mlxsw_reg_info { i16 -20478, i16 40, ptr @.str.102 }, [24 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"reg_sbcm_local_port\00", [44 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"reg_sbcm_lp_msb\00", [16 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"reg_sbcm_pg_buff\00", [47 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"reg_sbcm_dir\00", [19 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"reg_sbcm_min_buff\00", [46 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"reg_sbcm_max_buff\00", [46 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"reg_sbcm_infi_max\00", [46 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"reg_sbcm_pool\00", [18 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sbcm\00", [27 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.103 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"reg_sbsr_clr\00", [19 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"reg_sbsr_port_page\00", [45 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"reg_sbsr_pg_buff_mask\00", [42 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"reg_sbsr_tclass_mask\00", [43 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"reg_sbsr_ingress_port_mask\00", [37 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"reg_sbsr_egress_port_mask\00", [38 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"reg_sbpm_buff_occupancy\00", [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"reg_sbpm_max_buff_occupancy\00", [36 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sbsr\00", [27 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"reg_sbsr_rec_buff_occupancy\00", [36 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"reg_sbsr_rec_max_buff_occupancy\00", [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.120 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.121 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.122 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.123 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.124 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.125 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.126 = internal global [4 x i64] [i64 2, i64 32, i64 4294967294, i64 4294967295]
@___asan_gen_.127 = private unnamed_addr constant [23 x i8] c"mlxsw_sp1_sb_pool_dess\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 63, i32 42 }
@___asan_gen_.130 = private unnamed_addr constant [17 x i8] c"mlxsw_sp1_sb_pms\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 996, i32 36 }
@___asan_gen_.133 = private unnamed_addr constant [25 x i8] c"mlxsw_sp_cpu_port_sb_pms\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1026, i32 36 }
@___asan_gen_.136 = private unnamed_addr constant [17 x i8] c"mlxsw_sp1_sb_prs\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 691, i32 36 }
@___asan_gen_.139 = private unnamed_addr constant [16 x i8] c"mlxsw_sp_sb_mms\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1089, i32 36 }
@___asan_gen_.142 = private unnamed_addr constant [25 x i8] c"mlxsw_sp1_sb_cms_ingress\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 811, i32 36 }
@___asan_gen_.145 = private unnamed_addr constant [24 x i8] c"mlxsw_sp1_sb_cms_egress\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 837, i32 36 }
@___asan_gen_.148 = private unnamed_addr constant [25 x i8] c"mlxsw_sp_cpu_port_sb_cms\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 879, i32 36 }
@___asan_gen_.151 = private unnamed_addr constant [18 x i8] c"mlxsw_sp1_sb_vals\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1149, i32 31 }
@___asan_gen_.154 = private unnamed_addr constant [23 x i8] c"mlxsw_sp2_sb_pool_dess\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 77, i32 42 }
@___asan_gen_.157 = private unnamed_addr constant [17 x i8] c"mlxsw_sp2_sb_pms\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1011, i32 36 }
@___asan_gen_.160 = private unnamed_addr constant [17 x i8] c"mlxsw_sp2_sb_prs\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 712, i32 36 }
@___asan_gen_.163 = private unnamed_addr constant [25 x i8] c"mlxsw_sp2_sb_cms_ingress\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 824, i32 36 }
@___asan_gen_.166 = private unnamed_addr constant [24 x i8] c"mlxsw_sp2_sb_cms_egress\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 857, i32 36 }
@___asan_gen_.169 = private unnamed_addr constant [18 x i8] c"mlxsw_sp2_sb_vals\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1165, i32 31 }
@___asan_gen_.172 = private unnamed_addr constant [17 x i8] c"mlxsw_sp1_sb_ops\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1209, i32 30 }
@___asan_gen_.175 = private unnamed_addr constant [17 x i8] c"mlxsw_sp2_sb_ops\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1213, i32 30 }
@___asan_gen_.178 = private unnamed_addr constant [17 x i8] c"mlxsw_sp3_sb_ops\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1217, i32 30 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1360, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1365, i32 3 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1370, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1440, i32 3 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1490, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1495, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1505, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1510, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant [15 x i8] c"mlxsw_reg_sbsr\00", align 1
@___asan_gen_.208 = private unnamed_addr constant [15 x i8] c"mlxsw_reg_pbmc\00", align 1
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 33, i32 3 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 5562, i32 1 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 5569, i32 1 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 5577, i32 1 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 5587, i32 1 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 5596, i32 1 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 5603, i32 1 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 5614, i32 1 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 5626, i32 1 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 5556, i32 1 }
@___asan_gen_.250 = private unnamed_addr constant [15 x i8] c"mlxsw_reg_pptb\00", align 1
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 5479, i32 1 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 5485, i32 1 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 5498, i32 1 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 5512, i32 1 }
@___asan_gen_.272 = private unnamed_addr constant [46 x i8] c"../drivers/net/ethernet/mellanox/mlxsw/item.h\00", align 1
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 215, i32 3 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 5505, i32 1 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 5528, i32 1 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 5462, i32 1 }
@___asan_gen_.283 = private unnamed_addr constant [15 x i8] c"mlxsw_reg_sbib\00", align 1
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 12480, i32 1 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 12488, i32 1 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 12473, i32 1 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 753, i32 7 }
@___asan_gen_.301 = private unnamed_addr constant [15 x i8] c"mlxsw_reg_sbmm\00", align 1
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 12320, i32 1 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 12326, i32 1 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 12339, i32 1 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 12345, i32 1 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 12314, i32 1 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1146, i32 2 }
@___asan_gen_.322 = private unnamed_addr constant [15 x i8] c"mlxsw_reg_sbpr\00", align 1
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 12089, i32 1 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 12083, i32 1 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 12113, i32 1 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 12102, i32 1 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 12095, i32 1 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 12071, i32 1 }
@___asan_gen_.343 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.344 = private constant [58 x i8] c"../drivers/net/ethernet/mellanox/mlxsw/spectrum_buffers.c\00", align 1
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1402, i32 4 }
@___asan_gen_.346 = private unnamed_addr constant [15 x i8] c"mlxsw_reg_sbpm\00", align 1
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 12231, i32 1 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 12237, i32 1 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 12243, i32 1 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 12257, i32 1 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 12270, i32 1 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 12283, i32 1 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 12223, i32 1 }
@___asan_gen_.373 = private unnamed_addr constant [15 x i8] c"mlxsw_reg_sbcm\00", align 1
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 12145, i32 1 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 12155, i32 1 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 12161, i32 1 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 12167, i32 1 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 12191, i32 1 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 12177, i32 1 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 12197, i32 1 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 12137, i32 1 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 12381, i32 1 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 12391, i32 1 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 12410, i32 1 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 12429, i32 1 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 12400, i32 1 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 12419, i32 1 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 12249, i32 1 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 12264, i32 1 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 12373, i32 1 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 12441, i32 1 }
@___asan_gen_.433 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.434 = private unnamed_addr constant [45 x i8] c"../drivers/net/ethernet/mellanox/mlxsw/reg.h\00", align 1
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 12449, i32 1 }
@llvm.compiler.used = appending global [107 x ptr] [ptr @__mlxsw_item_bit_array_offset._entry, ptr @__mlxsw_item_bit_array_offset._entry_ptr, ptr @__mlxsw_item_offset._entry, ptr @__mlxsw_item_offset._entry_ptr, ptr @mlxsw_sp1_sb_pool_dess, ptr @mlxsw_sp1_sb_pms, ptr @mlxsw_sp_cpu_port_sb_pms, ptr @mlxsw_sp1_sb_prs, ptr @mlxsw_sp_sb_mms, ptr @mlxsw_sp1_sb_cms_ingress, ptr @mlxsw_sp1_sb_cms_egress, ptr @mlxsw_sp_cpu_port_sb_cms, ptr @mlxsw_sp1_sb_vals, ptr @mlxsw_sp2_sb_pool_dess, ptr @mlxsw_sp2_sb_pms, ptr @mlxsw_sp2_sb_prs, ptr @mlxsw_sp2_sb_cms_ingress, ptr @mlxsw_sp2_sb_cms_egress, ptr @mlxsw_sp2_sb_vals, ptr @mlxsw_sp1_sb_ops, ptr @mlxsw_sp2_sb_ops, ptr @mlxsw_sp3_sb_ops, ptr @mlxsw_sp_sb_pool_set.__msg, ptr @mlxsw_sp_sb_pool_set.__msg.1, ptr @mlxsw_sp_sb_pool_set.__msg.2, ptr @mlxsw_sp_sb_port_pool_set.__msg, ptr @mlxsw_sp_sb_tc_pool_bind_set.__msg, ptr @mlxsw_sp_sb_tc_pool_bind_set.__msg.3, ptr @mlxsw_sp_sb_tc_pool_bind_set.__msg.4, ptr @mlxsw_sp_sb_tc_pool_bind_set.__msg.5, ptr @mlxsw_reg_sbsr, ptr @mlxsw_reg_pbmc, ptr @.str, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.26, ptr @mlxsw_reg_pptb, ptr @.str.27, ptr @.str.29, ptr @.str.31, ptr @.str.33, ptr @.str.35, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @mlxsw_reg_sbib, ptr @.str.42, ptr @.str.44, ptr @.str.46, ptr @.str.48, ptr @.str.49, ptr @mlxsw_reg_sbmm, ptr @.str.50, ptr @.str.52, ptr @.str.54, ptr @.str.56, ptr @.str.58, ptr @.str.59, ptr @mlxsw_reg_sbpr, ptr @.str.60, ptr @.str.62, ptr @.str.64, ptr @.str.66, ptr @.str.68, ptr @.str.70, ptr @mlxsw_sp_sb_threshold_in.__msg, ptr @mlxsw_reg_sbpm, ptr @.str.71, ptr @.str.73, ptr @.str.75, ptr @.str.77, ptr @.str.79, ptr @.str.81, ptr @.str.83, ptr @.str.85, ptr @mlxsw_reg_sbcm, ptr @.str.86, ptr @.str.88, ptr @.str.90, ptr @.str.92, ptr @.str.94, ptr @.str.96, ptr @.str.98, ptr @.str.100, ptr @.str.102, ptr @.str.103, ptr @.str.105, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.113, ptr @.str.115, ptr @.str.116, ptr @.str.118], section "llvm.metadata"
@0 = internal global [103 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp1_sb_pool_dess to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp1_sb_pms to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_cpu_port_sb_pms to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp1_sb_prs to i32), i32 132, i32 192, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_sb_mms to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp1_sb_cms_ingress to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp1_sb_cms_egress to i32), i32 408, i32 512, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_cpu_port_sb_cms to i32), i32 768, i32 960, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp1_sb_vals to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp2_sb_pool_dess to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp2_sb_pms to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp2_sb_prs to i32), i32 132, i32 192, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp2_sb_cms_ingress to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp2_sb_cms_egress to i32), i32 408, i32 512, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp2_sb_vals to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp1_sb_ops to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp2_sb_ops to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp3_sb_ops to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_sb_pool_set.__msg to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_sb_pool_set.__msg.1 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_sb_pool_set.__msg.2 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_sb_port_pool_set.__msg to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_sb_tc_pool_bind_set.__msg to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_sb_tc_pool_bind_set.__msg.3 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_sb_tc_pool_bind_set.__msg.4 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_sb_tc_pool_bind_set.__msg.5 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_reg_sbsr to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_reg_pbmc to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_reg_pptb to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_reg_sbib to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_reg_sbmm to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_reg_sbpr to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_sb_threshold_in.__msg to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_reg_sbpm to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_reg_sbcm to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @mlxsw_sp_cells_bytes(ptr nocapture noundef readonly %mlxsw_sp, i32 noundef %cells) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sb = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 8
  %0 = ptrtoint ptr %sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sb, align 4
  %cell_size = getelementptr inbounds %struct.mlxsw_sp_sb, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %cell_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cell_size, align 8
  %mul = mul i32 %3, %cells
  ret i32 %mul
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @mlxsw_sp_bytes_cells(ptr nocapture noundef readonly %mlxsw_sp, i32 noundef %bytes) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sb = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 8
  %0 = ptrtoint ptr %sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sb, align 4
  %cell_size = getelementptr inbounds %struct.mlxsw_sp_sb, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %cell_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cell_size, align 8
  %add = add i32 %bytes, -1
  %sub = add i32 %add, %3
  %div = udiv i32 %sub, %3
  ret i32 %div
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlxsw_sp_hdroom_prios_reset_buf_idx(ptr nocapture noundef %hdroom) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %prios6 = getelementptr inbounds %struct.mlxsw_sp_hdroom, ptr %hdroom, i32 0, i32 1
  %0 = ptrtoint ptr %hdroom to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hdroom, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %entry.for.inc.1_crit_edge [
    i32 0, label %for.inc.thread
    i32 1, label %for.inc.thread24
  ]

entry.for.inc.1_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.1

for.inc.thread:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %ets_buf_idx = getelementptr %struct.mlxsw_sp_hdroom, ptr %hdroom, i32 0, i32 1, i32 0, i32 0, i32 1
  %3 = ptrtoint ptr %ets_buf_idx to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %ets_buf_idx, align 1
  %5 = ptrtoint ptr %prios6 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %prios6, align 4
  %arrayidx.1 = getelementptr %struct.mlxsw_sp_hdroom, ptr %hdroom, i32 0, i32 1, i32 0, i32 1
  %ets_buf_idx.1 = getelementptr %struct.mlxsw_sp_hdroom, ptr %hdroom, i32 0, i32 1, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %ets_buf_idx.1 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ets_buf_idx.1, align 1
  %8 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %arrayidx.1, align 4
  br label %for.inc.1thread-pre-split

for.inc.thread24:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %set_buf_idx = getelementptr %struct.mlxsw_sp_hdroom, ptr %hdroom, i32 0, i32 1, i32 0, i32 0, i32 2
  %9 = ptrtoint ptr %set_buf_idx to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %set_buf_idx, align 2
  %11 = ptrtoint ptr %prios6 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %prios6, align 4
  %arrayidx8.1 = getelementptr %struct.mlxsw_sp_hdroom, ptr %hdroom, i32 0, i32 1, i32 0, i32 1
  %set_buf_idx.1 = getelementptr %struct.mlxsw_sp_hdroom, ptr %hdroom, i32 0, i32 1, i32 0, i32 1, i32 2
  %12 = ptrtoint ptr %set_buf_idx.1 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %set_buf_idx.1, align 2
  %14 = ptrtoint ptr %arrayidx8.1 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %arrayidx8.1, align 4
  br label %for.inc.1thread-pre-split

for.inc.1thread-pre-split:                        ; preds = %for.inc.thread24, %for.inc.thread
  %15 = ptrtoint ptr %hdroom to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pr = load i32, ptr %hdroom, align 4
  br label %for.inc.1

for.inc.1:                                        ; preds = %for.inc.1thread-pre-split, %entry.for.inc.1_crit_edge
  %16 = phi i32 [ %.pr, %for.inc.1thread-pre-split ], [ %1, %entry.for.inc.1_crit_edge ]
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.120)
  switch i32 %16, label %for.inc.1.for.inc.2_crit_edge [
    i32 0, label %sw.bb.2
    i32 1, label %sw.bb5.2
  ]

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.2

sw.bb5.2:                                         ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx8.2 = getelementptr %struct.mlxsw_sp_hdroom, ptr %hdroom, i32 0, i32 1, i32 0, i32 2
  %set_buf_idx.2 = getelementptr %struct.mlxsw_sp_hdroom, ptr %hdroom, i32 0, i32 1, i32 0, i32 2, i32 2
  %18 = ptrtoint ptr %set_buf_idx.2 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %set_buf_idx.2, align 2
  %20 = ptrtoint ptr %arrayidx8.2 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %arrayidx8.2, align 4
  br label %for.inc.2

sw.bb.2:                                          ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.2 = getelementptr %struct.mlxsw_sp_hdroom, ptr %hdroom, i32 0, i32 1, i32 0, i32 2
  %ets_buf_idx.2 = getelementptr %struct.mlxsw_sp_hdroom, ptr %hdroom, i32 0, i32 1, i32 0, i32 2, i32 1
  %21 = ptrtoint ptr %ets_buf_idx.2 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %ets_buf_idx.2, align 1
  %23 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %arrayidx.2, align 4
  br label %for.inc.2

for.inc.2:                                        ; preds = %sw.bb.2, %sw.bb5.2, %for.inc.1.for.inc.2_crit_edge
  %24 = ptrtoint ptr %hdroom to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %hdroom, align 4
  %26 = zext i32 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.121)
  switch i32 %25, label %for.inc.2.for.inc.3_crit_edge [
    i32 0, label %sw.bb.3
    i32 1, label %sw.bb5.3
  ]

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.3

sw.bb5.3:                                         ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx8.3 = getelementptr %struct.mlxsw_sp_hdroom, ptr %hdroom, i32 0, i32 1, i32 0, i32 3
  %set_buf_idx.3 = getelementptr %struct.mlxsw_sp_hdroom, ptr %hdroom, i32 0, i32 1, i32 0, i32 3, i32 2
  %27 = ptrtoint ptr %set_buf_idx.3 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %set_buf_idx.3, align 2
  %29 = ptrtoint ptr %arrayidx8.3 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %arrayidx8.3, align 4
  br label %for.inc.3thread-pre-split

sw.bb.3:                                          ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.3 = getelementptr %struct.mlxsw_sp_hdroom, ptr %hdroom, i32 0, i32 1, i32 0, i32 3
  %ets_buf_idx.3 = getelementptr %struct.mlxsw_sp_hdroom, ptr %hdroom, i32 0, i32 1, i32 0, i32 3, i32 1
  %30 = ptrtoint ptr %ets_buf_idx.3 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %ets_buf_idx.3, align 1
  %32 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %arrayidx.3, align 4
  br label %for.inc.3thread-pre-split

for.inc.3thread-pre-split:                        ; preds = %sw.bb.3, %sw.bb5.3
  %33 = ptrtoint ptr %hdroom to i32
  call void @__asan_load4_noabort(i32 %33)
  %.pr25 = load i32, ptr %hdroom, align 4
  br label %for.inc.3

for.inc.3:                                        ; preds = %for.inc.3thread-pre-split, %for.inc.2.for.inc.3_crit_edge
  %34 = phi i32 [ %.pr25, %for.inc.3thread-pre-split ], [ %25, %for.inc.2.for.inc.3_crit_edge ]
  %35 = zext i32 %34 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.122)
  switch i32 %34, label %for.inc.3.for.inc.4_crit_edge [
    i32 0, label %sw.bb.4
    i32 1, label %sw.bb5.4
  ]

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.4

sw.bb5.4:                                         ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx8.4 = getelementptr %struct.mlxsw_sp_hdroom, ptr %hdroom, i32 0, i32 1, i32 0, i32 4
  %set_buf_idx.4 = getelementptr %struct.mlxsw_sp_hdroom, ptr %hdroom, i32 0, i32 1, i32 0, i32 4, i32 2
  %36 = ptrtoint ptr %set_buf_idx.4 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %set_buf_idx.4, align 2
  %38 = ptrtoint ptr %arrayidx8.4 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %37, ptr %arrayidx8.4, align 4
  br label %for.inc.4

sw.bb.4:                                          ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.4 = getelementptr %struct.mlxsw_sp_hdroom, ptr %hdroom, i32 0, i32 1, i32 0, i32 4
  %ets_buf_idx.4 = getelementptr %struct.mlxsw_sp_hdroom, ptr %hdroom, i32 0, i32 1, i32 0, i32 4, i32 1
  %39 = ptrtoint ptr %ets_buf_idx.4 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %ets_buf_idx.4, align 1
  %41 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %40, ptr %arrayidx.4, align 4
  br label %for.inc.4

for.inc.4:                                        ; preds = %sw.bb.4, %sw.bb5.4, %for.inc.3.for.inc.4_crit_edge
  %42 = ptrtoint ptr %hdroom to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %hdroom, align 4
  %44 = zext i32 %43 to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.123)
  switch i32 %43, label %for.inc.4.for.inc.5_crit_edge [
    i32 0, label %sw.bb.5
    i32 1, label %sw.bb5.5
  ]

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.5

sw.bb5.5:                                         ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx8.5 = getelementptr %struct.mlxsw_sp_hdroom, ptr %hdroom, i32 0, i32 1, i32 0, i32 5
  %set_buf_idx.5 = getelementptr %struct.mlxsw_sp_hdroom, ptr %hdroom, i32 0, i32 1, i32 0, i32 5, i32 2
  %45 = ptrtoint ptr %set_buf_idx.5 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %set_buf_idx.5, align 2
  %47 = ptrtoint ptr %arrayidx8.5 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %46, ptr %arrayidx8.5, align 4
  br label %for.inc.5thread-pre-split

sw.bb.5:                                          ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.5 = getelementptr %struct.mlxsw_sp_hdroom, ptr %hdroom, i32 0, i32 1, i32 0, i32 5
  %ets_buf_idx.5 = getelementptr %struct.mlxsw_sp_hdroom, ptr %hdroom, i32 0, i32 1, i32 0, i32 5, i32 1
  %48 = ptrtoint ptr %ets_buf_idx.5 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %ets_buf_idx.5, align 1
  %50 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %49, ptr %arrayidx.5, align 4
  br label %for.inc.5thread-pre-split

for.inc.5thread-pre-split:                        ; preds = %sw.bb.5, %sw.bb5.5
  %51 = ptrtoint ptr %hdroom to i32
  call void @__asan_load4_noabort(i32 %51)
  %.pr26 = load i32, ptr %hdroom, align 4
  br label %for.inc.5

for.inc.5:                                        ; preds = %for.inc.5thread-pre-split, %for.inc.4.for.inc.5_crit_edge
  %52 = phi i32 [ %.pr26, %for.inc.5thread-pre-split ], [ %43, %for.inc.4.for.inc.5_crit_edge ]
  %53 = zext i32 %52 to i64
  call void @__sanitizer_cov_trace_switch(i64 %53, ptr @__sancov_gen_cov_switch_values.124)
  switch i32 %52, label %for.inc.5.for.inc.6_crit_edge [
    i32 0, label %sw.bb.6
    i32 1, label %sw.bb5.6
  ]

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.6

sw.bb5.6:                                         ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx8.6 = getelementptr %struct.mlxsw_sp_hdroom, ptr %hdroom, i32 0, i32 1, i32 0, i32 6
  %set_buf_idx.6 = getelementptr %struct.mlxsw_sp_hdroom, ptr %hdroom, i32 0, i32 1, i32 0, i32 6, i32 2
  %54 = ptrtoint ptr %set_buf_idx.6 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %set_buf_idx.6, align 2
  %56 = ptrtoint ptr %arrayidx8.6 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %55, ptr %arrayidx8.6, align 4
  br label %for.inc.6

sw.bb.6:                                          ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.6 = getelementptr %struct.mlxsw_sp_hdroom, ptr %hdroom, i32 0, i32 1, i32 0, i32 6
  %ets_buf_idx.6 = getelementptr %struct.mlxsw_sp_hdroom, ptr %hdroom, i32 0, i32 1, i32 0, i32 6, i32 1
  %57 = ptrtoint ptr %ets_buf_idx.6 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %ets_buf_idx.6, align 1
  %59 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %58, ptr %arrayidx.6, align 4
  br label %for.inc.6

for.inc.6:                                        ; preds = %sw.bb.6, %sw.bb5.6, %for.inc.5.for.inc.6_crit_edge
  %60 = ptrtoint ptr %hdroom to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %hdroom, align 4
  %62 = zext i32 %61 to i64
  call void @__sanitizer_cov_trace_switch(i64 %62, ptr @__sancov_gen_cov_switch_values.125)
  switch i32 %61, label %for.inc.6.for.inc.7_crit_edge [
    i32 0, label %sw.bb.7
    i32 1, label %sw.bb5.7
  ]

for.inc.6.for.inc.7_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.7

sw.bb5.7:                                         ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx8.7 = getelementptr %struct.mlxsw_sp_hdroom, ptr %hdroom, i32 0, i32 1, i32 0, i32 7
  %set_buf_idx.7 = getelementptr %struct.mlxsw_sp_hdroom, ptr %hdroom, i32 0, i32 1, i32 0, i32 7, i32 2
  %63 = ptrtoint ptr %set_buf_idx.7 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %set_buf_idx.7, align 2
  %65 = ptrtoint ptr %arrayidx8.7 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %64, ptr %arrayidx8.7, align 4
  br label %for.inc.7

sw.bb.7:                                          ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.7 = getelementptr %struct.mlxsw_sp_hdroom, ptr %hdroom, i32 0, i32 1, i32 0, i32 7
  %ets_buf_idx.7 = getelementptr %struct.mlxsw_sp_hdroom, ptr %hdroom, i32 0, i32 1, i32 0, i32 7, i32 1
  %66 = ptrtoint ptr %ets_buf_idx.7 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %ets_buf_idx.7, align 1
  %68 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %67, ptr %arrayidx.7, align 4
  br label %for.inc.7

for.inc.7:                                        ; preds = %sw.bb.7, %sw.bb5.7, %for.inc.6.for.inc.7_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlxsw_sp_hdroom_bufs_reset_lossiness(ptr nocapture noundef %hdroom) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bufs = getelementptr inbounds %struct.mlxsw_sp_hdroom, ptr %hdroom, i32 0, i32 2
  %lossy = getelementptr %struct.mlxsw_sp_hdroom, ptr %hdroom, i32 0, i32 2, i32 0, i32 0, i32 3
  %0 = ptrtoint ptr %lossy to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %lossy, align 4
  %lossy.1 = getelementptr %struct.mlxsw_sp_hdroom, ptr %hdroom, i32 0, i32 2, i32 0, i32 1, i32 3
  %1 = ptrtoint ptr %lossy.1 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 1, ptr %lossy.1, align 4
  %lossy.2 = getelementptr %struct.mlxsw_sp_hdroom, ptr %hdroom, i32 0, i32 2, i32 0, i32 2, i32 3
  %2 = ptrtoint ptr %lossy.2 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %lossy.2, align 4
  %lossy.3 = getelementptr %struct.mlxsw_sp_hdroom, ptr %hdroom, i32 0, i32 2, i32 0, i32 3, i32 3
  %3 = ptrtoint ptr %lossy.3 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %lossy.3, align 4
  %lossy.4 = getelementptr %struct.mlxsw_sp_hdroom, ptr %hdroom, i32 0, i32 2, i32 0, i32 4, i32 3
  %4 = ptrtoint ptr %lossy.4 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %lossy.4, align 4
  %lossy.5 = getelementptr %struct.mlxsw_sp_hdroom, ptr %hdroom, i32 0, i32 2, i32 0, i32 5, i32 3
  %5 = ptrtoint ptr %lossy.5 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %lossy.5, align 4
  %lossy.6 = getelementptr %struct.mlxsw_sp_hdroom, ptr %hdroom, i32 0, i32 2, i32 0, i32 6, i32 3
  %6 = ptrtoint ptr %lossy.6 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %lossy.6, align 4
  %lossy.7 = getelementptr %struct.mlxsw_sp_hdroom, ptr %hdroom, i32 0, i32 2, i32 0, i32 7, i32 3
  %7 = ptrtoint ptr %lossy.7 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %lossy.7, align 4
  %lossy6 = getelementptr %struct.mlxsw_sp_hdroom, ptr %hdroom, i32 0, i32 1, i32 0, i32 0, i32 3
  %8 = ptrtoint ptr %lossy6 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %lossy6, align 1, !range !257
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %if.then, label %entry.for.inc14_crit_edge

entry.for.inc14_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc14

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %prios = getelementptr inbounds %struct.mlxsw_sp_hdroom, ptr %hdroom, i32 0, i32 1
  %10 = ptrtoint ptr %prios to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %prios, align 4
  %idxprom = zext i8 %11 to i32
  %lossy13 = getelementptr [10 x %struct.mlxsw_sp_hdroom_buf], ptr %bufs, i32 0, i32 %idxprom, i32 3
  %12 = ptrtoint ptr %lossy13 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %lossy13, align 4
  br label %for.inc14

for.inc14:                                        ; preds = %if.then, %entry.for.inc14_crit_edge
  %lossy6.1 = getelementptr %struct.mlxsw_sp_hdroom, ptr %hdroom, i32 0, i32 1, i32 0, i32 1, i32 3
  %13 = ptrtoint ptr %lossy6.1 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %lossy6.1, align 1, !range !257
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.1 = icmp eq i8 %14, 0
  br i1 %tobool.not.1, label %if.then.1, label %for.inc14.for.inc14.1_crit_edge

for.inc14.for.inc14.1_crit_edge:                  ; preds = %for.inc14
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc14.1

if.then.1:                                        ; preds = %for.inc14
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx5.1 = getelementptr %struct.mlxsw_sp_hdroom, ptr %hdroom, i32 0, i32 1, i32 0, i32 1
  %15 = ptrtoint ptr %arrayidx5.1 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx5.1, align 4
  %idxprom.1 = zext i8 %16 to i32
  %lossy13.1 = getelementptr [10 x %struct.mlxsw_sp_hdroom_buf], ptr %bufs, i32 0, i32 %idxprom.1, i32 3
  %17 = ptrtoint ptr %lossy13.1 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %lossy13.1, align 4
  br label %for.inc14.1

for.inc14.1:                                      ; preds = %if.then.1, %for.inc14.for.inc14.1_crit_edge
  %lossy6.2 = getelementptr %struct.mlxsw_sp_hdroom, ptr %hdroom, i32 0, i32 1, i32 0, i32 2, i32 3
  %18 = ptrtoint ptr %lossy6.2 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %lossy6.2, align 1, !range !257
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.2 = icmp eq i8 %19, 0
  br i1 %tobool.not.2, label %if.then.2, label %for.inc14.1.for.inc14.2_crit_edge

for.inc14.1.for.inc14.2_crit_edge:                ; preds = %for.inc14.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc14.2

if.then.2:                                        ; preds = %for.inc14.1
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx5.2 = getelementptr %struct.mlxsw_sp_hdroom, ptr %hdroom, i32 0, i32 1, i32 0, i32 2
  %20 = ptrtoint ptr %arrayidx5.2 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx5.2, align 4
  %idxprom.2 = zext i8 %21 to i32
  %lossy13.2 = getelementptr [10 x %struct.mlxsw_sp_hdroom_buf], ptr %bufs, i32 0, i32 %idxprom.2, i32 3
  %22 = ptrtoint ptr %lossy13.2 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %lossy13.2, align 4
  br label %for.inc14.2

for.inc14.2:                                      ; preds = %if.then.2, %for.inc14.1.for.inc14.2_crit_edge
  %lossy6.3 = getelementptr %struct.mlxsw_sp_hdroom, ptr %hdroom, i32 0, i32 1, i32 0, i32 3, i32 3
  %23 = ptrtoint ptr %lossy6.3 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %lossy6.3, align 1, !range !257
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.not.3 = icmp eq i8 %24, 0
  br i1 %tobool.not.3, label %if.then.3, label %for.inc14.2.for.inc14.3_crit_edge

for.inc14.2.for.inc14.3_crit_edge:                ; preds = %for.inc14.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc14.3

if.then.3:                                        ; preds = %for.inc14.2
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx5.3 = getelementptr %struct.mlxsw_sp_hdroom, ptr %hdroom, i32 0, i32 1, i32 0, i32 3
  %25 = ptrtoint ptr %arrayidx5.3 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx5.3, align 4
  %idxprom.3 = zext i8 %26 to i32
  %lossy13.3 = getelementptr [10 x %struct.mlxsw_sp_hdroom_buf], ptr %bufs, i32 0, i32 %idxprom.3, i32 3
  %27 = ptrtoint ptr %lossy13.3 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %lossy13.3, align 4
  br label %for.inc14.3

for.inc14.3:                                      ; preds = %if.then.3, %for.inc14.2.for.inc14.3_crit_edge
  %lossy6.4 = getelementptr %struct.mlxsw_sp_hdroom, ptr %hdroom, i32 0, i32 1, i32 0, i32 4, i32 3
  %28 = ptrtoint ptr %lossy6.4 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %lossy6.4, align 1, !range !257
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool.not.4 = icmp eq i8 %29, 0
  br i1 %tobool.not.4, label %if.then.4, label %for.inc14.3.for.inc14.4_crit_edge

for.inc14.3.for.inc14.4_crit_edge:                ; preds = %for.inc14.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc14.4

if.then.4:                                        ; preds = %for.inc14.3
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx5.4 = getelementptr %struct.mlxsw_sp_hdroom, ptr %hdroom, i32 0, i32 1, i32 0, i32 4
  %30 = ptrtoint ptr %arrayidx5.4 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx5.4, align 4
  %idxprom.4 = zext i8 %31 to i32
  %lossy13.4 = getelementptr [10 x %struct.mlxsw_sp_hdroom_buf], ptr %bufs, i32 0, i32 %idxprom.4, i32 3
  %32 = ptrtoint ptr %lossy13.4 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %lossy13.4, align 4
  br label %for.inc14.4

for.inc14.4:                                      ; preds = %if.then.4, %for.inc14.3.for.inc14.4_crit_edge
  %lossy6.5 = getelementptr %struct.mlxsw_sp_hdroom, ptr %hdroom, i32 0, i32 1, i32 0, i32 5, i32 3
  %33 = ptrtoint ptr %lossy6.5 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %lossy6.5, align 1, !range !257
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool.not.5 = icmp eq i8 %34, 0
  br i1 %tobool.not.5, label %if.then.5, label %for.inc14.4.for.inc14.5_crit_edge

for.inc14.4.for.inc14.5_crit_edge:                ; preds = %for.inc14.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc14.5

if.then.5:                                        ; preds = %for.inc14.4
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx5.5 = getelementptr %struct.mlxsw_sp_hdroom, ptr %hdroom, i32 0, i32 1, i32 0, i32 5
  %35 = ptrtoint ptr %arrayidx5.5 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx5.5, align 4
  %idxprom.5 = zext i8 %36 to i32
  %lossy13.5 = getelementptr [10 x %struct.mlxsw_sp_hdroom_buf], ptr %bufs, i32 0, i32 %idxprom.5, i32 3
  %37 = ptrtoint ptr %lossy13.5 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %lossy13.5, align 4
  br label %for.inc14.5

for.inc14.5:                                      ; preds = %if.then.5, %for.inc14.4.for.inc14.5_crit_edge
  %lossy6.6 = getelementptr %struct.mlxsw_sp_hdroom, ptr %hdroom, i32 0, i32 1, i32 0, i32 6, i32 3
  %38 = ptrtoint ptr %lossy6.6 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %lossy6.6, align 1, !range !257
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool.not.6 = icmp eq i8 %39, 0
  br i1 %tobool.not.6, label %if.then.6, label %for.inc14.5.for.inc14.6_crit_edge

for.inc14.5.for.inc14.6_crit_edge:                ; preds = %for.inc14.5
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc14.6

if.then.6:                                        ; preds = %for.inc14.5
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx5.6 = getelementptr %struct.mlxsw_sp_hdroom, ptr %hdroom, i32 0, i32 1, i32 0, i32 6
  %40 = ptrtoint ptr %arrayidx5.6 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx5.6, align 4
  %idxprom.6 = zext i8 %41 to i32
  %lossy13.6 = getelementptr [10 x %struct.mlxsw_sp_hdroom_buf], ptr %bufs, i32 0, i32 %idxprom.6, i32 3
  %42 = ptrtoint ptr %lossy13.6 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %lossy13.6, align 4
  br label %for.inc14.6

for.inc14.6:                                      ; preds = %if.then.6, %for.inc14.5.for.inc14.6_crit_edge
  %lossy6.7 = getelementptr %struct.mlxsw_sp_hdroom, ptr %hdroom, i32 0, i32 1, i32 0, i32 7, i32 3
  %43 = ptrtoint ptr %lossy6.7 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %lossy6.7, align 1, !range !257
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool.not.7 = icmp eq i8 %44, 0
  br i1 %tobool.not.7, label %if.then.7, label %for.inc14.6.for.inc14.7_crit_edge

for.inc14.6.for.inc14.7_crit_edge:                ; preds = %for.inc14.6
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc14.7

if.then.7:                                        ; preds = %for.inc14.6
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx5.7 = getelementptr %struct.mlxsw_sp_hdroom, ptr %hdroom, i32 0, i32 1, i32 0, i32 7
  %45 = ptrtoint ptr %arrayidx5.7 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx5.7, align 4
  %idxprom.7 = zext i8 %46 to i32
  %lossy13.7 = getelementptr [10 x %struct.mlxsw_sp_hdroom_buf], ptr %bufs, i32 0, i32 %idxprom.7, i32 3
  %47 = ptrtoint ptr %lossy13.7 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %lossy13.7, align 4
  br label %for.inc14.7

for.inc14.7:                                      ; preds = %if.then.7, %for.inc14.6.for.inc14.7_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlxsw_sp_hdroom_bufs_reset_sizes(ptr nocapture noundef readonly %mlxsw_sp_port, ptr nocapture noundef %hdroom) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mlxsw_sp1 = getelementptr inbounds %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 2
  %0 = ptrtoint ptr %mlxsw_sp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mlxsw_sp1, align 8
  %max_mtu = getelementptr inbounds %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 18
  %2 = ptrtoint ptr %max_mtu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_mtu, align 8
  %max_speed = getelementptr inbounds %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 19
  %4 = ptrtoint ptr %max_speed to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_speed, align 4
  %sb_ops.i = getelementptr inbounds %struct.mlxsw_sp, ptr %1, i32 0, i32 35
  %6 = ptrtoint ptr %sb_ops.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sb_ops.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %call.i = tail call i32 %9(i32 noundef %3, i32 noundef %5) #11
  %sb.i.i = getelementptr inbounds %struct.mlxsw_sp, ptr %1, i32 0, i32 8
  %10 = ptrtoint ptr %sb.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sb.i.i, align 4
  %cell_size.i.i = getelementptr inbounds %struct.mlxsw_sp_sb, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %cell_size.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cell_size.i.i, align 8
  %add.i.i = add i32 %call.i, -1
  %sub.i.i = add i32 %add.i.i, %13
  %div.i.i = udiv i32 %sub.i.i, %13
  %add.i = add i32 %div.i.i, 1
  %width.i = getelementptr inbounds %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 9, i32 1
  %14 = ptrtoint ptr %width.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %width.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %15)
  %cmp.i = icmp eq i8 %15, 8
  %mul.i = zext i1 %cmp.i to i32
  %cond.i = shl i32 %add.i, %mul.i
  %conv5 = and i32 %cond.i, 65535
  %int_buf = getelementptr inbounds %struct.mlxsw_sp_hdroom, ptr %hdroom, i32 0, i32 3
  %reserve_cells6 = getelementptr inbounds %struct.mlxsw_sp_hdroom, ptr %hdroom, i32 0, i32 3, i32 1
  %16 = ptrtoint ptr %reserve_cells6 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %conv5, ptr %reserve_cells6, align 4
  %enable = getelementptr inbounds %struct.mlxsw_sp_hdroom, ptr %hdroom, i32 0, i32 3, i32 2
  %17 = ptrtoint ptr %enable to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %enable, align 4, !range !257
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not = icmp eq i8 %18, 0
  %.conv5 = select i1 %tobool.not, i32 0, i32 %conv5
  %19 = ptrtoint ptr %int_buf to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %.conv5, ptr %int_buf, align 4
  %bufs = getelementptr inbounds %struct.mlxsw_sp_hdroom, ptr %hdroom, i32 0, i32 2
  %prios.i = getelementptr inbounds %struct.mlxsw_sp_hdroom, ptr %hdroom, i32 0, i32 1
  %20 = ptrtoint ptr %hdroom to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %hdroom, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp34 = icmp eq i32 %21, 0
  %arrayidx.1.i = getelementptr %struct.mlxsw_sp_hdroom, ptr %hdroom, i32 0, i32 1, i32 0, i32 1
  %arrayidx.2.i = getelementptr %struct.mlxsw_sp_hdroom, ptr %hdroom, i32 0, i32 1, i32 0, i32 2
  %arrayidx.3.i = getelementptr %struct.mlxsw_sp_hdroom, ptr %hdroom, i32 0, i32 1, i32 0, i32 3
  %arrayidx.4.i = getelementptr %struct.mlxsw_sp_hdroom, ptr %hdroom, i32 0, i32 1, i32 0, i32 4
  %arrayidx.5.i = getelementptr %struct.mlxsw_sp_hdroom, ptr %hdroom, i32 0, i32 1, i32 0, i32 5
  %arrayidx.6.i = getelementptr %struct.mlxsw_sp_hdroom, ptr %hdroom, i32 0, i32 1, i32 0, i32 6
  %arrayidx.7.i = getelementptr %struct.mlxsw_sp_hdroom, ptr %hdroom, i32 0, i32 1, i32 0, i32 7
  %mtu = getelementptr inbounds %struct.mlxsw_sp_hdroom, ptr %hdroom, i32 0, i32 5
  %delay_bytes.i = getelementptr inbounds %struct.mlxsw_sp_hdroom, ptr %hdroom, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %if.end45.for.body_crit_edge, %entry
  %i.0106 = phi i32 [ 0, %entry ], [ %inc, %if.end45.for.body_crit_edge ]
  %arrayidx = getelementptr [10 x %struct.mlxsw_sp_hdroom_buf], ptr %bufs, i32 0, i32 %i.0106
  %22 = ptrtoint ptr %prios.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %prios.i, align 4
  %conv.i = zext i8 %23 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0106, i32 %conv.i)
  %cmp2.i = icmp eq i32 %i.0106, %conv.i
  br i1 %cmp2.i, label %for.body.if.else16_crit_edge, label %for.cond.i

for.body.if.else16_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else16

for.cond.i:                                       ; preds = %for.body
  %24 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx.1.i, align 4
  %conv.1.i = zext i8 %25 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0106, i32 %conv.1.i)
  %cmp2.1.i = icmp eq i32 %i.0106, %conv.1.i
  br i1 %cmp2.1.i, label %for.cond.i.if.else16_crit_edge, label %for.cond.1.i

for.cond.i.if.else16_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else16

for.cond.1.i:                                     ; preds = %for.cond.i
  %26 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx.2.i, align 4
  %conv.2.i = zext i8 %27 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0106, i32 %conv.2.i)
  %cmp2.2.i = icmp eq i32 %i.0106, %conv.2.i
  br i1 %cmp2.2.i, label %for.cond.1.i.if.else16_crit_edge, label %for.cond.2.i

for.cond.1.i.if.else16_crit_edge:                 ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else16

for.cond.2.i:                                     ; preds = %for.cond.1.i
  %28 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx.3.i, align 4
  %conv.3.i = zext i8 %29 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0106, i32 %conv.3.i)
  %cmp2.3.i = icmp eq i32 %i.0106, %conv.3.i
  br i1 %cmp2.3.i, label %for.cond.2.i.if.else16_crit_edge, label %for.cond.3.i

for.cond.2.i.if.else16_crit_edge:                 ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else16

for.cond.3.i:                                     ; preds = %for.cond.2.i
  %30 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx.4.i, align 4
  %conv.4.i = zext i8 %31 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0106, i32 %conv.4.i)
  %cmp2.4.i = icmp eq i32 %i.0106, %conv.4.i
  br i1 %cmp2.4.i, label %for.cond.3.i.if.else16_crit_edge, label %for.cond.4.i

for.cond.3.i.if.else16_crit_edge:                 ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else16

for.cond.4.i:                                     ; preds = %for.cond.3.i
  %32 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx.5.i, align 4
  %conv.5.i = zext i8 %33 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0106, i32 %conv.5.i)
  %cmp2.5.i = icmp eq i32 %i.0106, %conv.5.i
  br i1 %cmp2.5.i, label %for.cond.4.i.if.else16_crit_edge, label %for.cond.5.i

for.cond.4.i.if.else16_crit_edge:                 ; preds = %for.cond.4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else16

for.cond.5.i:                                     ; preds = %for.cond.4.i
  %34 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx.6.i, align 4
  %conv.6.i = zext i8 %35 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0106, i32 %conv.6.i)
  %cmp2.6.i = icmp eq i32 %i.0106, %conv.6.i
  br i1 %cmp2.6.i, label %for.cond.5.i.if.else16_crit_edge, label %mlxsw_sp_hdroom_buf_is_used.exit

for.cond.5.i.if.else16_crit_edge:                 ; preds = %for.cond.5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else16

mlxsw_sp_hdroom_buf_is_used.exit:                 ; preds = %for.cond.5.i
  %36 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx.7.i, align 4
  %conv.7.i = zext i8 %37 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0106, i32 %conv.7.i)
  %cmp2.7.i = icmp eq i32 %i.0106, %conv.7.i
  br i1 %cmp2.7.i, label %mlxsw_sp_hdroom_buf_is_used.exit.if.else16_crit_edge, label %mlxsw_sp_hdroom_buf_is_used.exit.if.end25_crit_edge

mlxsw_sp_hdroom_buf_is_used.exit.if.end25_crit_edge: ; preds = %mlxsw_sp_hdroom_buf_is_used.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

mlxsw_sp_hdroom_buf_is_used.exit.if.else16_crit_edge: ; preds = %mlxsw_sp_hdroom_buf_is_used.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else16

if.else16:                                        ; preds = %mlxsw_sp_hdroom_buf_is_used.exit.if.else16_crit_edge, %for.cond.5.i.if.else16_crit_edge, %for.cond.4.i.if.else16_crit_edge, %for.cond.3.i.if.else16_crit_edge, %for.cond.2.i.if.else16_crit_edge, %for.cond.1.i.if.else16_crit_edge, %for.cond.i.if.else16_crit_edge, %for.body.if.else16_crit_edge
  %lossy = getelementptr [10 x %struct.mlxsw_sp_hdroom_buf], ptr %bufs, i32 0, i32 %i.0106, i32 3
  %38 = ptrtoint ptr %lossy to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %lossy, align 4, !range !257
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool17.not = icmp eq i8 %39, 0
  %40 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %mtu, align 4
  %42 = ptrtoint ptr %sb.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %sb.i.i, align 4
  %cell_size.i.i85 = getelementptr inbounds %struct.mlxsw_sp_sb, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %cell_size.i.i85 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %cell_size.i.i85, align 8
  br i1 %tobool17.not, label %if.else20, label %if.then18

if.then18:                                        ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #13
  %add.i.i80 = add i32 %41, -1
  %sub.i.i81 = add i32 %add.i.i80, %45
  %div.i.i82 = udiv i32 %sub.i.i81, %45
  %conv.i83 = shl i32 %div.i.i82, 1
  br label %if.end25

if.else20:                                        ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #13
  %add.i.i86 = add i32 %45, -1
  %sub.i.i87 = add i32 %add.i.i86, %41
  %div.i.i88 = udiv i32 %sub.i.i87, %45
  %conv.i90 = shl i32 %div.i.i88, 1
  %46 = ptrtoint ptr %delay_bytes.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %delay_bytes.i, align 4
  %sub.i.i94 = add i32 %47, %add.i.i86
  %div.i.i95 = udiv i32 %sub.i.i94, %45
  %conv1.i = shl i32 %div.i.i95, 1
  %add.i96 = add i32 %div.i.i88, %conv1.i
  br label %if.end25

if.end25:                                         ; preds = %if.else20, %if.then18, %mlxsw_sp_hdroom_buf_is_used.exit.if.end25_crit_edge
  %thres_cells.0 = phi i32 [ %conv.i83, %if.then18 ], [ %conv.i90, %if.else20 ], [ 0, %mlxsw_sp_hdroom_buf_is_used.exit.if.end25_crit_edge ]
  %delay_cells.0 = phi i32 [ 0, %if.then18 ], [ %add.i96, %if.else20 ], [ 0, %mlxsw_sp_hdroom_buf_is_used.exit.if.end25_crit_edge ]
  %48 = ptrtoint ptr %width.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %width.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %49)
  %cmp.i98 = icmp eq i8 %49, 8
  %mul.i99 = zext i1 %cmp.i98 to i32
  %cond.i100 = shl i32 %thres_cells.0, %mul.i99
  %conv32 = and i32 %cond.i100, 65534
  %50 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %conv32, ptr %arrayidx, align 4
  br i1 %cmp34, label %if.then36, label %if.else40

if.then36:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  %cond.i104 = shl i32 %delay_cells.0, %mul.i99
  %conv38 = and i32 %cond.i104, 65535
  %add = add nuw nsw i32 %conv32, %conv38
  br label %if.end45

if.else40:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  %set_size_cells = getelementptr [10 x %struct.mlxsw_sp_hdroom_buf], ptr %bufs, i32 0, i32 %i.0106, i32 2
  %51 = ptrtoint ptr %set_size_cells to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %set_size_cells, align 4
  %53 = tail call i32 @llvm.umax.i32(i32 %52, i32 %conv32)
  br label %if.end45

if.end45:                                         ; preds = %if.else40, %if.then36
  %.sink = phi i32 [ %add, %if.then36 ], [ %53, %if.else40 ]
  %54 = getelementptr [10 x %struct.mlxsw_sp_hdroom_buf], ptr %bufs, i32 0, i32 %i.0106, i32 1
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %.sink, ptr %54, align 4
  %inc = add nuw nsw i32 %i.0106, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.end, label %if.end45.for.body_crit_edge

if.end45.for.body_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlxsw_sp_hdroom_configure(ptr nocapture noundef readonly %mlxsw_sp_port, ptr nocapture noundef readonly %hdroom) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__mlxsw_sp_hdroom_configure(ptr noundef %mlxsw_sp_port, ptr noundef %hdroom, i1 noundef zeroext false)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__mlxsw_sp_hdroom_configure(ptr nocapture noundef readonly %mlxsw_sp_port, ptr nocapture noundef readonly %hdroom, i1 noundef zeroext %force) unnamed_addr #3 align 64 {
entry:
  %orig_hdroom = alloca %struct.mlxsw_sp_hdroom, align 4
  %tmp_hdroom = alloca %struct.mlxsw_sp_hdroom, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 216, ptr nonnull %orig_hdroom) #11
  call void @llvm.lifetime.start.p0(i64 216, ptr nonnull %tmp_hdroom) #11
  %0 = call ptr @memset(ptr %tmp_hdroom, i32 255, i32 216)
  %hdroom1 = getelementptr inbounds %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 20
  %1 = ptrtoint ptr %hdroom1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hdroom1, align 8
  %3 = call ptr @memcpy(ptr %orig_hdroom, ptr %2, i32 216)
  %4 = call ptr @memmove(ptr %tmp_hdroom, ptr %2, i32 216)
  %size_cells = getelementptr %struct.mlxsw_sp_hdroom, ptr %hdroom, i32 0, i32 2, i32 0, i32 0, i32 1
  %5 = ptrtoint ptr %size_cells to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %size_cells, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %if.then

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %bufs2 = getelementptr inbounds %struct.mlxsw_sp_hdroom, ptr %tmp_hdroom, i32 0, i32 2
  %bufs = getelementptr inbounds %struct.mlxsw_sp_hdroom, ptr %hdroom, i32 0, i32 2
  %7 = call ptr @memcpy(ptr %bufs2, ptr %bufs, i32 16)
  br label %for.inc

for.inc:                                          ; preds = %if.then, %entry.for.inc_crit_edge
  %size_cells.1 = getelementptr %struct.mlxsw_sp_hdroom, ptr %hdroom, i32 0, i32 2, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %size_cells.1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %size_cells.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.1 = icmp eq i32 %9, 0
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.1 = getelementptr %struct.mlxsw_sp_hdroom, ptr %hdroom, i32 0, i32 2, i32 0, i32 1
  %arrayidx4.1 = getelementptr inbounds %struct.mlxsw_sp_hdroom, ptr %tmp_hdroom, i32 0, i32 2, i32 0, i32 1
  %10 = call ptr @memcpy(ptr %arrayidx4.1, ptr %arrayidx.1, i32 16)
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1, %for.inc.for.inc.1_crit_edge
  %size_cells.2 = getelementptr %struct.mlxsw_sp_hdroom, ptr %hdroom, i32 0, i32 2, i32 0, i32 2, i32 1
  %11 = ptrtoint ptr %size_cells.2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %size_cells.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.2 = icmp eq i32 %12, 0
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.2

if.then.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.2 = getelementptr %struct.mlxsw_sp_hdroom, ptr %hdroom, i32 0, i32 2, i32 0, i32 2
  %arrayidx4.2 = getelementptr inbounds %struct.mlxsw_sp_hdroom, ptr %tmp_hdroom, i32 0, i32 2, i32 0, i32 2
  %13 = call ptr @memcpy(ptr %arrayidx4.2, ptr %arrayidx.2, i32 16)
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then.2, %for.inc.1.for.inc.2_crit_edge
  %size_cells.3 = getelementptr %struct.mlxsw_sp_hdroom, ptr %hdroom, i32 0, i32 2, i32 0, i32 3, i32 1
  %14 = ptrtoint ptr %size_cells.3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %size_cells.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.3 = icmp eq i32 %15, 0
  br i1 %tobool.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.then.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.3

if.then.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.3 = getelementptr %struct.mlxsw_sp_hdroom, ptr %hdroom, i32 0, i32 2, i32 0, i32 3
  %arrayidx4.3 = getelementptr inbounds %struct.mlxsw_sp_hdroom, ptr %tmp_hdroom, i32 0, i32 2, i32 0, i32 3
  %16 = call ptr @memcpy(ptr %arrayidx4.3, ptr %arrayidx.3, i32 16)
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then.3, %for.inc.2.for.inc.3_crit_edge
  %size_cells.4 = getelementptr %struct.mlxsw_sp_hdroom, ptr %hdroom, i32 0, i32 2, i32 0, i32 4, i32 1
  %17 = ptrtoint ptr %size_cells.4 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %size_cells.4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.4 = icmp eq i32 %18, 0
  br i1 %tobool.not.4, label %for.inc.3.for.inc.4_crit_edge, label %if.then.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.4

if.then.4:                                        ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.4 = getelementptr %struct.mlxsw_sp_hdroom, ptr %hdroom, i32 0, i32 2, i32 0, i32 4
  %arrayidx4.4 = getelementptr inbounds %struct.mlxsw_sp_hdroom, ptr %tmp_hdroom, i32 0, i32 2, i32 0, i32 4
  %19 = call ptr @memcpy(ptr %arrayidx4.4, ptr %arrayidx.4, i32 16)
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then.4, %for.inc.3.for.inc.4_crit_edge
  %size_cells.5 = getelementptr %struct.mlxsw_sp_hdroom, ptr %hdroom, i32 0, i32 2, i32 0, i32 5, i32 1
  %20 = ptrtoint ptr %size_cells.5 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %size_cells.5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.5 = icmp eq i32 %21, 0
  br i1 %tobool.not.5, label %for.inc.4.for.inc.5_crit_edge, label %if.then.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.5

if.then.5:                                        ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.5 = getelementptr %struct.mlxsw_sp_hdroom, ptr %hdroom, i32 0, i32 2, i32 0, i32 5
  %arrayidx4.5 = getelementptr inbounds %struct.mlxsw_sp_hdroom, ptr %tmp_hdroom, i32 0, i32 2, i32 0, i32 5
  %22 = call ptr @memcpy(ptr %arrayidx4.5, ptr %arrayidx.5, i32 16)
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.then.5, %for.inc.4.for.inc.5_crit_edge
  %size_cells.6 = getelementptr %struct.mlxsw_sp_hdroom, ptr %hdroom, i32 0, i32 2, i32 0, i32 6, i32 1
  %23 = ptrtoint ptr %size_cells.6 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %size_cells.6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not.6 = icmp eq i32 %24, 0
  br i1 %tobool.not.6, label %for.inc.5.for.inc.6_crit_edge, label %if.then.6

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.6

if.then.6:                                        ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.6 = getelementptr %struct.mlxsw_sp_hdroom, ptr %hdroom, i32 0, i32 2, i32 0, i32 6
  %arrayidx4.6 = getelementptr inbounds %struct.mlxsw_sp_hdroom, ptr %tmp_hdroom, i32 0, i32 2, i32 0, i32 6
  %25 = call ptr @memcpy(ptr %arrayidx4.6, ptr %arrayidx.6, i32 16)
  br label %for.inc.6

for.inc.6:                                        ; preds = %if.then.6, %for.inc.5.for.inc.6_crit_edge
  %size_cells.7 = getelementptr %struct.mlxsw_sp_hdroom, ptr %hdroom, i32 0, i32 2, i32 0, i32 7, i32 1
  %26 = ptrtoint ptr %size_cells.7 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %size_cells.7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.7 = icmp eq i32 %27, 0
  br i1 %tobool.not.7, label %for.inc.6.for.inc.7_crit_edge, label %if.then.7

for.inc.6.for.inc.7_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.7

if.then.7:                                        ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.7 = getelementptr %struct.mlxsw_sp_hdroom, ptr %hdroom, i32 0, i32 2, i32 0, i32 7
  %arrayidx4.7 = getelementptr inbounds %struct.mlxsw_sp_hdroom, ptr %tmp_hdroom, i32 0, i32 2, i32 0, i32 7
  %28 = call ptr @memcpy(ptr %arrayidx4.7, ptr %arrayidx.7, i32 16)
  br label %for.inc.7

for.inc.7:                                        ; preds = %if.then.7, %for.inc.6.for.inc.7_crit_edge
  %size_cells.8 = getelementptr %struct.mlxsw_sp_hdroom, ptr %hdroom, i32 0, i32 2, i32 0, i32 8, i32 1
  %29 = ptrtoint ptr %size_cells.8 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %size_cells.8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not.8 = icmp eq i32 %30, 0
  br i1 %tobool.not.8, label %for.inc.7.for.inc.8_crit_edge, label %if.then.8

for.inc.7.for.inc.8_crit_edge:                    ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.8

if.then.8:                                        ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.8 = getelementptr %struct.mlxsw_sp_hdroom, ptr %hdroom, i32 0, i32 2, i32 0, i32 8
  %arrayidx4.8 = getelementptr inbounds %struct.mlxsw_sp_hdroom, ptr %tmp_hdroom, i32 0, i32 2, i32 0, i32 8
  %31 = call ptr @memcpy(ptr %arrayidx4.8, ptr %arrayidx.8, i32 16)
  br label %for.inc.8

for.inc.8:                                        ; preds = %if.then.8, %for.inc.7.for.inc.8_crit_edge
  %size_cells.9 = getelementptr %struct.mlxsw_sp_hdroom, ptr %hdroom, i32 0, i32 2, i32 0, i32 9, i32 1
  %32 = ptrtoint ptr %size_cells.9 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %size_cells.9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.not.9 = icmp eq i32 %33, 0
  br i1 %tobool.not.9, label %for.inc.8.for.inc.9_crit_edge, label %if.then.9

for.inc.8.for.inc.9_crit_edge:                    ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.9

if.then.9:                                        ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.9 = getelementptr %struct.mlxsw_sp_hdroom, ptr %hdroom, i32 0, i32 2, i32 0, i32 9
  %arrayidx4.9 = getelementptr inbounds %struct.mlxsw_sp_hdroom, ptr %tmp_hdroom, i32 0, i32 2, i32 0, i32 9
  %34 = call ptr @memcpy(ptr %arrayidx4.9, ptr %arrayidx.9, i32 16)
  br label %for.inc.9

for.inc.9:                                        ; preds = %if.then.9, %for.inc.8.for.inc.9_crit_edge
  %mlxsw_sp = getelementptr inbounds %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 2
  %35 = ptrtoint ptr %mlxsw_sp to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %mlxsw_sp, align 8
  %size_cells.i = getelementptr inbounds %struct.mlxsw_sp_hdroom, ptr %tmp_hdroom, i32 0, i32 2, i32 0, i32 0, i32 1
  %37 = ptrtoint ptr %size_cells.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %size_cells.i, align 4
  %size_cells.1.i = getelementptr inbounds %struct.mlxsw_sp_hdroom, ptr %tmp_hdroom, i32 0, i32 2, i32 0, i32 1, i32 1
  %39 = ptrtoint ptr %size_cells.1.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %size_cells.1.i, align 4
  %add.1.i = add i32 %40, %38
  %size_cells.2.i = getelementptr inbounds %struct.mlxsw_sp_hdroom, ptr %tmp_hdroom, i32 0, i32 2, i32 0, i32 2, i32 1
  %41 = ptrtoint ptr %size_cells.2.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %size_cells.2.i, align 4
  %add.2.i = add i32 %add.1.i, %42
  %size_cells.3.i = getelementptr inbounds %struct.mlxsw_sp_hdroom, ptr %tmp_hdroom, i32 0, i32 2, i32 0, i32 3, i32 1
  %43 = ptrtoint ptr %size_cells.3.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %size_cells.3.i, align 4
  %add.3.i = add i32 %add.2.i, %44
  %size_cells.4.i = getelementptr inbounds %struct.mlxsw_sp_hdroom, ptr %tmp_hdroom, i32 0, i32 2, i32 0, i32 4, i32 1
  %45 = ptrtoint ptr %size_cells.4.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %size_cells.4.i, align 4
  %add.4.i = add i32 %add.3.i, %46
  %size_cells.5.i = getelementptr inbounds %struct.mlxsw_sp_hdroom, ptr %tmp_hdroom, i32 0, i32 2, i32 0, i32 5, i32 1
  %47 = ptrtoint ptr %size_cells.5.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %size_cells.5.i, align 4
  %add.5.i = add i32 %add.4.i, %48
  %size_cells.6.i = getelementptr inbounds %struct.mlxsw_sp_hdroom, ptr %tmp_hdroom, i32 0, i32 2, i32 0, i32 6, i32 1
  %49 = ptrtoint ptr %size_cells.6.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %size_cells.6.i, align 4
  %add.6.i = add i32 %add.5.i, %50
  %size_cells.7.i = getelementptr inbounds %struct.mlxsw_sp_hdroom, ptr %tmp_hdroom, i32 0, i32 2, i32 0, i32 7, i32 1
  %51 = ptrtoint ptr %size_cells.7.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %size_cells.7.i, align 4
  %add.7.i = add i32 %add.6.i, %52
  %size_cells.8.i = getelementptr inbounds %struct.mlxsw_sp_hdroom, ptr %tmp_hdroom, i32 0, i32 2, i32 0, i32 8, i32 1
  %53 = ptrtoint ptr %size_cells.8.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %size_cells.8.i, align 4
  %add.8.i = add i32 %add.7.i, %54
  %size_cells.9.i = getelementptr inbounds %struct.mlxsw_sp_hdroom, ptr %tmp_hdroom, i32 0, i32 2, i32 0, i32 9, i32 1
  %55 = ptrtoint ptr %size_cells.9.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %size_cells.9.i, align 4
  %add.9.i = add i32 %add.8.i, %56
  %reserve_cells.i = getelementptr inbounds %struct.mlxsw_sp_hdroom, ptr %tmp_hdroom, i32 0, i32 3, i32 1
  %57 = ptrtoint ptr %reserve_cells.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %reserve_cells.i, align 4
  %add1.i = add i32 %add.9.i, %58
  %sb.i = getelementptr inbounds %struct.mlxsw_sp, ptr %36, i32 0, i32 8
  %59 = ptrtoint ptr %sb.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %sb.i, align 4
  %max_headroom_cells.i = getelementptr inbounds %struct.mlxsw_sp_sb, ptr %60, i32 0, i32 3
  %61 = ptrtoint ptr %max_headroom_cells.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %max_headroom_cells.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add1.i, i32 %62)
  %cmp2.i.not = icmp ugt i32 %add1.i, %62
  br i1 %cmp2.i.not, label %for.inc.9.cleanup_crit_edge, label %lor.lhs.false

for.inc.9.cleanup_crit_edge:                      ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %for.inc.9
  %size_cells.i63 = getelementptr %struct.mlxsw_sp_hdroom, ptr %hdroom, i32 0, i32 2, i32 0, i32 0, i32 1
  %63 = ptrtoint ptr %size_cells.i63 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %size_cells.i63, align 4
  %size_cells.1.i64 = getelementptr %struct.mlxsw_sp_hdroom, ptr %hdroom, i32 0, i32 2, i32 0, i32 1, i32 1
  %65 = ptrtoint ptr %size_cells.1.i64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %size_cells.1.i64, align 4
  %add.1.i65 = add i32 %66, %64
  %size_cells.2.i66 = getelementptr %struct.mlxsw_sp_hdroom, ptr %hdroom, i32 0, i32 2, i32 0, i32 2, i32 1
  %67 = ptrtoint ptr %size_cells.2.i66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %size_cells.2.i66, align 4
  %add.2.i67 = add i32 %add.1.i65, %68
  %size_cells.3.i68 = getelementptr %struct.mlxsw_sp_hdroom, ptr %hdroom, i32 0, i32 2, i32 0, i32 3, i32 1
  %69 = ptrtoint ptr %size_cells.3.i68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %size_cells.3.i68, align 4
  %add.3.i69 = add i32 %add.2.i67, %70
  %size_cells.4.i70 = getelementptr %struct.mlxsw_sp_hdroom, ptr %hdroom, i32 0, i32 2, i32 0, i32 4, i32 1
  %71 = ptrtoint ptr %size_cells.4.i70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %size_cells.4.i70, align 4
  %add.4.i71 = add i32 %add.3.i69, %72
  %size_cells.5.i72 = getelementptr %struct.mlxsw_sp_hdroom, ptr %hdroom, i32 0, i32 2, i32 0, i32 5, i32 1
  %73 = ptrtoint ptr %size_cells.5.i72 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %size_cells.5.i72, align 4
  %add.5.i73 = add i32 %add.4.i71, %74
  %size_cells.6.i74 = getelementptr %struct.mlxsw_sp_hdroom, ptr %hdroom, i32 0, i32 2, i32 0, i32 6, i32 1
  %75 = ptrtoint ptr %size_cells.6.i74 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %size_cells.6.i74, align 4
  %add.6.i75 = add i32 %add.5.i73, %76
  %size_cells.7.i76 = getelementptr %struct.mlxsw_sp_hdroom, ptr %hdroom, i32 0, i32 2, i32 0, i32 7, i32 1
  %77 = ptrtoint ptr %size_cells.7.i76 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %size_cells.7.i76, align 4
  %add.7.i77 = add i32 %add.6.i75, %78
  %size_cells.8.i78 = getelementptr %struct.mlxsw_sp_hdroom, ptr %hdroom, i32 0, i32 2, i32 0, i32 8, i32 1
  %79 = ptrtoint ptr %size_cells.8.i78 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %size_cells.8.i78, align 4
  %add.8.i79 = add i32 %add.7.i77, %80
  %size_cells.9.i80 = getelementptr %struct.mlxsw_sp_hdroom, ptr %hdroom, i32 0, i32 2, i32 0, i32 9, i32 1
  %81 = ptrtoint ptr %size_cells.9.i80 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %size_cells.9.i80, align 4
  %add.9.i81 = add i32 %add.8.i79, %82
  %reserve_cells.i82 = getelementptr inbounds %struct.mlxsw_sp_hdroom, ptr %hdroom, i32 0, i32 3, i32 1
  %83 = ptrtoint ptr %reserve_cells.i82 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %reserve_cells.i82, align 4
  %add1.i83 = add i32 %add.9.i81, %84
  call void @__sanitizer_cov_trace_cmp4(i32 %add1.i83, i32 %62)
  %cmp2.i86.not = icmp ugt i32 %add1.i83, %62
  br i1 %cmp2.i86.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end11

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end11:                                         ; preds = %lor.lhs.false
  %call13 = call fastcc i32 @mlxsw_sp_hdroom_configure_buffers(ptr noundef %mlxsw_sp_port, ptr noundef nonnull %tmp_hdroom, i1 noundef zeroext %force)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end16:                                         ; preds = %if.end11
  %call18 = tail call fastcc i32 @mlxsw_sp_hdroom_configure_priomap(ptr noundef %mlxsw_sp_port, ptr noundef %hdroom, i1 noundef zeroext %force)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %if.end16.err_configure_priomap_crit_edge

if.end16.err_configure_priomap_crit_edge:         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_configure_priomap

if.end21:                                         ; preds = %if.end16
  %call22 = tail call fastcc i32 @mlxsw_sp_hdroom_configure_buffers(ptr noundef %mlxsw_sp_port, ptr noundef %hdroom, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %if.end21.err_configure_buffers_crit_edge

if.end21.err_configure_buffers_crit_edge:         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_configure_buffers

if.end25:                                         ; preds = %if.end21
  %call26 = tail call fastcc i32 @mlxsw_sp_hdroom_configure_int_buf(ptr noundef %mlxsw_sp_port, ptr noundef %hdroom)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end29, label %err_configure_int_buf

if.end29:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  %85 = ptrtoint ptr %hdroom1 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %hdroom1, align 8
  %87 = call ptr @memcpy(ptr %86, ptr %hdroom, i32 216)
  br label %cleanup

err_configure_int_buf:                            ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  %call31 = call fastcc i32 @mlxsw_sp_hdroom_configure_buffers(ptr noundef %mlxsw_sp_port, ptr noundef nonnull %tmp_hdroom, i1 noundef zeroext false)
  br label %err_configure_buffers

err_configure_buffers:                            ; preds = %err_configure_int_buf, %if.end21.err_configure_buffers_crit_edge
  %err.0 = phi i32 [ %call22, %if.end21.err_configure_buffers_crit_edge ], [ %call26, %err_configure_int_buf ]
  %call32 = call fastcc i32 @mlxsw_sp_hdroom_configure_priomap(ptr noundef %mlxsw_sp_port, ptr noundef nonnull %tmp_hdroom, i1 noundef zeroext false)
  br label %err_configure_priomap

err_configure_priomap:                            ; preds = %err_configure_buffers, %if.end16.err_configure_priomap_crit_edge
  %err.1 = phi i32 [ %call18, %if.end16.err_configure_priomap_crit_edge ], [ %err.0, %err_configure_buffers ]
  %call33 = call fastcc i32 @mlxsw_sp_hdroom_configure_buffers(ptr noundef %mlxsw_sp_port, ptr noundef nonnull %orig_hdroom, i1 noundef zeroext false)
  br label %cleanup

cleanup:                                          ; preds = %err_configure_priomap, %if.end29, %if.end11.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %for.inc.9.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %err_configure_priomap ], [ 0, %if.end29 ], [ -105, %lor.lhs.false.cleanup_crit_edge ], [ -105, %for.inc.9.cleanup_crit_edge ], [ %call13, %if.end11.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 216, ptr nonnull %tmp_hdroom) #11
  call void @llvm.lifetime.end.p0(i64 216, ptr nonnull %orig_hdroom) #11
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mlxsw_sp1_pb_int_buf_size_get(i32 noundef %mtu, i32 noundef %speed) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = mul i32 %mtu, 5
  %div = sdiv i32 %mul, 2
  ret i32 %div
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mlxsw_sp2_pb_int_buf_size_get(i32 noundef %mtu, i32 noundef %speed) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mul.i = mul i32 %mtu, 3
  %mul1.i = mul i32 %speed, 38
  %div.i = udiv i32 %mul1.i, 1000
  %add.i = add i32 %div.i, %mul.i
  ret i32 %add.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mlxsw_sp3_pb_int_buf_size_get(i32 noundef %mtu, i32 noundef %speed) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mul.i = mul i32 %mtu, 3
  %mul1.i = mul i32 %speed, 50
  %div.i = udiv i32 %mul1.i, 1000
  %add.i = add i32 %div.i, %mul.i
  ret i32 %add.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlxsw_sp_buffers_init(ptr nocapture noundef %mlxsw_sp) local_unnamed_addr #3 align 64 {
entry:
  %rest_cells.i = alloca [2 x i32], align 4
  %ing_pool_count = alloca i16, align 2
  %eg_pool_count = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %ing_pool_count) #11
  %0 = ptrtoint ptr %ing_pool_count to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %ing_pool_count, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %eg_pool_count) #11
  %1 = ptrtoint ptr %eg_pool_count to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 0, ptr %eg_pool_count, align 2
  %core = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 1
  %2 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %core, align 4
  %call = tail call zeroext i1 @mlxsw_core_res_valid(ptr noundef %3, i32 noundef 18) #11
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %core, align 4
  %call2 = tail call zeroext i1 @mlxsw_core_res_valid(ptr noundef %5, i32 noundef 17) #11
  br i1 %call2, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %6 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %core, align 4
  %call6 = tail call zeroext i1 @mlxsw_core_res_valid(ptr noundef %7, i32 noundef 19) #11
  br i1 %call6, label %if.end8, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 24) #14
  %sb = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 8
  %9 = ptrtoint ptr %sb to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call7.i.i, ptr %sb, align 4
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end8.cleanup_crit_edge, label %if.end12

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %10 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %core, align 4
  %call14 = tail call i64 @mlxsw_core_res_get(ptr noundef %11, i32 noundef 18) #11
  %conv = trunc i64 %call14 to i32
  %12 = ptrtoint ptr %sb to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sb, align 4
  %cell_size = getelementptr inbounds %struct.mlxsw_sp_sb, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %cell_size to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %conv, ptr %cell_size, align 8
  %15 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %core, align 4
  %call17 = tail call i64 @mlxsw_core_res_get(ptr noundef %16, i32 noundef 17) #11
  %17 = ptrtoint ptr %sb to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sb, align 4
  %sb_size = getelementptr inbounds %struct.mlxsw_sp_sb, ptr %18, i32 0, i32 4
  %19 = ptrtoint ptr %sb_size to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %call17, ptr %sb_size, align 8
  %20 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %core, align 4
  %call20 = tail call i64 @mlxsw_core_res_get(ptr noundef %21, i32 noundef 19) #11
  %conv21 = trunc i64 %call20 to i32
  %22 = ptrtoint ptr %sb to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sb, align 4
  %cell_size23 = getelementptr inbounds %struct.mlxsw_sp_sb, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %cell_size23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cell_size23, align 8
  %div = udiv i32 %conv21, %25
  %max_headroom_cells = getelementptr inbounds %struct.mlxsw_sp_sb, ptr %23, i32 0, i32 3
  %26 = ptrtoint ptr %max_headroom_cells to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %div, ptr %max_headroom_cells, align 4
  %27 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %core, align 4
  %call.i = tail call i32 @mlxsw_core_max_ports(ptr noundef %28) #11
  %29 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %call.i, i32 580) #11
  %30 = extractvalue { i32, i1 } %29, 1
  br i1 %30, label %if.end12.kcalloc.exit.i_crit_edge, label %if.end7.i.i.i, !prof !258

if.end12.kcalloc.exit.i_crit_edge:                ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %kcalloc.exit.i

if.end7.i.i.i:                                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  %31 = extractvalue { i32, i1 } %29, 0
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %31, i32 noundef 3520) #15
  br label %kcalloc.exit.i

kcalloc.exit.i:                                   ; preds = %if.end7.i.i.i, %if.end12.kcalloc.exit.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %call8.i.i.i, %if.end7.i.i.i ], [ null, %if.end12.kcalloc.exit.i_crit_edge ]
  %32 = ptrtoint ptr %sb to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %sb, align 4
  %ports.i = getelementptr inbounds %struct.mlxsw_sp_sb, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %ports.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %retval.0.i.i.i, ptr %ports.i, align 4
  %35 = load ptr, ptr %sb, align 4
  %ports3.i = getelementptr inbounds %struct.mlxsw_sp_sb, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %ports3.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ports3.i, align 4
  %tobool.not.i = icmp eq ptr %37, null
  br i1 %tobool.not.i, label %kcalloc.exit.i.err_sb_ports_init_crit_edge, label %if.end.i

kcalloc.exit.i.err_sb_ports_init_crit_edge:       ; preds = %kcalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_sb_ports_init

if.end.i:                                         ; preds = %kcalloc.exit.i
  %sb_vals.i = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 34
  %38 = ptrtoint ptr %sb_vals.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %sb_vals.i, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %39, align 4
  %42 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %41, i32 12) #11
  %43 = extractvalue { i32, i1 } %42, 1
  br i1 %43, label %if.end.i.err_sb_ports_init.sink.split_crit_edge, label %if.end7.i.i80.i, !prof !258

if.end.i.err_sb_ports_init.sink.split_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_sb_ports_init.sink.split

if.end7.i.i80.i:                                  ; preds = %if.end.i
  %44 = extractvalue { i32, i1 } %42, 0
  %call8.i.i79.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %44, i32 noundef 3520) #15
  %tobool5.not.i = icmp eq ptr %call8.i.i79.i, null
  br i1 %tobool5.not.i, label %if.end7.i.i80.i.err_sb_ports_init.sink.split_crit_edge, label %if.end7.i

if.end7.i.i80.i.err_sb_ports_init.sink.split_crit_edge: ; preds = %if.end7.i.i80.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_sb_ports_init.sink.split

if.end7.i:                                        ; preds = %if.end7.i.i80.i
  %45 = ptrtoint ptr %sb to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %sb, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call8.i.i79.i, ptr %46, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp96.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp96.not.i, label %if.end7.i.if.end28_crit_edge, label %if.end7.i.for.body.i_crit_edge

if.end7.i.for.body.i_crit_edge:                   ; preds = %if.end7.i
  br label %for.body.i

if.end7.i.if.end28_crit_edge:                     ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end7.i.for.body.i_crit_edge
  %i.097.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end7.i.for.body.i_crit_edge ]
  %48 = ptrtoint ptr %sb to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %sb, align 4
  %ports11.i = getelementptr inbounds %struct.mlxsw_sp_sb, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %ports11.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ports11.i, align 4
  %52 = ptrtoint ptr %sb_vals.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %sb_vals.i, align 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %53, align 4
  %56 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %55, i32 16) #11
  %57 = extractvalue { i32, i1 } %56, 1
  br i1 %57, label %for.body.i.mlxsw_sp_sb_port_init.exit.i_crit_edge, label %if.end7.i.i.i.i, !prof !258

for.body.i.mlxsw_sp_sb_port_init.exit.i_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlxsw_sp_sb_port_init.exit.i

if.end7.i.i.i.i:                                  ; preds = %for.body.i
  %58 = extractvalue { i32, i1 } %56, 0
  %call8.i.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %58, i32 noundef 3520) #15
  %tobool.not.i.i = icmp eq ptr %call8.i.i.i.i, null
  br i1 %tobool.not.i.i, label %if.end7.i.i.i.i.mlxsw_sp_sb_port_init.exit.i_crit_edge, label %for.inc.i

if.end7.i.i.i.i.mlxsw_sp_sb_port_init.exit.i_crit_edge: ; preds = %if.end7.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlxsw_sp_sb_port_init.exit.i

mlxsw_sp_sb_port_init.exit.i:                     ; preds = %if.end7.i.i.i.i.mlxsw_sp_sb_port_init.exit.i_crit_edge, %for.body.i.mlxsw_sp_sb_port_init.exit.i_crit_edge
  %i.199.i = add i32 %i.097.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.199.i)
  %cmp17100.i = icmp sgt i32 %i.199.i, -1
  br i1 %cmp17100.i, label %mlxsw_sp_sb_port_init.exit.i.for.body18.i_crit_edge, label %mlxsw_sp_sb_port_init.exit.i.err_sb_ports_init.sink.split.sink.split_crit_edge

mlxsw_sp_sb_port_init.exit.i.err_sb_ports_init.sink.split.sink.split_crit_edge: ; preds = %mlxsw_sp_sb_port_init.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_sb_ports_init.sink.split.sink.split

mlxsw_sp_sb_port_init.exit.i.for.body18.i_crit_edge: ; preds = %mlxsw_sp_sb_port_init.exit.i
  br label %for.body18.i

for.inc.i:                                        ; preds = %if.end7.i.i.i.i
  %pms1.i.i = getelementptr %struct.mlxsw_sp_sb_port, ptr %51, i32 %i.097.i, i32 2
  %59 = ptrtoint ptr %pms1.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call8.i.i.i.i, ptr %pms1.i.i, align 4
  %inc.i = add nuw i32 %i.097.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %call.i
  br i1 %exitcond.not.i, label %for.inc.i.if.end28_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc.i.if.end28_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28

for.body18.i:                                     ; preds = %for.body18.i.for.body18.i_crit_edge, %mlxsw_sp_sb_port_init.exit.i.for.body18.i_crit_edge
  %i.1101.i = phi i32 [ %i.1.i, %for.body18.i.for.body18.i_crit_edge ], [ %i.199.i, %mlxsw_sp_sb_port_init.exit.i.for.body18.i_crit_edge ]
  %60 = ptrtoint ptr %sb to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %sb, align 4
  %ports20.i = getelementptr inbounds %struct.mlxsw_sp_sb, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %ports20.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %ports20.i, align 4
  %pms.i.i = getelementptr %struct.mlxsw_sp_sb_port, ptr %63, i32 %i.1101.i, i32 2
  %64 = ptrtoint ptr %pms.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %pms.i.i, align 4
  tail call void @kfree(ptr noundef %65) #11
  %i.1.i = add nsw i32 %i.1101.i, -1
  %cmp17.i.not = icmp eq i32 %i.1101.i, 0
  br i1 %cmp17.i.not, label %for.body18.i.err_sb_ports_init.sink.split.sink.split_crit_edge, label %for.body18.i.for.body18.i_crit_edge

for.body18.i.for.body18.i_crit_edge:              ; preds = %for.body18.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body18.i

for.body18.i.err_sb_ports_init.sink.split.sink.split_crit_edge: ; preds = %for.body18.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_sb_ports_init.sink.split.sink.split

if.end28:                                         ; preds = %for.inc.i.if.end28_crit_edge, %if.end7.i.if.end28_crit_edge
  %66 = ptrtoint ptr %sb_vals.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %sb_vals.i, align 4
  %prs = getelementptr inbounds %struct.mlxsw_sp_sb_vals, ptr %67, i32 0, i32 4
  %68 = ptrtoint ptr %prs to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %prs, align 4
  %pool_dess = getelementptr inbounds %struct.mlxsw_sp_sb_vals, ptr %67, i32 0, i32 1
  %70 = ptrtoint ptr %pool_dess to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %pool_dess, align 4
  %72 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %67, align 4
  %74 = ptrtoint ptr %sb to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %sb, align 4
  %sb_size.i = getelementptr inbounds %struct.mlxsw_sp_sb, ptr %75, i32 0, i32 4
  %76 = ptrtoint ptr %sb_size.i to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %sb_size.i, align 8
  %cell_size.i = getelementptr inbounds %struct.mlxsw_sp_sb, ptr %75, i32 0, i32 2
  %78 = ptrtoint ptr %cell_size.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %cell_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %77)
  %cmp164.i.i.i = icmp ult i64 %77, 4294967296
  br i1 %cmp164.i.i.i, label %if.then168.i.i.i, label %if.else174.i.i.i, !prof !259

if.then168.i.i.i:                                 ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  %conv169.i.i.i = trunc i64 %77 to i32
  %div172.i.i.i = udiv i32 %conv169.i.i.i, %79
  br label %div_u64.exit.i

if.else174.i.i.i:                                 ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  %80 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %79, i64 %77) #16, !srcloc !260
  %asmresult1.i.i.i.i = extractvalue { i64, i64 } %80, 1
  %extract.t148.i = trunc i64 %asmresult1.i.i.i.i to i32
  br label %div_u64.exit.i

div_u64.exit.i:                                   ; preds = %if.else174.i.i.i, %if.then168.i.i.i
  %dividend.addr.0.i.i.off0.i = phi i32 [ %div172.i.i.i, %if.then168.i.i.i ], [ %extract.t148.i, %if.else174.i.i.i ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rest_cells.i) #11
  %81 = getelementptr inbounds [2 x i32], ptr %rest_cells.i, i32 0, i32 1
  %82 = ptrtoint ptr %rest_cells.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %dividend.addr.0.i.i.off0.i, ptr %rest_cells.i, align 4
  %83 = ptrtoint ptr %81 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %dividend.addr.0.i.i.off0.i, ptr %81, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %cmp150.not.i = icmp eq i32 %73, 0
  br i1 %cmp150.not.i, label %div_u64.exit.i.if.end34_crit_edge, label %div_u64.exit.i.for.body.i91_crit_edge

div_u64.exit.i.for.body.i91_crit_edge:            ; preds = %div_u64.exit.i
  br label %for.body.i91

div_u64.exit.i.if.end34_crit_edge:                ; preds = %div_u64.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34

for.body.i91:                                     ; preds = %cleanup.i.for.body.i91_crit_edge, %div_u64.exit.i.for.body.i91_crit_edge
  %i.0151.i = phi i32 [ %inc.i93, %cleanup.i.for.body.i91_crit_edge ], [ 0, %div_u64.exit.i.for.body.i91_crit_edge ]
  %size5.i = getelementptr %struct.mlxsw_sp_sb_pr, ptr %69, i32 %i.0151.i, i32 1
  %84 = ptrtoint ptr %size5.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %size5.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3, i32 %85)
  %switch.i = icmp ugt i32 %85, -3
  br i1 %switch.i, label %for.body.i91.cleanup.i_crit_edge, label %if.end.i92

for.body.i91.cleanup.i_crit_edge:                 ; preds = %for.body.i91
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.i

if.end.i92:                                       ; preds = %for.body.i91
  %arrayidx.i = getelementptr %struct.mlxsw_sp_sb_pool_des, ptr %71, i32 %i.0151.i
  %86 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %arrayidx.i, align 4
  %88 = ptrtoint ptr %sb to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %sb, align 4
  %cell_size.i.i = getelementptr inbounds %struct.mlxsw_sp_sb, ptr %89, i32 0, i32 2
  %90 = ptrtoint ptr %cell_size.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %cell_size.i.i, align 8
  %add.i.i = add i32 %85, -1
  %sub.i.i = add i32 %add.i.i, %91
  %div.i.i = udiv i32 %sub.i.i, %91
  %arrayidx11.i = getelementptr [2 x i32], ptr %rest_cells.i, i32 0, i32 %87
  %92 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %arrayidx11.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %93, i32 %div.i.i)
  %cmp12.i = icmp ult i32 %93, %div.i.i
  br i1 %cmp12.i, label %land.rhs.i, label %if.end53.i

land.rhs.i:                                       ; preds = %if.end.i92
  %.b140.i = load i1, ptr @mlxsw_sp_sb_prs_init.__already_done, align 1
  br i1 %.b140.i, label %land.rhs.i.cleanup.i_crit_edge, label %if.then21.i, !prof !259

land.rhs.i.cleanup.i_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.i

if.then21.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @mlxsw_sp_sb_prs_init.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.49, i32 noundef 753, i32 noundef 9, ptr noundef null) #11
  br label %cleanup.i

if.end53.i:                                       ; preds = %if.end.i92
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i = sub i32 %93, %div.i.i
  %94 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %sub.i, ptr %arrayidx11.i, align 4
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end53.i, %if.then21.i, %land.rhs.i.cleanup.i_crit_edge, %for.body.i91.cleanup.i_crit_edge
  %inc.i93 = add nuw i32 %i.0151.i, 1
  %exitcond.not.i94 = icmp eq i32 %inc.i93, %73
  br i1 %exitcond.not.i94, label %cleanup.i.for.body60.i_crit_edge, label %cleanup.i.for.body.i91_crit_edge

cleanup.i.for.body.i91_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i91

cleanup.i.for.body60.i_crit_edge:                 ; preds = %cleanup.i
  br label %for.body60.i

for.cond57.i:                                     ; preds = %if.end88.i
  %inc97.i = add nuw i32 %i.1154.i, 1
  %exitcond157.not.i = icmp eq i32 %inc97.i, %73
  br i1 %exitcond157.not.i, label %for.cond57.i.if.end34_crit_edge, label %for.cond57.i.for.body60.i_crit_edge

for.cond57.i.for.body60.i_crit_edge:              ; preds = %for.cond57.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body60.i

for.cond57.i.if.end34_crit_edge:                  ; preds = %for.cond57.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34

for.body60.i:                                     ; preds = %for.cond57.i.for.body60.i_crit_edge, %cleanup.i.for.body60.i_crit_edge
  %i.1154.i = phi i32 [ %inc97.i, %for.cond57.i.for.body60.i_crit_edge ], [ 0, %cleanup.i.for.body60.i_crit_edge ]
  %arrayidx62.i = getelementptr %struct.mlxsw_sp_sb_pr, ptr %69, i32 %i.1154.i
  %size63.i = getelementptr %struct.mlxsw_sp_sb_pr, ptr %69, i32 %i.1154.i, i32 1
  %95 = ptrtoint ptr %size63.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %size63.i, align 4
  %97 = zext i32 %96 to i64
  call void @__sanitizer_cov_trace_switch(i64 %97, ptr @__sancov_gen_cov_switch_values.126)
  switch i32 %96, label %if.else81.i [
    i32 -1, label %if.then67.i
    i32 -2, label %if.then73.i
  ]

if.then67.i:                                      ; preds = %for.body60.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv68.i = trunc i32 %i.1154.i to i16
  %98 = ptrtoint ptr %arrayidx62.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %arrayidx62.i, align 4
  %call70.i = tail call fastcc i32 @mlxsw_sp_sb_pr_write(ptr noundef %mlxsw_sp, i16 noundef zeroext %conv68.i, i32 noundef %99, i32 noundef 0, i1 noundef zeroext true) #11
  br label %if.end88.i

if.then73.i:                                      ; preds = %for.body60.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx74.i = getelementptr %struct.mlxsw_sp_sb_pool_des, ptr %71, i32 %i.1154.i
  %100 = ptrtoint ptr %arrayidx74.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %arrayidx74.i, align 4
  %arrayidx76.i = getelementptr [2 x i32], ptr %rest_cells.i, i32 0, i32 %101
  %102 = ptrtoint ptr %arrayidx76.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %arrayidx76.i, align 4
  %conv77.i = trunc i32 %i.1154.i to i16
  %104 = ptrtoint ptr %arrayidx62.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %arrayidx62.i, align 4
  %call80.i = tail call fastcc i32 @mlxsw_sp_sb_pr_write(ptr noundef %mlxsw_sp, i16 noundef zeroext %conv77.i, i32 noundef %105, i32 noundef %103, i1 noundef zeroext false) #11
  br label %if.end88.i

if.else81.i:                                      ; preds = %for.body60.i
  call void @__sanitizer_cov_trace_pc() #13
  %106 = ptrtoint ptr %sb to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %sb, align 4
  %cell_size.i143.i = getelementptr inbounds %struct.mlxsw_sp_sb, ptr %107, i32 0, i32 2
  %108 = ptrtoint ptr %cell_size.i143.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %cell_size.i143.i, align 8
  %add.i144.i = add i32 %96, -1
  %sub.i145.i = add i32 %add.i144.i, %109
  %div.i146.i = udiv i32 %sub.i145.i, %109
  %conv83.i = trunc i32 %i.1154.i to i16
  %110 = ptrtoint ptr %arrayidx62.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %arrayidx62.i, align 4
  %call86.i = tail call fastcc i32 @mlxsw_sp_sb_pr_write(ptr noundef %mlxsw_sp, i16 noundef zeroext %conv83.i, i32 noundef %111, i32 noundef %div.i146.i, i1 noundef zeroext false) #11
  br label %if.end88.i

if.end88.i:                                       ; preds = %if.else81.i, %if.then73.i, %if.then67.i
  %err.0.i = phi i32 [ %call70.i, %if.then67.i ], [ %call80.i, %if.then73.i ], [ %call86.i, %if.else81.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i)
  %tobool89.not.i = icmp eq i32 %err.0.i, 0
  br i1 %tobool89.not.i, label %for.cond57.i, label %mlxsw_sp_sb_prs_init.exit

mlxsw_sp_sb_prs_init.exit:                        ; preds = %if.end88.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rest_cells.i) #11
  br label %err_sb_prs_init

if.end34:                                         ; preds = %for.cond57.i.if.end34_crit_edge, %div_u64.exit.i.if.end34_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rest_cells.i) #11
  %112 = ptrtoint ptr %sb_vals.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %sb_vals.i, align 4
  %cms_cpu.i = getelementptr inbounds %struct.mlxsw_sp_sb_vals, ptr %113, i32 0, i32 8
  %114 = ptrtoint ptr %cms_cpu.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %cms_cpu.i, align 4
  %cms_cpu_count.i = getelementptr inbounds %struct.mlxsw_sp_sb_vals, ptr %113, i32 0, i32 12
  %116 = ptrtoint ptr %cms_cpu_count.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %cms_cpu_count.i, align 4
  %call.i96 = tail call fastcc i32 @__mlxsw_sp_sb_cms_init(ptr noundef %mlxsw_sp, i16 noundef zeroext 0, i32 noundef 1, ptr noundef %115, i32 noundef %117) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i96)
  %tobool36.not = icmp eq i32 %call.i96, 0
  br i1 %tobool36.not, label %if.end38, label %if.end34.err_sb_prs_init_crit_edge

if.end34.err_sb_prs_init_crit_edge:               ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_sb_prs_init

if.end38:                                         ; preds = %if.end34
  %118 = ptrtoint ptr %sb_vals.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %sb_vals.i, align 4
  %pms_cpu.i = getelementptr inbounds %struct.mlxsw_sp_sb_vals, ptr %119, i32 0, i32 3
  %120 = ptrtoint ptr %pms_cpu.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %pms_cpu.i, align 4
  %call.i98 = tail call fastcc i32 @mlxsw_sp_sb_pms_init(ptr noundef %mlxsw_sp, i16 noundef zeroext 0, ptr noundef %121, i1 noundef zeroext true) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i98)
  %tobool40.not = icmp eq i32 %call.i98, 0
  br i1 %tobool40.not, label %if.end42, label %if.end38.err_sb_prs_init_crit_edge

if.end38.err_sb_prs_init_crit_edge:               ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_sb_prs_init

if.end42:                                         ; preds = %if.end38
  %call43 = tail call fastcc i32 @mlxsw_sp_sb_mms_init(ptr noundef %mlxsw_sp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.end46, label %if.end42.err_sb_prs_init_crit_edge

if.end42.err_sb_prs_init_crit_edge:               ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_sb_prs_init

if.end46:                                         ; preds = %if.end42
  call fastcc void @mlxsw_sp_pool_count(ptr noundef %mlxsw_sp, ptr noundef nonnull %ing_pool_count, ptr noundef nonnull %eg_pool_count)
  %122 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %core, align 4
  %call48 = tail call ptr @priv_to_devlink(ptr noundef %123) #11
  %124 = ptrtoint ptr %sb to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %sb, align 4
  %sb_size50 = getelementptr inbounds %struct.mlxsw_sp_sb, ptr %125, i32 0, i32 4
  %126 = ptrtoint ptr %sb_size50 to i32
  call void @__asan_load8_noabort(i32 %126)
  %127 = load i64, ptr %sb_size50, align 8
  %conv51 = trunc i64 %127 to i32
  %128 = ptrtoint ptr %ing_pool_count to i32
  call void @__asan_load2_noabort(i32 %128)
  %129 = load i16, ptr %ing_pool_count, align 2
  %130 = ptrtoint ptr %eg_pool_count to i32
  call void @__asan_load2_noabort(i32 %130)
  %131 = load i16, ptr %eg_pool_count, align 2
  %call52 = tail call i32 @devlink_sb_register(ptr noundef %call48, i32 noundef 0, i32 noundef %conv51, i16 noundef zeroext %129, i16 noundef zeroext %131, i16 noundef zeroext 8, i16 noundef zeroext 16) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.end46.cleanup_crit_edge, label %if.end46.err_sb_prs_init_crit_edge

if.end46.err_sb_prs_init_crit_edge:               ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_sb_prs_init

if.end46.cleanup_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

err_sb_prs_init:                                  ; preds = %if.end46.err_sb_prs_init_crit_edge, %if.end42.err_sb_prs_init_crit_edge, %if.end38.err_sb_prs_init_crit_edge, %if.end34.err_sb_prs_init_crit_edge, %mlxsw_sp_sb_prs_init.exit
  %err.0 = phi i32 [ %err.0.i, %mlxsw_sp_sb_prs_init.exit ], [ %call.i96, %if.end34.err_sb_prs_init_crit_edge ], [ %call.i98, %if.end38.err_sb_prs_init_crit_edge ], [ %call43, %if.end42.err_sb_prs_init_crit_edge ], [ %call52, %if.end46.err_sb_prs_init_crit_edge ]
  %132 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %core, align 4
  %call.i100 = tail call i32 @mlxsw_core_max_ports(ptr noundef %133) #11
  %i.09.i = add i32 %call.i100, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.09.i)
  %cmp10.i = icmp sgt i32 %i.09.i, -1
  br i1 %cmp10.i, label %err_sb_prs_init.for.body.i104_crit_edge, label %err_sb_prs_init.err_sb_ports_init.sink.split.sink.split_crit_edge

err_sb_prs_init.err_sb_ports_init.sink.split.sink.split_crit_edge: ; preds = %err_sb_prs_init
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_sb_ports_init.sink.split.sink.split

err_sb_prs_init.for.body.i104_crit_edge:          ; preds = %err_sb_prs_init
  br label %for.body.i104

for.body.i104:                                    ; preds = %for.body.i104.for.body.i104_crit_edge, %err_sb_prs_init.for.body.i104_crit_edge
  %i.011.i = phi i32 [ %i.0.i, %for.body.i104.for.body.i104_crit_edge ], [ %i.09.i, %err_sb_prs_init.for.body.i104_crit_edge ]
  %134 = ptrtoint ptr %sb to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %sb, align 4
  %ports.i102 = getelementptr inbounds %struct.mlxsw_sp_sb, ptr %135, i32 0, i32 1
  %136 = ptrtoint ptr %ports.i102 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %ports.i102, align 4
  %pms.i.i103 = getelementptr %struct.mlxsw_sp_sb_port, ptr %137, i32 %i.011.i, i32 2
  %138 = ptrtoint ptr %pms.i.i103 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %pms.i.i103, align 4
  tail call void @kfree(ptr noundef %139) #11
  %i.0.i = add nsw i32 %i.011.i, -1
  %cmp.i.not = icmp eq i32 %i.011.i, 0
  br i1 %cmp.i.not, label %for.body.i104.err_sb_ports_init.sink.split.sink.split_crit_edge, label %for.body.i104.for.body.i104_crit_edge

for.body.i104.for.body.i104_crit_edge:            ; preds = %for.body.i104
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i104

for.body.i104.err_sb_ports_init.sink.split.sink.split_crit_edge: ; preds = %for.body.i104
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_sb_ports_init.sink.split.sink.split

err_sb_ports_init.sink.split.sink.split:          ; preds = %for.body.i104.err_sb_ports_init.sink.split.sink.split_crit_edge, %err_sb_prs_init.err_sb_ports_init.sink.split.sink.split_crit_edge, %for.body18.i.err_sb_ports_init.sink.split.sink.split_crit_edge, %mlxsw_sp_sb_port_init.exit.i.err_sb_ports_init.sink.split.sink.split_crit_edge
  %err.1.ph.ph = phi i32 [ -12, %mlxsw_sp_sb_port_init.exit.i.err_sb_ports_init.sink.split.sink.split_crit_edge ], [ %err.0, %err_sb_prs_init.err_sb_ports_init.sink.split.sink.split_crit_edge ], [ %err.0, %for.body.i104.err_sb_ports_init.sink.split.sink.split_crit_edge ], [ -12, %for.body18.i.err_sb_ports_init.sink.split.sink.split_crit_edge ]
  %140 = ptrtoint ptr %sb to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %sb, align 4
  %142 = ptrtoint ptr %141 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %141, align 8
  tail call void @kfree(ptr noundef %143) #11
  br label %err_sb_ports_init.sink.split

err_sb_ports_init.sink.split:                     ; preds = %err_sb_ports_init.sink.split.sink.split, %if.end7.i.i80.i.err_sb_ports_init.sink.split_crit_edge, %if.end.i.err_sb_ports_init.sink.split_crit_edge
  %err.1.ph = phi i32 [ -12, %if.end7.i.i80.i.err_sb_ports_init.sink.split_crit_edge ], [ -12, %if.end.i.err_sb_ports_init.sink.split_crit_edge ], [ %err.1.ph.ph, %err_sb_ports_init.sink.split.sink.split ]
  %144 = ptrtoint ptr %sb to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %sb, align 4
  %ports28.i = getelementptr inbounds %struct.mlxsw_sp_sb, ptr %145, i32 0, i32 1
  %146 = ptrtoint ptr %ports28.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %ports28.i, align 4
  tail call void @kfree(ptr noundef %147) #11
  br label %err_sb_ports_init

err_sb_ports_init:                                ; preds = %err_sb_ports_init.sink.split, %kcalloc.exit.i.err_sb_ports_init_crit_edge
  %err.1 = phi i32 [ -12, %kcalloc.exit.i.err_sb_ports_init_crit_edge ], [ %err.1.ph, %err_sb_ports_init.sink.split ]
  %148 = ptrtoint ptr %sb to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %sb, align 4
  tail call void @kfree(ptr noundef %149) #11
  br label %cleanup

cleanup:                                          ; preds = %err_sb_ports_init, %if.end46.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %err_sb_ports_init ], [ -5, %entry.cleanup_crit_edge ], [ -5, %if.end.cleanup_crit_edge ], [ -5, %if.end4.cleanup_crit_edge ], [ -12, %if.end8.cleanup_crit_edge ], [ 0, %if.end46.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %eg_pool_count) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %ing_pool_count) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mlxsw_core_res_valid(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @mlxsw_core_res_get(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlxsw_sp_sb_mms_init(ptr nocapture noundef readonly %mlxsw_sp) unnamed_addr #3 align 64 {
entry:
  %sbmm_pl = alloca [40 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %sbmm_pl) #11
  %0 = call ptr @memset(ptr %sbmm_pl, i32 255, i32 40)
  %sb_vals = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 34
  %1 = ptrtoint ptr %sb_vals to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sb_vals, align 4
  %mms_count31 = getelementptr inbounds %struct.mlxsw_sp_sb_vals, ptr %2, i32 0, i32 9
  %3 = ptrtoint ptr %mms_count31 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mms_count31, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp32.not = icmp eq i32 %4, 0
  br i1 %cmp32.not, label %entry.cleanup9_crit_edge, label %for.body.lr.ph

entry.cleanup9_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup9

for.body.lr.ph:                                   ; preds = %entry
  %sb.i = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 8
  %core = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 1
  %arrayidx.i.i31.i = getelementptr inbounds i32, ptr %sbmm_pl, i32 6
  %arrayidx.i.i59.i = getelementptr inbounds i32, ptr %sbmm_pl, i32 7
  %arrayidx.i.i87.i = getelementptr inbounds i32, ptr %sbmm_pl, i32 9
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %i.033, 1
  %5 = ptrtoint ptr %sb_vals to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sb_vals, align 4
  %mms_count = getelementptr inbounds %struct.mlxsw_sp_sb_vals, ptr %6, i32 0, i32 9
  %7 = ptrtoint ptr %mms_count to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mms_count, align 4
  %cmp = icmp ult i32 %inc, %8
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.cleanup9_crit_edge

for.cond.cleanup9_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup9

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %9 = phi ptr [ %2, %for.body.lr.ph ], [ %6, %for.cond.for.body_crit_edge ]
  %i.033 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %mms = getelementptr inbounds %struct.mlxsw_sp_sb_vals, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %mms to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mms, align 4
  %arrayidx = getelementptr %struct.mlxsw_sp_sb_mm, ptr %11, i32 %i.033
  %pool_dess = getelementptr inbounds %struct.mlxsw_sp_sb_vals, ptr %9, i32 0, i32 1
  %12 = ptrtoint ptr %pool_dess to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pool_dess, align 4
  %pool_index = getelementptr %struct.mlxsw_sp_sb_mm, ptr %11, i32 %i.033, i32 2
  %14 = ptrtoint ptr %pool_index to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %pool_index, align 4
  %idxprom = zext i16 %15 to i32
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx, align 4
  %18 = ptrtoint ptr %sb.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sb.i, align 4
  %cell_size.i = getelementptr inbounds %struct.mlxsw_sp_sb, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %cell_size.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cell_size.i, align 8
  %add.i = add i32 %17, -1
  %sub.i = add i32 %add.i, %21
  %div.i = udiv i32 %sub.i, %21
  %max_buff = getelementptr %struct.mlxsw_sp_sb_mm, ptr %11, i32 %i.033, i32 1
  %22 = ptrtoint ptr %max_buff to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %max_buff, align 4
  %pool = getelementptr %struct.mlxsw_sp_sb_pool_des, ptr %13, i32 %idxprom, i32 1
  %24 = ptrtoint ptr %pool to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %pool, align 4
  %26 = call ptr @memset(ptr %sbmm_pl, i32 0, i32 40)
  %conv1.i = shl i32 %i.033, 8
  %and6.i.i.i = and i32 %conv1.i, 3840
  %27 = ptrtoint ptr %sbmm_pl to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %sbmm_pl, align 4
  %and7.i.i.i = and i32 %28, -3841
  %or.i.i.i = or i32 %and6.i.i.i, %and7.i.i.i
  store i32 %or.i.i.i, ptr %sbmm_pl, align 4
  %and6.i.i30.i = and i32 %div.i, 16777215
  %29 = ptrtoint ptr %arrayidx.i.i31.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx.i.i31.i, align 4
  %and7.i.i33.i = and i32 %30, -16777216
  %or.i.i34.i = or i32 %and6.i.i30.i, %and7.i.i33.i
  store i32 %or.i.i34.i, ptr %arrayidx.i.i31.i, align 4
  %and6.i.i58.i = and i32 %23, 16777215
  %31 = ptrtoint ptr %arrayidx.i.i59.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx.i.i59.i, align 4
  %and7.i.i61.i = and i32 %32, -16777216
  %or.i.i62.i = or i32 %and6.i.i58.i, %and7.i.i61.i
  store i32 %or.i.i62.i, ptr %arrayidx.i.i59.i, align 4
  %33 = and i8 %25, 15
  %and6.i.i86.i = zext i8 %33 to i32
  %34 = ptrtoint ptr %arrayidx.i.i87.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx.i.i87.i, align 4
  %and7.i.i89.i = and i32 %35, -16
  %or.i.i90.i = or i32 %and7.i.i89.i, %and6.i.i86.i
  store i32 %or.i.i90.i, ptr %arrayidx.i.i87.i, align 4
  %36 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %core, align 4
  %call6 = call i32 @mlxsw_reg_write(ptr noundef %37, ptr noundef nonnull @mlxsw_reg_sbmm, ptr noundef nonnull %sbmm_pl) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %for.cond, label %for.body.cleanup9_crit_edge

for.body.cleanup9_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup9

cleanup9:                                         ; preds = %for.body.cleanup9_crit_edge, %for.cond.cleanup9_crit_edge, %entry.cleanup9_crit_edge
  %retval.2 = phi i32 [ 0, %entry.cleanup9_crit_edge ], [ 0, %for.cond.cleanup9_crit_edge ], [ %call6, %for.body.cleanup9_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %sbmm_pl) #11
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlxsw_sp_pool_count(ptr nocapture noundef readonly %mlxsw_sp, ptr nocapture noundef %p_ingress_len, ptr nocapture noundef %p_egress_len) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sb_vals = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 34
  %0 = ptrtoint ptr %sb_vals to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sb_vals, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp32.not = icmp eq i32 %3, 0
  br i1 %cmp32.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %4 = phi ptr [ %12, %for.body.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %i.033 = phi i32 [ %inc4, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %pool_dess = getelementptr inbounds %struct.mlxsw_sp_sb_vals, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %pool_dess to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pool_dess, align 4
  %arrayidx = getelementptr %struct.mlxsw_sp_sb_pool_des, ptr %6, i32 %i.033
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp2 = icmp eq i32 %8, 0
  %p_ingress_len.p_egress_len = select i1 %cmp2, ptr %p_ingress_len, ptr %p_egress_len
  %9 = ptrtoint ptr %p_ingress_len.p_egress_len to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %p_ingress_len.p_egress_len, align 2
  %inc = add i16 %10, 1
  store i16 %inc, ptr %p_ingress_len.p_egress_len, align 2
  %inc4 = add nuw i32 %i.033, 1
  %11 = ptrtoint ptr %sb_vals to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sb_vals, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  %cmp = icmp ult i32 %inc4, %14
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %15 = ptrtoint ptr %p_egress_len to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %p_egress_len, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %cmp5 = icmp eq i16 %16, 0
  br i1 %cmp5, label %do.end, label %for.end.if.end20_crit_edge, !prof !258

for.end.if.end20_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

do.end:                                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.49, i32 noundef 1146, i32 noundef 9, ptr noundef nonnull @.str.59) #11
  br label %if.end20

if.end20:                                         ; preds = %do.end, %for.end.if.end20_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devlink_sb_register(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @priv_to_devlink(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlxsw_sp_buffers_fini(ptr nocapture noundef readonly %mlxsw_sp) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %core = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 1
  %0 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %core, align 4
  %call = tail call ptr @priv_to_devlink(ptr noundef %1) #11
  tail call void @devlink_sb_unregister(ptr noundef %call, i32 noundef 0) #11
  %2 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %core, align 4
  %call.i = tail call i32 @mlxsw_core_max_ports(ptr noundef %3) #11
  %i.09.i = add i32 %call.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.09.i)
  %cmp10.i = icmp sgt i32 %i.09.i, -1
  br i1 %cmp10.i, label %for.body.lr.ph.i, label %entry.mlxsw_sp_sb_ports_fini.exit_crit_edge

entry.mlxsw_sp_sb_ports_fini.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlxsw_sp_sb_ports_fini.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %sb.i = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 8
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.011.i = phi i32 [ %i.09.i, %for.body.lr.ph.i ], [ %i.0.i, %for.body.i.for.body.i_crit_edge ]
  %4 = ptrtoint ptr %sb.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sb.i, align 4
  %ports.i = getelementptr inbounds %struct.mlxsw_sp_sb, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ports.i, align 4
  %pms.i.i = getelementptr %struct.mlxsw_sp_sb_port, ptr %7, i32 %i.011.i, i32 2
  %8 = ptrtoint ptr %pms.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pms.i.i, align 4
  tail call void @kfree(ptr noundef %9) #11
  %i.0.i = add nsw i32 %i.011.i, -1
  %cmp.i.not = icmp eq i32 %i.011.i, 0
  br i1 %cmp.i.not, label %for.body.i.mlxsw_sp_sb_ports_fini.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.body.i.mlxsw_sp_sb_ports_fini.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlxsw_sp_sb_ports_fini.exit

mlxsw_sp_sb_ports_fini.exit:                      ; preds = %for.body.i.mlxsw_sp_sb_ports_fini.exit_crit_edge, %entry.mlxsw_sp_sb_ports_fini.exit_crit_edge
  %sb1.i = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 8
  %10 = ptrtoint ptr %sb1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sb1.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 8
  tail call void @kfree(ptr noundef %13) #11
  %14 = ptrtoint ptr %sb1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sb1.i, align 4
  %ports3.i = getelementptr inbounds %struct.mlxsw_sp_sb, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %ports3.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ports3.i, align 4
  tail call void @kfree(ptr noundef %17) #11
  %18 = ptrtoint ptr %sb1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sb1.i, align 4
  tail call void @kfree(ptr noundef %19) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devlink_sb_unregister(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlxsw_sp_port_buffers_init(ptr nocapture noundef %mlxsw_sp_port) local_unnamed_addr #3 align 64 {
entry:
  %hdroom.i = alloca %struct.mlxsw_sp_hdroom, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 216) #14
  %hdroom = getelementptr inbounds %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 20
  %1 = ptrtoint ptr %hdroom to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %hdroom, align 8
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %mlxsw_sp_port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mlxsw_sp_port, align 8
  %mtu = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 20
  %4 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mtu, align 4
  %mtu3 = getelementptr inbounds %struct.mlxsw_sp_hdroom, ptr %call7.i.i, i32 0, i32 5
  %6 = ptrtoint ptr %mtu3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %mtu3, align 4
  %mlxsw_sp1.i = getelementptr inbounds %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 2
  %7 = ptrtoint ptr %mlxsw_sp1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mlxsw_sp1.i, align 8
  call void @llvm.lifetime.start.p0(i64 216, ptr nonnull %hdroom.i) #11
  %9 = getelementptr inbounds i8, ptr %hdroom.i, i32 4
  %10 = call ptr @memset(ptr %9, i32 0, i32 208)
  %11 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mtu, align 4
  %mtu2.i = getelementptr inbounds %struct.mlxsw_sp_hdroom, ptr %hdroom.i, i32 0, i32 5
  %13 = ptrtoint ptr %mtu2.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %mtu2.i, align 4
  %14 = ptrtoint ptr %hdroom.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %hdroom.i, align 4
  %lossy.i = getelementptr inbounds %struct.mlxsw_sp_hdroom, ptr %hdroom.i, i32 0, i32 1, i32 0, i32 0, i32 3
  %15 = ptrtoint ptr %lossy.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %lossy.i, align 1
  %lossy.1.i = getelementptr inbounds %struct.mlxsw_sp_hdroom, ptr %hdroom.i, i32 0, i32 1, i32 0, i32 1, i32 3
  %16 = ptrtoint ptr %lossy.1.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %lossy.1.i, align 1
  %lossy.2.i = getelementptr inbounds %struct.mlxsw_sp_hdroom, ptr %hdroom.i, i32 0, i32 1, i32 0, i32 2, i32 3
  %17 = ptrtoint ptr %lossy.2.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %lossy.2.i, align 1
  %lossy.3.i = getelementptr inbounds %struct.mlxsw_sp_hdroom, ptr %hdroom.i, i32 0, i32 1, i32 0, i32 3, i32 3
  %18 = ptrtoint ptr %lossy.3.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %lossy.3.i, align 1
  %lossy.4.i = getelementptr inbounds %struct.mlxsw_sp_hdroom, ptr %hdroom.i, i32 0, i32 1, i32 0, i32 4, i32 3
  %19 = ptrtoint ptr %lossy.4.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %lossy.4.i, align 1
  %lossy.5.i = getelementptr inbounds %struct.mlxsw_sp_hdroom, ptr %hdroom.i, i32 0, i32 1, i32 0, i32 5, i32 3
  %20 = ptrtoint ptr %lossy.5.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %lossy.5.i, align 1
  %lossy.6.i = getelementptr inbounds %struct.mlxsw_sp_hdroom, ptr %hdroom.i, i32 0, i32 1, i32 0, i32 6, i32 3
  %21 = ptrtoint ptr %lossy.6.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %lossy.6.i, align 1
  %lossy.7.i = getelementptr inbounds %struct.mlxsw_sp_hdroom, ptr %hdroom.i, i32 0, i32 1, i32 0, i32 7, i32 3
  %22 = ptrtoint ptr %lossy.7.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %lossy.7.i, align 1
  call void @mlxsw_sp_hdroom_bufs_reset_lossiness(ptr noundef nonnull %hdroom.i) #11
  call void @mlxsw_sp_hdroom_bufs_reset_sizes(ptr noundef %mlxsw_sp_port, ptr noundef nonnull %hdroom.i) #11
  %max_mtu.i = getelementptr inbounds %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 18
  %23 = ptrtoint ptr %max_mtu.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %max_mtu.i, align 8
  %width.i.i = getelementptr inbounds %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 9, i32 1
  %25 = ptrtoint ptr %width.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %width.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %26)
  %cmp.i.i = icmp eq i8 %26, 8
  %mul.i.i = zext i1 %cmp.i.i to i32
  %cond.i.i = shl i32 %24, %mul.i.i
  %sb.i.i = getelementptr inbounds %struct.mlxsw_sp, ptr %8, i32 0, i32 8
  %27 = ptrtoint ptr %sb.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sb.i.i, align 4
  %cell_size.i.i = getelementptr inbounds %struct.mlxsw_sp_sb, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %cell_size.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %cell_size.i.i, align 8
  %add.i.i = add i32 %30, -1
  %sub.i.i = add i32 %add.i.i, %cond.i.i
  %div.i.i = udiv i32 %sub.i.i, %30
  %size_cells.i = getelementptr inbounds %struct.mlxsw_sp_hdroom, ptr %hdroom.i, i32 0, i32 2, i32 0, i32 9, i32 1
  %31 = ptrtoint ptr %size_cells.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %div.i.i, ptr %size_cells.i, align 4
  %call6.i = call fastcc i32 @__mlxsw_sp_hdroom_configure(ptr noundef %mlxsw_sp_port, ptr noundef nonnull %hdroom.i, i1 noundef zeroext true) #11
  call void @llvm.lifetime.end.p0(i64 216, ptr nonnull %hdroom.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool5.not = icmp eq i32 %call6.i, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.err_headroom_init_crit_edge

if.end.err_headroom_init_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_headroom_init

if.end7:                                          ; preds = %if.end
  %32 = ptrtoint ptr %mlxsw_sp1.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mlxsw_sp1.i, align 8
  %local_port.i = getelementptr inbounds %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 3
  %34 = ptrtoint ptr %local_port.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %local_port.i, align 4
  %sb_vals.i = getelementptr inbounds %struct.mlxsw_sp, ptr %33, i32 0, i32 34
  %36 = ptrtoint ptr %sb_vals.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %sb_vals.i, align 4
  %cms_ingress.i = getelementptr inbounds %struct.mlxsw_sp_sb_vals, ptr %37, i32 0, i32 6
  %38 = ptrtoint ptr %cms_ingress.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %cms_ingress.i, align 4
  %cms_ingress_count.i = getelementptr inbounds %struct.mlxsw_sp_sb_vals, ptr %37, i32 0, i32 10
  %40 = ptrtoint ptr %cms_ingress_count.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %cms_ingress_count.i, align 4
  %call.i = tail call fastcc i32 @__mlxsw_sp_sb_cms_init(ptr noundef %33, i16 noundef zeroext %35, i32 noundef 0, ptr noundef %39, i32 noundef %41) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %mlxsw_sp_port_sb_cms_init.exit, label %if.end7.err_headroom_init_crit_edge

if.end7.err_headroom_init_crit_edge:              ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_headroom_init

mlxsw_sp_port_sb_cms_init.exit:                   ; preds = %if.end7
  %42 = ptrtoint ptr %mlxsw_sp1.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %mlxsw_sp1.i, align 8
  %44 = ptrtoint ptr %local_port.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %local_port.i, align 4
  %46 = ptrtoint ptr %sb_vals.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %sb_vals.i, align 4
  %cms_egress.i = getelementptr inbounds %struct.mlxsw_sp_sb_vals, ptr %47, i32 0, i32 7
  %48 = ptrtoint ptr %cms_egress.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %cms_egress.i, align 4
  %cms_egress_count.i = getelementptr inbounds %struct.mlxsw_sp_sb_vals, ptr %47, i32 0, i32 11
  %50 = ptrtoint ptr %cms_egress_count.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %cms_egress_count.i, align 4
  %call7.i = tail call fastcc i32 @__mlxsw_sp_sb_cms_init(ptr noundef %43, i16 noundef zeroext %45, i32 noundef 1, ptr noundef %49, i32 noundef %51) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool9.not = icmp eq i32 %call7.i, 0
  br i1 %tobool9.not, label %if.end11, label %mlxsw_sp_port_sb_cms_init.exit.err_headroom_init_crit_edge

mlxsw_sp_port_sb_cms_init.exit.err_headroom_init_crit_edge: ; preds = %mlxsw_sp_port_sb_cms_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_headroom_init

if.end11:                                         ; preds = %mlxsw_sp_port_sb_cms_init.exit
  %52 = ptrtoint ptr %mlxsw_sp1.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %mlxsw_sp1.i, align 8
  %54 = ptrtoint ptr %local_port.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %local_port.i, align 4
  %sb_vals.i30 = getelementptr inbounds %struct.mlxsw_sp, ptr %53, i32 0, i32 34
  %56 = ptrtoint ptr %sb_vals.i30 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %sb_vals.i30, align 4
  %pms.i = getelementptr inbounds %struct.mlxsw_sp_sb_vals, ptr %57, i32 0, i32 2
  %58 = ptrtoint ptr %pms.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %pms.i, align 4
  %call.i31 = tail call fastcc i32 @mlxsw_sp_sb_pms_init(ptr noundef %53, i16 noundef zeroext %55, ptr noundef %59, i1 noundef zeroext false) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i31)
  %tobool13.not = icmp eq i32 %call.i31, 0
  br i1 %tobool13.not, label %if.end11.cleanup_crit_edge, label %if.end11.err_headroom_init_crit_edge

if.end11.err_headroom_init_crit_edge:             ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_headroom_init

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

err_headroom_init:                                ; preds = %if.end11.err_headroom_init_crit_edge, %mlxsw_sp_port_sb_cms_init.exit.err_headroom_init_crit_edge, %if.end7.err_headroom_init_crit_edge, %if.end.err_headroom_init_crit_edge
  %err.0 = phi i32 [ %call6.i, %if.end.err_headroom_init_crit_edge ], [ %call7.i, %mlxsw_sp_port_sb_cms_init.exit.err_headroom_init_crit_edge ], [ %call.i31, %if.end11.err_headroom_init_crit_edge ], [ %call.i, %if.end7.err_headroom_init_crit_edge ]
  %60 = ptrtoint ptr %hdroom to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %hdroom, align 8
  tail call void @kfree(ptr noundef %61) #11
  br label %cleanup

cleanup:                                          ; preds = %err_headroom_init, %if.end11.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %err_headroom_init ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end11.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlxsw_sp_port_buffers_fini(ptr nocapture noundef readonly %mlxsw_sp_port) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %hdroom = getelementptr inbounds %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 20
  %0 = ptrtoint ptr %hdroom to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdroom, align 8
  tail call void @kfree(ptr noundef %1) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlxsw_sp_sb_pool_get(ptr noundef %mlxsw_core, i32 noundef %sb_index, i16 noundef zeroext %pool_index, ptr nocapture noundef writeonly %pool_info) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @mlxsw_core_driver_priv(ptr noundef %mlxsw_core) #11
  %sb_vals = getelementptr inbounds %struct.mlxsw_sp, ptr %call, i32 0, i32 34
  %0 = ptrtoint ptr %sb_vals to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sb_vals, align 4
  %pool_dess = getelementptr inbounds %struct.mlxsw_sp_sb_vals, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pool_dess to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pool_dess, align 4
  %idxprom = zext i16 %pool_index to i32
  %arrayidx = getelementptr %struct.mlxsw_sp_sb_pool_des, ptr %3, i32 %idxprom
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %sb.i = getelementptr inbounds %struct.mlxsw_sp, ptr %call, i32 0, i32 8
  %6 = ptrtoint ptr %sb.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sb.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 8
  %arrayidx.i = getelementptr %struct.mlxsw_sp_sb_pr, ptr %9, i32 %idxprom
  %10 = ptrtoint ptr %pool_info to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %5, ptr %pool_info, align 4
  %size = getelementptr %struct.mlxsw_sp_sb_pr, ptr %9, i32 %idxprom, i32 1
  %11 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %size, align 4
  %13 = load ptr, ptr %sb.i, align 4
  %cell_size.i = getelementptr inbounds %struct.mlxsw_sp_sb, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %cell_size.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cell_size.i, align 8
  %mul.i = mul i32 %15, %12
  %size4 = getelementptr inbounds %struct.devlink_sb_pool_info, ptr %pool_info, i32 0, i32 1
  %16 = ptrtoint ptr %size4 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %mul.i, ptr %size4, align 4
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.i, align 4
  %threshold_type = getelementptr inbounds %struct.devlink_sb_pool_info, ptr %pool_info, i32 0, i32 2
  %19 = ptrtoint ptr %threshold_type to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %threshold_type, align 4
  %20 = load ptr, ptr %sb.i, align 4
  %cell_size = getelementptr inbounds %struct.mlxsw_sp_sb, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %cell_size to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cell_size, align 8
  %cell_size5 = getelementptr inbounds %struct.devlink_sb_pool_info, ptr %pool_info, i32 0, i32 3
  %23 = ptrtoint ptr %cell_size5 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %cell_size5, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlxsw_core_driver_priv(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlxsw_sp_sb_pool_set(ptr noundef %mlxsw_core, i32 noundef %sb_index, i16 noundef zeroext %pool_index, i32 noundef %size, i32 noundef %threshold_type, ptr noundef writeonly %extack) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @mlxsw_core_driver_priv(ptr noundef %mlxsw_core) #11
  %sb.i = getelementptr inbounds %struct.mlxsw_sp, ptr %call, i32 0, i32 8
  %0 = ptrtoint ptr %sb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sb.i, align 4
  %cell_size.i = getelementptr inbounds %struct.mlxsw_sp_sb, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %cell_size.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cell_size.i, align 8
  %add.i = add i32 %size, -1
  %sub.i = add i32 %add.i, %3
  %div.i = udiv i32 %sub.i, %3
  %sb_vals = getelementptr inbounds %struct.mlxsw_sp, ptr %call, i32 0, i32 34
  %4 = ptrtoint ptr %sb_vals to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sb_vals, align 4
  %prs = getelementptr inbounds %struct.mlxsw_sp_sb_vals, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %prs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prs, align 4
  %idxprom = zext i16 %pool_index to i32
  %arrayidx = getelementptr %struct.mlxsw_sp_sb_pr, ptr %7, i32 %idxprom
  %conv = zext i32 %size to i64
  %core = getelementptr inbounds %struct.mlxsw_sp, ptr %call, i32 0, i32 1
  %8 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %core, align 4
  %call2 = tail call i64 @mlxsw_core_res_get(ptr noundef %9, i32 noundef 17) #11
  call void @__sanitizer_cov_trace_cmp8(i64 %call2, i64 %conv)
  %cmp = icmp ult i64 %call2, %conv
  br i1 %cmp, label %do.body, label %if.end5

do.body:                                          ; preds = %entry
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @mlxsw_sp_sb_pool_set.__msg) #11
  %tobool.not = icmp eq ptr %extack, null
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %if.then4

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @mlxsw_sp_sb_pool_set.__msg, ptr %extack, align 4
  br label %cleanup

if.end5:                                          ; preds = %entry
  %freeze_mode = getelementptr %struct.mlxsw_sp_sb_pr, ptr %7, i32 %idxprom, i32 2
  %11 = ptrtoint ptr %freeze_mode to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load = load i8, ptr %freeze_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool7.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool7.not, label %if.end5.if.end20_crit_edge, label %land.lhs.true

if.end5.if.end20_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

land.lhs.true:                                    ; preds = %if.end5
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %threshold_type)
  %cmp9.not = icmp eq i32 %13, %threshold_type
  br i1 %cmp9.not, label %land.lhs.true.if.end20_crit_edge, label %do.body12

land.lhs.true.if.end20_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

do.body12:                                        ; preds = %land.lhs.true
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @mlxsw_sp_sb_pool_set.__msg.1) #11
  %tobool14.not = icmp eq ptr %extack, null
  br i1 %tobool14.not, label %do.body12.cleanup_crit_edge, label %if.then15

do.body12.cleanup_crit_edge:                      ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then15:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #13
  %14 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @mlxsw_sp_sb_pool_set.__msg.1, ptr %extack, align 4
  br label %cleanup

if.end20:                                         ; preds = %land.lhs.true.if.end20_crit_edge, %if.end5.if.end20_crit_edge
  %15 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool24.not = icmp eq i8 %15, 0
  br i1 %tobool24.not, label %if.end20.if.end38_crit_edge, label %land.lhs.true25

if.end20.if.end38_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end38

land.lhs.true25:                                  ; preds = %if.end20
  %size26 = getelementptr %struct.mlxsw_sp_sb_pr, ptr %7, i32 %idxprom, i32 1
  %16 = ptrtoint ptr %size26 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %size26, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %size)
  %cmp27.not = icmp eq i32 %17, %size
  br i1 %cmp27.not, label %land.lhs.true25.if.end38_crit_edge, label %do.body30

land.lhs.true25.if.end38_crit_edge:               ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end38

do.body30:                                        ; preds = %land.lhs.true25
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @mlxsw_sp_sb_pool_set.__msg.2) #11
  %tobool32.not = icmp eq ptr %extack, null
  br i1 %tobool32.not, label %do.body30.cleanup_crit_edge, label %if.then33

do.body30.cleanup_crit_edge:                      ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then33:                                        ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #13
  %18 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @mlxsw_sp_sb_pool_set.__msg.2, ptr %extack, align 4
  br label %cleanup

if.end38:                                         ; preds = %land.lhs.true25.if.end38_crit_edge, %if.end20.if.end38_crit_edge
  %call39 = tail call fastcc i32 @mlxsw_sp_sb_pr_write(ptr noundef %call, i16 noundef zeroext %pool_index, i32 noundef %threshold_type, i32 noundef %div.i, i1 noundef zeroext false)
  br label %cleanup

cleanup:                                          ; preds = %if.end38, %if.then33, %do.body30.cleanup_crit_edge, %if.then15, %do.body12.cleanup_crit_edge, %if.then4, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %call39, %if.end38 ], [ -22, %if.then4 ], [ -22, %do.body.cleanup_crit_edge ], [ -22, %if.then15 ], [ -22, %do.body12.cleanup_crit_edge ], [ -22, %if.then33 ], [ -22, %do.body30.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlxsw_sp_sb_pr_write(ptr nocapture noundef readonly %mlxsw_sp, i16 noundef zeroext %pool_index, i32 noundef %mode, i32 noundef %size, i1 noundef zeroext %infi_size) unnamed_addr #3 align 64 {
entry:
  %sbpr_pl = alloca [20 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sb_vals = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 34
  %0 = ptrtoint ptr %sb_vals to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sb_vals, align 4
  %pool_dess = getelementptr inbounds %struct.mlxsw_sp_sb_vals, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pool_dess to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pool_dess, align 4
  %idxprom = zext i16 %pool_index to i32
  %arrayidx = getelementptr %struct.mlxsw_sp_sb_pool_des, ptr %3, i32 %idxprom
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sbpr_pl) #11
  %pool = getelementptr %struct.mlxsw_sp_sb_pool_des, ptr %3, i32 %idxprom, i32 1
  %4 = call ptr @memset(ptr %sbpr_pl, i32 255, i32 20)
  %5 = ptrtoint ptr %pool to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %pool, align 4
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  %9 = call ptr @memset(ptr %sbpr_pl, i32 0, i32 20)
  %10 = and i8 %6, 15
  %and6.i.i.i = zext i8 %10 to i32
  %11 = ptrtoint ptr %sbpr_pl to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sbpr_pl, align 4
  %and7.i.i.i = and i32 %12, -50331664
  %or.i.i.i = or i32 %and7.i.i.i, %and6.i.i.i
  %spec.select.i.i26.i = shl i32 %8, 24
  %and6.i.i31.i = and i32 %spec.select.i.i26.i, 50331648
  %or.i.i35.i = or i32 %and6.i.i31.i, %or.i.i.i
  store i32 %or.i.i35.i, ptr %sbpr_pl, align 4
  %and6.i.i59.i = and i32 %mode, 15
  %arrayidx.i.i60.i = getelementptr inbounds i32, ptr %sbpr_pl, i32 2
  %13 = ptrtoint ptr %arrayidx.i.i60.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i.i60.i, align 4
  %and7.i.i62.i = and i32 %14, -16
  %or.i.i63.i = or i32 %and6.i.i59.i, %and7.i.i62.i
  store i32 %or.i.i63.i, ptr %arrayidx.i.i60.i, align 4
  %and6.i.i87.i = and i32 %size, 16777215
  %arrayidx.i.i88.i = getelementptr inbounds i32, ptr %sbpr_pl, i32 1
  %15 = ptrtoint ptr %arrayidx.i.i88.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.i.i88.i, align 4
  %and7.i.i90.i = and i32 %16, 2130706432
  %or.i.i91.i = or i32 %and6.i.i87.i, %and7.i.i90.i
  %spec.select.i.i110.i = select i1 %infi_size, i32 -2147483648, i32 0
  %arrayidx.i.i116.i = getelementptr inbounds i32, ptr %sbpr_pl, i32 1
  %or.i.i119.i = or i32 %spec.select.i.i110.i, %or.i.i91.i
  %17 = ptrtoint ptr %arrayidx.i.i116.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %or.i.i119.i, ptr %arrayidx.i.i116.i, align 4
  %core = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 1
  %18 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %core, align 4
  %call = call i32 @mlxsw_reg_write(ptr noundef %19, ptr noundef nonnull @mlxsw_reg_sbpr, ptr noundef nonnull %sbpr_pl) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  br i1 %infi_size, label %if.then4, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %sb = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 8
  %20 = ptrtoint ptr %sb to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sb, align 4
  %sb_size = getelementptr inbounds %struct.mlxsw_sp_sb, ptr %21, i32 0, i32 4
  %22 = ptrtoint ptr %sb_size to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %sb_size, align 8
  %conv = trunc i64 %23 to i32
  %cell_size.i = getelementptr inbounds %struct.mlxsw_sp_sb, ptr %21, i32 0, i32 2
  %24 = ptrtoint ptr %cell_size.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cell_size.i, align 8
  %add.i = add i32 %conv, -1
  %sub.i = add i32 %add.i, %25
  %div.i = udiv i32 %sub.i, %25
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end.if.end6_crit_edge
  %size.addr.0 = phi i32 [ %div.i, %if.then4 ], [ %size, %if.end.if.end6_crit_edge ]
  %sb.i24 = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 8
  %26 = ptrtoint ptr %sb.i24 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %sb.i24, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 8
  %arrayidx.i = getelementptr %struct.mlxsw_sp_sb_pr, ptr %29, i32 %idxprom
  %30 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %mode, ptr %arrayidx.i, align 4
  %size9 = getelementptr %struct.mlxsw_sp_sb_pr, ptr %29, i32 %idxprom, i32 1
  %31 = ptrtoint ptr %size9 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %size.addr.0, ptr %size9, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sbpr_pl) #11
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlxsw_sp_sb_port_pool_get(ptr noundef %mlxsw_core_port, i32 noundef %sb_index, i16 noundef zeroext %pool_index, ptr nocapture noundef writeonly %p_threshold) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @mlxsw_core_port_driver_priv(ptr noundef %mlxsw_core_port) #11
  %mlxsw_sp1 = getelementptr inbounds %struct.mlxsw_sp_port, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %mlxsw_sp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mlxsw_sp1, align 8
  %local_port2 = getelementptr inbounds %struct.mlxsw_sp_port, ptr %call, i32 0, i32 3
  %2 = ptrtoint ptr %local_port2 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %local_port2, align 4
  %sb.i = getelementptr inbounds %struct.mlxsw_sp, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %sb.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sb.i, align 4
  %ports.i = getelementptr inbounds %struct.mlxsw_sp_sb, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ports.i, align 4
  %idxprom.i = zext i16 %3 to i32
  %pms.i = getelementptr %struct.mlxsw_sp_sb_port, ptr %7, i32 %idxprom.i, i32 2
  %8 = ptrtoint ptr %pms.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pms.i, align 4
  %idxprom1.i = zext i16 %pool_index to i32
  %max_buff = getelementptr %struct.mlxsw_sp_sb_pm, ptr %9, i32 %idxprom1.i, i32 1
  %10 = ptrtoint ptr %max_buff to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %max_buff, align 4
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %5, align 8
  %arrayidx.i.i = getelementptr %struct.mlxsw_sp_sb_pr, ptr %13, i32 %idxprom1.i
  %14 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp.i = icmp eq i32 %15, 1
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i = add i32 %11, 2
  br label %mlxsw_sp_sb_threshold_out.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %cell_size.i.i = getelementptr inbounds %struct.mlxsw_sp_sb, ptr %5, i32 0, i32 2
  %16 = ptrtoint ptr %cell_size.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cell_size.i.i, align 8
  %mul.i.i = mul i32 %17, %11
  br label %mlxsw_sp_sb_threshold_out.exit

mlxsw_sp_sb_threshold_out.exit:                   ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %sub.i, %if.then.i ], [ %mul.i.i, %if.end.i ]
  %18 = ptrtoint ptr %p_threshold to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %retval.0.i, ptr %p_threshold, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlxsw_core_port_driver_priv(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlxsw_sp_sb_port_pool_set(ptr noundef %mlxsw_core_port, i32 noundef %sb_index, i16 noundef zeroext %pool_index, i32 noundef %threshold, ptr noundef writeonly %extack) local_unnamed_addr #3 align 64 {
entry:
  %sbpm_pl.i = alloca [40 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @mlxsw_core_port_driver_priv(ptr noundef %mlxsw_core_port) #11
  %mlxsw_sp1 = getelementptr inbounds %struct.mlxsw_sp_port, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %mlxsw_sp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mlxsw_sp1, align 8
  %local_port2 = getelementptr inbounds %struct.mlxsw_sp_port, ptr %call, i32 0, i32 3
  %2 = ptrtoint ptr %local_port2 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %local_port2, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp = icmp eq i16 %3, 0
  br i1 %cmp, label %do.body, label %if.end5

do.body:                                          ; preds = %entry
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @mlxsw_sp_sb_port_pool_set.__msg) #11
  %tobool.not = icmp eq ptr %extack, null
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %if.then4

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @mlxsw_sp_sb_port_pool_set.__msg, ptr %extack, align 4
  br label %cleanup

if.end5:                                          ; preds = %entry
  %sb.i.i = getelementptr inbounds %struct.mlxsw_sp, ptr %1, i32 0, i32 8
  %5 = ptrtoint ptr %sb.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sb.i.i, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 8
  %idxprom.i.i = zext i16 %pool_index to i32
  %arrayidx.i.i = getelementptr %struct.mlxsw_sp_sb_pr, ptr %8, i32 %idxprom.i.i
  %9 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp.i = icmp eq i32 %10, 1
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end5
  %11 = add i32 %threshold, -17
  call void @__sanitizer_cov_trace_const_cmp4(i32 -14, i32 %11)
  %12 = icmp ult i32 %11, -14
  br i1 %12, label %do.body.i, label %if.end5.i

do.body.i:                                        ; preds = %if.then.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @mlxsw_sp_sb_threshold_in.__msg) #11
  %tobool.not.i = icmp eq ptr %extack, null
  br i1 %tobool.not.i, label %do.body.i.cleanup_crit_edge, label %if.then4.i

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then4.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %13 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @mlxsw_sp_sb_threshold_in.__msg, ptr %extack, align 4
  br label %cleanup

if.end5.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.i = add nsw i32 %threshold, -2
  br label %if.end9

if.else.i:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  %cell_size.i.i = getelementptr inbounds %struct.mlxsw_sp_sb, ptr %6, i32 0, i32 2
  %14 = ptrtoint ptr %cell_size.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cell_size.i.i, align 8
  %add.i.i = add i32 %threshold, -1
  %sub.i.i = add i32 %add.i.i, %15
  %div.i.i = udiv i32 %sub.i.i, %15
  br label %if.end9

if.end9:                                          ; preds = %if.else.i, %if.end5.i
  %max_buff.0.ph = phi i32 [ %div.i.i, %if.else.i ], [ %add.i, %if.end5.i ]
  %sb_vals.i = getelementptr inbounds %struct.mlxsw_sp, ptr %1, i32 0, i32 34
  %16 = ptrtoint ptr %sb_vals.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sb_vals.i, align 4
  %pool_dess.i = getelementptr inbounds %struct.mlxsw_sp_sb_vals, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %pool_dess.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pool_dess.i, align 4
  %arrayidx.i = getelementptr %struct.mlxsw_sp_sb_pool_des, ptr %19, i32 %idxprom.i.i
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %sbpm_pl.i) #11
  %20 = call ptr @memset(ptr %sbpm_pl.i, i32 255, i32 40)
  %pool.i = getelementptr %struct.mlxsw_sp_sb_pool_des, ptr %19, i32 %idxprom.i.i, i32 1
  %21 = ptrtoint ptr %pool.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %pool.i, align 4
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.i, align 4
  call fastcc void @mlxsw_reg_sbpm_pack(ptr noundef nonnull %sbpm_pl.i, i16 noundef zeroext %3, i8 noundef zeroext %22, i32 noundef %24, i1 noundef zeroext false, i32 noundef 0, i32 noundef %max_buff.0.ph) #11
  %core.i = getelementptr inbounds %struct.mlxsw_sp, ptr %1, i32 0, i32 1
  %25 = ptrtoint ptr %core.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %core.i, align 4
  %call.i = call i32 @mlxsw_reg_write(ptr noundef %26, ptr noundef nonnull @mlxsw_reg_sbpm, ptr noundef nonnull %sbpm_pl.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i22 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i22, label %if.end.i, label %if.end9.mlxsw_sp_sb_pm_write.exit_crit_edge

if.end9.mlxsw_sp_sb_pm_write.exit_crit_edge:      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlxsw_sp_sb_pm_write.exit

if.end.i:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  %27 = ptrtoint ptr %sb.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sb.i.i, align 4
  %ports.i.i = getelementptr inbounds %struct.mlxsw_sp_sb, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %ports.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ports.i.i, align 4
  %idxprom.i.i24 = zext i16 %3 to i32
  %pms.i.i = getelementptr %struct.mlxsw_sp_sb_port, ptr %30, i32 %idxprom.i.i24, i32 2
  %31 = ptrtoint ptr %pms.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pms.i.i, align 4
  %arrayidx2.i.i = getelementptr %struct.mlxsw_sp_sb_pm, ptr %32, i32 %idxprom.i.i
  %33 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %arrayidx2.i.i, align 4
  %max_buff4.i = getelementptr %struct.mlxsw_sp_sb_pm, ptr %32, i32 %idxprom.i.i, i32 1
  %34 = ptrtoint ptr %max_buff4.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %max_buff.0.ph, ptr %max_buff4.i, align 4
  br label %mlxsw_sp_sb_pm_write.exit

mlxsw_sp_sb_pm_write.exit:                        ; preds = %if.end.i, %if.end9.mlxsw_sp_sb_pm_write.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %sbpm_pl.i) #11
  br label %cleanup

cleanup:                                          ; preds = %mlxsw_sp_sb_pm_write.exit, %if.then4.i, %do.body.i.cleanup_crit_edge, %if.then4, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %mlxsw_sp_sb_pm_write.exit ], [ -22, %if.then4 ], [ -22, %do.body.cleanup_crit_edge ], [ -22, %do.body.i.cleanup_crit_edge ], [ -22, %if.then4.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlxsw_sp_sb_tc_pool_bind_get(ptr noundef %mlxsw_core_port, i32 noundef %sb_index, i16 noundef zeroext %tc_index, i32 noundef %pool_type, ptr nocapture noundef writeonly %p_pool_index, ptr nocapture noundef writeonly %p_threshold) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @mlxsw_core_port_driver_priv(ptr noundef %mlxsw_core_port) #11
  %mlxsw_sp1 = getelementptr inbounds %struct.mlxsw_sp_port, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %mlxsw_sp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mlxsw_sp1, align 8
  %local_port2 = getelementptr inbounds %struct.mlxsw_sp_port, ptr %call, i32 0, i32 3
  %2 = ptrtoint ptr %local_port2 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %local_port2, align 4
  %conv = trunc i16 %tc_index to i8
  %sb.i = getelementptr inbounds %struct.mlxsw_sp, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %sb.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sb.i, align 4
  %ports.i = getelementptr inbounds %struct.mlxsw_sp_sb, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ports.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pool_type)
  %cmp.i.i = icmp eq i32 %pool_type, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %conv)
  %cmp1.i.i = icmp ult i8 %conv, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %conv)
  %cmp4.i.i = icmp ult i8 %conv, 16
  %retval.0.i.i = select i1 %cmp.i.i, i1 %cmp1.i.i, i1 %cmp4.i.i
  br i1 %retval.0.i.i, label %entry.mlxsw_sp_sb_cm_get.exit_crit_edge, label %do.end.i, !prof !259

entry.mlxsw_sp_sb_cm_get.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlxsw_sp_sb_cm_get.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.49, i32 noundef 168, i32 noundef 9, ptr noundef null) #11
  br label %mlxsw_sp_sb_cm_get.exit

mlxsw_sp_sb_cm_get.exit:                          ; preds = %do.end.i, %entry.mlxsw_sp_sb_cm_get.exit_crit_edge
  %idxprom.i = zext i16 %3 to i32
  %arrayidx.i = getelementptr %struct.mlxsw_sp_sb_port, ptr %7, i32 %idxprom.i
  %conv.mask = and i16 %tc_index, 255
  %idxprom21.i = zext i16 %conv.mask to i32
  %arrayidx22.i = getelementptr [8 x %struct.mlxsw_sp_sb_cm], ptr %arrayidx.i, i32 0, i32 %idxprom21.i
  %arrayidx24.i = getelementptr %struct.mlxsw_sp_sb_port, ptr %7, i32 %idxprom.i, i32 1, i32 %idxprom21.i
  %retval.0.i = select i1 %cmp.i.i, ptr %arrayidx22.i, ptr %arrayidx24.i
  %pool_index = getelementptr inbounds %struct.mlxsw_sp_sb_cm, ptr %retval.0.i, i32 0, i32 2
  %8 = ptrtoint ptr %pool_index to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %pool_index, align 4
  %max_buff = getelementptr inbounds %struct.mlxsw_sp_sb_cm, ptr %retval.0.i, i32 0, i32 1
  %10 = ptrtoint ptr %max_buff to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %max_buff, align 4
  %12 = ptrtoint ptr %sb.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sb.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 8
  %idxprom.i.i = zext i16 %9 to i32
  %arrayidx.i.i = getelementptr %struct.mlxsw_sp_sb_pr, ptr %15, i32 %idxprom.i.i
  %16 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cmp.i = icmp eq i32 %17, 1
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %mlxsw_sp_sb_cm_get.exit
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i = add i32 %11, 2
  br label %mlxsw_sp_sb_threshold_out.exit

if.end.i:                                         ; preds = %mlxsw_sp_sb_cm_get.exit
  call void @__sanitizer_cov_trace_pc() #13
  %cell_size.i.i = getelementptr inbounds %struct.mlxsw_sp_sb, ptr %13, i32 0, i32 2
  %18 = ptrtoint ptr %cell_size.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cell_size.i.i, align 8
  %mul.i.i = mul i32 %19, %11
  br label %mlxsw_sp_sb_threshold_out.exit

mlxsw_sp_sb_threshold_out.exit:                   ; preds = %if.end.i, %if.then.i
  %retval.0.i10 = phi i32 [ %sub.i, %if.then.i ], [ %mul.i.i, %if.end.i ]
  %20 = ptrtoint ptr %p_threshold to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %retval.0.i10, ptr %p_threshold, align 4
  %21 = ptrtoint ptr %pool_index to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %pool_index, align 4
  %23 = ptrtoint ptr %p_pool_index to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %22, ptr %p_pool_index, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlxsw_sp_sb_tc_pool_bind_set(ptr noundef %mlxsw_core_port, i32 noundef %sb_index, i16 noundef zeroext %tc_index, i32 noundef %pool_type, i16 noundef zeroext %pool_index, i32 noundef %threshold, ptr noundef writeonly %extack) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @mlxsw_core_port_driver_priv(ptr noundef %mlxsw_core_port) #11
  %mlxsw_sp1 = getelementptr inbounds %struct.mlxsw_sp_port, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %mlxsw_sp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mlxsw_sp1, align 8
  %local_port2 = getelementptr inbounds %struct.mlxsw_sp_port, ptr %call, i32 0, i32 3
  %2 = ptrtoint ptr %local_port2 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %local_port2, align 4
  %conv = trunc i16 %tc_index to i8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp = icmp eq i16 %3, 0
  br i1 %cmp, label %do.body, label %if.end6

do.body:                                          ; preds = %entry
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @mlxsw_sp_sb_tc_pool_bind_set.__msg) #11
  %tobool.not = icmp eq ptr %extack, null
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %if.then5

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @mlxsw_sp_sb_tc_pool_bind_set.__msg, ptr %extack, align 4
  br label %cleanup

if.end6:                                          ; preds = %entry
  %sb_vals = getelementptr inbounds %struct.mlxsw_sp, ptr %1, i32 0, i32 34
  %5 = ptrtoint ptr %sb_vals to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sb_vals, align 4
  %pool_dess = getelementptr inbounds %struct.mlxsw_sp_sb_vals, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %pool_dess to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pool_dess, align 4
  %idxprom = zext i16 %pool_index to i32
  %arrayidx = getelementptr %struct.mlxsw_sp_sb_pool_des, ptr %8, i32 %idxprom
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %pool_type)
  %cmp8.not = icmp eq i32 %10, %pool_type
  br i1 %cmp8.not, label %if.end19, label %do.body11

do.body11:                                        ; preds = %if.end6
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @mlxsw_sp_sb_tc_pool_bind_set.__msg.3) #11
  %tobool13.not = icmp eq ptr %extack, null
  br i1 %tobool13.not, label %do.body11.cleanup_crit_edge, label %if.then14

do.body11.cleanup_crit_edge:                      ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then14:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @mlxsw_sp_sb_tc_pool_bind_set.__msg.3, ptr %extack, align 4
  br label %cleanup

if.end19:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pool_type)
  %cmp20 = icmp eq i32 %pool_type, 0
  %cms_egress = getelementptr inbounds %struct.mlxsw_sp_sb_vals, ptr %6, i32 0, i32 7
  %cms_ingress = getelementptr inbounds %struct.mlxsw_sp_sb_vals, ptr %6, i32 0, i32 6
  %cms_egress.sink = select i1 %cmp20, ptr %cms_ingress, ptr %cms_egress
  %12 = ptrtoint ptr %cms_egress.sink to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cms_egress.sink, align 4
  %idxprom27 = zext i16 %tc_index to i32
  %freeze_pool = getelementptr %struct.mlxsw_sp_sb_cm, ptr %13, i32 %idxprom27, i32 4
  %14 = ptrtoint ptr %freeze_pool to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load = load i8, ptr %freeze_pool, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool31.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool31.not, label %if.end19.if.end46_crit_edge, label %land.lhs.true

if.end19.if.end46_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end46

land.lhs.true:                                    ; preds = %if.end19
  %pool_index32 = getelementptr %struct.mlxsw_sp_sb_cm, ptr %13, i32 %idxprom27, i32 2
  %15 = ptrtoint ptr %pool_index32 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %pool_index32, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %16, i16 %pool_index)
  %cmp35.not = icmp eq i16 %16, %pool_index
  br i1 %cmp35.not, label %land.lhs.true.if.end46_crit_edge, label %do.body38

land.lhs.true.if.end46_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end46

do.body38:                                        ; preds = %land.lhs.true
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @mlxsw_sp_sb_tc_pool_bind_set.__msg.4) #11
  %tobool40.not = icmp eq ptr %extack, null
  br i1 %tobool40.not, label %do.body38.cleanup_crit_edge, label %if.then41

do.body38.cleanup_crit_edge:                      ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then41:                                        ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #13
  %17 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @mlxsw_sp_sb_tc_pool_bind_set.__msg.4, ptr %extack, align 4
  br label %cleanup

if.end46:                                         ; preds = %land.lhs.true.if.end46_crit_edge, %if.end19.if.end46_crit_edge
  %18 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool50.not = icmp eq i8 %18, 0
  br i1 %tobool50.not, label %if.end46.if.end64_crit_edge, label %land.lhs.true51

if.end46.if.end64_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end64

land.lhs.true51:                                  ; preds = %if.end46
  %max_buff52 = getelementptr %struct.mlxsw_sp_sb_cm, ptr %13, i32 %idxprom27, i32 1
  %19 = ptrtoint ptr %max_buff52 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %max_buff52, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %threshold)
  %cmp53.not = icmp eq i32 %20, %threshold
  br i1 %cmp53.not, label %land.lhs.true51.if.end64_crit_edge, label %do.body56

land.lhs.true51.if.end64_crit_edge:               ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end64

do.body56:                                        ; preds = %land.lhs.true51
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @mlxsw_sp_sb_tc_pool_bind_set.__msg.5) #11
  %tobool58.not = icmp eq ptr %extack, null
  br i1 %tobool58.not, label %do.body56.cleanup_crit_edge, label %if.then59

do.body56.cleanup_crit_edge:                      ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then59:                                        ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #13
  %21 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @mlxsw_sp_sb_tc_pool_bind_set.__msg.5, ptr %extack, align 4
  br label %cleanup

if.end64:                                         ; preds = %land.lhs.true51.if.end64_crit_edge, %if.end46.if.end64_crit_edge
  %sb.i.i = getelementptr inbounds %struct.mlxsw_sp, ptr %1, i32 0, i32 8
  %22 = ptrtoint ptr %sb.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sb.i.i, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 8
  %arrayidx.i.i = getelementptr %struct.mlxsw_sp_sb_pr, ptr %25, i32 %idxprom
  %26 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %27)
  %cmp.i = icmp eq i32 %27, 1
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end64
  %28 = add i32 %threshold, -17
  call void @__sanitizer_cov_trace_const_cmp4(i32 -14, i32 %28)
  %29 = icmp ult i32 %28, -14
  br i1 %29, label %do.body.i, label %if.end5.i

do.body.i:                                        ; preds = %if.then.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @mlxsw_sp_sb_threshold_in.__msg) #11
  %tobool.not.i = icmp eq ptr %extack, null
  br i1 %tobool.not.i, label %do.body.i.cleanup_crit_edge, label %if.then4.i

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then4.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %30 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @mlxsw_sp_sb_threshold_in.__msg, ptr %extack, align 4
  br label %cleanup

if.end5.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.i = add nsw i32 %threshold, -2
  br label %if.end68

if.else.i:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #13
  %cell_size.i.i = getelementptr inbounds %struct.mlxsw_sp_sb, ptr %23, i32 0, i32 2
  %31 = ptrtoint ptr %cell_size.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %cell_size.i.i, align 8
  %add.i.i = add i32 %threshold, -1
  %sub.i.i = add i32 %add.i.i, %32
  %div.i.i = udiv i32 %sub.i.i, %32
  br label %if.end68

if.end68:                                         ; preds = %if.else.i, %if.end5.i
  %max_buff.0.ph = phi i32 [ %div.i.i, %if.else.i ], [ %add.i, %if.end5.i ]
  %call69 = tail call fastcc i32 @mlxsw_sp_sb_cm_write(ptr noundef %1, i16 noundef zeroext %3, i8 noundef zeroext %conv, i32 noundef 0, i32 noundef %max_buff.0.ph, i1 noundef zeroext false, i16 noundef zeroext %pool_index)
  br label %cleanup

cleanup:                                          ; preds = %if.end68, %if.then4.i, %do.body.i.cleanup_crit_edge, %if.then59, %do.body56.cleanup_crit_edge, %if.then41, %do.body38.cleanup_crit_edge, %if.then14, %do.body11.cleanup_crit_edge, %if.then5, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %call69, %if.end68 ], [ -22, %if.then5 ], [ -22, %do.body.cleanup_crit_edge ], [ -22, %if.then14 ], [ -22, %do.body11.cleanup_crit_edge ], [ -22, %if.then41 ], [ -22, %do.body38.cleanup_crit_edge ], [ -22, %if.then59 ], [ -22, %do.body56.cleanup_crit_edge ], [ -22, %do.body.i.cleanup_crit_edge ], [ -22, %if.then4.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlxsw_sp_sb_cm_write(ptr nocapture noundef readonly %mlxsw_sp, i16 noundef zeroext %local_port, i8 noundef zeroext %pg_buff, i32 noundef %min_buff, i32 noundef %max_buff, i1 noundef zeroext %infi_max, i16 noundef zeroext %pool_index) unnamed_addr #3 align 64 {
entry:
  %sbcm_pl = alloca [40 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sb_vals = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 34
  %0 = ptrtoint ptr %sb_vals to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sb_vals, align 4
  %pool_dess = getelementptr inbounds %struct.mlxsw_sp_sb_vals, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pool_dess to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pool_dess, align 4
  %idxprom = zext i16 %pool_index to i32
  %arrayidx = getelementptr %struct.mlxsw_sp_sb_pool_des, ptr %3, i32 %idxprom
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %sbcm_pl) #11
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %pool = getelementptr %struct.mlxsw_sp_sb_pool_des, ptr %3, i32 %idxprom, i32 1
  %6 = ptrtoint ptr %pool to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %pool, align 4
  %8 = call ptr @memset(ptr %sbcm_pl, i32 0, i32 40)
  %conv1.i = zext i16 %local_port to i32
  %and.i.i = shl nuw i32 %conv1.i, 16
  %spec.select.i.i.i = and i32 %and.i.i, 16711680
  %9 = ptrtoint ptr %sbcm_pl to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sbcm_pl, align 4
  %and7.i.i.i = and i32 %10, -16727860
  %or.i.i.i = or i32 %spec.select.i.i.i, %and7.i.i.i
  %11 = lshr i32 %conv1.i, 4
  %and6.i28.i.i = and i32 %11, 48
  %or.i32.i.i = or i32 %and6.i28.i.i, %or.i.i.i
  %conv2.i = zext i8 %pg_buff to i32
  %spec.select.i.i30.i = shl nuw nsw i32 %conv2.i, 8
  %and6.i.i35.i = and i32 %spec.select.i.i30.i, 16128
  %or.i.i39.i = or i32 %and6.i.i35.i, %or.i32.i.i
  %and6.i.i64.i = and i32 %5, 3
  %or.i.i68.i = or i32 %and6.i.i64.i, %or.i.i39.i
  store i32 %or.i.i68.i, ptr %sbcm_pl, align 4
  %and6.i.i93.i = and i32 %min_buff, 16777215
  %arrayidx.i.i94.i = getelementptr inbounds i32, ptr %sbcm_pl, i32 6
  %12 = ptrtoint ptr %arrayidx.i.i94.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i.i94.i, align 4
  %and7.i.i96.i = and i32 %13, -16777216
  %or.i.i97.i = or i32 %and6.i.i93.i, %and7.i.i96.i
  store i32 %or.i.i97.i, ptr %arrayidx.i.i94.i, align 4
  %and6.i.i122.i = and i32 %max_buff, 16777215
  %arrayidx.i.i123.i = getelementptr inbounds i32, ptr %sbcm_pl, i32 7
  %14 = ptrtoint ptr %arrayidx.i.i123.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i.i123.i, align 4
  %and7.i.i125.i = and i32 %15, 2130706432
  %or.i.i126.i = or i32 %and6.i.i122.i, %and7.i.i125.i
  %spec.select.i.i146.i = select i1 %infi_max, i32 -2147483648, i32 0
  %arrayidx.i.i152.i = getelementptr inbounds i32, ptr %sbcm_pl, i32 7
  %or.i.i155.i = or i32 %spec.select.i.i146.i, %or.i.i126.i
  %16 = ptrtoint ptr %arrayidx.i.i152.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %or.i.i155.i, ptr %arrayidx.i.i152.i, align 4
  %17 = and i8 %7, 15
  %and6.i.i180.i = zext i8 %17 to i32
  %arrayidx.i.i181.i = getelementptr inbounds i32, ptr %sbcm_pl, i32 9
  %18 = ptrtoint ptr %arrayidx.i.i181.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i.i181.i, align 4
  %and7.i.i183.i = and i32 %19, -16
  %or.i.i184.i = or i32 %and7.i.i183.i, %and6.i.i180.i
  store i32 %or.i.i184.i, ptr %arrayidx.i.i181.i, align 4
  %core = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 1
  %20 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %core, align 4
  %call = call i32 @mlxsw_reg_write(ptr noundef %21, ptr noundef nonnull @mlxsw_reg_sbcm, ptr noundef nonnull %sbcm_pl) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp.i = icmp eq i32 %23, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %pg_buff)
  %cmp1.i = icmp ult i8 %pg_buff, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %pg_buff)
  %cmp4.i = icmp ult i8 %pg_buff, 16
  %retval.0.i = select i1 %cmp.i, i1 %cmp1.i, i1 %cmp4.i
  br i1 %retval.0.i, label %if.then5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then5:                                         ; preds = %if.end
  br i1 %infi_max, label %if.then7, label %if.then5.mlxsw_sp_sb_cm_get.exit_crit_edge

if.then5.mlxsw_sp_sb_cm_get.exit_crit_edge:       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlxsw_sp_sb_cm_get.exit

if.then7:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #13
  %sb = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 8
  %24 = ptrtoint ptr %sb to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sb, align 4
  %sb_size = getelementptr inbounds %struct.mlxsw_sp_sb, ptr %25, i32 0, i32 4
  %26 = ptrtoint ptr %sb_size to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %sb_size, align 8
  %conv = trunc i64 %27 to i32
  %cell_size.i = getelementptr inbounds %struct.mlxsw_sp_sb, ptr %25, i32 0, i32 2
  %28 = ptrtoint ptr %cell_size.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cell_size.i, align 8
  %add.i = add i32 %conv, -1
  %sub.i = add i32 %add.i, %29
  %div.i = udiv i32 %sub.i, %29
  br label %mlxsw_sp_sb_cm_get.exit

mlxsw_sp_sb_cm_get.exit:                          ; preds = %if.then7, %if.then5.mlxsw_sp_sb_cm_get.exit_crit_edge
  %max_buff.addr.0 = phi i32 [ %div.i, %if.then7 ], [ %max_buff, %if.then5.mlxsw_sp_sb_cm_get.exit_crit_edge ]
  %sb.i36 = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 8
  %30 = ptrtoint ptr %sb.i36 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %sb.i36, align 4
  %ports.i = getelementptr inbounds %struct.mlxsw_sp_sb, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ports.i, align 4
  %arrayidx.i = getelementptr %struct.mlxsw_sp_sb_port, ptr %33, i32 %conv1.i
  %arrayidx22.i = getelementptr [8 x %struct.mlxsw_sp_sb_cm], ptr %arrayidx.i, i32 0, i32 %conv2.i
  %arrayidx24.i = getelementptr %struct.mlxsw_sp_sb_port, ptr %33, i32 %conv1.i, i32 1, i32 %conv2.i
  %retval.0.i37 = select i1 %cmp.i, ptr %arrayidx22.i, ptr %arrayidx24.i
  %34 = ptrtoint ptr %retval.0.i37 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %min_buff, ptr %retval.0.i37, align 4
  %max_buff13 = getelementptr inbounds %struct.mlxsw_sp_sb_cm, ptr %retval.0.i37, i32 0, i32 1
  %35 = ptrtoint ptr %max_buff13 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %max_buff.addr.0, ptr %max_buff13, align 4
  %pool_index14 = getelementptr inbounds %struct.mlxsw_sp_sb_cm, ptr %retval.0.i37, i32 0, i32 2
  %36 = ptrtoint ptr %pool_index14 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %pool_index, ptr %pool_index14, align 4
  br label %cleanup

cleanup:                                          ; preds = %mlxsw_sp_sb_cm_get.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %sbcm_pl) #11
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlxsw_sp_sb_occ_snapshot(ptr noundef %mlxsw_core, i32 noundef %sb_index) local_unnamed_addr #3 align 64 {
entry:
  %sbpm_pl.i = alloca [40 x i8], align 1
  %bulk_list = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @mlxsw_core_driver_priv(ptr noundef %mlxsw_core) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %bulk_list) #11
  %0 = getelementptr inbounds %struct.list_head, ptr %bulk_list, i32 0, i32 1
  %1 = ptrtoint ptr %bulk_list to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %bulk_list, ptr %bulk_list, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %bulk_list, ptr %0, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3264, i32 noundef 1052) #14
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %next_batch.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

next_batch.preheader:                             ; preds = %entry
  %4 = call ptr @memset(ptr %call7.i, i32 0, i32 1052)
  %sb_vals = getelementptr inbounds %struct.mlxsw_sp, ptr %call, i32 0, i32 34
  %sb.i.i = getelementptr inbounds %struct.mlxsw_sp, ptr %call, i32 0, i32 8
  %core.i = getelementptr inbounds %struct.mlxsw_sp, ptr %call, i32 0, i32 1
  %arrayidx.i.i = getelementptr i32, ptr %call7.i, i32 1
  %arrayidx.i.i132.peel = getelementptr i8, ptr %call7.i, i32 51
  %arrayidx.i.i132 = getelementptr i8, ptr %call7.i, i32 51
  %arrayidx.i.i132.6 = getelementptr i8, ptr %call7.i, i32 51
  %arrayidx.i.i165.peel = getelementptr i8, ptr %call7.i, i32 91
  br label %mlxsw_reg_sbsr_pack.exit

next_batch:                                       ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #13
  %inc67 = add i16 %local_port.1267, 1
  %5 = call ptr @memset(ptr %call7.i, i32 0, i32 1052)
  br label %mlxsw_reg_sbsr_pack.exit

mlxsw_reg_sbsr_pack.exit:                         ; preds = %next_batch, %next_batch.preheader
  %current_page.0318 = phi i8 [ 0, %next_batch.preheader ], [ %current_page.1, %next_batch ]
  %local_port.0315 = phi i16 [ 0, %next_batch.preheader ], [ %inc67, %next_batch ]
  %6 = ptrtoint ptr %call7.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %call7.i, align 8
  %and7.i.i.i = and i32 %7, 2147483647
  store i32 %and7.i.i.i, ptr %call7.i, align 8
  %conv = zext i8 %current_page.0318 to i32
  %and6.i.i = and i32 %conv, 15
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i.i, align 4
  %and7.i.i = and i32 %9, -16
  %or.i.i = or i32 %and6.i.i, %and7.i.i
  store i32 %or.i.i, ptr %arrayidx.i.i, align 4
  %10 = shl nuw nsw i32 %conv, 8
  %conv3 = or i32 %10, 255
  %11 = ptrtoint ptr %arrayidx.i.i132.peel to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx.i.i132.peel, align 1
  %conv18.i.i.peel = or i8 %12, 1
  store i8 %conv18.i.i.peel, ptr %arrayidx.i.i132.peel, align 1
  %13 = ptrtoint ptr %arrayidx.i.i132 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx.i.i132, align 1
  %conv18.i.i.6 = or i8 %14, -2
  %15 = ptrtoint ptr %arrayidx.i.i132.6 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv18.i.i.6, ptr %arrayidx.i.i132.6, align 1
  %16 = ptrtoint ptr %arrayidx.i.i165.peel to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx.i.i165.peel, align 1
  %conv18.i.i167.peel = or i8 %17, 1
  store i8 %conv18.i.i167.peel, ptr %arrayidx.i.i165.peel, align 1
  br label %mlxsw_reg_sbsr_tclass_mask_set.exit

for.cond14.preheader:                             ; preds = %mlxsw_reg_sbsr_tclass_mask_set.exit
  %conv15298 = zext i16 %local_port.0315 to i32
  %call16299 = call i32 @mlxsw_core_max_ports(ptr noundef %mlxsw_core) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %call16299, i32 %conv15298)
  %cmp17300 = icmp ugt i32 %call16299, %conv15298
  br i1 %cmp17300, label %for.cond14.preheader.for.body19_crit_edge, label %for.cond14.preheader.do_query_crit_edge

for.cond14.preheader.do_query_crit_edge:          ; preds = %for.cond14.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %do_query

for.cond14.preheader.for.body19_crit_edge:        ; preds = %for.cond14.preheader
  br label %for.body19

mlxsw_reg_sbsr_tclass_mask_set.exit:              ; preds = %mlxsw_reg_sbsr_tclass_mask_set.exit.mlxsw_reg_sbsr_tclass_mask_set.exit_crit_edge, %mlxsw_reg_sbsr_pack.exit
  %i.1295 = phi i32 [ %inc12, %mlxsw_reg_sbsr_tclass_mask_set.exit.mlxsw_reg_sbsr_tclass_mask_set.exit_crit_edge ], [ 1, %mlxsw_reg_sbsr_pack.exit ]
  %rem5076.i.i.i155 = and i32 %i.1295, 7
  %18 = trunc i32 %i.1295 to i16
  %19 = sub i16 63, %18
  %20 = lshr i16 %19, 3
  %conv60.i.i.i157 = add nuw nsw i16 %20, 84
  %shl.i.i161 = shl i32 1, %rem5076.i.i.i155
  %and10.i.i163 = shl i32 1, %rem5076.i.i.i155
  %idxprom.i.i164 = zext i16 %conv60.i.i.i157 to i32
  %arrayidx.i.i165 = getelementptr i8, ptr %call7.i, i32 %idxprom.i.i164
  %21 = ptrtoint ptr %arrayidx.i.i165 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx.i.i165, align 1
  %23 = trunc i32 %shl.i.i161 to i8
  %24 = xor i8 %23, -1
  %conv15.i.i166 = and i8 %22, %24
  %25 = trunc i32 %and10.i.i163 to i8
  %conv18.i.i167 = or i8 %conv15.i.i166, %25
  store i8 %conv18.i.i167, ptr %arrayidx.i.i165, align 1
  %inc12 = add nuw nsw i32 %i.1295, 1
  %exitcond366.not = icmp eq i32 %inc12, 16
  br i1 %exitcond366.not, label %for.cond14.preheader, label %mlxsw_reg_sbsr_tclass_mask_set.exit.mlxsw_reg_sbsr_tclass_mask_set.exit_crit_edge, !llvm.loop !261

mlxsw_reg_sbsr_tclass_mask_set.exit.mlxsw_reg_sbsr_tclass_mask_set.exit_crit_edge: ; preds = %mlxsw_reg_sbsr_tclass_mask_set.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlxsw_reg_sbsr_tclass_mask_set.exit

for.body19:                                       ; preds = %for.inc53.for.body19_crit_edge, %for.cond14.preheader.for.body19_crit_edge
  %conv15304 = phi i32 [ %conv15, %for.inc53.for.body19_crit_edge ], [ %conv15298, %for.cond14.preheader.for.body19_crit_edge ]
  %masked_count.0303 = phi i8 [ %masked_count.1, %for.inc53.for.body19_crit_edge ], [ 0, %for.cond14.preheader.for.body19_crit_edge ]
  %local_port.1301 = phi i16 [ %inc54, %for.inc53.for.body19_crit_edge ], [ %local_port.0315, %for.cond14.preheader.for.body19_crit_edge ]
  %26 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %call, align 4
  %arrayidx = getelementptr ptr, ptr %27, i32 %conv15304
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx, align 4
  %tobool20.not = icmp eq ptr %29, null
  br i1 %tobool20.not, label %for.body19.for.inc53_crit_edge, label %if.end22

for.body19.for.inc53_crit_edge:                   ; preds = %for.body19
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc53

if.end22:                                         ; preds = %for.body19
  call void @__sanitizer_cov_trace_cmp4(i32 %conv3, i32 %conv15304)
  %cmp25 = icmp ult i32 %conv3, %conv15304
  br i1 %cmp25, label %if.then27, label %if.end29

if.then27:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  %inc28 = add i8 %current_page.0318, 1
  br label %do_query

if.end29:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %local_port.1301)
  %cmp31.not = icmp eq i16 %local_port.1301, 0
  br i1 %cmp31.not, label %if.end29.mlxsw_reg_sbsr_egress_port_mask_set.exit_crit_edge, label %land.rhs.i.i.i205

if.end29.mlxsw_reg_sbsr_egress_port_mask_set.exit_crit_edge: ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlxsw_reg_sbsr_egress_port_mask_set.exit

land.rhs.i.i.i205:                                ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  %conv41.i.i.i185 = sub i16 255, %local_port.1301
  %30 = lshr i16 %conv41.i.i.i185, 3
  %31 = and i16 %local_port.1301, 7
  %32 = trunc i16 %31 to i8
  %conv60.i.i.i192 = add nuw nsw i16 %30, 16
  %shl.i.i196 = shl i16 1, %31
  %and10.i.i198 = shl i8 1, %32
  %idxprom.i.i199 = zext i16 %conv60.i.i.i192 to i32
  %arrayidx.i.i200 = getelementptr i8, ptr %call7.i, i32 %idxprom.i.i199
  %33 = ptrtoint ptr %arrayidx.i.i200 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx.i.i200, align 1
  %35 = trunc i16 %shl.i.i196 to i8
  %36 = xor i8 %35, -1
  %conv15.i.i201 = and i8 %34, %36
  %conv18.i.i202 = or i8 %conv15.i.i201, %and10.i.i198
  store i8 %conv18.i.i202, ptr %arrayidx.i.i200, align 1
  br label %mlxsw_reg_sbsr_egress_port_mask_set.exit

mlxsw_reg_sbsr_egress_port_mask_set.exit:         ; preds = %land.rhs.i.i.i205, %if.end29.mlxsw_reg_sbsr_egress_port_mask_set.exit_crit_edge
  %conv41.i.i.i220 = sub i16 255, %local_port.1301
  %37 = lshr i16 %conv41.i.i.i220, 3
  %38 = and i16 %local_port.1301, 7
  %39 = trunc i16 %38 to i8
  %conv60.i.i.i227 = add nuw nsw i16 %37, 52
  %shl.i.i231 = shl i16 1, %38
  %and10.i.i233 = shl i8 1, %39
  %idxprom.i.i234 = zext i16 %conv60.i.i.i227 to i32
  %arrayidx.i.i235 = getelementptr i8, ptr %call7.i, i32 %idxprom.i.i234
  %40 = ptrtoint ptr %arrayidx.i.i235 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx.i.i235, align 1
  %42 = trunc i16 %shl.i.i231 to i8
  %43 = xor i8 %42, -1
  %conv15.i.i236 = and i8 %41, %43
  %conv18.i.i237 = or i8 %conv15.i.i236, %and10.i.i233
  store i8 %conv18.i.i237, ptr %arrayidx.i.i235, align 1
  %44 = ptrtoint ptr %sb_vals to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %sb_vals, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %45, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp36296.not = icmp eq i32 %47, 0
  br i1 %cmp36296.not, label %mlxsw_reg_sbsr_egress_port_mask_set.exit.for.end46_crit_edge, label %mlxsw_reg_sbsr_egress_port_mask_set.exit.for.body38_crit_edge

mlxsw_reg_sbsr_egress_port_mask_set.exit.for.body38_crit_edge: ; preds = %mlxsw_reg_sbsr_egress_port_mask_set.exit
  br label %for.body38

mlxsw_reg_sbsr_egress_port_mask_set.exit.for.end46_crit_edge: ; preds = %mlxsw_reg_sbsr_egress_port_mask_set.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end46

for.body38:                                       ; preds = %for.inc44.for.body38_crit_edge, %mlxsw_reg_sbsr_egress_port_mask_set.exit.for.body38_crit_edge
  %48 = phi ptr [ %68, %for.inc44.for.body38_crit_edge ], [ %45, %mlxsw_reg_sbsr_egress_port_mask_set.exit.for.body38_crit_edge ]
  %i.2297 = phi i32 [ %inc45, %for.inc44.for.body38_crit_edge ], [ 0, %mlxsw_reg_sbsr_egress_port_mask_set.exit.for.body38_crit_edge ]
  %pool_dess.i = getelementptr inbounds %struct.mlxsw_sp_sb_vals, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %pool_dess.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %pool_dess.i, align 4
  %idxprom.i = and i32 %i.2297, 65535
  %arrayidx.i = getelementptr %struct.mlxsw_sp_sb_pool_des, ptr %50, i32 %idxprom.i
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %sbpm_pl.i) #11
  %51 = call ptr @memset(ptr %sbpm_pl.i, i32 255, i32 40)
  br i1 %cmp31.not, label %land.lhs.true.i, label %for.body38.mlxsw_sp_sb_pm_occ_query.exit_crit_edge

for.body38.mlxsw_sp_sb_pm_occ_query.exit_crit_edge: ; preds = %for.body38
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlxsw_sp_sb_pm_occ_query.exit

land.lhs.true.i:                                  ; preds = %for.body38
  %52 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp2.i = icmp eq i32 %53, 0
  br i1 %cmp2.i, label %mlxsw_sp_sb_pm_occ_query.exit.thread, label %land.lhs.true.i.mlxsw_sp_sb_pm_occ_query.exit_crit_edge

land.lhs.true.i.mlxsw_sp_sb_pm_occ_query.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlxsw_sp_sb_pm_occ_query.exit

mlxsw_sp_sb_pm_occ_query.exit.thread:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %sbpm_pl.i) #11
  br label %for.inc44

mlxsw_sp_sb_pm_occ_query.exit:                    ; preds = %land.lhs.true.i.mlxsw_sp_sb_pm_occ_query.exit_crit_edge, %for.body38.mlxsw_sp_sb_pm_occ_query.exit_crit_edge
  %54 = ptrtoint ptr %sb.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %sb.i.i, align 4
  %ports.i.i = getelementptr inbounds %struct.mlxsw_sp_sb, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %ports.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ports.i.i, align 4
  %pms.i.i = getelementptr %struct.mlxsw_sp_sb_port, ptr %57, i32 %conv15304, i32 2
  %58 = ptrtoint ptr %pms.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %pms.i.i, align 4
  %arrayidx2.i.i = getelementptr %struct.mlxsw_sp_sb_pm, ptr %59, i32 %idxprom.i
  %pool.i = getelementptr %struct.mlxsw_sp_sb_pool_des, ptr %50, i32 %idxprom.i, i32 1
  %60 = ptrtoint ptr %pool.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %pool.i, align 4
  %62 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx.i, align 4
  call fastcc void @mlxsw_reg_sbpm_pack(ptr noundef nonnull %sbpm_pl.i, i16 noundef zeroext %local_port.1301, i8 noundef zeroext %61, i32 noundef %63, i1 noundef zeroext false, i32 noundef 0, i32 noundef 0) #11
  %64 = ptrtoint ptr %core.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %core.i, align 4
  %66 = ptrtoint ptr %arrayidx2.i.i to i32
  %call6.i = call i32 @mlxsw_reg_trans_query(ptr noundef %65, ptr noundef nonnull @mlxsw_reg_sbpm, ptr noundef nonnull %sbpm_pl.i, ptr noundef nonnull %bulk_list, ptr noundef nonnull @mlxsw_sp_sb_pm_occ_query_cb, i32 noundef %66) #11
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %sbpm_pl.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool41.not = icmp eq i32 %call6.i, 0
  br i1 %tobool41.not, label %mlxsw_sp_sb_pm_occ_query.exit.for.inc44_crit_edge, label %mlxsw_sp_sb_pm_occ_query.exit.out.thread_crit_edge

mlxsw_sp_sb_pm_occ_query.exit.out.thread_crit_edge: ; preds = %mlxsw_sp_sb_pm_occ_query.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.thread

mlxsw_sp_sb_pm_occ_query.exit.for.inc44_crit_edge: ; preds = %mlxsw_sp_sb_pm_occ_query.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc44

for.inc44:                                        ; preds = %mlxsw_sp_sb_pm_occ_query.exit.for.inc44_crit_edge, %mlxsw_sp_sb_pm_occ_query.exit.thread
  %inc45 = add nuw i32 %i.2297, 1
  %67 = ptrtoint ptr %sb_vals to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %sb_vals, align 4
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %68, align 4
  %cmp36 = icmp ult i32 %inc45, %70
  br i1 %cmp36, label %for.inc44.for.body38_crit_edge, label %for.inc44.for.end46_crit_edge

for.inc44.for.end46_crit_edge:                    ; preds = %for.inc44
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end46

for.inc44.for.body38_crit_edge:                   ; preds = %for.inc44
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body38

for.end46:                                        ; preds = %for.inc44.for.end46_crit_edge, %mlxsw_reg_sbsr_egress_port_mask_set.exit.for.end46_crit_edge
  %inc47 = add i8 %masked_count.0303, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %inc47)
  %cmp49 = icmp eq i8 %inc47, 5
  br i1 %cmp49, label %for.end46.do_query_crit_edge, label %for.end46.for.inc53_crit_edge

for.end46.for.inc53_crit_edge:                    ; preds = %for.end46
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc53

for.end46.do_query_crit_edge:                     ; preds = %for.end46
  call void @__sanitizer_cov_trace_pc() #13
  br label %do_query

for.inc53:                                        ; preds = %for.end46.for.inc53_crit_edge, %for.body19.for.inc53_crit_edge
  %masked_count.1 = phi i8 [ %inc47, %for.end46.for.inc53_crit_edge ], [ %masked_count.0303, %for.body19.for.inc53_crit_edge ]
  %inc54 = add i16 %local_port.1301, 1
  %conv15 = zext i16 %inc54 to i32
  %call16 = call i32 @mlxsw_core_max_ports(ptr noundef %mlxsw_core) #11
  %cmp17 = icmp ugt i32 %call16, %conv15
  br i1 %cmp17, label %for.inc53.for.body19_crit_edge, label %for.inc53.do_query_crit_edge

for.inc53.do_query_crit_edge:                     ; preds = %for.inc53
  call void @__sanitizer_cov_trace_pc() #13
  br label %do_query

for.inc53.for.body19_crit_edge:                   ; preds = %for.inc53
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body19

do_query:                                         ; preds = %for.inc53.do_query_crit_edge, %for.end46.do_query_crit_edge, %if.then27, %for.cond14.preheader.do_query_crit_edge
  %local_port.1267 = phi i16 [ %local_port.1301, %if.then27 ], [ %local_port.0315, %for.cond14.preheader.do_query_crit_edge ], [ %local_port.1301, %for.end46.do_query_crit_edge ], [ %inc54, %for.inc53.do_query_crit_edge ]
  %conv15254 = phi i32 [ %conv15304, %if.then27 ], [ %conv15298, %for.cond14.preheader.do_query_crit_edge ], [ %conv15304, %for.end46.do_query_crit_edge ], [ %conv15, %for.inc53.do_query_crit_edge ]
  %masked_count.2 = phi i8 [ %masked_count.0303, %if.then27 ], [ 0, %for.cond14.preheader.do_query_crit_edge ], [ 5, %for.end46.do_query_crit_edge ], [ %masked_count.1, %for.inc53.do_query_crit_edge ]
  %current_page.1 = phi i8 [ %inc28, %if.then27 ], [ %current_page.0318, %for.cond14.preheader.do_query_crit_edge ], [ %current_page.0318, %for.inc53.do_query_crit_edge ], [ %current_page.0318, %for.end46.do_query_crit_edge ]
  %cb_ctx.sroa.0.0.insert.ext = zext i8 %masked_count.2 to i32
  %cb_ctx.sroa.0.0.insert.shift = shl nuw i32 %cb_ctx.sroa.0.0.insert.ext, 24
  %cb_ctx.sroa.5.0.insert.insert = or i32 %cb_ctx.sroa.0.0.insert.shift, %conv15298
  %cb_ctx.sroa.0.0.insert.insert = or i32 %cb_ctx.sroa.5.0.insert.insert, 16711680
  %call58 = call i32 @mlxsw_reg_trans_query(ptr noundef %mlxsw_core, ptr noundef nonnull @mlxsw_reg_sbsr, ptr noundef nonnull %call7.i, ptr noundef nonnull %bulk_list, ptr noundef nonnull @mlxsw_sp_sb_sr_occ_query_cb, i32 noundef %cb_ctx.sroa.0.0.insert.insert) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %if.end61, label %do_query.out.thread_crit_edge

do_query.out.thread_crit_edge:                    ; preds = %do_query
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.thread

if.end61:                                         ; preds = %do_query
  %call63 = call i32 @mlxsw_core_max_ports(ptr noundef %mlxsw_core) #11
  %cmp64 = icmp ugt i32 %call63, %conv15254
  br i1 %cmp64, label %next_batch, label %71

out.thread:                                       ; preds = %do_query.out.thread_crit_edge, %mlxsw_sp_sb_pm_occ_query.exit.out.thread_crit_edge
  %err.0.ph = phi i32 [ %call6.i, %mlxsw_sp_sb_pm_occ_query.exit.out.thread_crit_edge ], [ %call58, %do_query.out.thread_crit_edge ]
  %call69242 = call i32 @mlxsw_reg_trans_bulk_wait(ptr noundef nonnull %bulk_list) #11
  br label %72

71:                                               ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #13
  %call69 = call i32 @mlxsw_reg_trans_bulk_wait(ptr noundef nonnull %bulk_list) #11
  br label %72

72:                                               ; preds = %71, %out.thread
  %73 = phi i32 [ %call69, %71 ], [ %err.0.ph, %out.thread ]
  call void @kfree(ptr noundef nonnull %call7.i) #11
  br label %cleanup

cleanup:                                          ; preds = %72, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %73, %72 ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %bulk_list) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_core_max_ports(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_reg_trans_query(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlxsw_sp_sb_sr_occ_query_cb(ptr noundef %mlxsw_core, ptr nocapture noundef readonly %sbsr_pl, i32 noundef %sbsr_pl_len, i32 noundef %cb_priv) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %cb_priv.addr.sroa.0.0.extract.shift = lshr i32 %cb_priv, 24
  %cb_priv.addr.sroa.3.0.extract.trunc = trunc i32 %cb_priv to i16
  %call = tail call ptr @mlxsw_core_driver_priv(ptr noundef %mlxsw_core) #11
  %conv110 = and i32 %cb_priv, 65535
  %call1111 = tail call i32 @mlxsw_core_max_ports(ptr noundef %mlxsw_core) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %call1111, i32 %conv110)
  %cmp112 = icmp ugt i32 %call1111, %conv110
  br i1 %cmp112, label %for.body.lr.ph, label %entry.for.end27_crit_edge

entry.for.end27_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end27

for.body.lr.ph:                                   ; preds = %entry
  %sb.i = getelementptr inbounds %struct.mlxsw_sp, ptr %call, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %for.inc25.for.body_crit_edge, %for.body.lr.ph
  %conv117 = phi i32 [ %conv110, %for.body.lr.ph ], [ %conv, %for.inc25.for.body_crit_edge ]
  %rec_index.0116 = phi i32 [ 0, %for.body.lr.ph ], [ %rec_index.2, %for.inc25.for.body_crit_edge ]
  %local_port.0114 = phi i16 [ %cb_priv.addr.sroa.3.0.extract.trunc, %for.body.lr.ph ], [ %inc26, %for.inc25.for.body_crit_edge ]
  %masked_count.0113 = phi i8 [ 0, %for.body.lr.ph ], [ %masked_count.1, %for.inc25.for.body_crit_edge ]
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 4
  %arrayidx = getelementptr ptr, ptr %1, i32 %conv117
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %for.body.for.inc25_crit_edge, label %if.end

for.body.for.inc25_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc25

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %local_port.0114)
  %cmp4 = icmp eq i16 %local_port.0114, 0
  br i1 %cmp4, label %if.then6, label %if.end.for.body11_crit_edge

if.end.for.body11_crit_edge:                      ; preds = %if.end
  br label %for.body11

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %inc = add i8 %masked_count.0113, 1
  br label %for.inc25

for.body11:                                       ; preds = %mlxsw_sp_sb_cm_get.exit.for.body11_crit_edge, %if.end.for.body11_crit_edge
  %i.0109 = phi i32 [ %inc16, %mlxsw_sp_sb_cm_get.exit.for.body11_crit_edge ], [ 0, %if.end.for.body11_crit_edge ]
  %rec_index.1108 = phi i32 [ %inc14, %mlxsw_sp_sb_cm_get.exit.for.body11_crit_edge ], [ %rec_index.0116, %if.end.for.body11_crit_edge ]
  %4 = ptrtoint ptr %sb.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sb.i, align 4
  %ports.i = getelementptr inbounds %struct.mlxsw_sp_sb, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ports.i, align 4
  %8 = and i32 %i.0109, 248
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp1.i.i = icmp eq i32 %8, 0
  br i1 %cmp1.i.i, label %for.body11.mlxsw_sp_sb_cm_get.exit_crit_edge, label %do.end.i, !prof !259

for.body11.mlxsw_sp_sb_cm_get.exit_crit_edge:     ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlxsw_sp_sb_cm_get.exit

do.end.i:                                         ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.49, i32 noundef 168, i32 noundef 9, ptr noundef null) #11
  br label %mlxsw_sp_sb_cm_get.exit

mlxsw_sp_sb_cm_get.exit:                          ; preds = %do.end.i, %for.body11.mlxsw_sp_sb_cm_get.exit_crit_edge
  %arrayidx.i = getelementptr %struct.mlxsw_sp_sb_port, ptr %7, i32 %conv117
  %arrayidx22.i = getelementptr [8 x %struct.mlxsw_sp_sb_cm], ptr %arrayidx.i, i32 0, i32 %i.0109
  %inc14 = add i32 %rec_index.1108, 1
  %occ = getelementptr inbounds %struct.mlxsw_sp_sb_cm, ptr %arrayidx22.i, i32 0, i32 3
  %max = getelementptr inbounds %struct.mlxsw_sp_sb_cm, ptr %arrayidx22.i, i32 0, i32 3, i32 1
  tail call fastcc void @mlxsw_reg_sbsr_rec_unpack(ptr noundef %sbsr_pl, i32 noundef %rec_index.1108, ptr noundef %occ, ptr noundef %max)
  %inc16 = add nuw nsw i32 %i.0109, 1
  %exitcond.not = icmp eq i32 %inc16, 8
  br i1 %exitcond.not, label %for.end, label %mlxsw_sp_sb_cm_get.exit.for.body11_crit_edge

mlxsw_sp_sb_cm_get.exit.for.body11_crit_edge:     ; preds = %mlxsw_sp_sb_cm_get.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body11

for.end:                                          ; preds = %mlxsw_sp_sb_cm_get.exit
  %inc17 = add i8 %masked_count.0113, 1
  %conv18 = zext i8 %inc17 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %cb_priv.addr.sroa.0.0.extract.shift, i32 %conv18)
  %cmp21 = icmp eq i32 %cb_priv.addr.sroa.0.0.extract.shift, %conv18
  br i1 %cmp21, label %for.end.for.end27_crit_edge, label %for.end.for.inc25_crit_edge

for.end.for.inc25_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc25

for.end.for.end27_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end27

for.inc25:                                        ; preds = %for.end.for.inc25_crit_edge, %if.then6, %for.body.for.inc25_crit_edge
  %masked_count.1 = phi i8 [ %inc, %if.then6 ], [ %inc17, %for.end.for.inc25_crit_edge ], [ %masked_count.0113, %for.body.for.inc25_crit_edge ]
  %rec_index.2 = phi i32 [ %rec_index.0116, %if.then6 ], [ %inc14, %for.end.for.inc25_crit_edge ], [ %rec_index.0116, %for.body.for.inc25_crit_edge ]
  %inc26 = add i16 %local_port.0114, 1
  %conv = zext i16 %inc26 to i32
  %call1 = tail call i32 @mlxsw_core_max_ports(ptr noundef %mlxsw_core) #11
  %cmp = icmp ugt i32 %call1, %conv
  br i1 %cmp, label %for.inc25.for.body_crit_edge, label %for.inc25.for.end27_crit_edge

for.inc25.for.end27_crit_edge:                    ; preds = %for.inc25
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end27

for.inc25.for.body_crit_edge:                     ; preds = %for.inc25
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end27:                                        ; preds = %for.inc25.for.end27_crit_edge, %for.end.for.end27_crit_edge, %entry.for.end27_crit_edge
  %rec_index.3 = phi i32 [ 0, %entry.for.end27_crit_edge ], [ %inc14, %for.end.for.end27_crit_edge ], [ %rec_index.2, %for.inc25.for.end27_crit_edge ]
  %call31122 = tail call i32 @mlxsw_core_max_ports(ptr noundef %mlxsw_core) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %call31122, i32 %conv110)
  %cmp32123 = icmp ugt i32 %call31122, %conv110
  br i1 %cmp32123, label %for.body34.lr.ph, label %for.end27.for.end65_crit_edge

for.end27.for.end65_crit_edge:                    ; preds = %for.end27
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end65

for.body34.lr.ph:                                 ; preds = %for.end27
  %sb.i97 = getelementptr inbounds %struct.mlxsw_sp, ptr %call, i32 0, i32 8
  br label %for.body34

for.body34:                                       ; preds = %for.inc63.for.body34_crit_edge, %for.body34.lr.ph
  %conv30127 = phi i32 [ %conv110, %for.body34.lr.ph ], [ %conv30, %for.inc63.for.body34_crit_edge ]
  %rec_index.4126 = phi i32 [ %rec_index.3, %for.body34.lr.ph ], [ %rec_index.6, %for.inc63.for.body34_crit_edge ]
  %local_port.1125 = phi i16 [ %cb_priv.addr.sroa.3.0.extract.trunc, %for.body34.lr.ph ], [ %inc64, %for.inc63.for.body34_crit_edge ]
  %masked_count.2124 = phi i8 [ 0, %for.body34.lr.ph ], [ %masked_count.3, %for.inc63.for.body34_crit_edge ]
  %9 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %call, align 4
  %arrayidx37 = getelementptr ptr, ptr %10, i32 %conv30127
  %11 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx37, align 4
  %tobool38.not = icmp eq ptr %12, null
  br i1 %tobool38.not, label %for.body34.for.inc63_crit_edge, label %for.body34.for.body44_crit_edge

for.body34.for.body44_crit_edge:                  ; preds = %for.body34
  br label %for.body44

for.body34.for.inc63_crit_edge:                   ; preds = %for.body34
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc63

for.body44:                                       ; preds = %mlxsw_sp_sb_cm_get.exit107.for.body44_crit_edge, %for.body34.for.body44_crit_edge
  %i.1120 = phi i32 [ %inc53, %mlxsw_sp_sb_cm_get.exit107.for.body44_crit_edge ], [ 0, %for.body34.for.body44_crit_edge ]
  %rec_index.5119 = phi i32 [ %inc47, %mlxsw_sp_sb_cm_get.exit107.for.body44_crit_edge ], [ %rec_index.4126, %for.body34.for.body44_crit_edge ]
  %13 = ptrtoint ptr %sb.i97 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sb.i97, align 4
  %ports.i98 = getelementptr inbounds %struct.mlxsw_sp_sb, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %ports.i98 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ports.i98, align 4
  %17 = and i32 %i.1120, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp4.i.i100 = icmp eq i32 %17, 0
  br i1 %cmp4.i.i100, label %for.body44.mlxsw_sp_sb_cm_get.exit107_crit_edge, label %do.end.i101, !prof !259

for.body44.mlxsw_sp_sb_cm_get.exit107_crit_edge:  ; preds = %for.body44
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlxsw_sp_sb_cm_get.exit107

do.end.i101:                                      ; preds = %for.body44
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.49, i32 noundef 168, i32 noundef 9, ptr noundef null) #11
  br label %mlxsw_sp_sb_cm_get.exit107

mlxsw_sp_sb_cm_get.exit107:                       ; preds = %do.end.i101, %for.body44.mlxsw_sp_sb_cm_get.exit107_crit_edge
  %inc47 = add i32 %rec_index.5119, 1
  %occ48 = getelementptr %struct.mlxsw_sp_sb_port, ptr %16, i32 %conv30127, i32 1, i32 %i.1120, i32 3
  %max51 = getelementptr %struct.mlxsw_sp_sb_port, ptr %16, i32 %conv30127, i32 1, i32 %i.1120, i32 3, i32 1
  tail call fastcc void @mlxsw_reg_sbsr_rec_unpack(ptr noundef %sbsr_pl, i32 noundef %rec_index.5119, ptr noundef %occ48, ptr noundef %max51)
  %inc53 = add nuw nsw i32 %i.1120, 1
  %exitcond128.not = icmp eq i32 %inc53, 16
  br i1 %exitcond128.not, label %for.end54, label %mlxsw_sp_sb_cm_get.exit107.for.body44_crit_edge

mlxsw_sp_sb_cm_get.exit107.for.body44_crit_edge:  ; preds = %mlxsw_sp_sb_cm_get.exit107
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body44

for.end54:                                        ; preds = %mlxsw_sp_sb_cm_get.exit107
  %inc55 = add i8 %masked_count.2124, 1
  %conv56 = zext i8 %inc55 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %cb_priv.addr.sroa.0.0.extract.shift, i32 %conv56)
  %cmp59 = icmp eq i32 %cb_priv.addr.sroa.0.0.extract.shift, %conv56
  br i1 %cmp59, label %for.end54.for.end65_crit_edge, label %for.end54.for.inc63_crit_edge

for.end54.for.inc63_crit_edge:                    ; preds = %for.end54
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc63

for.end54.for.end65_crit_edge:                    ; preds = %for.end54
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end65

for.inc63:                                        ; preds = %for.end54.for.inc63_crit_edge, %for.body34.for.inc63_crit_edge
  %masked_count.3 = phi i8 [ %inc55, %for.end54.for.inc63_crit_edge ], [ %masked_count.2124, %for.body34.for.inc63_crit_edge ]
  %rec_index.6 = phi i32 [ %inc47, %for.end54.for.inc63_crit_edge ], [ %rec_index.4126, %for.body34.for.inc63_crit_edge ]
  %inc64 = add i16 %local_port.1125, 1
  %conv30 = zext i16 %inc64 to i32
  %call31 = tail call i32 @mlxsw_core_max_ports(ptr noundef %mlxsw_core) #11
  %cmp32 = icmp ugt i32 %call31, %conv30
  br i1 %cmp32, label %for.inc63.for.body34_crit_edge, label %for.inc63.for.end65_crit_edge

for.inc63.for.end65_crit_edge:                    ; preds = %for.inc63
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end65

for.inc63.for.body34_crit_edge:                   ; preds = %for.inc63
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body34

for.end65:                                        ; preds = %for.inc63.for.end65_crit_edge, %for.end54.for.end65_crit_edge, %for.end27.for.end65_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_reg_trans_bulk_wait(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlxsw_sp_sb_occ_max_clear(ptr noundef %mlxsw_core, i32 noundef %sb_index) local_unnamed_addr #3 align 64 {
entry:
  %sbpm_pl.i = alloca [40 x i8], align 1
  %bulk_list = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @mlxsw_core_driver_priv(ptr noundef %mlxsw_core) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %bulk_list) #11
  %0 = getelementptr inbounds %struct.list_head, ptr %bulk_list, i32 0, i32 1
  %1 = ptrtoint ptr %bulk_list to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %bulk_list, ptr %bulk_list, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %bulk_list, ptr %0, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3264, i32 noundef 1052) #14
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %next_batch.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

next_batch.preheader:                             ; preds = %entry
  %4 = call ptr @memset(ptr %call7.i, i32 0, i32 1052)
  %sb_vals = getelementptr inbounds %struct.mlxsw_sp, ptr %call, i32 0, i32 34
  %core.i = getelementptr inbounds %struct.mlxsw_sp, ptr %call, i32 0, i32 1
  %arrayidx.i.i = getelementptr i32, ptr %call7.i, i32 1
  %arrayidx.i.i123.peel = getelementptr i8, ptr %call7.i, i32 51
  %arrayidx.i.i123 = getelementptr i8, ptr %call7.i, i32 51
  %arrayidx.i.i123.6 = getelementptr i8, ptr %call7.i, i32 51
  %arrayidx.i.i156.peel = getelementptr i8, ptr %call7.i, i32 91
  br label %mlxsw_reg_sbsr_pack.exit

next_batch:                                       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #13
  %inc64 = add i16 %local_port.1251, 1
  %5 = call ptr @memset(ptr %call7.i, i32 0, i32 1052)
  br label %mlxsw_reg_sbsr_pack.exit

mlxsw_reg_sbsr_pack.exit:                         ; preds = %next_batch, %next_batch.preheader
  %current_page.0298 = phi i8 [ 0, %next_batch.preheader ], [ %current_page.1, %next_batch ]
  %local_port.0297 = phi i16 [ 0, %next_batch.preheader ], [ %inc64, %next_batch ]
  %6 = ptrtoint ptr %call7.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %call7.i, align 8
  %or.i.i.i = or i32 %7, -2147483648
  store i32 %or.i.i.i, ptr %call7.i, align 8
  %conv = zext i8 %current_page.0298 to i32
  %and6.i.i = and i32 %conv, 15
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i.i, align 4
  %and7.i.i = and i32 %9, -16
  %or.i.i = or i32 %and6.i.i, %and7.i.i
  store i32 %or.i.i, ptr %arrayidx.i.i, align 4
  %10 = shl nuw nsw i32 %conv, 8
  %conv3 = or i32 %10, 255
  %11 = ptrtoint ptr %arrayidx.i.i123.peel to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx.i.i123.peel, align 1
  %conv18.i.i.peel = or i8 %12, 1
  store i8 %conv18.i.i.peel, ptr %arrayidx.i.i123.peel, align 1
  %13 = ptrtoint ptr %arrayidx.i.i123 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx.i.i123, align 1
  %conv18.i.i.6 = or i8 %14, -2
  %15 = ptrtoint ptr %arrayidx.i.i123.6 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv18.i.i.6, ptr %arrayidx.i.i123.6, align 1
  %16 = ptrtoint ptr %arrayidx.i.i156.peel to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx.i.i156.peel, align 1
  %conv18.i.i158.peel = or i8 %17, 1
  store i8 %conv18.i.i158.peel, ptr %arrayidx.i.i156.peel, align 1
  br label %mlxsw_reg_sbsr_tclass_mask_set.exit

for.cond14.preheader:                             ; preds = %mlxsw_reg_sbsr_tclass_mask_set.exit
  %conv15282 = zext i16 %local_port.0297 to i32
  %call16283 = call i32 @mlxsw_core_max_ports(ptr noundef %mlxsw_core) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %call16283, i32 %conv15282)
  %cmp17284 = icmp ugt i32 %call16283, %conv15282
  br i1 %cmp17284, label %for.cond14.preheader.for.body19_crit_edge, label %for.cond14.preheader.do_query_crit_edge

for.cond14.preheader.do_query_crit_edge:          ; preds = %for.cond14.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %do_query

for.cond14.preheader.for.body19_crit_edge:        ; preds = %for.cond14.preheader
  br label %for.body19

mlxsw_reg_sbsr_tclass_mask_set.exit:              ; preds = %mlxsw_reg_sbsr_tclass_mask_set.exit.mlxsw_reg_sbsr_tclass_mask_set.exit_crit_edge, %mlxsw_reg_sbsr_pack.exit
  %i.1279 = phi i32 [ %inc12, %mlxsw_reg_sbsr_tclass_mask_set.exit.mlxsw_reg_sbsr_tclass_mask_set.exit_crit_edge ], [ 1, %mlxsw_reg_sbsr_pack.exit ]
  %rem5076.i.i.i146 = and i32 %i.1279, 7
  %18 = trunc i32 %i.1279 to i16
  %19 = sub i16 63, %18
  %20 = lshr i16 %19, 3
  %conv60.i.i.i148 = add nuw nsw i16 %20, 84
  %shl.i.i152 = shl i32 1, %rem5076.i.i.i146
  %and10.i.i154 = shl i32 1, %rem5076.i.i.i146
  %idxprom.i.i155 = zext i16 %conv60.i.i.i148 to i32
  %arrayidx.i.i156 = getelementptr i8, ptr %call7.i, i32 %idxprom.i.i155
  %21 = ptrtoint ptr %arrayidx.i.i156 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx.i.i156, align 1
  %23 = trunc i32 %shl.i.i152 to i8
  %24 = xor i8 %23, -1
  %conv15.i.i157 = and i8 %22, %24
  %25 = trunc i32 %and10.i.i154 to i8
  %conv18.i.i158 = or i8 %conv15.i.i157, %25
  store i8 %conv18.i.i158, ptr %arrayidx.i.i156, align 1
  %inc12 = add nuw nsw i32 %i.1279, 1
  %exitcond340.not = icmp eq i32 %inc12, 16
  br i1 %exitcond340.not, label %for.cond14.preheader, label %mlxsw_reg_sbsr_tclass_mask_set.exit.mlxsw_reg_sbsr_tclass_mask_set.exit_crit_edge, !llvm.loop !263

mlxsw_reg_sbsr_tclass_mask_set.exit.mlxsw_reg_sbsr_tclass_mask_set.exit_crit_edge: ; preds = %mlxsw_reg_sbsr_tclass_mask_set.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlxsw_reg_sbsr_tclass_mask_set.exit

for.body19:                                       ; preds = %for.inc52.for.body19_crit_edge, %for.cond14.preheader.for.body19_crit_edge
  %conv15288 = phi i32 [ %conv15, %for.inc52.for.body19_crit_edge ], [ %conv15282, %for.cond14.preheader.for.body19_crit_edge ]
  %masked_count.0287 = phi i32 [ %masked_count.1, %for.inc52.for.body19_crit_edge ], [ 0, %for.cond14.preheader.for.body19_crit_edge ]
  %local_port.1285 = phi i16 [ %inc53, %for.inc52.for.body19_crit_edge ], [ %local_port.0297, %for.cond14.preheader.for.body19_crit_edge ]
  %26 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %call, align 4
  %arrayidx = getelementptr ptr, ptr %27, i32 %conv15288
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx, align 4
  %tobool20.not = icmp eq ptr %29, null
  br i1 %tobool20.not, label %for.body19.for.inc52_crit_edge, label %if.end22

for.body19.for.inc52_crit_edge:                   ; preds = %for.body19
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc52

if.end22:                                         ; preds = %for.body19
  call void @__sanitizer_cov_trace_cmp4(i32 %conv3, i32 %conv15288)
  %cmp25 = icmp ult i32 %conv3, %conv15288
  br i1 %cmp25, label %if.then27, label %if.end29

if.then27:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  %inc28 = add i8 %current_page.0298, 1
  br label %do_query

if.end29:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %local_port.1285)
  %cmp31.not = icmp eq i16 %local_port.1285, 0
  br i1 %cmp31.not, label %if.end29.mlxsw_reg_sbsr_egress_port_mask_set.exit_crit_edge, label %land.rhs.i.i.i196

if.end29.mlxsw_reg_sbsr_egress_port_mask_set.exit_crit_edge: ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlxsw_reg_sbsr_egress_port_mask_set.exit

land.rhs.i.i.i196:                                ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  %conv41.i.i.i176 = sub i16 255, %local_port.1285
  %30 = lshr i16 %conv41.i.i.i176, 3
  %31 = and i16 %local_port.1285, 7
  %32 = trunc i16 %31 to i8
  %conv60.i.i.i183 = add nuw nsw i16 %30, 16
  %shl.i.i187 = shl i16 1, %31
  %and10.i.i189 = shl i8 1, %32
  %idxprom.i.i190 = zext i16 %conv60.i.i.i183 to i32
  %arrayidx.i.i191 = getelementptr i8, ptr %call7.i, i32 %idxprom.i.i190
  %33 = ptrtoint ptr %arrayidx.i.i191 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx.i.i191, align 1
  %35 = trunc i16 %shl.i.i187 to i8
  %36 = xor i8 %35, -1
  %conv15.i.i192 = and i8 %34, %36
  %conv18.i.i193 = or i8 %conv15.i.i192, %and10.i.i189
  store i8 %conv18.i.i193, ptr %arrayidx.i.i191, align 1
  br label %mlxsw_reg_sbsr_egress_port_mask_set.exit

mlxsw_reg_sbsr_egress_port_mask_set.exit:         ; preds = %land.rhs.i.i.i196, %if.end29.mlxsw_reg_sbsr_egress_port_mask_set.exit_crit_edge
  %conv41.i.i.i211 = sub i16 255, %local_port.1285
  %37 = lshr i16 %conv41.i.i.i211, 3
  %38 = and i16 %local_port.1285, 7
  %39 = trunc i16 %38 to i8
  %conv60.i.i.i218 = add nuw nsw i16 %37, 52
  %shl.i.i222 = shl i16 1, %38
  %and10.i.i224 = shl i8 1, %39
  %idxprom.i.i225 = zext i16 %conv60.i.i.i218 to i32
  %arrayidx.i.i226 = getelementptr i8, ptr %call7.i, i32 %idxprom.i.i225
  %40 = ptrtoint ptr %arrayidx.i.i226 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx.i.i226, align 1
  %42 = trunc i16 %shl.i.i222 to i8
  %43 = xor i8 %42, -1
  %conv15.i.i227 = and i8 %41, %43
  %conv18.i.i228 = or i8 %conv15.i.i227, %and10.i.i224
  store i8 %conv18.i.i228, ptr %arrayidx.i.i226, align 1
  %44 = ptrtoint ptr %sb_vals to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %sb_vals, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %45, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp36280.not = icmp eq i32 %47, 0
  br i1 %cmp36280.not, label %mlxsw_reg_sbsr_egress_port_mask_set.exit.for.end46_crit_edge, label %mlxsw_reg_sbsr_egress_port_mask_set.exit.for.body38_crit_edge

mlxsw_reg_sbsr_egress_port_mask_set.exit.for.body38_crit_edge: ; preds = %mlxsw_reg_sbsr_egress_port_mask_set.exit
  br label %for.body38

mlxsw_reg_sbsr_egress_port_mask_set.exit.for.end46_crit_edge: ; preds = %mlxsw_reg_sbsr_egress_port_mask_set.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end46

for.body38:                                       ; preds = %for.inc44.for.body38_crit_edge, %mlxsw_reg_sbsr_egress_port_mask_set.exit.for.body38_crit_edge
  %48 = phi ptr [ %61, %for.inc44.for.body38_crit_edge ], [ %45, %mlxsw_reg_sbsr_egress_port_mask_set.exit.for.body38_crit_edge ]
  %i.2281 = phi i32 [ %inc45, %for.inc44.for.body38_crit_edge ], [ 0, %mlxsw_reg_sbsr_egress_port_mask_set.exit.for.body38_crit_edge ]
  %pool_dess.i = getelementptr inbounds %struct.mlxsw_sp_sb_vals, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %pool_dess.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %pool_dess.i, align 4
  %idxprom.i = and i32 %i.2281, 65535
  %arrayidx.i = getelementptr %struct.mlxsw_sp_sb_pool_des, ptr %50, i32 %idxprom.i
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %sbpm_pl.i) #11
  %51 = call ptr @memset(ptr %sbpm_pl.i, i32 255, i32 40)
  br i1 %cmp31.not, label %land.lhs.true.i, label %for.body38.mlxsw_sp_sb_pm_occ_clear.exit_crit_edge

for.body38.mlxsw_sp_sb_pm_occ_clear.exit_crit_edge: ; preds = %for.body38
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlxsw_sp_sb_pm_occ_clear.exit

land.lhs.true.i:                                  ; preds = %for.body38
  %52 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp2.i = icmp eq i32 %53, 0
  br i1 %cmp2.i, label %mlxsw_sp_sb_pm_occ_clear.exit.thread, label %land.lhs.true.i.mlxsw_sp_sb_pm_occ_clear.exit_crit_edge

land.lhs.true.i.mlxsw_sp_sb_pm_occ_clear.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlxsw_sp_sb_pm_occ_clear.exit

mlxsw_sp_sb_pm_occ_clear.exit.thread:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %sbpm_pl.i) #11
  br label %for.inc44

mlxsw_sp_sb_pm_occ_clear.exit:                    ; preds = %land.lhs.true.i.mlxsw_sp_sb_pm_occ_clear.exit_crit_edge, %for.body38.mlxsw_sp_sb_pm_occ_clear.exit_crit_edge
  %pool.i = getelementptr %struct.mlxsw_sp_sb_pool_des, ptr %50, i32 %idxprom.i, i32 1
  %54 = ptrtoint ptr %pool.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %pool.i, align 4
  %56 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx.i, align 4
  call fastcc void @mlxsw_reg_sbpm_pack(ptr noundef nonnull %sbpm_pl.i, i16 noundef zeroext %local_port.1285, i8 noundef zeroext %55, i32 noundef %57, i1 noundef zeroext true, i32 noundef 0, i32 noundef 0) #11
  %58 = ptrtoint ptr %core.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %core.i, align 4
  %call.i = call i32 @mlxsw_reg_trans_query(ptr noundef %59, ptr noundef nonnull @mlxsw_reg_sbpm, ptr noundef nonnull %sbpm_pl.i, ptr noundef nonnull %bulk_list, ptr noundef null, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %sbpm_pl.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool41.not = icmp eq i32 %call.i, 0
  br i1 %tobool41.not, label %mlxsw_sp_sb_pm_occ_clear.exit.for.inc44_crit_edge, label %mlxsw_sp_sb_pm_occ_clear.exit.out.thread_crit_edge

mlxsw_sp_sb_pm_occ_clear.exit.out.thread_crit_edge: ; preds = %mlxsw_sp_sb_pm_occ_clear.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.thread

mlxsw_sp_sb_pm_occ_clear.exit.for.inc44_crit_edge: ; preds = %mlxsw_sp_sb_pm_occ_clear.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc44

for.inc44:                                        ; preds = %mlxsw_sp_sb_pm_occ_clear.exit.for.inc44_crit_edge, %mlxsw_sp_sb_pm_occ_clear.exit.thread
  %inc45 = add nuw i32 %i.2281, 1
  %60 = ptrtoint ptr %sb_vals to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %sb_vals, align 4
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %61, align 4
  %cmp36 = icmp ult i32 %inc45, %63
  br i1 %cmp36, label %for.inc44.for.body38_crit_edge, label %for.inc44.for.end46_crit_edge

for.inc44.for.end46_crit_edge:                    ; preds = %for.inc44
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end46

for.inc44.for.body38_crit_edge:                   ; preds = %for.inc44
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body38

for.end46:                                        ; preds = %for.inc44.for.end46_crit_edge, %mlxsw_reg_sbsr_egress_port_mask_set.exit.for.end46_crit_edge
  %inc47 = add i32 %masked_count.0287, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %inc47)
  %cmp48 = icmp eq i32 %inc47, 5
  br i1 %cmp48, label %for.end46.do_query_crit_edge, label %for.end46.for.inc52_crit_edge

for.end46.for.inc52_crit_edge:                    ; preds = %for.end46
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc52

for.end46.do_query_crit_edge:                     ; preds = %for.end46
  call void @__sanitizer_cov_trace_pc() #13
  br label %do_query

for.inc52:                                        ; preds = %for.end46.for.inc52_crit_edge, %for.body19.for.inc52_crit_edge
  %masked_count.1 = phi i32 [ %inc47, %for.end46.for.inc52_crit_edge ], [ %masked_count.0287, %for.body19.for.inc52_crit_edge ]
  %inc53 = add i16 %local_port.1285, 1
  %conv15 = zext i16 %inc53 to i32
  %call16 = call i32 @mlxsw_core_max_ports(ptr noundef %mlxsw_core) #11
  %cmp17 = icmp ugt i32 %call16, %conv15
  br i1 %cmp17, label %for.inc52.for.body19_crit_edge, label %for.inc52.do_query_crit_edge

for.inc52.do_query_crit_edge:                     ; preds = %for.inc52
  call void @__sanitizer_cov_trace_pc() #13
  br label %do_query

for.inc52.for.body19_crit_edge:                   ; preds = %for.inc52
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body19

do_query:                                         ; preds = %for.inc52.do_query_crit_edge, %for.end46.do_query_crit_edge, %if.then27, %for.cond14.preheader.do_query_crit_edge
  %local_port.1251 = phi i16 [ %local_port.1285, %if.then27 ], [ %local_port.0297, %for.cond14.preheader.do_query_crit_edge ], [ %local_port.1285, %for.end46.do_query_crit_edge ], [ %inc53, %for.inc52.do_query_crit_edge ]
  %conv15244 = phi i32 [ %conv15288, %if.then27 ], [ %conv15282, %for.cond14.preheader.do_query_crit_edge ], [ %conv15288, %for.end46.do_query_crit_edge ], [ %conv15, %for.inc52.do_query_crit_edge ]
  %current_page.1 = phi i8 [ %inc28, %if.then27 ], [ %current_page.0298, %for.cond14.preheader.do_query_crit_edge ], [ %current_page.0298, %for.inc52.do_query_crit_edge ], [ %current_page.0298, %for.end46.do_query_crit_edge ]
  %call55 = call i32 @mlxsw_reg_trans_query(ptr noundef %mlxsw_core, ptr noundef nonnull @mlxsw_reg_sbsr, ptr noundef nonnull %call7.i, ptr noundef nonnull %bulk_list, ptr noundef null, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.end58, label %do_query.out.thread_crit_edge

do_query.out.thread_crit_edge:                    ; preds = %do_query
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.thread

if.end58:                                         ; preds = %do_query
  %call60 = call i32 @mlxsw_core_max_ports(ptr noundef %mlxsw_core) #11
  %cmp61 = icmp ugt i32 %call60, %conv15244
  br i1 %cmp61, label %next_batch, label %64

out.thread:                                       ; preds = %do_query.out.thread_crit_edge, %mlxsw_sp_sb_pm_occ_clear.exit.out.thread_crit_edge
  %err.0.ph = phi i32 [ %call.i, %mlxsw_sp_sb_pm_occ_clear.exit.out.thread_crit_edge ], [ %call55, %do_query.out.thread_crit_edge ]
  %call66232 = call i32 @mlxsw_reg_trans_bulk_wait(ptr noundef nonnull %bulk_list) #11
  br label %65

64:                                               ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #13
  %call66 = call i32 @mlxsw_reg_trans_bulk_wait(ptr noundef nonnull %bulk_list) #11
  br label %65

65:                                               ; preds = %64, %out.thread
  %66 = phi i32 [ %call66, %64 ], [ %err.0.ph, %out.thread ]
  call void @kfree(ptr noundef nonnull %call7.i) #11
  br label %cleanup

cleanup:                                          ; preds = %65, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %66, %65 ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %bulk_list) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlxsw_sp_sb_occ_port_pool_get(ptr noundef %mlxsw_core_port, i32 noundef %sb_index, i16 noundef zeroext %pool_index, ptr nocapture noundef writeonly %p_cur, ptr nocapture noundef writeonly %p_max) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @mlxsw_core_port_driver_priv(ptr noundef %mlxsw_core_port) #11
  %mlxsw_sp1 = getelementptr inbounds %struct.mlxsw_sp_port, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %mlxsw_sp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mlxsw_sp1, align 8
  %local_port2 = getelementptr inbounds %struct.mlxsw_sp_port, ptr %call, i32 0, i32 3
  %2 = ptrtoint ptr %local_port2 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %local_port2, align 4
  %sb.i = getelementptr inbounds %struct.mlxsw_sp, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %sb.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sb.i, align 4
  %ports.i = getelementptr inbounds %struct.mlxsw_sp_sb, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ports.i, align 4
  %idxprom.i = zext i16 %3 to i32
  %pms.i = getelementptr %struct.mlxsw_sp_sb_port, ptr %7, i32 %idxprom.i, i32 2
  %8 = ptrtoint ptr %pms.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pms.i, align 4
  %idxprom1.i = zext i16 %pool_index to i32
  %occ = getelementptr %struct.mlxsw_sp_sb_pm, ptr %9, i32 %idxprom1.i, i32 2
  %10 = ptrtoint ptr %occ to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %occ, align 4
  %cell_size.i = getelementptr inbounds %struct.mlxsw_sp_sb, ptr %5, i32 0, i32 2
  %12 = ptrtoint ptr %cell_size.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cell_size.i, align 8
  %mul.i = mul i32 %13, %11
  %14 = ptrtoint ptr %p_cur to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %mul.i, ptr %p_cur, align 4
  %max = getelementptr %struct.mlxsw_sp_sb_pm, ptr %9, i32 %idxprom1.i, i32 2, i32 1
  %15 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %max, align 4
  %17 = load ptr, ptr %sb.i, align 4
  %cell_size.i13 = getelementptr inbounds %struct.mlxsw_sp_sb, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %cell_size.i13 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cell_size.i13, align 8
  %mul.i14 = mul i32 %19, %16
  %20 = ptrtoint ptr %p_max to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %mul.i14, ptr %p_max, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlxsw_sp_sb_occ_tc_port_bind_get(ptr noundef %mlxsw_core_port, i32 noundef %sb_index, i16 noundef zeroext %tc_index, i32 noundef %pool_type, ptr nocapture noundef writeonly %p_cur, ptr nocapture noundef writeonly %p_max) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @mlxsw_core_port_driver_priv(ptr noundef %mlxsw_core_port) #11
  %mlxsw_sp1 = getelementptr inbounds %struct.mlxsw_sp_port, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %mlxsw_sp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mlxsw_sp1, align 8
  %local_port2 = getelementptr inbounds %struct.mlxsw_sp_port, ptr %call, i32 0, i32 3
  %2 = ptrtoint ptr %local_port2 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %local_port2, align 4
  %conv = trunc i16 %tc_index to i8
  %sb.i = getelementptr inbounds %struct.mlxsw_sp, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %sb.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sb.i, align 4
  %ports.i = getelementptr inbounds %struct.mlxsw_sp_sb, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ports.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pool_type)
  %cmp.i.i = icmp eq i32 %pool_type, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %conv)
  %cmp1.i.i = icmp ult i8 %conv, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %conv)
  %cmp4.i.i = icmp ult i8 %conv, 16
  %retval.0.i.i = select i1 %cmp.i.i, i1 %cmp1.i.i, i1 %cmp4.i.i
  br i1 %retval.0.i.i, label %entry.mlxsw_sp_sb_cm_get.exit_crit_edge, label %do.end.i, !prof !259

entry.mlxsw_sp_sb_cm_get.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlxsw_sp_sb_cm_get.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.49, i32 noundef 168, i32 noundef 9, ptr noundef null) #11
  br label %mlxsw_sp_sb_cm_get.exit

mlxsw_sp_sb_cm_get.exit:                          ; preds = %do.end.i, %entry.mlxsw_sp_sb_cm_get.exit_crit_edge
  %idxprom.i = zext i16 %3 to i32
  %arrayidx.i = getelementptr %struct.mlxsw_sp_sb_port, ptr %7, i32 %idxprom.i
  %conv.mask = and i16 %tc_index, 255
  %idxprom21.i = zext i16 %conv.mask to i32
  %arrayidx22.i = getelementptr [8 x %struct.mlxsw_sp_sb_cm], ptr %arrayidx.i, i32 0, i32 %idxprom21.i
  %arrayidx24.i = getelementptr %struct.mlxsw_sp_sb_port, ptr %7, i32 %idxprom.i, i32 1, i32 %idxprom21.i
  %retval.0.i = select i1 %cmp.i.i, ptr %arrayidx22.i, ptr %arrayidx24.i
  %occ = getelementptr inbounds %struct.mlxsw_sp_sb_cm, ptr %retval.0.i, i32 0, i32 3
  %8 = ptrtoint ptr %occ to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %occ, align 4
  %10 = ptrtoint ptr %sb.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sb.i, align 4
  %cell_size.i = getelementptr inbounds %struct.mlxsw_sp_sb, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %cell_size.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cell_size.i, align 8
  %mul.i = mul i32 %13, %9
  %14 = ptrtoint ptr %p_cur to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %mul.i, ptr %p_cur, align 4
  %max = getelementptr inbounds %struct.mlxsw_sp_sb_cm, ptr %retval.0.i, i32 0, i32 3, i32 1
  %15 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %max, align 4
  %17 = load ptr, ptr %sb.i, align 4
  %cell_size.i13 = getelementptr inbounds %struct.mlxsw_sp_sb, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %cell_size.i13 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cell_size.i13, align 8
  %mul.i14 = mul i32 %19, %16
  %20 = ptrtoint ptr %p_max to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %mul.i14, ptr %p_max, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlxsw_sp_hdroom_configure_buffers(ptr nocapture noundef readonly %mlxsw_sp_port, ptr nocapture noundef readonly %hdroom, i1 noundef zeroext %force) unnamed_addr #3 align 64 {
entry:
  %pbmc_pl = alloca [108 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mlxsw_sp1 = getelementptr inbounds %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 2
  %0 = ptrtoint ptr %mlxsw_sp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mlxsw_sp1, align 8
  call void @llvm.lifetime.start.p0(i64 108, ptr nonnull %pbmc_pl) #11
  %hdroom2 = getelementptr inbounds %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 20
  %2 = ptrtoint ptr %hdroom2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hdroom2, align 8
  %bufs = getelementptr inbounds %struct.mlxsw_sp_hdroom, ptr %3, i32 0, i32 2
  %bufs3 = getelementptr inbounds %struct.mlxsw_sp_hdroom, ptr %hdroom, i32 0, i32 2
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(160) %bufs, ptr noundef dereferenceable(160) %bufs3, i32 160) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool.not = icmp ne i32 %bcmp, 0
  %brmerge = or i1 %tobool.not, %force
  br i1 %brmerge, label %if.end, label %entry.cleanup24_crit_edge

entry.cleanup24_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup24

if.end:                                           ; preds = %entry
  %local_port = getelementptr inbounds %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 3
  %4 = ptrtoint ptr %local_port to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %local_port, align 4
  %6 = call ptr @memset(ptr %pbmc_pl, i32 0, i32 108)
  %conv1.i = zext i16 %5 to i32
  %and.i.i = shl nuw i32 %conv1.i, 16
  %spec.select.i.i.i = and i32 %and.i.i, 16711680
  %7 = ptrtoint ptr %pbmc_pl to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pbmc_pl, align 4
  %and7.i.i.i = and i32 %8, -16723969
  %or.i.i.i = or i32 %spec.select.i.i.i, %and7.i.i.i
  %9 = shl nuw nsw i32 %conv1.i, 4
  %and6.i28.i.i = and i32 %9, 12288
  %or.i32.i.i = or i32 %and6.i28.i.i, %or.i.i.i
  store i32 %or.i32.i.i, ptr %pbmc_pl, align 4
  %arrayidx.i.i53.i = getelementptr inbounds i32, ptr %pbmc_pl, i32 1
  %10 = ptrtoint ptr %arrayidx.i.i53.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -32769, ptr %arrayidx.i.i53.i, align 4
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %if.end
  %i.065 = phi i32 [ 0, %if.end ], [ %inc, %cleanup.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %i.065)
  %cmp9 = icmp eq i32 %i.065, 8
  br i1 %cmp9, label %for.body.cleanup_crit_edge, label %if.end11

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end11:                                         ; preds = %for.body
  %size_cells = getelementptr [10 x %struct.mlxsw_sp_hdroom_buf], ptr %bufs3, i32 0, i32 %i.065, i32 1
  %11 = ptrtoint ptr %size_cells to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %size_cells, align 4
  %lossy = getelementptr [10 x %struct.mlxsw_sp_hdroom_buf], ptr %bufs3, i32 0, i32 %i.065, i32 3
  %13 = ptrtoint ptr %lossy to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %lossy, align 4, !range !257
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool14.not = icmp eq i8 %14, 0
  br i1 %tobool14.not, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  %conv = trunc i32 %12 to i16
  call fastcc void @mlxsw_reg_pbmc_lossy_buffer_pack(ptr noundef nonnull %pbmc_pl, i32 noundef %i.065, i16 noundef zeroext %conv) #11
  br label %cleanup

if.else.i:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx = getelementptr [10 x %struct.mlxsw_sp_hdroom_buf], ptr %bufs3, i32 0, i32 %i.065
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx, align 4
  %mul.i.i.i.i.i = shl nsw i32 %i.065, 3
  %add.i.i.i.i.i = add nuw nsw i32 %mul.i.i.i.i.i, 12
  %div1.i.i.i.i.i = lshr exact i32 %add.i.i.i.i.i, 2
  %arrayidx.i.i.i.i = getelementptr i32, ptr %pbmc_pl, i32 %div1.i.i.i.i.i
  %17 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %and7.i.i.i.i = and i32 %18, -33554433
  store i32 %and7.i.i.i.i, ptr %arrayidx.i.i.i.i, align 4
  %mul.i.i.i38.i.i = shl nsw i32 %i.065, 3
  %add.i.i.i39.i.i = add nuw nsw i32 %mul.i.i.i38.i.i, 12
  %div1.i.i.i41.i.i = lshr exact i32 %add.i.i.i39.i.i, 2
  %arrayidx.i.i47.i.i = getelementptr i32, ptr %pbmc_pl, i32 %div1.i.i.i41.i.i
  %19 = ptrtoint ptr %arrayidx.i.i47.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.i.i47.i.i, align 4
  %and7.i.i49.i.i = and i32 %20, -16777217
  store i32 %and7.i.i49.i.i, ptr %arrayidx.i.i47.i.i, align 4
  %conv3.i.i = and i32 %12, 65535
  %mul.i.i.i71.i.i = shl nsw i32 %i.065, 3
  %add.i.i.i72.i.i = add nuw nsw i32 %mul.i.i.i71.i.i, 12
  %div1.i.i.i74.i.i = lshr exact i32 %add.i.i.i72.i.i, 2
  %arrayidx.i.i82.i.i = getelementptr i32, ptr %pbmc_pl, i32 %div1.i.i.i74.i.i
  %21 = ptrtoint ptr %arrayidx.i.i82.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.i.i82.i.i, align 4
  %and7.i.i84.i.i = and i32 %22, -65536
  %or.i.i.i.i = or i32 %conv3.i.i, %and7.i.i84.i.i
  store i32 %or.i.i.i.i, ptr %arrayidx.i.i82.i.i, align 4
  %conv5.i.i = and i32 %16, 65535
  %mul.i.i.i106.i.i = shl nsw i32 %i.065, 3
  %add42.i.i.i108.i.i = add nuw i32 %mul.i.i.i106.i.i, 16
  %div1.i.i.i109.i.i = lshr exact i32 %add42.i.i.i108.i.i, 2
  %spec.select.i.i113.i.i = shl i32 %16, 16
  %arrayidx.i.i119.i.i = getelementptr i32, ptr %pbmc_pl, i32 %div1.i.i.i109.i.i
  %23 = ptrtoint ptr %arrayidx.i.i119.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.i.i119.i.i, align 4
  %and7.i.i121.i.i = and i32 %24, 65535
  %or.i.i122.i.i = or i32 %spec.select.i.i113.i.i, %and7.i.i121.i.i
  store i32 %or.i.i122.i.i, ptr %arrayidx.i.i119.i.i, align 4
  %mul.i.i.i144.i.i = shl nsw i32 %i.065, 3
  %add42.i.i.i146.i.i = add nuw i32 %mul.i.i.i144.i.i, 16
  %div1.i.i.i147.i.i = lshr exact i32 %add42.i.i.i146.i.i, 2
  %arrayidx.i.i157.i.i = getelementptr i32, ptr %pbmc_pl, i32 %div1.i.i.i147.i.i
  %25 = ptrtoint ptr %arrayidx.i.i157.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx.i.i157.i.i, align 4
  %and7.i.i159.i.i = and i32 %26, -65536
  %or.i.i160.i.i = or i32 %conv5.i.i, %and7.i.i159.i.i
  store i32 %or.i.i160.i.i, ptr %arrayidx.i.i157.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else.i, %if.then.i, %for.body.cleanup_crit_edge
  %inc = add nuw nsw i32 %i.065, 1
  %exitcond.not = icmp eq i32 %inc, 10
  br i1 %exitcond.not, label %for.end, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %cleanup
  call fastcc void @mlxsw_reg_pbmc_lossy_buffer_pack(ptr noundef nonnull %pbmc_pl, i32 noundef 11, i16 noundef zeroext 0)
  %core = getelementptr inbounds %struct.mlxsw_sp, ptr %1, i32 0, i32 1
  %27 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %core, align 4
  %call17 = call i32 @mlxsw_reg_write(ptr noundef %28, ptr noundef nonnull @mlxsw_reg_pbmc, ptr noundef nonnull %pbmc_pl) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %for.end.cleanup24_crit_edge

for.end.cleanup24_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup24

if.end20:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %29 = ptrtoint ptr %hdroom2 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hdroom2, align 8
  %bufs22 = getelementptr inbounds %struct.mlxsw_sp_hdroom, ptr %30, i32 0, i32 2
  %31 = call ptr @memcpy(ptr %bufs22, ptr %bufs3, i32 160)
  br label %cleanup24

cleanup24:                                        ; preds = %if.end20, %for.end.cleanup24_crit_edge, %entry.cleanup24_crit_edge
  %retval.0 = phi i32 [ 0, %if.end20 ], [ 0, %entry.cleanup24_crit_edge ], [ %call17, %for.end.cleanup24_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 108, ptr nonnull %pbmc_pl) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlxsw_sp_hdroom_configure_priomap(ptr nocapture noundef readonly %mlxsw_sp_port, ptr nocapture noundef readonly %hdroom, i1 noundef zeroext %force) unnamed_addr #3 align 64 {
entry:
  %pptb_pl = alloca [16 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pptb_pl) #11
  %hdroom1 = getelementptr inbounds %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 20
  %0 = ptrtoint ptr %hdroom1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdroom1, align 8
  %prios = getelementptr inbounds %struct.mlxsw_sp_hdroom, ptr %1, i32 0, i32 1
  %prios2 = getelementptr inbounds %struct.mlxsw_sp_hdroom, ptr %hdroom, i32 0, i32 1
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(32) %prios, ptr noundef dereferenceable(32) %prios2, i32 32) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool.not = icmp ne i32 %bcmp, 0
  %brmerge = or i1 %tobool.not, %force
  br i1 %brmerge, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %local_port = getelementptr inbounds %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 3
  %2 = ptrtoint ptr %local_port to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %local_port, align 4
  %4 = call ptr @memset(ptr %pptb_pl, i32 0, i32 16)
  %5 = ptrtoint ptr %pptb_pl to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pptb_pl, align 4
  %conv1.i = zext i16 %3 to i32
  %and.i.i = shl nuw i32 %conv1.i, 16
  %spec.select.i.i.i = and i32 %and.i.i, 16711680
  %and7.i.i28.i = and i32 %6, -822030592
  %or.i.i.i = or i32 %spec.select.i.i.i, %and7.i.i28.i
  %7 = shl nuw nsw i32 %conv1.i, 4
  %and6.i28.i.i = and i32 %7, 12288
  %or.i32.i.i = or i32 %and6.i28.i.i, %or.i.i.i
  %or.i.i55.i = or i32 %or.i32.i.i, 255
  store i32 %or.i.i55.i, ptr %pptb_pl, align 4
  %arrayidx.i.i81.i = getelementptr inbounds i32, ptr %pptb_pl, i32 2
  %8 = ptrtoint ptr %arrayidx.i.i81.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i.i81.i, align 4
  %or.i.i84.i = or i32 %9, -16777216
  store i32 %or.i.i84.i, ptr %arrayidx.i.i81.i, align 4
  %10 = ptrtoint ptr %prios2 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %prios2, align 4
  %and10.i.i.i = and i8 %11, 15
  %arrayidx.i.i.i36 = getelementptr inbounds i8, ptr %pptb_pl, i32 7
  %12 = ptrtoint ptr %arrayidx.i.i.i36 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.i.i.i36, align 1
  %conv15.i.i.i = and i8 %13, -16
  %conv18.i.i.i = or i8 %conv15.i.i.i, %and10.i.i.i
  store i8 %conv18.i.i.i, ptr %arrayidx.i.i.i36, align 1
  %14 = and i8 %11, 15
  %arrayidx.i.i38.i = getelementptr inbounds i8, ptr %pptb_pl, i32 15
  %15 = ptrtoint ptr %arrayidx.i.i38.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx.i.i38.i, align 1
  %conv15.i.i39.i = and i8 %16, -16
  %conv18.i.i40.i = or i8 %conv15.i.i39.i, %14
  store i8 %conv18.i.i40.i, ptr %arrayidx.i.i38.i, align 1
  %arrayidx.1 = getelementptr %struct.mlxsw_sp_hdroom, ptr %hdroom, i32 0, i32 1, i32 0, i32 1
  %17 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx.1, align 4
  %shl6.i.i.i.1 = shl i8 %18, 4
  %arrayidx.i.i.i36.1 = getelementptr inbounds i8, ptr %pptb_pl, i32 7
  %19 = ptrtoint ptr %arrayidx.i.i.i36.1 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx.i.i.i36.1, align 1
  %conv15.i.i.i.1 = and i8 %20, 15
  %conv18.i.i.i.1 = or i8 %conv15.i.i.i.1, %shl6.i.i.i.1
  store i8 %conv18.i.i.i.1, ptr %arrayidx.i.i.i36.1, align 1
  %shl6.i.i35.i.1 = shl i8 %18, 4
  %arrayidx.i.i38.i.1 = getelementptr inbounds i8, ptr %pptb_pl, i32 15
  %21 = ptrtoint ptr %arrayidx.i.i38.i.1 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx.i.i38.i.1, align 1
  %conv15.i.i39.i.1 = and i8 %22, 15
  %conv18.i.i40.i.1 = or i8 %conv15.i.i39.i.1, %shl6.i.i35.i.1
  store i8 %conv18.i.i40.i.1, ptr %arrayidx.i.i38.i.1, align 1
  %arrayidx.2 = getelementptr %struct.mlxsw_sp_hdroom, ptr %hdroom, i32 0, i32 1, i32 0, i32 2
  %23 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx.2, align 4
  %and10.i.i.i.2 = and i8 %24, 15
  %arrayidx.i.i.i36.2 = getelementptr inbounds i8, ptr %pptb_pl, i32 6
  %25 = ptrtoint ptr %arrayidx.i.i.i36.2 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx.i.i.i36.2, align 2
  %conv15.i.i.i.2 = and i8 %26, -16
  %conv18.i.i.i.2 = or i8 %conv15.i.i.i.2, %and10.i.i.i.2
  store i8 %conv18.i.i.i.2, ptr %arrayidx.i.i.i36.2, align 2
  %27 = and i8 %24, 15
  %arrayidx.i.i38.i.2 = getelementptr inbounds i8, ptr %pptb_pl, i32 14
  %28 = ptrtoint ptr %arrayidx.i.i38.i.2 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx.i.i38.i.2, align 2
  %conv15.i.i39.i.2 = and i8 %29, -16
  %conv18.i.i40.i.2 = or i8 %conv15.i.i39.i.2, %27
  store i8 %conv18.i.i40.i.2, ptr %arrayidx.i.i38.i.2, align 2
  %arrayidx.3 = getelementptr %struct.mlxsw_sp_hdroom, ptr %hdroom, i32 0, i32 1, i32 0, i32 3
  %30 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx.3, align 4
  %shl6.i.i.i.3 = shl i8 %31, 4
  %arrayidx.i.i.i36.3 = getelementptr inbounds i8, ptr %pptb_pl, i32 6
  %32 = ptrtoint ptr %arrayidx.i.i.i36.3 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx.i.i.i36.3, align 2
  %conv15.i.i.i.3 = and i8 %33, 15
  %conv18.i.i.i.3 = or i8 %conv15.i.i.i.3, %shl6.i.i.i.3
  store i8 %conv18.i.i.i.3, ptr %arrayidx.i.i.i36.3, align 2
  %shl6.i.i35.i.3 = shl i8 %31, 4
  %arrayidx.i.i38.i.3 = getelementptr inbounds i8, ptr %pptb_pl, i32 14
  %34 = ptrtoint ptr %arrayidx.i.i38.i.3 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx.i.i38.i.3, align 2
  %conv15.i.i39.i.3 = and i8 %35, 15
  %conv18.i.i40.i.3 = or i8 %conv15.i.i39.i.3, %shl6.i.i35.i.3
  store i8 %conv18.i.i40.i.3, ptr %arrayidx.i.i38.i.3, align 2
  %arrayidx.4 = getelementptr %struct.mlxsw_sp_hdroom, ptr %hdroom, i32 0, i32 1, i32 0, i32 4
  %36 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx.4, align 4
  %and10.i.i.i.4 = and i8 %37, 15
  %arrayidx.i.i.i36.4 = getelementptr inbounds i8, ptr %pptb_pl, i32 5
  %38 = ptrtoint ptr %arrayidx.i.i.i36.4 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx.i.i.i36.4, align 1
  %conv15.i.i.i.4 = and i8 %39, -16
  %conv18.i.i.i.4 = or i8 %conv15.i.i.i.4, %and10.i.i.i.4
  store i8 %conv18.i.i.i.4, ptr %arrayidx.i.i.i36.4, align 1
  %40 = and i8 %37, 15
  %arrayidx.i.i38.i.4 = getelementptr inbounds i8, ptr %pptb_pl, i32 13
  %41 = ptrtoint ptr %arrayidx.i.i38.i.4 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx.i.i38.i.4, align 1
  %conv15.i.i39.i.4 = and i8 %42, -16
  %conv18.i.i40.i.4 = or i8 %conv15.i.i39.i.4, %40
  store i8 %conv18.i.i40.i.4, ptr %arrayidx.i.i38.i.4, align 1
  %arrayidx.5 = getelementptr %struct.mlxsw_sp_hdroom, ptr %hdroom, i32 0, i32 1, i32 0, i32 5
  %43 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx.5, align 4
  %shl6.i.i.i.5 = shl i8 %44, 4
  %arrayidx.i.i.i36.5 = getelementptr inbounds i8, ptr %pptb_pl, i32 5
  %45 = ptrtoint ptr %arrayidx.i.i.i36.5 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx.i.i.i36.5, align 1
  %conv15.i.i.i.5 = and i8 %46, 15
  %conv18.i.i.i.5 = or i8 %conv15.i.i.i.5, %shl6.i.i.i.5
  store i8 %conv18.i.i.i.5, ptr %arrayidx.i.i.i36.5, align 1
  %shl6.i.i35.i.5 = shl i8 %44, 4
  %arrayidx.i.i38.i.5 = getelementptr inbounds i8, ptr %pptb_pl, i32 13
  %47 = ptrtoint ptr %arrayidx.i.i38.i.5 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx.i.i38.i.5, align 1
  %conv15.i.i39.i.5 = and i8 %48, 15
  %conv18.i.i40.i.5 = or i8 %conv15.i.i39.i.5, %shl6.i.i35.i.5
  store i8 %conv18.i.i40.i.5, ptr %arrayidx.i.i38.i.5, align 1
  %arrayidx.6 = getelementptr %struct.mlxsw_sp_hdroom, ptr %hdroom, i32 0, i32 1, i32 0, i32 6
  %49 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx.6, align 4
  %and10.i.i.i.6 = and i8 %50, 15
  %arrayidx.i.i.i36.6 = getelementptr inbounds i8, ptr %pptb_pl, i32 4
  %51 = ptrtoint ptr %arrayidx.i.i.i36.6 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx.i.i.i36.6, align 4
  %conv15.i.i.i.6 = and i8 %52, -16
  %conv18.i.i.i.6 = or i8 %conv15.i.i.i.6, %and10.i.i.i.6
  store i8 %conv18.i.i.i.6, ptr %arrayidx.i.i.i36.6, align 4
  %53 = and i8 %50, 15
  %arrayidx.i.i38.i.6 = getelementptr inbounds i8, ptr %pptb_pl, i32 12
  %54 = ptrtoint ptr %arrayidx.i.i38.i.6 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx.i.i38.i.6, align 4
  %conv15.i.i39.i.6 = and i8 %55, -16
  %conv18.i.i40.i.6 = or i8 %conv15.i.i39.i.6, %53
  store i8 %conv18.i.i40.i.6, ptr %arrayidx.i.i38.i.6, align 4
  %arrayidx.7 = getelementptr %struct.mlxsw_sp_hdroom, ptr %hdroom, i32 0, i32 1, i32 0, i32 7
  %56 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx.7, align 4
  %shl6.i.i.i.7 = shl i8 %57, 4
  %arrayidx.i.i.i36.7 = getelementptr inbounds i8, ptr %pptb_pl, i32 4
  %58 = ptrtoint ptr %arrayidx.i.i.i36.7 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx.i.i.i36.7, align 4
  %conv15.i.i.i.7 = and i8 %59, 15
  %conv18.i.i.i.7 = or i8 %conv15.i.i.i.7, %shl6.i.i.i.7
  store i8 %conv18.i.i.i.7, ptr %arrayidx.i.i.i36.7, align 4
  %shl6.i.i35.i.7 = shl i8 %57, 4
  %arrayidx.i.i38.i.7 = getelementptr inbounds i8, ptr %pptb_pl, i32 12
  %60 = ptrtoint ptr %arrayidx.i.i38.i.7 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx.i.i38.i.7, align 4
  %conv15.i.i39.i.7 = and i8 %61, 15
  %conv18.i.i40.i.7 = or i8 %conv15.i.i39.i.7, %shl6.i.i35.i.7
  store i8 %conv18.i.i40.i.7, ptr %arrayidx.i.i38.i.7, align 4
  %mlxsw_sp = getelementptr inbounds %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 2
  %62 = ptrtoint ptr %mlxsw_sp to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %mlxsw_sp, align 8
  %core = getelementptr inbounds %struct.mlxsw_sp, ptr %63, i32 0, i32 1
  %64 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %core, align 4
  %call10 = call i32 @mlxsw_reg_write(ptr noundef %65, ptr noundef nonnull @mlxsw_reg_pptb, ptr noundef nonnull %pptb_pl) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end13:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %66 = ptrtoint ptr %hdroom1 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %hdroom1, align 8
  %prios15 = getelementptr inbounds %struct.mlxsw_sp_hdroom, ptr %67, i32 0, i32 1
  %68 = call ptr @memcpy(ptr %prios15, ptr %prios2, i32 32)
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end13 ], [ 0, %entry.cleanup_crit_edge ], [ %call10, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pptb_pl) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlxsw_sp_hdroom_configure_int_buf(ptr nocapture noundef readonly %mlxsw_sp_port, ptr nocapture noundef readonly %hdroom) unnamed_addr #3 align 64 {
entry:
  %sbib_pl = alloca [16 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %sbib_pl) #11
  %hdroom1 = getelementptr inbounds %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 20
  %0 = ptrtoint ptr %hdroom1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdroom1, align 8
  %int_buf = getelementptr inbounds %struct.mlxsw_sp_hdroom, ptr %1, i32 0, i32 3
  %int_buf2 = getelementptr inbounds %struct.mlxsw_sp_hdroom, ptr %hdroom, i32 0, i32 3
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(12) %int_buf, ptr noundef dereferenceable(12) %int_buf2, i32 12) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool.not = icmp eq i32 %bcmp, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %local_port = getelementptr inbounds %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 3
  %2 = ptrtoint ptr %local_port to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %local_port, align 4
  %4 = ptrtoint ptr %int_buf2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %int_buf2, align 4
  %6 = call ptr @memset(ptr %sbib_pl, i32 0, i32 16)
  %conv1.i = zext i16 %3 to i32
  %and.i.i = shl nuw i32 %conv1.i, 16
  %spec.select.i.i.i = and i32 %and.i.i, 16711680
  %7 = ptrtoint ptr %sbib_pl to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sbib_pl, align 4
  %and7.i.i.i = and i32 %8, -16723969
  %or.i.i.i = or i32 %spec.select.i.i.i, %and7.i.i.i
  %9 = shl nuw nsw i32 %conv1.i, 4
  %and6.i28.i.i = and i32 %9, 12288
  %or.i32.i.i = or i32 %and6.i28.i.i, %or.i.i.i
  store i32 %or.i32.i.i, ptr %sbib_pl, align 4
  %and6.i.i27.i = and i32 %5, 16777215
  %arrayidx.i.i28.i = getelementptr inbounds i32, ptr %sbib_pl, i32 2
  %10 = ptrtoint ptr %arrayidx.i.i28.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i.i28.i, align 4
  %and7.i.i30.i = and i32 %11, -16777216
  %or.i.i31.i = or i32 %and6.i.i27.i, %and7.i.i30.i
  store i32 %or.i.i31.i, ptr %arrayidx.i.i28.i, align 4
  %mlxsw_sp = getelementptr inbounds %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 2
  %12 = ptrtoint ptr %mlxsw_sp to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mlxsw_sp, align 8
  %core = getelementptr inbounds %struct.mlxsw_sp, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %core, align 4
  %call8 = call i32 @mlxsw_reg_write(ptr noundef %15, ptr noundef nonnull @mlxsw_reg_sbib, ptr noundef nonnull %sbib_pl) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %hdroom1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hdroom1, align 8
  %int_buf13 = getelementptr inbounds %struct.mlxsw_sp_hdroom, ptr %17, i32 0, i32 3
  %18 = call ptr @memcpy(ptr %int_buf13, ptr %int_buf2, i32 12)
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end11 ], [ 0, %entry.cleanup_crit_edge ], [ %call8, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %sbib_pl) #11
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlxsw_reg_pbmc_lossy_buffer_pack(ptr nocapture noundef %payload, i32 noundef %buf_index, i16 noundef zeroext %size) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i.i.i = and i32 %buf_index, 65535
  %mul.i.i.i = shl nuw nsw i32 %conv.i.i.i, 3
  %add.i.i.i = add nuw nsw i32 %mul.i.i.i, 12
  %div1.i.i.i = lshr exact i32 %add.i.i.i, 2
  %arrayidx.i.i = getelementptr i32, ptr %payload, i32 %div1.i.i.i
  %0 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx.i.i, align 4
  %or.i.i = or i32 %1, 33554432
  store i32 %or.i.i, ptr %arrayidx.i.i, align 4
  %mul.i.i.i29 = shl nuw nsw i32 %conv.i.i.i, 3
  %add.i.i.i30 = add nuw nsw i32 %mul.i.i.i29, 12
  %div1.i.i.i32 = lshr exact i32 %add.i.i.i30, 2
  %arrayidx.i.i38 = getelementptr i32, ptr %payload, i32 %div1.i.i.i32
  %2 = ptrtoint ptr %arrayidx.i.i38 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.i.i38, align 4
  %and7.i.i40 = and i32 %3, -16777217
  store i32 %and7.i.i40, ptr %arrayidx.i.i38, align 4
  %conv3 = zext i16 %size to i32
  %mul.i.i.i62 = shl nuw nsw i32 %conv.i.i.i, 3
  %add.i.i.i63 = add nuw nsw i32 %mul.i.i.i62, 12
  %div1.i.i.i65 = lshr exact i32 %add.i.i.i63, 2
  %arrayidx.i.i75 = getelementptr i32, ptr %payload, i32 %div1.i.i.i65
  %4 = ptrtoint ptr %arrayidx.i.i75 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i.i75, align 4
  %and7.i.i77 = and i32 %5, -65536
  %or.i.i78 = or i32 %and7.i.i77, %conv3
  store i32 %or.i.i78, ptr %arrayidx.i.i75, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_reg_write(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__mlxsw_sp_sb_cms_init(ptr nocapture noundef readonly %mlxsw_sp, i16 noundef zeroext %local_port, i32 noundef %dir, ptr nocapture noundef readonly %cms, i32 noundef %cms_len) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cms_len)
  %cmp83.not = icmp eq i32 %cms_len, 0
  br i1 %cmp83.not, label %entry.cleanup50_crit_edge, label %for.body.lr.ph

entry.cleanup50_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup50

for.body.lr.ph:                                   ; preds = %entry
  %sb_vals1 = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 34
  %0 = ptrtoint ptr %sb_vals1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sb_vals1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dir)
  %cmp3 = icmp eq i32 %dir, 0
  %pool_dess = getelementptr inbounds %struct.mlxsw_sp_sb_vals, ptr %1, i32 0, i32 1
  %sb.i = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.084 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %i.084)
  %cmp2 = icmp eq i32 %i.084, 8
  %or.cond = and i1 %cmp3, %cmp2
  br i1 %or.cond, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end:                                           ; preds = %for.body
  %2 = ptrtoint ptr %pool_dess to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pool_dess, align 4
  %pool_index = getelementptr %struct.mlxsw_sp_sb_cm, ptr %cms, i32 %i.084, i32 2
  %4 = ptrtoint ptr %pool_index to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %pool_index, align 4
  %idxprom = zext i16 %5 to i32
  %arrayidx4 = getelementptr %struct.mlxsw_sp_sb_pool_des, ptr %3, i32 %idxprom
  %6 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %dir)
  %cmp6.not = icmp eq i32 %7, %dir
  br i1 %cmp6.not, label %if.end29, label %do.end, !prof !259

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.49, i32 noundef 939, i32 noundef 9, ptr noundef null) #11
  br label %for.inc

if.end29:                                         ; preds = %if.end
  %arrayidx = getelementptr %struct.mlxsw_sp_sb_cm, ptr %cms, i32 %i.084
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %10 = ptrtoint ptr %sb.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sb.i, align 4
  %cell_size.i = getelementptr inbounds %struct.mlxsw_sp_sb, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %cell_size.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cell_size.i, align 8
  %add.i = add i32 %13, -1
  %sub.i = add i32 %add.i, %9
  %div.i = udiv i32 %sub.i, %13
  %max_buff31 = getelementptr %struct.mlxsw_sp_sb_cm, ptr %cms, i32 %i.084, i32 1
  %14 = ptrtoint ptr %max_buff31 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %max_buff31, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %cmp32 = icmp eq i32 %15, -1
  br i1 %cmp32, label %if.then33, label %if.else

if.then33:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  %conv = trunc i32 %i.084 to i8
  %call35 = tail call fastcc i32 @mlxsw_sp_sb_cm_write(ptr noundef %mlxsw_sp, i16 noundef zeroext %local_port, i8 noundef zeroext %conv, i32 noundef %div.i, i32 noundef 0, i1 noundef zeroext true, i16 noundef zeroext %5)
  br label %if.end44

if.else:                                          ; preds = %if.end29
  %16 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %11, align 8
  %arrayidx.i.i = getelementptr %struct.mlxsw_sp_sb_pr, ptr %17, i32 %idxprom
  %18 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp.i = icmp eq i32 %19, 0
  br i1 %cmp.i, label %if.then38, label %if.else.if.end40_crit_edge

if.else.if.end40_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end40

if.then38:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i78 = add i32 %add.i, %15
  %div.i79 = udiv i32 %sub.i78, %13
  br label %if.end40

if.end40:                                         ; preds = %if.then38, %if.else.if.end40_crit_edge
  %max_buff.0 = phi i32 [ %div.i79, %if.then38 ], [ %15, %if.else.if.end40_crit_edge ]
  %conv41 = trunc i32 %i.084 to i8
  %call43 = tail call fastcc i32 @mlxsw_sp_sb_cm_write(ptr noundef %mlxsw_sp, i16 noundef zeroext %local_port, i8 noundef zeroext %conv41, i32 noundef %div.i, i32 noundef %max_buff.0, i1 noundef zeroext false, i16 noundef zeroext %5)
  br label %if.end44

if.end44:                                         ; preds = %if.end40, %if.then33
  %err.0 = phi i32 [ %call35, %if.then33 ], [ %call43, %if.end40 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool45.not = icmp eq i32 %err.0, 0
  br i1 %tobool45.not, label %if.end44.for.inc_crit_edge, label %if.end44.cleanup50_crit_edge

if.end44.cleanup50_crit_edge:                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup50

if.end44.for.inc_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

for.inc:                                          ; preds = %if.end44.for.inc_crit_edge, %do.end, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.084, 1
  %exitcond.not = icmp eq i32 %inc, %cms_len
  br i1 %exitcond.not, label %for.inc.cleanup50_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.cleanup50_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup50

cleanup50:                                        ; preds = %for.inc.cleanup50_crit_edge, %if.end44.cleanup50_crit_edge, %entry.cleanup50_crit_edge
  %retval.2 = phi i32 [ 0, %entry.cleanup50_crit_edge ], [ %err.0, %if.end44.cleanup50_crit_edge ], [ 0, %for.inc.cleanup50_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlxsw_sp_sb_pms_init(ptr nocapture noundef readonly %mlxsw_sp, i16 noundef zeroext %local_port, ptr nocapture noundef readonly %pms, i1 noundef zeroext %skip_ingress) unnamed_addr #3 align 64 {
entry:
  %sbpm_pl.i = alloca [40 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sb_vals = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 34
  %0 = ptrtoint ptr %sb_vals to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sb_vals, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp45.not = icmp eq i32 %3, 0
  br i1 %cmp45.not, label %entry.cleanup18_crit_edge, label %for.body.lr.ph

entry.cleanup18_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup18

for.body.lr.ph:                                   ; preds = %entry
  %sb.i = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 8
  %core.i = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 1
  %idxprom.i.i39 = zext i16 %local_port to i32
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %4 = phi ptr [ %1, %for.body.lr.ph ], [ %39, %for.inc.for.body_crit_edge ]
  %i.046 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.mlxsw_sp_sb_pm, ptr %pms, i32 %i.046
  br i1 %skip_ingress, label %land.lhs.true, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %for.body
  %pool_dess = getelementptr inbounds %struct.mlxsw_sp_sb_vals, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %pool_dess to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pool_dess, align 4
  %arrayidx2 = getelementptr %struct.mlxsw_sp_sb_pool_des, ptr %6, i32 %i.046
  %7 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp3 = icmp eq i32 %8, 0
  br i1 %cmp3, label %land.lhs.true.for.inc_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %for.body.if.end_crit_edge
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %11 = ptrtoint ptr %sb.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sb.i, align 4
  %cell_size.i = getelementptr inbounds %struct.mlxsw_sp_sb, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %cell_size.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cell_size.i, align 8
  %add.i = add i32 %14, -1
  %sub.i = add i32 %add.i, %10
  %div.i = udiv i32 %sub.i, %14
  %max_buff5 = getelementptr %struct.mlxsw_sp_sb_pm, ptr %pms, i32 %i.046, i32 1
  %15 = ptrtoint ptr %max_buff5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %max_buff5, align 4
  %17 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %12, align 8
  %idxprom.i.i = and i32 %i.046, 65535
  %arrayidx.i.i = getelementptr %struct.mlxsw_sp_sb_pr, ptr %18, i32 %idxprom.i.i
  %19 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp.i = icmp eq i32 %20, 0
  br i1 %cmp.i, label %if.then7, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i36 = add i32 %add.i, %16
  %div.i37 = udiv i32 %sub.i36, %14
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end.if.end9_crit_edge
  %max_buff.0 = phi i32 [ %div.i37, %if.then7 ], [ %16, %if.end.if.end9_crit_edge ]
  %pool_dess.i = getelementptr inbounds %struct.mlxsw_sp_sb_vals, ptr %4, i32 0, i32 1
  %21 = ptrtoint ptr %pool_dess.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pool_dess.i, align 4
  %arrayidx.i = getelementptr %struct.mlxsw_sp_sb_pool_des, ptr %22, i32 %idxprom.i.i
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %sbpm_pl.i) #11
  %23 = call ptr @memset(ptr %sbpm_pl.i, i32 255, i32 40)
  %pool.i = getelementptr %struct.mlxsw_sp_sb_pool_des, ptr %22, i32 %idxprom.i.i, i32 1
  %24 = ptrtoint ptr %pool.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %pool.i, align 4
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.i, align 4
  call fastcc void @mlxsw_reg_sbpm_pack(ptr noundef nonnull %sbpm_pl.i, i16 noundef zeroext %local_port, i8 noundef zeroext %25, i32 noundef %27, i1 noundef zeroext false, i32 noundef %div.i, i32 noundef %max_buff.0) #11
  %28 = ptrtoint ptr %core.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %core.i, align 4
  %call.i = call i32 @mlxsw_reg_write(ptr noundef %29, ptr noundef nonnull @mlxsw_reg_sbpm, ptr noundef nonnull %sbpm_pl.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %select.unfold, label %mlxsw_sp_sb_pm_write.exit

mlxsw_sp_sb_pm_write.exit:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %sbpm_pl.i) #11
  br label %cleanup18

select.unfold:                                    ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  %30 = ptrtoint ptr %sb.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %sb.i, align 4
  %ports.i.i = getelementptr inbounds %struct.mlxsw_sp_sb, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %ports.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ports.i.i, align 4
  %pms.i.i = getelementptr %struct.mlxsw_sp_sb_port, ptr %33, i32 %idxprom.i.i39, i32 2
  %34 = ptrtoint ptr %pms.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pms.i.i, align 4
  %arrayidx2.i.i = getelementptr %struct.mlxsw_sp_sb_pm, ptr %35, i32 %idxprom.i.i
  %36 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %div.i, ptr %arrayidx2.i.i, align 4
  %max_buff4.i = getelementptr %struct.mlxsw_sp_sb_pm, ptr %35, i32 %idxprom.i.i, i32 1
  %37 = ptrtoint ptr %max_buff4.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %max_buff.0, ptr %max_buff4.i, align 4
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %sbpm_pl.i) #11
  br label %for.inc

for.inc:                                          ; preds = %select.unfold, %land.lhs.true.for.inc_crit_edge
  %inc = add nuw i32 %i.046, 1
  %38 = ptrtoint ptr %sb_vals to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %sb_vals, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %39, align 4
  %cmp = icmp ult i32 %inc, %41
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup18_crit_edge

for.inc.cleanup18_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup18

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

cleanup18:                                        ; preds = %for.inc.cleanup18_crit_edge, %mlxsw_sp_sb_pm_write.exit, %entry.cleanup18_crit_edge
  %retval.2 = phi i32 [ %call.i, %mlxsw_sp_sb_pm_write.exit ], [ 0, %entry.cleanup18_crit_edge ], [ 0, %for.inc.cleanup18_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlxsw_reg_sbpm_pack(ptr nocapture noundef %payload, i16 noundef zeroext %local_port, i8 noundef zeroext %pool, i32 noundef %dir, i1 noundef zeroext %clr, i32 noundef %min_buff, i32 noundef %max_buff) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %0 = call ptr @memset(ptr %payload, i32 0, i32 40)
  %conv1 = zext i16 %local_port to i32
  %and.i = shl nuw i32 %conv1, 16
  %spec.select.i.i = and i32 %and.i, 16711680
  %1 = ptrtoint ptr %payload to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %payload, align 4
  %and7.i.i = and i32 %2, -16727812
  %or.i.i = or i32 %spec.select.i.i, %and7.i.i
  %3 = shl nuw nsw i32 %conv1, 4
  %and6.i28.i = and i32 %3, 12288
  %or.i32.i = or i32 %and6.i28.i, %or.i.i
  %conv2 = zext i8 %pool to i32
  %spec.select.i.i28 = shl nuw nsw i32 %conv2, 8
  %and6.i.i33 = and i32 %spec.select.i.i28, 3840
  %or.i.i37 = or i32 %and6.i.i33, %or.i32.i
  %and6.i.i62 = and i32 %dir, 3
  %or.i.i66 = or i32 %and6.i.i62, %or.i.i37
  store i32 %or.i.i66, ptr %payload, align 4
  %spec.select.i.i86 = select i1 %clr, i32 -2147483648, i32 0
  %arrayidx.i.i92 = getelementptr i32, ptr %payload, i32 5
  %4 = ptrtoint ptr %arrayidx.i.i92 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i.i92, align 4
  %and7.i.i94 = and i32 %5, 2147483647
  %or.i.i95 = or i32 %spec.select.i.i86, %and7.i.i94
  store i32 %or.i.i95, ptr %arrayidx.i.i92, align 4
  %and6.i.i120 = and i32 %min_buff, 16777215
  %arrayidx.i.i121 = getelementptr i32, ptr %payload, i32 6
  %6 = ptrtoint ptr %arrayidx.i.i121 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i.i121, align 4
  %and7.i.i123 = and i32 %7, -16777216
  %or.i.i124 = or i32 %and6.i.i120, %and7.i.i123
  store i32 %or.i.i124, ptr %arrayidx.i.i121, align 4
  %and6.i.i149 = and i32 %max_buff, 16777215
  %arrayidx.i.i150 = getelementptr i32, ptr %payload, i32 7
  %8 = ptrtoint ptr %arrayidx.i.i150 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i.i150, align 4
  %and7.i.i152 = and i32 %9, -16777216
  %or.i.i153 = or i32 %and6.i.i149, %and7.i.i152
  store i32 %or.i.i153, ptr %arrayidx.i.i150, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlxsw_sp_sb_pm_occ_query_cb(ptr nocapture noundef readnone %mlxsw_core, ptr nocapture noundef readonly %sbpm_pl, i32 noundef %sbpm_pl_len, i32 noundef %cb_priv) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %cb_priv to ptr
  %occ = getelementptr inbounds %struct.mlxsw_sp_sb_pm, ptr %0, i32 0, i32 2
  %arrayidx.i.i.i = getelementptr i32, ptr %sbpm_pl, i32 4
  %1 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx.i.i.i, align 4
  %and4.i.i.i = and i32 %2, 16777215
  %3 = ptrtoint ptr %occ to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %and4.i.i.i, ptr %occ, align 4
  %max = getelementptr inbounds %struct.mlxsw_sp_sb_pm, ptr %0, i32 0, i32 2, i32 1
  %arrayidx.i.i18.i = getelementptr i32, ptr %sbpm_pl, i32 5
  %4 = ptrtoint ptr %arrayidx.i.i18.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i.i18.i, align 4
  %and4.i.i24.i = and i32 %5, 16777215
  %6 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %and4.i.i24.i, ptr %max, align 4
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlxsw_reg_sbsr_rec_unpack(ptr nocapture noundef readonly %payload, i32 noundef %rec_index, ptr nocapture noundef writeonly %p_buff_occupancy, ptr nocapture noundef writeonly %p_max_buff_occupancy) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i.i.i = and i32 %rec_index, 65535
  %mul.i.i.i = shl nuw nsw i32 %conv.i.i.i, 3
  %add.i.i.i = add nuw nsw i32 %mul.i.i.i, 92
  %div1.i.i.i = lshr exact i32 %add.i.i.i, 2
  %arrayidx.i.i = getelementptr i32, ptr %payload, i32 %div1.i.i.i
  %0 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx.i.i, align 4
  %and4.i.i = and i32 %1, 16777215
  %2 = ptrtoint ptr %p_buff_occupancy to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %and4.i.i, ptr %p_buff_occupancy, align 4
  %mul.i.i.i26 = shl nuw nsw i32 %conv.i.i.i, 3
  %add42.i.i.i28 = add nuw nsw i32 %mul.i.i.i26, 96
  %div1.i.i.i29 = lshr exact i32 %add42.i.i.i28, 2
  %arrayidx.i.i30 = getelementptr i32, ptr %payload, i32 %div1.i.i.i29
  %3 = ptrtoint ptr %arrayidx.i.i30 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx.i.i30, align 4
  %and4.i.i36 = and i32 %4, 16777215
  %5 = ptrtoint ptr %p_max_buff_occupancy to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %and4.i.i36, ptr %p_max_buff_occupancy, align 4
  ret void
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

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

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 103)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 103)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly nofree nounwind readonly willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nounwind readnone }
attributes #17 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !29, !30, !31, !32, !34, !35, !36, !37, !39, !40, !42, !43, !45, !46, !48, !49, !51, !52, !54, !55, !57, !58, !60, !61, !63, !64, !66, !67, !68, !69, !71, !72, !74, !75, !77, !78, !79, !80, !82, !83, !85, !86, !88, !89, !91, !92, !93, !94, !96, !97, !99, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !129, !131, !132, !134, !135, !137, !138, !140, !141, !143, !144, !146, !148, !149, !151, !152, !154, !155, !157, !158, !160, !161, !163, !164, !166, !168, !169, !170, !171, !173, !174, !176, !177, !179, !180, !182, !183, !185, !186, !188, !189, !191, !192, !193, !194, !196, !197, !199, !200, !202, !203, !205, !206, !208, !209, !211, !212, !214, !215, !217, !218, !220, !221, !223, !224, !226, !227, !229, !230, !232, !233, !235, !236, !238, !239, !241, !242, !244, !245, !247}
!llvm.module.flags = !{!248, !249, !250, !251, !252, !253, !254, !255}
!llvm.ident = !{!256}

!0 = !{ptr @mlxsw_sp1_sb_vals, !1, !"mlxsw_sp1_sb_vals", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_buffers.c", i32 1149, i32 31}
!2 = !{ptr @mlxsw_sp2_sb_vals, !3, !"mlxsw_sp2_sb_vals", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_buffers.c", i32 1165, i32 31}
!4 = !{ptr @mlxsw_sp1_sb_ops, !5, !"mlxsw_sp1_sb_ops", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_buffers.c", i32 1209, i32 30}
!6 = !{ptr @mlxsw_sp2_sb_ops, !7, !"mlxsw_sp2_sb_ops", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_buffers.c", i32 1213, i32 30}
!8 = !{ptr @mlxsw_sp3_sb_ops, !9, !"mlxsw_sp3_sb_ops", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_buffers.c", i32 1217, i32 30}
!10 = !{ptr @mlxsw_sp_sb_pool_set.__msg, !11, !"__msg", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_buffers.c", i32 1360, i32 3}
!12 = !{ptr @mlxsw_sp_sb_pool_set.__msg.1, !13, !"__msg", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_buffers.c", i32 1365, i32 3}
!14 = !{ptr @mlxsw_sp_sb_pool_set.__msg.2, !15, !"__msg", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_buffers.c", i32 1370, i32 3}
!16 = !{ptr @mlxsw_sp_sb_port_pool_set.__msg, !17, !"__msg", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_buffers.c", i32 1440, i32 3}
!18 = !{ptr @mlxsw_sp_sb_tc_pool_bind_set.__msg, !19, !"__msg", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_buffers.c", i32 1490, i32 3}
!20 = !{ptr @mlxsw_sp_sb_tc_pool_bind_set.__msg.3, !21, !"__msg", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_buffers.c", i32 1495, i32 3}
!22 = !{ptr @mlxsw_sp_sb_tc_pool_bind_set.__msg.4, !23, !"__msg", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_buffers.c", i32 1505, i32 3}
!24 = !{ptr @mlxsw_sp_sb_tc_pool_bind_set.__msg.5, !25, !"__msg", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_buffers.c", i32 1510, i32 3}
!26 = !{ptr @.str, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/mellanox/mlxsw/item.h", i32 33, i32 3}
!28 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @__mlxsw_item_offset._entry, !27, !"_entry", i1 false, i1 false}
!31 = !{ptr @__mlxsw_item_offset._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.8, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 5562, i32 1}
!34 = distinct !{null, !33, !"mlxsw_reg_pbmc_local_port_item", i1 false, i1 false}
!35 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!36 = distinct !{null, !33, !"mlxsw_reg_pbmc_lp_msb_item", i1 false, i1 false}
!37 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 5569, i32 1}
!39 = distinct !{null, !38, !"mlxsw_reg_pbmc_xoff_timer_value_item", i1 false, i1 false}
!40 = !{ptr @.str.14, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 5577, i32 1}
!42 = distinct !{null, !41, !"mlxsw_reg_pbmc_xoff_refresh_item", i1 false, i1 false}
!43 = !{ptr @.str.16, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 5587, i32 1}
!45 = distinct !{null, !44, !"mlxsw_reg_pbmc_buf_lossy_item", i1 false, i1 false}
!46 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 5596, i32 1}
!48 = distinct !{null, !47, !"mlxsw_reg_pbmc_buf_epsb_item", i1 false, i1 false}
!49 = !{ptr @.str.20, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 5603, i32 1}
!51 = distinct !{null, !50, !"mlxsw_reg_pbmc_buf_size_item", i1 false, i1 false}
!52 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 5614, i32 1}
!54 = distinct !{null, !53, !"mlxsw_reg_pbmc_buf_xoff_threshold_item", i1 false, i1 false}
!55 = !{ptr @.str.24, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 5626, i32 1}
!57 = distinct !{null, !56, !"mlxsw_reg_pbmc_buf_xon_threshold_item", i1 false, i1 false}
!58 = !{ptr @.str.26, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 5556, i32 1}
!60 = !{ptr @mlxsw_reg_pbmc, !59, !"mlxsw_reg_pbmc", i1 false, i1 false}
!61 = !{ptr @.str.27, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 5479, i32 1}
!63 = distinct !{null, !62, !"mlxsw_reg_pptb_mm_item", i1 false, i1 false}
!64 = !{ptr @.str.29, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 5485, i32 1}
!66 = distinct !{null, !65, !"mlxsw_reg_pptb_local_port_item", i1 false, i1 false}
!67 = !{ptr @.str.31, !65, !"<string literal>", i1 false, i1 false}
!68 = distinct !{null, !65, !"mlxsw_reg_pptb_lp_msb_item", i1 false, i1 false}
!69 = !{ptr @.str.33, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 5498, i32 1}
!71 = distinct !{null, !70, !"mlxsw_reg_pptb_pm_item", i1 false, i1 false}
!72 = !{ptr @.str.35, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 5512, i32 1}
!74 = distinct !{null, !73, !"mlxsw_reg_pptb_pm_msb_item", i1 false, i1 false}
!75 = !{ptr @.str.37, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/ethernet/mellanox/mlxsw/item.h", i32 215, i32 3}
!77 = !{ptr @.str.38, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @__mlxsw_item_bit_array_offset._entry, !76, !"_entry", i1 false, i1 false}
!79 = !{ptr @__mlxsw_item_bit_array_offset._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.39, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 5505, i32 1}
!82 = distinct !{null, !81, !"mlxsw_reg_pptb_prio_to_buff_item", i1 false, i1 false}
!83 = !{ptr @.str.40, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 5528, i32 1}
!85 = distinct !{null, !84, !"mlxsw_reg_pptb_prio_to_buff_msb_item", i1 false, i1 false}
!86 = !{ptr @.str.41, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 5462, i32 1}
!88 = !{ptr @mlxsw_reg_pptb, !87, !"mlxsw_reg_pptb", i1 false, i1 false}
!89 = !{ptr @.str.42, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 12480, i32 1}
!91 = distinct !{null, !90, !"mlxsw_reg_sbib_local_port_item", i1 false, i1 false}
!92 = !{ptr @.str.44, !90, !"<string literal>", i1 false, i1 false}
!93 = distinct !{null, !90, !"mlxsw_reg_sbib_lp_msb_item", i1 false, i1 false}
!94 = !{ptr @.str.46, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 12488, i32 1}
!96 = distinct !{null, !95, !"mlxsw_reg_sbib_buff_size_item", i1 false, i1 false}
!97 = !{ptr @.str.48, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 12473, i32 1}
!99 = !{ptr @mlxsw_reg_sbib, !98, !"mlxsw_reg_sbib", i1 false, i1 false}
!100 = !{ptr @mlxsw_sp1_sb_pool_dess, !101, !"mlxsw_sp1_sb_pool_dess", i1 false, i1 false}
!101 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_buffers.c", i32 63, i32 42}
!102 = !{ptr @mlxsw_sp1_sb_pms, !103, !"mlxsw_sp1_sb_pms", i1 false, i1 false}
!103 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_buffers.c", i32 996, i32 36}
!104 = !{ptr @mlxsw_sp_cpu_port_sb_pms, !105, !"mlxsw_sp_cpu_port_sb_pms", i1 false, i1 false}
!105 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_buffers.c", i32 1026, i32 36}
!106 = !{ptr @mlxsw_sp1_sb_prs, !107, !"mlxsw_sp1_sb_prs", i1 false, i1 false}
!107 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_buffers.c", i32 691, i32 36}
!108 = !{ptr @mlxsw_sp_sb_mms, !109, !"mlxsw_sp_sb_mms", i1 false, i1 false}
!109 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_buffers.c", i32 1089, i32 36}
!110 = !{ptr @mlxsw_sp1_sb_cms_ingress, !111, !"mlxsw_sp1_sb_cms_ingress", i1 false, i1 false}
!111 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_buffers.c", i32 811, i32 36}
!112 = !{ptr @mlxsw_sp1_sb_cms_egress, !113, !"mlxsw_sp1_sb_cms_egress", i1 false, i1 false}
!113 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_buffers.c", i32 837, i32 36}
!114 = !{ptr @mlxsw_sp_cpu_port_sb_cms, !115, !"mlxsw_sp_cpu_port_sb_cms", i1 false, i1 false}
!115 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_buffers.c", i32 879, i32 36}
!116 = !{ptr @mlxsw_sp2_sb_pool_dess, !117, !"mlxsw_sp2_sb_pool_dess", i1 false, i1 false}
!117 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_buffers.c", i32 77, i32 42}
!118 = !{ptr @mlxsw_sp2_sb_pms, !119, !"mlxsw_sp2_sb_pms", i1 false, i1 false}
!119 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_buffers.c", i32 1011, i32 36}
!120 = !{ptr @mlxsw_sp2_sb_prs, !121, !"mlxsw_sp2_sb_prs", i1 false, i1 false}
!121 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_buffers.c", i32 712, i32 36}
!122 = !{ptr @mlxsw_sp2_sb_cms_ingress, !123, !"mlxsw_sp2_sb_cms_ingress", i1 false, i1 false}
!123 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_buffers.c", i32 824, i32 36}
!124 = !{ptr @mlxsw_sp2_sb_cms_egress, !125, !"mlxsw_sp2_sb_cms_egress", i1 false, i1 false}
!125 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_buffers.c", i32 857, i32 36}
!126 = distinct !{null, !127, !"__already_done", i1 false, i1 false}
!127 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_buffers.c", i32 753, i32 7}
!128 = !{ptr @.str.49, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @.str.50, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 12320, i32 1}
!131 = distinct !{null, !130, !"mlxsw_reg_sbmm_prio_item", i1 false, i1 false}
!132 = !{ptr @.str.52, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 12326, i32 1}
!134 = distinct !{null, !133, !"mlxsw_reg_sbmm_min_buff_item", i1 false, i1 false}
!135 = !{ptr @.str.54, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 12339, i32 1}
!137 = distinct !{null, !136, !"mlxsw_reg_sbmm_max_buff_item", i1 false, i1 false}
!138 = !{ptr @.str.56, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 12345, i32 1}
!140 = distinct !{null, !139, !"mlxsw_reg_sbmm_pool_item", i1 false, i1 false}
!141 = !{ptr @.str.58, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 12314, i32 1}
!143 = !{ptr @mlxsw_reg_sbmm, !142, !"mlxsw_reg_sbmm", i1 false, i1 false}
!144 = !{ptr @.str.59, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_buffers.c", i32 1146, i32 2}
!146 = !{ptr @.str.60, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 12089, i32 1}
!148 = distinct !{null, !147, !"mlxsw_reg_sbpr_pool_item", i1 false, i1 false}
!149 = !{ptr @.str.62, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 12083, i32 1}
!151 = distinct !{null, !150, !"mlxsw_reg_sbpr_dir_item", i1 false, i1 false}
!152 = !{ptr @.str.64, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 12113, i32 1}
!154 = distinct !{null, !153, !"mlxsw_reg_sbpr_mode_item", i1 false, i1 false}
!155 = !{ptr @.str.66, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 12102, i32 1}
!157 = distinct !{null, !156, !"mlxsw_reg_sbpr_size_item", i1 false, i1 false}
!158 = !{ptr @.str.68, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 12095, i32 1}
!160 = distinct !{null, !159, !"mlxsw_reg_sbpr_infi_size_item", i1 false, i1 false}
!161 = !{ptr @.str.70, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 12071, i32 1}
!163 = !{ptr @mlxsw_reg_sbpr, !162, !"mlxsw_reg_sbpr", i1 false, i1 false}
!164 = !{ptr @mlxsw_sp_sb_threshold_in.__msg, !165, !"__msg", i1 false, i1 false}
!165 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_buffers.c", i32 1402, i32 4}
!166 = !{ptr @.str.71, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 12231, i32 1}
!168 = distinct !{null, !167, !"mlxsw_reg_sbpm_local_port_item", i1 false, i1 false}
!169 = !{ptr @.str.73, !167, !"<string literal>", i1 false, i1 false}
!170 = distinct !{null, !167, !"mlxsw_reg_sbpm_lp_msb_item", i1 false, i1 false}
!171 = !{ptr @.str.75, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 12237, i32 1}
!173 = distinct !{null, !172, !"mlxsw_reg_sbpm_pool_item", i1 false, i1 false}
!174 = !{ptr @.str.77, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 12243, i32 1}
!176 = distinct !{null, !175, !"mlxsw_reg_sbpm_dir_item", i1 false, i1 false}
!177 = !{ptr @.str.79, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 12257, i32 1}
!179 = distinct !{null, !178, !"mlxsw_reg_sbpm_clr_item", i1 false, i1 false}
!180 = !{ptr @.str.81, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 12270, i32 1}
!182 = distinct !{null, !181, !"mlxsw_reg_sbpm_min_buff_item", i1 false, i1 false}
!183 = !{ptr @.str.83, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 12283, i32 1}
!185 = distinct !{null, !184, !"mlxsw_reg_sbpm_max_buff_item", i1 false, i1 false}
!186 = !{ptr @.str.85, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 12223, i32 1}
!188 = !{ptr @mlxsw_reg_sbpm, !187, !"mlxsw_reg_sbpm", i1 false, i1 false}
!189 = !{ptr @.str.86, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 12145, i32 1}
!191 = distinct !{null, !190, !"mlxsw_reg_sbcm_local_port_item", i1 false, i1 false}
!192 = !{ptr @.str.88, !190, !"<string literal>", i1 false, i1 false}
!193 = distinct !{null, !190, !"mlxsw_reg_sbcm_lp_msb_item", i1 false, i1 false}
!194 = !{ptr @.str.90, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 12155, i32 1}
!196 = distinct !{null, !195, !"mlxsw_reg_sbcm_pg_buff_item", i1 false, i1 false}
!197 = !{ptr @.str.92, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 12161, i32 1}
!199 = distinct !{null, !198, !"mlxsw_reg_sbcm_dir_item", i1 false, i1 false}
!200 = !{ptr @.str.94, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 12167, i32 1}
!202 = distinct !{null, !201, !"mlxsw_reg_sbcm_min_buff_item", i1 false, i1 false}
!203 = !{ptr @.str.96, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 12191, i32 1}
!205 = distinct !{null, !204, !"mlxsw_reg_sbcm_max_buff_item", i1 false, i1 false}
!206 = !{ptr @.str.98, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 12177, i32 1}
!208 = distinct !{null, !207, !"mlxsw_reg_sbcm_infi_max_item", i1 false, i1 false}
!209 = !{ptr @.str.100, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 12197, i32 1}
!211 = distinct !{null, !210, !"mlxsw_reg_sbcm_pool_item", i1 false, i1 false}
!212 = !{ptr @.str.102, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 12137, i32 1}
!214 = !{ptr @mlxsw_reg_sbcm, !213, !"mlxsw_reg_sbcm", i1 false, i1 false}
!215 = !{ptr @.str.103, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 12381, i32 1}
!217 = distinct !{null, !216, !"mlxsw_reg_sbsr_clr_item", i1 false, i1 false}
!218 = !{ptr @.str.105, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 12391, i32 1}
!220 = distinct !{null, !219, !"mlxsw_reg_sbsr_port_page_item", i1 false, i1 false}
!221 = !{ptr @.str.107, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 12410, i32 1}
!223 = distinct !{null, !222, !"mlxsw_reg_sbsr_pg_buff_mask_item", i1 false, i1 false}
!224 = !{ptr @.str.108, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 12429, i32 1}
!226 = distinct !{null, !225, !"mlxsw_reg_sbsr_tclass_mask_item", i1 false, i1 false}
!227 = !{ptr @.str.109, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 12400, i32 1}
!229 = distinct !{null, !228, !"mlxsw_reg_sbsr_ingress_port_mask_item", i1 false, i1 false}
!230 = !{ptr @.str.110, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 12419, i32 1}
!232 = distinct !{null, !231, !"mlxsw_reg_sbsr_egress_port_mask_item", i1 false, i1 false}
!233 = !{ptr @.str.111, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 12249, i32 1}
!235 = distinct !{null, !234, !"mlxsw_reg_sbpm_buff_occupancy_item", i1 false, i1 false}
!236 = !{ptr @.str.113, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 12264, i32 1}
!238 = distinct !{null, !237, !"mlxsw_reg_sbpm_max_buff_occupancy_item", i1 false, i1 false}
!239 = !{ptr @.str.115, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 12373, i32 1}
!241 = !{ptr @mlxsw_reg_sbsr, !240, !"mlxsw_reg_sbsr", i1 false, i1 false}
!242 = !{ptr @.str.116, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 12441, i32 1}
!244 = distinct !{null, !243, !"mlxsw_reg_sbsr_rec_buff_occupancy_item", i1 false, i1 false}
!245 = !{ptr @.str.118, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 12449, i32 1}
!247 = distinct !{null, !246, !"mlxsw_reg_sbsr_rec_max_buff_occupancy_item", i1 false, i1 false}
!248 = !{i32 1, !"wchar_size", i32 2}
!249 = !{i32 1, !"min_enum_size", i32 4}
!250 = !{i32 8, !"branch-target-enforcement", i32 0}
!251 = !{i32 8, !"sign-return-address", i32 0}
!252 = !{i32 8, !"sign-return-address-all", i32 0}
!253 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!254 = !{i32 7, !"uwtable", i32 1}
!255 = !{i32 7, !"frame-pointer", i32 2}
!256 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!257 = !{i8 0, i8 2}
!258 = !{!"branch_weights", i32 1, i32 2000}
!259 = !{!"branch_weights", i32 2000, i32 1}
!260 = !{i64 2148649808, i64 2148650088, i64 2148650422, i64 2148650756}
!261 = distinct !{!261, !262}
!262 = !{!"llvm.loop.peeled.count", i32 1}
!263 = distinct !{!263, !262}
