; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/intel/ixgbevf/vf.c_pt.bc'
source_filename = "../drivers/net/ethernet/intel/ixgbevf/vf.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ixgbe_mac_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ixgbevf_info = type { i32, ptr }
%struct.ixgbe_mbx_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ixgbe_hw = type { ptr, ptr, %struct.ixgbe_mac_info, %struct.ixgbe_mbx_info, i16, i16, i16, i16, i8, i8, i32 }
%struct.ixgbe_mac_info = type { %struct.ixgbe_mac_operations, [6 x i8], [6 x i8], i32, i32, i8, i32, i32, i32 }
%struct.ixgbe_mbx_info = type { %struct.ixgbe_mbx_operations, %struct.ixgbe_mbx_stats, i32, i32, i32, i16 }
%struct.ixgbe_mbx_stats = type { i32, i32, i32, i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.113, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.23 }
%union.anon.23 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.24 }
%union.anon.24 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.113 = type { ptr }
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
%struct.netdev_hw_addr = type { %struct.list_head, %struct.rb_node, [32 x i8], i8, i8, i32, i32, i32, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }

@ixgbevf_mac_ops = internal constant { %struct.ixgbe_mac_operations, [40 x i8] } { %struct.ixgbe_mac_operations { ptr @ixgbevf_init_hw_vf, ptr @ixgbevf_reset_hw_vf, ptr @ixgbevf_start_hw_vf, ptr null, ptr null, ptr @ixgbevf_get_mac_addr_vf, ptr @ixgbevf_stop_hw_vf, ptr null, ptr @ixgbevf_negotiate_api_version_vf, ptr @ixgbevf_setup_mac_link_vf, ptr @ixgbevf_check_mac_link_vf, ptr null, ptr @ixgbevf_set_rar_vf, ptr @ixgbevf_set_uc_addr_vf, ptr null, ptr @ixgbevf_update_mc_addr_list_vf, ptr @ixgbevf_update_xcast_mode, ptr null, ptr null, ptr null, ptr @ixgbevf_set_vfta_vf, ptr @ixgbevf_set_rlpml_vf }, [40 x i8] zeroinitializer }, align 32
@ixgbevf_82599_vf_info = dso_local constant { %struct.ixgbevf_info, [24 x i8] } { %struct.ixgbevf_info { i32 1, ptr @ixgbevf_mac_ops }, [24 x i8] zeroinitializer }, align 32
@ixgbevf_hv_mac_ops = internal constant { %struct.ixgbe_mac_operations, [40 x i8] } { %struct.ixgbe_mac_operations { ptr @ixgbevf_init_hw_vf, ptr @ixgbevf_hv_reset_hw_vf, ptr @ixgbevf_start_hw_vf, ptr null, ptr null, ptr @ixgbevf_get_mac_addr_vf, ptr @ixgbevf_stop_hw_vf, ptr null, ptr @ixgbevf_hv_negotiate_api_version_vf, ptr @ixgbevf_setup_mac_link_vf, ptr @ixgbevf_hv_check_mac_link_vf, ptr null, ptr @ixgbevf_hv_set_rar_vf, ptr @ixgbevf_hv_set_uc_addr_vf, ptr null, ptr @ixgbevf_hv_update_mc_addr_list_vf, ptr @ixgbevf_hv_update_xcast_mode, ptr null, ptr null, ptr null, ptr @ixgbevf_hv_set_vfta_vf, ptr @ixgbevf_hv_set_rlpml_vf }, [40 x i8] zeroinitializer }, align 32
@ixgbevf_82599_vf_hv_info = dso_local constant { %struct.ixgbevf_info, [24 x i8] } { %struct.ixgbevf_info { i32 1, ptr @ixgbevf_hv_mac_ops }, [24 x i8] zeroinitializer }, align 32
@ixgbevf_X540_vf_info = dso_local constant { %struct.ixgbevf_info, [24 x i8] } { %struct.ixgbevf_info { i32 2, ptr @ixgbevf_mac_ops }, [24 x i8] zeroinitializer }, align 32
@ixgbevf_X540_vf_hv_info = dso_local constant { %struct.ixgbevf_info, [24 x i8] } { %struct.ixgbevf_info { i32 2, ptr @ixgbevf_hv_mac_ops }, [24 x i8] zeroinitializer }, align 32
@ixgbevf_X550_vf_info = dso_local constant { %struct.ixgbevf_info, [24 x i8] } { %struct.ixgbevf_info { i32 3, ptr @ixgbevf_mac_ops }, [24 x i8] zeroinitializer }, align 32
@ixgbevf_X550_vf_hv_info = dso_local constant { %struct.ixgbevf_info, [24 x i8] } { %struct.ixgbevf_info { i32 3, ptr @ixgbevf_hv_mac_ops }, [24 x i8] zeroinitializer }, align 32
@ixgbevf_X550EM_x_vf_info = dso_local constant { %struct.ixgbevf_info, [24 x i8] } { %struct.ixgbevf_info { i32 4, ptr @ixgbevf_mac_ops }, [24 x i8] zeroinitializer }, align 32
@ixgbevf_X550EM_x_vf_hv_info = dso_local constant { %struct.ixgbevf_info, [24 x i8] } { %struct.ixgbevf_info { i32 4, ptr @ixgbevf_hv_mac_ops }, [24 x i8] zeroinitializer }, align 32
@ixgbevf_x550em_a_vf_info = dso_local constant { %struct.ixgbevf_info, [24 x i8] } { %struct.ixgbevf_info { i32 5, ptr @ixgbevf_mac_ops }, [24 x i8] zeroinitializer }, align 32
@ixgbevf_mbx_ops_legacy = external dso_local local_unnamed_addr constant %struct.ixgbe_mbx_operations, align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@ixgbevf_hv_reset_hw_vf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 144, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013PCI_MMCONFIG needs to be enabled for Hyper-V\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ixgbevf_hv_reset_hw_vf\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/net/ethernet/intel/ixgbevf/vf.c\00", [56 x i8] zeroinitializer }, align 32
@ixgbevf_hv_reset_hw_vf._entry_ptr = internal global ptr @ixgbevf_hv_reset_hw_vf._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1073741834, i64 2147483658]
@__sancov_gen_cov_switch_values.3 = internal global [4 x i64] [i64 2, i64 32, i64 1073741835, i64 2147483659]
@__sancov_gen_cov_switch_values.4 = internal global [4 x i64] [i64 2, i64 32, i64 1073741825, i64 2147483649]
@__sancov_gen_cov_switch_values.5 = internal global [5 x i64] [i64 3, i64 32, i64 268435456, i64 536870912, i64 805306368]
@__sancov_gen_cov_switch_values.6 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.7 = internal global [6 x i64] [i64 4, i64 32, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.8 = internal global [5 x i64] [i64 3, i64 32, i64 268435456, i64 536870912, i64 805306368]
@___asan_gen_.9 = private unnamed_addr constant [16 x i8] c"ixgbevf_mac_ops\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 959, i32 42 }
@___asan_gen_.12 = private unnamed_addr constant [22 x i8] c"ixgbevf_82599_vf_info\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 993, i32 27 }
@___asan_gen_.15 = private unnamed_addr constant [19 x i8] c"ixgbevf_hv_mac_ops\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 976, i32 42 }
@___asan_gen_.18 = private unnamed_addr constant [25 x i8] c"ixgbevf_82599_vf_hv_info\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 998, i32 27 }
@___asan_gen_.21 = private unnamed_addr constant [21 x i8] c"ixgbevf_X540_vf_info\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 1003, i32 27 }
@___asan_gen_.24 = private unnamed_addr constant [24 x i8] c"ixgbevf_X540_vf_hv_info\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 1008, i32 27 }
@___asan_gen_.27 = private unnamed_addr constant [21 x i8] c"ixgbevf_X550_vf_info\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 1013, i32 27 }
@___asan_gen_.30 = private unnamed_addr constant [24 x i8] c"ixgbevf_X550_vf_hv_info\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 1018, i32 27 }
@___asan_gen_.33 = private unnamed_addr constant [25 x i8] c"ixgbevf_X550EM_x_vf_info\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 1023, i32 27 }
@___asan_gen_.36 = private unnamed_addr constant [28 x i8] c"ixgbevf_X550EM_x_vf_hv_info\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 1028, i32 27 }
@___asan_gen_.39 = private unnamed_addr constant [25 x i8] c"ixgbevf_x550em_a_vf_info\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 1033, i32 27 }
@___asan_gen_.42 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.51 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.52 = private constant [43 x i8] c"../drivers/net/ethernet/intel/ixgbevf/vf.c\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 144, i32 2 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @ixgbevf_hv_reset_hw_vf._entry, ptr @ixgbevf_hv_reset_hw_vf._entry_ptr, ptr @ixgbevf_mac_ops, ptr @ixgbevf_82599_vf_info, ptr @ixgbevf_hv_mac_ops, ptr @ixgbevf_82599_vf_hv_info, ptr @ixgbevf_X540_vf_info, ptr @ixgbevf_X540_vf_hv_info, ptr @ixgbevf_X550_vf_info, ptr @ixgbevf_X550_vf_hv_info, ptr @ixgbevf_X550EM_x_vf_info, ptr @ixgbevf_X550EM_x_vf_hv_info, ptr @ixgbevf_x550em_a_vf_info, ptr @.str, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixgbevf_mac_ops to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixgbevf_82599_vf_info to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixgbevf_hv_mac_ops to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixgbevf_82599_vf_hv_info to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixgbevf_X540_vf_info to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixgbevf_X540_vf_hv_info to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixgbevf_X550_vf_info to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixgbevf_X550_vf_hv_info to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixgbevf_X550EM_x_vf_info to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixgbevf_X550EM_x_vf_hv_info to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixgbevf_x550em_a_vf_info to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixgbevf_hv_reset_hw_vf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ixgbevf_get_reta_locked(ptr noundef %hw, ptr nocapture noundef writeonly %reta, i32 noundef %num_rx_queues) local_unnamed_addr #0 align 64 {
entry:
  %msgbuf = alloca [16 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %msgbuf) #9
  %0 = getelementptr inbounds i8, ptr %msgbuf, i32 4
  %1 = call ptr @memset(ptr %0, i32 255, i32 60)
  %arrayidx = getelementptr inbounds [16 x i32], ptr %msgbuf, i32 0, i32 1
  %api_version = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 10
  %2 = ptrtoint ptr %api_version to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %api_version, align 4
  %.off = add i32 %3, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.off)
  %switch = icmp ult i32 %.off, 4
  br i1 %switch, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %type = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 3
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %cmp = icmp ult i32 %5, 3
  br i1 %cmp, label %sw.epilog, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb
  %6 = ptrtoint ptr %msgbuf to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 10, ptr %msgbuf, align 4
  %call = call i32 @ixgbevf_write_mbx(ptr noundef %hw, ptr noundef nonnull %msgbuf, i16 noundef zeroext 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end3, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %sw.epilog
  %call5 = call i32 @ixgbevf_poll_mbx(ptr noundef %hw, ptr noundef nonnull %msgbuf, i16 noundef zeroext 9) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8:                                          ; preds = %if.end3
  %7 = ptrtoint ptr %msgbuf to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %msgbuf, align 4
  %and = and i32 %8, -536870913
  store i32 %and, ptr %msgbuf, align 4
  %9 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and, label %if.then18 [
    i32 1073741834, label %if.end8.cleanup_crit_edge
    i32 -2147483638, label %if.end19
  ]

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then18:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end19:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %num_rx_queues)
  %cmp20 = icmp sgt i32 %num_rx_queues, 1
  %spec.select = zext i1 %cmp20 to i32
  br label %for.cond26.preheader

