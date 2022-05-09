; ModuleID = '/llk/IR_all_yes/drivers/staging/qlge/qlge_mpi.c_pt.bc'
source_filename = "../drivers/staging/qlge/qlge_mpi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.qlge_adapter = type { %struct.ricb, i32, i32, %struct.nic_stats, [128 x i32], ptr, ptr, ptr, i32, i32, i32, i32, i32, %struct.spinlock, %struct.spinlock, ptr, ptr, i32, i32, ptr, i32, ptr, i32, i32, i32, %struct.mbox_params, %struct.mutex, i32, i32, i32, ptr, [17 x %struct.intr_context], i32, i32, i32, i32, ptr, [17 x %struct.rx_ring], [8 x %struct.tx_ring], i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, ptr, i32, i32, i32, %union.flash_params, ptr, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.completion, ptr, i16, %struct.timer_list, %struct.atomic_t, [6 x i8] }
%struct.ricb = type { i8, i8, i16, [1024 x i8], [10 x i32], [4 x i32] }
%struct.nic_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mbox_params = type { [16 x i32], [16 x i32], i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.intr_context = type { ptr, i32, i32, i32, i32, i32, i32, [32 x i8], ptr }
%struct.rx_ring = type { %struct.cqicb, ptr, i32, i32, i32, i16, ptr, i32, ptr, i32, ptr, ptr, %struct.qlge_bq, %struct.qlge_page_chunk, i32, %struct.qlge_bq, i32, i32, %struct.delayed_work, [21 x i8], %struct.napi_struct, i8, ptr, i64, i64, i64, i64, i64 }
%struct.cqicb = type <{ i8, i8, i8, i8, i16, i16, i64, i64, i16, i16, i64, i16, i16, i64, i16, i16 }>
%struct.qlge_page_chunk = type { ptr, ptr, i32 }
%struct.qlge_bq = type { ptr, i32, ptr, i32, ptr, ptr, i16, i16, i32 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.tx_ring = type { %struct.wqicb, ptr, i32, ptr, i32, i32, i32, ptr, ptr, i16, i16, i8, [3 x i8], ptr, %struct.spinlock, %struct.atomic_t, %struct.delayed_work, ptr, i64, i64, i64 }
%struct.wqicb = type { i16, i16, i16, i16, i64, i64 }
%union.flash_params = type { %struct.flash_params_8000 }
%struct.flash_params_8000 = type { [4 x i8], i16, i16, i16, i16, i16, i16, i8, i8, [6 x i8], i8, i8, [6 x i8], i8, i8, i16, i8, i8, i16, [464 x i8], i16, i16, [4 x i8] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.99, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.99 = type { ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.100, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.114, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.100 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.114 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }

@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed about firmware command\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed Get Firmware State.\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Firmware waiting for initialization.\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Port Config sent, wait for IDC.\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed Set Port Configuration.\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed Get Port Configuration.\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Passed Get Port Configuration.\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to set WOL mode.\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to set LED Configuration.\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to get LED Configuration.\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Command not supported by firmware.\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Command parameters make no change.\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Bug: Failed to get port config data.\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Bug: Failed to set port config data.\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Bug: Unhandled IDC action.\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Bug: No pending IDC!\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"IDC ACK not required\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Don't own firmware!\0A\00", [43 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.19 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Timed out waiting for mailbox complete.\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to dump risc RAM.\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to get MPI traffic control.\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"IDC Timeout.\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"IDC Time Extension from function.\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"IDC Success.\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"IDC: Invalid State 0x%.04x.\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Failed IDC ACK send.\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Could not read MPI, resetting ASIC!\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Firmware initialization failed.\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"System Error.\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Unsupported AE %.08x.\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Failed mailbox read.\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Enter!\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Could not read MPI, resetting RISC!\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: Could not get mailbox status.\0A\00", [61 x i8] zeroinitializer }, align 32
@__func__.qlge_link_up = private unnamed_addr constant [13 x i8] c"qlge_link_up\00", align 1
@.str.35 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Link Up.\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to init CAM/Routing tables.\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Queue Port Config Worker!\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Link down AEN broken!\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Firmware did not initialize!\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Firmware Revision  = 0x%.08x.\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"SFP in AEN broken!\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"SFP insertion detected.\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"SFP out AEN broken!\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"SFP removal detected.\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Lost AEN broken!\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Lost AEN detected.\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mbox_out[%d] = 0x%.08x.\0A\00", [39 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 4096, i64 16384]
@__sancov_gen_cov_switch_values.48 = internal global [4 x i64] [i64 2, i64 32, i64 4096, i64 16384]
@__sancov_gen_cov_switch_values.49 = internal global [4 x i64] [i64 2, i64 32, i64 16385, i64 16389]
@__sancov_gen_cov_switch_values.50 = internal global [5 x i64] [i64 3, i64 32, i64 16384, i64 16385, i64 16389]
@__sancov_gen_cov_switch_values.51 = internal global [4 x i64] [i64 2, i64 32, i64 4096, i64 16384]
@__sancov_gen_cov_switch_values.52 = internal global [4 x i64] [i64 2, i64 32, i64 33024, i64 33026]
@__sancov_gen_cov_switch_values.53 = internal global [13 x i64] [i64 11, i64 16, i64 0, i64 1, i64 2, i64 16, i64 20, i64 256, i64 257, i64 258, i64 259, i64 288, i64 290]
@__sancov_gen_cov_switch_values.54 = internal global [21 x i64] [i64 19, i64 32, i64 4096, i64 16384, i64 16385, i64 16386, i64 16387, i64 16389, i64 16390, i64 32770, i64 32785, i64 32786, i64 33024, i64 33025, i64 33026, i64 33040, i64 33056, i64 33072, i64 33073, i64 33792, i64 33793]
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 630, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 662, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 672, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 735, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 738, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 823, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 827, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 854, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 969, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 995, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 1026, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 1034, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 1123, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 1136, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 1168, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 1185, i32 5 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 1188, i32 4 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 1268, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 583, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 772, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 1069, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 923, i32 4 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 931, i32 4 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 935, i32 4 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 939, i32 4 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 705, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 399, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 488, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 495, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 508, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 134, i32 4 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 207, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 239, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 259, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 265, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 273, i32 4 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 285, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 307, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 371, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 373, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 320, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 322, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 335, i32 3 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 337, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 350, i32 3 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 354, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.197 = private constant [35 x i8] c"../drivers/staging/qlge/qlge_mpi.c\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 356, i32 4 }
@llvm.compiler.used = appending global [48 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47], section "llvm.metadata"
@0 = internal global [48 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qlge_unpause_mpi_risc(ptr nocapture noundef readonly %qdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_base.i = getelementptr inbounds %struct.qlge_adapter, ptr %qdev, i32 0, i32 15
  %0 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_base.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 20
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !106
  %3 = and i32 %2, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !107
  tail call void @arm_heavy_mb() #5
  %4 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_base.i, align 8
  %add.ptr.i3 = getelementptr i8, ptr %5, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3, i32 64) #5, !srcloc !108
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -5, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qlge_pause_mpi_risc(ptr nocapture noundef readonly %qdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !107
  tail call void @arm_heavy_mb() #5
  %reg_base.i = getelementptr inbounds %struct.qlge_adapter, ptr %qdev, i32 0, i32 15
  %0 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_base.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 48) #5, !srcloc !108
  %2 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg_base.i, align 8
  %add.ptr.i8 = getelementptr i8, ptr %3, i32 20
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i8) #5, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !106
  %5 = and i32 %4, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool1.not = icmp eq i32 %5, 0
  br i1 %tobool1.not, label %entry.while.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %__ms.09 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ 100, %entry.while.body_crit_edge ]
  %dec = add nsw i32 %__ms.09, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 214748000) #5
  %tobool2.not = icmp eq i32 %dec, 0
  br i1 %tobool2.not, label %while.end, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.end:                                        ; preds = %while.body
  %7 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reg_base.i, align 8
  %add.ptr.i8.1 = getelementptr i8, ptr %8, i32 20
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i8.1) #5, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !106
  %10 = and i32 %9, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool1.not.1 = icmp eq i32 %10, 0
  br i1 %tobool1.not.1, label %while.end.while.body.1_crit_edge, label %while.end.for.end_crit_edge

while.end.for.end_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

while.end.while.body.1_crit_edge:                 ; preds = %while.end
  br label %while.body.1

while.body.1:                                     ; preds = %while.body.1.while.body.1_crit_edge, %while.end.while.body.1_crit_edge
  %__ms.09.1 = phi i32 [ %dec.1, %while.body.1.while.body.1_crit_edge ], [ 100, %while.end.while.body.1_crit_edge ]
  %dec.1 = add nsw i32 %__ms.09.1, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 214748000) #5
  %tobool2.not.1 = icmp eq i32 %dec.1, 0
  br i1 %tobool2.not.1, label %while.end.1, label %while.body.1.while.body.1_crit_edge

while.body.1.while.body.1_crit_edge:              ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.1

while.end.1:                                      ; preds = %while.body.1
  %12 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reg_base.i, align 8
  %add.ptr.i8.2 = getelementptr i8, ptr %13, i32 20
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i8.2) #5, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !106
  %15 = and i32 %14, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool1.not.2 = icmp eq i32 %15, 0
  br i1 %tobool1.not.2, label %while.end.1.while.body.2_crit_edge, label %while.end.1.for.end_crit_edge

while.end.1.for.end_crit_edge:                    ; preds = %while.end.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

while.end.1.while.body.2_crit_edge:               ; preds = %while.end.1
  br label %while.body.2

while.body.2:                                     ; preds = %while.body.2.while.body.2_crit_edge, %while.end.1.while.body.2_crit_edge
  %__ms.09.2 = phi i32 [ %dec.2, %while.body.2.while.body.2_crit_edge ], [ 100, %while.end.1.while.body.2_crit_edge ]
  %dec.2 = add nsw i32 %__ms.09.2, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 214748000) #5
  %tobool2.not.2 = icmp eq i32 %dec.2, 0
  br i1 %tobool2.not.2, label %while.body.2.for.end_crit_edge, label %while.body.2.while.body.2_crit_edge

while.body.2.while.body.2_crit_edge:              ; preds = %while.body.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.2

while.body.2.for.end_crit_edge:                   ; preds = %while.body.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %while.body.2.for.end_crit_edge, %while.end.1.for.end_crit_edge, %while.end.for.end_crit_edge, %entry.for.end_crit_edge
  %cond = phi i32 [ 0, %entry.for.end_crit_edge ], [ 0, %while.end.for.end_crit_edge ], [ 0, %while.end.1.for.end_crit_edge ], [ -110, %while.body.2.for.end_crit_edge ]
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qlge_hard_reset_mpi_risc(ptr nocapture noundef readonly %qdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !107
  tail call void @arm_heavy_mb() #5
  %reg_base.i = getelementptr inbounds %struct.qlge_adapter, ptr %qdev, i32 0, i32 15
  %0 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_base.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 16) #5, !srcloc !108
  %2 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg_base.i, align 8
  %add.ptr.i9 = getelementptr i8, ptr %3, i32 20
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i9) #5, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !106
  %5 = and i32 %4, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool1.not = icmp eq i32 %5, 0
  br i1 %tobool1.not, label %entry.while.body_crit_edge, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

if.then:                                          ; preds = %while.end.1.if.then_crit_edge, %while.end.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !107
  tail call void @arm_heavy_mb() #5
  %6 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg_base.i, align 8
  %add.ptr.i11 = getelementptr i8, ptr %7, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11, i32 32) #5, !srcloc !108
  br label %for.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %__ms.012 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ 100, %entry.while.body_crit_edge ]
  %dec = add nsw i32 %__ms.012, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748000) #5
  %tobool2.not = icmp eq i32 %dec, 0
  br i1 %tobool2.not, label %while.end, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.end:                                        ; preds = %while.body
  %9 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %reg_base.i, align 8
  %add.ptr.i9.1 = getelementptr i8, ptr %10, i32 20
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i9.1) #5, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !106
  %12 = and i32 %11, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool1.not.1 = icmp eq i32 %12, 0
  br i1 %tobool1.not.1, label %while.end.while.body.1_crit_edge, label %while.end.if.then_crit_edge

while.end.if.then_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

while.end.while.body.1_crit_edge:                 ; preds = %while.end
  br label %while.body.1

while.body.1:                                     ; preds = %while.body.1.while.body.1_crit_edge, %while.end.while.body.1_crit_edge
  %__ms.012.1 = phi i32 [ %dec.1, %while.body.1.while.body.1_crit_edge ], [ 100, %while.end.while.body.1_crit_edge ]
  %dec.1 = add nsw i32 %__ms.012.1, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 214748000) #5
  %tobool2.not.1 = icmp eq i32 %dec.1, 0
  br i1 %tobool2.not.1, label %while.end.1, label %while.body.1.while.body.1_crit_edge

while.body.1.while.body.1_crit_edge:              ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.1

while.end.1:                                      ; preds = %while.body.1
  %14 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %reg_base.i, align 8
  %add.ptr.i9.2 = getelementptr i8, ptr %15, i32 20
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i9.2) #5, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !106
  %17 = and i32 %16, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool1.not.2 = icmp eq i32 %17, 0
  br i1 %tobool1.not.2, label %while.end.1.while.body.2_crit_edge, label %while.end.1.if.then_crit_edge

while.end.1.if.then_crit_edge:                    ; preds = %while.end.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

while.end.1.while.body.2_crit_edge:               ; preds = %while.end.1
  br label %while.body.2

while.body.2:                                     ; preds = %while.body.2.while.body.2_crit_edge, %while.end.1.while.body.2_crit_edge
  %__ms.012.2 = phi i32 [ %dec.2, %while.body.2.while.body.2_crit_edge ], [ 100, %while.end.1.while.body.2_crit_edge ]
  %dec.2 = add nsw i32 %__ms.012.2, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 214748000) #5
  %tobool2.not.2 = icmp eq i32 %dec.2, 0
  br i1 %tobool2.not.2, label %while.body.2.for.end_crit_edge, label %while.body.2.while.body.2_crit_edge

while.body.2.while.body.2_crit_edge:              ; preds = %while.body.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.2

while.body.2.for.end_crit_edge:                   ; preds = %while.body.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %while.body.2.for.end_crit_edge, %if.then
  %cond = phi i32 [ 0, %if.then ], [ -110, %while.body.2.for.end_crit_edge ]
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qlge_read_mpi_reg(ptr noundef %qdev, i32 noundef %reg, ptr nocapture noundef writeonly %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @qlge_wait_reg_rdy(ptr noundef %qdev, i32 noundef 0, i32 noundef -2147483648, i32 noundef 536870912) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.exit_crit_edge

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit

if.end:                                           ; preds = %entry
  %or = or i32 %reg, 1073741824
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !107
  tail call void @arm_heavy_mb() #5
  %0 = tail call i32 @llvm.bswap.i32(i32 %or) #5
  %reg_base.i = getelementptr inbounds %struct.qlge_adapter, ptr %qdev, i32 0, i32 15
  %1 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %reg_base.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2, i32 %0) #5, !srcloc !108
  %call1 = tail call i32 @qlge_wait_reg_rdy(ptr noundef %qdev, i32 noundef 0, i32 noundef -2147483648, i32 noundef 536870912) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.exit_crit_edge

if.end.exit_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %3 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %reg_base.i, align 8
  %add.ptr.i = getelementptr i8, ptr %4, i32 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !105
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !106
  %7 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %data, align 4
  br label %exit

exit:                                             ; preds = %if.end4, %if.end.exit_crit_edge, %entry.exit_crit_edge
  %status.0 = phi i32 [ %call, %entry.exit_crit_edge ], [ %call1, %if.end.exit_crit_edge ], [ 0, %if.end4 ]
  ret i32 %status.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qlge_wait_reg_rdy(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qlge_write_mpi_reg(ptr noundef %qdev, i32 noundef %reg, i32 noundef %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @qlge_wait_reg_rdy(ptr noundef %qdev, i32 noundef 0, i32 noundef -2147483648, i32 noundef 536870912) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.exit_crit_edge

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !107
  tail call void @arm_heavy_mb() #5
  %0 = tail call i32 @llvm.bswap.i32(i32 %data) #5
  %reg_base.i = getelementptr inbounds %struct.qlge_adapter, ptr %qdev, i32 0, i32 15
  %1 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %reg_base.i, align 8
  %add.ptr.i = getelementptr i8, ptr %2, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %0) #5, !srcloc !108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !107
  tail call void @arm_heavy_mb() #5
  %3 = tail call i32 @llvm.bswap.i32(i32 %reg) #5
  %4 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_base.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %3) #5, !srcloc !108
  %call1 = tail call i32 @qlge_wait_reg_rdy(ptr noundef %qdev, i32 noundef 0, i32 noundef -2147483648, i32 noundef 536870912) #5
  br label %exit

exit:                                             ; preds = %if.end, %entry.exit_crit_edge
  %status.0 = phi i32 [ %call, %entry.exit_crit_edge ], [ %call1, %if.end ]
  ret i32 %status.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qlge_soft_reset_mpi_risc(ptr noundef %qdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @qlge_wait_reg_rdy(ptr noundef %qdev, i32 noundef 0, i32 noundef -2147483648, i32 noundef 536870912) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.qlge_write_mpi_reg.exit_crit_edge

entry.qlge_write_mpi_reg.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %qlge_write_mpi_reg.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !107
  tail call void @arm_heavy_mb() #5
  %reg_base.i.i = getelementptr inbounds %struct.qlge_adapter, ptr %qdev, i32 0, i32 15
  %0 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_base.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 16777216) #5, !srcloc !108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !107
  tail call void @arm_heavy_mb() #5
  %2 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg_base.i.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 269484032) #5, !srcloc !108
  %call1.i = tail call i32 @qlge_wait_reg_rdy(ptr noundef %qdev, i32 noundef 0, i32 noundef -2147483648, i32 noundef 536870912) #5
  br label %qlge_write_mpi_reg.exit

