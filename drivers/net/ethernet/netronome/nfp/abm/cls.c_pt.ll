; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/netronome/nfp/abm/cls.c_pt.bc'
source_filename = "../drivers/net/ethernet/netronome/nfp/abm/cls.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.list_head = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nfp_repr = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.flow_cls_common_offload = type { i32, i16, i32, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.156, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
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
%union.anon.156 = type { ptr }
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
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.tc_cls_u32_offload = type { %struct.flow_cls_common_offload, i32, %union.anon.166 }
%union.anon.166 = type { %struct.tc_cls_u32_knode }
%struct.tc_cls_u32_knode = type { ptr, ptr, ptr, i32, i32, i32, i32, i8 }
%struct.tcf_exts = type { i32, i32, ptr, ptr, ptr, i32, i32 }
%struct.tc_u32_sel = type { i8, i8, i8, i16, i16, i16, i16, i32, [0 x %struct.tc_u32_key] }
%struct.tc_u32_key = type { i32, i32, i32, i32 }
%struct.anon.153 = type { i32, i32 }
%struct.nfp_abm = type { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32, i32, i8, i32, ptr, ptr, ptr }
%struct.nfp_app = type { ptr, ptr, ptr, ptr, [3 x ptr], ptr, i32, %struct.notifier_block, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nfp_abm_link = type { ptr, ptr, i32, i32, i32, i64, ptr, i8, i8, %struct.list_head, ptr, %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.nfp_abm_u32_match = type { i32, i32, i8, i8, %struct.list_head }

@nfp_abm_block_cb_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @nfp_abm_block_cb_list, ptr @nfp_abm_block_cb_list }, [24 x i8] zeroinitializer }, align 32
@nfp_abm_setup_tc_block_cb.__msg = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"nfp: only offload of u32 classifier supported\00", [50 x i8] zeroinitializer }, align 32
@nfp_abm_setup_tc_block_cb.__msg.1 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"nfp: only IP and IPv6 supported as filter protocol\00", [45 x i8] zeroinitializer }, align 32
@tc_cls_can_offload_and_chain0.__msg = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Driver supports only offload of chain 0\00", [56 x i8] zeroinitializer }, align 32
@tc_can_offload_extack.__msg = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"TC offload is disabled on net device\00", [59 x i8] zeroinitializer }, align 32
@nfp_abm_u32_knode_replace.__msg = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"nfp: conflict with already offloaded filter\00", [52 x i8] zeroinitializer }, align 32
@nfp_abm_u32_check_knode.__msg = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"nfp: action offload not supported\00", [62 x i8] zeroinitializer }, align 32
@nfp_abm_u32_check_knode.__msg.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"nfp: linking not supported\00", [37 x i8] zeroinitializer }, align 32
@nfp_abm_u32_check_knode.__msg.3 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"nfp: flags must be equal to TC_U32_TERMINAL\00", [52 x i8] zeroinitializer }, align 32
@nfp_abm_u32_check_knode.__msg.4 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"nfp: variable offsetting not supported\00", [57 x i8] zeroinitializer }, align 32
@nfp_abm_u32_check_knode.__msg.5 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"nfp: hashing not supported\00", [37 x i8] zeroinitializer }, align 32
@nfp_abm_u32_check_knode.__msg.6 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"nfp: matching on mark not supported\00", [60 x i8] zeroinitializer }, align 32
@nfp_abm_u32_check_knode.__msg.7 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"nfp: setting non-0 class not supported\00", [57 x i8] zeroinitializer }, align 32
@nfp_abm_u32_check_knode.__msg.8 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"nfp: classid higher than number of bands\00", [55 x i8] zeroinitializer }, align 32
@nfp_abm_u32_check_knode.__msg.9 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"nfp: exactly one key required\00", [34 x i8] zeroinitializer }, align 32
@nfp_abm_u32_check_knode.__msg.10 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"nfp: only IP and IPv6 supported as filter protocol\00", [45 x i8] zeroinitializer }, align 32
@nfp_abm_u32_check_knode.__msg.11 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"nfp: offset mask - variable offsetting not supported\00", [43 x i8] zeroinitializer }, align 32
@nfp_abm_u32_check_knode.__msg.12 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"nfp: only DSCP fields can be matched\00", [59 x i8] zeroinitializer }, align 32
@nfp_abm_u32_check_knode.__msg.13 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"nfp: mask does not cover the key\00", [63 x i8] zeroinitializer }, align 32
@nfp_abm_u32_check_knode.__msg.14 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"nfp: only high DSCP class selector bits can be used\00", [44 x i8] zeroinitializer }, align 32
@nfp_abm_u32_check_knode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.15, ptr @.str.16, i32 96, ptr @.str.17, ptr @.str.18 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"nfp: u32 offload: requested mask %x FW can support only %x\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"nfp_abm_u32_check_knode\00", [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/net/ethernet/netronome/nfp/abm/cls.c\00", [51 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nfp_abm_u32_check_knode._entry_ptr = internal global ptr @nfp_abm_u32_check_knode._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@__sancov_gen_cov_switch_values.19 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.20 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@___asan_gen_.21 = private unnamed_addr constant [22 x i8] c"nfp_abm_block_cb_list\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 265, i32 8 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 237, i32 3 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 246, i32 3 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 676, i32 3 }
@___asan_gen_.34 = private unnamed_addr constant [25 x i8] c"../include/net/pkt_cls.h\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 664, i32 3 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 200, i32 4 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 28, i32 3 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 32, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 36, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 42, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 46, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 50, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 54, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 58, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 63, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 75, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 81, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 85, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 89, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 93, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.96 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.97 = private constant [48 x i8] c"../drivers/net/ethernet/netronome/nfp/abm/cls.c\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 94, i32 3 }
@llvm.compiler.used = appending global [27 x ptr] [ptr @nfp_abm_u32_check_knode._entry, ptr @nfp_abm_u32_check_knode._entry_ptr, ptr @nfp_abm_block_cb_list, ptr @nfp_abm_setup_tc_block_cb.__msg, ptr @nfp_abm_setup_tc_block_cb.__msg.1, ptr @tc_cls_can_offload_and_chain0.__msg, ptr @tc_can_offload_extack.__msg, ptr @nfp_abm_u32_knode_replace.__msg, ptr @nfp_abm_u32_check_knode.__msg, ptr @nfp_abm_u32_check_knode.__msg.2, ptr @nfp_abm_u32_check_knode.__msg.3, ptr @nfp_abm_u32_check_knode.__msg.4, ptr @nfp_abm_u32_check_knode.__msg.5, ptr @nfp_abm_u32_check_knode.__msg.6, ptr @nfp_abm_u32_check_knode.__msg.7, ptr @nfp_abm_u32_check_knode.__msg.8, ptr @nfp_abm_u32_check_knode.__msg.9, ptr @nfp_abm_u32_check_knode.__msg.10, ptr @nfp_abm_u32_check_knode.__msg.11, ptr @nfp_abm_u32_check_knode.__msg.12, ptr @nfp_abm_u32_check_knode.__msg.13, ptr @nfp_abm_u32_check_knode.__msg.14, ptr @.str, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18], section "llvm.metadata"
@0 = internal global [26 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_abm_block_cb_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_abm_setup_tc_block_cb.__msg to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_abm_setup_tc_block_cb.__msg.1 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc_cls_can_offload_and_chain0.__msg to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc_can_offload_extack.__msg to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_abm_u32_knode_replace.__msg to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_abm_u32_check_knode.__msg to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_abm_u32_check_knode.__msg.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_abm_u32_check_knode.__msg.3 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_abm_u32_check_knode.__msg.4 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_abm_u32_check_knode.__msg.5 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_abm_u32_check_knode.__msg.6 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_abm_u32_check_knode.__msg.7 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_abm_u32_check_knode.__msg.8 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_abm_u32_check_knode.__msg.9 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_abm_u32_check_knode.__msg.10 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_abm_u32_check_knode.__msg.11 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_abm_u32_check_knode.__msg.12 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_abm_u32_check_knode.__msg.13 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_abm_u32_check_knode.__msg.14 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_abm_u32_check_knode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfp_abm_setup_cls_block(ptr nocapture noundef readnone %netdev, ptr noundef %repr, ptr noundef %f) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @flow_block_cb_setup_simple(ptr noundef %f, ptr noundef nonnull @nfp_abm_block_cb_list, ptr noundef nonnull @nfp_abm_setup_tc_block_cb, ptr noundef %repr, ptr noundef %repr, i1 noundef zeroext true) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @flow_block_cb_setup_simple(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfp_abm_setup_tc_block_cb(i32 noundef %type, ptr nocapture noundef readonly %type_data, ptr nocapture noundef readonly %cb_priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %app_priv = getelementptr inbounds %struct.nfp_repr, ptr %cb_priv, i32 0, i32 5
  %0 = ptrtoint ptr %app_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %app_priv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %type)
  %cmp.not = icmp eq i32 %type, 1
  br i1 %cmp.not, label %if.end2, label %do.body

do.body:                                          ; preds = %entry
  %extack = getelementptr inbounds %struct.flow_cls_common_offload, ptr %type_data, i32 0, i32 3
  %2 = ptrtoint ptr %extack to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %extack, align 4
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nfp_abm_setup_tc_block_cb.__msg) #5
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %if.then1

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then1:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @nfp_abm_setup_tc_block_cb.__msg, ptr %3, align 4
  br label %cleanup

if.end2:                                          ; preds = %entry
  %5 = ptrtoint ptr %cb_priv to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cb_priv, align 4
  %extack.i = getelementptr inbounds %struct.flow_cls_common_offload, ptr %type_data, i32 0, i32 3
  %7 = ptrtoint ptr %extack.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %extack.i, align 4
  %features.i.i.i = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 23
  %9 = ptrtoint ptr %features.i.i.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %features.i.i.i, align 16
  %and.i.i.i = and i64 %10, 562949953421312
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i)
  %tobool.i.i.not.i = icmp eq i64 %and.i.i.i, 0
  br i1 %tobool.i.i.not.i, label %do.body.i.i, label %if.end.i