for.cond26.preheader:                             ; preds = %for.cond26.preheader.for.cond26.preheader_crit_edge, %if.end19
  %i.058 = phi i32 [ 0, %if.end19 ], [ %inc36, %for.cond26.preheader.for.cond26.preheader_crit_edge ]
  %arrayidx30 = getelementptr i32, ptr %arrayidx, i32 %i.058
  %10 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx30, align 4
  %mul32 = shl i32 %i.058, 4
  %and31 = and i32 %11, %spec.select
  %arrayidx34 = getelementptr i32, ptr %reta, i32 %mul32
  %12 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %and31, ptr %arrayidx34, align 4
  %shr.1 = lshr i32 %11, 2
  %and31.1 = and i32 %shr.1, %spec.select
  %add33.1 = or i32 %mul32, 1
  %arrayidx34.1 = getelementptr i32, ptr %reta, i32 %add33.1
  %13 = ptrtoint ptr %arrayidx34.1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %and31.1, ptr %arrayidx34.1, align 4
  %shr.2 = lshr i32 %11, 4
  %and31.2 = and i32 %shr.2, %spec.select
  %add33.2 = or i32 %mul32, 2
  %arrayidx34.2 = getelementptr i32, ptr %reta, i32 %add33.2
  %14 = ptrtoint ptr %arrayidx34.2 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %and31.2, ptr %arrayidx34.2, align 4
  %shr.3 = lshr i32 %11, 6
  %and31.3 = and i32 %shr.3, %spec.select
  %add33.3 = or i32 %mul32, 3
  %arrayidx34.3 = getelementptr i32, ptr %reta, i32 %add33.3
  %15 = ptrtoint ptr %arrayidx34.3 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %and31.3, ptr %arrayidx34.3, align 4
  %shr.4 = lshr i32 %11, 8
  %and31.4 = and i32 %shr.4, %spec.select
  %add33.4 = or i32 %mul32, 4
  %arrayidx34.4 = getelementptr i32, ptr %reta, i32 %add33.4
  %16 = ptrtoint ptr %arrayidx34.4 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %and31.4, ptr %arrayidx34.4, align 4
  %shr.5 = lshr i32 %11, 10
  %and31.5 = and i32 %shr.5, %spec.select
  %add33.5 = or i32 %mul32, 5
  %arrayidx34.5 = getelementptr i32, ptr %reta, i32 %add33.5
  %17 = ptrtoint ptr %arrayidx34.5 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %and31.5, ptr %arrayidx34.5, align 4
  %shr.6 = lshr i32 %11, 12
  %and31.6 = and i32 %shr.6, %spec.select
  %add33.6 = or i32 %mul32, 6
  %arrayidx34.6 = getelementptr i32, ptr %reta, i32 %add33.6
  %18 = ptrtoint ptr %arrayidx34.6 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %and31.6, ptr %arrayidx34.6, align 4
  %shr.7 = lshr i32 %11, 14
  %and31.7 = and i32 %shr.7, %spec.select
  %add33.7 = or i32 %mul32, 7
  %arrayidx34.7 = getelementptr i32, ptr %reta, i32 %add33.7
  %19 = ptrtoint ptr %arrayidx34.7 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %and31.7, ptr %arrayidx34.7, align 4
  %shr.8 = lshr i32 %11, 16
  %and31.8 = and i32 %shr.8, %spec.select
  %add33.8 = or i32 %mul32, 8
  %arrayidx34.8 = getelementptr i32, ptr %reta, i32 %add33.8
  %20 = ptrtoint ptr %arrayidx34.8 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %and31.8, ptr %arrayidx34.8, align 4
  %shr.9 = lshr i32 %11, 18
  %and31.9 = and i32 %shr.9, %spec.select
  %add33.9 = or i32 %mul32, 9
  %arrayidx34.9 = getelementptr i32, ptr %reta, i32 %add33.9
  %21 = ptrtoint ptr %arrayidx34.9 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %and31.9, ptr %arrayidx34.9, align 4
  %shr.10 = lshr i32 %11, 20
  %and31.10 = and i32 %shr.10, %spec.select
  %add33.10 = or i32 %mul32, 10
  %arrayidx34.10 = getelementptr i32, ptr %reta, i32 %add33.10
  %22 = ptrtoint ptr %arrayidx34.10 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %and31.10, ptr %arrayidx34.10, align 4
  %shr.11 = lshr i32 %11, 22
  %and31.11 = and i32 %shr.11, %spec.select
  %add33.11 = or i32 %mul32, 11
  %arrayidx34.11 = getelementptr i32, ptr %reta, i32 %add33.11
  %23 = ptrtoint ptr %arrayidx34.11 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %and31.11, ptr %arrayidx34.11, align 4
  %shr.12 = lshr i32 %11, 24
  %and31.12 = and i32 %shr.12, %spec.select
  %add33.12 = or i32 %mul32, 12
  %arrayidx34.12 = getelementptr i32, ptr %reta, i32 %add33.12
  %24 = ptrtoint ptr %arrayidx34.12 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %and31.12, ptr %arrayidx34.12, align 4
  %shr.13 = lshr i32 %11, 26
  %and31.13 = and i32 %shr.13, %spec.select
  %add33.13 = or i32 %mul32, 13
  %arrayidx34.13 = getelementptr i32, ptr %reta, i32 %add33.13
  %25 = ptrtoint ptr %arrayidx34.13 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %and31.13, ptr %arrayidx34.13, align 4
  %shr.14 = lshr i32 %11, 28
  %and31.14 = and i32 %shr.14, %spec.select
  %add33.14 = or i32 %mul32, 14
  %arrayidx34.14 = getelementptr i32, ptr %reta, i32 %add33.14
  %26 = ptrtoint ptr %arrayidx34.14 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %and31.14, ptr %arrayidx34.14, align 4
  %shr.15 = lshr i32 %11, 30
  %and31.15 = and i32 %shr.15, %spec.select
  %add33.15 = or i32 %mul32, 15
  %arrayidx34.15 = getelementptr i32, ptr %reta, i32 %add33.15
  %27 = ptrtoint ptr %arrayidx34.15 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %and31.15, ptr %arrayidx34.15, align 4
  %inc36 = add nuw nsw i32 %i.058, 1
  %exitcond.not = icmp eq i32 %inc36, 8
  br i1 %exitcond.not, label %for.cond26.preheader.cleanup_crit_edge, label %for.cond26.preheader.for.cond26.preheader_crit_edge

for.cond26.preheader.for.cond26.preheader_crit_edge: ; preds = %for.cond26.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond26.preheader

