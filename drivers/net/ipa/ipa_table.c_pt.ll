; ModuleID = '/llk/IR_all_yes/drivers/net/ipa/ipa_table.c_pt.bc'
source_filename = "../drivers/net/ipa/ipa_table.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ipa = type { %struct.gsi, i32, ptr, %struct.completion, %struct.notifier_block, ptr, ptr, ptr, i32, ptr, ptr, i8, i8, i32, ptr, i32, ptr, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.ipa_endpoint], [23 x ptr], [10 x ptr], i8, %struct.atomic_t, ptr, %struct.ipa_qmi, [24 x i8] }
%struct.gsi = type { ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.completion, %struct.mutex, [23 x %struct.gsi_channel], [24 x %struct.gsi_evt_ring], %struct.net_device }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.gsi_channel = type { ptr, i8, i8, i8, i16, i16, %struct.gsi_ring, i32, i64, i64, i64, i64, i64, i64, %struct.gsi_trans_info, %struct.napi_struct }
%struct.gsi_ring = type { ptr, i32, i32, i32 }
%struct.gsi_trans_info = type { %struct.atomic_t, %struct.gsi_trans_pool, %struct.gsi_trans_pool, %struct.gsi_trans_pool, %struct.gsi_trans_pool, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.gsi_trans_pool = type { ptr, i32, i32, i32, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.gsi_evt_ring = type { ptr, %struct.gsi_ring }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.99, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.113, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.99 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
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
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.ipa_endpoint = type { ptr, i32, i32, i32, i8, ptr, i32, i32, ptr, [1 x i32], i32, %struct.atomic_t, %struct.atomic_t, %struct.delayed_work }
%struct.atomic_t = type { i32 }
%struct.ipa_qmi = type { %struct.qmi_handle, %struct.qmi_handle, %struct.sockaddr_qrtr, %struct.work_struct, i8, i8, i8, i8, i8 }
%struct.qmi_handle = type { ptr, %struct.mutex, %struct.sockaddr_qrtr, %struct.work_struct, ptr, ptr, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.qmi_ops, %struct.idr, %struct.mutex, ptr }
%struct.qmi_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.sockaddr_qrtr = type { i16, i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.ipa_mem = type { i32, i32, i16, i16 }
%struct.gsi_trans = type { %struct.list_head, ptr, i8, i8, i8, i8, i32, ptr, ptr, ptr, i32, %struct.refcount_struct, %struct.completion, i64, i64 }

@ipa_filter_map_valid._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 210, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"at least one filtering endpoint is required\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ipa_filter_map_valid\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/net/ipa/ipa_table.c\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ipa_filter_map_valid._entry_ptr = internal global ptr @ipa_filter_map_valid._entry, section ".printk_index", align 4
@ipa_filter_map_valid._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 218, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"too many filtering endpoints (%u, max %u)\0A\00", [53 x i8] zeroinitializer }, align 32
@ipa_filter_map_valid._entry_ptr.7 = internal global ptr @ipa_filter_map_valid._entry.5, section ".printk_index", align 4
@.str.8 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"modem\00", [26 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"AP\00", [29 x i8] zeroinitializer }, align 32
@ipa_table_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 379, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"error %d resetting filter table for %s\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ipa_table_reset\00", [16 x i8] zeroinitializer }, align 32
@ipa_table_reset._entry_ptr = internal global ptr @ipa_table_reset._entry, section ".printk_index", align 4
@ipa_table_reset._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.11, ptr @.str.2, i32 384, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"error %d resetting route table for %s\0A\00", [57 x i8] zeroinitializer }, align 32
@ipa_table_reset._entry_ptr.14 = internal global ptr @ipa_table_reset._entry.12, section ".printk_index", align 4
@ipa_table_hash_flush._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 398, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"no transaction for hash flush\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ipa_table_hash_flush\00", [43 x i8] zeroinitializer }, align 32
@ipa_table_hash_flush._entry_ptr = internal global ptr @ipa_table_hash_flush._entry, section ".printk_index", align 4
@ipa_table_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 490, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"no transaction for table setup\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ipa_table_setup\00", [16 x i8] zeroinitializer }, align 32
@ipa_table_setup._entry_ptr = internal global ptr @ipa_table_setup._entry, section ".printk_index", align 4
@ipa_table_valid_one._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.2, i32 174, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s table region %u size 0x%02x, expected 0x%02x\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ipa_table_valid_one\00", [44 x i8] zeroinitializer }, align 32
@ipa_table_valid_one._entry_ptr = internal global ptr @ipa_table_valid_one._entry, section ".printk_index", align 4
@.str.21 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"route\00", [26 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"filter\00", [25 x i8] zeroinitializer }, align 32
@ipa_filter_reset_table._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.2, i32 281, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"no transaction for %s filter reset\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ipa_filter_reset_table\00", [41 x i8] zeroinitializer }, align 32
@ipa_filter_reset_table._entry_ptr = internal global ptr @ipa_filter_reset_table._entry, section ".printk_index", align 4
@ipa_route_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.2, i32 342, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"no transaction for %s route reset\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ipa_route_reset\00", [16 x i8] zeroinitializer }, align 32
@ipa_route_reset._entry_ptr = internal global ptr @ipa_route_reset._entry, section ".printk_index", align 4
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 210, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 217, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 373, i32 20 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 373, i32 30 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 378, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 383, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 398, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 490, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 173, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 279, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.120 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.121 = private constant [31 x i8] c"../drivers/net/ipa/ipa_table.c\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 340, i32 3 }
@llvm.compiler.used = appending global [41 x ptr] [ptr @ipa_filter_map_valid._entry, ptr @ipa_filter_map_valid._entry.5, ptr @ipa_filter_map_valid._entry_ptr, ptr @ipa_filter_map_valid._entry_ptr.7, ptr @ipa_filter_reset_table._entry, ptr @ipa_filter_reset_table._entry_ptr, ptr @ipa_route_reset._entry, ptr @ipa_route_reset._entry_ptr, ptr @ipa_table_hash_flush._entry, ptr @ipa_table_hash_flush._entry_ptr, ptr @ipa_table_reset._entry, ptr @ipa_table_reset._entry.12, ptr @ipa_table_reset._entry_ptr, ptr @ipa_table_reset._entry_ptr.14, ptr @ipa_table_setup._entry, ptr @ipa_table_setup._entry_ptr, ptr @ipa_table_valid_one._entry, ptr @ipa_table_valid_one._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26], section "llvm.metadata"
@0 = internal global [32 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipa_filter_map_valid._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipa_filter_map_valid._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipa_table_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipa_table_reset._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipa_table_hash_flush._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipa_table_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipa_table_valid_one._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipa_filter_reset_table._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipa_route_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @ipa_table_valid(ptr noundef %ipa) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @ipa_mem_find(ptr noundef %ipa, i32 noundef 3) #5
  %pdev.i = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 2
  %0 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev.i, align 4
  %dev1.i = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %call3.i = tail call zeroext i1 @ipa_cmd_table_valid(ptr noundef %ipa, ptr noundef %call.i, i1 noundef zeroext false) #5
  br i1 %call3.i, label %if.end5.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5.i:                                        ; preds = %entry
  %size6.i = getelementptr inbounds %struct.ipa_mem, ptr %call.i, i32 0, i32 2
  %2 = ptrtoint ptr %size6.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %size6.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 120, i16 %3)
  %cmp.i = icmp eq i16 %3, 120
  br i1 %cmp.i, label %if.end5.i.land.rhs_crit_edge, label %if.end9.i

if.end5.i.land.rhs_crit_edge:                     ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs

if.end9.i:                                        ; preds = %if.end5.i
  %version.i.i = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 1
  %4 = ptrtoint ptr %version.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %version.i.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %5)
  %cmp.i.i = icmp ne i32 %5, 6
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool13.not.i = icmp eq i16 %3, 0
  %or.cond.i = select i1 %cmp.i.i, i1 %tobool13.not.i, i1 false
  br i1 %or.cond.i, label %if.end9.i.land.rhs_crit_edge, label %do.end.i

if.end9.i.land.rhs_crit_edge:                     ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs

do.end.i:                                         ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv19.i = zext i16 %3 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.22, i32 noundef 3, i32 noundef %conv19.i, i32 noundef 120) #8
  br label %cleanup

land.rhs:                                         ; preds = %if.end9.i.land.rhs_crit_edge, %if.end5.i.land.rhs_crit_edge
  %call.i56 = tail call ptr @ipa_mem_find(ptr noundef %ipa, i32 noundef 5) #5
  %6 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev.i, align 4
  %dev1.i58 = getelementptr inbounds %struct.platform_device, ptr %7, i32 0, i32 3
  %call3.i59 = tail call zeroext i1 @ipa_cmd_table_valid(ptr noundef %ipa, ptr noundef %call.i56, i1 noundef zeroext false) #5
  br i1 %call3.i59, label %if.end5.i62, label %land.rhs.cleanup_crit_edge

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5.i62:                                      ; preds = %land.rhs
  %size6.i60 = getelementptr inbounds %struct.ipa_mem, ptr %call.i56, i32 0, i32 2
  %8 = ptrtoint ptr %size6.i60 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %size6.i60, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 120, i16 %9)
  %cmp.i61 = icmp eq i16 %9, 120
  br i1 %cmp.i61, label %if.end5.i62.land.rhs4_crit_edge, label %if.end9.i67