do.body.i.i:                                      ; preds = %if.end2
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @tc_can_offload_extack.__msg) #5
  %tobool1.not.i.i = icmp eq ptr %8, null
  br i1 %tobool1.not.i.i, label %do.body.i.i.cleanup_crit_edge, label %if.then2.i.i

do.body.i.i.cleanup_crit_edge:                    ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then2.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @tc_can_offload_extack.__msg, ptr %8, align 4
  br label %cleanup

if.end.i:                                         ; preds = %if.end2
  %12 = ptrtoint ptr %type_data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %type_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i = icmp eq i32 %13, 0
  br i1 %tobool.not.i, label %if.end5, label %do.body.i

do.body.i:                                        ; preds = %if.end.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @tc_cls_can_offload_and_chain0.__msg) #5
  %tobool3.not.i = icmp eq ptr %8, null
  br i1 %tobool3.not.i, label %do.body.i.cleanup_crit_edge, label %if.then4.i

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then4.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @tc_cls_can_offload_and_chain0.__msg, ptr %8, align 4
  br label %cleanup

if.end5:                                          ; preds = %if.end.i
  %protocol = getelementptr inbounds %struct.flow_cls_common_offload, ptr %type_data, i32 0, i32 1
  %15 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %protocol, align 4
  %17 = zext i16 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values)
  switch i16 %16, label %do.body15 [
    i16 2048, label %if.end5.if.end25_crit_edge
    i16 -31011, label %if.end5.if.end25_crit_edge80
  ]

if.end5.if.end25_crit_edge80:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25

if.end5.if.end25_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25

do.body15:                                        ; preds = %if.end5
  %18 = ptrtoint ptr %extack.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %extack.i, align 4
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nfp_abm_setup_tc_block_cb.__msg.1) #5
  %tobool19.not = icmp eq ptr %19, null
  br i1 %tobool19.not, label %do.body15.cleanup_crit_edge, label %if.then20

do.body15.cleanup_crit_edge:                      ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then20:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @nfp_abm_setup_tc_block_cb.__msg.1, ptr %19, align 4
  br label %cleanup

if.end25:                                         ; preds = %if.end5.if.end25_crit_edge, %if.end5.if.end25_crit_edge80
  %command = getelementptr inbounds %struct.tc_cls_u32_offload, ptr %type_data, i32 0, i32 1
  %21 = ptrtoint ptr %command to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %command, align 4
  %23 = zext i32 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %22, label %if.end25.cleanup_crit_edge [
    i32 0, label %if.end25.sw.bb_crit_edge
    i32 1, label %if.end25.sw.bb_crit_edge81
    i32 2, label %sw.bb31
  ]

if.end25.sw.bb_crit_edge81:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

if.end25.sw.bb_crit_edge:                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %if.end25.sw.bb_crit_edge, %if.end25.sw.bb_crit_edge81
  %24 = getelementptr inbounds %struct.tc_cls_u32_offload, ptr %type_data, i32 0, i32 2
  %25 = ptrtoint ptr %extack.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %extack.i, align 4
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %1, align 8
  %29 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %24, align 4
  %tobool.not.i.i = icmp eq ptr %30, null
  br i1 %tobool.not.i.i, label %sw.bb.if.end4.i.i_crit_edge, label %land.lhs.true.i.i

sw.bb.if.end4.i.i_crit_edge:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4.i.i

land.lhs.true.i.i:                                ; preds = %sw.bb
  %nr_actions.i.i.i = getelementptr inbounds %struct.tcf_exts, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %nr_actions.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %nr_actions.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.i.not.i.i = icmp eq i32 %32, 0
  br i1 %tobool.i.not.i.i, label %land.lhs.true.i.i.if.end4.i.i_crit_edge, label %do.body.i.i48

land.lhs.true.i.i.if.end4.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4.i.i

do.body.i.i48:                                    ; preds = %land.lhs.true.i.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nfp_abm_u32_check_knode.__msg) #5
  %tobool2.not.i.i = icmp eq ptr %26, null
  br i1 %tobool2.not.i.i, label %do.body.i.i48.err_delete.i_crit_edge, label %if.then3.i.i

do.body.i.i48.err_delete.i_crit_edge:             ; preds = %do.body.i.i48
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_delete.i

if.then3.i.i:                                     ; preds = %do.body.i.i48
  call void @__sanitizer_cov_trace_pc() #7
  %33 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @nfp_abm_u32_check_knode.__msg, ptr %26, align 4
  br label %err_delete.i

if.end4.i.i:                                      ; preds = %land.lhs.true.i.i.if.end4.i.i_crit_edge, %sw.bb.if.end4.i.i_crit_edge
  %link_handle.i.i = getelementptr inbounds %struct.tc_cls_u32_offload, ptr %type_data, i32 0, i32 2, i32 0, i32 6
  %34 = ptrtoint ptr %link_handle.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %link_handle.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool5.not.i.i = icmp eq i32 %35, 0
  br i1 %tobool5.not.i.i, label %if.end15.i.i, label %do.body7.i.i

do.body7.i.i:                                     ; preds = %if.end4.i.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nfp_abm_u32_check_knode.__msg.2) #5
  %tobool9.not.i.i = icmp eq ptr %26, null
  br i1 %tobool9.not.i.i, label %do.body7.i.i.err_delete.i_crit_edge, label %if.then10.i.i

do.body7.i.i.err_delete.i_crit_edge:              ; preds = %do.body7.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_delete.i

if.then10.i.i:                                    ; preds = %do.body7.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %36 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @nfp_abm_u32_check_knode.__msg.2, ptr %26, align 4
  br label %err_delete.i

