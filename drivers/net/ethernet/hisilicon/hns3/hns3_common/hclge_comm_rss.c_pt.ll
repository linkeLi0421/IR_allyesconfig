; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/hisilicon/hns3/hns3_common/hclge_comm_rss.c_pt.bc'
source_filename = "../drivers/net/ethernet/hisilicon/hns3/hns3_common/hclge_comm_rss.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.hnae3_ae_dev = type { ptr, ptr, %struct.list_head, i32, i32, %struct.hnae3_dev_specs, i32, [3 x i32], ptr }
%struct.list_head = type { ptr, ptr }
%struct.hnae3_dev_specs = type { i32, i32, i32, i16, i16, i16, i16, i8, i16, i16, i16, i16, i32 }
%struct.hnae3_handle = type { ptr, ptr, ptr, ptr, i64, %union.anon.145, i32, i32, i8, ptr, %struct.mutex, i32, i32, i32 }
%union.anon.145 = type { %struct.hnae3_knic_private_info }
%struct.hnae3_knic_private_info = type { ptr, i16, i16, i16, i16, i16, i32, %struct.hnae3_tc_info, i16, ptr, ptr, i16, i32, ptr }
%struct.hnae3_tc_info = type { [8 x i8], [8 x i16], [8 x i16], i8, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hclge_comm_rss_cfg = type { [40 x i8], ptr, i32, %struct.hclge_comm_rss_tuple_cfg, i32 }
%struct.hclge_comm_rss_tuple_cfg = type { i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.101, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.101 = type { ptr }
%struct.hclge_desc = type { i16, i16, i16, i16, [6 x i32] }
%struct.hclge_comm_hw = type { ptr, ptr, %struct.hclge_comm_cmq, i32 }
%struct.hclge_comm_cmq = type { %struct.hclge_comm_cmq_ring, %struct.hclge_comm_cmq_ring, i16, i32 }
%struct.hclge_comm_cmq_ring = type { i32, ptr, ptr, i32, i32, i16, i16, i32, i32, i8, %struct.spinlock }
%struct.ethtool_rxnfc = type { i32, i32, i64, %struct.ethtool_rx_flow_spec, %union.anon.105, [0 x i32] }
%struct.ethtool_rx_flow_spec = type { i32, %union.ethtool_flow_union, %struct.ethtool_flow_ext, %union.ethtool_flow_union, %struct.ethtool_flow_ext, i64, i32 }
%union.ethtool_flow_union = type { %struct.ethtool_tcpip6_spec, [12 x i8] }
%struct.ethtool_tcpip6_spec = type { [4 x i32], [4 x i32], i16, i16, i8 }
%struct.ethtool_flow_ext = type { [2 x i8], [6 x i8], i16, i16, [2 x i32] }
%union.anon.105 = type { i32 }
%struct.hclge_comm_rss_input_tuple_cmd = type { i8, i8, i8, i8, i8, i8, i8, i8, [16 x i8] }
%struct.hclge_comm_rss_ind_tbl_cmd = type { i16, i16, [4 x i8], [16 x i8] }

@hclge_comm_hash_key = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"mZV\DA%[\0E\C2Ag%=C\A3\8F\B0\D0\CA+\CB\AE{0\B4w\CB-\A3\800\F2\0CjB\B7;\BE\AC\01\FA", [56 x i8] zeroinitializer }, align 32
@hclge_comm_set_rss_tc_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 112, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to set rss tc mode, ret = %d.\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"hclge_comm_set_rss_tc_mode\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"drivers/net/ethernet/hisilicon/hns3/hns3_common/hclge_comm_rss.c\00", [63 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@hclge_comm_set_rss_tc_mode._entry_ptr = internal global ptr @hclge_comm_set_rss_tc_mode._entry, section ".printk_index", align 4
@hclge_comm_set_rss_tuple._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 167, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"failed to init rss tuple cmd, ret = %d.\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"hclge_comm_set_rss_tuple\00", [39 x i8] zeroinitializer }, align 32
@hclge_comm_set_rss_tuple._entry_ptr = internal global ptr @hclge_comm_set_rss_tuple._entry, section ".printk_index", align 4
@hclge_comm_set_rss_tuple._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.6, ptr @.str.2, i32 174, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to set rss tuple, ret = %d.\0A\00", [60 x i8] zeroinitializer }, align 32
@hclge_comm_set_rss_tuple._entry_ptr.9 = internal global ptr @hclge_comm_set_rss_tuple._entry.7, section ".printk_index", align 4
@hclge_comm_set_rss_indir_table._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 318, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"failed to configure rss table, ret = %d.\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"hclge_comm_set_rss_indir_table\00", [33 x i8] zeroinitializer }, align 32
@hclge_comm_set_rss_indir_table._entry_ptr = internal global ptr @hclge_comm_set_rss_indir_table._entry, section ".printk_index", align 4
@hclge_comm_set_rss_input_tuple._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 353, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"failed to configure rss input, ret = %d.\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"hclge_comm_set_rss_input_tuple\00", [33 x i8] zeroinitializer }, align 32
@hclge_comm_set_rss_input_tuple._entry_ptr = internal global ptr @hclge_comm_set_rss_input_tuple._entry, section ".printk_index", align 4
@hclge_comm_set_rss_algo_key._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 425, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed to configure RSS key, ret = %d.\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"hclge_comm_set_rss_algo_key\00", [36 x i8] zeroinitializer }, align 32
@hclge_comm_set_rss_algo_key._entry_ptr = internal global ptr @hclge_comm_set_rss_algo_key._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.16 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.17 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 7]
@__sancov_gen_cov_switch_values.18 = internal global [10 x i64] [i64 8, i64 32, i64 1, i64 2, i64 3, i64 5, i64 6, i64 7, i64 16, i64 17]
@__sancov_gen_cov_switch_values.19 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 7]
@__sancov_gen_cov_switch_values.20 = internal global [10 x i64] [i64 8, i64 32, i64 1, i64 2, i64 3, i64 5, i64 6, i64 7, i64 16, i64 17]
@__sancov_gen_cov_switch_values.21 = internal global [10 x i64] [i64 8, i64 32, i64 1, i64 2, i64 3, i64 5, i64 6, i64 7, i64 16, i64 17]
@___asan_gen_.22 = private unnamed_addr constant [20 x i8] c"hclge_comm_hash_key\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 9, i32 17 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 111, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 166, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 173, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 316, i32 4 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 352, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.82 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.83 = private constant [68 x i8] c"../drivers/net/ethernet/hisilicon/hns3/hns3_common/hclge_comm_rss.c\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 423, i32 4 }
@llvm.compiler.used = appending global [27 x ptr] [ptr @hclge_comm_set_rss_algo_key._entry, ptr @hclge_comm_set_rss_algo_key._entry_ptr, ptr @hclge_comm_set_rss_indir_table._entry, ptr @hclge_comm_set_rss_indir_table._entry_ptr, ptr @hclge_comm_set_rss_input_tuple._entry, ptr @hclge_comm_set_rss_input_tuple._entry_ptr, ptr @hclge_comm_set_rss_tc_mode._entry, ptr @hclge_comm_set_rss_tc_mode._entry_ptr, ptr @hclge_comm_set_rss_tuple._entry, ptr @hclge_comm_set_rss_tuple._entry.7, ptr @hclge_comm_set_rss_tuple._entry_ptr, ptr @hclge_comm_set_rss_tuple._entry_ptr.9, ptr @hclge_comm_hash_key, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_comm_hash_key to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_comm_set_rss_tc_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_comm_set_rss_tuple._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_comm_set_rss_tuple._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_comm_set_rss_indir_table._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_comm_set_rss_input_tuple._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_comm_set_rss_algo_key._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hclge_comm_rss_init_cfg(ptr nocapture noundef readonly %nic, ptr nocapture noundef readonly %ae_dev, ptr nocapture noundef %rss_cfg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %rss_ind_tbl_size1 = getelementptr inbounds %struct.hnae3_ae_dev, ptr %ae_dev, i32 0, i32 5, i32 3
  %0 = ptrtoint ptr %rss_ind_tbl_size1 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %rss_ind_tbl_size1, align 4
  %flags = getelementptr inbounds %struct.hnae3_handle, ptr %nic, i32 0, i32 4
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %flags, align 8
  %and = and i64 %3, 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %rss_size = getelementptr inbounds %struct.hnae3_handle, ptr %nic, i32 0, i32 5, i32 0, i32 1
  %4 = ptrtoint ptr %rss_size to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %rss_size, align 4
  %conv = zext i16 %5 to i32
  %rss_size2 = getelementptr inbounds %struct.hclge_comm_rss_cfg, ptr %rss_cfg, i32 0, i32 4
  %6 = ptrtoint ptr %rss_size2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv, ptr %rss_size2, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %dev_version = getelementptr inbounds %struct.hnae3_ae_dev, ptr %ae_dev, i32 0, i32 6
  %7 = ptrtoint ptr %dev_version to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dev_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %8)
  %cmp = icmp ugt i32 %8, 32
  %spec.select = zext i1 %cmp to i32
  %rss_tuple_sets = getelementptr inbounds %struct.hclge_comm_rss_cfg, ptr %rss_cfg, i32 0, i32 3
  %9 = ptrtoint ptr %rss_tuple_sets to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 15, ptr %rss_tuple_sets, align 1
  %ipv4_udp_en.i = getelementptr inbounds %struct.hclge_comm_rss_cfg, ptr %rss_cfg, i32 0, i32 3, i32 1
  %10 = ptrtoint ptr %ipv4_udp_en.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 15, ptr %ipv4_udp_en.i, align 1
  %ipv4_sctp_en.i = getelementptr inbounds %struct.hclge_comm_rss_cfg, ptr %rss_cfg, i32 0, i32 3, i32 2
  %11 = ptrtoint ptr %ipv4_sctp_en.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 31, ptr %ipv4_sctp_en.i, align 1
  %ipv4_fragment_en.i = getelementptr inbounds %struct.hclge_comm_rss_cfg, ptr %rss_cfg, i32 0, i32 3, i32 3
  %12 = ptrtoint ptr %ipv4_fragment_en.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 15, ptr %ipv4_fragment_en.i, align 1
  %ipv6_tcp_en.i = getelementptr inbounds %struct.hclge_comm_rss_cfg, ptr %rss_cfg, i32 0, i32 3, i32 4
  %13 = ptrtoint ptr %ipv6_tcp_en.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 15, ptr %ipv6_tcp_en.i, align 1
  %ipv6_udp_en.i = getelementptr inbounds %struct.hclge_comm_rss_cfg, ptr %rss_cfg, i32 0, i32 3, i32 5
  %14 = ptrtoint ptr %ipv6_udp_en.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 15, ptr %ipv6_udp_en.i, align 1
  %15 = ptrtoint ptr %dev_version to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dev_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 34, i32 %16)
  %cmp.i = icmp ult i32 %16, 34
  %conv.i = select i1 %cmp.i, i8 28, i8 31
  %ipv6_sctp_en.i = getelementptr inbounds %struct.hclge_comm_rss_cfg, ptr %rss_cfg, i32 0, i32 3, i32 6
  %17 = ptrtoint ptr %ipv6_sctp_en.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv.i, ptr %ipv6_sctp_en.i, align 1
  %ipv6_fragment_en.i = getelementptr inbounds %struct.hclge_comm_rss_cfg, ptr %rss_cfg, i32 0, i32 3, i32 7
  %18 = ptrtoint ptr %ipv6_fragment_en.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 15, ptr %ipv6_fragment_en.i, align 1
  %rss_algo6 = getelementptr inbounds %struct.hclge_comm_rss_cfg, ptr %rss_cfg, i32 0, i32 2
  %19 = ptrtoint ptr %rss_algo6 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %spec.select, ptr %rss_algo6, align 4
  %conv7 = zext i16 %1 to i32
  %20 = shl nuw nsw i32 %conv7, 1
  %21 = ptrtoint ptr %ae_dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ae_dev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 44
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %20, i32 noundef 3520) #10
  %tobool8.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool8.not, label %if.end.cleanup_crit_edge, label %if.end10

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %rss_indirection_tbl = getelementptr inbounds %struct.hclge_comm_rss_cfg, ptr %rss_cfg, i32 0, i32 1
  %23 = ptrtoint ptr %rss_indirection_tbl to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call5.i.i, ptr %rss_indirection_tbl, align 4
  %24 = call ptr @memcpy(ptr %rss_cfg, ptr @hclge_comm_hash_key, i32 40)
  %25 = ptrtoint ptr %rss_ind_tbl_size1 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %rss_ind_tbl_size1, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %cmp9.not.i = icmp eq i16 %26, 0
  br i1 %cmp9.not.i, label %if.end10.cleanup_crit_edge, label %for.body.lr.ph.i

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %if.end10
  %rss_size.i = getelementptr inbounds %struct.hclge_comm_rss_cfg, ptr %rss_cfg, i32 0, i32 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %indvars.iv.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %indvars.iv.next.i, %for.body.i.for.body.i_crit_edge ]
  %27 = ptrtoint ptr %rss_size.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %rss_size.i, align 4
  %rem.i = urem i32 %indvars.iv.i, %28
  %conv4.i = trunc i32 %rem.i to i16
  %29 = ptrtoint ptr %rss_indirection_tbl to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %rss_indirection_tbl, align 4
  %arrayidx.i = getelementptr i16, ptr %30, i32 %indvars.iv.i
  %31 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %conv4.i, ptr %arrayidx.i, align 2
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %32 = ptrtoint ptr %rss_ind_tbl_size1 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %rss_ind_tbl_size1, align 4
  %34 = zext i16 %33 to i32
  %cmp.i24 = icmp ult i32 %indvars.iv.next.i, %34
  br i1 %cmp.i24, label %for.body.i.for.body.i_crit_edge, label %for.body.i.cleanup_crit_edge

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