if.end5.i62.land.rhs4_crit_edge:                  ; preds = %if.end5.i62
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs4

if.end9.i67:                                      ; preds = %if.end5.i62
  %version.i.i63 = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 1
  %10 = ptrtoint ptr %version.i.i63 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %version.i.i63, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %11)
  %cmp.i.i64 = icmp ne i32 %11, 6
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool13.not.i65 = icmp eq i16 %9, 0
  %or.cond.i66 = select i1 %cmp.i.i64, i1 %tobool13.not.i65, i1 false
  br i1 %or.cond.i66, label %if.end9.i67.land.rhs4_crit_edge, label %do.end.i69

if.end9.i67.land.rhs4_crit_edge:                  ; preds = %if.end9.i67
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs4

do.end.i69:                                       ; preds = %if.end9.i67
  call void @__sanitizer_cov_trace_pc() #7
  %conv19.i68 = zext i16 %9 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i58, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.22, i32 noundef 5, i32 noundef %conv19.i68, i32 noundef 120) #8
  br label %cleanup

land.rhs4:                                        ; preds = %if.end9.i67.land.rhs4_crit_edge, %if.end5.i62.land.rhs4_crit_edge
  %call.i72 = tail call ptr @ipa_mem_find(ptr noundef %ipa, i32 noundef 7) #5
  %12 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdev.i, align 4
  %dev1.i74 = getelementptr inbounds %struct.platform_device, ptr %13, i32 0, i32 3
  %call3.i75 = tail call zeroext i1 @ipa_cmd_table_valid(ptr noundef %ipa, ptr noundef %call.i72, i1 noundef zeroext true) #5
  br i1 %call3.i75, label %if.end5.i78, label %land.rhs4.cleanup_crit_edge

land.rhs4.cleanup_crit_edge:                      ; preds = %land.rhs4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5.i78:                                      ; preds = %land.rhs4
  %size6.i76 = getelementptr inbounds %struct.ipa_mem, ptr %call.i72, i32 0, i32 2
  %14 = ptrtoint ptr %size6.i76 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %size6.i76, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 120, i16 %15)
  %cmp.i77 = icmp eq i16 %15, 120
  br i1 %cmp.i77, label %if.end5.i78.land.rhs9_crit_edge, label %if.end9.i83

if.end5.i78.land.rhs9_crit_edge:                  ; preds = %if.end5.i78
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs9

if.end9.i83:                                      ; preds = %if.end5.i78
  %version.i.i79 = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 1
  %16 = ptrtoint ptr %version.i.i79 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %version.i.i79, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %17)
  %cmp.i.i80 = icmp ne i32 %17, 6
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool13.not.i81 = icmp eq i16 %15, 0
  %or.cond.i82 = select i1 %cmp.i.i80, i1 %tobool13.not.i81, i1 false
  br i1 %or.cond.i82, label %if.end9.i83.land.rhs9_crit_edge, label %do.end.i85

if.end9.i83.land.rhs9_crit_edge:                  ; preds = %if.end9.i83
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs9

do.end.i85:                                       ; preds = %if.end9.i83
  call void @__sanitizer_cov_trace_pc() #7
  %conv19.i84 = zext i16 %15 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i74, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.21, i32 noundef 7, i32 noundef %conv19.i84, i32 noundef 120) #8
  br label %cleanup

land.rhs9:                                        ; preds = %if.end9.i83.land.rhs9_crit_edge, %if.end5.i78.land.rhs9_crit_edge
  %call.i88 = tail call ptr @ipa_mem_find(ptr noundef %ipa, i32 noundef 9) #5
  %18 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pdev.i, align 4
  %dev1.i90 = getelementptr inbounds %struct.platform_device, ptr %19, i32 0, i32 3
  %call3.i91 = tail call zeroext i1 @ipa_cmd_table_valid(ptr noundef %ipa, ptr noundef %call.i88, i1 noundef zeroext true) #5
  br i1 %call3.i91, label %if.end5.i94, label %land.rhs9.cleanup_crit_edge

land.rhs9.cleanup_crit_edge:                      ; preds = %land.rhs9
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5.i94:                                      ; preds = %land.rhs9
  %size6.i92 = getelementptr inbounds %struct.ipa_mem, ptr %call.i88, i32 0, i32 2
  %20 = ptrtoint ptr %size6.i92 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %size6.i92, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 120, i16 %21)
  %cmp.i93 = icmp eq i16 %21, 120
  br i1 %cmp.i93, label %if.end5.i94.land.end11_crit_edge, label %if.end9.i99

if.end5.i94.land.end11_crit_edge:                 ; preds = %if.end5.i94
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.end11

if.end9.i99:                                      ; preds = %if.end5.i94
  %version.i.i95 = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 1
  %22 = ptrtoint ptr %version.i.i95 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %version.i.i95, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %23)
  %cmp.i.i96 = icmp ne i32 %23, 6
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %tobool13.not.i97 = icmp eq i16 %21, 0
  %or.cond.i98 = select i1 %cmp.i.i96, i1 %tobool13.not.i97, i1 false
  br i1 %or.cond.i98, label %if.end9.i99.land.end11_crit_edge, label %do.end.i101

if.end9.i99.land.end11_crit_edge:                 ; preds = %if.end9.i99
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.end11

do.end.i101:                                      ; preds = %if.end9.i99
  call void @__sanitizer_cov_trace_pc() #7
  %conv19.i100 = zext i16 %21 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i90, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.21, i32 noundef 9, i32 noundef %conv19.i100, i32 noundef 120) #8
  br label %cleanup

land.end11:                                       ; preds = %if.end9.i99.land.end11_crit_edge, %if.end5.i94.land.end11_crit_edge
  %version.i = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 1
  %24 = ptrtoint ptr %version.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %version.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %25)
  %cmp.i104.not = icmp eq i32 %25, 6
  br i1 %cmp.i104.not, label %land.end11.cleanup_crit_edge, label %land.rhs16

land.end11.cleanup_crit_edge:                     ; preds = %land.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.rhs16:                                       ; preds = %land.end11
  %call.i105 = tail call ptr @ipa_mem_find(ptr noundef %ipa, i32 noundef 2) #5
  %26 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pdev.i, align 4
  %dev1.i107 = getelementptr inbounds %struct.platform_device, ptr %27, i32 0, i32 3
  %call3.i108 = tail call zeroext i1 @ipa_cmd_table_valid(ptr noundef %ipa, ptr noundef %call.i105, i1 noundef zeroext false) #5
  br i1 %call3.i108, label %if.end5.i111, label %land.rhs16.cleanup_crit_edge

land.rhs16.cleanup_crit_edge:                     ; preds = %land.rhs16
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5.i111:                                     ; preds = %land.rhs16
  %size6.i109 = getelementptr inbounds %struct.ipa_mem, ptr %call.i105, i32 0, i32 2
  %28 = ptrtoint ptr %size6.i109 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %size6.i109, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 120, i16 %29)
  %cmp.i110 = icmp eq i16 %29, 120
  br i1 %cmp.i110, label %if.end5.i111.land.rhs21_crit_edge, label %if.end9.i116

if.end5.i111.land.rhs21_crit_edge:                ; preds = %if.end5.i111
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs21

if.end9.i116:                                     ; preds = %if.end5.i111
  %30 = ptrtoint ptr %version.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %version.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %31)
  %cmp.i.i113 = icmp ne i32 %31, 6
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %tobool13.not.i114 = icmp eq i16 %29, 0
  %or.cond.i115 = select i1 %cmp.i.i113, i1 %tobool13.not.i114, i1 false
  br i1 %or.cond.i115, label %if.end9.i116.land.rhs21_crit_edge, label %do.end.i118

if.end9.i116.land.rhs21_crit_edge:                ; preds = %if.end9.i116
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs21

do.end.i118:                                      ; preds = %if.end9.i116
  call void @__sanitizer_cov_trace_pc() #7
  %conv19.i117 = zext i16 %29 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i107, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.22, i32 noundef 2, i32 noundef %conv19.i117, i32 noundef 120) #8
  br label %cleanup

land.rhs21:                                       ; preds = %if.end9.i116.land.rhs21_crit_edge, %if.end5.i111.land.rhs21_crit_edge
  %call.i121 = tail call ptr @ipa_mem_find(ptr noundef %ipa, i32 noundef 4) #5
  %32 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pdev.i, align 4
  %dev1.i123 = getelementptr inbounds %struct.platform_device, ptr %33, i32 0, i32 3
  %call3.i124 = tail call zeroext i1 @ipa_cmd_table_valid(ptr noundef %ipa, ptr noundef %call.i121, i1 noundef zeroext false) #5
  br i1 %call3.i124, label %if.end5.i127, label %land.rhs21.cleanup_crit_edge