qlge_write_mpi_reg.exit:                          ; preds = %if.end.i, %entry.qlge_write_mpi_reg.exit_crit_edge
  %status.0.i = phi i32 [ %call.i, %entry.qlge_write_mpi_reg.exit_crit_edge ], [ %call1.i, %if.end.i ]
  ret i32 %status.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qlge_own_firmware(ptr nocapture noundef readonly %qdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %func = getelementptr inbounds %struct.qlge_adapter, ptr %qdev, i32 0, i32 10
  %0 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %func, align 4
  %alt_func = getelementptr inbounds %struct.qlge_adapter, ptr %qdev, i32 0, i32 11
  %2 = ptrtoint ptr %alt_func to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %alt_func, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp = icmp ult i32 %1, %3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %reg_base.i = getelementptr inbounds %struct.qlge_adapter, ptr %qdev, i32 0, i32 15
  %4 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_base.i, align 8
  %add.ptr.i = getelementptr i8, ptr %5, i32 48
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !106
  %7 = ptrtoint ptr %alt_func to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %alt_func, align 8
  %add = add i32 %8, 8
  %9 = xor i32 %6, -1
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %11 = lshr i32 %10, %add
  %12 = and i32 %11, 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ %12, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qlge_mb_about_fw(ptr noundef %qdev) local_unnamed_addr #0 align 64 {
entry:
  %mbc = alloca %struct.mbox_params, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %mbc) #5
  %0 = getelementptr inbounds i8, ptr %mbc, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 124)
  %in_count = getelementptr inbounds %struct.mbox_params, ptr %mbc, i32 0, i32 2
  %2 = ptrtoint ptr %in_count to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %in_count, align 4
  %out_count = getelementptr inbounds %struct.mbox_params, ptr %mbc, i32 0, i32 3
  %3 = ptrtoint ptr %out_count to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 3, ptr %out_count, align 4
  %4 = ptrtoint ptr %mbc to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 8, ptr %mbc, align 4
  %call = call fastcc i32 @qlge_mailbox_command(ptr noundef %qdev, ptr noundef nonnull %mbc)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %mbox_out = getelementptr inbounds %struct.mbox_params, ptr %mbc, i32 0, i32 1
  %5 = ptrtoint ptr %mbox_out to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mbox_out, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %6)
  %cmp.not = icmp eq i32 %6, 16384
  br i1 %cmp.not, label %if.end.if.end6_crit_edge, label %do.body

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

do.body:                                          ; preds = %if.end
  %msg_enable = getelementptr inbounds %struct.qlge_adapter, ptr %qdev, i32 0, i32 18
  %7 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %msg_enable, align 4
  %and = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %do.body.if.end6_crit_edge, label %if.then4

do.body.if.end6_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %ndev = getelementptr inbounds %struct.qlge_adapter, ptr %qdev, i32 0, i32 6
  %9 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ndev, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %10, ptr noundef nonnull @.str) #8
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %do.body.if.end6_crit_edge, %if.end.if.end6_crit_edge
  %status.0 = phi i32 [ 0, %if.end.if.end6_crit_edge ], [ -5, %if.then4 ], [ -5, %do.body.if.end6_crit_edge ]
  %arrayidx8 = getelementptr inbounds %struct.mbox_params, ptr %mbc, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx8, align 4
  %fw_rev_id = getelementptr inbounds %struct.qlge_adapter, ptr %qdev, i32 0, i32 9
  %13 = ptrtoint ptr %fw_rev_id to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %fw_rev_id, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %status.0, %if.end6 ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %mbc) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qlge_mailbox_command(ptr noundef %qdev, ptr nocapture noundef %mbcp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mpi_mutex = getelementptr inbounds %struct.qlge_adapter, ptr %qdev, i32 0, i32 26
  tail call void @mutex_lock_nested(ptr noundef %mpi_mutex, i32 noundef 0) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !107
  tail call void @arm_heavy_mb() #5
  %reg_base.i = getelementptr inbounds %struct.qlge_adapter, ptr %qdev, i32 0, i32 15
  %0 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_base.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 256) #5, !srcloc !108
  %2 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg_base.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 20
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !106
  %5 = and i32 %4, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.end_crit_edge

entry.end_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %end

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @qlge_sem_spinlock(ptr noundef %qdev, i32 noundef -1073741824) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %for.cond.preheader.i, label %if.end.i.end_crit_edge

if.end.i.end_crit_edge:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %end

for.cond.preheader.i:                             ; preds = %if.end.i
  %in_count.i = getelementptr inbounds %struct.mbox_params, ptr %mbcp, i32 0, i32 2
  %6 = ptrtoint ptr %in_count.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %in_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp26.i = icmp sgt i32 %7, 0
  br i1 %cmp26.i, label %for.body.lr.ph.i, label %for.cond.preheader.i.if.end_crit_edge

for.cond.preheader.i.if.end_crit_edge:            ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %mailbox_in.i = getelementptr inbounds %struct.qlge_adapter, ptr %qdev, i32 0, i32 23
  br label %for.body.i

for.cond.i:                                       ; preds = %qlge_write_mpi_reg.exit.i
  %inc.i = add nuw nsw i32 %i.027.i, 1
  %8 = ptrtoint ptr %in_count.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %in_count.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %9
  br i1 %cmp.i, label %for.cond.i.for.body.i_crit_edge, label %for.cond.i.if.end_crit_edge

for.cond.i.if.end_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.027.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %10 = ptrtoint ptr %mailbox_in.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mailbox_in.i, align 8
  %arrayidx.i = getelementptr [16 x i32], ptr %mbcp, i32 0, i32 %i.027.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i, align 4
  %call.i.i = tail call i32 @qlge_wait_reg_rdy(ptr noundef %qdev, i32 noundef 0, i32 noundef -2147483648, i32 noundef 536870912) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %qlge_write_mpi_reg.exit.i, label %for.body.i.qlge_exec_mb_cmd.exit.thread69_crit_edge

for.body.i.qlge_exec_mb_cmd.exit.thread69_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %qlge_exec_mb_cmd.exit.thread69

qlge_write_mpi_reg.exit.i:                        ; preds = %for.body.i
  %add.i = add i32 %11, %i.027.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !107
  tail call void @arm_heavy_mb() #5
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #5
  %15 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %reg_base.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %16, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %14) #5, !srcloc !108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !107
  tail call void @arm_heavy_mb() #5
  %17 = tail call i32 @llvm.bswap.i32(i32 %add.i) #5
  %18 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %reg_base.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %17) #5, !srcloc !108
  %call1.i.i = tail call i32 @qlge_wait_reg_rdy(ptr noundef %qdev, i32 noundef 0, i32 noundef -2147483648, i32 noundef 536870912) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool6.not.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool6.not.i, label %for.cond.i, label %qlge_write_mpi_reg.exit.i.qlge_exec_mb_cmd.exit.thread69_crit_edge

qlge_write_mpi_reg.exit.i.qlge_exec_mb_cmd.exit.thread69_crit_edge: ; preds = %qlge_write_mpi_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %qlge_exec_mb_cmd.exit.thread69

qlge_exec_mb_cmd.exit.thread69:                   ; preds = %qlge_write_mpi_reg.exit.i.qlge_exec_mb_cmd.exit.thread69_crit_edge, %for.body.i.qlge_exec_mb_cmd.exit.thread69_crit_edge
  %status.1.i.ph = phi i32 [ %call1.i.i, %qlge_write_mpi_reg.exit.i.qlge_exec_mb_cmd.exit.thread69_crit_edge ], [ %call.i.i, %for.body.i.qlge_exec_mb_cmd.exit.thread69_crit_edge ]
  tail call void @qlge_sem_unlock(ptr noundef %qdev, i32 noundef -1073741824) #5
  br label %end

if.end:                                           ; preds = %for.cond.i.if.end_crit_edge, %for.cond.preheader.i.if.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !107
  tail call void @arm_heavy_mb() #5
  %20 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %reg_base.i, align 8
  %add.ptr.i23.i = getelementptr i8, ptr %21, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i23.i, i32 80) #5, !srcloc !108
  tail call void @qlge_sem_unlock(ptr noundef %qdev, i32 noundef -1073741824) #5
  %22 = ptrtoint ptr %mbcp to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %mbcp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 42, i32 %23)
  %cmp = icmp eq i32 %23, 42
  br i1 %cmp, label %if.end.end_crit_edge, label %if.end2

if.end.end_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %end

if.end2:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %24 = load volatile i32, ptr @jiffies, align 128
  %mbox_out = getelementptr inbounds %struct.mbox_params, ptr %mbcp, i32 0, i32 1
  %add.neg = sub i32 -500, %24
  br label %for.body.i58

for.body.i58:                                     ; preds = %for.body.i58.backedge, %if.end2
  %count.07.i = phi i32 [ 100, %if.end2 ], [ %count.07.i.be, %for.body.i58.backedge ]
  %25 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %reg_base.i, align 8
  %add.ptr.i.i57 = getelementptr i8, ptr %26, i32 48
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i57) #5, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !106
  %28 = and i32 %27, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool1.not.i = icmp eq i32 %28, 0
  br i1 %tobool1.not.i, label %for.body.i58.while.body.i_crit_edge, label %if.end6

for.body.i58.while.body.i_crit_edge:              ; preds = %for.body.i58
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %for.body.i58.while.body.i_crit_edge
  %__ms.06.i = phi i32 [ %dec.i, %while.body.i.while.body.i_crit_edge ], [ 100, %for.body.i58.while.body.i_crit_edge ]
  %dec.i = add nsw i32 %__ms.06.i, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 214748000) #5
  %tobool2.not.i59 = icmp eq i32 %dec.i, 0
  br i1 %tobool2.not.i59, label %while.end.i, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

while.end.i:                                      ; preds = %while.body.i
  %dec3.i = add nsw i32 %count.07.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec3.i)
  %tobool.not.i60 = icmp eq i32 %dec3.i, 0
  br i1 %tobool.not.i60, label %while.end.i.do.cond_crit_edge, label %while.end.i.for.body.i58.backedge_crit_edge

while.end.i.for.body.i58.backedge_crit_edge:      ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i58.backedge

while.end.i.do.cond_crit_edge:                    ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.cond

for.body.i58.backedge:                            ; preds = %do.cond.for.body.i58.backedge_crit_edge, %while.end.i.for.body.i58.backedge_crit_edge
  %count.07.i.be = phi i32 [ %dec3.i, %while.end.i.for.body.i58.backedge_crit_edge ], [ 100, %do.cond.for.body.i58.backedge_crit_edge ]
  br label %for.body.i58

if.end6:                                          ; preds = %for.body.i58
  %call7 = tail call fastcc i32 @qlge_mpi_handler(ptr noundef %qdev, ptr noundef %mbcp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end6.end_crit_edge

if.end6.end_crit_edge:                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %end

if.end10:                                         ; preds = %if.end6
  %30 = ptrtoint ptr %mbox_out to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %mbox_out, align 4
  %32 = trunc i32 %31 to i16
  %trunc = and i16 %32, -4096
  %33 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values)
  switch i16 %trunc, label %if.end10.do.cond_crit_edge [
    i16 16384, label %if.end10.done_crit_edge
    i16 4096, label %if.end10.done_crit_edge80
  ]

if.end10.done_crit_edge80:                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %done

if.end10.done_crit_edge:                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %done

if.end10.do.cond_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.cond

do.cond:                                          ; preds = %if.end10.do.cond_crit_edge, %while.end.i.do.cond_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %34 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %add.neg, %34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp19 = icmp slt i32 %sub, 0
  br i1 %cmp19, label %do.cond.for.body.i58.backedge_crit_edge, label %do.body20

do.cond.for.body.i58.backedge_crit_edge:          ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i58.backedge

do.body20:                                        ; preds = %do.cond
  %msg_enable = getelementptr inbounds %struct.qlge_adapter, ptr %qdev, i32 0, i32 18
  %35 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %msg_enable, align 4
  %and21 = and i32 %36, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %do.body20.end_crit_edge, label %if.then23

do.body20.end_crit_edge:                          ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #7
  br label %end

if.then23:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #7
  %ndev = getelementptr inbounds %struct.qlge_adapter, ptr %qdev, i32 0, i32 6
  %37 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ndev, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %38, ptr noundef nonnull @.str.19) #8
  br label %end

done:                                             ; preds = %if.end10.done_crit_edge, %if.end10.done_crit_edge80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !107
  tail call void @arm_heavy_mb() #5
  %39 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %reg_base.i, align 8
  %add.ptr.i63 = getelementptr i8, ptr %40, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i63, i32 160) #5, !srcloc !108
  %41 = ptrtoint ptr %mbox_out to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %mbox_out, align 4
  %and29 = and i32 %42, 61440
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %and29)
  %switch.selectcmp.case1 = icmp eq i32 %and29, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %and29)
  %switch.selectcmp.case2 = icmp eq i32 %and29, 4096
  %switch.selectcmp = or i1 %switch.selectcmp.case1, %switch.selectcmp.case2
  %43 = select i1 %switch.selectcmp, i32 0, i32 -5
  br label %end

end:                                              ; preds = %done, %if.then23, %do.body20.end_crit_edge, %if.end6.end_crit_edge, %if.end.end_crit_edge, %qlge_exec_mb_cmd.exit.thread69, %if.end.i.end_crit_edge, %entry.end_crit_edge
  %status.0 = phi i32 [ 0, %if.end.end_crit_edge ], [ -110, %if.then23 ], [ -110, %do.body20.end_crit_edge ], [ %43, %done ], [ %status.1.i.ph, %qlge_exec_mb_cmd.exit.thread69 ], [ %call1.i, %if.end.i.end_crit_edge ], [ -5, %entry.end_crit_edge ], [ %call7, %if.end6.end_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !107
  tail call void @arm_heavy_mb() #5
  %44 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %reg_base.i, align 8
  %add.ptr.i65 = getelementptr i8, ptr %45, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i65, i32 16777472) #5, !srcloc !108
  tail call void @mutex_unlock(ptr noundef %mpi_mutex) #5
  ret i32 %status.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qlge_mb_get_fw_state(ptr noundef %qdev) local_unnamed_addr #0 align 64 {
entry:
  %mbc = alloca %struct.mbox_params, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %mbc) #5
  %0 = getelementptr inbounds i8, ptr %mbc, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 124)
  %in_count = getelementptr inbounds %struct.mbox_params, ptr %mbc, i32 0, i32 2
  %2 = ptrtoint ptr %in_count to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %in_count, align 4
  %out_count = getelementptr inbounds %struct.mbox_params, ptr %mbc, i32 0, i32 3
  %3 = ptrtoint ptr %out_count to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 2, ptr %out_count, align 4
  %4 = ptrtoint ptr %mbc to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 105, ptr %mbc, align 4
  %call = call fastcc i32 @qlge_mailbox_command(ptr noundef %qdev, ptr noundef nonnull %mbc)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %mbox_out = getelementptr inbounds %struct.mbox_params, ptr %mbc, i32 0, i32 1
  %5 = ptrtoint ptr %mbox_out to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mbox_out, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %6)
  %cmp.not = icmp eq i32 %6, 16384
  br i1 %cmp.not, label %if.end.if.end6_crit_edge, label %do.body

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

do.body:                                          ; preds = %if.end
  %msg_enable = getelementptr inbounds %struct.qlge_adapter, ptr %qdev, i32 0, i32 18
  %7 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %msg_enable, align 4
  %and = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %do.body.if.end6_crit_edge, label %if.then4

do.body.if.end6_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %ndev = getelementptr inbounds %struct.qlge_adapter, ptr %qdev, i32 0, i32 6
  %9 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ndev, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %10, ptr noundef nonnull @.str.1) #8
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %do.body.if.end6_crit_edge, %if.end.if.end6_crit_edge
  %status.0 = phi i32 [ 0, %if.end.if.end6_crit_edge ], [ -5, %if.then4 ], [ -5, %do.body.if.end6_crit_edge ]
  %arrayidx8 = getelementptr inbounds %struct.mbox_params, ptr %mbc, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx8, align 4
  %and9 = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end6.cleanup_crit_edge, label %do.body12

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body12:                                        ; preds = %if.end6
  %msg_enable13 = getelementptr inbounds %struct.qlge_adapter, ptr %qdev, i32 0, i32 18
  %13 = ptrtoint ptr %msg_enable13 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %msg_enable13, align 4
  %and14 = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %do.body12.cleanup_crit_edge, label %if.then16

do.body12.cleanup_crit_edge:                      ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then16:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #7
  %ndev17 = getelementptr inbounds %struct.qlge_adapter, ptr %qdev, i32 0, i32 6
  %15 = ptrtoint ptr %ndev17 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ndev17, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %16, ptr noundef nonnull @.str.2) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then16, %do.body12.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %status.0, %if.end6.cleanup_crit_edge ], [ -5, %if.then16 ], [ -5, %do.body12.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %mbc) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qlge_mb_set_port_cfg(ptr noundef %qdev) local_unnamed_addr #0 align 64 {