cleanup:                                          ; preds = %for.body.i.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.end.cleanup_crit_edge ], [ 0, %if.end10.cleanup_crit_edge ], [ 0, %for.body.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hclge_comm_rss_indir_init_cfg(ptr nocapture noundef readonly %ae_dev, ptr nocapture noundef readonly %rss_cfg) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %rss_ind_tbl_size = getelementptr inbounds %struct.hnae3_ae_dev, ptr %ae_dev, i32 0, i32 5, i32 3
  %0 = ptrtoint ptr %rss_ind_tbl_size to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %rss_ind_tbl_size, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp9.not = icmp eq i16 %1, 0
  br i1 %cmp9.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %rss_size = getelementptr inbounds %struct.hclge_comm_rss_cfg, ptr %rss_cfg, i32 0, i32 4
  %rss_indirection_tbl = getelementptr inbounds %struct.hclge_comm_rss_cfg, ptr %rss_cfg, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %indvars.iv = phi i32 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body.for.body_crit_edge ]
  %2 = ptrtoint ptr %rss_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rss_size, align 4
  %rem = urem i32 %indvars.iv, %3
  %conv4 = trunc i32 %rem to i16
  %4 = ptrtoint ptr %rss_indirection_tbl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rss_indirection_tbl, align 4
  %arrayidx = getelementptr i16, ptr %5, i32 %indvars.iv
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv4, ptr %arrayidx, align 2
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %7 = ptrtoint ptr %rss_ind_tbl_size to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %rss_ind_tbl_size, align 4
  %9 = zext i16 %8 to i32
  %cmp = icmp ult i32 %indvars.iv.next, %9
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong writeonly uwtable(sync)
define dso_local void @hclge_comm_get_rss_tc_info(i16 noundef zeroext %rss_size, i8 noundef zeroext %hw_tc_map, ptr nocapture noundef writeonly %tc_offset, ptr nocapture noundef writeonly %tc_valid, ptr nocapture noundef writeonly %tc_size) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %conv23 = zext i16 %rss_size to i32
  %sub.i74 = add nsw i32 %conv23, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i74)
  %tobool.not.i.i.i = icmp eq i32 %sub.i74, 0
  %0 = tail call i32 @llvm.ctlz.i32(i32 %sub.i74, i1 true) #10, !range !43
  %sub.i.i.i = sub nuw nsw i32 32, %0
  %sub.i.i.op.i = shl nuw i32 1, %sub.i.i.i
  %sub.i.i.op.i.op = and i32 %sub.i.i.op.i, 65535
  %conv40 = select i1 %tobool.not.i.i.i, i32 1, i32 %sub.i.i.op.i.op
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv40)
  %tobool.not.i.i75 = icmp eq i32 %conv40, 0
  %1 = tail call i32 @llvm.ctlz.i32(i32 %conv40, i1 true) #10, !range !43
  %2 = trunc i32 %1 to i16
  %3 = xor i16 %2, 31
  %conv44 = select i1 %tobool.not.i.i75, i16 -1, i16 %3
  %conv48 = zext i8 %hw_tc_map to i32
  %4 = ptrtoint ptr %tc_valid to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 1, ptr %tc_valid, align 2
  %5 = ptrtoint ptr %tc_size to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %conv44, ptr %tc_size, align 2
  %6 = ptrtoint ptr %tc_offset to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 0, ptr %tc_offset, align 2
  %arrayidx.1 = getelementptr i16, ptr %tc_valid, i32 1
  %7 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 1, ptr %arrayidx.1, align 2
  %arrayidx47.1 = getelementptr i16, ptr %tc_size, i32 1
  %8 = ptrtoint ptr %arrayidx47.1 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv44, ptr %arrayidx47.1, align 2
  %and.1 = and i32 %conv48, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool.not.1 = icmp eq i32 %and.1, 0
  %conv55.1 = select i1 %tobool.not.1, i16 0, i16 %rss_size
  %arrayidx56.1 = getelementptr i16, ptr %tc_offset, i32 1
  %9 = ptrtoint ptr %arrayidx56.1 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv55.1, ptr %arrayidx56.1, align 2
  %arrayidx.2 = getelementptr i16, ptr %tc_valid, i32 2
  %10 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 1, ptr %arrayidx.2, align 2
  %arrayidx47.2 = getelementptr i16, ptr %tc_size, i32 2
  %11 = ptrtoint ptr %arrayidx47.2 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv44, ptr %arrayidx47.2, align 2
  %and.2 = and i32 %conv48, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2)
  %tobool.not.2 = icmp eq i32 %and.2, 0
  %12 = shl i16 %rss_size, 1
  %conv55.2 = select i1 %tobool.not.2, i16 0, i16 %12
  %arrayidx56.2 = getelementptr i16, ptr %tc_offset, i32 2
  %13 = ptrtoint ptr %arrayidx56.2 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv55.2, ptr %arrayidx56.2, align 2
  %arrayidx.3 = getelementptr i16, ptr %tc_valid, i32 3
  %14 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 1, ptr %arrayidx.3, align 2
  %arrayidx47.3 = getelementptr i16, ptr %tc_size, i32 3
  %15 = ptrtoint ptr %arrayidx47.3 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv44, ptr %arrayidx47.3, align 2
  %and.3 = and i32 %conv48, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3)
  %tobool.not.3 = icmp eq i32 %and.3, 0
  %16 = mul i16 %rss_size, 3
  %conv55.3 = select i1 %tobool.not.3, i16 0, i16 %16
  %arrayidx56.3 = getelementptr i16, ptr %tc_offset, i32 3
  %17 = ptrtoint ptr %arrayidx56.3 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv55.3, ptr %arrayidx56.3, align 2
  %arrayidx.4 = getelementptr i16, ptr %tc_valid, i32 4
  %18 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 1, ptr %arrayidx.4, align 2
  %arrayidx47.4 = getelementptr i16, ptr %tc_size, i32 4
  %19 = ptrtoint ptr %arrayidx47.4 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv44, ptr %arrayidx47.4, align 2
  %and.4 = and i32 %conv48, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4)
  %tobool.not.4 = icmp eq i32 %and.4, 0
  %20 = shl i16 %rss_size, 2
  %conv55.4 = select i1 %tobool.not.4, i16 0, i16 %20
  %arrayidx56.4 = getelementptr i16, ptr %tc_offset, i32 4
  %21 = ptrtoint ptr %arrayidx56.4 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv55.4, ptr %arrayidx56.4, align 2
  %arrayidx.5 = getelementptr i16, ptr %tc_valid, i32 5
  %22 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 1, ptr %arrayidx.5, align 2
  %arrayidx47.5 = getelementptr i16, ptr %tc_size, i32 5
  %23 = ptrtoint ptr %arrayidx47.5 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %conv44, ptr %arrayidx47.5, align 2
  %and.5 = and i32 %conv48, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.5)
  %tobool.not.5 = icmp eq i32 %and.5, 0
  %24 = mul i16 %rss_size, 5
  %conv55.5 = select i1 %tobool.not.5, i16 0, i16 %24
  %arrayidx56.5 = getelementptr i16, ptr %tc_offset, i32 5
  %25 = ptrtoint ptr %arrayidx56.5 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %conv55.5, ptr %arrayidx56.5, align 2
  %arrayidx.6 = getelementptr i16, ptr %tc_valid, i32 6
  %26 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 1, ptr %arrayidx.6, align 2
  %arrayidx47.6 = getelementptr i16, ptr %tc_size, i32 6
  %27 = ptrtoint ptr %arrayidx47.6 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %conv44, ptr %arrayidx47.6, align 2
  %and.6 = and i32 %conv48, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.6)
  %tobool.not.6 = icmp eq i32 %and.6, 0
  %28 = mul i16 %rss_size, 6
  %conv55.6 = select i1 %tobool.not.6, i16 0, i16 %28
  %arrayidx56.6 = getelementptr i16, ptr %tc_offset, i32 6
  %29 = ptrtoint ptr %arrayidx56.6 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %conv55.6, ptr %arrayidx56.6, align 2
  %arrayidx.7 = getelementptr i16, ptr %tc_valid, i32 7
  %30 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 1, ptr %arrayidx.7, align 2
  %arrayidx47.7 = getelementptr i16, ptr %tc_size, i32 7
  %31 = ptrtoint ptr %arrayidx47.7 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %conv44, ptr %arrayidx47.7, align 2
  %and.7 = and i32 %conv48, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.7)
  %tobool.not.7 = icmp eq i32 %and.7, 0
  %32 = mul i16 %rss_size, 7
  %conv55.7 = select i1 %tobool.not.7, i16 0, i16 %32
  %arrayidx56.7 = getelementptr i16, ptr %tc_offset, i32 7
  %33 = ptrtoint ptr %arrayidx56.7 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %conv55.7, ptr %arrayidx56.7, align 2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hclge_comm_set_rss_tc_mode(ptr noundef %hw, ptr nocapture noundef readonly %tc_offset, ptr nocapture noundef readonly %tc_valid, ptr nocapture noundef readonly %tc_size) local_unnamed_addr #0 align 64 {