land.rhs21.cleanup_crit_edge:                     ; preds = %land.rhs21
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5.i127:                                     ; preds = %land.rhs21
  %size6.i125 = getelementptr inbounds %struct.ipa_mem, ptr %call.i121, i32 0, i32 2
  %34 = ptrtoint ptr %size6.i125 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %size6.i125, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 120, i16 %35)
  %cmp.i126 = icmp eq i16 %35, 120
  br i1 %cmp.i126, label %if.end5.i127.land.rhs26_crit_edge, label %if.end9.i132

if.end5.i127.land.rhs26_crit_edge:                ; preds = %if.end5.i127
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs26

if.end9.i132:                                     ; preds = %if.end5.i127
  %36 = ptrtoint ptr %version.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %version.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %37)
  %cmp.i.i129 = icmp ne i32 %37, 6
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %35)
  %tobool13.not.i130 = icmp eq i16 %35, 0
  %or.cond.i131 = select i1 %cmp.i.i129, i1 %tobool13.not.i130, i1 false
  br i1 %or.cond.i131, label %if.end9.i132.land.rhs26_crit_edge, label %do.end.i134

if.end9.i132.land.rhs26_crit_edge:                ; preds = %if.end9.i132
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs26

do.end.i134:                                      ; preds = %if.end9.i132
  call void @__sanitizer_cov_trace_pc() #7
  %conv19.i133 = zext i16 %35 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i123, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.22, i32 noundef 4, i32 noundef %conv19.i133, i32 noundef 120) #8
  br label %cleanup

land.rhs26:                                       ; preds = %if.end9.i132.land.rhs26_crit_edge, %if.end5.i127.land.rhs26_crit_edge
  %call.i137 = tail call ptr @ipa_mem_find(ptr noundef %ipa, i32 noundef 6) #5
  %38 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pdev.i, align 4
  %dev1.i139 = getelementptr inbounds %struct.platform_device, ptr %39, i32 0, i32 3
  %call3.i140 = tail call zeroext i1 @ipa_cmd_table_valid(ptr noundef %ipa, ptr noundef %call.i137, i1 noundef zeroext true) #5
  br i1 %call3.i140, label %if.end5.i143, label %land.rhs26.cleanup_crit_edge

land.rhs26.cleanup_crit_edge:                     ; preds = %land.rhs26
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5.i143:                                     ; preds = %land.rhs26
  %size6.i141 = getelementptr inbounds %struct.ipa_mem, ptr %call.i137, i32 0, i32 2
  %40 = ptrtoint ptr %size6.i141 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %size6.i141, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 120, i16 %41)
  %cmp.i142 = icmp eq i16 %41, 120
  br i1 %cmp.i142, label %if.end5.i143.land.rhs31_crit_edge, label %if.end9.i148

if.end5.i143.land.rhs31_crit_edge:                ; preds = %if.end5.i143
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs31

if.end9.i148:                                     ; preds = %if.end5.i143
  %42 = ptrtoint ptr %version.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %version.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %43)
  %cmp.i.i145 = icmp ne i32 %43, 6
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %41)
  %tobool13.not.i146 = icmp eq i16 %41, 0
  %or.cond.i147 = select i1 %cmp.i.i145, i1 %tobool13.not.i146, i1 false
  br i1 %or.cond.i147, label %if.end9.i148.land.rhs31_crit_edge, label %do.end.i150

if.end9.i148.land.rhs31_crit_edge:                ; preds = %if.end9.i148
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs31

do.end.i150:                                      ; preds = %if.end9.i148
  call void @__sanitizer_cov_trace_pc() #7
  %conv19.i149 = zext i16 %41 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i139, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.21, i32 noundef 6, i32 noundef %conv19.i149, i32 noundef 120) #8
  br label %cleanup

land.rhs31:                                       ; preds = %if.end9.i148.land.rhs31_crit_edge, %if.end5.i143.land.rhs31_crit_edge
  %call.i153 = tail call ptr @ipa_mem_find(ptr noundef %ipa, i32 noundef 8) #5
  %44 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pdev.i, align 4
  %dev1.i155 = getelementptr inbounds %struct.platform_device, ptr %45, i32 0, i32 3
  %call3.i156 = tail call zeroext i1 @ipa_cmd_table_valid(ptr noundef %ipa, ptr noundef %call.i153, i1 noundef zeroext true) #5
  br i1 %call3.i156, label %if.end5.i159, label %land.rhs31.cleanup_crit_edge

land.rhs31.cleanup_crit_edge:                     ; preds = %land.rhs31
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5.i159:                                     ; preds = %land.rhs31
  %size6.i157 = getelementptr inbounds %struct.ipa_mem, ptr %call.i153, i32 0, i32 2
  %46 = ptrtoint ptr %size6.i157 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %size6.i157, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 120, i16 %47)
  %cmp.i158 = icmp eq i16 %47, 120
  br i1 %cmp.i158, label %if.end5.i159.cleanup_crit_edge, label %if.end9.i164

if.end5.i159.cleanup_crit_edge:                   ; preds = %if.end5.i159
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end9.i164:                                     ; preds = %if.end5.i159
  %48 = ptrtoint ptr %version.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %version.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %49)
  %cmp.i.i161 = icmp ne i32 %49, 6
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %47)
  %tobool13.not.i162 = icmp eq i16 %47, 0
  %or.cond.i163 = select i1 %cmp.i.i161, i1 %tobool13.not.i162, i1 false
  br i1 %or.cond.i163, label %if.end9.i164.cleanup_crit_edge, label %do.end.i166

if.end9.i164.cleanup_crit_edge:                   ; preds = %if.end9.i164
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end.i166:                                      ; preds = %if.end9.i164
  call void @__sanitizer_cov_trace_pc() #7
  %conv19.i165 = zext i16 %47 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i155, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.21, i32 noundef 8, i32 noundef %conv19.i165, i32 noundef 120) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end.i166, %if.end9.i164.cleanup_crit_edge, %if.end5.i159.cleanup_crit_edge, %land.rhs31.cleanup_crit_edge, %do.end.i150, %land.rhs26.cleanup_crit_edge, %do.end.i134, %land.rhs21.cleanup_crit_edge, %do.end.i118, %land.rhs16.cleanup_crit_edge, %land.end11.cleanup_crit_edge, %do.end.i101, %land.rhs9.cleanup_crit_edge, %do.end.i85, %land.rhs4.cleanup_crit_edge, %do.end.i69, %land.rhs.cleanup_crit_edge, %do.end.i, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %cmp.i104.not, %land.end11.cleanup_crit_edge ], [ false, %land.rhs16.cleanup_crit_edge ], [ false, %do.end.i118 ], [ false, %land.rhs21.cleanup_crit_edge ], [ false, %do.end.i134 ], [ false, %land.rhs26.cleanup_crit_edge ], [ false, %do.end.i150 ], [ false, %do.end.i166 ], [ false, %land.rhs31.cleanup_crit_edge ], [ true, %if.end5.i159.cleanup_crit_edge ], [ true, %if.end9.i164.cleanup_crit_edge ], [ false, %entry.cleanup_crit_edge ], [ false, %do.end.i ], [ false, %land.rhs.cleanup_crit_edge ], [ false, %do.end.i69 ], [ false, %land.rhs4.cleanup_crit_edge ], [ false, %do.end.i85 ], [ false, %do.end.i101 ], [ false, %land.rhs9.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @ipa_filter_map_valid(ptr nocapture noundef readonly %ipa, i32 noundef %filter_map) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 2
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %filter_map)
  %tobool.not = icmp eq i32 %filter_map, 0
  br i1 %tobool.not, label %do.end, label %cond.false

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str) #8
  br label %cleanup

cond.false:                                       ; preds = %entry
  %call.i = tail call i32 @__sw_hweight32(i32 noundef %filter_map) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %call.i)
  %cmp = icmp ugt i32 %call.i, 14
  br i1 %cmp, label %do.end286, label %cond.false.cleanup_crit_edge