for.cond26.preheader.cleanup_crit_edge:           ; preds = %for.cond26.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %for.cond26.preheader.cleanup_crit_edge, %if.then18, %if.end8.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %if.then18 ], [ -95, %entry.cleanup_crit_edge ], [ -95, %sw.bb.cleanup_crit_edge ], [ %call, %sw.epilog.cleanup_crit_edge ], [ %call5, %if.end3.cleanup_crit_edge ], [ -1, %if.end8.cleanup_crit_edge ], [ 0, %for.cond26.preheader.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %msgbuf) #9
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbevf_write_mbx(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbevf_poll_mbx(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ixgbevf_get_rss_key_locked(ptr noundef %hw, ptr nocapture noundef writeonly %rss_key) local_unnamed_addr #0 align 64 {
entry:
  %msgbuf = alloca [16 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %msgbuf) #9
  %0 = getelementptr inbounds i8, ptr %msgbuf, i32 4
  %1 = call ptr @memset(ptr %0, i32 255, i32 60)
  %api_version = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 10
  %2 = ptrtoint ptr %api_version to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %api_version, align 4
  %.off = add i32 %3, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.off)
  %switch = icmp ult i32 %.off, 4
  br i1 %switch, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %type = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 3
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %cmp = icmp ult i32 %5, 3
  br i1 %cmp, label %sw.epilog, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb
  %6 = ptrtoint ptr %msgbuf to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 11, ptr %msgbuf, align 4
  %call = call i32 @ixgbevf_write_mbx(ptr noundef %hw, ptr noundef nonnull %msgbuf, i16 noundef zeroext 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end2, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end2:                                          ; preds = %sw.epilog
  %call4 = call i32 @ixgbevf_poll_mbx(ptr noundef %hw, ptr noundef nonnull %msgbuf, i16 noundef zeroext 11) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end2.cleanup_crit_edge

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %if.end2
  %7 = ptrtoint ptr %msgbuf to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %msgbuf, align 4
  %and = and i32 %8, -536870913
  %9 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.3)
  switch i32 %and, label %if.then15 [
    i32 1073741835, label %if.end7.cleanup_crit_edge
    i32 -2147483637, label %if.end16
  ]

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then15:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end16:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr = getelementptr inbounds i32, ptr %msgbuf, i32 1
  %10 = call ptr @memcpy(ptr %rss_key, ptr %add.ptr, i32 40)
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.then15, %if.end7.cleanup_crit_edge, %if.end2.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %if.then15 ], [ 0, %if.end16 ], [ -95, %entry.cleanup_crit_edge ], [ -95, %sw.bb.cleanup_crit_edge ], [ %call, %sw.epilog.cleanup_crit_edge ], [ %call4, %if.end2.cleanup_crit_edge ], [ -1, %if.end7.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %msgbuf) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ixgbevf_get_queues(ptr noundef %hw, ptr nocapture noundef writeonly %num_tcs, ptr nocapture noundef writeonly %default_tc) local_unnamed_addr #0 align 64 {
entry:
  %msg = alloca [5 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %msg) #9
  %0 = getelementptr inbounds [5 x i32], ptr %msg, i32 0, i32 1
  %1 = getelementptr inbounds [5 x i32], ptr %msg, i32 0, i32 2
  %2 = getelementptr inbounds [5 x i32], ptr %msg, i32 0, i32 3
  %3 = getelementptr inbounds [5 x i32], ptr %msg, i32 0, i32 4
  %api_version = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 10
  %4 = ptrtoint ptr %api_version to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %api_version, align 4
  %.off = add i32 %5, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %.off)
  %switch = icmp ult i32 %.off, 5
  br i1 %switch, label %sw.epilog, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.epilog:                                        ; preds = %entry
  %6 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 9, ptr %msg, align 4
  %7 = call ptr @memset(ptr %0, i32 0, i32 16)
  %call.i = call i32 @ixgbevf_write_mbx(ptr noundef %hw, ptr noundef nonnull %msg, i16 noundef zeroext 5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %ixgbevf_write_msg_read_ack.exit, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

ixgbevf_write_msg_read_ack.exit:                  ; preds = %sw.epilog
  %call2.i = call i32 @ixgbevf_poll_mbx(ptr noundef %hw, ptr noundef nonnull %msg, i16 noundef zeroext 5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not = icmp eq i32 %call2.i, 0
  br i1 %tobool.not, label %if.then, label %ixgbevf_write_msg_read_ack.exit.cleanup_crit_edge

ixgbevf_write_msg_read_ack.exit.cleanup_crit_edge: ; preds = %ixgbevf_write_msg_read_ack.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then:                                          ; preds = %ixgbevf_write_msg_read_ack.exit
  %8 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %msg, align 4
  %and = and i32 %9, -536870913
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483639, i32 %and)
  %cmp.not = icmp eq i32 %and, -2147483639
  br i1 %cmp.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %0, align 4
  %max_tx_queues = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 6
  %12 = add i32 %11, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -8, i32 %12)
  %13 = icmp ult i32 %12, -8
  %spec.store.select65 = select i1 %13, i32 8, i32 %11
  %14 = ptrtoint ptr %max_tx_queues to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %spec.store.select65, ptr %max_tx_queues, align 4
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %1, align 4
  %max_rx_queues = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 7
  %17 = add i32 %16, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -8, i32 %17)
  %18 = icmp ult i32 %17, -8
  %spec.store.select67 = select i1 %18, i32 8, i32 %16
  %19 = ptrtoint ptr %max_rx_queues to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %spec.store.select67, ptr %max_rx_queues, align 4
  %20 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %2, align 4
  %22 = ptrtoint ptr %num_tcs to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %num_tcs, align 4
  %23 = load i32, ptr %max_rx_queues, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %23)
  %cmp36 = icmp ugt i32 %21, %23
  %spec.store.select = select i1 %cmp36, i32 1, i32 %21
  %24 = ptrtoint ptr %num_tcs to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %spec.store.select, ptr %num_tcs, align 4
  %25 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %3, align 4
  %27 = ptrtoint ptr %default_tc to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %default_tc, align 4
  %28 = ptrtoint ptr %max_tx_queues to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %max_tx_queues, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %29)
  %cmp42.not = icmp ult i32 %26, %29
  %spec.store.select66 = select i1 %cmp42.not, i32 %26, i32 0
  %30 = ptrtoint ptr %default_tc to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %spec.store.select66, ptr %default_tc, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.cleanup_crit_edge, %ixgbevf_write_msg_read_ack.exit.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -5, %if.then.cleanup_crit_edge ], [ %call2.i, %ixgbevf_write_msg_read_ack.exit.cleanup_crit_edge ], [ 0, %if.end ], [ %call.i, %sw.epilog.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %msg) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgbevf_init_hw_vf(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %start_hw = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 2
  %0 = ptrtoint ptr %start_hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %start_hw, align 4
  %call = tail call i32 %1(ptr noundef %hw) #9
  %get_mac_addr = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 5
  %2 = ptrtoint ptr %get_mac_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %get_mac_addr, align 4
  %addr = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 1
  %call4 = tail call i32 %3(ptr noundef %hw, ptr noundef %addr) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgbevf_reset_hw_vf(ptr noundef %hw) #0 align 64 {
entry:
  %msgbuf = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mbx1 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %msgbuf) #9
  %0 = getelementptr inbounds [4 x i32], ptr %msgbuf, i32 0, i32 1
  %1 = getelementptr inbounds [4 x i32], ptr %msgbuf, i32 0, i32 2
  %2 = getelementptr inbounds [4 x i32], ptr %msgbuf, i32 0, i32 3
  %stop_adapter = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 6
  %3 = getelementptr inbounds i8, ptr %msgbuf, i32 4
  %4 = call ptr @memset(ptr %3, i32 255, i32 12)
  %5 = ptrtoint ptr %stop_adapter to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %stop_adapter, align 4
  %call = tail call i32 %6(ptr noundef %hw) #9
  %api_version = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 10
  %7 = ptrtoint ptr %api_version to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %api_version, align 4
  %8 = ptrtoint ptr %mbx1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mbx1, align 4
  %call4 = tail call i32 %9(ptr noundef %hw) #9
  %10 = call ptr @memcpy(ptr %mbx1, ptr @ixgbevf_mbx_ops_legacy, i32 28)
  %hw_addr.i = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %11 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %hw_addr.i, align 4
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %entry.ixgbe_write_reg.exit_crit_edge, label %do.body4.i, !prof !43

entry.ixgbe_write_reg.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %ixgbe_write_reg.exit

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !44
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %12, i32 4) #9, !srcloc !45
  br label %ixgbe_write_reg.exit

ixgbe_write_reg.exit:                             ; preds = %do.body4.i, %entry.ixgbe_write_reg.exit_crit_edge
  %call7 = tail call i32 @ixgbevf_read_reg(ptr noundef %hw, i32 noundef 8) #9
  %check_for_rst = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 3, i32 0, i32 6
  %13 = ptrtoint ptr %check_for_rst to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %check_for_rst, align 4
  %call959 = tail call i32 %14(ptr noundef %hw) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call959)
  %tobool.not60.not = icmp eq i32 %call959, 0
  br i1 %tobool.not60.not, label %ixgbe_write_reg.exit.while.body_crit_edge, label %ixgbe_write_reg.exit.if.end_crit_edge

ixgbe_write_reg.exit.if.end_crit_edge:            ; preds = %ixgbe_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

ixgbe_write_reg.exit.while.body_crit_edge:        ; preds = %ixgbe_write_reg.exit
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %ixgbe_write_reg.exit.while.body_crit_edge
  %timeout.061 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ 200, %ixgbe_write_reg.exit.while.body_crit_edge ]
  %dec = add nsw i32 %timeout.061, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 1073740) #9
  %16 = ptrtoint ptr %check_for_rst to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %check_for_rst, align 4
  %call9 = tail call i32 %17(ptr noundef %hw) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool.not = icmp ne i32 %call9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool10.not = icmp eq i32 %dec, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool10.not
  br i1 %or.cond, label %while.end, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.end:                                        ; preds = %while.body
  br i1 %tobool10.not, label %while.end.cleanup_crit_edge, label %while.end.if.end_crit_edge