entry:
  %desc = alloca %struct.hclge_desc, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc) #10
  %0 = getelementptr inbounds %struct.hclge_desc, ptr %desc, i32 0, i32 4
  %1 = call ptr @memset(ptr %desc, i32 255, i32 32)
  call void @hclge_comm_cmd_setup_basic_desc(ptr noundef nonnull %desc, i32 noundef 3336, i1 noundef zeroext false) #10
  %2 = ptrtoint ptr %tc_valid to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %tc_valid, align 2
  %4 = shl i16 %3, 15
  %5 = ptrtoint ptr %tc_size to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %tc_size, align 2
  %shl13 = shl i16 %6, 12
  %and14 = and i16 %shl13, 28672
  %or16 = or i16 %and14, %4
  %7 = shl i16 %6, 8
  %8 = and i16 %7, 2048
  %or3069 = or i16 %or16, %8
  %9 = ptrtoint ptr %tc_offset to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %tc_offset, align 2
  %11 = and i16 %10, 2047
  %or4370 = or i16 %or3069, %11
  %12 = call i16 @llvm.bswap.i16(i16 %or4370)
  %13 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %0, align 4
  %arrayidx.1 = getelementptr i16, ptr %tc_valid, i32 1
  %14 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %arrayidx.1, align 2
  %16 = shl i16 %15, 15
  %arrayidx11.1 = getelementptr i16, ptr %tc_size, i32 1
  %17 = ptrtoint ptr %arrayidx11.1 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %arrayidx11.1, align 2
  %shl13.1 = shl i16 %18, 12
  %and14.1 = and i16 %shl13.1, 28672
  %or16.1 = or i16 %and14.1, %16
  %19 = shl i16 %18, 8
  %20 = and i16 %19, 2048
  %or3069.1 = or i16 %or16.1, %20
  %arrayidx38.1 = getelementptr i16, ptr %tc_offset, i32 1
  %21 = ptrtoint ptr %arrayidx38.1 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %arrayidx38.1, align 2
  %23 = and i16 %22, 2047
  %or4370.1 = or i16 %or3069.1, %23
  %24 = call i16 @llvm.bswap.i16(i16 %or4370.1)
  %arrayidx47.1 = getelementptr inbounds [8 x i16], ptr %0, i32 0, i32 1
  %25 = ptrtoint ptr %arrayidx47.1 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %24, ptr %arrayidx47.1, align 2
  %arrayidx.2 = getelementptr i16, ptr %tc_valid, i32 2
  %26 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %arrayidx.2, align 2
  %28 = shl i16 %27, 15
  %arrayidx11.2 = getelementptr i16, ptr %tc_size, i32 2
  %29 = ptrtoint ptr %arrayidx11.2 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %arrayidx11.2, align 2
  %shl13.2 = shl i16 %30, 12
  %and14.2 = and i16 %shl13.2, 28672
  %or16.2 = or i16 %and14.2, %28
  %31 = shl i16 %30, 8
  %32 = and i16 %31, 2048
  %or3069.2 = or i16 %or16.2, %32
  %arrayidx38.2 = getelementptr i16, ptr %tc_offset, i32 2
  %33 = ptrtoint ptr %arrayidx38.2 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %arrayidx38.2, align 2
  %35 = and i16 %34, 2047
  %or4370.2 = or i16 %or3069.2, %35
  %36 = call i16 @llvm.bswap.i16(i16 %or4370.2)
  %arrayidx47.2 = getelementptr inbounds %struct.hclge_desc, ptr %desc, i32 0, i32 4, i32 1
  %37 = ptrtoint ptr %arrayidx47.2 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %36, ptr %arrayidx47.2, align 4
  %arrayidx.3 = getelementptr i16, ptr %tc_valid, i32 3
  %38 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %arrayidx.3, align 2
  %40 = shl i16 %39, 15
  %arrayidx11.3 = getelementptr i16, ptr %tc_size, i32 3
  %41 = ptrtoint ptr %arrayidx11.3 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %arrayidx11.3, align 2
  %shl13.3 = shl i16 %42, 12
  %and14.3 = and i16 %shl13.3, 28672
  %or16.3 = or i16 %and14.3, %40
  %43 = shl i16 %42, 8
  %44 = and i16 %43, 2048
  %or3069.3 = or i16 %or16.3, %44
  %arrayidx38.3 = getelementptr i16, ptr %tc_offset, i32 3
  %45 = ptrtoint ptr %arrayidx38.3 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %arrayidx38.3, align 2
  %47 = and i16 %46, 2047
  %or4370.3 = or i16 %or3069.3, %47
  %48 = call i16 @llvm.bswap.i16(i16 %or4370.3)
  %arrayidx47.3 = getelementptr inbounds [8 x i16], ptr %0, i32 0, i32 3
  %49 = ptrtoint ptr %arrayidx47.3 to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %48, ptr %arrayidx47.3, align 2
  %arrayidx.4 = getelementptr i16, ptr %tc_valid, i32 4
  %50 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %arrayidx.4, align 2
  %52 = shl i16 %51, 15
  %arrayidx11.4 = getelementptr i16, ptr %tc_size, i32 4
  %53 = ptrtoint ptr %arrayidx11.4 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %arrayidx11.4, align 2
  %shl13.4 = shl i16 %54, 12
  %and14.4 = and i16 %shl13.4, 28672
  %or16.4 = or i16 %and14.4, %52
  %55 = shl i16 %54, 8
  %56 = and i16 %55, 2048
  %or3069.4 = or i16 %or16.4, %56
  %arrayidx38.4 = getelementptr i16, ptr %tc_offset, i32 4
  %57 = ptrtoint ptr %arrayidx38.4 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %arrayidx38.4, align 2
  %59 = and i16 %58, 2047
  %or4370.4 = or i16 %or3069.4, %59
  %60 = call i16 @llvm.bswap.i16(i16 %or4370.4)
  %arrayidx47.4 = getelementptr inbounds %struct.hclge_desc, ptr %desc, i32 0, i32 4, i32 2
  %61 = ptrtoint ptr %arrayidx47.4 to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %60, ptr %arrayidx47.4, align 4
  %arrayidx.5 = getelementptr i16, ptr %tc_valid, i32 5
  %62 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %arrayidx.5, align 2
  %64 = shl i16 %63, 15
  %arrayidx11.5 = getelementptr i16, ptr %tc_size, i32 5
  %65 = ptrtoint ptr %arrayidx11.5 to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %arrayidx11.5, align 2
  %shl13.5 = shl i16 %66, 12
  %and14.5 = and i16 %shl13.5, 28672
  %or16.5 = or i16 %and14.5, %64
  %67 = shl i16 %66, 8
  %68 = and i16 %67, 2048
  %or3069.5 = or i16 %or16.5, %68
  %arrayidx38.5 = getelementptr i16, ptr %tc_offset, i32 5
  %69 = ptrtoint ptr %arrayidx38.5 to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %arrayidx38.5, align 2
  %71 = and i16 %70, 2047
  %or4370.5 = or i16 %or3069.5, %71
  %72 = call i16 @llvm.bswap.i16(i16 %or4370.5)
  %arrayidx47.5 = getelementptr inbounds [8 x i16], ptr %0, i32 0, i32 5
  %73 = ptrtoint ptr %arrayidx47.5 to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 %72, ptr %arrayidx47.5, align 2
  %arrayidx.6 = getelementptr i16, ptr %tc_valid, i32 6
  %74 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %arrayidx.6, align 2
  %76 = shl i16 %75, 15
  %arrayidx11.6 = getelementptr i16, ptr %tc_size, i32 6
  %77 = ptrtoint ptr %arrayidx11.6 to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %arrayidx11.6, align 2
  %shl13.6 = shl i16 %78, 12
  %and14.6 = and i16 %shl13.6, 28672
  %or16.6 = or i16 %and14.6, %76
  %79 = shl i16 %78, 8
  %80 = and i16 %79, 2048
  %or3069.6 = or i16 %or16.6, %80
  %arrayidx38.6 = getelementptr i16, ptr %tc_offset, i32 6
  %81 = ptrtoint ptr %arrayidx38.6 to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %arrayidx38.6, align 2
  %83 = and i16 %82, 2047
  %or4370.6 = or i16 %or3069.6, %83
  %84 = call i16 @llvm.bswap.i16(i16 %or4370.6)
  %arrayidx47.6 = getelementptr inbounds %struct.hclge_desc, ptr %desc, i32 0, i32 4, i32 3
  %85 = ptrtoint ptr %arrayidx47.6 to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 %84, ptr %arrayidx47.6, align 4
  %arrayidx.7 = getelementptr i16, ptr %tc_valid, i32 7
  %86 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %arrayidx.7, align 2
  %88 = shl i16 %87, 15
  %arrayidx11.7 = getelementptr i16, ptr %tc_size, i32 7
  %89 = ptrtoint ptr %arrayidx11.7 to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %arrayidx11.7, align 2
  %shl13.7 = shl i16 %90, 12
  %and14.7 = and i16 %shl13.7, 28672
  %or16.7 = or i16 %and14.7, %88
  %91 = shl i16 %90, 8
  %92 = and i16 %91, 2048
  %or3069.7 = or i16 %or16.7, %92
  %arrayidx38.7 = getelementptr i16, ptr %tc_offset, i32 7
  %93 = ptrtoint ptr %arrayidx38.7 to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %arrayidx38.7, align 2
  %95 = and i16 %94, 2047
  %or4370.7 = or i16 %or3069.7, %95
  %96 = call i16 @llvm.bswap.i16(i16 %or4370.7)
  %arrayidx47.7 = getelementptr inbounds [8 x i16], ptr %0, i32 0, i32 7
  %97 = ptrtoint ptr %arrayidx47.7 to i32
  call void @__asan_store2_noabort(i32 %97)
  store i16 %96, ptr %arrayidx47.7, align 2
  %call = call i32 @hclge_comm_cmd_send(ptr noundef %hw, ptr noundef nonnull %desc, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end50

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end50:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %pdev = getelementptr inbounds %struct.hclge_comm_hw, ptr %hw, i32 0, i32 2, i32 0, i32 2
  %98 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %99, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str, i32 noundef %call) #13
  br label %if.end