entry:
  %mbc = alloca %struct.mbox_params, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %mbc) #5
  %0 = getelementptr inbounds i8, ptr %mbc, i32 12
  %1 = call ptr @memset(ptr %0, i32 0, i32 116)
  %in_count = getelementptr inbounds %struct.mbox_params, ptr %mbc, i32 0, i32 2
  %2 = ptrtoint ptr %in_count to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 3, ptr %in_count, align 4
  %out_count = getelementptr inbounds %struct.mbox_params, ptr %mbc, i32 0, i32 3
  %3 = ptrtoint ptr %out_count to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %out_count, align 4
  %4 = ptrtoint ptr %mbc to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 290, ptr %mbc, align 4
  %link_config = getelementptr inbounds %struct.qlge_adapter, ptr %qdev, i32 0, i32 52
  %5 = ptrtoint ptr %link_config to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %link_config, align 4
  %arrayidx2 = getelementptr inbounds [16 x i32], ptr %mbc, i32 0, i32 1
  %7 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %arrayidx2, align 4
  %max_frame_size = getelementptr inbounds %struct.qlge_adapter, ptr %qdev, i32 0, i32 54
  %8 = ptrtoint ptr %max_frame_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %max_frame_size, align 4
  %arrayidx4 = getelementptr inbounds [16 x i32], ptr %mbc, i32 0, i32 2
  %10 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %arrayidx4, align 4
  %call = call fastcc i32 @qlge_mailbox_command(ptr noundef %qdev, ptr noundef nonnull %mbc)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %mbox_out = getelementptr inbounds %struct.mbox_params, ptr %mbc, i32 0, i32 1
  %11 = ptrtoint ptr %mbox_out to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mbox_out, align 4
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %12, label %do.body14 [
    i32 4096, label %do.body
    i32 16384, label %if.end.cleanup_crit_edge
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body:                                          ; preds = %if.end
  %msg_enable = getelementptr inbounds %struct.qlge_adapter, ptr %qdev, i32 0, i32 18
  %14 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %msg_enable, align 4
  %and = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %do.body.cleanup_crit_edge, label %do.body.cleanup.sink.split_crit_edge

do.body.cleanup.sink.split_crit_edge:             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body14:                                        ; preds = %if.end
  %msg_enable15 = getelementptr inbounds %struct.qlge_adapter, ptr %qdev, i32 0, i32 18
  %16 = ptrtoint ptr %msg_enable15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %msg_enable15, align 4
  %and16 = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %do.body14.cleanup_crit_edge, label %do.body14.cleanup.sink.split_crit_edge

do.body14.cleanup.sink.split_crit_edge:           ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

do.body14.cleanup_crit_edge:                      ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup.sink.split:                               ; preds = %do.body14.cleanup.sink.split_crit_edge, %do.body.cleanup.sink.split_crit_edge
  %.str.3.sink = phi ptr [ @.str.3, %do.body.cleanup.sink.split_crit_edge ], [ @.str.4, %do.body14.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ 0, %do.body.cleanup.sink.split_crit_edge ], [ -5, %do.body14.cleanup.sink.split_crit_edge ]
  %ndev = getelementptr inbounds %struct.qlge_adapter, ptr %qdev, i32 0, i32 6
  %18 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ndev, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %19, ptr noundef nonnull %.str.3.sink) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %do.body14.cleanup_crit_edge, %do.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ 0, %do.body.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ -5, %do.body14.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %mbc) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qlge_dump_risc_ram_area(ptr noundef %qdev, ptr nocapture noundef writeonly %buf, i32 noundef %ram_addr, i32 noundef %word_count) local_unnamed_addr #0 align 64 {
entry:
  %mbc.i = alloca %struct.mbox_params, align 4
  %buf_dma = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf_dma) #5
  %0 = ptrtoint ptr %buf_dma to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %buf_dma, align 4, !annotation !109
  %pdev = getelementptr inbounds %struct.qlge_adapter, ptr %qdev, i32 0, i32 5
  %1 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 44
  %mul = shl i32 %word_count, 2
  %call.i = call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef %mul, ptr noundef nonnull %buf_dma, i32 noundef 2592, i32 noundef 0) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %buf_dma to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %buf_dma, align 4
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %mbc.i) #5
  %5 = getelementptr inbounds i8, ptr %mbc.i, i32 36
  %6 = call ptr @memset(ptr %5, i32 0, i32 92)
  %in_count.i = getelementptr inbounds %struct.mbox_params, ptr %mbc.i, i32 0, i32 2
  %7 = ptrtoint ptr %in_count.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 9, ptr %in_count.i, align 4
  %out_count.i = getelementptr inbounds %struct.mbox_params, ptr %mbc.i, i32 0, i32 3
  %8 = ptrtoint ptr %out_count.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %out_count.i, align 4
  %9 = ptrtoint ptr %mbc.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 12, ptr %mbc.i, align 4
  %conv1.i = and i32 %ram_addr, 65535
  %arrayidx3.i = getelementptr inbounds [16 x i32], ptr %mbc.i, i32 0, i32 1
  %10 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv1.i, ptr %arrayidx3.i, align 4
  %11 = lshr i32 %4, 16
  %arrayidx8.i = getelementptr inbounds [16 x i32], ptr %mbc.i, i32 0, i32 2
  %12 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %arrayidx8.i, align 4
  %conv10.i = and i32 %4, 65535
  %arrayidx12.i = getelementptr inbounds [16 x i32], ptr %mbc.i, i32 0, i32 3
  %13 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv10.i, ptr %arrayidx12.i, align 4
  %shr13.i = lshr i32 %word_count, 16
  %arrayidx17.i = getelementptr inbounds [16 x i32], ptr %mbc.i, i32 0, i32 4
  %14 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %shr13.i, ptr %arrayidx17.i, align 4
  %conv19.i = and i32 %word_count, 65535
  %arrayidx21.i = getelementptr inbounds [16 x i32], ptr %mbc.i, i32 0, i32 5
  %15 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %conv19.i, ptr %arrayidx21.i, align 4
  %arrayidx28.i = getelementptr inbounds [16 x i32], ptr %mbc.i, i32 0, i32 6
  %16 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %arrayidx28.i, align 4
  %arrayidx34.i = getelementptr inbounds [16 x i32], ptr %mbc.i, i32 0, i32 7
  %17 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %arrayidx34.i, align 4
  %shr35.i = lshr i32 %ram_addr, 16
  %arrayidx39.i = getelementptr inbounds [16 x i32], ptr %mbc.i, i32 0, i32 8
  %18 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %shr35.i, ptr %arrayidx39.i, align 4
  %call.i19 = call fastcc i32 @qlge_mailbox_command(ptr noundef %qdev, ptr noundef nonnull %mbc.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i19)
  %tobool.not.i = icmp eq i32 %call.i19, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.qlge_mb_dump_ram.exit.thread_crit_edge

if.end.qlge_mb_dump_ram.exit.thread_crit_edge:    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %qlge_mb_dump_ram.exit.thread

if.end.i:                                         ; preds = %if.end
  %mbox_out.i = getelementptr inbounds %struct.mbox_params, ptr %mbc.i, i32 0, i32 1
  %19 = ptrtoint ptr %mbox_out.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %mbox_out.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %20)
  %cmp.not.i = icmp eq i32 %20, 16384
  br i1 %cmp.not.i, label %if.then3, label %do.body.i

do.body.i:                                        ; preds = %if.end.i
  %msg_enable.i = getelementptr inbounds %struct.qlge_adapter, ptr %qdev, i32 0, i32 18
  %21 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %msg_enable.i, align 4
  %and.i = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool43.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool43.not.i, label %do.body.i.qlge_mb_dump_ram.exit.thread_crit_edge, label %if.then44.i

do.body.i.qlge_mb_dump_ram.exit.thread_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %qlge_mb_dump_ram.exit.thread

if.then44.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %ndev.i = getelementptr inbounds %struct.qlge_adapter, ptr %qdev, i32 0, i32 6
  %23 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ndev.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %24, ptr noundef nonnull @.str.20) #8
  br label %qlge_mb_dump_ram.exit.thread

qlge_mb_dump_ram.exit.thread:                     ; preds = %if.then44.i, %do.body.i.qlge_mb_dump_ram.exit.thread_crit_edge, %if.end.qlge_mb_dump_ram.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -5, %do.body.i.qlge_mb_dump_ram.exit.thread_crit_edge ], [ -5, %if.then44.i ], [ %call.i19, %if.end.qlge_mb_dump_ram.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %mbc.i) #5
  br label %if.end5

if.then3:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %mbc.i) #5
  %25 = call ptr @memcpy(ptr %buf, ptr %call.i, i32 %mul)
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %qlge_mb_dump_ram.exit.thread
  %retval.0.i22 = phi i32 [ %retval.0.i.ph, %qlge_mb_dump_ram.exit.thread ], [ 0, %if.then3 ]
  %26 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pdev, align 8
  %dev7 = getelementptr inbounds %struct.pci_dev, ptr %27, i32 0, i32 44
  %28 = ptrtoint ptr %buf_dma to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %buf_dma, align 4
  call void @dma_free_attrs(ptr noundef %dev7, i32 noundef %mul, ptr noundef nonnull %call.i, i32 noundef %29, i32 noundef 0) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i22, %if.end5 ], [ -5, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf_dma) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qlge_mb_get_port_cfg(ptr noundef %qdev) local_unnamed_addr #0 align 64 {
entry:
  %mbc = alloca %struct.mbox_params, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %mbc) #5
  %0 = getelementptr inbounds i8, ptr %mbc, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 124)
  %in_count = getelementptr inbounds %struct.mbox_params, ptr %mbc, i32 0, i32 2
  %2 = ptrtoint ptr %in_count to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %in_count, align 4
  %out_count = getelementptr inbounds %struct.mbox_params, ptr %mbc, i32 0, i32 3
  %3 = ptrtoint ptr %out_count to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 3, ptr %out_count, align 4
  %4 = ptrtoint ptr %mbc to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 291, ptr %mbc, align 4
  %call = call fastcc i32 @qlge_mailbox_command(ptr noundef %qdev, ptr noundef nonnull %mbc)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %mbox_out = getelementptr inbounds %struct.mbox_params, ptr %mbc, i32 0, i32 1
  %5 = ptrtoint ptr %mbox_out to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mbox_out, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %6)
  %cmp.not = icmp eq i32 %6, 16384
  %msg_enable7 = getelementptr inbounds %struct.qlge_adapter, ptr %qdev, i32 0, i32 18
  %7 = ptrtoint ptr %msg_enable7 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %msg_enable7, align 4
  %and8 = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %cmp.not, label %do.body6, label %do.body

do.body:                                          ; preds = %if.end
  br i1 %tobool9.not, label %do.body.cleanup_crit_edge, label %if.then4

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %ndev = getelementptr inbounds %struct.qlge_adapter, ptr %qdev, i32 0, i32 6
  %9 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ndev, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %10, ptr noundef nonnull @.str.5) #8
  br label %cleanup

do.body6:                                         ; preds = %if.end
  br i1 %tobool9.not, label %do.body6.do.end14_crit_edge, label %if.then10

do.body6.do.end14_crit_edge:                      ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end14

if.then10:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #7
  %ndev11 = getelementptr inbounds %struct.qlge_adapter, ptr %qdev, i32 0, i32 6
  %11 = ptrtoint ptr %ndev11 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ndev11, align 4
  tail call void (ptr, ptr, ptr, ...) @netdev_printk(ptr noundef nonnull @.str.6, ptr noundef %12, ptr noundef nonnull @.str.7) #8
  br label %do.end14

do.end14:                                         ; preds = %if.then10, %do.body6.do.end14_crit_edge
  %arrayidx16 = getelementptr inbounds %struct.mbox_params, ptr %mbc, i32 0, i32 1, i32 1
  %13 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx16, align 4
  %link_config = getelementptr inbounds %struct.qlge_adapter, ptr %qdev, i32 0, i32 52
  %15 = ptrtoint ptr %link_config to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %link_config, align 4
  %arrayidx18 = getelementptr inbounds %struct.mbox_params, ptr %mbc, i32 0, i32 1, i32 2
  %16 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx18, align 4
  %max_frame_size = getelementptr inbounds %struct.qlge_adapter, ptr %qdev, i32 0, i32 54
  %18 = ptrtoint ptr %max_frame_size to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %max_frame_size, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end14, %if.then4, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ 0, %do.end14 ], [ -5, %if.then4 ], [ -5, %do.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %mbc) #5
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qlge_mb_wol_mode(ptr noundef %qdev, i32 noundef %wol) local_unnamed_addr #0 align 64 {
entry:
  %mbc = alloca %struct.mbox_params, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %mbc) #5
  %0 = getelementptr inbounds i8, ptr %mbc, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 120)
  %in_count = getelementptr inbounds %struct.mbox_params, ptr %mbc, i32 0, i32 2
  %2 = ptrtoint ptr %in_count to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2, ptr %in_count, align 4
  %out_count = getelementptr inbounds %struct.mbox_params, ptr %mbc, i32 0, i32 3
  %3 = ptrtoint ptr %out_count to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %out_count, align 4
  %4 = ptrtoint ptr %mbc to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 272, ptr %mbc, align 4
  %arrayidx2 = getelementptr inbounds [16 x i32], ptr %mbc, i32 0, i32 1
  %5 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %wol, ptr %arrayidx2, align 4
  %call = call fastcc i32 @qlge_mailbox_command(ptr noundef %qdev, ptr noundef nonnull %mbc)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %mbox_out = getelementptr inbounds %struct.mbox_params, ptr %mbc, i32 0, i32 1
  %6 = ptrtoint ptr %mbox_out to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mbox_out, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %7)
  %cmp.not = icmp eq i32 %7, 16384
  br i1 %cmp.not, label %if.end.cleanup_crit_edge, label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body:                                          ; preds = %if.end
  %msg_enable = getelementptr inbounds %struct.qlge_adapter, ptr %qdev, i32 0, i32 18
  %8 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %msg_enable, align 4
  %and = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %do.body.cleanup_crit_edge, label %if.then6

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %ndev = getelementptr inbounds %struct.qlge_adapter, ptr %qdev, i32 0, i32 6
  %10 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ndev, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %11, ptr noundef nonnull @.str.8) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %do.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ -5, %if.then6 ], [ -5, %do.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %mbc) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qlge_mb_wol_set_magic(ptr noundef %qdev, i32 noundef %enable_wol) local_unnamed_addr #0 align 64 {