while.end.if.end_crit_edge:                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %while.end.if.end_crit_edge, %ixgbe_write_reg.exit.if.end_crit_edge
  %timeout12 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 3, i32 2
  %18 = ptrtoint ptr %timeout12 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 2000, ptr %timeout12, align 4
  %19 = ptrtoint ptr %msgbuf to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %msgbuf, align 4
  %call14 = call i32 @ixgbevf_write_mbx(ptr noundef %hw, ptr noundef nonnull %msgbuf, i16 noundef zeroext 1) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %20(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %21(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %22(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %23(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %24(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %25(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %26(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %27(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %28(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %29(i32 noundef 214748000) #9
  %call21 = call i32 @ixgbevf_poll_mbx(ptr noundef %hw, ptr noundef nonnull %msgbuf, i16 noundef zeroext 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end24:                                         ; preds = %if.end
  %30 = ptrtoint ptr %msgbuf to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %msgbuf, align 4
  %32 = zext i32 %31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.4)
  switch i32 %31, label %if.end24.cleanup_crit_edge [
    i32 -2147483647, label %if.then32
    i32 1073741825, label %if.end24.if.end35_crit_edge
  ]

if.end24.if.end35_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then32:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  %perm_addr = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 2
  %33 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %0, align 4
  %35 = ptrtoint ptr %perm_addr to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %perm_addr, align 4
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %1, align 4
  %add.ptr1.i = getelementptr %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 2, i32 4
  %38 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %37, ptr %add.ptr1.i, align 2
  br label %if.end35

if.end35:                                         ; preds = %if.then32, %if.end24.if.end35_crit_edge
  %39 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %2, align 4
  %mc_filter_type = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 4
  %41 = ptrtoint ptr %mc_filter_type to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %mc_filter_type, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %if.end24.cleanup_crit_edge, %if.end.cleanup_crit_edge, %while.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end35 ], [ -2, %while.end.cleanup_crit_edge ], [ %call21, %if.end.cleanup_crit_edge ], [ -1, %if.end24.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %msgbuf) #9
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @ixgbevf_start_hw_vf(ptr nocapture noundef writeonly %hw) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter_stopped = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 9
  %0 = ptrtoint ptr %adapter_stopped to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %adapter_stopped, align 1
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ixgbevf_get_mac_addr_vf(ptr nocapture noundef readonly %hw, ptr nocapture noundef writeonly %mac_addr) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %perm_addr = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 2
  %0 = ptrtoint ptr %perm_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %perm_addr, align 4
  %2 = ptrtoint ptr %mac_addr to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %mac_addr, align 4
  %add.ptr.i = getelementptr %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 2, i32 4
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr i8, ptr %mac_addr, i32 4
  %5 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %4, ptr %add.ptr1.i, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgbevf_stop_hw_vf(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter_stopped = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 9
  %0 = ptrtoint ptr %adapter_stopped to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %adapter_stopped, align 1
  %max_rx_queues = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 7
  %1 = ptrtoint ptr %max_rx_queues to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %max_rx_queues, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp62.not = icmp eq i32 %2, 0
  br i1 %cmp62.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %hw_addr.i = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %conv64 = phi i32 [ 0, %for.body.lr.ph ], [ %conv, %for.inc.for.body_crit_edge ]
  %i.063 = phi i16 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %mul = shl nuw nsw i32 %conv64, 6
  %add = add nuw nsw i32 %mul, 4136
  %call = tail call i32 @ixgbevf_read_reg(ptr noundef %hw, i32 noundef %add) #9
  %and = and i32 %call, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then:                                          ; preds = %for.body
  %3 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %hw_addr.i, align 4
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %if.then.for.inc_crit_edge, label %do.body4.i, !prof !43

if.then.for.inc_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

do.body4.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %and3 = and i32 %call, -33554433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !44
  tail call void @arm_heavy_mb() #9
  %5 = tail call i32 @llvm.bswap.i32(i32 %and3) #9
  %add.ptr.i = getelementptr i8, ptr %4, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %5) #9, !srcloc !45
  br label %for.inc

for.inc:                                          ; preds = %do.body4.i, %if.then.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add i16 %i.063, 1
  %conv = zext i16 %inc to i32
  %cmp = icmp ugt i32 %2, %conv
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %call7 = tail call i32 @ixgbevf_read_reg(ptr noundef %hw, i32 noundef 8) #9
  %hw_addr.i52 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %6 = ptrtoint ptr %hw_addr.i52 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %hw_addr.i52, align 4
  %tobool.not.i53 = icmp eq ptr %7, null
  br i1 %tobool.not.i53, label %for.end.ixgbe_write_reg.exit56_crit_edge, label %do.body4.i55, !prof !43

for.end.ixgbe_write_reg.exit56_crit_edge:         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %ixgbe_write_reg.exit56

do.body4.i55:                                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !44
  tail call void @arm_heavy_mb() #9
  %add.ptr.i54 = getelementptr i8, ptr %7, i32 268
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i54, i32 117440512) #9, !srcloc !45
  br label %ixgbe_write_reg.exit56

ixgbe_write_reg.exit56:                           ; preds = %do.body4.i55, %for.end.ixgbe_write_reg.exit56_crit_edge
  %call8 = tail call i32 @ixgbevf_read_reg(ptr noundef %hw, i32 noundef 256) #9
  %max_tx_queues = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 6
  %8 = ptrtoint ptr %max_tx_queues to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %max_tx_queues, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp1265.not = icmp eq i32 %9, 0
  br i1 %cmp1265.not, label %ixgbe_write_reg.exit56.for.end29_crit_edge, label %ixgbe_write_reg.exit56.for.body14_crit_edge

ixgbe_write_reg.exit56.for.body14_crit_edge:      ; preds = %ixgbe_write_reg.exit56
  br label %for.body14

ixgbe_write_reg.exit56.for.end29_crit_edge:       ; preds = %ixgbe_write_reg.exit56
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end29

for.body14:                                       ; preds = %for.inc27.for.body14_crit_edge, %ixgbe_write_reg.exit56.for.body14_crit_edge
  %conv1167 = phi i32 [ %conv11, %for.inc27.for.body14_crit_edge ], [ 0, %ixgbe_write_reg.exit56.for.body14_crit_edge ]
  %i.166 = phi i16 [ %inc28, %for.inc27.for.body14_crit_edge ], [ 0, %ixgbe_write_reg.exit56.for.body14_crit_edge ]
  %mul16 = shl nuw nsw i32 %conv1167, 6
  %add17 = add nuw nsw i32 %mul16, 8232
  %call18 = tail call i32 @ixgbevf_read_reg(ptr noundef %hw, i32 noundef %add17) #9
  %and19 = and i32 %call18, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %for.body14.for.inc27_crit_edge, label %if.then21

for.body14.for.inc27_crit_edge:                   ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc27

if.then21:                                        ; preds = %for.body14
  %10 = ptrtoint ptr %hw_addr.i52 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %hw_addr.i52, align 4
  %tobool.not.i58 = icmp eq ptr %11, null
  br i1 %tobool.not.i58, label %if.then21.for.inc27_crit_edge, label %do.body4.i60, !prof !43

if.then21.for.inc27_crit_edge:                    ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc27

do.body4.i60:                                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #11
  %and22 = and i32 %call18, -33554433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !44
  tail call void @arm_heavy_mb() #9
  %12 = tail call i32 @llvm.bswap.i32(i32 %and22) #9
  %add.ptr.i59 = getelementptr i8, ptr %11, i32 %add17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i59, i32 %12) #9, !srcloc !45
  br label %for.inc27

for.inc27:                                        ; preds = %do.body4.i60, %if.then21.for.inc27_crit_edge, %for.body14.for.inc27_crit_edge
  %inc28 = add i16 %i.166, 1
  %conv11 = zext i16 %inc28 to i32
  %cmp12 = icmp ugt i32 %9, %conv11
  br i1 %cmp12, label %for.inc27.for.body14_crit_edge, label %for.inc27.for.end29_crit_edge

for.inc27.for.end29_crit_edge:                    ; preds = %for.inc27
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end29

for.inc27.for.body14_crit_edge:                   ; preds = %for.inc27
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body14

for.end29:                                        ; preds = %for.inc27.for.end29_crit_edge, %ixgbe_write_reg.exit56.for.end29_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgbevf_negotiate_api_version_vf(ptr noundef %hw, i32 noundef %api) #0 align 64 {
entry:
  %msg = alloca [3 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #9
  %0 = getelementptr inbounds [3 x i32], ptr %msg, i32 0, i32 1
  %1 = getelementptr inbounds [3 x i32], ptr %msg, i32 0, i32 2
  %2 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 8, ptr %msg, align 4
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %api, ptr %0, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %1, align 4
  %call.i = call i32 @ixgbevf_write_mbx(ptr noundef %hw, ptr noundef nonnull %msg, i16 noundef zeroext 3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %ixgbevf_write_msg_read_ack.exit, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

ixgbevf_write_msg_read_ack.exit:                  ; preds = %entry
  %call2.i = call i32 @ixgbevf_poll_mbx(ptr noundef %hw, ptr noundef nonnull %msg, i16 noundef zeroext 3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not = icmp eq i32 %call2.i, 0
  br i1 %tobool.not, label %if.then, label %ixgbevf_write_msg_read_ack.exit.cleanup_crit_edge

ixgbevf_write_msg_read_ack.exit.cleanup_crit_edge: ; preds = %ixgbevf_write_msg_read_ack.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then:                                          ; preds = %ixgbevf_write_msg_read_ack.exit
  %5 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %msg, align 4
  %and = and i32 %6, -536870913
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483640, i32 %and)
  %cmp = icmp eq i32 %and, -2147483640
  br i1 %cmp, label %if.then6, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %api_version = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 10
  %7 = ptrtoint ptr %api_version to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %api, ptr %api_version, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %if.then.cleanup_crit_edge, %ixgbevf_write_msg_read_ack.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then6 ], [ %call2.i, %ixgbevf_write_msg_read_ack.exit.cleanup_crit_edge ], [ -3, %if.then.cleanup_crit_edge ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #9
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ixgbevf_setup_mac_link_vf(ptr nocapture noundef readnone %hw, i32 noundef %speed, i1 noundef zeroext %autoneg, i1 noundef zeroext %autoneg_wait_to_complete) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgbevf_check_mac_link_vf(ptr noundef %hw, ptr nocapture noundef writeonly %speed, ptr nocapture noundef writeonly %link_up, i1 noundef zeroext %autoneg_wait_to_complete) #0 align 64 {
entry:
  %in_msg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %in_msg) #9
  %0 = ptrtoint ptr %in_msg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %in_msg, align 4
  %check_for_rst = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 3, i32 0, i32 6
  %1 = ptrtoint ptr %check_for_rst to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %check_for_rst, align 4
  %call = tail call i32 %2(ptr noundef %hw) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %timeout = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 3, i32 2
  %3 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool3.not = icmp eq i32 %4, 0
  br i1 %tobool3.not, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %get_link_status = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 5
  %5 = ptrtoint ptr %get_link_status to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %get_link_status, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.if.end_crit_edge
  %get_link_status4 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 5
  %6 = ptrtoint ptr %get_link_status4 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %get_link_status4, align 4, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool5.not = icmp eq i8 %7, 0
  br i1 %tobool5.not, label %if.end.out_crit_edge, label %if.end7

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end7:                                          ; preds = %if.end
  %call8 = tail call i32 @ixgbevf_read_reg(ptr noundef %hw, i32 noundef 16) #9
  %and = and i32 %call8, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %if.end7.out_crit_edge, label %if.end11

if.end7.out_crit_edge:                            ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end11:                                         ; preds = %if.end7
  %type = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 3
  %8 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp = icmp eq i32 %9, 1
  br i1 %cmp, label %for.body.preheader, label %if.end11.if.end19_crit_edge

if.end11.if.end19_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

for.body.preheader:                               ; preds = %if.end11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 21474800) #9
  %call14 = tail call i32 @ixgbevf_read_reg(ptr noundef %hw, i32 noundef 16) #9
  %and15 = and i32 %call14, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %for.body.preheader.out_crit_edge, label %for.cond

for.body.preheader.out_crit_edge:                 ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

for.cond:                                         ; preds = %for.body.preheader
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 21474800) #9
  %call14.1 = tail call i32 @ixgbevf_read_reg(ptr noundef %hw, i32 noundef 16) #9
  %and15.1 = and i32 %call14.1, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.1)
  %tobool16.not.1 = icmp eq i32 %and15.1, 0
  br i1 %tobool16.not.1, label %for.cond.out_crit_edge, label %for.cond.1

for.cond.out_crit_edge:                           ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

for.cond.1:                                       ; preds = %for.cond
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 21474800) #9
  %call14.2 = tail call i32 @ixgbevf_read_reg(ptr noundef %hw, i32 noundef 16) #9
  %and15.2 = and i32 %call14.2, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.2)
  %tobool16.not.2 = icmp eq i32 %and15.2, 0
  br i1 %tobool16.not.2, label %for.cond.1.out_crit_edge, label %for.cond.2

for.cond.1.out_crit_edge:                         ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

for.cond.2:                                       ; preds = %for.cond.1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 21474800) #9
  %call14.3 = tail call i32 @ixgbevf_read_reg(ptr noundef %hw, i32 noundef 16) #9
  %and15.3 = and i32 %call14.3, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.3)
  %tobool16.not.3 = icmp eq i32 %and15.3, 0
  br i1 %tobool16.not.3, label %for.cond.2.out_crit_edge, label %for.cond.3