if.end15.i.i:                                     ; preds = %if.end4.i.i
  %sel.i.i = getelementptr inbounds %struct.tc_cls_u32_offload, ptr %type_data, i32 0, i32 2, i32 0, i32 2
  %37 = ptrtoint ptr %sel.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %sel.i.i, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %38, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %40)
  %cmp.not.i.i = icmp eq i8 %40, 1
  br i1 %cmp.not.i.i, label %if.end26.i.i, label %do.body18.i.i

do.body18.i.i:                                    ; preds = %if.end15.i.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nfp_abm_u32_check_knode.__msg.3) #5
  %tobool20.not.i.i = icmp eq ptr %26, null
  br i1 %tobool20.not.i.i, label %do.body18.i.i.err_delete.i_crit_edge, label %if.then21.i.i

do.body18.i.i.err_delete.i_crit_edge:             ; preds = %do.body18.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_delete.i

if.then21.i.i:                                    ; preds = %do.body18.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %41 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @nfp_abm_u32_check_knode.__msg.3, ptr %26, align 4
  br label %err_delete.i

if.end26.i.i:                                     ; preds = %if.end15.i.i
  %off.i.i = getelementptr inbounds %struct.tc_u32_sel, ptr %38, i32 0, i32 4
  %42 = ptrtoint ptr %off.i.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %off.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %43)
  %tobool29.not.i.i = icmp eq i16 %43, 0
  br i1 %tobool29.not.i.i, label %lor.lhs.false.i.i, label %if.end26.i.i.do.body45.i.i_crit_edge

if.end26.i.i.do.body45.i.i_crit_edge:             ; preds = %if.end26.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body45.i.i

lor.lhs.false.i.i:                                ; preds = %if.end26.i.i
  %offshift.i.i = getelementptr inbounds %struct.tc_u32_sel, ptr %38, i32 0, i32 1
  %44 = ptrtoint ptr %offshift.i.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %offshift.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool32.not.i.i = icmp eq i8 %45, 0
  br i1 %tobool32.not.i.i, label %lor.lhs.false33.i.i, label %lor.lhs.false.i.i.do.body45.i.i_crit_edge

lor.lhs.false.i.i.do.body45.i.i_crit_edge:        ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body45.i.i

lor.lhs.false33.i.i:                              ; preds = %lor.lhs.false.i.i
  %offmask.i.i = getelementptr inbounds %struct.tc_u32_sel, ptr %38, i32 0, i32 3
  %46 = ptrtoint ptr %offmask.i.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %offmask.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %47)
  %tobool36.not.i.i = icmp eq i16 %47, 0
  br i1 %tobool36.not.i.i, label %lor.lhs.false37.i.i, label %lor.lhs.false33.i.i.do.body45.i.i_crit_edge

lor.lhs.false33.i.i.do.body45.i.i_crit_edge:      ; preds = %lor.lhs.false33.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body45.i.i

lor.lhs.false37.i.i:                              ; preds = %lor.lhs.false33.i.i
  %offoff.i.i = getelementptr inbounds %struct.tc_u32_sel, ptr %38, i32 0, i32 5
  %48 = ptrtoint ptr %offoff.i.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %offoff.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %49)
  %tobool40.not.i.i = icmp eq i16 %49, 0
  br i1 %tobool40.not.i.i, label %lor.lhs.false41.i.i, label %lor.lhs.false37.i.i.do.body45.i.i_crit_edge

lor.lhs.false37.i.i.do.body45.i.i_crit_edge:      ; preds = %lor.lhs.false37.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body45.i.i

lor.lhs.false41.i.i:                              ; preds = %lor.lhs.false37.i.i
  %fshift.i.i = getelementptr inbounds %struct.tc_cls_u32_offload, ptr %type_data, i32 0, i32 2, i32 0, i32 7
  %50 = ptrtoint ptr %fshift.i.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %fshift.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool43.not.i.i = icmp eq i8 %51, 0
  br i1 %tobool43.not.i.i, label %if.end53.i.i, label %lor.lhs.false41.i.i.do.body45.i.i_crit_edge

lor.lhs.false41.i.i.do.body45.i.i_crit_edge:      ; preds = %lor.lhs.false41.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body45.i.i

do.body45.i.i:                                    ; preds = %lor.lhs.false41.i.i.do.body45.i.i_crit_edge, %lor.lhs.false37.i.i.do.body45.i.i_crit_edge, %lor.lhs.false33.i.i.do.body45.i.i_crit_edge, %lor.lhs.false.i.i.do.body45.i.i_crit_edge, %if.end26.i.i.do.body45.i.i_crit_edge
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nfp_abm_u32_check_knode.__msg.4) #5
  %tobool47.not.i.i = icmp eq ptr %26, null
  br i1 %tobool47.not.i.i, label %do.body45.i.i.err_delete.i_crit_edge, label %if.then48.i.i

do.body45.i.i.err_delete.i_crit_edge:             ; preds = %do.body45.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_delete.i

if.then48.i.i:                                    ; preds = %do.body45.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %52 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @nfp_abm_u32_check_knode.__msg.4, ptr %26, align 4
  br label %err_delete.i

if.end53.i.i:                                     ; preds = %lor.lhs.false41.i.i
  %hoff.i.i = getelementptr inbounds %struct.tc_u32_sel, ptr %38, i32 0, i32 6
  %53 = ptrtoint ptr %hoff.i.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %hoff.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %54)
  %tobool56.not.i.i = icmp eq i16 %54, 0
  br i1 %tobool56.not.i.i, label %lor.lhs.false57.i.i, label %if.end53.i.i.do.body61.i.i_crit_edge

if.end53.i.i.do.body61.i.i_crit_edge:             ; preds = %if.end53.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body61.i.i

lor.lhs.false57.i.i:                              ; preds = %if.end53.i.i
  %hmask.i.i = getelementptr inbounds %struct.tc_u32_sel, ptr %38, i32 0, i32 7
  %55 = ptrtoint ptr %hmask.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %hmask.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool59.not.i.i = icmp eq i32 %56, 0
  br i1 %tobool59.not.i.i, label %if.end69.i.i, label %lor.lhs.false57.i.i.do.body61.i.i_crit_edge

lor.lhs.false57.i.i.do.body61.i.i_crit_edge:      ; preds = %lor.lhs.false57.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body61.i.i

do.body61.i.i:                                    ; preds = %lor.lhs.false57.i.i.do.body61.i.i_crit_edge, %if.end53.i.i.do.body61.i.i_crit_edge
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nfp_abm_u32_check_knode.__msg.5) #5
  %tobool63.not.i.i = icmp eq ptr %26, null
  br i1 %tobool63.not.i.i, label %do.body61.i.i.err_delete.i_crit_edge, label %if.then64.i.i

do.body61.i.i.err_delete.i_crit_edge:             ; preds = %do.body61.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_delete.i

if.then64.i.i:                                    ; preds = %do.body61.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %57 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @nfp_abm_u32_check_knode.__msg.5, ptr %26, align 4
  br label %err_delete.i

if.end69.i.i:                                     ; preds = %lor.lhs.false57.i.i
  %val.i.i = getelementptr inbounds %struct.tc_cls_u32_offload, ptr %type_data, i32 0, i32 2, i32 0, i32 4
  %58 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %val.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool70.not.i.i = icmp eq i32 %59, 0
  br i1 %tobool70.not.i.i, label %lor.lhs.false71.i.i, label %if.end69.i.i.do.body74.i.i_crit_edge

if.end69.i.i.do.body74.i.i_crit_edge:             ; preds = %if.end69.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body74.i.i

lor.lhs.false71.i.i:                              ; preds = %if.end69.i.i
  %mask.i.i = getelementptr inbounds %struct.tc_cls_u32_offload, ptr %type_data, i32 0, i32 2, i32 0, i32 5
  %60 = ptrtoint ptr %mask.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %mask.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool72.not.i.i = icmp eq i32 %61, 0
  br i1 %tobool72.not.i.i, label %if.end82.i.i, label %lor.lhs.false71.i.i.do.body74.i.i_crit_edge