cond.false.cleanup_crit_edge:                     ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end286:                                        ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.6, i32 noundef %call.i, i32 noundef 14) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end286, %cond.false.cleanup_crit_edge, %do.end
  %retval.0 = phi i1 [ false, %do.end286 ], [ false, %do.end ], [ true, %cond.false.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ipa_table_reset(ptr noundef %ipa, i1 noundef zeroext %modem) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 2
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %cond = select i1 %modem, ptr @.str.8, ptr @.str.9
  %call.i = tail call fastcc i32 @ipa_filter_reset_table(ptr noundef %ipa, i32 noundef 3, i1 noundef zeroext %modem) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %if.end.i, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.end.i:                                         ; preds = %entry
  %call3.i = tail call fastcc i32 @ipa_filter_reset_table(ptr noundef %ipa, i32 noundef 2, i1 noundef zeroext %modem) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %if.end.i.do.end_crit_edge

if.end.i.do.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.end6.i:                                        ; preds = %if.end.i
  %call8.i = tail call fastcc i32 @ipa_filter_reset_table(ptr noundef %ipa, i32 noundef 5, i1 noundef zeroext %modem) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %ipa_filter_reset.exit, label %if.end6.i.do.end_crit_edge

if.end6.i.do.end_crit_edge:                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

ipa_filter_reset.exit:                            ; preds = %if.end6.i
  %call13.i = tail call fastcc i32 @ipa_filter_reset_table(ptr noundef %ipa, i32 noundef 4, i1 noundef zeroext %modem) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool3.not = icmp eq i32 %call13.i, 0
  br i1 %tobool3.not, label %ipa_filter_reset.exit.if.end_crit_edge, label %ipa_filter_reset.exit.do.end_crit_edge

ipa_filter_reset.exit.do.end_crit_edge:           ; preds = %ipa_filter_reset.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

ipa_filter_reset.exit.if.end_crit_edge:           ; preds = %ipa_filter_reset.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %ipa_filter_reset.exit.do.end_crit_edge, %if.end6.i.do.end_crit_edge, %if.end.i.do.end_crit_edge, %entry.do.end_crit_edge
  %retval.0.i26 = phi i32 [ %call13.i, %ipa_filter_reset.exit.do.end_crit_edge ], [ %call8.i, %if.end6.i.do.end_crit_edge ], [ %call3.i, %if.end.i.do.end_crit_edge ], [ %call.i, %entry.do.end_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.10, i32 noundef %retval.0.i26, ptr noundef nonnull %cond) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %ipa_filter_reset.exit.if.end_crit_edge
  %call.i21 = tail call ptr @ipa_cmd_trans_alloc(ptr noundef %ipa, i32 noundef 4) #5
  %tobool.not.i = icmp eq ptr %call.i21, null
  br i1 %tobool.not.i, label %do.end10, label %if.end.i22

if.end.i22:                                       ; preds = %if.end
  %..i = select i1 %modem, i16 0, i16 8
  %.20.i = select i1 %modem, i16 8, i16 7
  %gsi.i.i = getelementptr inbounds %struct.gsi_trans, ptr %call.i21, i32 0, i32 1
  %2 = ptrtoint ptr %gsi.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gsi.i.i, align 8
  %call.i.i = tail call ptr @ipa_mem_find(ptr noundef %3, i32 noundef 7) #5
  %size1.i.i = getelementptr inbounds %struct.ipa_mem, ptr %call.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %size1.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %size1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.not.i.i = icmp eq i16 %5, 0
  br i1 %tobool.not.i.i, label %if.end.i22.ipa_table_reset_add.exit.i_crit_edge, label %if.end.i.i

if.end.i22.ipa_table_reset_add.exit.i_crit_edge:  ; preds = %if.end.i22
  call void @__sanitizer_cov_trace_pc() #7
  br label %ipa_table_reset_add.exit.i

if.end.i.i:                                       ; preds = %if.end.i22
  call void @__sanitizer_cov_trace_pc() #7
  %offset5.i.i = getelementptr inbounds %struct.ipa_mem, ptr %call.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %offset5.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %offset5.i.i, align 4
  %8 = shl nuw nsw i16 %..i, 3
  %mul.i.i = zext i16 %8 to i32
  %add.i.i = add i32 %7, %mul.i.i
  %mul7.i.i = shl nuw nsw i16 %.20.i, 3
  %table_addr.i.i.i = getelementptr inbounds %struct.ipa, ptr %3, i32 0, i32 8
  %9 = ptrtoint ptr %table_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %table_addr.i.i.i, align 8
  %add.i.i.i = add i32 %10, 16
  tail call void @ipa_cmd_dma_shared_mem_add(ptr noundef nonnull %call.i21, i32 noundef %add.i.i, i16 noundef zeroext %mul7.i.i, i32 noundef %add.i.i.i, i1 noundef zeroext true) #5
  br label %ipa_table_reset_add.exit.i

ipa_table_reset_add.exit.i:                       ; preds = %if.end.i.i, %if.end.i22.ipa_table_reset_add.exit.i_crit_edge
  %11 = ptrtoint ptr %gsi.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %gsi.i.i, align 8
  %call.i22.i = tail call ptr @ipa_mem_find(ptr noundef %12, i32 noundef 6) #5
  %size1.i23.i = getelementptr inbounds %struct.ipa_mem, ptr %call.i22.i, i32 0, i32 2
  %13 = ptrtoint ptr %size1.i23.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %size1.i23.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool.not.i24.i = icmp eq i16 %14, 0
  br i1 %tobool.not.i24.i, label %ipa_table_reset_add.exit.i.ipa_table_reset_add.exit33.i_crit_edge, label %if.end.i30.i

ipa_table_reset_add.exit.i.ipa_table_reset_add.exit33.i_crit_edge: ; preds = %ipa_table_reset_add.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ipa_table_reset_add.exit33.i

if.end.i30.i:                                     ; preds = %ipa_table_reset_add.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %offset5.i25.i = getelementptr inbounds %struct.ipa_mem, ptr %call.i22.i, i32 0, i32 1
  %15 = ptrtoint ptr %offset5.i25.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %offset5.i25.i, align 4
  %17 = shl nuw nsw i16 %..i, 3
  %mul.i27.i = zext i16 %17 to i32
  %add.i28.i = add i32 %16, %mul.i27.i
  %mul7.i29.i = shl nuw nsw i16 %.20.i, 3
  %table_addr.i.i31.i = getelementptr inbounds %struct.ipa, ptr %12, i32 0, i32 8
  %18 = ptrtoint ptr %table_addr.i.i31.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %table_addr.i.i31.i, align 8
  %add.i.i32.i = add i32 %19, 16
  tail call void @ipa_cmd_dma_shared_mem_add(ptr noundef nonnull %call.i21, i32 noundef %add.i28.i, i16 noundef zeroext %mul7.i29.i, i32 noundef %add.i.i32.i, i1 noundef zeroext true) #5
  br label %ipa_table_reset_add.exit33.i

ipa_table_reset_add.exit33.i:                     ; preds = %if.end.i30.i, %ipa_table_reset_add.exit.i.ipa_table_reset_add.exit33.i_crit_edge
  %20 = ptrtoint ptr %gsi.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %gsi.i.i, align 8
  %call.i35.i = tail call ptr @ipa_mem_find(ptr noundef %21, i32 noundef 9) #5
  %size1.i36.i = getelementptr inbounds %struct.ipa_mem, ptr %call.i35.i, i32 0, i32 2
  %22 = ptrtoint ptr %size1.i36.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %size1.i36.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %tobool.not.i37.i = icmp eq i16 %23, 0
  br i1 %tobool.not.i37.i, label %ipa_table_reset_add.exit33.i.ipa_table_reset_add.exit46.i_crit_edge, label %if.end.i43.i

ipa_table_reset_add.exit33.i.ipa_table_reset_add.exit46.i_crit_edge: ; preds = %ipa_table_reset_add.exit33.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ipa_table_reset_add.exit46.i

if.end.i43.i:                                     ; preds = %ipa_table_reset_add.exit33.i
  call void @__sanitizer_cov_trace_pc() #7
  %offset5.i38.i = getelementptr inbounds %struct.ipa_mem, ptr %call.i35.i, i32 0, i32 1
  %24 = ptrtoint ptr %offset5.i38.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %offset5.i38.i, align 4
  %26 = shl nuw nsw i16 %..i, 3
  %mul.i40.i = zext i16 %26 to i32
  %add.i41.i = add i32 %25, %mul.i40.i
  %mul7.i42.i = shl nuw nsw i16 %.20.i, 3
  %table_addr.i.i44.i = getelementptr inbounds %struct.ipa, ptr %21, i32 0, i32 8
  %27 = ptrtoint ptr %table_addr.i.i44.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %table_addr.i.i44.i, align 8
  %add.i.i45.i = add i32 %28, 16
  tail call void @ipa_cmd_dma_shared_mem_add(ptr noundef nonnull %call.i21, i32 noundef %add.i41.i, i16 noundef zeroext %mul7.i42.i, i32 noundef %add.i.i45.i, i1 noundef zeroext true) #5
  br label %ipa_table_reset_add.exit46.i

ipa_table_reset_add.exit46.i:                     ; preds = %if.end.i43.i, %ipa_table_reset_add.exit33.i.ipa_table_reset_add.exit46.i_crit_edge
  %29 = ptrtoint ptr %gsi.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %gsi.i.i, align 8
  %call.i48.i = tail call ptr @ipa_mem_find(ptr noundef %30, i32 noundef 8) #5
  %size1.i49.i = getelementptr inbounds %struct.ipa_mem, ptr %call.i48.i, i32 0, i32 2
  %31 = ptrtoint ptr %size1.i49.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %size1.i49.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %32)
  %tobool.not.i50.i = icmp eq i16 %32, 0
  br i1 %tobool.not.i50.i, label %ipa_table_reset_add.exit46.i.ipa_route_reset.exit.thread_crit_edge, label %if.end.i56.i

ipa_table_reset_add.exit46.i.ipa_route_reset.exit.thread_crit_edge: ; preds = %ipa_table_reset_add.exit46.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ipa_route_reset.exit.thread