entry:
  %mbc = alloca %struct.mbox_params, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %mbc) #5
  %ndev = getelementptr inbounds %struct.qlge_adapter, ptr %qdev, i32 0, i32 6
  %0 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ndev, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 86
  %2 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_addr, align 64
  %4 = getelementptr inbounds i8, ptr %mbc, i32 4
  %5 = call ptr @memset(ptr %4, i32 0, i32 124)
  %in_count = getelementptr inbounds %struct.mbox_params, ptr %mbc, i32 0, i32 2
  %6 = ptrtoint ptr %in_count to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 8, ptr %in_count, align 4
  %out_count = getelementptr inbounds %struct.mbox_params, ptr %mbc, i32 0, i32 3
  %7 = ptrtoint ptr %out_count to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %out_count, align 4
  %8 = ptrtoint ptr %mbc to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 275, ptr %mbc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable_wol)
  %tobool.not = icmp eq i32 %enable_wol, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %3, align 1
  %conv = zext i8 %10 to i32
  %arrayidx3 = getelementptr inbounds [16 x i32], ptr %mbc, i32 0, i32 1
  %11 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv, ptr %arrayidx3, align 4
  %arrayidx4 = getelementptr i8, ptr %3, i32 1
  %12 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx4, align 1
  %conv5 = zext i8 %13 to i32
  %arrayidx7 = getelementptr inbounds [16 x i32], ptr %mbc, i32 0, i32 2
  %14 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %conv5, ptr %arrayidx7, align 4
  %arrayidx8 = getelementptr i8, ptr %3, i32 2
  %15 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx8, align 1
  %conv9 = zext i8 %16 to i32
  %arrayidx11 = getelementptr inbounds [16 x i32], ptr %mbc, i32 0, i32 3
  %17 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %conv9, ptr %arrayidx11, align 4
  %arrayidx12 = getelementptr i8, ptr %3, i32 3
  %18 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx12, align 1
  %conv13 = zext i8 %19 to i32
  %arrayidx15 = getelementptr inbounds [16 x i32], ptr %mbc, i32 0, i32 4
  %20 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %conv13, ptr %arrayidx15, align 4
  %arrayidx16 = getelementptr i8, ptr %3, i32 4
  %21 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx16, align 1
  %conv17 = zext i8 %22 to i32
  %arrayidx19 = getelementptr inbounds [16 x i32], ptr %mbc, i32 0, i32 5
  %23 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %conv17, ptr %arrayidx19, align 4
  %arrayidx20 = getelementptr i8, ptr %3, i32 5
  %24 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx20, align 1
  %conv21 = zext i8 %25 to i32
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx29 = getelementptr inbounds [16 x i32], ptr %mbc, i32 0, i32 2
  %26 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %arrayidx29, align 4
  %arrayidx31 = getelementptr inbounds [16 x i32], ptr %mbc, i32 0, i32 3
  %27 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %arrayidx31, align 4
  %arrayidx33 = getelementptr inbounds [16 x i32], ptr %mbc, i32 0, i32 4
  %28 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %arrayidx33, align 4
  %arrayidx35 = getelementptr inbounds [16 x i32], ptr %mbc, i32 0, i32 5
  %29 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1, ptr %arrayidx35, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %conv21.sink = phi i32 [ 1, %if.else ], [ %conv21, %if.then ]
  %30 = getelementptr inbounds [16 x i32], ptr %mbc, i32 0, i32 6
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %conv21.sink, ptr %30, align 4
  %32 = getelementptr inbounds [16 x i32], ptr %mbc, i32 0, i32 7
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %32, align 4
  %call = call fastcc i32 @qlge_mailbox_command(ptr noundef %qdev, ptr noundef nonnull %mbc)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool40.not = icmp eq i32 %call, 0
  br i1 %tobool40.not, label %if.end42, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end42:                                         ; preds = %if.end
  %mbox_out = getelementptr inbounds %struct.mbox_params, ptr %mbc, i32 0, i32 1
  %34 = ptrtoint ptr %mbox_out to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %mbox_out, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %35)
  %cmp.not = icmp eq i32 %35, 16384
  br i1 %cmp.not, label %if.end42.cleanup_crit_edge, label %do.body

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body:                                          ; preds = %if.end42
  %msg_enable = getelementptr inbounds %struct.qlge_adapter, ptr %qdev, i32 0, i32 18
  %36 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %msg_enable, align 4
  %and = and i32 %37, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool46.not = icmp eq i32 %and, 0
  br i1 %tobool46.not, label %do.body.cleanup_crit_edge, label %if.then47

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then47:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %38 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ndev, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %39, ptr noundef nonnull @.str.8) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then47, %do.body.cleanup_crit_edge, %if.end42.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end.cleanup_crit_edge ], [ 0, %if.end42.cleanup_crit_edge ], [ -5, %if.then47 ], [ -5, %do.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %mbc) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qlge_mb_set_led_cfg(ptr noundef %qdev, i32 noundef %led_config) local_unnamed_addr #0 align 64 {
entry:
  %mbc = alloca %struct.mbox_params, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %mbc) #5
  %0 = getelementptr inbounds i8, ptr %mbc, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 120)
  %in_count = getelementptr inbounds %struct.mbox_params, ptr %mbc, i32 0, i32 2
  %2 = ptrtoint ptr %in_count to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2, ptr %in_count, align 4
  %out_count = getelementptr inbounds %struct.mbox_params, ptr %mbc, i32 0, i32 3
  %3 = ptrtoint ptr %out_count to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %out_count, align 4
  %4 = ptrtoint ptr %mbc to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 293, ptr %mbc, align 4
  %arrayidx2 = getelementptr inbounds [16 x i32], ptr %mbc, i32 0, i32 1
  %5 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %led_config, ptr %arrayidx2, align 4
  %call = call fastcc i32 @qlge_mailbox_command(ptr noundef %qdev, ptr noundef nonnull %mbc)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %mbox_out = getelementptr inbounds %struct.mbox_params, ptr %mbc, i32 0, i32 1
  %6 = ptrtoint ptr %mbox_out to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mbox_out, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %7)
  %cmp.not = icmp eq i32 %7, 16384
  br i1 %cmp.not, label %if.end.cleanup_crit_edge, label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body:                                          ; preds = %if.end
  %msg_enable = getelementptr inbounds %struct.qlge_adapter, ptr %qdev, i32 0, i32 18
  %8 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %msg_enable, align 4
  %and = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %do.body.cleanup_crit_edge, label %if.then6

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %ndev = getelementptr inbounds %struct.qlge_adapter, ptr %qdev, i32 0, i32 6
  %10 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ndev, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %11, ptr noundef nonnull @.str.9) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %do.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ -5, %if.then6 ], [ -5, %do.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %mbc) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qlge_mb_get_led_cfg(ptr noundef %qdev) local_unnamed_addr #0 align 64 {
entry:
  %mbc = alloca %struct.mbox_params, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %mbc) #5
  %0 = getelementptr inbounds i8, ptr %mbc, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 124)
  %in_count = getelementptr inbounds %struct.mbox_params, ptr %mbc, i32 0, i32 2
  %2 = ptrtoint ptr %in_count to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %in_count, align 4
  %out_count = getelementptr inbounds %struct.mbox_params, ptr %mbc, i32 0, i32 3
  %3 = ptrtoint ptr %out_count to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 2, ptr %out_count, align 4
  %4 = ptrtoint ptr %mbc to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 294, ptr %mbc, align 4
  %call = call fastcc i32 @qlge_mailbox_command(ptr noundef %qdev, ptr noundef nonnull %mbc)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %mbox_out = getelementptr inbounds %struct.mbox_params, ptr %mbc, i32 0, i32 1
  %5 = ptrtoint ptr %mbox_out to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mbox_out, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %6)
  %cmp.not = icmp eq i32 %6, 16384
  br i1 %cmp.not, label %if.else, label %do.body

do.body:                                          ; preds = %if.end
  %msg_enable = getelementptr inbounds %struct.qlge_adapter, ptr %qdev, i32 0, i32 18
  %7 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %msg_enable, align 4
  %and = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %do.body.cleanup_crit_edge, label %if.then4

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %ndev = getelementptr inbounds %struct.qlge_adapter, ptr %qdev, i32 0, i32 6
  %9 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ndev, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %10, ptr noundef nonnull @.str.10) #8
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx7 = getelementptr inbounds %struct.mbox_params, ptr %mbc, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx7, align 4
  %led_config = getelementptr inbounds %struct.qlge_adapter, ptr %qdev, i32 0, i32 53
  %13 = ptrtoint ptr %led_config to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %led_config, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then4, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ 0, %if.else ], [ -5, %if.then4 ], [ -5, %do.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %mbc) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qlge_mb_set_mgmnt_traffic_ctl(ptr noundef %qdev, i32 noundef %control) local_unnamed_addr #0 align 64 {
entry:
  %mbc = alloca %struct.mbox_params, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %mbc) #5
  %0 = getelementptr inbounds i8, ptr %mbc, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 120)
  %in_count = getelementptr inbounds %struct.mbox_params, ptr %mbc, i32 0, i32 2
  %2 = ptrtoint ptr %in_count to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %in_count, align 4
  %out_count = getelementptr inbounds %struct.mbox_params, ptr %mbc, i32 0, i32 3
  %3 = ptrtoint ptr %out_count to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 2, ptr %out_count, align 4
  %4 = ptrtoint ptr %mbc to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 352, ptr %mbc, align 4
  %arrayidx2 = getelementptr inbounds [16 x i32], ptr %mbc, i32 0, i32 1
  %5 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %control, ptr %arrayidx2, align 4
  %call = call fastcc i32 @qlge_mailbox_command(ptr noundef %qdev, ptr noundef nonnull %mbc)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %mbox_out = getelementptr inbounds %struct.mbox_params, ptr %mbc, i32 0, i32 1
  %6 = ptrtoint ptr %mbox_out to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mbox_out, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %7, label %if.end.cleanup_crit_edge [
    i32 16389, label %do.body17
    i32 16385, label %do.body
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body:                                          ; preds = %if.end
  %msg_enable = getelementptr inbounds %struct.qlge_adapter, ptr %qdev, i32 0, i32 18
  %9 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %msg_enable, align 4
  %and = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  br i1 %tobool10.not, label %do.body.cleanup_crit_edge, label %do.body.cleanup.sink.split_crit_edge

do.body.cleanup.sink.split_crit_edge:             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body17:                                        ; preds = %if.end
  %msg_enable18 = getelementptr inbounds %struct.qlge_adapter, ptr %qdev, i32 0, i32 18
  %11 = ptrtoint ptr %msg_enable18 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %msg_enable18, align 4
  %and19 = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %do.body17.cleanup_crit_edge, label %do.body17.cleanup.sink.split_crit_edge

do.body17.cleanup.sink.split_crit_edge:           ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

do.body17.cleanup_crit_edge:                      ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup.sink.split:                               ; preds = %do.body17.cleanup.sink.split_crit_edge, %do.body.cleanup.sink.split_crit_edge
  %.str.12.sink = phi ptr [ @.str.11, %do.body.cleanup.sink.split_crit_edge ], [ @.str.12, %do.body17.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ -22, %do.body.cleanup.sink.split_crit_edge ], [ 0, %do.body17.cleanup.sink.split_crit_edge ]
  %ndev22 = getelementptr inbounds %struct.qlge_adapter, ptr %qdev, i32 0, i32 6
  %13 = ptrtoint ptr %ndev22 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ndev22, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %14, ptr noundef nonnull %.str.12.sink) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %do.body17.cleanup_crit_edge, %do.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ 0, %do.body17.cleanup_crit_edge ], [ -22, %do.body.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %mbc) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qlge_wait_fifo_empty(ptr noundef %qdev) local_unnamed_addr #0 align 64 {
entry:
  %mbc.i = alloca %struct.mbox_params, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_base.i = getelementptr inbounds %struct.qlge_adapter, ptr %qdev, i32 0, i32 15
  %0 = getelementptr inbounds i8, ptr %mbc.i, i32 4
  %in_count.i = getelementptr inbounds %struct.mbox_params, ptr %mbc.i, i32 0, i32 2
  %out_count.i = getelementptr inbounds %struct.mbox_params, ptr %mbc.i, i32 0, i32 3
  %mbox_out.i = getelementptr inbounds %struct.mbox_params, ptr %mbc.i, i32 0, i32 1
  %msg_enable18.i = getelementptr inbounds %struct.qlge_adapter, ptr %qdev, i32 0, i32 18
  %ndev22.i = getelementptr inbounds %struct.qlge_adapter, ptr %qdev, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry
  %count.014 = phi i32 [ 6, %entry ], [ %dec, %if.end.for.body_crit_edge ]
  %1 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %reg_base.i, align 8
  %add.ptr.i = getelementptr i8, ptr %2, i32 48
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !106
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %mbc.i) #5
  %4 = call ptr @memset(ptr %0, i32 0, i32 124)
  %5 = ptrtoint ptr %in_count.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %in_count.i, align 4
  %6 = ptrtoint ptr %out_count.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %out_count.i, align 4
  %7 = ptrtoint ptr %mbc.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 353, ptr %mbc.i, align 4
  %call.i = call fastcc i32 @qlge_mailbox_command(ptr noundef %qdev, ptr noundef nonnull %mbc.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.body.qlge_mb_get_mgmnt_traffic_ctl.exit.thread_crit_edge

for.body.qlge_mb_get_mgmnt_traffic_ctl.exit.thread_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %qlge_mb_get_mgmnt_traffic_ctl.exit.thread

if.end.i:                                         ; preds = %for.body
  %8 = ptrtoint ptr %mbox_out.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mbox_out.i, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %9, label %if.end.i.qlge_mb_get_mgmnt_traffic_ctl.exit.thread_crit_edge [
    i32 16384, label %qlge_mb_get_mgmnt_traffic_ctl.exit
    i32 16385, label %do.body.i
    i32 16389, label %do.body17.i
  ]

if.end.i.qlge_mb_get_mgmnt_traffic_ctl.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %qlge_mb_get_mgmnt_traffic_ctl.exit.thread

do.body.i:                                        ; preds = %if.end.i
  %11 = ptrtoint ptr %msg_enable18.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %msg_enable18.i, align 4
  %and.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool10.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool10.not.i, label %do.body.i.qlge_mb_get_mgmnt_traffic_ctl.exit.thread_crit_edge, label %do.body.i.qlge_mb_get_mgmnt_traffic_ctl.exit.thread.sink.split_crit_edge

do.body.i.qlge_mb_get_mgmnt_traffic_ctl.exit.thread.sink.split_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %qlge_mb_get_mgmnt_traffic_ctl.exit.thread.sink.split

do.body.i.qlge_mb_get_mgmnt_traffic_ctl.exit.thread_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %qlge_mb_get_mgmnt_traffic_ctl.exit.thread

do.body17.i:                                      ; preds = %if.end.i
  %13 = ptrtoint ptr %msg_enable18.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %msg_enable18.i, align 4
  %and19.i = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i)
  %tobool20.not.i = icmp eq i32 %and19.i, 0
  br i1 %tobool20.not.i, label %do.body17.i.qlge_mb_get_mgmnt_traffic_ctl.exit.thread_crit_edge, label %do.body17.i.qlge_mb_get_mgmnt_traffic_ctl.exit.thread.sink.split_crit_edge

do.body17.i.qlge_mb_get_mgmnt_traffic_ctl.exit.thread.sink.split_crit_edge: ; preds = %do.body17.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %qlge_mb_get_mgmnt_traffic_ctl.exit.thread.sink.split

do.body17.i.qlge_mb_get_mgmnt_traffic_ctl.exit.thread_crit_edge: ; preds = %do.body17.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %qlge_mb_get_mgmnt_traffic_ctl.exit.thread

qlge_mb_get_mgmnt_traffic_ctl.exit.thread.sink.split: ; preds = %do.body17.i.qlge_mb_get_mgmnt_traffic_ctl.exit.thread.sink.split_crit_edge, %do.body.i.qlge_mb_get_mgmnt_traffic_ctl.exit.thread.sink.split_crit_edge
  %.str.21.sink = phi ptr [ @.str.11, %do.body.i.qlge_mb_get_mgmnt_traffic_ctl.exit.thread.sink.split_crit_edge ], [ @.str.21, %do.body17.i.qlge_mb_get_mgmnt_traffic_ctl.exit.thread.sink.split_crit_edge ]
  %15 = ptrtoint ptr %ndev22.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ndev22.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %16, ptr noundef nonnull %.str.21.sink) #8
  br label %qlge_mb_get_mgmnt_traffic_ctl.exit.thread

qlge_mb_get_mgmnt_traffic_ctl.exit.thread:        ; preds = %qlge_mb_get_mgmnt_traffic_ctl.exit.thread.sink.split, %do.body17.i.qlge_mb_get_mgmnt_traffic_ctl.exit.thread_crit_edge, %do.body.i.qlge_mb_get_mgmnt_traffic_ctl.exit.thread_crit_edge, %if.end.i.qlge_mb_get_mgmnt_traffic_ctl.exit.thread_crit_edge, %for.body.qlge_mb_get_mgmnt_traffic_ctl.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %mbc.i) #5
  br label %if.end

qlge_mb_get_mgmnt_traffic_ctl.exit:               ; preds = %if.end.i
  %17 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %0, align 4
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %mbc.i) #5
  %and2 = and i32 %18, 2
  %19 = and i32 %3, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool3.not = icmp eq i32 %19, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool4.not = icmp eq i32 %and2, 0
  %or.cond = select i1 %tobool3.not, i1 true, i1 %tobool4.not
  br i1 %or.cond, label %qlge_mb_get_mgmnt_traffic_ctl.exit.if.end_crit_edge, label %qlge_mb_get_mgmnt_traffic_ctl.exit.cleanup_crit_edge

qlge_mb_get_mgmnt_traffic_ctl.exit.cleanup_crit_edge: ; preds = %qlge_mb_get_mgmnt_traffic_ctl.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

qlge_mb_get_mgmnt_traffic_ctl.exit.if.end_crit_edge: ; preds = %qlge_mb_get_mgmnt_traffic_ctl.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end:                                           ; preds = %qlge_mb_get_mgmnt_traffic_ctl.exit.if.end_crit_edge, %qlge_mb_get_mgmnt_traffic_ctl.exit.thread
  tail call void @msleep(i32 noundef 100) #5
  %dec = add nsw i32 %count.014, -1
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %if.end.cleanup_crit_edge, %qlge_mb_get_mgmnt_traffic_ctl.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %qlge_mb_get_mgmnt_traffic_ctl.exit.cleanup_crit_edge ], [ -110, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qlge_mpi_port_cfg_work(ptr noundef %work) local_unnamed_addr #0 align 64 {
entry:
  %mbc.i.i = alloca %struct.mbox_params, align 4
  %mbc.i = alloca %struct.mbox_params, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -16432
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %mbc.i) #5
  %0 = getelementptr inbounds i8, ptr %mbc.i, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 124)
  %in_count.i = getelementptr inbounds %struct.mbox_params, ptr %mbc.i, i32 0, i32 2
  %2 = ptrtoint ptr %in_count.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %in_count.i, align 4
  %out_count.i = getelementptr inbounds %struct.mbox_params, ptr %mbc.i, i32 0, i32 3
  %3 = ptrtoint ptr %out_count.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 3, ptr %out_count.i, align 4
  %4 = ptrtoint ptr %mbc.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 291, ptr %mbc.i, align 4
  %call.i = call fastcc i32 @qlge_mailbox_command(ptr noundef %add.ptr, ptr noundef nonnull %mbc.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

if.end.i:                                         ; preds = %entry
  %mbox_out.i = getelementptr inbounds %struct.mbox_params, ptr %mbc.i, i32 0, i32 1
  %5 = ptrtoint ptr %mbox_out.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mbox_out.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %6)
  %cmp.not.i = icmp eq i32 %6, 16384
  %msg_enable7.i = getelementptr i8, ptr %work, i32 -14164
  %7 = ptrtoint ptr %msg_enable7.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %msg_enable7.i, align 4
  %and8.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool9.not.i = icmp eq i32 %and8.i, 0
  br i1 %cmp.not.i, label %do.body6.i, label %do.body.i

do.body.i:                                        ; preds = %if.end.i
  br i1 %tobool9.not.i, label %do.body.i.do.body_crit_edge, label %if.then4.i

do.body.i.do.body_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

if.then4.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %ndev.i = getelementptr i8, ptr %work, i32 -14292
  %9 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ndev.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %10, ptr noundef nonnull @.str.5) #8
  br label %do.body