for.cond.2.out_crit_edge:                         ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

for.cond.3:                                       ; preds = %for.cond.2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 21474800) #9
  %call14.4 = tail call i32 @ixgbevf_read_reg(ptr noundef %hw, i32 noundef 16) #9
  %and15.4 = and i32 %call14.4, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.4)
  %tobool16.not.4 = icmp eq i32 %and15.4, 0
  br i1 %tobool16.not.4, label %for.cond.3.out_crit_edge, label %for.cond.3.if.end19_crit_edge

for.cond.3.if.end19_crit_edge:                    ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

for.cond.3.out_crit_edge:                         ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end19:                                         ; preds = %for.cond.3.if.end19_crit_edge, %if.end11.if.end19_crit_edge
  %links_reg.2 = phi i32 [ %call8, %if.end11.if.end19_crit_edge ], [ %call14.4, %for.cond.3.if.end19_crit_edge ]
  %and20 = and i32 %links_reg.2, 805306368
  %15 = zext i32 %and20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.5)
  switch i32 %and20, label %if.end19.sw.epilog_crit_edge [
    i32 805306368, label %if.end19.sw.epilog.sink.split_crit_edge
    i32 536870912, label %sw.bb21
    i32 268435456, label %sw.bb22
  ]

if.end19.sw.epilog.sink.split_crit_edge:          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split

if.end19.sw.epilog_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb21:                                          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split

sw.bb22:                                          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb22, %sw.bb21, %if.end19.sw.epilog.sink.split_crit_edge
  %.sink = phi i32 [ 8, %sw.bb22 ], [ 32, %sw.bb21 ], [ 128, %if.end19.sw.epilog.sink.split_crit_edge ]
  %16 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %.sink, ptr %speed, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end19.sw.epilog_crit_edge
  %read = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 3, i32 0, i32 2
  %17 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %read, align 4
  %call24 = call i32 %18(ptr noundef %hw, ptr noundef nonnull %in_msg, i16 noundef zeroext 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end31, label %if.then26

if.then26:                                        ; preds = %sw.epilog
  %api_version = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 10
  %19 = ptrtoint ptr %api_version to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %api_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %20)
  %cmp27 = icmp sgt i32 %20, 5
  br i1 %cmp27, label %if.then28, label %if.then26.out_crit_edge

if.then26.out_crit_edge:                          ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then28:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %get_link_status4 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %get_link_status4, align 4
  br label %out

if.end31:                                         ; preds = %sw.epilog
  %22 = ptrtoint ptr %in_msg to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %in_msg, align 4
  %and32 = and i32 %23, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %if.then34, label %if.end39

if.then34:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  %and35 = shl i32 %23, 1
  %sext = ashr i32 %and35, 31
  br label %out

if.end39:                                         ; preds = %if.end31
  %timeout40 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 3, i32 2
  %24 = ptrtoint ptr %timeout40 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %timeout40, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool41.not = icmp eq i32 %25, 0
  br i1 %tobool41.not, label %if.end39.out_crit_edge, label %if.end43

if.end39.out_crit_edge:                           ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end43:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %get_link_status4 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %get_link_status4, align 4
  br label %out

out:                                              ; preds = %if.end43, %if.end39.out_crit_edge, %if.then34, %if.then28, %if.then26.out_crit_edge, %for.cond.3.out_crit_edge, %for.cond.2.out_crit_edge, %for.cond.1.out_crit_edge, %for.cond.out_crit_edge, %for.body.preheader.out_crit_edge, %if.end7.out_crit_edge, %if.end.out_crit_edge
  %ret_val.0 = phi i32 [ 0, %if.then28 ], [ 0, %if.then26.out_crit_edge ], [ 0, %if.end43 ], [ 0, %if.end7.out_crit_edge ], [ 0, %if.end.out_crit_edge ], [ %sext, %if.then34 ], [ -1, %if.end39.out_crit_edge ], [ 0, %for.cond.3.out_crit_edge ], [ 0, %for.cond.2.out_crit_edge ], [ 0, %for.cond.1.out_crit_edge ], [ 0, %for.cond.out_crit_edge ], [ 0, %for.body.preheader.out_crit_edge ]
  %27 = ptrtoint ptr %get_link_status4 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %get_link_status4, align 4, !range !46
  %29 = xor i8 %28, 1
  %30 = ptrtoint ptr %link_up to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %link_up, align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %in_msg) #9
  ret i32 %ret_val.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgbevf_set_rar_vf(ptr noundef %hw, i32 noundef %index, ptr nocapture noundef readonly %addr, i32 noundef %vmdq) #0 align 64 {
entry:
  %msgbuf = alloca [3 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msgbuf) #9
  %0 = getelementptr inbounds [3 x i32], ptr %msgbuf, i32 0, i32 1
  %1 = getelementptr inbounds [3 x i32], ptr %msgbuf, i32 0, i32 2
  %2 = getelementptr inbounds i8, ptr %msgbuf, i32 8
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %2, align 4
  %4 = ptrtoint ptr %msgbuf to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2, ptr %msgbuf, align 4
  %5 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %addr, align 4
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %0, align 4
  %add.ptr.i = getelementptr i8, ptr %addr, i32 4
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %add.ptr.i, align 2
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %1, align 4
  %call.i = call i32 @ixgbevf_write_mbx(ptr noundef %hw, ptr noundef nonnull %msgbuf, i16 noundef zeroext 3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %ixgbevf_write_msg_read_ack.exit, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

ixgbevf_write_msg_read_ack.exit:                  ; preds = %entry
  %call2.i = call i32 @ixgbevf_poll_mbx(ptr noundef %hw, ptr noundef nonnull %msgbuf, i16 noundef zeroext 3) #9
  %11 = ptrtoint ptr %msgbuf to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %msgbuf, align 4
  %and = and i32 %12, -536870913
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not = icmp eq i32 %call2.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741826, i32 %and)
  %cmp = icmp eq i32 %and, 1073741826
  %or.cond = select i1 %tobool.not, i1 %cmp, i1 false
  br i1 %or.cond, label %if.then, label %ixgbevf_write_msg_read_ack.exit.cleanup_crit_edge