if.end.i56.i:                                     ; preds = %ipa_table_reset_add.exit46.i
  call void @__sanitizer_cov_trace_pc() #7
  %offset5.i51.i = getelementptr inbounds %struct.ipa_mem, ptr %call.i48.i, i32 0, i32 1
  %33 = ptrtoint ptr %offset5.i51.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %offset5.i51.i, align 4
  %35 = shl nuw nsw i16 %..i, 3
  %mul.i53.i = zext i16 %35 to i32
  %add.i54.i = add i32 %34, %mul.i53.i
  %mul7.i55.i = shl nuw nsw i16 %.20.i, 3
  %table_addr.i.i57.i = getelementptr inbounds %struct.ipa, ptr %30, i32 0, i32 8
  %36 = ptrtoint ptr %table_addr.i.i57.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %table_addr.i.i57.i, align 8
  %add.i.i58.i = add i32 %37, 16
  tail call void @ipa_cmd_dma_shared_mem_add(ptr noundef nonnull %call.i21, i32 noundef %add.i54.i, i16 noundef zeroext %mul7.i55.i, i32 noundef %add.i.i58.i, i1 noundef zeroext true) #5
  br label %ipa_route_reset.exit.thread

ipa_route_reset.exit.thread:                      ; preds = %if.end.i56.i, %ipa_table_reset_add.exit46.i.ipa_route_reset.exit.thread_crit_edge
  tail call void @gsi_trans_commit_wait(ptr noundef nonnull %call.i21) #5
  br label %if.end11

do.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %38 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pdev, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %39, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.25, ptr noundef nonnull %cond) #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.13, i32 noundef -16, ptr noundef nonnull %cond) #8
  br label %if.end11

if.end11:                                         ; preds = %do.end10, %ipa_route_reset.exit.thread
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ipa_table_hash_flush(ptr noundef %ipa) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %version = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 1
  %0 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %version, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp.i = icmp ult i32 %1, 4
  %..i = select i1 %cmp.i, i32 144, i32 332
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %1)
  %cmp.i14.not = icmp eq i32 %1, 6
  br i1 %cmp.i14.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @ipa_cmd_trans_alloc(ptr noundef %ipa, i32 noundef 1) #5
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %do.end, label %if.end4

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %pdev = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 2
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15) #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @ipa_cmd_register_write_add(ptr noundef nonnull %call2, i32 noundef %..i, i32 noundef 4369, i32 noundef 4369, i1 noundef zeroext false) #5
  tail call void @gsi_trans_commit_wait(ptr noundef nonnull %call2) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4 ], [ -16, %do.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ipa_cmd_trans_alloc(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipa_cmd_register_write_add(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gsi_trans_commit_wait(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ipa_table_setup(ptr noundef %ipa) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @ipa_cmd_trans_alloc(ptr noundef %ipa, i32 noundef 8) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %pdev = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 2
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @ipa_table_init_add(ptr noundef nonnull %call, i1 noundef zeroext false, i32 noundef 7, i32 noundef 7, i32 noundef 6)
  tail call fastcc void @ipa_table_init_add(ptr noundef nonnull %call, i1 noundef zeroext false, i32 noundef 8, i32 noundef 9, i32 noundef 8)
  tail call fastcc void @ipa_table_init_add(ptr noundef nonnull %call, i1 noundef zeroext true, i32 noundef 3, i32 noundef 3, i32 noundef 2)
  tail call fastcc void @ipa_table_init_add(ptr noundef nonnull %call, i1 noundef zeroext true, i32 noundef 4, i32 noundef 5, i32 noundef 4)
  tail call void @gsi_trans_commit_wait(ptr noundef nonnull %call) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ 0, %if.end ], [ -16, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ipa_table_init_add(ptr noundef %trans, i1 noundef zeroext %filter, i32 noundef %opcode, i32 noundef %mem_id, i32 noundef %hash_mem_id) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %gsi = getelementptr inbounds %struct.gsi_trans, ptr %trans, i32 0, i32 1
  %0 = ptrtoint ptr %gsi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gsi, align 8
  %call = tail call ptr @ipa_mem_find(ptr noundef %1, i32 noundef %hash_mem_id) #5
  %call1 = tail call ptr @ipa_mem_find(ptr noundef %1, i32 noundef %mem_id) #5
  br i1 %filter, label %cond.false, label %if.else

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %filter_map = getelementptr inbounds %struct.ipa, ptr %1, i32 0, i32 29
  %2 = ptrtoint ptr %filter_map to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %filter_map, align 8
  %call.i = tail call i32 @__sw_hweight32(i32 noundef %3) #5
  %4 = trunc i32 %call.i to i16
  %conv317 = add i16 %4, 1
  %size318 = getelementptr inbounds %struct.ipa_mem, ptr %call, i32 0, i32 2
  %5 = ptrtoint ptr %size318 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %size318, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool320.not = icmp eq i16 %6, 0
  %spec.select = select i1 %tobool320.not, i16 0, i16 %conv317
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %size327 = getelementptr inbounds %struct.ipa_mem, ptr %call1, i32 0, i32 2
  %7 = ptrtoint ptr %size327 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %size327, align 4
  %9 = lshr i16 %8, 3
  %size330 = getelementptr inbounds %struct.ipa_mem, ptr %call, i32 0, i32 2
  %10 = ptrtoint ptr %size330 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %size330, align 4
  %12 = lshr i16 %11, 3
  br label %if.end

if.end:                                           ; preds = %if.else, %cond.false
  %hash_count.0 = phi i16 [ %spec.select, %cond.false ], [ %12, %if.else ]
  %count.0 = phi i16 [ %conv317, %cond.false ], [ %9, %if.else ]
  %mul = shl i16 %count.0, 3
  %mul337 = shl i16 %hash_count.0, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %count.0)
  %tobool.not.i = icmp eq i16 %count.0, 0
  br i1 %tobool.not.i, label %if.end.ipa_table_addr.exit_crit_edge, label %if.end.i

if.end.ipa_table_addr.exit_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %ipa_table_addr.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp2(i16 15, i16 %count.0)
  %cmp.i = icmp ugt i16 %count.0, 15
  br i1 %cmp.i, label %do.end.i, label %if.end.i.if.end16.i_crit_edge, !prof !61

if.end.i.if.end16.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 234, i32 noundef 9, ptr noundef null) #5
  br label %if.end16.i

if.end16.i:                                       ; preds = %do.end.i, %if.end.i.if.end16.i_crit_edge
  %table_addr.i = getelementptr inbounds %struct.ipa, ptr %1, i32 0, i32 8
  %13 = ptrtoint ptr %table_addr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %table_addr.i, align 8
  %mul.i = select i1 %filter, i32 8, i32 16
  %add.i = add i32 %14, %mul.i
  br label %ipa_table_addr.exit

ipa_table_addr.exit:                              ; preds = %if.end16.i, %if.end.ipa_table_addr.exit_crit_edge
  %retval.0.i = phi i32 [ %add.i, %if.end16.i ], [ 0, %if.end.ipa_table_addr.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %hash_count.0)
  %tobool.not.i441 = icmp eq i16 %hash_count.0, 0
  br i1 %tobool.not.i441, label %ipa_table_addr.exit.ipa_table_addr.exit450_crit_edge, label %if.end.i443

ipa_table_addr.exit.ipa_table_addr.exit450_crit_edge: ; preds = %ipa_table_addr.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %ipa_table_addr.exit450

if.end.i443:                                      ; preds = %ipa_table_addr.exit
  call void @__sanitizer_cov_trace_const_cmp2(i16 15, i16 %hash_count.0)
  %cmp.i442 = icmp ugt i16 %hash_count.0, 15
  br i1 %cmp.i442, label %do.end.i444, label %if.end.i443.if.end16.i448_crit_edge, !prof !61

if.end.i443.if.end16.i448_crit_edge:              ; preds = %if.end.i443
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16.i448

do.end.i444:                                      ; preds = %if.end.i443
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 234, i32 noundef 9, ptr noundef null) #5
  br label %if.end16.i448

if.end16.i448:                                    ; preds = %do.end.i444, %if.end.i443.if.end16.i448_crit_edge
  %table_addr.i445 = getelementptr inbounds %struct.ipa, ptr %1, i32 0, i32 8
  %15 = ptrtoint ptr %table_addr.i445 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %table_addr.i445, align 8
  %mul.i446 = select i1 %filter, i32 8, i32 16
  %add.i447 = add i32 %16, %mul.i446
  br label %ipa_table_addr.exit450

ipa_table_addr.exit450:                           ; preds = %if.end16.i448, %ipa_table_addr.exit.ipa_table_addr.exit450_crit_edge
  %retval.0.i449 = phi i32 [ %add.i447, %if.end16.i448 ], [ 0, %ipa_table_addr.exit.ipa_table_addr.exit450_crit_edge ]
  %offset = getelementptr inbounds %struct.ipa_mem, ptr %call1, i32 0, i32 1
  %17 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %offset, align 4
  %offset343 = getelementptr inbounds %struct.ipa_mem, ptr %call, i32 0, i32 1
  %19 = ptrtoint ptr %offset343 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %offset343, align 4
  tail call void @ipa_cmd_table_init_add(ptr noundef %trans, i32 noundef %opcode, i16 noundef zeroext %mul, i32 noundef %18, i32 noundef %retval.0.i, i16 noundef zeroext %mul337, i32 noundef %20, i32 noundef %retval.0.i449) #5
  br i1 %filter, label %if.end346, label %ipa_table_addr.exit450.cleanup_crit_edge

ipa_table_addr.exit450.cleanup_crit_edge:         ; preds = %ipa_table_addr.exit450
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end346:                                        ; preds = %ipa_table_addr.exit450
  %21 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %offset, align 4
  %conv348 = zext i16 %mul to i32
  %add349 = add i32 %22, %conv348
  %size350 = getelementptr inbounds %struct.ipa_mem, ptr %call1, i32 0, i32 2
  %23 = ptrtoint ptr %size350 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %size350, align 4
  %sub = sub i16 %24, %mul
  %zero_addr = getelementptr inbounds %struct.ipa, ptr %1, i32 0, i32 25
  %25 = ptrtoint ptr %zero_addr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %zero_addr, align 8
  tail call void @ipa_cmd_dma_shared_mem_add(ptr noundef %trans, i32 noundef %add349, i16 noundef zeroext %sub, i32 noundef %26, i1 noundef zeroext true) #5
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %mul337)
  %tobool354.not = icmp eq i16 %mul337, 0
  br i1 %tobool354.not, label %if.end346.cleanup_crit_edge, label %if.end356