lor.lhs.false71.i.i.do.body74.i.i_crit_edge:      ; preds = %lor.lhs.false71.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body74.i.i

do.body74.i.i:                                    ; preds = %lor.lhs.false71.i.i.do.body74.i.i_crit_edge, %if.end69.i.i.do.body74.i.i_crit_edge
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nfp_abm_u32_check_knode.__msg.6) #5
  %tobool76.not.i.i = icmp eq ptr %26, null
  br i1 %tobool76.not.i.i, label %do.body74.i.i.err_delete.i_crit_edge, label %if.then77.i.i

do.body74.i.i.err_delete.i_crit_edge:             ; preds = %do.body74.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_delete.i

if.then77.i.i:                                    ; preds = %do.body74.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %62 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr @nfp_abm_u32_check_knode.__msg.6, ptr %26, align 4
  br label %err_delete.i

if.end82.i.i:                                     ; preds = %lor.lhs.false71.i.i
  %res.i.i = getelementptr inbounds %struct.tc_cls_u32_offload, ptr %type_data, i32 0, i32 2, i32 0, i32 1
  %63 = ptrtoint ptr %res.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %res.i.i, align 4
  %tobool83.not.i.i = icmp eq ptr %64, null
  br i1 %tobool83.not.i.i, label %if.end82.i.i.if.end112.i.i_crit_edge, label %land.lhs.true84.i.i

if.end82.i.i.if.end112.i.i_crit_edge:             ; preds = %if.end82.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end112.i.i

land.lhs.true84.i.i:                              ; preds = %if.end82.i.i
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %64, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool86.not.i.i = icmp eq i32 %66, 0
  br i1 %tobool86.not.i.i, label %land.lhs.true99.i.i, label %do.body88.i.i

do.body88.i.i:                                    ; preds = %land.lhs.true84.i.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nfp_abm_u32_check_knode.__msg.7) #5
  %tobool90.not.i.i = icmp eq ptr %26, null
  br i1 %tobool90.not.i.i, label %do.body88.i.i.err_delete.i_crit_edge, label %if.then91.i.i

do.body88.i.i.err_delete.i_crit_edge:             ; preds = %do.body88.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_delete.i

if.then91.i.i:                                    ; preds = %do.body88.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %67 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr @nfp_abm_u32_check_knode.__msg.7, ptr %26, align 4
  br label %err_delete.i

land.lhs.true99.i.i:                              ; preds = %land.lhs.true84.i.i
  %classid.i.i = getelementptr inbounds %struct.anon.153, ptr %64, i32 0, i32 1
  %68 = ptrtoint ptr %classid.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %classid.i.i, align 4
  %num_bands.i.i = getelementptr inbounds %struct.nfp_abm, ptr %28, i32 0, i32 4
  %70 = ptrtoint ptr %num_bands.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %num_bands.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %69, i32 %71)
  %cmp101.not.i.i = icmp ult i32 %69, %71
  br i1 %cmp101.not.i.i, label %land.lhs.true99.i.i.if.end112.i.i_crit_edge, label %do.body104.i.i

land.lhs.true99.i.i.if.end112.i.i_crit_edge:      ; preds = %land.lhs.true99.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end112.i.i

do.body104.i.i:                                   ; preds = %land.lhs.true99.i.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nfp_abm_u32_check_knode.__msg.8) #5
  %tobool106.not.i.i = icmp eq ptr %26, null
  br i1 %tobool106.not.i.i, label %do.body104.i.i.err_delete.i_crit_edge, label %if.then107.i.i

do.body104.i.i.err_delete.i_crit_edge:            ; preds = %do.body104.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_delete.i

if.then107.i.i:                                   ; preds = %do.body104.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %72 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr @nfp_abm_u32_check_knode.__msg.8, ptr %26, align 4
  br label %err_delete.i

if.end112.i.i:                                    ; preds = %land.lhs.true99.i.i.if.end112.i.i_crit_edge, %if.end82.i.i.if.end112.i.i_crit_edge
  %nkeys.i.i = getelementptr inbounds %struct.tc_u32_sel, ptr %38, i32 0, i32 2
  %73 = ptrtoint ptr %nkeys.i.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %nkeys.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %74)
  %cmp115.not.i.i = icmp eq i8 %74, 1
  br i1 %cmp115.not.i.i, label %if.end126.i.i, label %do.body118.i.i

do.body118.i.i:                                   ; preds = %if.end112.i.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nfp_abm_u32_check_knode.__msg.9) #5
  %tobool120.not.i.i = icmp eq ptr %26, null
  br i1 %tobool120.not.i.i, label %do.body118.i.i.err_delete.i_crit_edge, label %if.then121.i.i

do.body118.i.i.err_delete.i_crit_edge:            ; preds = %do.body118.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_delete.i

if.then121.i.i:                                   ; preds = %do.body118.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %75 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr @nfp_abm_u32_check_knode.__msg.9, ptr %26, align 4
  br label %err_delete.i

if.end126.i.i:                                    ; preds = %if.end112.i.i
  %76 = zext i16 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %76, ptr @__sancov_gen_cov_switch_values.20)
  switch i16 %16, label %do.body129.i.i [
    i16 2048, label %if.end126.i.i.sw.epilog.i.i_crit_edge
    i16 -31011, label %sw.bb128.i.i
  ]

if.end126.i.i.sw.epilog.i.i_crit_edge:            ; preds = %if.end126.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i.i

sw.bb128.i.i:                                     ; preds = %if.end126.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i.i

do.body129.i.i:                                   ; preds = %if.end126.i.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nfp_abm_u32_check_knode.__msg.10) #5
  %tobool131.not.i.i = icmp eq ptr %26, null
  br i1 %tobool131.not.i.i, label %do.body129.i.i.err_delete.i_crit_edge, label %if.then132.i.i

do.body129.i.i.err_delete.i_crit_edge:            ; preds = %do.body129.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_delete.i

if.then132.i.i:                                   ; preds = %do.body129.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %77 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr @nfp_abm_u32_check_knode.__msg.10, ptr %26, align 4
  br label %err_delete.i

sw.epilog.i.i:                                    ; preds = %sw.bb128.i.i, %if.end126.i.i.sw.epilog.i.i_crit_edge
  %tos_off.0.i.i = phi i32 [ 20, %sw.bb128.i.i ], [ 16, %if.end126.i.i.sw.epilog.i.i_crit_edge ]
  %keys.i.i = getelementptr inbounds %struct.tc_u32_sel, ptr %38, i32 0, i32 8
  %offmask138.i.i = getelementptr inbounds %struct.tc_u32_sel, ptr %38, i32 1, i32 7
  %78 = ptrtoint ptr %offmask138.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %offmask138.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %tobool139.not.i.i = icmp eq i32 %79, 0
  br i1 %tobool139.not.i.i, label %if.end149.i.i, label %do.body141.i.i

do.body141.i.i:                                   ; preds = %sw.epilog.i.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nfp_abm_u32_check_knode.__msg.11) #5
  %tobool143.not.i.i = icmp eq ptr %26, null
  br i1 %tobool143.not.i.i, label %do.body141.i.i.err_delete.i_crit_edge, label %if.then144.i.i

do.body141.i.i.err_delete.i_crit_edge:            ; preds = %do.body141.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_delete.i

if.then144.i.i:                                   ; preds = %do.body141.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %80 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr @nfp_abm_u32_check_knode.__msg.11, ptr %26, align 4
  br label %err_delete.i

if.end149.i.i:                                    ; preds = %sw.epilog.i.i
  %off150.i.i = getelementptr inbounds %struct.tc_u32_sel, ptr %38, i32 1, i32 5
  %81 = ptrtoint ptr %off150.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %off150.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool151.not.i.i = icmp eq i32 %82, 0
  br i1 %tobool151.not.i.i, label %if.end161.i.i, label %do.body153.i.i