if.end:                                           ; preds = %do.end50, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc) #10
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hclge_comm_cmd_setup_basic_desc(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hclge_comm_cmd_send(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hclge_comm_set_rss_hash_key(ptr nocapture noundef %rss_cfg, ptr noundef %hw, ptr noundef readonly %key, i8 noundef zeroext %hfunc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i8 %hfunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i8 %hfunc, label %entry.cleanup_crit_edge [
    i8 1, label %entry.if.end_crit_edge
    i8 2, label %sw.bb1.i
    i8 0, label %sw.bb2.i
  ]

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

sw.bb2.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %rss_algo.i = getelementptr inbounds %struct.hclge_comm_rss_cfg, ptr %rss_cfg, i32 0, i32 2
  %1 = ptrtoint ptr %rss_algo.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %rss_algo.i, align 4
  %conv3.i = trunc i32 %2 to i8
  br label %if.end

if.end:                                           ; preds = %sw.bb2.i, %sw.bb1.i, %entry.if.end_crit_edge
  %conv3.sink.i = phi i8 [ %conv3.i, %sw.bb2.i ], [ 1, %sw.bb1.i ], [ 0, %entry.if.end_crit_edge ]
  %tobool1.not = icmp eq ptr %key, null
  br i1 %tobool1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  %call3 = tail call i32 @hclge_comm_set_rss_algo_key(ptr noundef %hw, i8 noundef zeroext %conv3.sink.i, ptr noundef nonnull %key)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.then2.cleanup_crit_edge

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  %3 = call ptr @memcpy(ptr %rss_cfg, ptr %key, i32 40)
  br label %if.end13

if.else:                                          ; preds = %if.end
  %call9 = tail call i32 @hclge_comm_set_rss_algo_key(ptr noundef %hw, i8 noundef zeroext %conv3.sink.i, ptr noundef %rss_cfg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.else.if.end13_crit_edge, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else.if.end13_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.end13:                                         ; preds = %if.else.if.end13_crit_edge, %if.end6
  %conv = zext i8 %conv3.sink.i to i32
  %rss_algo = getelementptr inbounds %struct.hclge_comm_rss_cfg, ptr %rss_cfg, i32 0, i32 2
  %4 = ptrtoint ptr %rss_algo to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv, ptr %rss_algo, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.else.cleanup_crit_edge, %if.then2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end13 ], [ %call3, %if.then2.cleanup_crit_edge ], [ %call9, %if.else.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @hclge_comm_parse_rss_hfunc(ptr nocapture noundef readonly %rss_cfg, i8 noundef zeroext %hfunc, ptr nocapture noundef writeonly %hash_algo) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i8 %hfunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.16)
  switch i8 %hfunc, label %entry.return_crit_edge [
    i8 1, label %entry.return.sink.split_crit_edge
    i8 2, label %sw.bb1
    i8 0, label %sw.bb2
  ]

entry.return.sink.split_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return.sink.split

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return.sink.split

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %rss_algo = getelementptr inbounds %struct.hclge_comm_rss_cfg, ptr %rss_cfg, i32 0, i32 2
  %1 = ptrtoint ptr %rss_algo to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %rss_algo, align 4
  %conv3 = trunc i32 %2 to i8
  br label %return.sink.split

return.sink.split:                                ; preds = %sw.bb2, %sw.bb1, %entry.return.sink.split_crit_edge
  %conv3.sink = phi i8 [ %conv3, %sw.bb2 ], [ 1, %sw.bb1 ], [ 0, %entry.return.sink.split_crit_edge ]
  %3 = ptrtoint ptr %hash_algo to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv3.sink, ptr %hash_algo, align 1
  br label %return

return:                                           ; preds = %return.sink.split, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %entry.return_crit_edge ], [ 0, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hclge_comm_set_rss_algo_key(ptr noundef %hw, i8 noundef zeroext %hfunc, ptr nocapture noundef readonly %key) local_unnamed_addr #0 align 64 {
entry:
  %desc = alloca %struct.hclge_desc, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc) #10
  %0 = getelementptr inbounds %struct.hclge_desc, ptr %desc, i32 0, i32 4
  %1 = getelementptr inbounds %struct.hclge_desc, ptr %desc, i32 0, i32 4, i32 2
  %2 = and i8 %hfunc, 15
  %3 = call ptr @memset(ptr %desc, i32 255, i32 32)
  call void @hclge_comm_cmd_setup_basic_desc(ptr noundef nonnull %desc, i32 noundef 3329, i1 noundef zeroext false) #10
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %0, align 4
  %conv6 = or i8 %2, %5
  store i8 %conv6, ptr %0, align 4
  %6 = call ptr @memcpy(ptr %1, ptr %key, i32 16)
  %call = call i32 @hclge_comm_cmd_send(ptr noundef %hw, ptr noundef nonnull %desc, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool9.not = icmp eq i32 %call, 0
  br i1 %tobool9.not, label %while.cond.1, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

while.cond.1:                                     ; preds = %entry
  call void @hclge_comm_cmd_setup_basic_desc(ptr noundef nonnull %desc, i32 noundef 3329, i1 noundef zeroext false) #10
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %0, align 4
  %or27.1 = or i8 %2, %8
  %conv6.1 = or i8 %or27.1, 16
  store i8 %conv6.1, ptr %0, align 4
  %add.ptr.1 = getelementptr i8, ptr %key, i32 16
  %9 = call ptr @memcpy(ptr %1, ptr %add.ptr.1, i32 16)
  %call.1 = call i32 @hclge_comm_cmd_send(ptr noundef %hw, ptr noundef nonnull %desc, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1)
  %tobool9.not.1 = icmp eq i32 %call.1, 0
  br i1 %tobool9.not.1, label %while.cond.2, label %while.cond.1.do.end_crit_edge

while.cond.1.do.end_crit_edge:                    ; preds = %while.cond.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

while.cond.2:                                     ; preds = %while.cond.1
  call void @hclge_comm_cmd_setup_basic_desc(ptr noundef nonnull %desc, i32 noundef 3329, i1 noundef zeroext false) #10
  %10 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %0, align 4
  %or27.2 = or i8 %2, %11
  %conv6.2 = or i8 %or27.2, 32
  store i8 %conv6.2, ptr %0, align 4
  %add.ptr.2 = getelementptr i8, ptr %key, i32 32
  %12 = ptrtoint ptr %add.ptr.2 to i32
  call void @__asan_loadN_noabort(i32 %12, i32 8)
  %13 = load i64, ptr %add.ptr.2, align 1
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %14, i32 8)
  store i64 %13, ptr %1, align 4
  %call.2 = call i32 @hclge_comm_cmd_send(ptr noundef %hw, ptr noundef nonnull %desc, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2)
  %tobool9.not.2 = icmp eq i32 %call.2, 0
  br i1 %tobool9.not.2, label %while.cond.2.cleanup_crit_edge, label %while.cond.2.do.end_crit_edge

while.cond.2.do.end_crit_edge:                    ; preds = %while.cond.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

while.cond.2.cleanup_crit_edge:                   ; preds = %while.cond.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %while.cond.2.do.end_crit_edge, %while.cond.1.do.end_crit_edge, %entry.do.end_crit_edge
  %call.lcssa = phi i32 [ %call, %entry.do.end_crit_edge ], [ %call.1, %while.cond.1.do.end_crit_edge ], [ %call.2, %while.cond.2.do.end_crit_edge ]
  %pdev = getelementptr inbounds %struct.hclge_comm_hw, ptr %hw, i32 0, i32 2, i32 0, i32 2
  %15 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14, i32 noundef %call.lcssa) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end, %while.cond.2.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.lcssa, %do.end ], [ 0, %while.cond.2.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hclge_comm_set_rss_tuple(ptr nocapture noundef readonly %ae_dev, ptr noundef %hw, ptr nocapture noundef %rss_cfg, ptr nocapture noundef readonly %nfc) local_unnamed_addr #0 align 64 {
entry:
  %desc = alloca %struct.hclge_desc, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc) #10
  %0 = getelementptr inbounds %struct.hclge_desc, ptr %desc, i32 0, i32 4
  %1 = getelementptr inbounds %struct.hclge_desc, ptr %desc, i32 0, i32 4, i32 1
  %data = getelementptr inbounds %struct.ethtool_rxnfc, ptr %nfc, i32 0, i32 2
  %2 = call ptr @memset(ptr %desc, i32 255, i32 32)
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %data, align 8
  %and = and i64 %4, -241
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @hclge_comm_cmd_setup_basic_desc(ptr noundef nonnull %desc, i32 noundef 3330, i1 noundef zeroext false) #10
  %rss_tuple_sets.i = getelementptr inbounds %struct.hclge_comm_rss_cfg, ptr %rss_cfg, i32 0, i32 3
  %5 = ptrtoint ptr %rss_tuple_sets.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %rss_tuple_sets.i, align 4
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %0, align 4
  %ipv4_udp_en.i = getelementptr inbounds %struct.hclge_comm_rss_cfg, ptr %rss_cfg, i32 0, i32 3, i32 1
  %8 = ptrtoint ptr %ipv4_udp_en.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ipv4_udp_en.i, align 1
  %ipv4_udp_en3.i = getelementptr inbounds %struct.hclge_comm_rss_input_tuple_cmd, ptr %0, i32 0, i32 1
  %10 = ptrtoint ptr %ipv4_udp_en3.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %ipv4_udp_en3.i, align 1
  %ipv4_sctp_en.i = getelementptr inbounds %struct.hclge_comm_rss_cfg, ptr %rss_cfg, i32 0, i32 3, i32 2
  %11 = ptrtoint ptr %ipv4_sctp_en.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %ipv4_sctp_en.i, align 2
  %ipv4_sctp_en5.i = getelementptr inbounds %struct.hclge_comm_rss_input_tuple_cmd, ptr %0, i32 0, i32 2
  %13 = ptrtoint ptr %ipv4_sctp_en5.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %ipv4_sctp_en5.i, align 2
  %ipv4_fragment_en.i = getelementptr inbounds %struct.hclge_comm_rss_cfg, ptr %rss_cfg, i32 0, i32 3, i32 3
  %14 = ptrtoint ptr %ipv4_fragment_en.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %ipv4_fragment_en.i, align 1
  %ipv4_fragment_en7.i = getelementptr inbounds %struct.hclge_comm_rss_input_tuple_cmd, ptr %0, i32 0, i32 3
  %16 = ptrtoint ptr %ipv4_fragment_en7.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %ipv4_fragment_en7.i, align 1
  %ipv6_tcp_en.i = getelementptr inbounds %struct.hclge_comm_rss_cfg, ptr %rss_cfg, i32 0, i32 3, i32 4
  %17 = ptrtoint ptr %ipv6_tcp_en.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %ipv6_tcp_en.i, align 4
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %1, align 4
  %ipv6_udp_en.i = getelementptr inbounds %struct.hclge_comm_rss_cfg, ptr %rss_cfg, i32 0, i32 3, i32 5
  %20 = ptrtoint ptr %ipv6_udp_en.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %ipv6_udp_en.i, align 1
  %ipv6_udp_en11.i = getelementptr inbounds %struct.hclge_comm_rss_input_tuple_cmd, ptr %0, i32 0, i32 5
  %22 = ptrtoint ptr %ipv6_udp_en11.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %ipv6_udp_en11.i, align 1
  %ipv6_sctp_en.i = getelementptr inbounds %struct.hclge_comm_rss_cfg, ptr %rss_cfg, i32 0, i32 3, i32 6
  %23 = ptrtoint ptr %ipv6_sctp_en.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %ipv6_sctp_en.i, align 2
  %ipv6_sctp_en13.i = getelementptr inbounds %struct.hclge_comm_rss_input_tuple_cmd, ptr %0, i32 0, i32 6
  %25 = ptrtoint ptr %ipv6_sctp_en13.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %ipv6_sctp_en13.i, align 2
  %ipv6_fragment_en.i = getelementptr inbounds %struct.hclge_comm_rss_cfg, ptr %rss_cfg, i32 0, i32 3, i32 7
  %26 = ptrtoint ptr %ipv6_fragment_en.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %ipv6_fragment_en.i, align 1
  %ipv6_fragment_en15.i = getelementptr inbounds %struct.hclge_comm_rss_input_tuple_cmd, ptr %0, i32 0, i32 7
  %28 = ptrtoint ptr %ipv6_fragment_en15.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %ipv6_fragment_en15.i, align 1
  %29 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %data, align 8
  %31 = trunc i64 %30 to i8
  %32 = lshr i8 %31, 5
  %conv.i.i = and i8 %32, 2
  %33 = lshr i8 %31, 7
  %34 = or i8 %conv.i.i, %33
  %35 = lshr i8 %31, 1
  %36 = and i8 %35, 8
  %37 = or i8 %34, %36
  %38 = lshr i8 %31, 3
  %39 = and i8 %38, 4
  %40 = or i8 %37, %39
  %flow_type.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %nfc, i32 0, i32 1
  %41 = ptrtoint ptr %flow_type.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %flow_type.i.i, align 4
  %43 = zext i32 %42 to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %42, label %if.end.hclge_comm_get_rss_hash_bits.exit.i_crit_edge [
    i32 3, label %if.end.if.then37.i.i_crit_edge
    i32 7, label %if.end.if.then37.i.i_crit_edge59
  ]