if.end346.cleanup_crit_edge:                      ; preds = %if.end346
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end356:                                        ; preds = %if.end346
  call void @__sanitizer_cov_trace_pc() #7
  %27 = ptrtoint ptr %offset343 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %offset343, align 4
  %conv358 = zext i16 %mul337 to i32
  %add359 = add i32 %28, %conv358
  %size360 = getelementptr inbounds %struct.ipa_mem, ptr %call, i32 0, i32 2
  %29 = ptrtoint ptr %size360 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %size360, align 4
  %sub363 = sub i16 %30, %mul337
  %31 = ptrtoint ptr %zero_addr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %zero_addr, align 8
  tail call void @ipa_cmd_dma_shared_mem_add(ptr noundef %trans, i32 noundef %add359, i16 noundef zeroext %sub363, i32 noundef %32, i1 noundef zeroext true) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end356, %if.end346.cleanup_crit_edge, %ipa_table_addr.exit450.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ipa_table_config(ptr nocapture noundef readonly %ipa) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %filter_map.i = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 29
  %0 = ptrtoint ptr %filter_map.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %filter_map.i, align 8
  %version.i.i = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 1
  %2 = ptrtoint ptr %version.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %version.i.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %3)
  %cmp.i.not.i = icmp eq i32 %3, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool1.not14.i = icmp eq i32 %1, 0
  %or.cond.i = select i1 %cmp.i.not.i, i1 true, i1 %tobool1.not14.i
  br i1 %or.cond.i, label %entry.ipa_filter_config.exit_crit_edge, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

entry.ipa_filter_config.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %ipa_filter_config.exit

while.body.i:                                     ; preds = %if.end6.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %ep_mask.015.i = phi i32 [ %xor.i, %if.end6.i.while.body.i_crit_edge ], [ %1, %entry.while.body.i_crit_edge ]
  %4 = tail call i32 @llvm.cttz.i32(i32 %ep_mask.015.i, i1 true) #5, !range !62
  %shl.i = shl nuw i32 1, %4
  %xor.i = xor i32 %shl.i, %ep_mask.015.i
  %ee_id4.i = getelementptr %struct.ipa, ptr %ipa, i32 0, i32 33, i32 %4, i32 1
  %5 = ptrtoint ptr %ee_id4.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ee_id4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.i = icmp eq i32 %6, 0
  br i1 %cmp.i, label %if.then5.i, label %while.body.i.if.end6.i_crit_edge

while.body.i.if.end6.i_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6.i

if.then5.i:                                       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.i = getelementptr %struct.ipa, ptr %ipa, i32 0, i32 33, i32 %4
  %endpoint_id1.i.i = getelementptr %struct.ipa, ptr %ipa, i32 0, i32 33, i32 %4, i32 3
  %7 = ptrtoint ptr %endpoint_id1.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %endpoint_id1.i.i, align 4
  %mul.i.i = mul i32 %8, 112
  %add.i.i = add i32 %mul.i.i, 2140
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.i, align 4
  %reg_virt.i.i = getelementptr inbounds %struct.ipa, ptr %10, i32 0, i32 14
  %11 = ptrtoint ptr %reg_virt.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %reg_virt.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %12, i32 %add.i.i
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !64
  %14 = and i32 %13, -2130706433
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.i, align 4
  %reg_virt3.i.i = getelementptr inbounds %struct.ipa, ptr %16, i32 0, i32 14
  %17 = ptrtoint ptr %reg_virt3.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %reg_virt3.i.i, align 4
  %add.ptr4.i.i = getelementptr i8, ptr %18, i32 %add.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !65
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i, i32 %14) #5, !srcloc !66
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then5.i, %while.body.i.if.end6.i_crit_edge
  %tobool1.not.i = icmp eq i32 %xor.i, 0
  br i1 %tobool1.not.i, label %if.end6.i.ipa_filter_config.exit_crit_edge, label %if.end6.i.while.body.i_crit_edge

if.end6.i.while.body.i_crit_edge:                 ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

if.end6.i.ipa_filter_config.exit_crit_edge:       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ipa_filter_config.exit

ipa_filter_config.exit:                           ; preds = %if.end6.i.ipa_filter_config.exit_crit_edge, %entry.ipa_filter_config.exit_crit_edge
  %19 = ptrtoint ptr %filter_map.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %filter_map.i, align 8
  %21 = ptrtoint ptr %version.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %version.i.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %22)
  %cmp.i.not.i6 = icmp eq i32 %22, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool1.not14.i7 = icmp eq i32 %20, 0
  %or.cond.i8 = select i1 %cmp.i.not.i6, i1 true, i1 %tobool1.not14.i7
  br i1 %or.cond.i8, label %ipa_filter_config.exit.ipa_filter_config.exit26_crit_edge, label %ipa_filter_config.exit.while.body.i14_crit_edge

ipa_filter_config.exit.while.body.i14_crit_edge:  ; preds = %ipa_filter_config.exit
  br label %while.body.i14

ipa_filter_config.exit.ipa_filter_config.exit26_crit_edge: ; preds = %ipa_filter_config.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %ipa_filter_config.exit26

while.body.i14:                                   ; preds = %if.end6.i25.while.body.i14_crit_edge, %ipa_filter_config.exit.while.body.i14_crit_edge
  %ep_mask.015.i9 = phi i32 [ %xor.i11, %if.end6.i25.while.body.i14_crit_edge ], [ %20, %ipa_filter_config.exit.while.body.i14_crit_edge ]
  %23 = tail call i32 @llvm.cttz.i32(i32 %ep_mask.015.i9, i1 true) #5, !range !62
  %shl.i10 = shl nuw i32 1, %23
  %xor.i11 = xor i32 %shl.i10, %ep_mask.015.i9
  %ee_id4.i12 = getelementptr %struct.ipa, ptr %ipa, i32 0, i32 33, i32 %23, i32 1
  %24 = ptrtoint ptr %ee_id4.i12 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ee_id4.i12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %25)
  %cmp.i13 = icmp eq i32 %25, 1
  br i1 %cmp.i13, label %if.then5.i23, label %while.body.i14.if.end6.i25_crit_edge

while.body.i14.if.end6.i25_crit_edge:             ; preds = %while.body.i14
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6.i25

if.then5.i23:                                     ; preds = %while.body.i14
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.i15 = getelementptr %struct.ipa, ptr %ipa, i32 0, i32 33, i32 %23
  %endpoint_id1.i.i16 = getelementptr %struct.ipa, ptr %ipa, i32 0, i32 33, i32 %23, i32 3
  %26 = ptrtoint ptr %endpoint_id1.i.i16 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %endpoint_id1.i.i16, align 4
  %mul.i.i17 = mul i32 %27, 112
  %add.i.i18 = add i32 %mul.i.i17, 2140
  %28 = ptrtoint ptr %arrayidx.i15 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.i15, align 4
  %reg_virt.i.i19 = getelementptr inbounds %struct.ipa, ptr %29, i32 0, i32 14
  %30 = ptrtoint ptr %reg_virt.i.i19 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %reg_virt.i.i19, align 4
  %add.ptr.i.i20 = getelementptr i8, ptr %31, i32 %add.i.i18
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i20) #5, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !64
  %33 = and i32 %32, -2130706433
  %34 = ptrtoint ptr %arrayidx.i15 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx.i15, align 4
  %reg_virt3.i.i21 = getelementptr inbounds %struct.ipa, ptr %35, i32 0, i32 14
  %36 = ptrtoint ptr %reg_virt3.i.i21 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %reg_virt3.i.i21, align 4
  %add.ptr4.i.i22 = getelementptr i8, ptr %37, i32 %add.i.i18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !65
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i22, i32 %33) #5, !srcloc !66
  br label %if.end6.i25