ixgbevf_write_msg_read_ack.exit.cleanup_crit_edge: ; preds = %ixgbevf_write_msg_read_ack.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then:                                          ; preds = %ixgbevf_write_msg_read_ack.exit
  call void @__sanitizer_cov_trace_pc() #11
  %addr6 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 1
  %perm_addr.i = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 2
  %13 = ptrtoint ptr %perm_addr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %perm_addr.i, align 4
  %15 = ptrtoint ptr %addr6 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %addr6, align 4
  %add.ptr.i.i = getelementptr %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 2, i32 4
  %16 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %add.ptr.i.i, align 2
  %add.ptr1.i.i = getelementptr %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 1, i32 4
  %18 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %add.ptr1.i.i, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.then, %ixgbevf_write_msg_read_ack.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %if.then ], [ %call2.i, %ixgbevf_write_msg_read_ack.exit.cleanup_crit_edge ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msgbuf) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgbevf_set_uc_addr_vf(ptr noundef %hw, i32 noundef %index, ptr noundef readonly %addr) #0 align 64 {
entry:
  %msgbuf = alloca [3 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msgbuf) #9
  %0 = getelementptr inbounds i8, ptr %msgbuf, i32 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %1, i32 8)
  store i64 0, ptr %0, align 4
  %shl = shl i32 %index, 16
  %or3 = or i32 %shl, 6
  %2 = ptrtoint ptr %msgbuf to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %or3, ptr %msgbuf, align 4
  %tobool.not = icmp eq ptr %addr, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = getelementptr inbounds [3 x i32], ptr %msgbuf, i32 0, i32 2
  %4 = getelementptr inbounds [3 x i32], ptr %msgbuf, i32 0, i32 1
  %5 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %addr, align 4
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %4, align 4
  %add.ptr.i = getelementptr i8, ptr %addr, i32 4
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %add.ptr.i, align 2
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %3, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call.i = call i32 @ixgbevf_write_mbx(ptr noundef %hw, ptr noundef nonnull %msgbuf, i16 noundef zeroext 3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %ixgbevf_write_msg_read_ack.exit, label %if.end.if.end14_crit_edge

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

ixgbevf_write_msg_read_ack.exit:                  ; preds = %if.end
  %call2.i = call i32 @ixgbevf_poll_mbx(ptr noundef %hw, ptr noundef nonnull %msgbuf, i16 noundef zeroext 3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool7.not = icmp eq i32 %call2.i, 0
  br i1 %tobool7.not, label %if.then8, label %ixgbevf_write_msg_read_ack.exit.if.end14_crit_edge

ixgbevf_write_msg_read_ack.exit.if.end14_crit_edge: ; preds = %ixgbevf_write_msg_read_ack.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then8:                                         ; preds = %ixgbevf_write_msg_read_ack.exit
  %11 = ptrtoint ptr %msgbuf to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %msgbuf, align 4
  %and = and i32 %12, -536870913
  %or11 = or i32 %shl, 1073741830
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %or11)
  %cmp = icmp eq i32 %and, %or11
  br i1 %cmp, label %if.then8.cleanup_crit_edge, label %if.then8.if.end14_crit_edge

if.then8.if.end14_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end14:                                         ; preds = %if.then8.if.end14_crit_edge, %ixgbevf_write_msg_read_ack.exit.if.end14_crit_edge, %if.end.if.end14_crit_edge
  %retval.0.i22 = phi i32 [ 0, %if.then8.if.end14_crit_edge ], [ %call2.i, %ixgbevf_write_msg_read_ack.exit.if.end14_crit_edge ], [ %call.i, %if.end.if.end14_crit_edge ]
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.then8.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i22, %if.end14 ], [ -12, %if.then8.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msgbuf) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgbevf_update_mc_addr_list_vf(ptr noundef %hw, ptr noundef readonly %netdev) #0 align 64 {
entry:
  %msgbuf = alloca [16 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %msgbuf) #9
  %0 = getelementptr inbounds i8, ptr %msgbuf, i32 4
  %1 = call ptr @memset(ptr %0, i32 255, i32 60)
  %arrayidx = getelementptr inbounds [16 x i32], ptr %msgbuf, i32 0, i32 1
  %mc = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 66
  %count = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 66, i32 1
  %2 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %count, align 8
  %4 = tail call i32 @llvm.umin.i32(i32 %3, i32 30)
  %shl = shl nuw nsw i32 %4, 16
  %or = or i32 %shl, 3
  %5 = ptrtoint ptr %msgbuf to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %or, ptr %msgbuf, align 4
  %6 = ptrtoint ptr %mc to i32
  call void @__asan_load4_noabort(i32 %6)
  %ha.035 = load ptr, ptr %mc, align 4
  %cmp7.not36 = icmp eq ptr %ha.035, %mc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp837 = icmp eq i32 %4, 0
  %or.cond38 = select i1 %cmp7.not36, i1 true, i1 %cmp837
  br i1 %or.cond38, label %entry.for.end_crit_edge, label %if.end10.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end10.lr.ph:                                   ; preds = %entry
  %mc_filter_type.i = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 4
  br label %if.end10

if.end10:                                         ; preds = %for.inc.if.end10_crit_edge, %if.end10.lr.ph
  %ha.040 = phi ptr [ %ha.035, %if.end10.lr.ph ], [ %ha.0, %for.inc.if.end10_crit_edge ]
  %i.039 = phi i32 [ 0, %if.end10.lr.ph ], [ %i.1, %for.inc.if.end10_crit_edge ]
  %addr = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.040, i32 0, i32 2
  %7 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %addr, align 4
  %xor.i = xor i32 %8, 25215488
  %arrayidx.i = getelementptr %struct.netdev_hw_addr, ptr %ha.040, i32 0, i32 2, i32 4
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %arrayidx.i, align 2
  %11 = and i16 %10, -16
  %and.i = zext i16 %11 to i32
  %or.i = or i32 %xor.i, %and.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i = icmp eq i32 %or.i, 0
  br i1 %cmp.i, label %if.end10.for.inc_crit_edge, label %if.end12

if.end10.for.inc_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end12:                                         ; preds = %if.end10
  %12 = ptrtoint ptr %mc_filter_type.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mc_filter_type.i, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %13, label %if.end12.ixgbevf_mta_vector.exit_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb4.i
    i32 2, label %sw.bb13.i
    i32 3, label %sw.bb22.i
  ]

if.end12.ixgbevf_mta_vector.exit_crit_edge:       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %ixgbevf_mta_vector.exit

sw.bb.i:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx.i, align 1
  %17 = lshr i8 %16, 4
  br label %sw.epilog.sink.split.i

sw.bb4.i:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx.i, align 1
  %20 = lshr i8 %19, 3
  br label %sw.epilog.sink.split.i

sw.bb13.i:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx.i, align 1
  %23 = lshr i8 %22, 2
  br label %sw.epilog.sink.split.i

sw.bb22.i:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx.i, align 1
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %sw.bb22.i, %sw.bb13.i, %sw.bb4.i, %sw.bb.i
  %.sink39.i = phi i8 [ %25, %sw.bb22.i ], [ %23, %sw.bb13.i ], [ %20, %sw.bb4.i ], [ %17, %sw.bb.i ]
  %.sink.i = phi i16 [ 8, %sw.bb22.i ], [ 6, %sw.bb13.i ], [ 5, %sw.bb4.i ], [ 4, %sw.bb.i ]
  %conv24.i = zext i8 %.sink39.i to i16
  %arrayidx25.i = getelementptr %struct.netdev_hw_addr, ptr %ha.040, i32 0, i32 2, i32 5
  %26 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx25.i, align 1
  %conv27.i = zext i8 %27 to i16
  %shl28.i = shl nuw i16 %conv27.i, %.sink.i
  %shl28.masked.i = and i16 %shl28.i, 4094
  %phi.bo.i = or i16 %shl28.masked.i, %conv24.i
  br label %ixgbevf_mta_vector.exit

ixgbevf_mta_vector.exit:                          ; preds = %sw.epilog.sink.split.i, %if.end12.ixgbevf_mta_vector.exit_crit_edge
  %vector.0.i = phi i16 [ 0, %if.end12.ixgbevf_mta_vector.exit_crit_edge ], [ %phi.bo.i, %sw.epilog.sink.split.i ]
  %inc = add i32 %i.039, 1
  %arrayidx16 = getelementptr i16, ptr %arrayidx, i32 %i.039
  %28 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %vector.0.i, ptr %arrayidx16, align 2
  br label %for.inc

for.inc:                                          ; preds = %ixgbevf_mta_vector.exit, %if.end10.for.inc_crit_edge
  %i.1 = phi i32 [ %i.039, %if.end10.for.inc_crit_edge ], [ %inc, %ixgbevf_mta_vector.exit ]
  %29 = ptrtoint ptr %ha.040 to i32
  call void @__asan_load4_noabort(i32 %29)
  %ha.0 = load ptr, ptr %ha.040, align 4
  %cmp7.not = icmp eq ptr %ha.0, %mc
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1, i32 %4)
  %cmp8 = icmp eq i32 %i.1, %4
  %or.cond = select i1 %cmp7.not, i1 true, i1 %cmp8
  br i1 %or.cond, label %for.inc.for.end_crit_edge, label %for.inc.if.end10_crit_edge

for.inc.if.end10_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %call.i = call i32 @ixgbevf_write_mbx(ptr noundef %hw, ptr noundef nonnull %msgbuf, i16 noundef zeroext 16) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.end.ixgbevf_write_msg_read_ack.exit_crit_edge