if.end.if.then37.i.i_crit_edge59:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then37.i.i

if.end.if.then37.i.i_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then37.i.i

if.end.hclge_comm_get_rss_hash_bits.exit.i_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %hclge_comm_get_rss_hash_bits.exit.i

if.then37.i.i:                                    ; preds = %if.end.if.then37.i.i_crit_edge, %if.end.if.then37.i.i_crit_edge59
  %44 = or i8 %40, 16
  br label %hclge_comm_get_rss_hash_bits.exit.i

hclge_comm_get_rss_hash_bits.exit.i:              ; preds = %if.then37.i.i, %if.end.hclge_comm_get_rss_hash_bits.exit.i_crit_edge
  %hash_sets.3.i.i = phi i8 [ %44, %if.then37.i.i ], [ %40, %if.end.hclge_comm_get_rss_hash_bits.exit.i_crit_edge ]
  %45 = zext i32 %42 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %42, label %hclge_comm_get_rss_hash_bits.exit.i.do.end_crit_edge [
    i32 1, label %sw.bb.i
    i32 5, label %sw.bb17.i
    i32 2, label %sw.bb19.i
    i32 6, label %sw.bb21.i
    i32 3, label %sw.bb23.i
    i32 7, label %sw.bb25.i
    i32 16, label %sw.bb27.i
    i32 17, label %sw.bb29.i
  ]

hclge_comm_get_rss_hash_bits.exit.i.do.end_crit_edge: ; preds = %hclge_comm_get_rss_hash_bits.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

sw.bb.i:                                          ; preds = %hclge_comm_get_rss_hash_bits.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %46 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %hash_sets.3.i.i, ptr %0, align 4
  br label %if.end4

sw.bb17.i:                                        ; preds = %hclge_comm_get_rss_hash_bits.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %47 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %hash_sets.3.i.i, ptr %1, align 4
  br label %if.end4

sw.bb19.i:                                        ; preds = %hclge_comm_get_rss_hash_bits.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %48 = ptrtoint ptr %ipv4_udp_en3.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %hash_sets.3.i.i, ptr %ipv4_udp_en3.i, align 1
  br label %if.end4

sw.bb21.i:                                        ; preds = %hclge_comm_get_rss_hash_bits.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %49 = ptrtoint ptr %ipv6_udp_en11.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %hash_sets.3.i.i, ptr %ipv6_udp_en11.i, align 1
  br label %if.end4

sw.bb23.i:                                        ; preds = %hclge_comm_get_rss_hash_bits.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %50 = ptrtoint ptr %ipv4_sctp_en5.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %hash_sets.3.i.i, ptr %ipv4_sctp_en5.i, align 2
  br label %if.end4

sw.bb25.i:                                        ; preds = %hclge_comm_get_rss_hash_bits.exit.i
  %dev_version.i = getelementptr inbounds %struct.hnae3_ae_dev, ptr %ae_dev, i32 0, i32 6
  %51 = ptrtoint ptr %dev_version.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %dev_version.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %52)
  %cmp.i = icmp ugt i32 %52, 33
  %and.i = and i64 %30, 192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i = icmp eq i64 %and.i, 0
  %or.cond.i = select i1 %cmp.i, i1 true, i1 %tobool.not.i
  br i1 %or.cond.i, label %if.end.i, label %sw.bb25.i.do.end_crit_edge

sw.bb25.i.do.end_crit_edge:                       ; preds = %sw.bb25.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.end.i:                                         ; preds = %sw.bb25.i
  call void @__sanitizer_cov_trace_pc() #12
  %53 = ptrtoint ptr %ipv6_sctp_en13.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %hash_sets.3.i.i, ptr %ipv6_sctp_en13.i, align 2
  br label %if.end4

sw.bb27.i:                                        ; preds = %hclge_comm_get_rss_hash_bits.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %54 = ptrtoint ptr %ipv4_fragment_en7.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 15, ptr %ipv4_fragment_en7.i, align 1
  br label %if.end4

sw.bb29.i:                                        ; preds = %hclge_comm_get_rss_hash_bits.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %55 = ptrtoint ptr %ipv6_fragment_en15.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 15, ptr %ipv6_fragment_en15.i, align 1
  br label %if.end4

do.end:                                           ; preds = %sw.bb25.i.do.end_crit_edge, %hclge_comm_get_rss_hash_bits.exit.i.do.end_crit_edge
  %pdev = getelementptr inbounds %struct.hclge_comm_hw, ptr %hw, i32 0, i32 2, i32 0, i32 2
  %56 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %57, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.5, i32 noundef -22) #13
  br label %cleanup

if.end4:                                          ; preds = %sw.bb29.i, %sw.bb27.i, %if.end.i, %sw.bb23.i, %sw.bb21.i, %sw.bb19.i, %sw.bb17.i, %sw.bb.i
  %call5 = call i32 @hclge_comm_cmd_send(ptr noundef %hw, ptr noundef nonnull %desc, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end15, label %do.end10

do.end10:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  %pdev13 = getelementptr inbounds %struct.hclge_comm_hw, ptr %hw, i32 0, i32 2, i32 0, i32 2
  %58 = ptrtoint ptr %pdev13 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %pdev13, align 4
  %dev14 = getelementptr inbounds %struct.pci_dev, ptr %59, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev14, ptr noundef nonnull @.str.8, i32 noundef %call5) #13
  br label %cleanup

if.end15:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  %60 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %0, align 4
  %62 = ptrtoint ptr %rss_tuple_sets.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %61, ptr %rss_tuple_sets.i, align 4
  %63 = ptrtoint ptr %ipv4_udp_en3.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %ipv4_udp_en3.i, align 1
  %65 = ptrtoint ptr %ipv4_udp_en.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %64, ptr %ipv4_udp_en.i, align 1
  %66 = ptrtoint ptr %ipv4_sctp_en5.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %ipv4_sctp_en5.i, align 2
  %68 = ptrtoint ptr %ipv4_sctp_en.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %67, ptr %ipv4_sctp_en.i, align 2
  %69 = ptrtoint ptr %ipv4_fragment_en7.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %ipv4_fragment_en7.i, align 1
  %71 = ptrtoint ptr %ipv4_fragment_en.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %70, ptr %ipv4_fragment_en.i, align 1
  %72 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %1, align 4
  %74 = ptrtoint ptr %ipv6_tcp_en.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %73, ptr %ipv6_tcp_en.i, align 4
  %75 = ptrtoint ptr %ipv6_udp_en11.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %ipv6_udp_en11.i, align 1
  %77 = ptrtoint ptr %ipv6_udp_en.i to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %76, ptr %ipv6_udp_en.i, align 1
  %78 = ptrtoint ptr %ipv6_sctp_en13.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %ipv6_sctp_en13.i, align 2
  %80 = ptrtoint ptr %ipv6_sctp_en.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %79, ptr %ipv6_sctp_en.i, align 2
  %81 = ptrtoint ptr %ipv6_fragment_en15.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %ipv6_fragment_en15.i, align 1
  %83 = ptrtoint ptr %ipv6_fragment_en.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %82, ptr %ipv6_fragment_en.i, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %do.end10, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ %call5, %do.end10 ], [ 0, %if.end15 ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc) #10
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @hclge_comm_init_rss_tuple_cmd(ptr nocapture noundef readonly %rss_cfg, ptr nocapture noundef readonly %nfc, ptr nocapture noundef readonly %ae_dev, ptr nocapture noundef writeonly %req) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %rss_tuple_sets = getelementptr inbounds %struct.hclge_comm_rss_cfg, ptr %rss_cfg, i32 0, i32 3
  %0 = ptrtoint ptr %rss_tuple_sets to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %rss_tuple_sets, align 4
  %2 = ptrtoint ptr %req to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %1, ptr %req, align 1
  %ipv4_udp_en = getelementptr inbounds %struct.hclge_comm_rss_cfg, ptr %rss_cfg, i32 0, i32 3, i32 1
  %3 = ptrtoint ptr %ipv4_udp_en to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %ipv4_udp_en, align 1
  %ipv4_udp_en3 = getelementptr inbounds %struct.hclge_comm_rss_input_tuple_cmd, ptr %req, i32 0, i32 1
  %5 = ptrtoint ptr %ipv4_udp_en3 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %ipv4_udp_en3, align 1
  %ipv4_sctp_en = getelementptr inbounds %struct.hclge_comm_rss_cfg, ptr %rss_cfg, i32 0, i32 3, i32 2
  %6 = ptrtoint ptr %ipv4_sctp_en to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ipv4_sctp_en, align 2
  %ipv4_sctp_en5 = getelementptr inbounds %struct.hclge_comm_rss_input_tuple_cmd, ptr %req, i32 0, i32 2
  %8 = ptrtoint ptr %ipv4_sctp_en5 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %ipv4_sctp_en5, align 1
  %ipv4_fragment_en = getelementptr inbounds %struct.hclge_comm_rss_cfg, ptr %rss_cfg, i32 0, i32 3, i32 3
  %9 = ptrtoint ptr %ipv4_fragment_en to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %ipv4_fragment_en, align 1
  %ipv4_fragment_en7 = getelementptr inbounds %struct.hclge_comm_rss_input_tuple_cmd, ptr %req, i32 0, i32 3
  %11 = ptrtoint ptr %ipv4_fragment_en7 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %ipv4_fragment_en7, align 1
  %ipv6_tcp_en = getelementptr inbounds %struct.hclge_comm_rss_cfg, ptr %rss_cfg, i32 0, i32 3, i32 4
  %12 = ptrtoint ptr %ipv6_tcp_en to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %ipv6_tcp_en, align 4
  %ipv6_tcp_en9 = getelementptr inbounds %struct.hclge_comm_rss_input_tuple_cmd, ptr %req, i32 0, i32 4
  %14 = ptrtoint ptr %ipv6_tcp_en9 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %ipv6_tcp_en9, align 1
  %ipv6_udp_en = getelementptr inbounds %struct.hclge_comm_rss_cfg, ptr %rss_cfg, i32 0, i32 3, i32 5
  %15 = ptrtoint ptr %ipv6_udp_en to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %ipv6_udp_en, align 1
  %ipv6_udp_en11 = getelementptr inbounds %struct.hclge_comm_rss_input_tuple_cmd, ptr %req, i32 0, i32 5
  %17 = ptrtoint ptr %ipv6_udp_en11 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %ipv6_udp_en11, align 1
  %ipv6_sctp_en = getelementptr inbounds %struct.hclge_comm_rss_cfg, ptr %rss_cfg, i32 0, i32 3, i32 6
  %18 = ptrtoint ptr %ipv6_sctp_en to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %ipv6_sctp_en, align 2
  %ipv6_sctp_en13 = getelementptr inbounds %struct.hclge_comm_rss_input_tuple_cmd, ptr %req, i32 0, i32 6
  %20 = ptrtoint ptr %ipv6_sctp_en13 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %ipv6_sctp_en13, align 1
  %ipv6_fragment_en = getelementptr inbounds %struct.hclge_comm_rss_cfg, ptr %rss_cfg, i32 0, i32 3, i32 7
  %21 = ptrtoint ptr %ipv6_fragment_en to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %ipv6_fragment_en, align 1
  %ipv6_fragment_en15 = getelementptr inbounds %struct.hclge_comm_rss_input_tuple_cmd, ptr %req, i32 0, i32 7
  %23 = ptrtoint ptr %ipv6_fragment_en15 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %ipv6_fragment_en15, align 1
  %data.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %nfc, i32 0, i32 2
  %24 = ptrtoint ptr %data.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %data.i, align 8
  %26 = trunc i64 %25 to i8
  %27 = lshr i8 %26, 5
  %conv.i = and i8 %27, 2
  %28 = lshr i8 %26, 7
  %29 = or i8 %conv.i, %28
  %30 = lshr i8 %26, 1
  %31 = and i8 %30, 8
  %32 = or i8 %29, %31
  %33 = lshr i8 %26, 3
  %34 = and i8 %33, 4
  %35 = or i8 %32, %34
  %flow_type.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %nfc, i32 0, i32 1
  %36 = ptrtoint ptr %flow_type.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %flow_type.i, align 4
  %38 = zext i32 %37 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %37, label %entry.hclge_comm_get_rss_hash_bits.exit_crit_edge [
    i32 3, label %entry.if.then37.i_crit_edge
    i32 7, label %entry.if.then37.i_crit_edge60
  ]