do.body153.i.i:                                   ; preds = %if.end149.i.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nfp_abm_u32_check_knode.__msg.12) #5
  %tobool155.not.i.i = icmp eq ptr %26, null
  br i1 %tobool155.not.i.i, label %do.body153.i.i.err_delete.i_crit_edge, label %if.then156.i.i

do.body153.i.i.err_delete.i_crit_edge:            ; preds = %do.body153.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_delete.i

if.then156.i.i:                                   ; preds = %do.body153.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %83 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr @nfp_abm_u32_check_knode.__msg.12, ptr %26, align 4
  br label %err_delete.i

if.end161.i.i:                                    ; preds = %if.end149.i.i
  %val162.i.i = getelementptr inbounds %struct.tc_u32_sel, ptr %38, i32 1, i32 3
  %84 = ptrtoint ptr %val162.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %val162.i.i, align 4
  %86 = ptrtoint ptr %keys.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %keys.i.i, align 4
  %neg.i.i = xor i32 %87, -1
  %and.i.i = and i32 %85, %neg.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool164.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool164.not.i.i, label %if.end174.i.i, label %do.body166.i.i

do.body166.i.i:                                   ; preds = %if.end161.i.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nfp_abm_u32_check_knode.__msg.13) #5
  %tobool168.not.i.i = icmp eq ptr %26, null
  br i1 %tobool168.not.i.i, label %do.body166.i.i.err_delete.i_crit_edge, label %if.then169.i.i

do.body166.i.i.err_delete.i_crit_edge:            ; preds = %do.body166.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_delete.i

if.then169.i.i:                                   ; preds = %do.body166.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %88 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr @nfp_abm_u32_check_knode.__msg.13, ptr %26, align 4
  br label %err_delete.i

if.end174.i.i:                                    ; preds = %if.end161.i.i
  %shr.i.i = lshr i32 %87, %tos_off.0.i.i
  %dscp_mask.i.i = getelementptr inbounds %struct.nfp_abm, ptr %28, i32 0, i32 11
  %89 = ptrtoint ptr %dscp_mask.i.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %dscp_mask.i.i, align 4
  %conv176.i.i = zext i8 %90 to i32
  %neg177.i.i = xor i32 %conv176.i.i, -1
  %and178.i.i = and i32 %shr.i.i, %neg177.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and178.i.i)
  %tobool179.not.i.i = icmp eq i32 %and178.i.i, 0
  br i1 %tobool179.not.i.i, label %if.end.i49, label %do.body181.i.i

do.body181.i.i:                                   ; preds = %if.end174.i.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nfp_abm_u32_check_knode.__msg.14) #5
  %tobool183.not.i.i = icmp eq ptr %26, null
  br i1 %tobool183.not.i.i, label %do.body181.i.i.if.end186.i.i_crit_edge, label %if.then184.i.i

do.body181.i.i.if.end186.i.i_crit_edge:           ; preds = %do.body181.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end186.i.i

if.then184.i.i:                                   ; preds = %do.body181.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %91 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr @nfp_abm_u32_check_knode.__msg.14, ptr %26, align 4
  br label %if.end186.i.i

if.end186.i.i:                                    ; preds = %if.then184.i.i, %do.body181.i.i.if.end186.i.i_crit_edge
  %92 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %28, align 4
  %cpp.i.i = getelementptr inbounds %struct.nfp_app, ptr %93, i32 0, i32 2
  %94 = ptrtoint ptr %cpp.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %cpp.i.i, align 4
  %call192.i.i = tail call ptr @nfp_cpp_device(ptr noundef %95) #5
  %parent.i.i = getelementptr inbounds %struct.device, ptr %call192.i.i, i32 0, i32 1
  %96 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %parent.i.i, align 8
  %98 = ptrtoint ptr %keys.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %keys.i.i, align 4
  %shr194.i.i = lshr i32 %99, %tos_off.0.i.i
  %100 = ptrtoint ptr %dscp_mask.i.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %dscp_mask.i.i, align 4
  %conv196.i.i = zext i8 %101 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %97, ptr noundef nonnull @.str, i32 noundef %shr194.i.i, i32 noundef %conv196.i.i) #8
  br label %err_delete.i

if.end.i49:                                       ; preds = %if.end174.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %16)
  %cmp.i = icmp eq i16 %16, 2048
  %cond.i = select i1 %cmp.i, i32 16, i32 20
  %shr.i = lshr i32 %85, %cond.i
  %conv3.i = trunc i32 %shr.i to i8
  %shr8.i = lshr i32 %87, %cond.i
  %conv10.i = trunc i32 %shr8.i to i8
  %dscp_map.i = getelementptr inbounds %struct.nfp_abm_link, ptr %1, i32 0, i32 9
  %102 = ptrtoint ptr %dscp_map.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %.pn106.i = load ptr, ptr %dscp_map.i, align 4
  %cmp12.not107.i = icmp eq ptr %.pn106.i, %dscp_map.i
  br i1 %cmp12.not107.i, label %if.end.i49.if.then42.i_crit_edge, label %for.body.lr.ph.i

if.end.i49.if.then42.i_crit_edge:                 ; preds = %if.end.i49
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then42.i

for.body.lr.ph.i:                                 ; preds = %if.end.i49
  %handle14.i = getelementptr inbounds %struct.tc_cls_u32_offload, ptr %type_data, i32 0, i32 2, i32 0, i32 3
  %103 = ptrtoint ptr %handle14.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %handle14.i, align 4
  %classid.i = getelementptr inbounds %struct.anon.153, ptr %64, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %.pn109.i = phi ptr [ %.pn106.i, %for.body.lr.ph.i ], [ %.pn.i, %for.inc.i.for.body.i_crit_edge ]
  %match.0108.i = phi ptr [ null, %for.body.lr.ph.i ], [ %match.1.ph.i, %for.inc.i.for.body.i_crit_edge ]
  %iter.0.i = getelementptr i8, ptr %.pn109.i, i32 -12
  %105 = ptrtoint ptr %iter.0.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %iter.0.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %106, i32 %104)
  %cmp15.i = icmp eq i32 %106, %104
  br i1 %cmp15.i, label %for.body.i.for.inc.i_crit_edge, label %if.end18.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.end18.i:                                       ; preds = %for.body.i
  %mask19.i = getelementptr i8, ptr %.pn109.i, i32 -4
  %107 = ptrtoint ptr %mask19.i to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %mask19.i, align 4
  %conv20.i = zext i8 %108 to i32
  %and22.i = and i32 %shr8.i, %conv20.i
  %val23.i = getelementptr i8, ptr %.pn109.i, i32 -3
  %109 = ptrtoint ptr %val23.i to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %val23.i, align 1
  %conv24.i = zext i8 %110 to i32
  %111 = xor i32 %shr.i, %conv24.i
  %112 = and i32 %and22.i, %111
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %112)
  %cmp28.i = icmp eq i32 %112, 0
  br i1 %cmp28.i, label %land.lhs.true.i, label %if.end18.i.for.inc.i_crit_edge

if.end18.i.for.inc.i_crit_edge:                   ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %if.end18.i
  %band.i = getelementptr i8, ptr %.pn109.i, i32 -8
  %113 = ptrtoint ptr %band.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %band.i, align 4
  %115 = ptrtoint ptr %classid.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %classid.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %114, i32 %116)
  %cmp30.not.i = icmp eq i32 %114, %116
  br i1 %cmp30.not.i, label %land.lhs.true.i.for.inc.i_crit_edge, label %do.body.i51

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

do.body.i51:                                      ; preds = %land.lhs.true.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nfp_abm_u32_knode_replace.__msg) #5
  %tobool.not.i50 = icmp eq ptr %26, null
  br i1 %tobool.not.i50, label %do.body.i51.err_delete.i_crit_edge, label %if.then33.i

do.body.i51.err_delete.i_crit_edge:               ; preds = %do.body.i51
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_delete.i