for.end.ixgbevf_write_msg_read_ack.exit_crit_edge: ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %ixgbevf_write_msg_read_ack.exit

if.end.i:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %call2.i = call i32 @ixgbevf_poll_mbx(ptr noundef %hw, ptr noundef nonnull %msgbuf, i16 noundef zeroext 16) #9
  br label %ixgbevf_write_msg_read_ack.exit

ixgbevf_write_msg_read_ack.exit:                  ; preds = %if.end.i, %for.end.ixgbevf_write_msg_read_ack.exit_crit_edge
  %retval.0.i = phi i32 [ %call2.i, %if.end.i ], [ %call.i, %for.end.ixgbevf_write_msg_read_ack.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %msgbuf) #9
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgbevf_update_xcast_mode(ptr noundef %hw, i32 noundef %xcast_mode) #0 align 64 {
entry:
  %msgbuf = alloca [2 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %msgbuf) #9
  %0 = getelementptr inbounds [2 x i32], ptr %msgbuf, i32 0, i32 1
  %api_version = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 10
  %1 = ptrtoint ptr %api_version to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %api_version, align 4
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %2, label %entry.cleanup_crit_edge [
    i32 3, label %sw.bb
    i32 4, label %entry.sw.epilog_crit_edge
    i32 5, label %entry.sw.epilog_crit_edge17
    i32 6, label %entry.sw.epilog_crit_edge18
  ]

entry.sw.epilog_crit_edge18:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

entry.sw.epilog_crit_edge17:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %xcast_mode)
  %cmp = icmp eq i32 %xcast_mode, 3
  br i1 %cmp, label %sw.bb.cleanup_crit_edge, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge17, %entry.sw.epilog_crit_edge18
  %4 = ptrtoint ptr %msgbuf to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 12, ptr %msgbuf, align 4
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %xcast_mode, ptr %0, align 4
  %call.i = call i32 @ixgbevf_write_mbx(ptr noundef %hw, ptr noundef nonnull %msgbuf, i16 noundef zeroext 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %ixgbevf_write_msg_read_ack.exit, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

ixgbevf_write_msg_read_ack.exit:                  ; preds = %sw.epilog
  %call2.i = call i32 @ixgbevf_poll_mbx(ptr noundef %hw, ptr noundef nonnull %msgbuf, i16 noundef zeroext 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not = icmp eq i32 %call2.i, 0
  br i1 %tobool.not, label %if.end5, label %ixgbevf_write_msg_read_ack.exit.cleanup_crit_edge

ixgbevf_write_msg_read_ack.exit.cleanup_crit_edge: ; preds = %ixgbevf_write_msg_read_ack.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %ixgbevf_write_msg_read_ack.exit
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %msgbuf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %msgbuf, align 4
  %and = and i32 %7, -536870913
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741836, i32 %and)
  %cmp8 = icmp eq i32 %and, 1073741836
  %. = sext i1 %cmp8 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %ixgbevf_write_msg_read_ack.exit.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %sw.bb.cleanup_crit_edge ], [ -95, %entry.cleanup_crit_edge ], [ %call2.i, %ixgbevf_write_msg_read_ack.exit.cleanup_crit_edge ], [ %., %if.end5 ], [ %call.i, %sw.epilog.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %msgbuf) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgbevf_set_vfta_vf(ptr noundef %hw, i32 noundef %vlan, i32 noundef %vind, i1 noundef zeroext %vlan_on) #0 align 64 {
entry:
  %msgbuf = alloca [2 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %msgbuf) #9
  %0 = getelementptr inbounds [2 x i32], ptr %msgbuf, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %vlan, ptr %0, align 4
  %or = select i1 %vlan_on, i32 65540, i32 4
  %2 = ptrtoint ptr %msgbuf to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %or, ptr %msgbuf, align 4
  %call.i = call i32 @ixgbevf_write_mbx(ptr noundef %hw, ptr noundef nonnull %msgbuf, i16 noundef zeroext 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %ixgbevf_write_msg_read_ack.exit, label %entry.mbx_err_crit_edge

entry.mbx_err_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %mbx_err

ixgbevf_write_msg_read_ack.exit:                  ; preds = %entry
  %call2.i = call i32 @ixgbevf_poll_mbx(ptr noundef %hw, ptr noundef nonnull %msgbuf, i16 noundef zeroext 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool4.not = icmp eq i32 %call2.i, 0
  br i1 %tobool4.not, label %if.end, label %ixgbevf_write_msg_read_ack.exit.mbx_err_crit_edge

ixgbevf_write_msg_read_ack.exit.mbx_err_crit_edge: ; preds = %ixgbevf_write_msg_read_ack.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %mbx_err

if.end:                                           ; preds = %ixgbevf_write_msg_read_ack.exit
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %msgbuf to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %msgbuf, align 4
  %and7 = and i32 %4, -553582593
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483644, i32 %and7)
  %cmp.not = icmp eq i32 %and7, -2147483644
  %spec.select = select i1 %cmp.not, i32 0, i32 -3
  br label %mbx_err

mbx_err:                                          ; preds = %if.end, %ixgbevf_write_msg_read_ack.exit.mbx_err_crit_edge, %entry.mbx_err_crit_edge
  %err.0 = phi i32 [ %call2.i, %ixgbevf_write_msg_read_ack.exit.mbx_err_crit_edge ], [ %spec.select, %if.end ], [ %call.i, %entry.mbx_err_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %msgbuf) #9
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgbevf_set_rlpml_vf(ptr noundef %hw, i16 noundef zeroext %max_size) #0 align 64 {
entry:
  %msgbuf = alloca [2 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %msgbuf) #9
  %0 = getelementptr inbounds [2 x i32], ptr %msgbuf, i32 0, i32 1
  %1 = ptrtoint ptr %msgbuf to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 5, ptr %msgbuf, align 4
  %conv = zext i16 %max_size to i32
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %conv, ptr %0, align 4
  %call.i = call i32 @ixgbevf_write_mbx(ptr noundef %hw, ptr noundef nonnull %msgbuf, i16 noundef zeroext 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %ixgbevf_write_msg_read_ack.exit, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

ixgbevf_write_msg_read_ack.exit:                  ; preds = %entry
  %call2.i = call i32 @ixgbevf_poll_mbx(ptr noundef %hw, ptr noundef nonnull %msgbuf, i16 noundef zeroext 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not = icmp eq i32 %call2.i, 0
  br i1 %tobool.not, label %if.end, label %ixgbevf_write_msg_read_ack.exit.cleanup_crit_edge

ixgbevf_write_msg_read_ack.exit.cleanup_crit_edge: ; preds = %ixgbevf_write_msg_read_ack.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %ixgbevf_write_msg_read_ack.exit
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %msgbuf to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %msgbuf, align 4
  %and = and i32 %4, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  %and6 = and i32 %4, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  %or.cond = or i1 %tobool4.not, %tobool7.not
  %spec.select = select i1 %or.cond, i32 0, i32 -5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %ixgbevf_write_msg_read_ack.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2.i, %ixgbevf_write_msg_read_ack.exit.cleanup_crit_edge ], [ %spec.select, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %msgbuf) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbevf_read_reg(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgbevf_hv_reset_hw_vf(ptr nocapture noundef readnone %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #12
  ret i32 -95
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ixgbevf_hv_negotiate_api_version_vf(ptr nocapture noundef readnone %hw, i32 noundef %api) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %api)
  %cmp.not = icmp eq i32 %api, 0
  %. = select i1 %cmp.not, i32 0, i32 -3
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgbevf_hv_check_mac_link_vf(ptr noundef %hw, ptr nocapture noundef writeonly %speed, ptr nocapture noundef writeonly %link_up, i1 noundef zeroext %autoneg_wait_to_complete) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %check_for_rst = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 3, i32 0, i32 6
  %0 = ptrtoint ptr %check_for_rst to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %check_for_rst, align 4
  %call = tail call i32 %1(ptr noundef %hw) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %timeout = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 3, i32 2
  %2 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool3.not = icmp eq i32 %3, 0
  br i1 %tobool3.not, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %get_link_status = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 5
  %4 = ptrtoint ptr %get_link_status to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %get_link_status, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.if.end_crit_edge
  %get_link_status4 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 5
  %5 = ptrtoint ptr %get_link_status4 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %get_link_status4, align 4, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool5.not = icmp eq i8 %6, 0
  br i1 %tobool5.not, label %if.end.out_crit_edge, label %if.end7

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end7:                                          ; preds = %if.end
  %call8 = tail call i32 @ixgbevf_read_reg(ptr noundef %hw, i32 noundef 16) #9
  %and = and i32 %call8, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %if.end7.out_crit_edge, label %if.end11

if.end7.out_crit_edge:                            ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end11:                                         ; preds = %if.end7
  %type = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 3
  %7 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp = icmp eq i32 %8, 1
  br i1 %cmp, label %for.body.preheader, label %if.end11.if.end19_crit_edge

if.end11.if.end19_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

for.body.preheader:                               ; preds = %if.end11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 21474800) #9
  %call14 = tail call i32 @ixgbevf_read_reg(ptr noundef %hw, i32 noundef 16) #9
  %and15 = and i32 %call14, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %for.body.preheader.out_crit_edge, label %for.cond

for.body.preheader.out_crit_edge:                 ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

for.cond:                                         ; preds = %for.body.preheader
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 21474800) #9
  %call14.1 = tail call i32 @ixgbevf_read_reg(ptr noundef %hw, i32 noundef 16) #9
  %and15.1 = and i32 %call14.1, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.1)
  %tobool16.not.1 = icmp eq i32 %and15.1, 0
  br i1 %tobool16.not.1, label %for.cond.out_crit_edge, label %for.cond.1