if.end6.i25:                                      ; preds = %if.then5.i23, %while.body.i14.if.end6.i25_crit_edge
  %tobool1.not.i24 = icmp eq i32 %xor.i11, 0
  br i1 %tobool1.not.i24, label %ipa_filter_config.exit26thread-pre-split, label %if.end6.i25.while.body.i14_crit_edge

if.end6.i25.while.body.i14_crit_edge:             ; preds = %if.end6.i25
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i14

ipa_filter_config.exit26thread-pre-split:         ; preds = %if.end6.i25
  call void @__sanitizer_cov_trace_pc() #7
  %38 = ptrtoint ptr %version.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %.pr = load i32, ptr %version.i.i, align 128
  br label %ipa_filter_config.exit26

ipa_filter_config.exit26:                         ; preds = %ipa_filter_config.exit26thread-pre-split, %ipa_filter_config.exit.ipa_filter_config.exit26_crit_edge
  %39 = phi i32 [ %.pr, %ipa_filter_config.exit26thread-pre-split ], [ %22, %ipa_filter_config.exit.ipa_filter_config.exit26_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %39)
  %cmp.i.not.i28 = icmp eq i32 %39, 6
  br i1 %cmp.i.not.i28, label %ipa_filter_config.exit26.ipa_route_config.exit_crit_edge, label %for.cond.preheader.i

ipa_filter_config.exit26.ipa_route_config.exit_crit_edge: ; preds = %ipa_filter_config.exit26
  call void @__sanitizer_cov_trace_pc() #7
  br label %ipa_route_config.exit

for.cond.preheader.i:                             ; preds = %ipa_filter_config.exit26
  %reg_virt.i.i29 = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 14
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i
  %route_id.011.i = phi i32 [ 0, %for.cond.preheader.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %route_id.011.i)
  %cmp1.i.i = icmp ult i32 %route_id.011.i, 8
  br i1 %cmp1.i.i, label %for.body.i.for.inc.i_crit_edge, label %if.then5.i33

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.then5.i33:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %mul.i.i30 = mul nuw nsw i32 %route_id.011.i, 112
  %add.i.i31 = add nuw nsw i32 %mul.i.i30, 2140
  %40 = ptrtoint ptr %reg_virt.i.i29 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %reg_virt.i.i29, align 4
  %add.ptr.i.i32 = getelementptr i8, ptr %41, i32 %add.i.i31
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i32) #5, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !64
  %43 = and i32 %42, -32513
  %44 = ptrtoint ptr %reg_virt.i.i29 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %reg_virt.i.i29, align 4
  %add.ptr2.i.i = getelementptr i8, ptr %45, i32 %add.i.i31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !65
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i.i, i32 %43) #5, !srcloc !66
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then5.i33, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %route_id.011.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 15
  br i1 %exitcond.not.i, label %for.inc.i.ipa_route_config.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.inc.i.ipa_route_config.exit_crit_edge:        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ipa_route_config.exit

ipa_route_config.exit:                            ; preds = %for.inc.i.ipa_route_config.exit_crit_edge, %ipa_filter_config.exit26.ipa_route_config.exit_crit_edge
  %46 = ptrtoint ptr %version.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %version.i.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %47)
  %cmp.i.not.i35 = icmp eq i32 %47, 6
  br i1 %cmp.i.not.i35, label %ipa_route_config.exit.ipa_route_config.exit49_crit_edge, label %for.cond.preheader.i37

ipa_route_config.exit.ipa_route_config.exit49_crit_edge: ; preds = %ipa_route_config.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %ipa_route_config.exit49

for.cond.preheader.i37:                           ; preds = %ipa_route_config.exit
  %reg_virt.i.i36 = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 14
  br label %for.body.i40

for.body.i40:                                     ; preds = %for.inc.i48.for.body.i40_crit_edge, %for.cond.preheader.i37
  %route_id.011.i38 = phi i32 [ 0, %for.cond.preheader.i37 ], [ %inc.i46, %for.inc.i48.for.body.i40_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %route_id.011.i38)
  %cmp1.i.i39 = icmp ugt i32 %route_id.011.i38, 7
  br i1 %cmp1.i.i39, label %for.body.i40.for.inc.i48_crit_edge, label %if.then5.i45

for.body.i40.for.inc.i48_crit_edge:               ; preds = %for.body.i40
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i48

if.then5.i45:                                     ; preds = %for.body.i40
  call void @__sanitizer_cov_trace_pc() #7
  %mul.i.i41 = mul nuw nsw i32 %route_id.011.i38, 112
  %add.i.i42 = add nuw nsw i32 %mul.i.i41, 2140
  %48 = ptrtoint ptr %reg_virt.i.i36 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %reg_virt.i.i36, align 4
  %add.ptr.i.i43 = getelementptr i8, ptr %49, i32 %add.i.i42
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i43) #5, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !64
  %51 = and i32 %50, -32513
  %52 = ptrtoint ptr %reg_virt.i.i36 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %reg_virt.i.i36, align 4
  %add.ptr2.i.i44 = getelementptr i8, ptr %53, i32 %add.i.i42
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !65
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i.i44, i32 %51) #5, !srcloc !66
  br label %for.inc.i48

for.inc.i48:                                      ; preds = %if.then5.i45, %for.body.i40.for.inc.i48_crit_edge
  %inc.i46 = add nuw nsw i32 %route_id.011.i38, 1
  %exitcond.not.i47 = icmp eq i32 %inc.i46, 15
  br i1 %exitcond.not.i47, label %for.inc.i48.ipa_route_config.exit49_crit_edge, label %for.inc.i48.for.body.i40_crit_edge

for.inc.i48.for.body.i40_crit_edge:               ; preds = %for.inc.i48
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i40

for.inc.i48.ipa_route_config.exit49_crit_edge:    ; preds = %for.inc.i48
  call void @__sanitizer_cov_trace_pc() #7
  br label %ipa_route_config.exit49