do.body6.i:                                       ; preds = %if.end.i
  br i1 %tobool9.not.i, label %do.body6.i.if.end3_crit_edge, label %if.then10.i

do.body6.i.if.end3_crit_edge:                     ; preds = %do.body6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3

if.then10.i:                                      ; preds = %do.body6.i
  call void @__sanitizer_cov_trace_pc() #7
  %ndev11.i = getelementptr i8, ptr %work, i32 -14292
  %11 = ptrtoint ptr %ndev11.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ndev11.i, align 4
  tail call void (ptr, ptr, ptr, ...) @netdev_printk(ptr noundef nonnull @.str.6, ptr noundef %12, ptr noundef nonnull @.str.7) #8
  br label %if.end3

do.body:                                          ; preds = %if.then4.i, %do.body.i.do.body_crit_edge, %entry.do.body_crit_edge
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %mbc.i) #5
  %msg_enable = getelementptr i8, ptr %work, i32 -14164
  %13 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %msg_enable, align 4
  %and = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %do.body.err_crit_edge, label %do.body.err.sink.split_crit_edge

do.body.err.sink.split_crit_edge:                 ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %err.sink.split

do.body.err_crit_edge:                            ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

if.end3:                                          ; preds = %if.then10.i, %do.body6.i.if.end3_crit_edge
  %arrayidx16.i = getelementptr inbounds %struct.mbox_params, ptr %mbc.i, i32 0, i32 1, i32 1
  %15 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx16.i, align 4
  %link_config.i = getelementptr i8, ptr %work, i32 -828
  %17 = ptrtoint ptr %link_config.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %link_config.i, align 4
  %arrayidx18.i = getelementptr inbounds %struct.mbox_params, ptr %mbc.i, i32 0, i32 1, i32 2
  %18 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx18.i, align 4
  %max_frame_size.i = getelementptr i8, ptr %work, i32 -820
  %20 = ptrtoint ptr %max_frame_size.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %max_frame_size.i, align 4
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %mbc.i) #5
  %and4 = and i32 %16, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.end3.if.end7_crit_edge, label %land.lhs.true

if.end3.if.end7_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

land.lhs.true:                                    ; preds = %if.end3
  %21 = ptrtoint ptr %max_frame_size.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %max_frame_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9600, i32 %22)
  %cmp = icmp eq i32 %22, 9600
  br i1 %cmp, label %land.lhs.true.end_crit_edge, label %land.lhs.true.if.end7_crit_edge

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

land.lhs.true.end_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %end

if.end7:                                          ; preds = %land.lhs.true.if.end7_crit_edge, %if.end3.if.end7_crit_edge
  %or = or i32 %16, 65536
  %23 = ptrtoint ptr %link_config.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %or, ptr %link_config.i, align 4
  %24 = ptrtoint ptr %max_frame_size.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 9600, ptr %max_frame_size.i, align 4
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %mbc.i.i) #5
  %25 = getelementptr inbounds i8, ptr %mbc.i.i, i32 12
  %26 = call ptr @memset(ptr %25, i32 0, i32 116)
  %in_count.i.i = getelementptr inbounds %struct.mbox_params, ptr %mbc.i.i, i32 0, i32 2
  %27 = ptrtoint ptr %in_count.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 3, ptr %in_count.i.i, align 4
  %out_count.i.i = getelementptr inbounds %struct.mbox_params, ptr %mbc.i.i, i32 0, i32 3
  %28 = ptrtoint ptr %out_count.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %out_count.i.i, align 4
  %29 = ptrtoint ptr %mbc.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 290, ptr %mbc.i.i, align 4
  %arrayidx2.i.i = getelementptr inbounds [16 x i32], ptr %mbc.i.i, i32 0, i32 1
  %30 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %or, ptr %arrayidx2.i.i, align 4
  %arrayidx4.i.i = getelementptr inbounds [16 x i32], ptr %mbc.i.i, i32 0, i32 2
  %31 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 9600, ptr %arrayidx4.i.i, align 4
  %call.i.i = call fastcc i32 @qlge_mailbox_command(ptr noundef %add.ptr, ptr noundef nonnull %mbc.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end7.qlge_mb_set_port_cfg.exit.thread13.i_crit_edge

if.end7.qlge_mb_set_port_cfg.exit.thread13.i_crit_edge: ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %qlge_mb_set_port_cfg.exit.thread13.i

if.end.i.i:                                       ; preds = %if.end7
  %mbox_out.i.i = getelementptr inbounds %struct.mbox_params, ptr %mbc.i.i, i32 0, i32 1
  %32 = ptrtoint ptr %mbox_out.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %mbox_out.i.i, align 4
  %34 = zext i32 %33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %33, label %do.body14.i.i [
    i32 4096, label %do.body.i.i
    i32 16384, label %if.end.i.i.qlge_mb_set_port_cfg.exit.thread.i_crit_edge
  ]

if.end.i.i.qlge_mb_set_port_cfg.exit.thread.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %qlge_mb_set_port_cfg.exit.thread.i

do.body.i.i:                                      ; preds = %if.end.i.i
  %35 = ptrtoint ptr %msg_enable7.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %msg_enable7.i, align 4
  %and.i.i = and i32 %36, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool7.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool7.not.i.i, label %do.body.i.i.qlge_mb_set_port_cfg.exit.thread.i_crit_edge, label %qlge_mb_set_port_cfg.exit.thread16.i

do.body.i.i.qlge_mb_set_port_cfg.exit.thread.i_crit_edge: ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %qlge_mb_set_port_cfg.exit.thread.i

qlge_mb_set_port_cfg.exit.thread16.i:             ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %ndev.i19.i = getelementptr i8, ptr %work, i32 -14292
  %37 = ptrtoint ptr %ndev.i19.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ndev.i19.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %38, ptr noundef nonnull @.str.3) #8
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %mbc.i.i) #5
  br label %if.end.i35

do.body14.i.i:                                    ; preds = %if.end.i.i
  %39 = ptrtoint ptr %msg_enable7.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %msg_enable7.i, align 4
  %and16.i.i = and i32 %40, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i.i)
  %tobool17.not.i.i = icmp eq i32 %and16.i.i, 0
  br i1 %tobool17.not.i.i, label %do.body14.i.i.qlge_mb_set_port_cfg.exit.thread13.i_crit_edge, label %qlge_mb_set_port_cfg.exit.i

do.body14.i.i.qlge_mb_set_port_cfg.exit.thread13.i_crit_edge: ; preds = %do.body14.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %qlge_mb_set_port_cfg.exit.thread13.i

qlge_mb_set_port_cfg.exit.thread.i:               ; preds = %do.body.i.i.qlge_mb_set_port_cfg.exit.thread.i_crit_edge, %if.end.i.i.qlge_mb_set_port_cfg.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %mbc.i.i) #5
  br label %if.end.i35

qlge_mb_set_port_cfg.exit.thread13.i:             ; preds = %do.body14.i.i.qlge_mb_set_port_cfg.exit.thread13.i_crit_edge, %if.end7.qlge_mb_set_port_cfg.exit.thread13.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %mbc.i.i) #5
  br label %do.body13

qlge_mb_set_port_cfg.exit.i:                      ; preds = %do.body14.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %ndev.i.i = getelementptr i8, ptr %work, i32 -14292
  %41 = ptrtoint ptr %ndev.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ndev.i.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %42, ptr noundef nonnull @.str.4) #8
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %mbc.i.i) #5
  br label %do.body13

if.end.i35:                                       ; preds = %qlge_mb_set_port_cfg.exit.thread.i, %qlge_mb_set_port_cfg.exit.thread16.i
  %ide_completion.i.i = getelementptr i8, ptr %work, i32 200
  %mbox_out.i5.i = getelementptr i8, ptr %work, i32 -14072
  %ndev11.i.i = getelementptr i8, ptr %work, i32 -14292
  %arrayidx16.i.i = getelementptr i8, ptr %work, i32 -14068
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %do.end14.i.i.for.body.i.i_crit_edge, %if.end.i35
  %wait_time.060.i.i = phi i32 [ 100, %if.end.i35 ], [ %add.i.i, %do.end14.i.i.for.body.i.i_crit_edge ]
  %call.i6.i = tail call i32 @wait_for_completion_timeout(ptr noundef %ide_completion.i.i, i32 noundef %wait_time.060.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i6.i)
  %tobool1.not.i.i = icmp eq i32 %call.i6.i, 0
  br i1 %tobool1.not.i.i, label %do.body.i8.i, label %if.end4.i.i

do.body.i8.i:                                     ; preds = %for.body.i.i
  %43 = ptrtoint ptr %msg_enable7.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %msg_enable7.i, align 4
  %and.i7.i = and i32 %44, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i7.i)
  %tobool2.not.i.i = icmp eq i32 %and.i7.i, 0
  br i1 %tobool2.not.i.i, label %do.body.i8.i.do.body13_crit_edge, label %if.then3.i.i

do.body.i8.i.do.body13_crit_edge:                 ; preds = %do.body.i8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body13

if.then3.i.i:                                     ; preds = %do.body.i8.i
  call void @__sanitizer_cov_trace_pc() #7
  %45 = ptrtoint ptr %ndev11.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ndev11.i.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %46, ptr noundef nonnull @.str.22) #8
  br label %do.body13

if.end4.i.i:                                      ; preds = %for.body.i.i
  %47 = ptrtoint ptr %mbox_out.i5.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %mbox_out.i5.i, align 4
  %49 = zext i32 %48 to i64
  call void @__sanitizer_cov_trace_switch(i64 %49, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %48, label %do.body32.i.i [
    i32 33026, label %do.body6.i.i
    i32 33024, label %do.body22.i.i
  ]

do.body6.i.i:                                     ; preds = %if.end4.i.i
  %50 = ptrtoint ptr %msg_enable7.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %msg_enable7.i, align 4
  %and8.i.i = and i32 %51, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i.i)
  %tobool9.not.i.i = icmp eq i32 %and8.i.i, 0
  br i1 %tobool9.not.i.i, label %do.body6.i.i.do.end14.i.i_crit_edge, label %if.then10.i.i

do.body6.i.i.do.end14.i.i_crit_edge:              ; preds = %do.body6.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end14.i.i

if.then10.i.i:                                    ; preds = %do.body6.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %52 = ptrtoint ptr %ndev11.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ndev11.i.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %53, ptr noundef nonnull @.str.23) #8
  br label %do.end14.i.i

do.end14.i.i:                                     ; preds = %if.then10.i.i, %do.body6.i.i.do.end14.i.i_crit_edge
  %54 = ptrtoint ptr %arrayidx16.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx16.i.i, align 4
  %shr.i.i = lshr i32 %55, 8
  %and17.i.i = and i32 %shr.i.i, 15
  %add.i.i = add i32 %and17.i.i, %call.i6.i
  %tobool.not.i9.i = icmp eq i32 %add.i.i, 0
  br i1 %tobool.not.i9.i, label %do.end14.i.i.do.body13_crit_edge, label %do.end14.i.i.for.body.i.i_crit_edge

do.end14.i.i.for.body.i.i_crit_edge:              ; preds = %do.end14.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i

do.end14.i.i.do.body13_crit_edge:                 ; preds = %do.end14.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body13

do.body22.i.i:                                    ; preds = %if.end4.i.i
  %56 = ptrtoint ptr %msg_enable7.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %msg_enable7.i, align 4
  %and24.i.i = and i32 %57, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i.i)
  %tobool25.not.i.i = icmp eq i32 %and24.i.i, 0
  br i1 %tobool25.not.i.i, label %do.body22.i.i.end_crit_edge, label %if.then26.i.i

do.body22.i.i.end_crit_edge:                      ; preds = %do.body22.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %end

if.then26.i.i:                                    ; preds = %do.body22.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %58 = ptrtoint ptr %ndev11.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ndev11.i.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %59, ptr noundef nonnull @.str.24) #8
  br label %end

do.body32.i.i:                                    ; preds = %if.end4.i.i
  %60 = ptrtoint ptr %msg_enable7.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %msg_enable7.i, align 4
  %and34.i.i = and i32 %61, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34.i.i)
  %tobool35.not.i.i = icmp eq i32 %and34.i.i, 0
  br i1 %tobool35.not.i.i, label %do.body32.i.i.do.body13_crit_edge, label %if.then36.i.i

do.body32.i.i.do.body13_crit_edge:                ; preds = %do.body32.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body13

if.then36.i.i:                                    ; preds = %do.body32.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %62 = ptrtoint ptr %ndev11.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %ndev11.i.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %63, ptr noundef nonnull @.str.25, i32 noundef %48) #8
  br label %do.body13

do.body13:                                        ; preds = %if.then36.i.i, %do.body32.i.i.do.body13_crit_edge, %do.end14.i.i.do.body13_crit_edge, %if.then3.i.i, %do.body.i8.i.do.body13_crit_edge, %qlge_mb_set_port_cfg.exit.i, %qlge_mb_set_port_cfg.exit.thread13.i
  %64 = ptrtoint ptr %msg_enable7.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %msg_enable7.i, align 4
  %and15 = and i32 %65, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %do.body13.err_crit_edge, label %do.body13.err.sink.split_crit_edge

do.body13.err.sink.split_crit_edge:               ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #7
  br label %err.sink.split

do.body13.err_crit_edge:                          ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

end:                                              ; preds = %err, %if.then26.i.i, %do.body22.i.i.end_crit_edge, %land.lhs.true.end_crit_edge
  %flags = getelementptr i8, ptr %work, i32 -15348
  tail call void @_clear_bit(i32 noundef 7, ptr noundef %flags) #5
  ret void

err.sink.split:                                   ; preds = %do.body13.err.sink.split_crit_edge, %do.body.err.sink.split_crit_edge
  %.str.14.sink = phi ptr [ @.str.13, %do.body.err.sink.split_crit_edge ], [ @.str.14, %do.body13.err.sink.split_crit_edge ]
  %ndev18 = getelementptr i8, ptr %work, i32 -14292
  %66 = ptrtoint ptr %ndev18 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ndev18, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %67, ptr noundef nonnull %.str.14.sink) #8
  br label %err

err:                                              ; preds = %err.sink.split, %do.body13.err_crit_edge, %do.body.err_crit_edge
  tail call void @qlge_queue_fw_error(ptr noundef %add.ptr) #5
  br label %end
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qlge_queue_fw_error(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qlge_mpi_idc_work(ptr noundef %work) local_unnamed_addr #0 align 64 {
entry:
  %mbc.i78 = alloca %struct.mbox_params, align 4
  %mbc.i = alloca %struct.mbox_params, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -16532
  %arrayidx = getelementptr i8, ptr %work, i32 -14168
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %shr = lshr i32 %1, 16
  %shr3 = lshr i32 %1, 8
  %and = and i32 %shr3, 15
  %trunc = trunc i32 %shr to i16
  %2 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.53)
  switch i16 %trunc, label %do.body [
    i16 288, label %entry.sw.bb_crit_edge
    i16 20, label %entry.sw.bb_crit_edge106
    i16 290, label %entry.sw.bb5_crit_edge
    i16 258, label %entry.sw.bb30_crit_edge
    i16 16, label %entry.sw.bb30_crit_edge107
    i16 256, label %entry.sw.bb32_crit_edge
    i16 257, label %entry.sw.bb32_crit_edge108
    i16 259, label %entry.sw.bb32_crit_edge109
    i16 1, label %entry.sw.bb32_crit_edge110
    i16 2, label %entry.sw.bb32_crit_edge111
    i16 0, label %entry.sw.bb32_crit_edge112
  ]

entry.sw.bb32_crit_edge112:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb32

entry.sw.bb32_crit_edge111:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb32

entry.sw.bb32_crit_edge110:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb32

entry.sw.bb32_crit_edge109:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb32

entry.sw.bb32_crit_edge108:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb32

entry.sw.bb32_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb32

entry.sw.bb30_crit_edge107:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb30

entry.sw.bb30_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb30

entry.sw.bb5_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb5

entry.sw.bb_crit_edge106:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

do.body:                                          ; preds = %entry
  %msg_enable = getelementptr i8, ptr %work, i32 -14264
  %3 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %msg_enable, align 4
  %and4 = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool.not = icmp eq i32 %and4, 0
  br i1 %tobool.not, label %do.body.sw.epilog_crit_edge, label %if.then

do.body.sw.epilog_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %ndev = getelementptr i8, ptr %work, i32 -14392
  %5 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ndev, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %6, ptr noundef nonnull @.str.15) #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge106
  tail call void @qlge_link_off(ptr noundef %add.ptr) #5
  br label %sw.bb5

sw.bb5:                                           ; preds = %sw.bb, %entry.sw.bb5_crit_edge
  %flags = getelementptr i8, ptr %work, i32 -15448
  tail call void @_set_bit(i32 noundef 8, ptr noundef %flags) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %do.body20, label %if.then7