if.then33.i:                                      ; preds = %do.body.i51
  call void @__sanitizer_cov_trace_pc() #7
  %117 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr @nfp_abm_u32_knode_replace.__msg, ptr %26, align 4
  br label %err_delete.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %if.end18.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %match.1.ph.i = phi ptr [ %match.0108.i, %if.end18.i.for.inc.i_crit_edge ], [ %match.0108.i, %land.lhs.true.i.for.inc.i_crit_edge ], [ %iter.0.i, %for.body.i.for.inc.i_crit_edge ]
  %118 = ptrtoint ptr %.pn109.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %.pn.i = load ptr, ptr %.pn109.i, align 4
  %cmp12.not.i = icmp eq ptr %.pn.i, %dscp_map.i
  br i1 %cmp12.not.i, label %for.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  %tobool41.not.i = icmp eq ptr %match.1.ph.i, null
  br i1 %tobool41.not.i, label %for.end.i.if.then42.i_crit_edge, label %for.end.i.if.end49.i_crit_edge

for.end.i.if.end49.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end49.i

for.end.i.if.then42.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then42.i

if.then42.i:                                      ; preds = %for.end.i.if.then42.i_crit_edge, %if.end.i49.if.then42.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %119 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %119, i32 noundef 3520, i32 noundef 20) #9
  %tobool44.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool44.not.i, label %if.then42.i.cleanup_crit_edge, label %if.end46.i

if.then42.i.cleanup_crit_edge:                    ; preds = %if.then42.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end46.i:                                       ; preds = %if.then42.i
  %list47.i = getelementptr inbounds %struct.nfp_abm_u32_match, ptr %call7.i.i.i, i32 0, i32 4
  %120 = ptrtoint ptr %dscp_map.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %dscp_map.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list47.i, ptr noundef %dscp_map.i, ptr noundef %121) #5
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end46.i.if.end49.i_crit_edge

if.end46.i.if.end49.i_crit_edge:                  ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end49.i

if.end.i.i.i:                                     ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #7
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %121, i32 0, i32 1
  %122 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr %list47.i, ptr %prev1.i.i.i, align 4
  %123 = ptrtoint ptr %list47.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr %121, ptr %list47.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.nfp_abm_u32_match, ptr %call7.i.i.i, i32 0, i32 4, i32 1
  %124 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr %dscp_map.i, ptr %prev3.i.i.i, align 8
  %125 = ptrtoint ptr %dscp_map.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store volatile ptr %list47.i, ptr %dscp_map.i, align 4
  br label %if.end49.i

if.end49.i:                                       ; preds = %if.end.i.i.i, %if.end46.i.if.end49.i_crit_edge, %for.end.i.if.end49.i_crit_edge
  %match.2.i = phi ptr [ %match.1.ph.i, %for.end.i.if.end49.i_crit_edge ], [ %call7.i.i.i, %if.end46.i.if.end49.i_crit_edge ], [ %call7.i.i.i, %if.end.i.i.i ]
  %handle50.i = getelementptr inbounds %struct.tc_cls_u32_offload, ptr %type_data, i32 0, i32 2, i32 0, i32 3
  %126 = ptrtoint ptr %handle50.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %handle50.i, align 4
  %128 = ptrtoint ptr %match.2.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %127, ptr %match.2.i, align 4
  %129 = ptrtoint ptr %res.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %res.i.i, align 4
  %classid53.i = getelementptr inbounds %struct.anon.153, ptr %130, i32 0, i32 1
  %131 = ptrtoint ptr %classid53.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %classid53.i, align 4
  %band54.i = getelementptr inbounds %struct.nfp_abm_u32_match, ptr %match.2.i, i32 0, i32 1
  %133 = ptrtoint ptr %band54.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %132, ptr %band54.i, align 4
  %mask55.i = getelementptr inbounds %struct.nfp_abm_u32_match, ptr %match.2.i, i32 0, i32 2
  %134 = ptrtoint ptr %mask55.i to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 %conv10.i, ptr %mask55.i, align 4
  %val56.i = getelementptr inbounds %struct.nfp_abm_u32_match, ptr %match.2.i, i32 0, i32 3
  %135 = ptrtoint ptr %val56.i to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 %conv3.i, ptr %val56.i, align 1
  %call57.i = tail call fastcc i32 @nfp_abm_update_band_map(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57.i)
  %tobool58.not.i = icmp eq i32 %call57.i, 0
  br i1 %tobool58.not.i, label %if.end49.i.cleanup_crit_edge, label %if.end49.i.err_delete.i_crit_edge

if.end49.i.err_delete.i_crit_edge:                ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_delete.i

if.end49.i.cleanup_crit_edge:                     ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

err_delete.i:                                     ; preds = %if.end49.i.err_delete.i_crit_edge, %if.then33.i, %do.body.i51.err_delete.i_crit_edge, %if.end186.i.i, %if.then169.i.i, %do.body166.i.i.err_delete.i_crit_edge, %if.then156.i.i, %do.body153.i.i.err_delete.i_crit_edge, %if.then144.i.i, %do.body141.i.i.err_delete.i_crit_edge, %if.then132.i.i, %do.body129.i.i.err_delete.i_crit_edge, %if.then121.i.i, %do.body118.i.i.err_delete.i_crit_edge, %if.then107.i.i, %do.body104.i.i.err_delete.i_crit_edge, %if.then91.i.i, %do.body88.i.i.err_delete.i_crit_edge, %if.then77.i.i, %do.body74.i.i.err_delete.i_crit_edge, %if.then64.i.i, %do.body61.i.i.err_delete.i_crit_edge, %if.then48.i.i, %do.body45.i.i.err_delete.i_crit_edge, %if.then21.i.i, %do.body18.i.i.err_delete.i_crit_edge, %if.then10.i.i, %do.body7.i.i.err_delete.i_crit_edge, %if.then3.i.i, %do.body.i.i48.err_delete.i_crit_edge
  %dscp_map.i.i = getelementptr inbounds %struct.nfp_abm_link, ptr %1, i32 0, i32 9
  %handle2.i.i = getelementptr inbounds %struct.tc_cls_u32_offload, ptr %type_data, i32 0, i32 2, i32 0, i32 3
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %err_delete.i
  %.pn.in.i.i = phi ptr [ %dscp_map.i.i, %err_delete.i ], [ %.pn.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %136 = ptrtoint ptr %.pn.in.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %.pn.i.i = load ptr, ptr %.pn.in.i.i, align 4
  %cmp.not.i98.i = icmp eq ptr %.pn.i.i, %dscp_map.i.i
  br i1 %cmp.not.i98.i, label %for.cond.i.i.cleanup_crit_edge, label %for.body.i.i

for.cond.i.i.cleanup_crit_edge:                   ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.i.i:                                     ; preds = %for.cond.i.i
  %iter.0.i.i = getelementptr i8, ptr %.pn.i.i, i32 -12
  %137 = ptrtoint ptr %iter.0.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %iter.0.i.i, align 4
  %139 = ptrtoint ptr %handle2.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %handle2.i.i, align 4
  %cmp3.i.i = icmp eq i32 %138, %140
  br i1 %cmp3.i.i, label %if.then.i.i, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  %iter.0.i.i.le = getelementptr i8, ptr %.pn.i.i, i32 -12
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.i.i) #5
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.then.i.i.list_del.exit.i.i_crit_edge

if.then.i.i.list_del.exit.i.i_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del.exit.i.i

if.end.i.i.i.i:                                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.i.i, i32 0, i32 1
  %141 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %prev.i.i.i.i, align 4
  %143 = ptrtoint ptr %.pn.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %.pn.i.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %144, i32 0, i32 1
  %145 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr %142, ptr %prev1.i.i.i.i.i, align 4
  %146 = ptrtoint ptr %142 to i32
  call void @__asan_store4_noabort(i32 %146)
  store volatile ptr %144, ptr %142, align 4
  br label %list_del.exit.i.i