entry.if.then37.i_crit_edge60:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then37.i

entry.if.then37.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then37.i

entry.hclge_comm_get_rss_hash_bits.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %hclge_comm_get_rss_hash_bits.exit

if.then37.i:                                      ; preds = %entry.if.then37.i_crit_edge, %entry.if.then37.i_crit_edge60
  %39 = or i8 %35, 16
  br label %hclge_comm_get_rss_hash_bits.exit

hclge_comm_get_rss_hash_bits.exit:                ; preds = %if.then37.i, %entry.hclge_comm_get_rss_hash_bits.exit_crit_edge
  %hash_sets.3.i = phi i8 [ %39, %if.then37.i ], [ %35, %entry.hclge_comm_get_rss_hash_bits.exit_crit_edge ]
  %40 = zext i32 %37 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %37, label %hclge_comm_get_rss_hash_bits.exit.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 5, label %sw.bb17
    i32 2, label %sw.bb19
    i32 6, label %sw.bb21
    i32 3, label %sw.bb23
    i32 7, label %sw.bb25
    i32 16, label %sw.bb27
    i32 17, label %sw.bb29
  ]

hclge_comm_get_rss_hash_bits.exit.cleanup_crit_edge: ; preds = %hclge_comm_get_rss_hash_bits.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %hclge_comm_get_rss_hash_bits.exit
  call void @__sanitizer_cov_trace_pc() #12
  %41 = ptrtoint ptr %req to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %hash_sets.3.i, ptr %req, align 1
  br label %cleanup

sw.bb17:                                          ; preds = %hclge_comm_get_rss_hash_bits.exit
  call void @__sanitizer_cov_trace_pc() #12
  %42 = ptrtoint ptr %ipv6_tcp_en9 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %hash_sets.3.i, ptr %ipv6_tcp_en9, align 1
  br label %cleanup

sw.bb19:                                          ; preds = %hclge_comm_get_rss_hash_bits.exit
  call void @__sanitizer_cov_trace_pc() #12
  %43 = ptrtoint ptr %ipv4_udp_en3 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %hash_sets.3.i, ptr %ipv4_udp_en3, align 1
  br label %cleanup

sw.bb21:                                          ; preds = %hclge_comm_get_rss_hash_bits.exit
  call void @__sanitizer_cov_trace_pc() #12
  %44 = ptrtoint ptr %ipv6_udp_en11 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %hash_sets.3.i, ptr %ipv6_udp_en11, align 1
  br label %cleanup

sw.bb23:                                          ; preds = %hclge_comm_get_rss_hash_bits.exit
  call void @__sanitizer_cov_trace_pc() #12
  %45 = ptrtoint ptr %ipv4_sctp_en5 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %hash_sets.3.i, ptr %ipv4_sctp_en5, align 1
  br label %cleanup

sw.bb25:                                          ; preds = %hclge_comm_get_rss_hash_bits.exit
  %dev_version = getelementptr inbounds %struct.hnae3_ae_dev, ptr %ae_dev, i32 0, i32 6
  %46 = ptrtoint ptr %dev_version to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %dev_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %47)
  %cmp = icmp ugt i32 %47, 33
  %and = and i64 %25, 192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  %or.cond = select i1 %cmp, i1 true, i1 %tobool.not
  br i1 %or.cond, label %if.end, label %sw.bb25.cleanup_crit_edge

sw.bb25.cleanup_crit_edge:                        ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #12
  %48 = ptrtoint ptr %ipv6_sctp_en13 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %hash_sets.3.i, ptr %ipv6_sctp_en13, align 1
  br label %cleanup

sw.bb27:                                          ; preds = %hclge_comm_get_rss_hash_bits.exit
  call void @__sanitizer_cov_trace_pc() #12
  %49 = ptrtoint ptr %ipv4_fragment_en7 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 15, ptr %ipv4_fragment_en7, align 1
  br label %cleanup

sw.bb29:                                          ; preds = %hclge_comm_get_rss_hash_bits.exit
  call void @__sanitizer_cov_trace_pc() #12
  %50 = ptrtoint ptr %ipv6_fragment_en15 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 15, ptr %ipv6_fragment_en15, align 1
  br label %cleanup

cleanup:                                          ; preds = %sw.bb29, %sw.bb27, %if.end, %sw.bb25.cleanup_crit_edge, %sw.bb23, %sw.bb21, %sw.bb19, %sw.bb17, %sw.bb, %hclge_comm_get_rss_hash_bits.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %hclge_comm_get_rss_hash_bits.exit.cleanup_crit_edge ], [ 0, %sw.bb29 ], [ 0, %sw.bb27 ], [ 0, %if.end ], [ 0, %sw.bb23 ], [ 0, %sw.bb21 ], [ 0, %sw.bb19 ], [ 0, %sw.bb17 ], [ 0, %sw.bb ], [ -22, %sw.bb25.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @hclge_comm_get_rss_key_size(ptr nocapture noundef readnone %handle) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 40
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @hclge_comm_get_rss_type(ptr nocapture noundef writeonly %nic, ptr nocapture noundef readonly %rss_tuple_sets) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rss_tuple_sets to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %rss_tuple_sets, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.end24_crit_edge

entry.if.end24_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

lor.lhs.false:                                    ; preds = %entry
  %ipv4_udp_en = getelementptr inbounds %struct.hclge_comm_rss_tuple_cfg, ptr %rss_tuple_sets, i32 0, i32 1
  %2 = ptrtoint ptr %ipv4_udp_en to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ipv4_udp_en, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool2.not = icmp eq i8 %3, 0
  br i1 %tobool2.not, label %lor.lhs.false3, label %lor.lhs.false.if.end24_crit_edge

lor.lhs.false.if.end24_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %ipv4_sctp_en = getelementptr inbounds %struct.hclge_comm_rss_tuple_cfg, ptr %rss_tuple_sets, i32 0, i32 2
  %4 = ptrtoint ptr %ipv4_sctp_en to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ipv4_sctp_en, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool5.not = icmp eq i8 %5, 0
  br i1 %tobool5.not, label %lor.lhs.false6, label %lor.lhs.false3.if.end24_crit_edge

lor.lhs.false3.if.end24_crit_edge:                ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

lor.lhs.false6:                                   ; preds = %lor.lhs.false3
  %ipv6_tcp_en = getelementptr inbounds %struct.hclge_comm_rss_tuple_cfg, ptr %rss_tuple_sets, i32 0, i32 4
  %6 = ptrtoint ptr %ipv6_tcp_en to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ipv6_tcp_en, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool8.not = icmp eq i8 %7, 0
  br i1 %tobool8.not, label %lor.lhs.false9, label %lor.lhs.false6.if.end24_crit_edge

lor.lhs.false6.if.end24_crit_edge:                ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

lor.lhs.false9:                                   ; preds = %lor.lhs.false6
  %ipv6_udp_en = getelementptr inbounds %struct.hclge_comm_rss_tuple_cfg, ptr %rss_tuple_sets, i32 0, i32 5
  %8 = ptrtoint ptr %ipv6_udp_en to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ipv6_udp_en, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool11.not = icmp eq i8 %9, 0
  br i1 %tobool11.not, label %lor.lhs.false12, label %lor.lhs.false9.if.end24_crit_edge

lor.lhs.false9.if.end24_crit_edge:                ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

lor.lhs.false12:                                  ; preds = %lor.lhs.false9
  %ipv6_sctp_en = getelementptr inbounds %struct.hclge_comm_rss_tuple_cfg, ptr %rss_tuple_sets, i32 0, i32 6
  %10 = ptrtoint ptr %ipv6_sctp_en to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %ipv6_sctp_en, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool14.not = icmp eq i8 %11, 0
  br i1 %tobool14.not, label %if.else, label %lor.lhs.false12.if.end24_crit_edge

lor.lhs.false12.if.end24_crit_edge:               ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

if.else:                                          ; preds = %lor.lhs.false12
  %ipv4_fragment_en = getelementptr inbounds %struct.hclge_comm_rss_tuple_cfg, ptr %rss_tuple_sets, i32 0, i32 3
  %12 = ptrtoint ptr %ipv4_fragment_en to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %ipv4_fragment_en, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool16.not = icmp eq i8 %13, 0
  br i1 %tobool16.not, label %lor.lhs.false17, label %if.else.if.end24_crit_edge

if.else.if.end24_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

lor.lhs.false17:                                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %ipv6_fragment_en = getelementptr inbounds %struct.hclge_comm_rss_tuple_cfg, ptr %rss_tuple_sets, i32 0, i32 7
  %14 = ptrtoint ptr %ipv6_fragment_en to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %ipv6_fragment_en, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool19.not = icmp eq i8 %15, 0
  %spec.select = select i1 %tobool19.not, i32 0, i32 2
  br label %if.end24

if.end24:                                         ; preds = %lor.lhs.false17, %if.else.if.end24_crit_edge, %lor.lhs.false12.if.end24_crit_edge, %lor.lhs.false9.if.end24_crit_edge, %lor.lhs.false6.if.end24_crit_edge, %lor.lhs.false3.if.end24_crit_edge, %lor.lhs.false.if.end24_crit_edge, %entry.if.end24_crit_edge
  %.sink = phi i32 [ 3, %lor.lhs.false12.if.end24_crit_edge ], [ 3, %lor.lhs.false9.if.end24_crit_edge ], [ 3, %lor.lhs.false6.if.end24_crit_edge ], [ 3, %lor.lhs.false3.if.end24_crit_edge ], [ 3, %lor.lhs.false.if.end24_crit_edge ], [ 3, %entry.if.end24_crit_edge ], [ 2, %if.else.if.end24_crit_edge ], [ %spec.select, %lor.lhs.false17 ]
  %rss_type21 = getelementptr inbounds %struct.hnae3_handle, ptr %nic, i32 0, i32 5, i32 0, i32 12
  %16 = ptrtoint ptr %rss_type21 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %.sink, ptr %rss_type21, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @hclge_comm_get_rss_tuple(ptr nocapture noundef readonly %rss_cfg, i32 noundef %flow_type, ptr nocapture noundef writeonly %tuple_sets) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %flow_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %flow_type, label %entry.return_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
    i32 5, label %sw.bb3
    i32 6, label %sw.bb5
    i32 3, label %sw.bb7
    i32 7, label %sw.bb9
    i32 16, label %entry.return.sink.split_crit_edge
    i32 17, label %entry.return.sink.split_crit_edge23
  ]