if.then7:                                         ; preds = %sw.bb5
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %mbc.i) #5
  %7 = getelementptr inbounds i8, ptr %mbc.i, i32 20
  %8 = call ptr @memset(ptr %7, i32 0, i32 108)
  %in_count.i = getelementptr inbounds %struct.mbox_params, ptr %mbc.i, i32 0, i32 2
  %9 = ptrtoint ptr %in_count.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 5, ptr %in_count.i, align 4
  %out_count.i = getelementptr inbounds %struct.mbox_params, ptr %mbc.i, i32 0, i32 3
  %10 = ptrtoint ptr %out_count.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %out_count.i, align 4
  %11 = ptrtoint ptr %mbc.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 257, ptr %mbc.i, align 4
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  %arrayidx3.i = getelementptr inbounds [16 x i32], ptr %mbc.i, i32 0, i32 1
  %14 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %arrayidx3.i, align 4
  %arrayidx6.i = getelementptr i8, ptr %work, i32 -14164
  %15 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx6.i, align 8
  %arrayidx8.i = getelementptr inbounds [16 x i32], ptr %mbc.i, i32 0, i32 2
  %17 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %arrayidx8.i, align 4
  %arrayidx11.i = getelementptr i8, ptr %work, i32 -14160
  %18 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx11.i, align 4
  %arrayidx13.i = getelementptr inbounds [16 x i32], ptr %mbc.i, i32 0, i32 3
  %20 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx13.i, align 4
  %arrayidx16.i = getelementptr i8, ptr %work, i32 -14156
  %21 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx16.i, align 8
  %arrayidx18.i = getelementptr inbounds [16 x i32], ptr %mbc.i, i32 0, i32 4
  %23 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx18.i, align 4
  %call.i = call fastcc i32 @qlge_mailbox_command(ptr noundef %add.ptr, ptr noundef nonnull %mbc.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then7.do.body10_crit_edge

if.then7.do.body10_crit_edge:                     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body10

if.end.i:                                         ; preds = %if.then7
  %mbox_out19.i = getelementptr inbounds %struct.mbox_params, ptr %mbc.i, i32 0, i32 1
  %24 = ptrtoint ptr %mbox_out19.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %mbox_out19.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %25)
  %cmp.not.i = icmp eq i32 %25, 16384
  br i1 %cmp.not.i, label %qlge_mb_idc_ack.exit, label %do.body.i

do.body.i:                                        ; preds = %if.end.i
  %msg_enable.i = getelementptr i8, ptr %work, i32 -14264
  %26 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %msg_enable.i, align 4
  %and.i = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool22.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool22.not.i, label %do.body.i.do.body10_crit_edge, label %if.then23.i

do.body.i.do.body10_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body10

if.then23.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %ndev.i = getelementptr i8, ptr %work, i32 -14392
  %28 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ndev.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %29, ptr noundef nonnull @.str.26) #8
  br label %do.body10

qlge_mb_idc_ack.exit:                             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %mbc.i) #5
  br label %sw.epilog

do.body10:                                        ; preds = %if.then23.i, %do.body.i.do.body10_crit_edge, %if.then7.do.body10_crit_edge
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %mbc.i) #5
  %msg_enable11 = getelementptr i8, ptr %work, i32 -14264
  %30 = ptrtoint ptr %msg_enable11 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %msg_enable11, align 4
  %and12 = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %do.body10.sw.epilog_crit_edge, label %if.then14

do.body10.sw.epilog_crit_edge:                    ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.then14:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #7
  %ndev15 = getelementptr i8, ptr %work, i32 -14392
  %32 = ptrtoint ptr %ndev15 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ndev15, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %33, ptr noundef nonnull @.str.16) #8
  br label %sw.epilog

do.body20:                                        ; preds = %sw.bb5
  %msg_enable21 = getelementptr i8, ptr %work, i32 -14264
  %34 = ptrtoint ptr %msg_enable21 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %msg_enable21, align 4
  %and22 = and i32 %35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %do.body20.sw.epilog_crit_edge, label %if.then24

do.body20.sw.epilog_crit_edge:                    ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.then24:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #7
  %ndev25 = getelementptr i8, ptr %work, i32 -14392
  %36 = ptrtoint ptr %ndev25 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ndev25, align 4
  tail call void (ptr, ptr, ptr, ...) @netdev_printk(ptr noundef nonnull @.str.6, ptr noundef %37, ptr noundef nonnull @.str.17) #8
  br label %sw.epilog

sw.bb30:                                          ; preds = %entry.sw.bb30_crit_edge, %entry.sw.bb30_crit_edge107
  tail call void @qlge_link_off(ptr noundef %add.ptr) #5
  %flags31 = getelementptr i8, ptr %work, i32 -15448
  tail call void @_set_bit(i32 noundef 8, ptr noundef %flags31) #5
  br label %sw.bb32

sw.bb32:                                          ; preds = %sw.bb30, %entry.sw.bb32_crit_edge, %entry.sw.bb32_crit_edge108, %entry.sw.bb32_crit_edge109, %entry.sw.bb32_crit_edge110, %entry.sw.bb32_crit_edge111, %entry.sw.bb32_crit_edge112
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool33.not = icmp eq i32 %and, 0
  br i1 %tobool33.not, label %do.body49, label %if.then34

if.then34:                                        ; preds = %sw.bb32
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %mbc.i78) #5
  %38 = getelementptr inbounds i8, ptr %mbc.i78, i32 20
  %39 = call ptr @memset(ptr %38, i32 0, i32 108)
  %in_count.i79 = getelementptr inbounds %struct.mbox_params, ptr %mbc.i78, i32 0, i32 2
  %40 = ptrtoint ptr %in_count.i79 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 5, ptr %in_count.i79, align 4
  %out_count.i80 = getelementptr inbounds %struct.mbox_params, ptr %mbc.i78, i32 0, i32 3
  %41 = ptrtoint ptr %out_count.i80 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 1, ptr %out_count.i80, align 4
  %42 = ptrtoint ptr %mbc.i78 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 257, ptr %mbc.i78, align 4
  %43 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx, align 4
  %arrayidx3.i82 = getelementptr inbounds [16 x i32], ptr %mbc.i78, i32 0, i32 1
  %45 = ptrtoint ptr %arrayidx3.i82 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %arrayidx3.i82, align 4
  %arrayidx6.i83 = getelementptr i8, ptr %work, i32 -14164
  %46 = ptrtoint ptr %arrayidx6.i83 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx6.i83, align 8
  %arrayidx8.i84 = getelementptr inbounds [16 x i32], ptr %mbc.i78, i32 0, i32 2
  %48 = ptrtoint ptr %arrayidx8.i84 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %arrayidx8.i84, align 4
  %arrayidx11.i85 = getelementptr i8, ptr %work, i32 -14160
  %49 = ptrtoint ptr %arrayidx11.i85 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx11.i85, align 4
  %arrayidx13.i86 = getelementptr inbounds [16 x i32], ptr %mbc.i78, i32 0, i32 3
  %51 = ptrtoint ptr %arrayidx13.i86 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %arrayidx13.i86, align 4
  %arrayidx16.i87 = getelementptr i8, ptr %work, i32 -14156
  %52 = ptrtoint ptr %arrayidx16.i87 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx16.i87, align 8
  %arrayidx18.i88 = getelementptr inbounds [16 x i32], ptr %mbc.i78, i32 0, i32 4
  %54 = ptrtoint ptr %arrayidx18.i88 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %arrayidx18.i88, align 4
  %call.i89 = call fastcc i32 @qlge_mailbox_command(ptr noundef %add.ptr, ptr noundef nonnull %mbc.i78) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i89)
  %tobool.not.i90 = icmp eq i32 %call.i89, 0
  br i1 %tobool.not.i90, label %if.end.i93, label %if.then34.do.body38_crit_edge

if.then34.do.body38_crit_edge:                    ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body38

if.end.i93:                                       ; preds = %if.then34
  %mbox_out19.i91 = getelementptr inbounds %struct.mbox_params, ptr %mbc.i78, i32 0, i32 1
  %55 = ptrtoint ptr %mbox_out19.i91 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %mbox_out19.i91, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %56)
  %cmp.not.i92 = icmp eq i32 %56, 16384
  br i1 %cmp.not.i92, label %qlge_mb_idc_ack.exit101, label %do.body.i97

do.body.i97:                                      ; preds = %if.end.i93
  %msg_enable.i94 = getelementptr i8, ptr %work, i32 -14264
  %57 = ptrtoint ptr %msg_enable.i94 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %msg_enable.i94, align 4
  %and.i95 = and i32 %58, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i95)
  %tobool22.not.i96 = icmp eq i32 %and.i95, 0
  br i1 %tobool22.not.i96, label %do.body.i97.do.body38_crit_edge, label %if.then23.i99

do.body.i97.do.body38_crit_edge:                  ; preds = %do.body.i97
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body38

if.then23.i99:                                    ; preds = %do.body.i97
  call void @__sanitizer_cov_trace_pc() #7
  %ndev.i98 = getelementptr i8, ptr %work, i32 -14392
  %59 = ptrtoint ptr %ndev.i98 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ndev.i98, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %60, ptr noundef nonnull @.str.26) #8
  br label %do.body38

qlge_mb_idc_ack.exit101:                          ; preds = %if.end.i93
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %mbc.i78) #5
  br label %sw.epilog

do.body38:                                        ; preds = %if.then23.i99, %do.body.i97.do.body38_crit_edge, %if.then34.do.body38_crit_edge
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %mbc.i78) #5
  %msg_enable39 = getelementptr i8, ptr %work, i32 -14264
  %61 = ptrtoint ptr %msg_enable39 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %msg_enable39, align 4
  %and40 = and i32 %62, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %do.body38.sw.epilog_crit_edge, label %if.then42

do.body38.sw.epilog_crit_edge:                    ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.then42:                                        ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #7
  %ndev43 = getelementptr i8, ptr %work, i32 -14392
  %63 = ptrtoint ptr %ndev43 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %ndev43, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %64, ptr noundef nonnull @.str.16) #8
  br label %sw.epilog

do.body49:                                        ; preds = %sw.bb32
  %msg_enable50 = getelementptr i8, ptr %work, i32 -14264
  %65 = ptrtoint ptr %msg_enable50 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %msg_enable50, align 4
  %and51 = and i32 %66, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool52.not = icmp eq i32 %and51, 0
  br i1 %tobool52.not, label %do.body49.sw.epilog_crit_edge, label %if.then53

do.body49.sw.epilog_crit_edge:                    ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.then53:                                        ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #7
  %ndev54 = getelementptr i8, ptr %work, i32 -14392
  %67 = ptrtoint ptr %ndev54 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %ndev54, align 4
  tail call void (ptr, ptr, ptr, ...) @netdev_printk(ptr noundef nonnull @.str.6, ptr noundef %68, ptr noundef nonnull @.str.17) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then53, %do.body49.sw.epilog_crit_edge, %if.then42, %do.body38.sw.epilog_crit_edge, %qlge_mb_idc_ack.exit101, %if.then24, %do.body20.sw.epilog_crit_edge, %if.then14, %do.body10.sw.epilog_crit_edge, %qlge_mb_idc_ack.exit, %if.then, %do.body.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @qlge_link_off(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qlge_mpi_work(ptr noundef %work) local_unnamed_addr #0 align 64 {
entry:
  %mbc = alloca %struct.mbox_params, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -16332
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %mbc) #5
  %mpi_mutex = getelementptr i8, ptr %work, i32 -13900
  tail call void @mutex_lock_nested(ptr noundef %mpi_mutex, i32 noundef 0) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !107
  tail call void @arm_heavy_mb() #5
  %reg_base.i = getelementptr i8, ptr %work, i32 -14076
  %0 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_base.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 256) #5, !srcloc !108
  %out_count = getelementptr inbounds %struct.mbox_params, ptr %mbc, i32 0, i32 3
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %entry
  %2 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg_base.i, align 8
  %add.ptr.i12 = getelementptr i8, ptr %3, i32 48
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i12) #5, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !106
  %5 = and i32 %4, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %while.cond.while.end_crit_edge, label %while.body

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body:                                       ; preds = %while.cond
  %6 = call ptr @memset(ptr %mbc, i32 0, i32 132)
  %7 = ptrtoint ptr %out_count to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %out_count, align 4
  %call1 = call fastcc i32 @qlge_mpi_handler(ptr noundef %add.ptr, ptr noundef nonnull %mbc)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %while.body.while.cond_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond

while.end:                                        ; preds = %while.body.while.end_crit_edge, %while.cond.while.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !107
  tail call void @arm_heavy_mb() #5
  %8 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg_base.i, align 8
  %add.ptr.i14 = getelementptr i8, ptr %9, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14, i32 16777472) #5, !srcloc !108
  tail call void @mutex_unlock(ptr noundef %mpi_mutex) #5
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %mbc) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qlge_mpi_handler(ptr noundef %qdev, ptr nocapture noundef %mbcp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %out_count = getelementptr inbounds %struct.mbox_params, ptr %mbcp, i32 0, i32 3
  %0 = ptrtoint ptr %out_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %out_count, align 4
  store i32 1, ptr %out_count, align 4
  %call = tail call fastcc i32 @qlge_get_mb_sts(ptr noundef %qdev, ptr noundef %mbcp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end4, label %do.body

do.body:                                          ; preds = %entry
  %msg_enable = getelementptr inbounds %struct.qlge_adapter, ptr %qdev, i32 0, i32 18
  %2 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %msg_enable, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %do.body.do.end_crit_edge, label %if.then3

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.then3:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %ndev = getelementptr inbounds %struct.qlge_adapter, ptr %qdev, i32 0, i32 6
  %4 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ndev, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %5, ptr noundef nonnull @.str.27) #8
  br label %do.end

do.end:                                           ; preds = %if.then3, %do.body.do.end_crit_edge
  tail call void @qlge_queue_asic_error(ptr noundef %qdev) #5
  br label %end

if.end4:                                          ; preds = %entry
  %mbox_out = getelementptr inbounds %struct.mbox_params, ptr %mbcp, i32 0, i32 1
  %6 = ptrtoint ptr %mbox_out to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mbox_out, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.54)
  switch i32 %7, label %do.body56 [
    i32 4096, label %if.end4.sw.bb_crit_edge
    i32 16384, label %if.end4.sw.bb_crit_edge120
    i32 16385, label %if.end4.sw.bb_crit_edge121
    i32 16386, label %if.end4.sw.bb_crit_edge122
    i32 16387, label %if.end4.sw.bb_crit_edge123
    i32 16389, label %if.end4.sw.bb_crit_edge124
    i32 16390, label %if.end4.sw.bb_crit_edge125
    i32 33025, label %sw.bb7
    i32 33024, label %if.end4.sw.bb9_crit_edge
    i32 33026, label %if.end4.sw.bb9_crit_edge126
    i32 32785, label %sw.bb11
    i32 32786, label %sw.bb12
    i32 33792, label %sw.bb13
    i32 33072, label %sw.bb21
    i32 33073, label %sw.bb23
    i32 33793, label %sw.bb25
    i32 32770, label %do.body45
    i32 33056, label %sw.bb54
    i32 33040, label %if.end4.end_crit_edge
  ]

if.end4.end_crit_edge:                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %end

if.end4.sw.bb9_crit_edge126:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb9

if.end4.sw.bb9_crit_edge:                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb9

if.end4.sw.bb_crit_edge125:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

if.end4.sw.bb_crit_edge124:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

if.end4.sw.bb_crit_edge123:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

if.end4.sw.bb_crit_edge122:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

if.end4.sw.bb_crit_edge121:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

if.end4.sw.bb_crit_edge120:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

if.end4.sw.bb_crit_edge:                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

sw.bb:                                            ; preds = %if.end4.sw.bb_crit_edge, %if.end4.sw.bb_crit_edge120, %if.end4.sw.bb_crit_edge121, %if.end4.sw.bb_crit_edge122, %if.end4.sw.bb_crit_edge123, %if.end4.sw.bb_crit_edge124, %if.end4.sw.bb_crit_edge125
  %9 = ptrtoint ptr %out_count to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %1, ptr %out_count, align 4
  %call6 = tail call fastcc i32 @qlge_get_mb_sts(ptr noundef %qdev, ptr noundef %mbcp)
  br label %cleanup

sw.bb7:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  %call8 = tail call fastcc i32 @qlge_idc_req_aen(ptr noundef %qdev)
  br label %end

sw.bb9:                                           ; preds = %if.end4.sw.bb9_crit_edge, %if.end4.sw.bb9_crit_edge126
  %idc_mbc.i = getelementptr inbounds %struct.qlge_adapter, ptr %qdev, i32 0, i32 25
  %out_count.i = getelementptr inbounds %struct.qlge_adapter, ptr %qdev, i32 0, i32 25, i32 3
  %10 = ptrtoint ptr %out_count.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 4, ptr %out_count.i, align 4
  %call.i = tail call fastcc i32 @qlge_get_mb_sts(ptr noundef %qdev, ptr noundef %idc_mbc.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %do.body.i

do.body.i:                                        ; preds = %sw.bb9
  %msg_enable.i = getelementptr inbounds %struct.qlge_adapter, ptr %qdev, i32 0, i32 18
  %11 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %msg_enable.i, align 4
  %and.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %do.body.i.do.end.i_crit_edge, label %if.then2.i

do.body.i.do.end.i_crit_edge:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i

if.then2.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %ndev.i = getelementptr inbounds %struct.qlge_adapter, ptr %qdev, i32 0, i32 6
  %13 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ndev.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %14, ptr noundef nonnull @.str.33) #8
  br label %do.end.i

do.end.i:                                         ; preds = %if.then2.i, %do.body.i.do.end.i_crit_edge
  tail call void @qlge_queue_fw_error(ptr noundef %qdev) #5
  br label %end

if.else.i:                                        ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #7
  %ide_completion.i = getelementptr inbounds %struct.qlge_adapter, ptr %qdev, i32 0, i32 62
  tail call void @complete(ptr noundef %ide_completion.i) #5
  br label %end

sw.bb11:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @qlge_link_up(ptr noundef %qdev, ptr noundef %mbcp)
  br label %end

sw.bb12:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @qlge_link_down(ptr noundef %qdev, ptr noundef %mbcp)
  br label %end