list_del.exit.i.i:                                ; preds = %if.end.i.i.i.i, %if.then.i.i.list_del.exit.i.i_crit_edge
  %147 = ptrtoint ptr %.pn.i.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.i.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.i.i, i32 0, i32 1
  %148 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  tail call void @kfree(ptr noundef %iter.0.i.i.le) #5
  %call.i.i = tail call fastcc i32 @nfp_abm_update_band_map(ptr noundef %1) #5
  br label %cleanup

sw.bb31:                                          ; preds = %if.end25
  %dscp_map.i53 = getelementptr inbounds %struct.nfp_abm_link, ptr %1, i32 0, i32 9
  %handle2.i = getelementptr inbounds %struct.tc_cls_u32_offload, ptr %type_data, i32 0, i32 2, i32 0, i32 3
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i56.for.cond.i_crit_edge, %sw.bb31
  %.pn.in.i = phi ptr [ %dscp_map.i53, %sw.bb31 ], [ %.pn.i54, %for.body.i56.for.cond.i_crit_edge ]
  %149 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %.pn.i54 = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i54, %dscp_map.i53
  br i1 %cmp.not.i, label %for.cond.i.cleanup_crit_edge, label %for.body.i56

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.i56:                                     ; preds = %for.cond.i
  %iter.0.i55 = getelementptr i8, ptr %.pn.i54, i32 -12
  %150 = ptrtoint ptr %iter.0.i55 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %iter.0.i55, align 4
  %152 = ptrtoint ptr %handle2.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %handle2.i, align 4
  %cmp3.i = icmp eq i32 %151, %153
  br i1 %cmp3.i, label %if.then.i, label %for.body.i56.for.cond.i_crit_edge

for.body.i56.for.cond.i_crit_edge:                ; preds = %for.body.i56
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.i

if.then.i:                                        ; preds = %for.body.i56
  %iter.0.i55.le = getelementptr i8, ptr %.pn.i54, i32 -12
  %call.i.i.i57 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.i54) #5
  br i1 %call.i.i.i57, label %if.end.i.i.i59, label %if.then.i.list_del.exit.i_crit_edge

if.then.i.list_del.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del.exit.i

if.end.i.i.i59:                                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i.i58 = getelementptr inbounds %struct.list_head, ptr %.pn.i54, i32 0, i32 1
  %154 = ptrtoint ptr %prev.i.i.i58 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %prev.i.i.i58, align 4
  %156 = ptrtoint ptr %.pn.i54 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %.pn.i54, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %157, i32 0, i32 1
  %158 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store ptr %155, ptr %prev1.i.i.i.i, align 4
  %159 = ptrtoint ptr %155 to i32
  call void @__asan_store4_noabort(i32 %159)
  store volatile ptr %157, ptr %155, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i59, %if.then.i.list_del.exit.i_crit_edge
  %160 = ptrtoint ptr %.pn.i54 to i32
  call void @__asan_store4_noabort(i32 %160)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.i54, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.i54, i32 0, i32 1
  %161 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @kfree(ptr noundef %iter.0.i55.le) #5
  %call.i = tail call fastcc i32 @nfp_abm_update_band_map(ptr noundef %1) #5
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit.i, %for.cond.i.cleanup_crit_edge, %list_del.exit.i.i, %for.cond.i.i.cleanup_crit_edge, %if.end49.i.cleanup_crit_edge, %if.then42.i.cleanup_crit_edge, %if.end25.cleanup_crit_edge, %if.then20, %do.body15.cleanup_crit_edge, %if.then4.i, %do.body.i.cleanup_crit_edge, %if.then2.i.i, %do.body.i.i.cleanup_crit_edge, %if.then1, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %if.then1 ], [ -95, %do.body.cleanup_crit_edge ], [ -95, %if.then20 ], [ -95, %do.body15.cleanup_crit_edge ], [ -95, %if.end25.cleanup_crit_edge ], [ -12, %if.then42.i.cleanup_crit_edge ], [ 0, %if.end49.i.cleanup_crit_edge ], [ -95, %list_del.exit.i.i ], [ 0, %list_del.exit.i ], [ -95, %if.then4.i ], [ -95, %do.body.i.cleanup_crit_edge ], [ -95, %do.body.i.i.cleanup_crit_edge ], [ -95, %if.then2.i.i ], [ -95, %for.cond.i.i.cleanup_crit_edge ], [ 0, %for.cond.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nfp_abm_update_band_map(ptr noundef %alink) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %alink to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %alink, align 8
  %dscp_map = getelementptr inbounds %struct.nfp_abm_link, ptr %alink, i32 0, i32 9
  %2 = ptrtoint ptr %dscp_map to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %dscp_map, align 4
  %cmp.i = icmp ne ptr %3, %dscp_map
  %has_prio = getelementptr inbounds %struct.nfp_abm_link, ptr %alink, i32 0, i32 7
  %frombool = zext i1 %cmp.i to i8
  %4 = ptrtoint ptr %has_prio to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %frombool, ptr %has_prio, align 4
  %num_bands = getelementptr inbounds %struct.nfp_abm, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %num_bands to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num_bands, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp.i547 = icmp ugt i32 %6, 1
  %sub.i548 = add i32 %6, -1
  %7 = tail call i32 @llvm.ctlz.i32(i32 %sub.i548, i1 true) #5, !range !57
  %sub.i.op.i.i554 = xor i32 %7, 31
  %cond301 = select i1 %cmp.i547, i32 %sub.i.op.i.i554, i32 -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond301)
  %tobool.not.i.i.i = icmp eq i32 %cond301, 0
  %8 = tail call i32 @llvm.ctlz.i32(i32 %cond301, i1 true) #5, !range !57
  %sub.i.i.i = sub nuw nsw i32 32, %8
  %sub.i.i.op.i = shl nuw i32 1, %sub.i.i.i
  %shl.i = select i1 %tobool.not.i.i.i, i32 1, i32 %sub.i.i.op.i
  %notmask = shl nsw i32 -1, %shl.i
  %sub306 = xor i32 %notmask, -1
  %sub.i.i.i.op = lshr i32 32, %sub.i.i.i
  %div632 = select i1 %tobool.not.i.i.i, i32 32, i32 %sub.i.i.i.op
  %num_prios = getelementptr inbounds %struct.nfp_abm, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %num_prios to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_prios, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp.i565 = icmp ugt i32 %10, 1
  br i1 %cmp.i565, label %cond.end345thread-pre-split, label %entry.cond.end345_crit_edge

entry.cond.end345_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end345

cond.end345thread-pre-split:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %sub.i566 = add i32 %10, -1
  %11 = tail call i32 @llvm.ctlz.i32(i32 %sub.i566, i1 true) #5, !range !57
  %12 = ptrtoint ptr %num_prios to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pr = load i32, ptr %num_prios, align 4
  %phi.bo = add nsw i32 %11, -24
  br label %cond.end345