entry.return.sink.split_crit_edge23:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return.sink.split

entry.return.sink.split_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return.sink.split

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %rss_tuple_sets = getelementptr inbounds %struct.hclge_comm_rss_cfg, ptr %rss_cfg, i32 0, i32 3
  %1 = ptrtoint ptr %rss_tuple_sets to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %rss_tuple_sets, align 4
  br label %return.sink.split

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %ipv4_udp_en = getelementptr inbounds %struct.hclge_comm_rss_cfg, ptr %rss_cfg, i32 0, i32 3, i32 1
  %3 = ptrtoint ptr %ipv4_udp_en to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %ipv4_udp_en, align 1
  br label %return.sink.split

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %ipv6_tcp_en = getelementptr inbounds %struct.hclge_comm_rss_cfg, ptr %rss_cfg, i32 0, i32 3, i32 4
  %5 = ptrtoint ptr %ipv6_tcp_en to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %ipv6_tcp_en, align 4
  br label %return.sink.split

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %ipv6_udp_en = getelementptr inbounds %struct.hclge_comm_rss_cfg, ptr %rss_cfg, i32 0, i32 3, i32 5
  %7 = ptrtoint ptr %ipv6_udp_en to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %ipv6_udp_en, align 1
  br label %return.sink.split

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %ipv4_sctp_en = getelementptr inbounds %struct.hclge_comm_rss_cfg, ptr %rss_cfg, i32 0, i32 3, i32 2
  %9 = ptrtoint ptr %ipv4_sctp_en to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %ipv4_sctp_en, align 2
  br label %return.sink.split

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %ipv6_sctp_en = getelementptr inbounds %struct.hclge_comm_rss_cfg, ptr %rss_cfg, i32 0, i32 3, i32 6
  %11 = ptrtoint ptr %ipv6_sctp_en to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %ipv6_sctp_en, align 2
  br label %return.sink.split

return.sink.split:                                ; preds = %sw.bb9, %sw.bb7, %sw.bb5, %sw.bb3, %sw.bb1, %sw.bb, %entry.return.sink.split_crit_edge, %entry.return.sink.split_crit_edge23
  %.sink = phi i8 [ %2, %sw.bb ], [ %4, %sw.bb1 ], [ %6, %sw.bb3 ], [ %8, %sw.bb5 ], [ %10, %sw.bb7 ], [ %12, %sw.bb9 ], [ 12, %entry.return.sink.split_crit_edge ], [ 12, %entry.return.sink.split_crit_edge23 ]
  %13 = ptrtoint ptr %tuple_sets to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %.sink, ptr %tuple_sets, align 1
  br label %return

return:                                           ; preds = %return.sink.split, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %entry.return_crit_edge ], [ 0, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hclge_comm_set_rss_indir_table(ptr nocapture noundef readonly %ae_dev, ptr noundef %hw, ptr nocapture noundef readonly %indir) local_unnamed_addr #0 align 64 {
entry:
  %desc = alloca %struct.hclge_desc, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc) #10
  %0 = getelementptr inbounds %struct.hclge_desc, ptr %desc, i32 0, i32 4
  %1 = getelementptr inbounds %struct.hclge_desc, ptr %desc, i32 0, i32 4, i32 2
  %rss_ind_tbl_size = getelementptr inbounds %struct.hnae3_ae_dev, ptr %ae_dev, i32 0, i32 5, i32 3
  %2 = call ptr @memset(ptr %desc, i32 255, i32 32)
  %3 = ptrtoint ptr %rss_ind_tbl_size to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %rss_ind_tbl_size, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %4)
  %cmp40.not = icmp ult i16 %4, 16
  br i1 %cmp40.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %5 = lshr i16 %4, 4
  %rss_set_bitmap = getelementptr inbounds %struct.hclge_comm_rss_ind_tbl_cmd, ptr %0, i32 0, i32 1
  %wide.trip.count = zext i16 %5 to i32
  br label %for.body

for.cond:                                         ; preds = %for.end
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond43.not = icmp eq i32 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond43.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %indvars.iv = phi i32 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.cond.for.body_crit_edge ]
  call void @hclge_comm_cmd_setup_basic_desc(ptr noundef nonnull %desc, i32 noundef 3335, i1 noundef zeroext false) #10
  %mul = shl nuw nsw i32 %indvars.iv, 4
  %conv6 = trunc i32 %mul to i16
  %6 = call i16 @llvm.bswap.i16(i16 %conv6)
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %0, align 4
  %8 = ptrtoint ptr %rss_set_bitmap to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 -1, ptr %rss_set_bitmap, align 2
  br label %for.body10

for.body10:                                       ; preds = %for.body10.for.body10_crit_edge, %for.body
  %j.039 = phi i32 [ 0, %for.body ], [ %inc, %for.body10.for.body10_crit_edge ]
  %add = add nuw nsw i32 %j.039, %mul
  %arrayidx = getelementptr i16, ptr %indir, i32 %add
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %arrayidx, align 2
  %conv14 = trunc i16 %10 to i8
  %arrayidx15 = getelementptr [16 x i8], ptr %1, i32 0, i32 %j.039
  %11 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv14, ptr %arrayidx15, align 1
  %mul.i = shl nuw nsw i32 %j.039, 1
  %div8.i = lshr i32 %j.039, 2
  %12 = lshr i16 %10, 8
  %13 = and i16 %12, 1
  %and.i = zext i16 %13 to i32
  %rem.i = and i32 %mul.i, 6
  %shl.i = shl nuw nsw i32 %and.i, %rem.i
  %arrayidx.i = getelementptr %struct.hclge_comm_rss_ind_tbl_cmd, ptr %0, i32 0, i32 2, i32 %div8.i
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx.i, align 1
  %16 = trunc i32 %shl.i to i8
  %conv6.i = or i8 %15, %16
  store i8 %conv6.i, ptr %arrayidx.i, align 1
  %inc = add nuw nsw i32 %j.039, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.end, label %for.body10.for.body10_crit_edge

for.body10.for.body10_crit_edge:                  ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body10

for.end:                                          ; preds = %for.body10
  %call = call i32 @hclge_comm_cmd_send(ptr noundef %hw, ptr noundef nonnull %desc, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.cond, label %do.end

do.end:                                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %pdev = getelementptr inbounds %struct.hclge_comm_hw, ptr %hw, i32 0, i32 2, i32 0, i32 2
  %17 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10, i32 noundef %call) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %do.end ], [ 0, %entry.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hclge_comm_set_rss_input_tuple(ptr nocapture noundef writeonly %nic, ptr noundef %hw, i1 noundef zeroext %is_pf, ptr nocapture noundef readonly %rss_cfg) local_unnamed_addr #0 align 64 {
entry:
  %desc = alloca %struct.hclge_desc, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc) #10
  %0 = getelementptr inbounds %struct.hclge_desc, ptr %desc, i32 0, i32 4
  %1 = getelementptr inbounds %struct.hclge_desc, ptr %desc, i32 0, i32 4, i32 1
  %2 = call ptr @memset(ptr %desc, i32 255, i32 32)
  call void @hclge_comm_cmd_setup_basic_desc(ptr noundef nonnull %desc, i32 noundef 3330, i1 noundef zeroext false) #10
  %rss_tuple_sets = getelementptr inbounds %struct.hclge_comm_rss_cfg, ptr %rss_cfg, i32 0, i32 3
  %3 = ptrtoint ptr %rss_tuple_sets to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %rss_tuple_sets, align 4
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %0, align 4
  %ipv4_udp_en = getelementptr inbounds %struct.hclge_comm_rss_cfg, ptr %rss_cfg, i32 0, i32 3, i32 1
  %6 = ptrtoint ptr %ipv4_udp_en to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ipv4_udp_en, align 1
  %ipv4_udp_en3 = getelementptr inbounds %struct.hclge_comm_rss_input_tuple_cmd, ptr %0, i32 0, i32 1
  %8 = ptrtoint ptr %ipv4_udp_en3 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %ipv4_udp_en3, align 1
  %ipv4_sctp_en = getelementptr inbounds %struct.hclge_comm_rss_cfg, ptr %rss_cfg, i32 0, i32 3, i32 2
  %9 = ptrtoint ptr %ipv4_sctp_en to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %ipv4_sctp_en, align 2
  %ipv4_sctp_en5 = getelementptr inbounds %struct.hclge_comm_rss_input_tuple_cmd, ptr %0, i32 0, i32 2
  %11 = ptrtoint ptr %ipv4_sctp_en5 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %ipv4_sctp_en5, align 2
  %ipv4_fragment_en = getelementptr inbounds %struct.hclge_comm_rss_cfg, ptr %rss_cfg, i32 0, i32 3, i32 3
  %12 = ptrtoint ptr %ipv4_fragment_en to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %ipv4_fragment_en, align 1
  %ipv4_fragment_en7 = getelementptr inbounds %struct.hclge_comm_rss_input_tuple_cmd, ptr %0, i32 0, i32 3
  %14 = ptrtoint ptr %ipv4_fragment_en7 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %ipv4_fragment_en7, align 1
  %ipv6_tcp_en = getelementptr inbounds %struct.hclge_comm_rss_cfg, ptr %rss_cfg, i32 0, i32 3, i32 4
  %15 = ptrtoint ptr %ipv6_tcp_en to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %ipv6_tcp_en, align 4
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %1, align 4
  %ipv6_udp_en = getelementptr inbounds %struct.hclge_comm_rss_cfg, ptr %rss_cfg, i32 0, i32 3, i32 5
  %18 = ptrtoint ptr %ipv6_udp_en to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %ipv6_udp_en, align 1
  %ipv6_udp_en11 = getelementptr inbounds %struct.hclge_comm_rss_input_tuple_cmd, ptr %0, i32 0, i32 5
  %20 = ptrtoint ptr %ipv6_udp_en11 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %ipv6_udp_en11, align 1
  %ipv6_sctp_en = getelementptr inbounds %struct.hclge_comm_rss_cfg, ptr %rss_cfg, i32 0, i32 3, i32 6
  %21 = ptrtoint ptr %ipv6_sctp_en to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %ipv6_sctp_en, align 2
  %ipv6_sctp_en13 = getelementptr inbounds %struct.hclge_comm_rss_input_tuple_cmd, ptr %0, i32 0, i32 6
  %23 = ptrtoint ptr %ipv6_sctp_en13 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %ipv6_sctp_en13, align 2
  %ipv6_fragment_en = getelementptr inbounds %struct.hclge_comm_rss_cfg, ptr %rss_cfg, i32 0, i32 3, i32 7
  %24 = ptrtoint ptr %ipv6_fragment_en to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %ipv6_fragment_en, align 1
  %ipv6_fragment_en15 = getelementptr inbounds %struct.hclge_comm_rss_input_tuple_cmd, ptr %0, i32 0, i32 7
  %26 = ptrtoint ptr %ipv6_fragment_en15 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %ipv6_fragment_en15, align 1
  br i1 %is_pf, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i = icmp eq i8 %4, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %if.then.hclge_comm_get_rss_type.exit_crit_edge