sw.bb13:                                          ; preds = %if.end4
  %15 = ptrtoint ptr %mbcp to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mbcp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %16)
  %cmp = icmp eq i32 %16, 2
  br i1 %cmp, label %if.then15, label %if.end20

if.then15:                                        ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %out_count to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %1, ptr %out_count, align 4
  %call17 = tail call fastcc i32 @qlge_get_mb_sts(ptr noundef %qdev, ptr noundef %mbcp)
  %18 = ptrtoint ptr %mbox_out to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 16384, ptr %mbox_out, align 4
  br label %cleanup

if.end20:                                         ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @qlge_init_fw_done(ptr noundef %qdev, ptr noundef %mbcp)
  br label %end

sw.bb21:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @qlge_sfp_in(ptr noundef %qdev, ptr noundef %mbcp)
  br label %end

sw.bb23:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @qlge_sfp_out(ptr noundef %qdev, ptr noundef %mbcp)
  br label %end

sw.bb25:                                          ; preds = %if.end4
  %19 = ptrtoint ptr %mbcp to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %mbcp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %20)
  %cmp28 = icmp eq i32 %20, 2
  br i1 %cmp28, label %if.then29, label %do.body35

if.then29:                                        ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #7
  %21 = ptrtoint ptr %out_count to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %1, ptr %out_count, align 4
  %call31 = tail call fastcc i32 @qlge_get_mb_sts(ptr noundef %qdev, ptr noundef %mbcp)
  %22 = ptrtoint ptr %mbox_out to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 16389, ptr %mbox_out, align 4
  br label %cleanup

do.body35:                                        ; preds = %sw.bb25
  %msg_enable36 = getelementptr inbounds %struct.qlge_adapter, ptr %qdev, i32 0, i32 18
  %23 = ptrtoint ptr %msg_enable36 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %msg_enable36, align 4
  %and37 = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %do.body35.do.end43_crit_edge, label %if.then39

do.body35.do.end43_crit_edge:                     ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end43

if.then39:                                        ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #7
  %ndev40 = getelementptr inbounds %struct.qlge_adapter, ptr %qdev, i32 0, i32 6
  %25 = ptrtoint ptr %ndev40 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ndev40, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %26, ptr noundef nonnull @.str.28) #8
  br label %do.end43

do.end43:                                         ; preds = %if.then39, %do.body35.do.end43_crit_edge
  tail call void @qlge_queue_fw_error(ptr noundef %qdev) #5
  br label %end

do.body45:                                        ; preds = %if.end4
  %msg_enable46 = getelementptr inbounds %struct.qlge_adapter, ptr %qdev, i32 0, i32 18
  %27 = ptrtoint ptr %msg_enable46 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %msg_enable46, align 4
  %and47 = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %tobool48.not = icmp eq i32 %and47, 0
  br i1 %tobool48.not, label %do.body45.do.end53_crit_edge, label %if.then49

do.body45.do.end53_crit_edge:                     ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end53

if.then49:                                        ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #7
  %ndev50 = getelementptr inbounds %struct.qlge_adapter, ptr %qdev, i32 0, i32 6
  %29 = ptrtoint ptr %ndev50 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ndev50, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %30, ptr noundef nonnull @.str.29) #8
  br label %do.end53

do.end53:                                         ; preds = %if.then49, %do.body45.do.end53_crit_edge
  tail call void @qlge_queue_fw_error(ptr noundef %qdev) #5
  br label %end

sw.bb54:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @qlge_aen_lost(ptr noundef %qdev, ptr noundef %mbcp)
  br label %end

do.body56:                                        ; preds = %if.end4
  %msg_enable57 = getelementptr inbounds %struct.qlge_adapter, ptr %qdev, i32 0, i32 18
  %31 = ptrtoint ptr %msg_enable57 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %msg_enable57, align 4
  %and58 = and i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58)
  %tobool59.not = icmp eq i32 %and58, 0
  br i1 %tobool59.not, label %do.body56.end_crit_edge, label %if.then60

do.body56.end_crit_edge:                          ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #7
  br label %end

if.then60:                                        ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #7
  %ndev61 = getelementptr inbounds %struct.qlge_adapter, ptr %qdev, i32 0, i32 6
  %33 = ptrtoint ptr %ndev61 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ndev61, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %34, ptr noundef nonnull @.str.30, i32 noundef %7) #8
  br label %end

end:                                              ; preds = %if.then60, %do.body56.end_crit_edge, %sw.bb54, %do.end53, %do.end43, %sw.bb23, %sw.bb21, %if.end20, %sw.bb12, %sw.bb11, %if.else.i, %do.end.i, %sw.bb7, %if.end4.end_crit_edge, %do.end
  %status.0 = phi i32 [ %call, %do.end ], [ 0, %if.then60 ], [ 0, %do.body56.end_crit_edge ], [ 0, %if.end4.end_crit_edge ], [ 0, %sw.bb54 ], [ -5, %do.end53 ], [ -5, %do.end43 ], [ 0, %sw.bb23 ], [ 0, %sw.bb21 ], [ 0, %if.end20 ], [ 0, %sw.bb12 ], [ 0, %sw.bb11 ], [ %call8, %sw.bb7 ], [ %call.i, %do.end.i ], [ 0, %if.else.i ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !107
  tail call void @arm_heavy_mb() #5
  %reg_base.i = getelementptr inbounds %struct.qlge_adapter, ptr %qdev, i32 0, i32 15
  %35 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %reg_base.i, align 8
  %add.ptr.i = getelementptr i8, ptr %36, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 160) #5, !srcloc !108
  %37 = ptrtoint ptr %out_count to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %1, ptr %out_count, align 4
  br label %cleanup

cleanup:                                          ; preds = %end, %if.then29, %if.then15, %sw.bb
  %retval.0 = phi i32 [ %status.0, %end ], [ %call31, %if.then29 ], [ %call17, %if.then15 ], [ %call6, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qlge_mpi_reset_work(ptr noundef %work) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -16232
  %mpi_work = getelementptr i8, ptr %work, i32 100
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %mpi_work) #5
  %mpi_port_cfg_work = getelementptr i8, ptr %work, i32 200
  %call1 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %mpi_port_cfg_work) #5
  %mpi_idc_work = getelementptr i8, ptr %work, i32 300
  %call2 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %mpi_idc_work) #5
  %func.i = getelementptr i8, ptr %work, i32 -14076
  %0 = ptrtoint ptr %func.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %func.i, align 4
  %alt_func.i = getelementptr i8, ptr %work, i32 -14072
  %2 = ptrtoint ptr %alt_func.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %alt_func.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.i = icmp ult i32 %1, %3
  br i1 %cmp.i, label %entry.if.end6_crit_edge, label %qlge_own_firmware.exit

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

qlge_own_firmware.exit:                           ; preds = %entry
  %reg_base.i.i = getelementptr i8, ptr %work, i32 -13976
  %4 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_base.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 48
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !106
  %7 = ptrtoint ptr %alt_func.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %alt_func.i, align 8
  %add.i = add i32 %8, 8
  %9 = xor i32 %6, -1
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #5
  %11 = shl nuw i32 1, %add.i
  %12 = and i32 %11, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not = icmp eq i32 %12, 0
  br i1 %tobool.not, label %do.body, label %qlge_own_firmware.exit.if.end6_crit_edge

qlge_own_firmware.exit.if.end6_crit_edge:         ; preds = %qlge_own_firmware.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

do.body:                                          ; preds = %qlge_own_firmware.exit
  %msg_enable = getelementptr i8, ptr %work, i32 -13964
  %13 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %msg_enable, align 4
  %and = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %do.body.cleanup_crit_edge, label %if.then5

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %ndev = getelementptr i8, ptr %work, i32 -14092
  %15 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ndev, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %16, ptr noundef nonnull @.str.18) #8
  br label %cleanup

if.end6:                                          ; preds = %qlge_own_firmware.exit.if.end6_crit_edge, %entry.if.end6_crit_edge
  %call.i.i = tail call i32 @qlge_wait_reg_rdy(ptr noundef %add.ptr, i32 noundef 0, i32 noundef -2147483648, i32 noundef 536870912) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !107
  tail call void @arm_heavy_mb() #5
  %reg_base.i.i.i = getelementptr i8, ptr %work, i32 -13976
  %17 = ptrtoint ptr %reg_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %reg_base.i.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %18, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 16777216) #5, !srcloc !108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !107
  tail call void @arm_heavy_mb() #5
  %19 = ptrtoint ptr %reg_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %reg_base.i.i.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 269484032) #5, !srcloc !108
  %call1.i.i = tail call i32 @qlge_wait_reg_rdy(ptr noundef %add.ptr, i32 noundef 0, i32 noundef -2147483648, i32 noundef 536870912) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %if.end6.cleanup_crit_edge, %if.then5, %do.body.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qlge_sem_spinlock(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qlge_sem_unlock(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qlge_get_mb_sts(ptr noundef %qdev, ptr nocapture noundef %mbcp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @qlge_sem_spinlock(ptr noundef %qdev, i32 noundef -1073741824) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %out_count = getelementptr inbounds %struct.mbox_params, ptr %mbcp, i32 0, i32 3
  %0 = ptrtoint ptr %out_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %out_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp23 = icmp sgt i32 %1, 0
  br i1 %cmp23, label %for.body.lr.ph, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %mailbox_out = getelementptr inbounds %struct.qlge_adapter, ptr %qdev, i32 0, i32 24
  %reg_base.i.i = getelementptr inbounds %struct.qlge_adapter, ptr %qdev, i32 0, i32 15
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.024 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %2 = ptrtoint ptr %mailbox_out to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mailbox_out, align 4
  %arrayidx = getelementptr %struct.mbox_params, ptr %mbcp, i32 0, i32 1, i32 %i.024
  %call.i = tail call i32 @qlge_wait_reg_rdy(ptr noundef %qdev, i32 noundef 0, i32 noundef -2147483648, i32 noundef 536870912) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.body.do.body_crit_edge

for.body.do.body_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

if.end.i:                                         ; preds = %for.body
  %add = add i32 %3, %i.024
  %or.i = or i32 %add, 1073741824
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !107
  tail call void @arm_heavy_mb() #5
  %4 = tail call i32 @llvm.bswap.i32(i32 %or.i) #5
  %5 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %reg_base.i.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %4) #5, !srcloc !108
  %call1.i = tail call i32 @qlge_wait_reg_rdy(ptr noundef %qdev, i32 noundef 0, i32 noundef -2147483648, i32 noundef 536870912) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %for.inc, label %if.end.i.do.body_crit_edge

if.end.i.do.body_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

do.body:                                          ; preds = %if.end.i.do.body_crit_edge, %for.body.do.body_crit_edge
  %status.0.i.ph = phi i32 [ %call1.i, %if.end.i.do.body_crit_edge ], [ %call.i, %for.body.do.body_crit_edge ]
  %msg_enable = getelementptr inbounds %struct.qlge_adapter, ptr %qdev, i32 0, i32 18
  %7 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %msg_enable, align 4
  %and = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %do.body.for.end_crit_edge, label %if.then5

do.body.for.end_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %ndev = getelementptr inbounds %struct.qlge_adapter, ptr %qdev, i32 0, i32 6
  %9 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ndev, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %10, ptr noundef nonnull @.str.31) #8
  br label %for.end

for.inc:                                          ; preds = %if.end.i
  %11 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %reg_base.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %12, i32 4
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !105
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !106
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %arrayidx, align 4
  %inc = add nuw nsw i32 %i.024, 1
  %16 = ptrtoint ptr %out_count to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %out_count, align 4
  %cmp = icmp slt i32 %inc, %17
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then5, %do.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %status.1 = phi i32 [ %status.0.i.ph, %if.then5 ], [ %status.0.i.ph, %do.body.for.end_crit_edge ], [ 0, %for.cond.preheader.for.end_crit_edge ], [ 0, %for.inc.for.end_crit_edge ]
  tail call void @qlge_sem_unlock(ptr noundef %qdev, i32 noundef -1073741824) #5
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %status.1, %for.end ], [ -16, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @qlge_queue_asic_error(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qlge_idc_req_aen(ptr noundef %qdev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %idc_mbc = getelementptr inbounds %struct.qlge_adapter, ptr %qdev, i32 0, i32 25
  %msg_enable = getelementptr inbounds %struct.qlge_adapter, ptr %qdev, i32 0, i32 18
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %if.then

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %ndev = getelementptr inbounds %struct.qlge_adapter, ptr %qdev, i32 0, i32 6
  %2 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ndev, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %3, ptr noundef nonnull @.str.32) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry.do.end_crit_edge
  %out_count = getelementptr inbounds %struct.qlge_adapter, ptr %qdev, i32 0, i32 25, i32 3
  %4 = ptrtoint ptr %out_count to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 4, ptr %out_count, align 4
  %call = tail call fastcc i32 @qlge_get_mb_sts(ptr noundef %qdev, ptr noundef %idc_mbc)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.else, label %do.body3

do.body3:                                         ; preds = %do.end
  %5 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %msg_enable, align 4
  %and5 = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %do.body3.do.end11_crit_edge, label %if.then7

do.body3.do.end11_crit_edge:                      ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end11

if.then7:                                         ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #7
  %ndev8 = getelementptr inbounds %struct.qlge_adapter, ptr %qdev, i32 0, i32 6
  %7 = ptrtoint ptr %ndev8 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ndev8, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %8, ptr noundef nonnull @.str.27) #8
  br label %do.end11

do.end11:                                         ; preds = %if.then7, %do.body3.do.end11_crit_edge
  tail call void @qlge_queue_asic_error(ptr noundef %qdev) #5
  br label %if.end13

if.else:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !107
  tail call void @arm_heavy_mb() #5
  %reg_base.i = getelementptr inbounds %struct.qlge_adapter, ptr %qdev, i32 0, i32 15
  %9 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %reg_base.i, align 8
  %add.ptr.i = getelementptr i8, ptr %10, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 256) #5, !srcloc !108
  %workqueue = getelementptr inbounds %struct.qlge_adapter, ptr %qdev, i32 0, i32 56
  %11 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %workqueue, align 8
  %mpi_idc_work = getelementptr inbounds %struct.qlge_adapter, ptr %qdev, i32 0, i32 61
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %12, ptr noundef %mpi_idc_work, i32 noundef 0) #5
  br label %if.end13

if.end13:                                         ; preds = %if.else, %do.end11
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qlge_link_up(ptr noundef %qdev, ptr nocapture noundef %mbcp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %out_count = getelementptr inbounds %struct.mbox_params, ptr %mbcp, i32 0, i32 3
  %0 = ptrtoint ptr %out_count to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 2, ptr %out_count, align 4
  %call = tail call fastcc i32 @qlge_get_mb_sts(ptr noundef %qdev, ptr noundef %mbcp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end3, label %do.body

do.body:                                          ; preds = %entry
  %msg_enable = getelementptr inbounds %struct.qlge_adapter, ptr %qdev, i32 0, i32 18
  %1 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %msg_enable, align 4
  %and = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %do.body.cleanup_crit_edge, label %if.then2

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then2:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %ndev = getelementptr inbounds %struct.qlge_adapter, ptr %qdev, i32 0, i32 6
  %3 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ndev, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %4, ptr noundef nonnull @.str.34, ptr noundef nonnull @__func__.qlge_link_up) #8
  br label %cleanup

if.end3:                                          ; preds = %entry
  %arrayidx = getelementptr %struct.mbox_params, ptr %mbcp, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  %link_status = getelementptr inbounds %struct.qlge_adapter, ptr %qdev, i32 0, i32 50
  %7 = ptrtoint ptr %link_status to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %link_status, align 4
  %msg_enable5 = getelementptr inbounds %struct.qlge_adapter, ptr %qdev, i32 0, i32 18
  %8 = ptrtoint ptr %msg_enable5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %msg_enable5, align 4
  %and6 = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.end3.do.end12_crit_edge, label %if.then8

if.end3.do.end12_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end12

if.then8:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  %ndev9 = getelementptr inbounds %struct.qlge_adapter, ptr %qdev, i32 0, i32 6
  %10 = ptrtoint ptr %ndev9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ndev9, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %11, ptr noundef nonnull @.str.35) #8
  br label %do.end12

do.end12:                                         ; preds = %if.then8, %if.end3.do.end12_crit_edge
  %flags = getelementptr inbounds %struct.qlge_adapter, ptr %qdev, i32 0, i32 1
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %flags, align 4
  %14 = and i32 %13, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool14.not = icmp eq i32 %14, 0
  br i1 %tobool14.not, label %do.end12.if.end30_crit_edge, label %if.then15

do.end12.if.end30_crit_edge:                      ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30

if.then15:                                        ; preds = %do.end12
  %call16 = tail call i32 @qlge_cam_route_initialize(ptr noundef %qdev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end28, label %do.body19

do.body19:                                        ; preds = %if.then15
  %15 = ptrtoint ptr %msg_enable5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %msg_enable5, align 4
  %and21 = and i32 %16, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %do.body19.cleanup_crit_edge, label %if.then23

do.body19.cleanup_crit_edge:                      ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then23:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #7
  %ndev24 = getelementptr inbounds %struct.qlge_adapter, ptr %qdev, i32 0, i32 6
  %17 = ptrtoint ptr %ndev24 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ndev24, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %18, ptr noundef nonnull @.str.36) #8
  br label %cleanup

if.end28:                                         ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_clear_bit(i32 noundef 8, ptr noundef %flags) #5
  br label %if.end30