cond.end345:                                      ; preds = %cond.end345thread-pre-split, %entry.cond.end345_crit_edge
  %13 = phi i32 [ %.pr, %cond.end345thread-pre-split ], [ %10, %entry.cond.end345_crit_edge ]
  %cond346.neg = phi i32 [ %phi.bo, %cond.end345thread-pre-split ], [ 8, %entry.cond.end345_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp349613.not = icmp eq i32 %13, 0
  br i1 %cmp349613.not, label %cond.end345.for.end_crit_edge, label %for.body.lr.ph

cond.end345.for.end_crit_edge:                    ; preds = %cond.end345
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %cond.end345
  %prio_map = getelementptr inbounds %struct.nfp_abm_link, ptr %alink, i32 0, i32 6
  %def_band.i = getelementptr inbounds %struct.nfp_abm_link, ptr %alink, i32 0, i32 8
  %14 = add nsw i32 %div632, -1
  br label %for.body

for.body:                                         ; preds = %nfp_abm_find_band_for_prio.exit.for.body_crit_edge, %for.body.lr.ph
  %i.0614 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %nfp_abm_find_band_for_prio.exit.for.body_crit_edge ]
  %15 = ptrtoint ptr %prio_map to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prio_map, align 8
  %div351 = udiv i32 %i.0614, %div632
  %arrayidx = getelementptr i32, ptr %16, i32 %div351
  %rem = and i32 %i.0614, %14
  %mul = mul i32 %rem, %shl.i
  %shl352 = shl i32 %i.0614, %cond346.neg
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %for.body
  %.pn.in.i = phi ptr [ %dscp_map, %for.body ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %17 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %dscp_map
  br i1 %cmp.not.i, label %for.end.i, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %mask.i = getelementptr i8, ptr %.pn.i, i32 -4
  %18 = ptrtoint ptr %mask.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %mask.i, align 4
  %conv.i579 = zext i8 %19 to i32
  %and.i = and i32 %shl352, %conv.i579
  %val.i = getelementptr i8, ptr %.pn.i, i32 -3
  %20 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %val.i, align 1
  %conv2.i = zext i8 %21 to i32
  %cmp3.i580 = icmp eq i32 %and.i, %conv2.i
  br i1 %cmp3.i580, label %if.then.i, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %band.i = getelementptr i8, ptr %.pn.i, i32 -8
  %22 = ptrtoint ptr %band.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %band.i, align 4
  br label %nfp_abm_find_band_for_prio.exit

for.end.i:                                        ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %def_band.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %def_band.i, align 1
  %conv10.i = zext i8 %25 to i32
  br label %nfp_abm_find_band_for_prio.exit

nfp_abm_find_band_for_prio.exit:                  ; preds = %for.end.i, %if.then.i
  %retval.0.i = phi i32 [ %23, %if.then.i ], [ %conv10.i, %for.end.i ]
  %shl355 = shl i32 %sub306, %mul
  %neg = xor i32 %shl355, -1
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx, align 4
  %and = and i32 %27, %neg
  %conv356 = and i32 %retval.0.i, 255
  %shl357 = shl i32 %conv356, %mul
  %or = or i32 %and, %shl357
  store i32 %or, ptr %arrayidx, align 4
  %inc = add nuw i32 %i.0614, 1
  %28 = ptrtoint ptr %num_prios to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %num_prios, align 4
  %cmp349 = icmp ult i32 %inc, %29
  br i1 %cmp349, label %nfp_abm_find_band_for_prio.exit.for.body_crit_edge, label %nfp_abm_find_band_for_prio.exit.for.end_crit_edge

nfp_abm_find_band_for_prio.exit.for.end_crit_edge: ; preds = %nfp_abm_find_band_for_prio.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

nfp_abm_find_band_for_prio.exit.for.body_crit_edge: ; preds = %nfp_abm_find_band_for_prio.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %nfp_abm_find_band_for_prio.exit.for.end_crit_edge, %cond.end345.for.end_crit_edge
  tail call void @nfp_abm_qdisc_offload_update(ptr noundef %alink) #5
  %prio_map358 = getelementptr inbounds %struct.nfp_abm_link, ptr %alink, i32 0, i32 6
  %30 = ptrtoint ptr %prio_map358 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %prio_map358, align 8
  %call359 = tail call i32 @nfp_abm_ctrl_prio_map_update(ptr noundef %alink, ptr noundef %31) #5
  ret i32 %call359
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfp_cpp_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfp_abm_qdisc_offload_update(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_abm_ctrl_prio_map_update(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !43, !44, !45, !46, !47}
!llvm.module.flags = !{!48, !49, !50, !51, !52, !53, !54, !55}
!llvm.ident = !{!56}

!0 = !{ptr @nfp_abm_block_cb_list, !1, !"nfp_abm_block_cb_list", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/netronome/nfp/abm/cls.c", i32 265, i32 8}
!2 = !{ptr @nfp_abm_setup_tc_block_cb.__msg, !3, !"__msg", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/netronome/nfp/abm/cls.c", i32 237, i32 3}
!4 = !{ptr @nfp_abm_setup_tc_block_cb.__msg.1, !5, !"__msg", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/netronome/nfp/abm/cls.c", i32 246, i32 3}
!6 = !{ptr @tc_cls_can_offload_and_chain0.__msg, !7, !"__msg", i1 false, i1 false}
!7 = !{!"../include/net/pkt_cls.h", i32 676, i32 3}
!8 = !{ptr @tc_can_offload_extack.__msg, !9, !"__msg", i1 false, i1 false}
!9 = !{!"../include/net/pkt_cls.h", i32 664, i32 3}
!10 = !{ptr @nfp_abm_u32_knode_replace.__msg, !11, !"__msg", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/netronome/nfp/abm/cls.c", i32 200, i32 4}
!12 = !{ptr @nfp_abm_u32_check_knode.__msg, !13, !"__msg", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/netronome/nfp/abm/cls.c", i32 28, i32 3}
!14 = !{ptr @nfp_abm_u32_check_knode.__msg.2, !15, !"__msg", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/netronome/nfp/abm/cls.c", i32 32, i32 3}
!16 = !{ptr @nfp_abm_u32_check_knode.__msg.3, !17, !"__msg", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/netronome/nfp/abm/cls.c", i32 36, i32 3}
!18 = !{ptr @nfp_abm_u32_check_knode.__msg.4, !19, !"__msg", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/netronome/nfp/abm/cls.c", i32 42, i32 3}
!20 = !{ptr @nfp_abm_u32_check_knode.__msg.5, !21, !"__msg", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/netronome/nfp/abm/cls.c", i32 46, i32 3}
!22 = !{ptr @nfp_abm_u32_check_knode.__msg.6, !23, !"__msg", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/netronome/nfp/abm/cls.c", i32 50, i32 3}
!24 = !{ptr @nfp_abm_u32_check_knode.__msg.7, !25, !"__msg", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/netronome/nfp/abm/cls.c", i32 54, i32 3}
!26 = !{ptr @nfp_abm_u32_check_knode.__msg.8, !27, !"__msg", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/netronome/nfp/abm/cls.c", i32 58, i32 3}
!28 = !{ptr @nfp_abm_u32_check_knode.__msg.9, !29, !"__msg", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/netronome/nfp/abm/cls.c", i32 63, i32 3}
!30 = !{ptr @nfp_abm_u32_check_knode.__msg.10, !31, !"__msg", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/netronome/nfp/abm/cls.c", i32 75, i32 3}
!32 = !{ptr @nfp_abm_u32_check_knode.__msg.11, !33, !"__msg", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/netronome/nfp/abm/cls.c", i32 81, i32 3}
!34 = !{ptr @nfp_abm_u32_check_knode.__msg.12, !35, !"__msg", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/netronome/nfp/abm/cls.c", i32 85, i32 3}
!36 = !{ptr @nfp_abm_u32_check_knode.__msg.13, !37, !"__msg", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/netronome/nfp/abm/cls.c", i32 89, i32 3}
!38 = !{ptr @nfp_abm_u32_check_knode.__msg.14, !39, !"__msg", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/netronome/nfp/abm/cls.c", i32 93, i32 3}
!40 = !{ptr @.str, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/netronome/nfp/abm/cls.c", i32 94, i32 3}
!42 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @nfp_abm_u32_check_knode._entry, !41, !"_entry", i1 false, i1 false}
!47 = !{ptr @nfp_abm_u32_check_knode._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!48 = !{i32 1, !"wchar_size", i32 2}
!49 = !{i32 1, !"min_enum_size", i32 4}
!50 = !{i32 8, !"branch-target-enforcement", i32 0}
!51 = !{i32 8, !"sign-return-address", i32 0}
!52 = !{i32 8, !"sign-return-address-all", i32 0}
!53 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!54 = !{i32 7, !"uwtable", i32 1}
!55 = !{i32 7, !"frame-pointer", i32 2}
!56 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!57 = !{i32 0, i32 33}