for.cond.out_crit_edge:                           ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

for.cond.1:                                       ; preds = %for.cond
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 21474800) #9
  %call14.2 = tail call i32 @ixgbevf_read_reg(ptr noundef %hw, i32 noundef 16) #9
  %and15.2 = and i32 %call14.2, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.2)
  %tobool16.not.2 = icmp eq i32 %and15.2, 0
  br i1 %tobool16.not.2, label %for.cond.1.out_crit_edge, label %for.cond.2

for.cond.1.out_crit_edge:                         ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

for.cond.2:                                       ; preds = %for.cond.1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 21474800) #9
  %call14.3 = tail call i32 @ixgbevf_read_reg(ptr noundef %hw, i32 noundef 16) #9
  %and15.3 = and i32 %call14.3, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.3)
  %tobool16.not.3 = icmp eq i32 %and15.3, 0
  br i1 %tobool16.not.3, label %for.cond.2.out_crit_edge, label %for.cond.3

for.cond.2.out_crit_edge:                         ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

for.cond.3:                                       ; preds = %for.cond.2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 21474800) #9
  %call14.4 = tail call i32 @ixgbevf_read_reg(ptr noundef %hw, i32 noundef 16) #9
  %and15.4 = and i32 %call14.4, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.4)
  %tobool16.not.4 = icmp eq i32 %and15.4, 0
  br i1 %tobool16.not.4, label %for.cond.3.out_crit_edge, label %for.cond.3.if.end19_crit_edge

for.cond.3.if.end19_crit_edge:                    ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

for.cond.3.out_crit_edge:                         ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end19:                                         ; preds = %for.cond.3.if.end19_crit_edge, %if.end11.if.end19_crit_edge
  %links_reg.2 = phi i32 [ %call8, %if.end11.if.end19_crit_edge ], [ %call14.4, %for.cond.3.if.end19_crit_edge ]
  %and20 = and i32 %links_reg.2, 805306368
  %14 = zext i32 %and20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %and20, label %if.end19.sw.epilog_crit_edge [
    i32 805306368, label %if.end19.sw.epilog.sink.split_crit_edge
    i32 536870912, label %sw.bb21
    i32 268435456, label %sw.bb22
  ]

if.end19.sw.epilog.sink.split_crit_edge:          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split

if.end19.sw.epilog_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb21:                                          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split

sw.bb22:                                          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb22, %sw.bb21, %if.end19.sw.epilog.sink.split_crit_edge
  %.sink = phi i32 [ 8, %sw.bb22 ], [ 32, %sw.bb21 ], [ 128, %if.end19.sw.epilog.sink.split_crit_edge ]
  %15 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %.sink, ptr %speed, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end19.sw.epilog_crit_edge
  %16 = ptrtoint ptr %get_link_status4 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %get_link_status4, align 4
  br label %out

out:                                              ; preds = %sw.epilog, %for.cond.3.out_crit_edge, %for.cond.2.out_crit_edge, %for.cond.1.out_crit_edge, %for.cond.out_crit_edge, %for.body.preheader.out_crit_edge, %if.end7.out_crit_edge, %if.end.out_crit_edge
  %17 = ptrtoint ptr %get_link_status4 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %get_link_status4, align 4, !range !46
  %19 = xor i8 %18, 1
  %20 = ptrtoint ptr %link_up to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %link_up, align 1
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ixgbevf_hv_set_rar_vf(ptr nocapture noundef readonly %hw, i32 noundef %index, ptr nocapture noundef readonly %addr, i32 noundef %vmdq) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %perm_addr = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 2
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %addr, align 4
  %2 = ptrtoint ptr %perm_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %perm_addr, align 4
  %xor.i = xor i32 %3, %1
  %add.ptr.i = getelementptr i8, ptr %addr, i32 4
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 2, i32 4
  %6 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %add.ptr1.i, align 2
  %xor37.i = xor i16 %7, %5
  %xor3.i = zext i16 %xor37.i to i32
  %or.i = or i32 %xor.i, %xor3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i = icmp eq i32 %or.i, 0
  %. = select i1 %cmp.i, i32 0, i32 -95
  ret i32 %.
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ixgbevf_hv_set_uc_addr_vf(ptr nocapture noundef readnone %hw, i32 noundef %index, ptr nocapture noundef readnone %addr) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -95
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ixgbevf_hv_update_mc_addr_list_vf(ptr nocapture noundef readnone %hw, ptr nocapture noundef readnone %netdev) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -95
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ixgbevf_hv_update_xcast_mode(ptr nocapture noundef readnone %hw, i32 noundef %xcast_mode) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -95
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ixgbevf_hv_set_vfta_vf(ptr nocapture noundef readnone %hw, i32 noundef %vlan, i32 noundef %vind, i1 noundef zeroext %vlan_on) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -95
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgbevf_hv_set_rlpml_vf(ptr noundef %hw, i16 noundef zeroext %max_size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ixgbevf_read_reg(ptr noundef %hw, i32 noundef 4136) #9
  %hw_addr.i = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %hw_addr.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.ixgbe_write_reg.exit_crit_edge, label %do.body4.i, !prof !43

entry.ixgbe_write_reg.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %ixgbe_write_reg.exit

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %conv = zext i16 %max_size to i32
  %add = add nuw nsw i32 %conv, 4
  %or = or i32 %add, %call
  %or1 = or i32 %or, 32768
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !44
  tail call void @arm_heavy_mb() #9
  %2 = tail call i32 @llvm.bswap.i32(i32 %or1) #9
  %add.ptr.i = getelementptr i8, ptr %1, i32 4136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %2) #9, !srcloc !45
  br label %ixgbe_write_reg.exit

ixgbe_write_reg.exit:                             ; preds = %do.body4.i, %entry.ixgbe_write_reg.exit_crit_edge
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

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
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !31, !32, !33}
!llvm.module.flags = !{!34, !35, !36, !37, !38, !39, !40, !41}
!llvm.ident = !{!42}

!0 = !{ptr @ixgbevf_82599_vf_info, !1, !"ixgbevf_82599_vf_info", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/intel/ixgbevf/vf.c", i32 993, i32 27}
!2 = !{ptr @ixgbevf_82599_vf_hv_info, !3, !"ixgbevf_82599_vf_hv_info", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/intel/ixgbevf/vf.c", i32 998, i32 27}
!4 = !{ptr @ixgbevf_X540_vf_info, !5, !"ixgbevf_X540_vf_info", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/intel/ixgbevf/vf.c", i32 1003, i32 27}
!6 = !{ptr @ixgbevf_X540_vf_hv_info, !7, !"ixgbevf_X540_vf_hv_info", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/intel/ixgbevf/vf.c", i32 1008, i32 27}
!8 = !{ptr @ixgbevf_X550_vf_info, !9, !"ixgbevf_X550_vf_info", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/intel/ixgbevf/vf.c", i32 1013, i32 27}
!10 = !{ptr @ixgbevf_X550_vf_hv_info, !11, !"ixgbevf_X550_vf_hv_info", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/intel/ixgbevf/vf.c", i32 1018, i32 27}
!12 = !{ptr @ixgbevf_X550EM_x_vf_info, !13, !"ixgbevf_X550EM_x_vf_info", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/intel/ixgbevf/vf.c", i32 1023, i32 27}
!14 = !{ptr @ixgbevf_X550EM_x_vf_hv_info, !15, !"ixgbevf_X550EM_x_vf_hv_info", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/intel/ixgbevf/vf.c", i32 1028, i32 27}
!16 = !{ptr @ixgbevf_x550em_a_vf_info, !17, !"ixgbevf_x550em_a_vf_info", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/intel/ixgbevf/vf.c", i32 1033, i32 27}
!18 = !{ptr @ixgbevf_mac_ops, !19, !"ixgbevf_mac_ops", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/intel/ixgbevf/vf.c", i32 959, i32 42}
!20 = distinct !{null, !21, !"b", i1 false, i1 false}
!21 = !{!"../include/linux/etherdevice.h", i32 86, i32 23}
!22 = distinct !{null, !23, !"m", i1 false, i1 false}
!23 = !{!"../include/linux/etherdevice.h", i32 87, i32 22}
!24 = distinct !{null, !25, !"eth_reserved_addr_base", i1 false, i1 false}
!25 = !{!"../include/linux/etherdevice.h", i32 70, i32 17}
!26 = !{ptr @ixgbevf_hv_mac_ops, !27, !"ixgbevf_hv_mac_ops", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/intel/ixgbevf/vf.c", i32 976, i32 42}
!28 = !{ptr @.str, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/intel/ixgbevf/vf.c", i32 144, i32 2}
!30 = !{ptr @.str.1, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.2, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @ixgbevf_hv_reset_hw_vf._entry, !29, !"_entry", i1 false, i1 false}
!33 = !{ptr @ixgbevf_hv_reset_hw_vf._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!34 = !{i32 1, !"wchar_size", i32 2}
!35 = !{i32 1, !"min_enum_size", i32 4}
!36 = !{i32 8, !"branch-target-enforcement", i32 0}
!37 = !{i32 8, !"sign-return-address", i32 0}
!38 = !{i32 8, !"sign-return-address-all", i32 0}
!39 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!40 = !{i32 7, !"uwtable", i32 1}
!41 = !{i32 7, !"frame-pointer", i32 2}
!42 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!43 = !{!"branch_weights", i32 1, i32 2000}
!44 = !{i64 2156280722}
!45 = !{i64 5009929}
!46 = !{i8 0, i8 2}