if.end30:                                         ; preds = %if.end28, %do.end12.if.end30_crit_edge
  %19 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %flags, align 4
  %21 = and i32 %20, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool33.not = icmp eq i32 %21, 0
  br i1 %tobool33.not, label %do.body35, label %if.end30.if.end46_crit_edge

if.end30.if.end46_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end46

do.body35:                                        ; preds = %if.end30
  %22 = ptrtoint ptr %msg_enable5 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %msg_enable5, align 4
  %and37 = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %do.body35.do.end43_crit_edge, label %if.then39

do.body35.do.end43_crit_edge:                     ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end43

if.then39:                                        ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #7
  %ndev40 = getelementptr inbounds %struct.qlge_adapter, ptr %qdev, i32 0, i32 6
  %24 = ptrtoint ptr %ndev40 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ndev40, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %25, ptr noundef nonnull @.str.37) #8
  br label %do.end43

do.end43:                                         ; preds = %if.then39, %do.body35.do.end43_crit_edge
  tail call void @_set_bit(i32 noundef 7, ptr noundef %flags) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !107
  tail call void @arm_heavy_mb() #5
  %reg_base.i = getelementptr inbounds %struct.qlge_adapter, ptr %qdev, i32 0, i32 15
  %26 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %reg_base.i, align 8
  %add.ptr.i = getelementptr i8, ptr %27, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 256) #5, !srcloc !108
  %workqueue = getelementptr inbounds %struct.qlge_adapter, ptr %qdev, i32 0, i32 56
  %28 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %workqueue, align 8
  %mpi_port_cfg_work = getelementptr inbounds %struct.qlge_adapter, ptr %qdev, i32 0, i32 60
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %29, ptr noundef %mpi_port_cfg_work, i32 noundef 0) #5
  br label %if.end46

if.end46:                                         ; preds = %do.end43, %if.end30.if.end46_crit_edge
  tail call void @qlge_link_on(ptr noundef %qdev) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end46, %if.then23, %do.body19.cleanup_crit_edge, %if.then2, %do.body.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qlge_link_down(ptr noundef %qdev, ptr nocapture noundef %mbcp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %out_count = getelementptr inbounds %struct.mbox_params, ptr %mbcp, i32 0, i32 3
  %0 = ptrtoint ptr %out_count to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 3, ptr %out_count, align 4
  %call = tail call fastcc i32 @qlge_get_mb_sts(ptr noundef %qdev, ptr noundef %mbcp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end3_crit_edge, label %do.body

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3

do.body:                                          ; preds = %entry
  %msg_enable = getelementptr inbounds %struct.qlge_adapter, ptr %qdev, i32 0, i32 18
  %1 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %msg_enable, align 4
  %and = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %do.body.if.end3_crit_edge, label %if.then2

do.body.if.end3_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3

if.then2:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %ndev = getelementptr inbounds %struct.qlge_adapter, ptr %qdev, i32 0, i32 6
  %3 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ndev, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %4, ptr noundef nonnull @.str.38) #8
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %do.body.if.end3_crit_edge, %entry.if.end3_crit_edge
  tail call void @qlge_link_off(ptr noundef %qdev) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qlge_init_fw_done(ptr noundef %qdev, ptr nocapture noundef %mbcp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %out_count = getelementptr inbounds %struct.mbox_params, ptr %mbcp, i32 0, i32 3
  %0 = ptrtoint ptr %out_count to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 2, ptr %out_count, align 4
  %call = tail call fastcc i32 @qlge_get_mb_sts(ptr noundef %qdev, ptr noundef %mbcp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %msg_enable4 = getelementptr inbounds %struct.qlge_adapter, ptr %qdev, i32 0, i32 18
  %1 = ptrtoint ptr %msg_enable4 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %msg_enable4, align 4
  %and5 = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool.not, label %do.body3, label %do.body

do.body:                                          ; preds = %entry
  br i1 %tobool6.not, label %do.body.if.end27_crit_edge, label %do.body.if.end27.sink.split_crit_edge

do.body.if.end27.sink.split_crit_edge:            ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end27.sink.split

do.body.if.end27_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end27

do.body3:                                         ; preds = %entry
  br i1 %tobool6.not, label %do.body3.do.end11_crit_edge, label %if.then7

do.body3.do.end11_crit_edge:                      ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end11

if.then7:                                         ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #7
  %ndev8 = getelementptr inbounds %struct.qlge_adapter, ptr %qdev, i32 0, i32 6
  %3 = ptrtoint ptr %ndev8 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ndev8, align 4
  %arrayidx = getelementptr %struct.mbox_params, ptr %mbcp, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %4, ptr noundef nonnull @.str.40, i32 noundef %6) #8
  br label %do.end11

do.end11:                                         ; preds = %if.then7, %do.body3.do.end11_crit_edge
  %arrayidx13 = getelementptr %struct.mbox_params, ptr %mbcp, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx13, align 4
  %fw_rev_id = getelementptr inbounds %struct.qlge_adapter, ptr %qdev, i32 0, i32 9
  %9 = ptrtoint ptr %fw_rev_id to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %fw_rev_id, align 8
  %call14 = tail call i32 @qlge_cam_route_initialize(ptr noundef %qdev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %do.end11.if.end27_crit_edge, label %do.body17

do.end11.if.end27_crit_edge:                      ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end27

do.body17:                                        ; preds = %do.end11
  %10 = ptrtoint ptr %msg_enable4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %msg_enable4, align 4
  %and19 = and i32 %11, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %do.body17.if.end27_crit_edge, label %do.body17.if.end27.sink.split_crit_edge

do.body17.if.end27.sink.split_crit_edge:          ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end27.sink.split

do.body17.if.end27_crit_edge:                     ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end27

if.end27.sink.split:                              ; preds = %do.body17.if.end27.sink.split_crit_edge, %do.body.if.end27.sink.split_crit_edge
  %.str.36.sink = phi ptr [ @.str.39, %do.body.if.end27.sink.split_crit_edge ], [ @.str.36, %do.body17.if.end27.sink.split_crit_edge ]
  %ndev22 = getelementptr inbounds %struct.qlge_adapter, ptr %qdev, i32 0, i32 6
  %12 = ptrtoint ptr %ndev22 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ndev22, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %13, ptr noundef nonnull %.str.36.sink) #8
  br label %if.end27

if.end27:                                         ; preds = %if.end27.sink.split, %do.body17.if.end27_crit_edge, %do.end11.if.end27_crit_edge, %do.body.if.end27_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qlge_sfp_in(ptr noundef %qdev, ptr nocapture noundef %mbcp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %out_count = getelementptr inbounds %struct.mbox_params, ptr %mbcp, i32 0, i32 3
  %0 = ptrtoint ptr %out_count to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 5, ptr %out_count, align 4
  %call = tail call fastcc i32 @qlge_get_mb_sts(ptr noundef %qdev, ptr noundef %mbcp)
  %msg_enable4 = getelementptr inbounds %struct.qlge_adapter, ptr %qdev, i32 0, i32 18
  %1 = ptrtoint ptr %msg_enable4 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %msg_enable4, align 4
  %and5 = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %entry.if.end12_crit_edge, label %if.end12.sink.split

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

if.end12.sink.split:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %.str.42..str.41 = select i1 %tobool.not, ptr @.str.42, ptr @.str.41
  %ndev8 = getelementptr inbounds %struct.qlge_adapter, ptr %qdev, i32 0, i32 6
  %3 = ptrtoint ptr %ndev8 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ndev8, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %4, ptr noundef nonnull %.str.42..str.41) #8
  br label %if.end12

if.end12:                                         ; preds = %if.end12.sink.split, %entry.if.end12_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qlge_sfp_out(ptr noundef %qdev, ptr nocapture noundef %mbcp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %out_count = getelementptr inbounds %struct.mbox_params, ptr %mbcp, i32 0, i32 3
  %0 = ptrtoint ptr %out_count to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %out_count, align 4
  %call = tail call fastcc i32 @qlge_get_mb_sts(ptr noundef %qdev, ptr noundef %mbcp)
  %msg_enable4 = getelementptr inbounds %struct.qlge_adapter, ptr %qdev, i32 0, i32 18
  %1 = ptrtoint ptr %msg_enable4 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %msg_enable4, align 4
  %and5 = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %entry.if.end12_crit_edge, label %if.end12.sink.split

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

if.end12.sink.split:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %.str.44..str.43 = select i1 %tobool.not, ptr @.str.44, ptr @.str.43
  %ndev8 = getelementptr inbounds %struct.qlge_adapter, ptr %qdev, i32 0, i32 6
  %3 = ptrtoint ptr %ndev8 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ndev8, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %4, ptr noundef nonnull %.str.44..str.43) #8
  br label %if.end12

if.end12:                                         ; preds = %if.end12.sink.split, %entry.if.end12_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qlge_aen_lost(ptr noundef %qdev, ptr nocapture noundef %mbcp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %out_count = getelementptr inbounds %struct.mbox_params, ptr %mbcp, i32 0, i32 3
  %0 = ptrtoint ptr %out_count to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 6, ptr %out_count, align 4
  %call = tail call fastcc i32 @qlge_get_mb_sts(ptr noundef %qdev, ptr noundef %mbcp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %msg_enable4 = getelementptr inbounds %struct.qlge_adapter, ptr %qdev, i32 0, i32 18
  %1 = ptrtoint ptr %msg_enable4 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %msg_enable4, align 4
  %and5 = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool.not, label %if.else, label %do.body

do.body:                                          ; preds = %entry
  br i1 %tobool6.not, label %do.body.if.end22_crit_edge, label %if.then2

do.body.if.end22_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22

if.then2:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %ndev = getelementptr inbounds %struct.qlge_adapter, ptr %qdev, i32 0, i32 6
  %3 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ndev, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %4, ptr noundef nonnull @.str.45) #8
  br label %if.end22

if.else:                                          ; preds = %entry
  br i1 %tobool6.not, label %if.else.do.end11_crit_edge, label %if.then7

if.else.do.end11_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end11

if.then7:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %ndev8 = getelementptr inbounds %struct.qlge_adapter, ptr %qdev, i32 0, i32 6
  %5 = ptrtoint ptr %ndev8 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ndev8, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %6, ptr noundef nonnull @.str.46) #8
  br label %do.end11

do.end11:                                         ; preds = %if.then7, %if.else.do.end11_crit_edge
  %7 = ptrtoint ptr %out_count to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %out_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp1 = icmp sgt i32 %8, 0
  br i1 %cmp1, label %do.body13.lr.ph, label %do.end11.if.end22_crit_edge

do.end11.if.end22_crit_edge:                      ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22

do.body13.lr.ph:                                  ; preds = %do.end11
  %ndev18 = getelementptr inbounds %struct.qlge_adapter, ptr %qdev, i32 0, i32 6
  br label %do.body13

do.body13:                                        ; preds = %for.inc.do.body13_crit_edge, %do.body13.lr.ph
  %i.02 = phi i32 [ 0, %do.body13.lr.ph ], [ %inc, %for.inc.do.body13_crit_edge ]
  %9 = ptrtoint ptr %msg_enable4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %msg_enable4, align 4
  %and15 = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %do.body13.for.inc_crit_edge, label %if.then17

do.body13.for.inc_crit_edge:                      ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then17:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %ndev18 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ndev18, align 4
  %arrayidx = getelementptr %struct.mbox_params, ptr %mbcp, i32 0, i32 1, i32 %i.02
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %12, ptr noundef nonnull @.str.47, i32 noundef %i.02, i32 noundef %14) #8
  br label %for.inc

for.inc:                                          ; preds = %if.then17, %do.body13.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.02, 1
  %15 = ptrtoint ptr %out_count to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %out_count, align 4
  %cmp = icmp slt i32 %inc, %16
  br i1 %cmp, label %for.inc.do.body13_crit_edge, label %for.inc.if.end22_crit_edge

for.inc.if.end22_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22

for.inc.do.body13_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body13

if.end22:                                         ; preds = %for.inc.if.end22_crit_edge, %do.end11.if.end22_crit_edge, %if.then2, %do.body.if.end22_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qlge_cam_route_initialize(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qlge_link_on(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94}
!llvm.module.flags = !{!96, !97, !98, !99, !100, !101, !102, !103}
!llvm.ident = !{!104}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/staging/qlge/qlge_mpi.c", i32 630, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/staging/qlge/qlge_mpi.c", i32 662, i32 3}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/staging/qlge/qlge_mpi.c", i32 672, i32 3}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/staging/qlge/qlge_mpi.c", i32 735, i32 3}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/staging/qlge/qlge_mpi.c", i32 738, i32 3}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/staging/qlge/qlge_mpi.c", i32 823, i32 3}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/staging/qlge/qlge_mpi.c", i32 827, i32 3}
!14 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/staging/qlge/qlge_mpi.c", i32 854, i32 3}
!17 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/staging/qlge/qlge_mpi.c", i32 969, i32 3}
!19 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/staging/qlge/qlge_mpi.c", i32 995, i32 3}
!21 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/staging/qlge/qlge_mpi.c", i32 1026, i32 3}
!23 = !{ptr @.str.12, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/staging/qlge/qlge_mpi.c", i32 1034, i32 3}
!25 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/staging/qlge/qlge_mpi.c", i32 1123, i32 3}
!27 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/staging/qlge/qlge_mpi.c", i32 1136, i32 3}
!29 = !{ptr @.str.15, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/staging/qlge/qlge_mpi.c", i32 1168, i32 3}
!31 = !{ptr @.str.16, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/staging/qlge/qlge_mpi.c", i32 1185, i32 5}
!33 = !{ptr @.str.17, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/staging/qlge/qlge_mpi.c", i32 1188, i32 4}
!35 = !{ptr @.str.18, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/staging/qlge/qlge_mpi.c", i32 1268, i32 3}
!37 = !{ptr @.str.19, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/staging/qlge/qlge_mpi.c", i32 583, i32 2}
!39 = !{ptr @.str.20, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/staging/qlge/qlge_mpi.c", i32 772, i32 3}
!41 = !{ptr @.str.21, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/staging/qlge/qlge_mpi.c", i32 1069, i32 3}
!43 = !{ptr @.str.22, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/staging/qlge/qlge_mpi.c", i32 923, i32 4}
!45 = !{ptr @.str.23, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/staging/qlge/qlge_mpi.c", i32 931, i32 4}
!47 = !{ptr @.str.24, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/staging/qlge/qlge_mpi.c", i32 935, i32 4}
!49 = !{ptr @.str.25, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/staging/qlge/qlge_mpi.c", i32 939, i32 4}
!51 = !{ptr @.str.26, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/staging/qlge/qlge_mpi.c", i32 705, i32 3}
!53 = !{ptr @.str.27, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/staging/qlge/qlge_mpi.c", i32 399, i32 3}
!55 = !{ptr @.str.28, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/staging/qlge/qlge_mpi.c", i32 488, i32 3}
!57 = !{ptr @.str.29, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/staging/qlge/qlge_mpi.c", i32 495, i32 3}
!59 = !{ptr @.str.30, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/staging/qlge/qlge_mpi.c", i32 508, i32 3}
!61 = !{ptr @.str.31, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/staging/qlge/qlge_mpi.c", i32 134, i32 4}
!63 = !{ptr @.str.32, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/staging/qlge/qlge_mpi.c", i32 207, i32 2}
!65 = !{ptr @.str.33, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/staging/qlge/qlge_mpi.c", i32 239, i32 3}
!67 = !{ptr @.str.34, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/staging/qlge/qlge_mpi.c", i32 259, i32 3}
!69 = !{ptr @__func__.qlge_link_up, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @.str.35, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/staging/qlge/qlge_mpi.c", i32 265, i32 2}
!72 = !{ptr @.str.36, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/staging/qlge/qlge_mpi.c", i32 273, i32 4}
!74 = !{ptr @.str.37, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/staging/qlge/qlge_mpi.c", i32 285, i32 3}
!76 = !{ptr @.str.38, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/staging/qlge/qlge_mpi.c", i32 307, i32 3}
!78 = !{ptr @.str.39, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/staging/qlge/qlge_mpi.c", i32 371, i32 3}
!80 = !{ptr @.str.40, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/staging/qlge/qlge_mpi.c", i32 373, i32 3}
!82 = !{ptr @.str.41, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/staging/qlge/qlge_mpi.c", i32 320, i32 3}
!84 = !{ptr @.str.42, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/staging/qlge/qlge_mpi.c", i32 322, i32 3}
!86 = !{ptr @.str.43, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/staging/qlge/qlge_mpi.c", i32 335, i32 3}
!88 = !{ptr @.str.44, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/staging/qlge/qlge_mpi.c", i32 337, i32 3}
!90 = !{ptr @.str.45, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/staging/qlge/qlge_mpi.c", i32 350, i32 3}
!92 = !{ptr @.str.46, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/staging/qlge/qlge_mpi.c", i32 354, i32 3}
!94 = !{ptr @.str.47, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/staging/qlge/qlge_mpi.c", i32 356, i32 4}
!96 = !{i32 1, !"wchar_size", i32 2}
!97 = !{i32 1, !"min_enum_size", i32 4}
!98 = !{i32 8, !"branch-target-enforcement", i32 0}
!99 = !{i32 8, !"sign-return-address", i32 0}
!100 = !{i32 8, !"sign-return-address-all", i32 0}
!101 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!102 = !{i32 7, !"uwtable", i32 1}
!103 = !{i32 7, !"frame-pointer", i32 2}
!104 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!105 = !{i64 4289576}
!106 = !{i64 2156453353}
!107 = !{i64 2156453739}
!108 = !{i64 4289158}
!109 = !{!"auto-init"}