if.then.hclge_comm_get_rss_type.exit_crit_edge:   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %hclge_comm_get_rss_type.exit

lor.lhs.false.i:                                  ; preds = %if.then
  %27 = ptrtoint ptr %ipv4_udp_en to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %ipv4_udp_en, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool2.not.i = icmp eq i8 %28, 0
  br i1 %tobool2.not.i, label %lor.lhs.false3.i, label %lor.lhs.false.i.hclge_comm_get_rss_type.exit_crit_edge

lor.lhs.false.i.hclge_comm_get_rss_type.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %hclge_comm_get_rss_type.exit

lor.lhs.false3.i:                                 ; preds = %lor.lhs.false.i
  %29 = ptrtoint ptr %ipv4_sctp_en to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %ipv4_sctp_en, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool5.not.i = icmp eq i8 %30, 0
  br i1 %tobool5.not.i, label %lor.lhs.false6.i, label %lor.lhs.false3.i.hclge_comm_get_rss_type.exit_crit_edge

lor.lhs.false3.i.hclge_comm_get_rss_type.exit_crit_edge: ; preds = %lor.lhs.false3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %hclge_comm_get_rss_type.exit

lor.lhs.false6.i:                                 ; preds = %lor.lhs.false3.i
  %31 = ptrtoint ptr %ipv6_tcp_en to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %ipv6_tcp_en, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool8.not.i = icmp eq i8 %32, 0
  br i1 %tobool8.not.i, label %lor.lhs.false9.i, label %lor.lhs.false6.i.hclge_comm_get_rss_type.exit_crit_edge

lor.lhs.false6.i.hclge_comm_get_rss_type.exit_crit_edge: ; preds = %lor.lhs.false6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %hclge_comm_get_rss_type.exit

lor.lhs.false9.i:                                 ; preds = %lor.lhs.false6.i
  %33 = ptrtoint ptr %ipv6_udp_en to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %ipv6_udp_en, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool11.not.i = icmp eq i8 %34, 0
  br i1 %tobool11.not.i, label %lor.lhs.false12.i, label %lor.lhs.false9.i.hclge_comm_get_rss_type.exit_crit_edge

lor.lhs.false9.i.hclge_comm_get_rss_type.exit_crit_edge: ; preds = %lor.lhs.false9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %hclge_comm_get_rss_type.exit

lor.lhs.false12.i:                                ; preds = %lor.lhs.false9.i
  %35 = ptrtoint ptr %ipv6_sctp_en to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %ipv6_sctp_en, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool14.not.i = icmp eq i8 %36, 0
  br i1 %tobool14.not.i, label %if.else.i, label %lor.lhs.false12.i.hclge_comm_get_rss_type.exit_crit_edge

lor.lhs.false12.i.hclge_comm_get_rss_type.exit_crit_edge: ; preds = %lor.lhs.false12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %hclge_comm_get_rss_type.exit

if.else.i:                                        ; preds = %lor.lhs.false12.i
  %37 = ptrtoint ptr %ipv4_fragment_en to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %ipv4_fragment_en, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool16.not.i = icmp eq i8 %38, 0
  br i1 %tobool16.not.i, label %lor.lhs.false17.i, label %if.else.i.hclge_comm_get_rss_type.exit_crit_edge

if.else.i.hclge_comm_get_rss_type.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %hclge_comm_get_rss_type.exit

lor.lhs.false17.i:                                ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %39 = ptrtoint ptr %ipv6_fragment_en to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %ipv6_fragment_en, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool19.not.i = icmp eq i8 %40, 0
  %spec.select.i = select i1 %tobool19.not.i, i32 0, i32 2
  br label %hclge_comm_get_rss_type.exit

hclge_comm_get_rss_type.exit:                     ; preds = %lor.lhs.false17.i, %if.else.i.hclge_comm_get_rss_type.exit_crit_edge, %lor.lhs.false12.i.hclge_comm_get_rss_type.exit_crit_edge, %lor.lhs.false9.i.hclge_comm_get_rss_type.exit_crit_edge, %lor.lhs.false6.i.hclge_comm_get_rss_type.exit_crit_edge, %lor.lhs.false3.i.hclge_comm_get_rss_type.exit_crit_edge, %lor.lhs.false.i.hclge_comm_get_rss_type.exit_crit_edge, %if.then.hclge_comm_get_rss_type.exit_crit_edge
  %.sink.i = phi i32 [ 3, %lor.lhs.false12.i.hclge_comm_get_rss_type.exit_crit_edge ], [ 3, %lor.lhs.false9.i.hclge_comm_get_rss_type.exit_crit_edge ], [ 3, %lor.lhs.false6.i.hclge_comm_get_rss_type.exit_crit_edge ], [ 3, %lor.lhs.false3.i.hclge_comm_get_rss_type.exit_crit_edge ], [ 3, %lor.lhs.false.i.hclge_comm_get_rss_type.exit_crit_edge ], [ 3, %if.then.hclge_comm_get_rss_type.exit_crit_edge ], [ 2, %if.else.i.hclge_comm_get_rss_type.exit_crit_edge ], [ %spec.select.i, %lor.lhs.false17.i ]
  %rss_type21.i = getelementptr inbounds %struct.hnae3_handle, ptr %nic, i32 0, i32 5, i32 0, i32 12
  %41 = ptrtoint ptr %rss_type21.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %.sink.i, ptr %rss_type21.i, align 4
  br label %if.end

if.end:                                           ; preds = %hclge_comm_get_rss_type.exit, %entry.if.end_crit_edge
  %call = call i32 @hclge_comm_cmd_send(ptr noundef %hw, ptr noundef nonnull %desc, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool17.not = icmp eq i32 %call, 0
  br i1 %tobool17.not, label %if.end.if.end19_crit_edge, label %do.end

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %pdev = getelementptr inbounds %struct.hclge_comm_hw, ptr %hw, i32 0, i32 2, i32 0, i32 2
  %42 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %43, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12, i32 noundef %call) #13
  br label %if.end19

if.end19:                                         ; preds = %do.end, %if.end.if.end19_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc) #10
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @hclge_comm_get_rss_hash_info(ptr nocapture noundef readonly %rss_cfg, ptr noundef writeonly %key, ptr noundef writeonly %hfunc) local_unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %hfunc, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %rss_algo = getelementptr inbounds %struct.hclge_comm_rss_cfg, ptr %rss_cfg, i32 0, i32 2
  %0 = ptrtoint ptr %rss_algo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rss_algo, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %switch.selectcmp = icmp eq i32 %1, 1
  %switch.select = select i1 %switch.selectcmp, i8 2, i8 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %switch.selectcmp10 = icmp eq i32 %1, 0
  %switch.select11 = select i1 %switch.selectcmp10, i8 1, i8 %switch.select
  %2 = ptrtoint ptr %hfunc to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %switch.select11, ptr %hfunc, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %tobool2.not = icmp eq ptr %key, null
  br i1 %tobool2.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %3 = call ptr @memcpy(ptr %key, ptr %rss_cfg, i32 40)
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hclge_comm_get_rss_indir_tbl(ptr nocapture noundef readonly %rss_cfg, ptr noundef writeonly %indir, i16 noundef zeroext %rss_ind_tbl_size) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp ne ptr %indir, null
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %rss_ind_tbl_size)
  %cmp10 = icmp ne i16 %rss_ind_tbl_size, 0
  %or.cond = and i1 %tobool.not, %cmp10
  br i1 %or.cond, label %for.body.lr.ph, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %rss_indirection_tbl = getelementptr inbounds %struct.hclge_comm_rss_cfg, ptr %rss_cfg, i32 0, i32 1
  %wide.trip.count = zext i16 %rss_ind_tbl_size to i32
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %indvars.iv = phi i32 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body.for.body_crit_edge ]
  %0 = ptrtoint ptr %rss_indirection_tbl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rss_indirection_tbl, align 4
  %arrayidx = getelementptr i16, ptr %1, i32 %indvars.iv
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx, align 2
  %conv3 = zext i16 %3 to i32
  %arrayidx5 = getelementptr i32, ptr %indir, i32 %indvars.iv
  %4 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv3, ptr %arrayidx5, align 4
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i64 @hclge_comm_convert_rss_tuple(i8 noundef zeroext %tuple_sets) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %rev = tail call i8 @llvm.bitreverse.i8(i8 %tuple_sets)
  %mask = and i8 %rev, -16
  %0 = zext i8 %mask to i64
  ret i64 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.bitreverse.i8(i8) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !16, !17, !19, !20, !21, !22, !24, !25, !26, !27, !29, !30, !31, !32}
!llvm.module.flags = !{!34, !35, !36, !37, !38, !39, !40, !41}
!llvm.ident = !{!42}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3_common/hclge_comm_rss.c", i32 111, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @hclge_comm_set_rss_tc_mode._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @hclge_comm_set_rss_tc_mode._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3_common/hclge_comm_rss.c", i32 166, i32 3}
!10 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @hclge_comm_set_rss_tuple._entry, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @hclge_comm_set_rss_tuple._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3_common/hclge_comm_rss.c", i32 173, i32 3}
!15 = !{ptr @hclge_comm_set_rss_tuple._entry.7, !14, !"_entry", i1 false, i1 false}
!16 = !{ptr @hclge_comm_set_rss_tuple._entry_ptr.9, !14, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3_common/hclge_comm_rss.c", i32 316, i32 4}
!19 = !{ptr @.str.11, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @hclge_comm_set_rss_indir_table._entry, !18, !"_entry", i1 false, i1 false}
!21 = !{ptr @hclge_comm_set_rss_indir_table._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3_common/hclge_comm_rss.c", i32 352, i32 3}
!24 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @hclge_comm_set_rss_input_tuple._entry, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @hclge_comm_set_rss_input_tuple._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3_common/hclge_comm_rss.c", i32 423, i32 4}
!29 = !{ptr @.str.15, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @hclge_comm_set_rss_algo_key._entry, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @hclge_comm_set_rss_algo_key._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @hclge_comm_hash_key, !33, !"hclge_comm_hash_key", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3_common/hclge_comm_rss.c", i32 9, i32 17}
!34 = !{i32 1, !"wchar_size", i32 2}
!35 = !{i32 1, !"min_enum_size", i32 4}
!36 = !{i32 8, !"branch-target-enforcement", i32 0}
!37 = !{i32 8, !"sign-return-address", i32 0}
!38 = !{i32 8, !"sign-return-address-all", i32 0}
!39 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!40 = !{i32 7, !"uwtable", i32 1}
!41 = !{i32 7, !"frame-pointer", i32 2}
!42 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!43 = !{i32 0, i32 33}