ipa_route_config.exit49:                          ; preds = %for.inc.i48.ipa_route_config.exit49_crit_edge, %ipa_route_config.exit.ipa_route_config.exit49_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ipa_table_init(ptr nocapture noundef %ipa) local_unnamed_addr #0 align 64 {
entry:
  %addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 2
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr) #5
  %2 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %addr, align 4, !annotation !67
  %call.i = call ptr @dma_alloc_attrs(ptr noundef %dev1, i32 noundef 136, ptr noundef nonnull %addr, i32 noundef 3264, i32 noundef 0) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %table_virt = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 9
  %3 = ptrtoint ptr %table_virt to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i, ptr %table_virt, align 4
  %4 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %addr, align 4
  %table_addr = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 8
  %6 = ptrtoint ptr %table_addr to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %table_addr, align 8
  %incdec.ptr = getelementptr i64, ptr %call.i, i32 1
  %7 = ptrtoint ptr %call.i to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 0, ptr %call.i, align 8
  %filter_map = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 29
  %8 = ptrtoint ptr %filter_map to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %filter_map, align 8
  %conv = zext i32 %9 to i64
  %shl = shl nuw nsw i64 %conv, 1
  %10 = call i64 @llvm.bswap.i64(i64 %shl)
  %incdec.ptr3 = getelementptr i64, ptr %call.i, i32 2
  %11 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %10, ptr %incdec.ptr, align 8
  %conv4 = zext i32 %5 to i64
  %12 = call i64 @llvm.bswap.i64(i64 %conv4)
  %incdec.ptr6 = getelementptr i64, ptr %call.i, i32 3
  %13 = ptrtoint ptr %incdec.ptr3 to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %12, ptr %incdec.ptr3, align 8
  %incdec.ptr6.1 = getelementptr i64, ptr %call.i, i32 4
  %14 = ptrtoint ptr %incdec.ptr6 to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %12, ptr %incdec.ptr6, align 8
  %incdec.ptr6.2 = getelementptr i64, ptr %call.i, i32 5
  %15 = ptrtoint ptr %incdec.ptr6.1 to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %12, ptr %incdec.ptr6.1, align 8
  %incdec.ptr6.3 = getelementptr i64, ptr %call.i, i32 6
  %16 = ptrtoint ptr %incdec.ptr6.2 to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %12, ptr %incdec.ptr6.2, align 8
  %incdec.ptr6.4 = getelementptr i64, ptr %call.i, i32 7
  %17 = ptrtoint ptr %incdec.ptr6.3 to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %12, ptr %incdec.ptr6.3, align 8
  %incdec.ptr6.5 = getelementptr i64, ptr %call.i, i32 8
  %18 = ptrtoint ptr %incdec.ptr6.4 to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %12, ptr %incdec.ptr6.4, align 8
  %incdec.ptr6.6 = getelementptr i64, ptr %call.i, i32 9
  %19 = ptrtoint ptr %incdec.ptr6.5 to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %12, ptr %incdec.ptr6.5, align 8
  %incdec.ptr6.7 = getelementptr i64, ptr %call.i, i32 10
  %20 = ptrtoint ptr %incdec.ptr6.6 to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %12, ptr %incdec.ptr6.6, align 8
  %incdec.ptr6.8 = getelementptr i64, ptr %call.i, i32 11
  %21 = ptrtoint ptr %incdec.ptr6.7 to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %12, ptr %incdec.ptr6.7, align 8
  %incdec.ptr6.9 = getelementptr i64, ptr %call.i, i32 12
  %22 = ptrtoint ptr %incdec.ptr6.8 to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %12, ptr %incdec.ptr6.8, align 8
  %incdec.ptr6.10 = getelementptr i64, ptr %call.i, i32 13
  %23 = ptrtoint ptr %incdec.ptr6.9 to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %12, ptr %incdec.ptr6.9, align 8
  %incdec.ptr6.11 = getelementptr i64, ptr %call.i, i32 14
  %24 = ptrtoint ptr %incdec.ptr6.10 to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %12, ptr %incdec.ptr6.10, align 8
  %incdec.ptr6.12 = getelementptr i64, ptr %call.i, i32 15
  %25 = ptrtoint ptr %incdec.ptr6.11 to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %12, ptr %incdec.ptr6.11, align 8
  %incdec.ptr6.13 = getelementptr i64, ptr %call.i, i32 16
  %26 = ptrtoint ptr %incdec.ptr6.12 to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %12, ptr %incdec.ptr6.12, align 8
  %27 = ptrtoint ptr %incdec.ptr6.13 to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %12, ptr %incdec.ptr6.13, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr) #5
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ipa_table_exit(ptr nocapture noundef %ipa) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 2
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %table_virt = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 9
  %2 = ptrtoint ptr %table_virt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %table_virt, align 4
  %table_addr = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 8
  %4 = ptrtoint ptr %table_addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %table_addr, align 8
  tail call void @dma_free_attrs(ptr noundef %dev1, i32 noundef 136, ptr noundef %3, i32 noundef %5, i32 noundef 0) #5
  %6 = ptrtoint ptr %table_addr to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %table_addr, align 8
  %7 = ptrtoint ptr %table_virt to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %table_virt, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ipa_mem_find(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ipa_cmd_table_valid(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ipa_filter_reset_table(ptr noundef %ipa, i32 noundef %mem_id, i1 noundef zeroext %modem) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %filter_map = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 29
  %0 = ptrtoint ptr %filter_map to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %filter_map, align 8
  %call.i = tail call i32 @__sw_hweight32(i32 noundef %1) #5
  %call280 = tail call ptr @ipa_cmd_trans_alloc(ptr noundef %ipa, i32 noundef %call.i) #5
  %tobool281.not = icmp eq ptr %call280, null
  br i1 %tobool281.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %pdev = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 2
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %cond284 = select i1 %modem, ptr @.str.8, ptr @.str.9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.23, ptr noundef nonnull %cond284) #8
  br label %cleanup297

if.end:                                           ; preds = %entry
  %cond287 = zext i1 %modem to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool288.not349 = icmp eq i32 %1, 0
  br i1 %tobool288.not349, label %if.end.while.end_crit_edge, label %while.body.lr.ph

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end
  %gsi.i = getelementptr inbounds %struct.gsi_trans, ptr %call280, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %ep_mask.0350 = phi i32 [ %1, %while.body.lr.ph ], [ %xor, %cleanup.while.body_crit_edge ]
  %4 = tail call i32 @llvm.cttz.i32(i32 %ep_mask.0350, i1 true) #5, !range !62
  %shl = shl nuw i32 1, %4
  %xor = xor i32 %shl, %ep_mask.0350
  %ee_id291 = getelementptr %struct.ipa, ptr %ipa, i32 0, i32 33, i32 %4, i32 1
  %5 = ptrtoint ptr %ee_id291 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ee_id291, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %cond287)
  %cmp.not = icmp eq i32 %6, %cond287
  br i1 %cmp.not, label %if.end294, label %while.body.cleanup_crit_edge

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end294:                                        ; preds = %while.body
  %7 = ptrtoint ptr %gsi.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %gsi.i, align 8
  %call.i348 = tail call ptr @ipa_mem_find(ptr noundef %8, i32 noundef %mem_id) #5
  %size1.i = getelementptr inbounds %struct.ipa_mem, ptr %call.i348, i32 0, i32 2
  %9 = ptrtoint ptr %size1.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %size1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool.not.i = icmp eq i16 %10, 0
  br i1 %tobool.not.i, label %if.end294.cleanup_crit_edge, label %if.end.i

if.end294.cleanup_crit_edge:                      ; preds = %if.end294
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %if.end294
  call void @__sanitizer_cov_trace_pc() #7
  %offset5.i = getelementptr inbounds %struct.ipa_mem, ptr %call.i348, i32 0, i32 1
  %11 = ptrtoint ptr %offset5.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %offset5.i, align 4
  %spec.select.i = shl nuw nsw i32 %4, 3
  %mul.i = add nuw nsw i32 %spec.select.i, 8
  %add.i = add i32 %mul.i, %12
  %table_addr.i.i = getelementptr inbounds %struct.ipa, ptr %8, i32 0, i32 8
  %13 = ptrtoint ptr %table_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %table_addr.i.i, align 8
  %add.i.i = add i32 %14, 16
  tail call void @ipa_cmd_dma_shared_mem_add(ptr noundef nonnull %call280, i32 noundef %add.i, i16 noundef zeroext 8, i32 noundef %add.i.i, i1 noundef zeroext true) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %if.end294.cleanup_crit_edge, %while.body.cleanup_crit_edge
  %tobool288.not = icmp eq i32 %xor, 0
  br i1 %tobool288.not, label %cleanup.while.end_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %if.end.while.end_crit_edge
  tail call void @gsi_trans_commit_wait(ptr noundef nonnull %call280) #5
  br label %cleanup297

cleanup297:                                       ; preds = %while.end, %do.end
  %retval.0 = phi i32 [ 0, %while.end ], [ -16, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipa_cmd_dma_shared_mem_add(ptr noundef, i32 noundef, i16 noundef zeroext, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipa_cmd_table_init_add(ptr noundef, i32 noundef, i16 noundef zeroext, i32 noundef, i32 noundef, i16 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !16, !18, !19, !20, !21, !23, !24, !25, !27, !28, !29, !30, !32, !33, !34, !35, !37, !38, !39, !40, !41, !42, !44, !45, !46, !47, !49, !50, !51}
!llvm.module.flags = !{!52, !53, !54, !55, !56, !57, !58, !59}
!llvm.ident = !{!60}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ipa/ipa_table.c", i32 210, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @ipa_filter_map_valid._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @ipa_filter_map_valid._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ipa/ipa_table.c", i32 217, i32 3}
!10 = !{ptr @ipa_filter_map_valid._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @ipa_filter_map_valid._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ipa/ipa_table.c", i32 373, i32 20}
!14 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ipa/ipa_table.c", i32 373, i32 30}
!16 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ipa/ipa_table.c", i32 378, i32 3}
!18 = !{ptr @.str.11, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @ipa_table_reset._entry, !17, !"_entry", i1 false, i1 false}
!20 = !{ptr @ipa_table_reset._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.13, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/ipa/ipa_table.c", i32 383, i32 3}
!23 = !{ptr @ipa_table_reset._entry.12, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @ipa_table_reset._entry_ptr.14, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.15, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/ipa/ipa_table.c", i32 398, i32 3}
!27 = !{ptr @.str.16, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @ipa_table_hash_flush._entry, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @ipa_table_hash_flush._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.17, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/ipa/ipa_table.c", i32 490, i32 3}
!32 = !{ptr @.str.18, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @ipa_table_setup._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @ipa_table_setup._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.19, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/ipa/ipa_table.c", i32 173, i32 2}
!37 = !{ptr @.str.20, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @ipa_table_valid_one._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @ipa_table_valid_one._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.21, !36, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.22, !36, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.23, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/ipa/ipa_table.c", i32 279, i32 3}
!44 = !{ptr @.str.24, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @ipa_filter_reset_table._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @ipa_filter_reset_table._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.25, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/ipa/ipa_table.c", i32 340, i32 3}
!49 = !{ptr @.str.26, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @ipa_route_reset._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @ipa_route_reset._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{i32 1, !"wchar_size", i32 2}
!53 = !{i32 1, !"min_enum_size", i32 4}
!54 = !{i32 8, !"branch-target-enforcement", i32 0}
!55 = !{i32 8, !"sign-return-address", i32 0}
!56 = !{i32 8, !"sign-return-address-all", i32 0}
!57 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!58 = !{i32 7, !"uwtable", i32 1}
!59 = !{i32 7, !"frame-pointer", i32 2}
!60 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!61 = !{!"branch_weights", i32 1, i32 2000}
!62 = !{i32 0, i32 33}
!63 = !{i64 1297822}
!64 = !{i64 2148977814}
!65 = !{i64 2148979169}
!66 = !{i64 1297404}
!67 = !{!"auto-init"}
