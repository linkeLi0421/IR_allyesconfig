; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/microchip/sparx5/sparx5_fdma.c_pt.bc'
source_filename = "../drivers/net/ethernet/microchip/sparx5/sparx5_fdma.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.sparx5 = type { ptr, ptr, i32, i32, [332 x ptr], i32, %struct.mutex, [65 x ptr], i32, i32, i32, ptr, ptr, %struct.mutex, %struct.delayed_work, ptr, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, [6 x i8], ptr, [3 x i32], [3 x i32], [3 x i32], [4096 x [3 x i32]], %struct.list_head, %struct.mutex, %struct.delayed_work, ptr, i8, i32, i32, %struct.sparx5_rx, %struct.sparx5_tx }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.sparx5_rx = type { ptr, ptr, [64 x [15 x ptr]], i32, i32, i32, %struct.napi_struct, i32, ptr, i64 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.sparx5_tx = type { ptr, ptr, %struct.list_head, i32, i32, i64, i64 }
%struct.sparx5_tx_dcb_hw = type { i64, i64, [1 x %struct.sparx5_db_hw] }
%struct.sparx5_db_hw = type { i64, i64 }
%struct.sparx5_db = type { %struct.list_head, ptr }
%struct.sk_buff = type { %union.anon.42, %union.anon.45, %union.anon.46, [48 x i8], %union.anon.47, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.49, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.42 = type { %struct.anon.43 }
%struct.anon.43 = type { ptr, ptr, %union.anon.44 }
%union.anon.44 = type { ptr }
%union.anon.45 = type { ptr }
%union.anon.46 = type { i64 }
%union.anon.47 = type { %struct.anon.48 }
%struct.anon.48 = type { i32, ptr }
%union.anon.49 = type { %struct.anon.50 }
%struct.anon.50 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.51, i32, i32, i32, i16, i16, %union.anon.53, i32, %union.anon.54, %union.anon.55, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.51 = type { i32 }
%union.anon.53 = type { i32 }
%union.anon.54 = type { i32 }
%union.anon.55 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.sparx5_rx_dcb_hw = type { i64, i64, [15 x %struct.sparx5_db_hw] }
%struct.frame_info = type { i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.103, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.120, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.103 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.120 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.sparx5_port = type { ptr, ptr, ptr, ptr, %struct.sparx5_port_config, %struct.phylink_config, ptr, %struct.phylink_pcs, i16, i16, i16, i8, i8, i8, i8, i32, i32, i32, [9 x i32], i8, %struct.hrtimer }
%struct.sparx5_port_config = type { i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, i32 }
%struct.phylink_config = type { ptr, i32, i8, i8, i8, i8, ptr, [1 x i32], i32 }
%struct.phylink_pcs = type { ptr, i8 }

@sparx5_fdma_xmit.first_time = internal global { i1, [31 x i8] } zeroinitializer, align 32
@sparx5_fdma_handler._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.sparx5_fdma_handler = private unnamed_addr constant [20 x i8] c"sparx5_fdma_handler\00", align 1
@sparx5_fdma_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.sparx5_fdma_handler, ptr @.str.2, i32 475, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ERR: int: %#x, type: %#x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"drivers/net/ethernet/microchip/sparx5/sparx5_fdma.c\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sparx5_fdma_handler._entry_ptr = internal global ptr @sparx5_fdma_handler._entry, section ".printk_index", align 4
@sparx5_fdma_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 564, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Could not allocate RX buffers: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sparx5_fdma_start\00", [46 x i8] zeroinitializer }, align 32
@sparx5_fdma_start._entry_ptr = internal global ptr @sparx5_fdma_start._entry, section ".printk_index", align 4
@sparx5_fdma_start._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.6, ptr @.str.2, i32 569, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Could not allocate TX buffers: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@sparx5_fdma_start._entry_ptr.9 = internal global ptr @sparx5_fdma_start._entry.7, section ".printk_index", align 4
@.str.10 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"drivers/net/ethernet/microchip/sparx5/sparx5_main.h\00", [44 x i8] zeroinitializer }, align 32
@sparx5_fdma_rx_get_frame._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 235, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Data on inactive port %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sparx5_fdma_rx_get_frame\00", [39 x i8] zeroinitializer }, align 32
@sparx5_fdma_rx_get_frame._entry_ptr = internal global ptr @sparx5_fdma_rx_get_frame._entry, section ".printk_index", align 4
@___asan_gen_.13 = private unnamed_addr constant [28 x i8] c"sparx5_fdma_xmit.first_time\00", align 1
@___asan_gen_.14 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 473, i32 3 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 564, i32 3 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 569, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant [55 x i8] c"../drivers/net/ethernet/microchip/sparx5/sparx5_main.h\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 346, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.59 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.60 = private constant [55 x i8] c"../drivers/net/ethernet/microchip/sparx5/sparx5_fdma.c\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 235, i32 3 }
@llvm.compiler.used = appending global [21 x ptr] [ptr @sparx5_fdma_handler._entry, ptr @sparx5_fdma_handler._entry_ptr, ptr @sparx5_fdma_rx_get_frame._entry, ptr @sparx5_fdma_rx_get_frame._entry_ptr, ptr @sparx5_fdma_start._entry, ptr @sparx5_fdma_start._entry.7, ptr @sparx5_fdma_start._entry_ptr, ptr @sparx5_fdma_start._entry_ptr.9, ptr @sparx5_fdma_xmit.first_time, ptr @sparx5_fdma_handler._rs, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.12], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sparx5_fdma_xmit.first_time to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sparx5_fdma_handler._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sparx5_fdma_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sparx5_fdma_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sparx5_fdma_start._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sparx5_fdma_rx_get_frame._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sparx5_fdma_xmit(ptr noundef %sparx5, ptr nocapture noundef readonly %ifh, ptr nocapture noundef readonly %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tx1 = getelementptr inbounds %struct.sparx5, ptr %sparx5, i32 0, i32 33
  %0 = ptrtoint ptr %tx1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx1, align 8
  %incdec.ptr.i = getelementptr %struct.sparx5_tx_dcb_hw, ptr %1, i32 1
  %2 = ptrtoint ptr %incdec.ptr.i to i32
  %first_entry.i = getelementptr inbounds %struct.sparx5, ptr %sparx5, i32 0, i32 33, i32 1
  %3 = ptrtoint ptr %first_entry.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %first_entry.i, align 4
  %5 = ptrtoint ptr %4 to i32
  %add.i = add i32 %5, 2048
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %2)
  %cmp.not.i = icmp ugt i32 %add.i, %2
  %spec.select.i = select i1 %cmp.not.i, ptr %incdec.ptr.i, ptr %4
  %status = getelementptr inbounds %struct.sparx5_tx_dcb_hw, ptr %spec.select.i, i32 0, i32 2, i32 0, i32 1
  %6 = ptrtoint ptr %status to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %status, align 8
  %and = and i64 %7, 524288
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dropped = getelementptr inbounds %struct.sparx5, ptr %sparx5, i32 0, i32 33, i32 6
  %8 = ptrtoint ptr %dropped to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %dropped, align 8
  %inc = add i64 %9, 1
  store i64 %inc, ptr %dropped, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %db_list = getelementptr inbounds %struct.sparx5, ptr %sparx5, i32 0, i32 33, i32 2
  %10 = ptrtoint ptr %db_list to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %db_list, align 8
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %11) #5
  br i1 %call.i.i, label %if.end.i.i, label %if.end.__list_del_entry.exit.i_crit_edge

if.end.__list_del_entry.exit.i_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i.i, align 4
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %11, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev1.i.i.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %15, ptr %13, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %if.end.__list_del_entry.exit.i_crit_edge
  %prev.i2.i = getelementptr inbounds %struct.sparx5, ptr %sparx5, i32 0, i32 33, i32 2, i32 1
  %18 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev.i2.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %11, ptr noundef %19, ptr noundef %db_list) #5
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move_tail.exit_crit_edge

__list_del_entry.exit.i.list_move_tail.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_move_tail.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %11, ptr %prev.i2.i, align 4
  %21 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %db_list, ptr %11, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %22 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %prev3.i.i.i, align 4
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %11, ptr %19, align 4
  br label %list_move_tail.exit

list_move_tail.exit:                              ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move_tail.exit_crit_edge
  %24 = ptrtoint ptr %spec.select.i to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 1, ptr %spec.select.i, align 8
  %dma = getelementptr inbounds %struct.sparx5, ptr %sparx5, i32 0, i32 33, i32 3
  %25 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %dma, align 8
  %27 = ptrtoint ptr %spec.select.i to i32
  %28 = ptrtoint ptr %first_entry.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %first_entry.i, align 4
  %30 = ptrtoint ptr %29 to i32
  %sub = add i32 %26, %27
  %add = sub i32 %sub, %30
  %conv = zext i32 %add to i64
  %31 = ptrtoint ptr %tx1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %tx1, align 8
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %conv, ptr %32, align 8
  store ptr %spec.select.i, ptr %tx1, align 8
  %cpu_addr = getelementptr inbounds %struct.sparx5_db, ptr %11, i32 0, i32 1
  %34 = ptrtoint ptr %cpu_addr to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %cpu_addr, align 4
  %36 = call ptr @memset(ptr %35, i32 0, i32 2048)
  %37 = load ptr, ptr %cpu_addr, align 4
  %38 = call ptr @memcpy(ptr %37, ptr %ifh, i32 36)
  %39 = load ptr, ptr %cpu_addr, align 4
  %add.ptr9 = getelementptr i8, ptr %39, i32 36
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %40 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %data, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %42 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %len, align 4
  %44 = call ptr @memcpy(ptr %add.ptr9, ptr %41, i32 %43)
  %45 = load i32, ptr %len, align 4
  %add12 = add i32 %45, 40
  %and13 = and i32 %add12, 65535
  %or = or i32 %and13, 196608
  %conv14 = zext i32 %or to i64
  %46 = ptrtoint ptr %status to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 %conv14, ptr %status, align 8
  %.b = load i1, ptr @sparx5_fdma_xmit.first_time, align 1
  br i1 %.b, label %if.else, label %if.then17

if.then17:                                        ; preds = %list_move_tail.exit
  %47 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %dma, align 8
  %channel_id.i = getelementptr inbounds %struct.sparx5, ptr %sparx5, i32 0, i32 33, i32 4
  %49 = ptrtoint ptr %channel_id.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %channel_id.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !37
  tail call void @arm_heavy_mb() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %50)
  %cmp51.not.i.i.i = icmp slt i32 %50, 8
  br i1 %cmp51.not.i.i.i, label %if.then17.spx5_wr.exit.i_crit_edge, label %do.end67.i.i.i, !prof !38

if.then17.spx5_wr.exit.i_crit_edge:               ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #7
  br label %spx5_wr.exit.i

do.end67.i.i.i:                                   ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 348, i32 noundef 9, ptr noundef null) #5
  br label %spx5_wr.exit.i

spx5_wr.exit.i:                                   ; preds = %do.end67.i.i.i, %if.then17.spx5_wr.exit.i_crit_edge
  %51 = tail call i32 @llvm.bswap.i32(i32 %48) #5
  %arrayidx.i.i.i = getelementptr %struct.sparx5, ptr %sparx5, i32 0, i32 4, i32 117
  %52 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr82.i.i.i = getelementptr i8, ptr %53, i32 60
  %mul83.i.i.i = shl i32 %50, 2
  %add.ptr84.i.i.i = getelementptr i8, ptr %add.ptr82.i.i.i, i32 %mul83.i.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr84.i.i.i, i32 %51) #5, !srcloc !39
  %54 = ptrtoint ptr %channel_id.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %channel_id.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !37
  tail call void @arm_heavy_mb() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %55)
  %cmp51.not.i.i59.i = icmp slt i32 %55, 8
  br i1 %cmp51.not.i.i59.i, label %spx5_wr.exit.i.spx5_wr.exit67.i_crit_edge, label %do.end67.i.i60.i, !prof !38

spx5_wr.exit.i.spx5_wr.exit67.i_crit_edge:        ; preds = %spx5_wr.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %spx5_wr.exit67.i

do.end67.i.i60.i:                                 ; preds = %spx5_wr.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 348, i32 noundef 9, ptr noundef null) #5
  br label %spx5_wr.exit67.i

spx5_wr.exit67.i:                                 ; preds = %do.end67.i.i60.i, %spx5_wr.exit.i.spx5_wr.exit67.i_crit_edge
  %56 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr82.i.i64.i = getelementptr i8, ptr %57, i32 92
  %mul83.i.i65.i = shl i32 %55, 2
  %add.ptr84.i.i66.i = getelementptr i8, ptr %add.ptr82.i.i64.i, i32 %mul83.i.i65.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr84.i.i66.i, i32 0) #5, !srcloc !39
  %58 = ptrtoint ptr %channel_id.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %channel_id.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !37
  tail call void @arm_heavy_mb() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %59)
  %cmp51.not.i.i68.i = icmp slt i32 %59, 8
  br i1 %cmp51.not.i.i68.i, label %spx5_wr.exit67.i.sparx5_fdma_tx_activate.exit_crit_edge, label %do.end67.i.i69.i, !prof !38

spx5_wr.exit67.i.sparx5_fdma_tx_activate.exit_crit_edge: ; preds = %spx5_wr.exit67.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sparx5_fdma_tx_activate.exit

do.end67.i.i69.i:                                 ; preds = %spx5_wr.exit67.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 348, i32 noundef 9, ptr noundef null) #5
  br label %sparx5_fdma_tx_activate.exit

sparx5_fdma_tx_activate.exit:                     ; preds = %do.end67.i.i69.i, %spx5_wr.exit67.i.sparx5_fdma_tx_activate.exit_crit_edge
  %60 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr82.i.i73.i = getelementptr i8, ptr %61, i32 232
  %mul83.i.i74.i = shl i32 %59, 2
  %add.ptr84.i.i75.i = getelementptr i8, ptr %add.ptr82.i.i73.i, i32 %mul83.i.i74.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr84.i.i75.i, i32 1107296256) #5, !srcloc !39
  %62 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr82.i.i80.i = getelementptr i8, ptr %63, i32 384
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82.i.i80.i) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void @arm_heavy_mb() #5
  %65 = and i32 %64, -268435457
  %66 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr82.i5.i.i = getelementptr i8, ptr %67, i32 384
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i5.i.i, i32 %65) #5, !srcloc !39
  %68 = ptrtoint ptr %channel_id.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %channel_id.i, align 4
  %shl.i = shl nuw i32 1, %69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !37
  tail call void @arm_heavy_mb() #5
  %70 = tail call i32 @llvm.bswap.i32(i32 %shl.i) #5
  %71 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i.i83.i = getelementptr i8, ptr %72, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i83.i, i32 %70) #5, !srcloc !39
  store i1 true, ptr @sparx5_fdma_xmit.first_time, align 1
  br label %if.end18

if.else:                                          ; preds = %list_move_tail.exit
  call void @__sanitizer_cov_trace_pc() #7
  %channel_id.i40 = getelementptr inbounds %struct.sparx5, ptr %sparx5, i32 0, i32 33, i32 4
  %73 = ptrtoint ptr %channel_id.i40 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %channel_id.i40, align 4
  %shl.i41 = shl nuw i32 1, %74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !37
  tail call void @arm_heavy_mb() #5
  %75 = tail call i32 @llvm.bswap.i32(i32 %shl.i41) #5
  %arrayidx.i.i.i42 = getelementptr %struct.sparx5, ptr %sparx5, i32 0, i32 4, i32 117
  %76 = ptrtoint ptr %arrayidx.i.i.i42 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %arrayidx.i.i.i42, align 4
  %add.ptr82.i.i.i43 = getelementptr i8, ptr %77, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i.i.i43, i32 %75) #5, !srcloc !39
  br label %if.end18

if.end18:                                         ; preds = %if.else, %sparx5_fdma_tx_activate.exit
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sparx5_fdma_handler(i32 noundef %irq, ptr noundef %args) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i.i = getelementptr %struct.sparx5, ptr %args, i32 0, i32 4, i32 117
  %0 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr82.i.i = getelementptr i8, ptr %1, i32 400
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82.i.i) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !43
  %3 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr82.i.i27 = getelementptr i8, ptr %4, i32 408
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82.i.i27) #5, !srcloc !40
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !43
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !37
  tail call void @arm_heavy_mb() #5
  %7 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr82.i.i30 = getelementptr i8, ptr %8, i32 404
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i.i30, i32 0) #5, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !37
  tail call void @arm_heavy_mb() #5
  %9 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr82.i.i34 = getelementptr i8, ptr %10, i32 400
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i.i34, i32 %2) #5, !srcloc !39
  %napi = getelementptr inbounds %struct.sparx5, ptr %args, i32 0, i32 32, i32 6
  %call.i = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi) #5
  br i1 %call.i, label %if.then.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__napi_schedule(ptr noundef %napi) #5
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool2.not = icmp eq i32 %5, 0
  br i1 %tobool2.not, label %if.end.if.end12_crit_edge, label %if.then3

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

if.then3:                                         ; preds = %if.end
  %11 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr82.i.i37 = getelementptr i8, ptr %12, i32 420
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82.i.i37) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !43
  %call5 = tail call i32 @___ratelimit(ptr noundef nonnull @sparx5_fdma_handler._rs, ptr noundef nonnull @__func__.sparx5_fdma_handler) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.then3.do.end11_crit_edge, label %do.end

if.then3.do.end11_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end11

do.end:                                           ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #7
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #5
  %dev = getelementptr inbounds %struct.sparx5, ptr %args, i32 0, i32 1
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.1, i32 noundef %6, i32 noundef %14) #8
  br label %do.end11

do.end11:                                         ; preds = %do.end, %if.then3.do.end11_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !37
  tail call void @arm_heavy_mb() #5
  %17 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr82.i.i41 = getelementptr i8, ptr %18, i32 408
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i.i41, i32 %5) #5, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !37
  tail call void @arm_heavy_mb() #5
  %19 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr82.i.i45 = getelementptr i8, ptr %20, i32 420
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i.i45, i32 %13) #5, !srcloc !39
  br label %if.end12

if.end12:                                         ; preds = %do.end11, %if.end.if.end12_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sparx5_fdma_start(ptr noundef %sparx5) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !37
  tail call void @arm_heavy_mb() #5
  %arrayidx.i.i = getelementptr %struct.sparx5, ptr %sparx5, i32 0, i32 4, i32 117
  %0 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr82.i.i = getelementptr i8, ptr %1, i32 432
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i.i, i32 0) #5, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !37
  tail call void @arm_heavy_mb() #5
  %2 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr82.i.i109 = getelementptr i8, ptr %3, i32 432
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i.i109, i32 16777216) #5, !srcloc !39
  %arrayidx.i.i111 = getelementptr %struct.sparx5, ptr %sparx5, i32 0, i32 4, i32 12
  %4 = ptrtoint ptr %arrayidx.i.i111 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i.i111, align 4
  %add.ptr82.i.i112 = getelementptr i8, ptr %5, i32 176
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82.i.i112) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void @arm_heavy_mb() #5
  %7 = and i32 %6, -469762049
  %8 = or i32 %7, 268435456
  %9 = ptrtoint ptr %arrayidx.i.i111 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.i.i111, align 4
  %add.ptr82.i5.i = getelementptr i8, ptr %10, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i5.i, i32 %8) #5, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !37
  tail call void @arm_heavy_mb() #5
  %arrayidx.i.i.i = getelementptr %struct.sparx5, ptr %sparx5, i32 0, i32 4, i32 177
  %11 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.i.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 184549376) #5, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !37
  tail call void @arm_heavy_mb() #5
  %13 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %14, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 150994944) #5, !srcloc !39
  %arrayidx.i.i247.i = getelementptr %struct.sparx5, ptr %sparx5, i32 0, i32 4, i32 9
  %arrayidx.i.i252.i = getelementptr %struct.sparx5, ptr %sparx5, i32 0, i32 4, i32 115
  %arrayidx.i.i276.i = getelementptr %struct.sparx5, ptr %sparx5, i32 0, i32 4, i32 175
  %arrayidx.i.i302.i = getelementptr %struct.sparx5, ptr %sparx5, i32 0, i32 4, i32 119
  br label %spx5_rmw.exit272.i

spx5_rmw.exit272.i:                               ; preds = %spx5_rmw.exit272.i.spx5_rmw.exit272.i_crit_edge, %entry
  %portno.0315.i = phi i32 [ 65, %entry ], [ %inc.i, %spx5_rmw.exit272.i.spx5_rmw.exit272.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !37
  tail call void @arm_heavy_mb() #5
  %15 = ptrtoint ptr %arrayidx.i.i247.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.i.i247.i, align 4
  %add.ptr82.i.i.i = getelementptr i8, ptr %16, i32 33820
  %mul83.i.i.i = shl i32 %portno.0315.i, 2
  %add.ptr84.i.i.i = getelementptr i8, ptr %add.ptr82.i.i.i, i32 %mul83.i.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr84.i.i.i, i32 1140981760) #5, !srcloc !39
  %17 = ptrtoint ptr %arrayidx.i.i252.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx.i.i252.i, align 4
  %add.ptr82.i.i254.i = getelementptr i8, ptr %18, i32 1380
  %add.ptr84.i.i256.i = getelementptr i8, ptr %add.ptr82.i.i254.i, i32 %mul83.i.i.i
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr84.i.i256.i) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void @arm_heavy_mb() #5
  %20 = or i32 %19, 16777216
  %21 = ptrtoint ptr %arrayidx.i.i252.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx.i.i252.i, align 4
  %add.ptr82.i5.i.i = getelementptr i8, ptr %22, i32 1380
  %add.ptr84.i7.i.i = getelementptr i8, ptr %add.ptr82.i5.i.i, i32 %mul83.i.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr84.i7.i.i, i32 %20) #5, !srcloc !39
  %23 = ptrtoint ptr %arrayidx.i.i252.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx.i.i252.i, align 4
  %add.ptr82.i.i262.i = getelementptr i8, ptr %24, i32 1380
  %add.ptr84.i.i264.i = getelementptr i8, ptr %add.ptr82.i.i262.i, i32 %mul83.i.i.i
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr84.i.i264.i) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void @arm_heavy_mb() #5
  %26 = and i32 %25, 33554431
  %27 = or i32 %26, -939524096
  %28 = ptrtoint ptr %arrayidx.i.i252.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.i.i252.i, align 4
  %add.ptr82.i5.i270.i = getelementptr i8, ptr %29, i32 1380
  %add.ptr84.i7.i271.i = getelementptr i8, ptr %add.ptr82.i5.i270.i, i32 %mul83.i.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr84.i7.i271.i, i32 %27) #5, !srcloc !39
  %call.i = tail call i32 @sparx5_port_fwd_urg(ptr noundef %sparx5, i32 noundef 2500) #5
  %shl.i = shl i32 %call.i, 10
  %and193.i = and i32 %shl.i, 523264
  %30 = ptrtoint ptr %arrayidx.i.i276.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx.i.i276.i, align 4
  %add.ptr84.i.i278.i = getelementptr i8, ptr %31, i32 %mul83.i.i.i
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr84.i.i278.i) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void @arm_heavy_mb() #5
  %33 = and i32 %32, -16518913
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #5
  %or194.i = or i32 %and193.i, %34
  %or.i282.i = or i32 %or194.i, 524288
  %35 = tail call i32 @llvm.bswap.i32(i32 %or.i282.i) #5
  %36 = ptrtoint ptr %arrayidx.i.i276.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx.i.i276.i, align 4
  %add.ptr84.i7.i283.i = getelementptr i8, ptr %37, i32 %mul83.i.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr84.i7.i283.i, i32 %35) #5, !srcloc !39
  %38 = ptrtoint ptr %arrayidx.i.i252.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx.i.i252.i, align 4
  %add.ptr.i.i289.i = getelementptr i8, ptr %39, i32 20
  %add.ptr84.i.i291.i = getelementptr i8, ptr %add.ptr.i.i289.i, i32 %mul83.i.i.i
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr84.i.i291.i) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void @arm_heavy_mb() #5
  %41 = or i32 %40, 524288
  %42 = ptrtoint ptr %arrayidx.i.i252.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx.i.i252.i, align 4
  %add.ptr.i4.i296.i = getelementptr i8, ptr %43, i32 20
  %add.ptr84.i7.i297.i = getelementptr i8, ptr %add.ptr.i4.i296.i, i32 %mul83.i.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr84.i7.i297.i, i32 %41) #5, !srcloc !39
  %44 = ptrtoint ptr %arrayidx.i.i302.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx.i.i302.i, align 4
  %add.ptr82.i.i304.i = getelementptr i8, ptr %45, i32 184008
  %add.ptr84.i.i306.i = getelementptr i8, ptr %add.ptr82.i.i304.i, i32 %mul83.i.i.i
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr84.i.i306.i) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void @arm_heavy_mb() #5
  %47 = or i32 %46, 134217728
  %48 = ptrtoint ptr %arrayidx.i.i302.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx.i.i302.i, align 4
  %add.ptr82.i5.i312.i = getelementptr i8, ptr %49, i32 184008
  %add.ptr84.i7.i313.i = getelementptr i8, ptr %add.ptr82.i5.i312.i, i32 %mul83.i.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr84.i7.i313.i, i32 %47) #5, !srcloc !39
  %inc.i = add nuw nsw i32 %portno.0315.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 67
  br i1 %exitcond.not.i, label %sparx5_fdma_injection_mode.exit, label %spx5_rmw.exit272.i.spx5_rmw.exit272.i_crit_edge

spx5_rmw.exit272.i.spx5_rmw.exit272.i_crit_edge:  ; preds = %spx5_rmw.exit272.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %spx5_rmw.exit272.i

sparx5_fdma_injection_mode.exit:                  ; preds = %spx5_rmw.exit272.i
  %rx = getelementptr inbounds %struct.sparx5, ptr %sparx5, i32 0, i32 32
  %channel_id.i = getelementptr inbounds %struct.sparx5, ptr %sparx5, i32 0, i32 32, i32 7
  %50 = ptrtoint ptr %channel_id.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 6, ptr %channel_id.i, align 8
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %sparx5_fdma_injection_mode.exit
  %idx.03.i = phi i32 [ 0, %sparx5_fdma_injection_mode.exit ], [ %inc.i114, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.sparx5, ptr %sparx5, i32 0, i32 7, i32 %idx.03.i
  %51 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i113 = icmp eq ptr %52, null
  br i1 %tobool.not.i113, label %for.body.i.for.inc.i_crit_edge, label %land.lhs.true.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %52, align 8
  %tobool1.not.i = icmp eq ptr %54, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.for.inc.i_crit_edge, label %cleanup.i

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

cleanup.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %ndev3.i = getelementptr inbounds %struct.sparx5, ptr %sparx5, i32 0, i32 32, i32 8
  %55 = ptrtoint ptr %ndev3.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %54, ptr %ndev3.i, align 4
  br label %sparx5_fdma_rx_init.exit

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i114 = add nuw nsw i32 %idx.03.i, 1
  %exitcond.not.i115 = icmp eq i32 %inc.i114, 65
  br i1 %exitcond.not.i115, label %for.inc.i.sparx5_fdma_rx_init.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.inc.i.sparx5_fdma_rx_init.exit_crit_edge:     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sparx5_fdma_rx_init.exit

sparx5_fdma_rx_init.exit:                         ; preds = %for.inc.i.sparx5_fdma_rx_init.exit_crit_edge, %cleanup.i
  %tx = getelementptr inbounds %struct.sparx5, ptr %sparx5, i32 0, i32 33
  %channel_id.i116 = getelementptr inbounds %struct.sparx5, ptr %sparx5, i32 0, i32 33, i32 4
  %56 = ptrtoint ptr %channel_id.i116 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %channel_id.i116, align 4
  %dev.i = getelementptr inbounds %struct.sparx5, ptr %sparx5, i32 0, i32 1
  %57 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev.i, align 4
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %58, i32 noundef 16384, i32 noundef 3520) #5
  %59 = ptrtoint ptr %rx to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call.i.i, ptr %rx, align 8
  %tobool.not.i117 = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i117, label %sparx5_fdma_rx_init.exit.do.end80_crit_edge, label %if.end.i

sparx5_fdma_rx_init.exit.do.end80_crit_edge:      ; preds = %sparx5_fdma_rx_init.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end80

if.end.i:                                         ; preds = %sparx5_fdma_rx_init.exit
  %60 = ptrtoint ptr %call.i.i to i32
  %call.i64.i = tail call i32 @__virt_to_phys(i32 noundef %60) #5
  %dma.i = getelementptr inbounds %struct.sparx5, ptr %sparx5, i32 0, i32 32, i32 5
  %61 = ptrtoint ptr %dma.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %call.i64.i, ptr %dma.i, align 8
  %62 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %rx, align 8
  %last_entry.i = getelementptr inbounds %struct.sparx5, ptr %sparx5, i32 0, i32 32, i32 1
  %64 = ptrtoint ptr %last_entry.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %63, ptr %last_entry.i, align 4
  %db_index.i = getelementptr inbounds %struct.sparx5, ptr %sparx5, i32 0, i32 32, i32 3
  %65 = ptrtoint ptr %db_index.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 0, ptr %db_index.i, align 8
  %dcb_index.i = getelementptr inbounds %struct.sparx5, ptr %sparx5, i32 0, i32 32, i32 4
  %66 = ptrtoint ptr %dcb_index.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 0, ptr %dcb_index.i, align 4
  %ndev.i.i = getelementptr inbounds %struct.sparx5, ptr %sparx5, i32 0, i32 32, i32 8
  br label %for.body.i119

for.body.i119:                                    ; preds = %for.end.i.for.body.i119_crit_edge, %if.end.i
  %idx.068.i = phi i32 [ 0, %if.end.i ], [ %inc25.i, %for.end.i.for.body.i119_crit_edge ]
  %67 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %rx, align 8
  %arrayidx.i118 = getelementptr %struct.sparx5_rx_dcb_hw, ptr %68, i32 %idx.068.i
  %info.i = getelementptr %struct.sparx5_rx_dcb_hw, ptr %68, i32 %idx.068.i, i32 1
  %69 = ptrtoint ptr %info.i to i32
  call void @__asan_store8_noabort(i32 %69)
  store i64 0, ptr %info.i, align 8
  br label %for.body9.i

for.body9.i:                                      ; preds = %if.end14.i.for.body9.i_crit_edge, %for.body.i119
  %jdx.067.i = phi i32 [ 0, %for.body.i119 ], [ %inc.i120, %if.end14.i.for.body9.i_crit_edge ]
  %70 = ptrtoint ptr %ndev.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %ndev.i.i, align 4
  %call.i65.i = tail call ptr @__netdev_alloc_skb(ptr noundef %71, i32 noundef 2048, i32 noundef 2592) #5
  %tobool12.not.i = icmp eq ptr %call.i65.i, null
  br i1 %tobool12.not.i, label %for.body9.i.do.end80_crit_edge, label %if.end14.i

for.body9.i.do.end80_crit_edge:                   ; preds = %for.body9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end80

if.end14.i:                                       ; preds = %for.body9.i
  %arrayidx10.i = getelementptr %struct.sparx5_rx_dcb_hw, ptr %68, i32 %idx.068.i, i32 2, i32 %jdx.067.i
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i65.i, i32 0, i32 19
  %72 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %data.i, align 4
  %74 = ptrtoint ptr %73 to i32
  %call.i66.i = tail call i32 @__virt_to_phys(i32 noundef %74) #5
  %conv.i = zext i32 %call.i66.i to i64
  %75 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store8_noabort(i32 %75)
  store i64 %conv.i, ptr %arrayidx10.i, align 8
  %status.i = getelementptr %struct.sparx5_rx_dcb_hw, ptr %68, i32 %idx.068.i, i32 2, i32 %jdx.067.i, i32 1
  %76 = ptrtoint ptr %status.i to i32
  call void @__asan_store8_noabort(i32 %76)
  store i64 0, ptr %status.i, align 8
  %arrayidx18.i = getelementptr %struct.sparx5, ptr %sparx5, i32 0, i32 32, i32 2, i32 %idx.068.i, i32 %jdx.067.i
  %77 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %call.i65.i, ptr %arrayidx18.i, align 4
  %inc.i120 = add nuw nsw i32 %jdx.067.i, 1
  %exitcond.not.i121 = icmp eq i32 %inc.i120, 15
  br i1 %exitcond.not.i121, label %for.end.i, label %if.end14.i.for.body9.i_crit_edge

if.end14.i.for.body9.i_crit_edge:                 ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body9.i

for.end.i:                                        ; preds = %if.end14.i
  %78 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %dma.i, align 8
  %mul.i = shl i32 %idx.068.i, 8
  %add22.i = add i32 %79, %mul.i
  %conv23.i = zext i32 %add22.i to i64
  %status.i.i = getelementptr %struct.sparx5_rx_dcb_hw, ptr %68, i32 %idx.068.i, i32 2, i32 0, i32 1
  %80 = ptrtoint ptr %status.i.i to i32
  call void @__asan_store8_noabort(i32 %80)
  store i64 262144, ptr %status.i.i, align 8
  %status.1.i.i = getelementptr %struct.sparx5_rx_dcb_hw, ptr %68, i32 %idx.068.i, i32 2, i32 1, i32 1
  %81 = ptrtoint ptr %status.1.i.i to i32
  call void @__asan_store8_noabort(i32 %81)
  store i64 262144, ptr %status.1.i.i, align 8
  %status.2.i.i = getelementptr %struct.sparx5_rx_dcb_hw, ptr %68, i32 %idx.068.i, i32 2, i32 2, i32 1
  %82 = ptrtoint ptr %status.2.i.i to i32
  call void @__asan_store8_noabort(i32 %82)
  store i64 262144, ptr %status.2.i.i, align 8
  %status.3.i.i = getelementptr %struct.sparx5_rx_dcb_hw, ptr %68, i32 %idx.068.i, i32 2, i32 3, i32 1
  %83 = ptrtoint ptr %status.3.i.i to i32
  call void @__asan_store8_noabort(i32 %83)
  store i64 262144, ptr %status.3.i.i, align 8
  %status.4.i.i = getelementptr %struct.sparx5_rx_dcb_hw, ptr %68, i32 %idx.068.i, i32 2, i32 4, i32 1
  %84 = ptrtoint ptr %status.4.i.i to i32
  call void @__asan_store8_noabort(i32 %84)
  store i64 262144, ptr %status.4.i.i, align 8
  %status.5.i.i = getelementptr %struct.sparx5_rx_dcb_hw, ptr %68, i32 %idx.068.i, i32 2, i32 5, i32 1
  %85 = ptrtoint ptr %status.5.i.i to i32
  call void @__asan_store8_noabort(i32 %85)
  store i64 262144, ptr %status.5.i.i, align 8
  %status.6.i.i = getelementptr %struct.sparx5_rx_dcb_hw, ptr %68, i32 %idx.068.i, i32 2, i32 6, i32 1
  %86 = ptrtoint ptr %status.6.i.i to i32
  call void @__asan_store8_noabort(i32 %86)
  store i64 262144, ptr %status.6.i.i, align 8
  %status.7.i.i = getelementptr %struct.sparx5_rx_dcb_hw, ptr %68, i32 %idx.068.i, i32 2, i32 7, i32 1
  %87 = ptrtoint ptr %status.7.i.i to i32
  call void @__asan_store8_noabort(i32 %87)
  store i64 262144, ptr %status.7.i.i, align 8
  %status.8.i.i = getelementptr %struct.sparx5_rx_dcb_hw, ptr %68, i32 %idx.068.i, i32 2, i32 8, i32 1
  %88 = ptrtoint ptr %status.8.i.i to i32
  call void @__asan_store8_noabort(i32 %88)
  store i64 262144, ptr %status.8.i.i, align 8
  %status.9.i.i = getelementptr %struct.sparx5_rx_dcb_hw, ptr %68, i32 %idx.068.i, i32 2, i32 9, i32 1
  %89 = ptrtoint ptr %status.9.i.i to i32
  call void @__asan_store8_noabort(i32 %89)
  store i64 262144, ptr %status.9.i.i, align 8
  %status.10.i.i = getelementptr %struct.sparx5_rx_dcb_hw, ptr %68, i32 %idx.068.i, i32 2, i32 10, i32 1
  %90 = ptrtoint ptr %status.10.i.i to i32
  call void @__asan_store8_noabort(i32 %90)
  store i64 262144, ptr %status.10.i.i, align 8
  %status.11.i.i = getelementptr %struct.sparx5_rx_dcb_hw, ptr %68, i32 %idx.068.i, i32 2, i32 11, i32 1
  %91 = ptrtoint ptr %status.11.i.i to i32
  call void @__asan_store8_noabort(i32 %91)
  store i64 262144, ptr %status.11.i.i, align 8
  %status.12.i.i = getelementptr %struct.sparx5_rx_dcb_hw, ptr %68, i32 %idx.068.i, i32 2, i32 12, i32 1
  %92 = ptrtoint ptr %status.12.i.i to i32
  call void @__asan_store8_noabort(i32 %92)
  store i64 262144, ptr %status.12.i.i, align 8
  %status.13.i.i = getelementptr %struct.sparx5_rx_dcb_hw, ptr %68, i32 %idx.068.i, i32 2, i32 13, i32 1
  %93 = ptrtoint ptr %status.13.i.i to i32
  call void @__asan_store8_noabort(i32 %93)
  store i64 262144, ptr %status.13.i.i, align 8
  %status.14.i.i = getelementptr %struct.sparx5_rx_dcb_hw, ptr %68, i32 %idx.068.i, i32 2, i32 14, i32 1
  %94 = ptrtoint ptr %status.14.i.i to i32
  call void @__asan_store8_noabort(i32 %94)
  store i64 262144, ptr %status.14.i.i, align 8
  %95 = ptrtoint ptr %arrayidx.i118 to i32
  call void @__asan_store8_noabort(i32 %95)
  store i64 1, ptr %arrayidx.i118, align 8
  %96 = ptrtoint ptr %info.i to i32
  call void @__asan_store8_noabort(i32 %96)
  store i64 2048, ptr %info.i, align 8
  %97 = ptrtoint ptr %last_entry.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %last_entry.i, align 4
  %99 = ptrtoint ptr %98 to i32
  call void @__asan_store8_noabort(i32 %99)
  store i64 %conv23.i, ptr %98, align 8
  store ptr %arrayidx.i118, ptr %last_entry.i, align 4
  %inc25.i = add nuw nsw i32 %idx.068.i, 1
  %exitcond69.not.i = icmp eq i32 %inc25.i, 64
  br i1 %exitcond69.not.i, label %for.end26.i, label %for.end.i.for.body.i119_crit_edge

for.end.i.for.body.i119_crit_edge:                ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i119

for.end26.i:                                      ; preds = %for.end.i
  %100 = ptrtoint ptr %ndev.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %ndev.i.i, align 4
  %napi.i = getelementptr inbounds %struct.sparx5, ptr %sparx5, i32 0, i32 32, i32 6
  tail call void @netif_napi_add(ptr noundef %101, ptr noundef %napi.i, ptr noundef nonnull @sparx5_fdma_napi_callback, i32 noundef 4) #5
  tail call void @napi_enable(ptr noundef %napi.i) #5
  %102 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %dma.i, align 8
  %104 = ptrtoint ptr %channel_id.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %channel_id.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !37
  tail call void @arm_heavy_mb() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %105)
  %cmp51.not.i.i.i.i = icmp slt i32 %105, 8
  br i1 %cmp51.not.i.i.i.i, label %for.end26.i.spx5_wr.exit.i.i_crit_edge, label %do.end67.i.i.i.i, !prof !38

for.end26.i.spx5_wr.exit.i.i_crit_edge:           ; preds = %for.end26.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %spx5_wr.exit.i.i

do.end67.i.i.i.i:                                 ; preds = %for.end26.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 348, i32 noundef 9, ptr noundef null) #5
  br label %spx5_wr.exit.i.i

spx5_wr.exit.i.i:                                 ; preds = %do.end67.i.i.i.i, %for.end26.i.spx5_wr.exit.i.i_crit_edge
  %106 = tail call i32 @llvm.bswap.i32(i32 %103) #5
  %107 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr82.i.i.i.i = getelementptr i8, ptr %108, i32 60
  %mul83.i.i.i.i = shl i32 %105, 2
  %add.ptr84.i.i.i.i = getelementptr i8, ptr %add.ptr82.i.i.i.i, i32 %mul83.i.i.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr84.i.i.i.i, i32 %106) #5, !srcloc !39
  %109 = ptrtoint ptr %channel_id.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %channel_id.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !37
  tail call void @arm_heavy_mb() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %110)
  %cmp51.not.i.i79.i.i = icmp slt i32 %110, 8
  br i1 %cmp51.not.i.i79.i.i, label %spx5_wr.exit.i.i.spx5_wr.exit87.i.i_crit_edge, label %do.end67.i.i80.i.i, !prof !38

spx5_wr.exit.i.i.spx5_wr.exit87.i.i_crit_edge:    ; preds = %spx5_wr.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %spx5_wr.exit87.i.i

do.end67.i.i80.i.i:                               ; preds = %spx5_wr.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 348, i32 noundef 9, ptr noundef null) #5
  br label %spx5_wr.exit87.i.i

spx5_wr.exit87.i.i:                               ; preds = %do.end67.i.i80.i.i, %spx5_wr.exit.i.i.spx5_wr.exit87.i.i_crit_edge
  %111 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr82.i.i84.i.i = getelementptr i8, ptr %112, i32 92
  %mul83.i.i85.i.i = shl i32 %110, 2
  %add.ptr84.i.i86.i.i = getelementptr i8, ptr %add.ptr82.i.i84.i.i, i32 %mul83.i.i85.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr84.i.i86.i.i, i32 0) #5, !srcloc !39
  %113 = ptrtoint ptr %channel_id.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %channel_id.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !37
  tail call void @arm_heavy_mb() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %114)
  %cmp51.not.i.i88.i.i = icmp slt i32 %114, 8
  br i1 %cmp51.not.i.i88.i.i, label %spx5_wr.exit87.i.i.if.end_crit_edge, label %do.end67.i.i89.i.i, !prof !38

spx5_wr.exit87.i.i.if.end_crit_edge:              ; preds = %spx5_wr.exit87.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end67.i.i89.i.i:                               ; preds = %spx5_wr.exit87.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 348, i32 noundef 9, ptr noundef null) #5
  br label %if.end

do.end80:                                         ; preds = %for.body9.i.do.end80_crit_edge, %sparx5_fdma_rx_init.exit.do.end80_crit_edge
  %115 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %116, ptr noundef nonnull @.str.5, i32 noundef -12) #8
  br label %cleanup

if.end:                                           ; preds = %do.end67.i.i89.i.i, %spx5_wr.exit87.i.i.if.end_crit_edge
  %117 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr82.i.i93.i.i = getelementptr i8, ptr %118, i32 232
  %mul83.i.i94.i.i = shl i32 %114, 2
  %add.ptr84.i.i95.i.i = getelementptr i8, ptr %add.ptr82.i.i93.i.i, i32 %mul83.i.i94.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr84.i.i95.i.i, i32 1577058304) #5, !srcloc !39
  %119 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr82.i.i100.i.i = getelementptr i8, ptr %120, i32 372
  %121 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82.i.i100.i.i) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void @arm_heavy_mb() #5
  %122 = or i32 %121, 16252928
  %123 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr82.i5.i.i.i = getelementptr i8, ptr %124, i32 372
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i5.i.i.i, i32 %122) #5, !srcloc !39
  %125 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr82.i.i104.i.i = getelementptr i8, ptr %126, i32 384
  %127 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82.i.i104.i.i) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void @arm_heavy_mb() #5
  %128 = and i32 %127, -67108865
  %129 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr82.i5.i107.i.i = getelementptr i8, ptr %130, i32 384
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i5.i107.i.i, i32 %128) #5, !srcloc !39
  %131 = ptrtoint ptr %channel_id.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %channel_id.i, align 8
  %shl.i.i = shl nuw i32 1, %132
  %and63.i.i = and i32 %shl.i.i, 255
  %133 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr82.i.i111.i.i = getelementptr i8, ptr %134, i32 404
  %135 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82.i.i111.i.i) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void @arm_heavy_mb() #5
  %136 = tail call i32 @llvm.bswap.i32(i32 %135) #5
  %or.i113.i.i = or i32 %136, %and63.i.i
  %137 = tail call i32 @llvm.bswap.i32(i32 %or.i113.i.i) #5
  %138 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr82.i5.i115.i.i = getelementptr i8, ptr %139, i32 404
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i5.i115.i.i, i32 %137) #5, !srcloc !39
  %140 = ptrtoint ptr %channel_id.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %channel_id.i, align 8
  %shl65.i.i = shl nuw i32 1, %141
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !37
  tail call void @arm_heavy_mb() #5
  %142 = tail call i32 @llvm.bswap.i32(i32 %shl65.i.i) #5
  %143 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i118.i.i = getelementptr i8, ptr %144, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i118.i.i, i32 %142) #5, !srcloc !39
  %145 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %dev.i, align 4
  %call.i.i123 = tail call noalias ptr @devm_kmalloc(ptr noundef %146, i32 noundef 4096, i32 noundef 3520) #5
  %147 = ptrtoint ptr %tx to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr %call.i.i123, ptr %tx, align 8
  %tobool.not.i124 = icmp eq ptr %call.i.i123, null
  br i1 %tobool.not.i124, label %if.end.do.end86_crit_edge, label %if.end.i126

if.end.do.end86_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end86

if.end.i126:                                      ; preds = %if.end
  %148 = ptrtoint ptr %call.i.i123 to i32
  %call.i69.i = tail call i32 @__virt_to_phys(i32 noundef %148) #5
  %dma.i125 = getelementptr inbounds %struct.sparx5, ptr %sparx5, i32 0, i32 33, i32 3
  %149 = ptrtoint ptr %dma.i125 to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 %call.i69.i, ptr %dma.i125, align 8
  %150 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %tx, align 8
  %first_entry.i = getelementptr inbounds %struct.sparx5, ptr %sparx5, i32 0, i32 33, i32 1
  %152 = ptrtoint ptr %first_entry.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store ptr %151, ptr %first_entry.i, align 4
  %db_list.i = getelementptr inbounds %struct.sparx5, ptr %sparx5, i32 0, i32 33, i32 2
  %153 = ptrtoint ptr %db_list.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store volatile ptr %db_list.i, ptr %db_list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.sparx5, ptr %sparx5, i32 0, i32 33, i32 2, i32 1
  %154 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store ptr %db_list.i, ptr %prev.i.i, align 4
  %info.i128141 = getelementptr %struct.sparx5_tx_dcb_hw, ptr %151, i32 0, i32 1
  %155 = ptrtoint ptr %info.i128141 to i32
  call void @__asan_store8_noabort(i32 %155)
  store i64 0, ptr %info.i128141, align 8
  %156 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %dev.i, align 4
  %call.i70.i142 = tail call noalias ptr @devm_kmalloc(ptr noundef %157, i32 noundef 2048, i32 noundef 3520) #5
  %tobool14.not.i143 = icmp eq ptr %call.i70.i142, null
  br i1 %tobool14.not.i143, label %if.end.i126.do.end86_crit_edge, label %if.end.i126.if.end16.i_crit_edge

if.end.i126.if.end16.i_crit_edge:                 ; preds = %if.end.i126
  br label %if.end16.i

if.end.i126.do.end86_crit_edge:                   ; preds = %if.end.i126
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end86

for.body.i129:                                    ; preds = %list_add_tail.exit.i
  %inc34.i = add nuw nsw i32 %idx.074.i144, 1
  %158 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %tx, align 8
  %arrayidx.i127 = getelementptr %struct.sparx5_tx_dcb_hw, ptr %159, i32 %inc34.i
  %info.i128 = getelementptr %struct.sparx5_tx_dcb_hw, ptr %159, i32 %inc34.i, i32 1
  %160 = ptrtoint ptr %info.i128 to i32
  call void @__asan_store8_noabort(i32 %160)
  store i64 0, ptr %info.i128, align 8
  %161 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %dev.i, align 4
  %call.i70.i = tail call noalias ptr @devm_kmalloc(ptr noundef %162, i32 noundef 2048, i32 noundef 3520) #5
  %tobool14.not.i = icmp eq ptr %call.i70.i, null
  br i1 %tobool14.not.i, label %for.body.i129.do.end86_crit_edge, label %for.body.i129.if.end16.i_crit_edge

for.body.i129.if.end16.i_crit_edge:               ; preds = %for.body.i129
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16.i

for.body.i129.do.end86_crit_edge:                 ; preds = %for.body.i129
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end86

if.end16.i:                                       ; preds = %for.body.i129.if.end16.i_crit_edge, %if.end.i126.if.end16.i_crit_edge
  %call.i70.i147 = phi ptr [ %call.i70.i, %for.body.i129.if.end16.i_crit_edge ], [ %call.i70.i142, %if.end.i126.if.end16.i_crit_edge ]
  %info.i128146 = phi ptr [ %info.i128, %for.body.i129.if.end16.i_crit_edge ], [ %info.i128141, %if.end.i126.if.end16.i_crit_edge ]
  %arrayidx.i127145 = phi ptr [ %arrayidx.i127, %for.body.i129.if.end16.i_crit_edge ], [ %151, %if.end.i126.if.end16.i_crit_edge ]
  %163 = phi ptr [ %159, %for.body.i129.if.end16.i_crit_edge ], [ %151, %if.end.i126.if.end16.i_crit_edge ]
  %idx.074.i144 = phi i32 [ %inc34.i, %for.body.i129.if.end16.i_crit_edge ], [ 0, %if.end.i126.if.end16.i_crit_edge ]
  %db.i = getelementptr %struct.sparx5_tx_dcb_hw, ptr %163, i32 %idx.074.i144, i32 2
  %164 = ptrtoint ptr %call.i70.i147 to i32
  %call.i71.i = tail call i32 @__virt_to_phys(i32 noundef %164) #5
  %conv.i130 = zext i32 %call.i71.i to i64
  %165 = ptrtoint ptr %db.i to i32
  call void @__asan_store8_noabort(i32 %165)
  store i64 %conv.i130, ptr %db.i, align 8
  %status.i131 = getelementptr inbounds %struct.sparx5_db_hw, ptr %db.i, i32 0, i32 1
  %166 = ptrtoint ptr %status.i131 to i32
  call void @__asan_store8_noabort(i32 %166)
  store i64 0, ptr %status.i131, align 8
  %167 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %dev.i, align 4
  %call.i72.i = tail call noalias ptr @devm_kmalloc(ptr noundef %168, i32 noundef 12, i32 noundef 3520) #5
  %cpu_addr20.i = getelementptr inbounds %struct.sparx5_db, ptr %call.i72.i, i32 0, i32 1
  %169 = ptrtoint ptr %cpu_addr20.i to i32
  call void @__asan_store4_noabort(i32 %169)
  store ptr %call.i70.i147, ptr %cpu_addr20.i, align 4
  %170 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %call.i72.i, ptr noundef %171, ptr noundef %db_list.i) #5
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end16.i.list_add_tail.exit.i_crit_edge

if.end16.i.list_add_tail.exit.i_crit_edge:        ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #7
  %172 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %172)
  store ptr %call.i72.i, ptr %prev.i.i, align 4
  %173 = ptrtoint ptr %call.i72.i to i32
  call void @__asan_store4_noabort(i32 %173)
  store ptr %db_list.i, ptr %call.i72.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call.i72.i, i32 0, i32 1
  %174 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %174)
  store ptr %171, ptr %prev3.i.i.i, align 4
  %175 = ptrtoint ptr %171 to i32
  call void @__asan_store4_noabort(i32 %175)
  store volatile ptr %call.i72.i, ptr %171, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %if.end16.i.list_add_tail.exit.i_crit_edge
  %status.i.i132 = getelementptr %struct.sparx5_tx_dcb_hw, ptr %163, i32 %idx.074.i144, i32 2, i32 0, i32 1
  %176 = ptrtoint ptr %status.i.i132 to i32
  call void @__asan_store8_noabort(i32 %176)
  store i64 524288, ptr %status.i.i132, align 8
  %177 = ptrtoint ptr %arrayidx.i127145 to i32
  call void @__asan_store8_noabort(i32 %177)
  store i64 1, ptr %arrayidx.i127145, align 8
  %178 = ptrtoint ptr %info.i128146 to i32
  call void @__asan_store8_noabort(i32 %178)
  store i64 2048, ptr %info.i128146, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %idx.074.i144)
  %cmp28.i = icmp eq i32 %idx.074.i144, 63
  br i1 %cmp28.i, label %sparx5_fdma_tx_alloc.exit, label %for.body.i129

sparx5_fdma_tx_alloc.exit:                        ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %179 = ptrtoint ptr %tx to i32
  call void @__asan_store4_noabort(i32 %179)
  store ptr %arrayidx.i127145, ptr %tx, align 8
  br label %cleanup

do.end86:                                         ; preds = %for.body.i129.do.end86_crit_edge, %if.end.i126.do.end86_crit_edge, %if.end.do.end86_crit_edge
  %180 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %181, ptr noundef nonnull @.str.8, i32 noundef -12) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end86, %sparx5_fdma_tx_alloc.exit, %do.end80
  %retval.0 = phi i32 [ -12, %do.end80 ], [ -12, %do.end86 ], [ 0, %sparx5_fdma_tx_alloc.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sparx5_fdma_stop(ptr noundef %sparx5) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %napi = getelementptr inbounds %struct.sparx5, ptr %sparx5, i32 0, i32 32, i32 6
  tail call void @napi_disable(ptr noundef %napi) #5
  %channel_id.i = getelementptr inbounds %struct.sparx5, ptr %sparx5, i32 0, i32 32, i32 7
  %0 = ptrtoint ptr %channel_id.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %channel_id.i, align 8
  %shl.i = shl nuw i32 1, %1
  %and.i = and i32 %shl.i, 255
  %arrayidx.i.i.i = getelementptr %struct.sparx5, ptr %sparx5, i32 0, i32 4, i32 117
  %2 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %3, i32 8
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void @arm_heavy_mb() #5
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #5
  %neg.i.i = xor i32 %and.i, -1
  %and.i.i = and i32 %5, %neg.i.i
  %6 = tail call i32 @llvm.bswap.i32(i32 %and.i.i) #5
  %7 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i4.i.i = getelementptr i8, ptr %8, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i, i32 %6) #5, !srcloc !39
  %9 = ptrtoint ptr %channel_id.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %channel_id.i, align 8
  %shl2.i = shl nuw i32 1, %10
  %and3.i = and i32 %shl2.i, 255
  %11 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr82.i.i.i = getelementptr i8, ptr %12, i32 404
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82.i.i.i) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void @arm_heavy_mb() #5
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #5
  %neg.i18.i = xor i32 %and3.i, -1
  %and.i19.i = and i32 %14, %neg.i18.i
  %15 = tail call i32 @llvm.bswap.i32(i32 %and.i19.i) #5
  %16 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr82.i5.i.i = getelementptr i8, ptr %17, i32 404
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i5.i.i, i32 %15) #5, !srcloc !39
  %18 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr82.i.i24.i = getelementptr i8, ptr %19, i32 384
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82.i.i24.i) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void @arm_heavy_mb() #5
  %21 = or i32 %20, 67108864
  %22 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr82.i5.i27.i = getelementptr i8, ptr %23, i32 384
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i5.i27.i, i32 %21) #5, !srcloc !39
  %channel_id.i69 = getelementptr inbounds %struct.sparx5, ptr %sparx5, i32 0, i32 33, i32 4
  %24 = ptrtoint ptr %channel_id.i69 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %channel_id.i69, align 4
  %shl.i70 = shl nuw i32 1, %25
  %and.i71 = and i32 %shl.i70, 255
  %26 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i.i.i73 = getelementptr i8, ptr %27, i32 8
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i73) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void @arm_heavy_mb() #5
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #5
  %neg.i.i74 = xor i32 %and.i71, -1
  %and.i.i75 = and i32 %29, %neg.i.i74
  %30 = tail call i32 @llvm.bswap.i32(i32 %and.i.i75) #5
  %31 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i4.i.i76 = getelementptr i8, ptr %32, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i76, i32 %30) #5, !srcloc !39
  %call = tail call i64 @ktime_get() #5
  %add.i = add i64 %call, 10000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 591) #5
  %33 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr82.i.i.i7881 = getelementptr i8, ptr %34, i32 384
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82.i.i.i7881) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !43
  %36 = and i32 %35, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp2582 = icmp eq i32 %36, 0
  br i1 %cmp2582, label %entry.do.end53_crit_edge, label %entry.land.lhs.true_crit_edge

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  br label %land.lhs.true

entry.do.end53_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end53

land.lhs.true:                                    ; preds = %if.then35.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %call28 = tail call i64 @ktime_get() #5
  call void @__sanitizer_cov_trace_cmp8(i64 %call28, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call28, %add.i
  br i1 %cmp3.i, label %if.then31, label %if.then35

if.then31:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %37 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr82.i.i.i80 = getelementptr i8, ptr %38, i32 384
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82.i.i.i80) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !43
  br label %do.end53

if.then35:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 126, i32 noundef 500, i32 noundef 2) #5
  %40 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr82.i.i.i78 = getelementptr i8, ptr %41, i32 384
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82.i.i.i78) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !43
  %43 = and i32 %42, 33554432
  %cmp25 = icmp eq i32 %43, 0
  br i1 %cmp25, label %if.then35.do.end53_crit_edge, label %if.then35.land.lhs.true_crit_edge

if.then35.land.lhs.true_crit_edge:                ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true

if.then35.do.end53_crit_edge:                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end53

do.end53:                                         ; preds = %if.then35.do.end53_crit_edge, %if.then31, %entry.do.end53_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_schedule_prep(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sparx5_port_fwd_urg(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_napi_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sparx5_fdma_napi_callback(ptr noundef %napi, i32 noundef %weight) #0 align 64 {
entry:
  %fi.i = alloca %struct.frame_info, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %napi, i32 -3864
  %add.ptr3 = getelementptr i8, ptr %napi, i32 -55232
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %weight)
  %cmp58 = icmp sgt i32 %weight, 0
  br i1 %cmp58, label %land.rhs.lr.ph, label %entry.if.end22_crit_edge

entry.if.end22_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22

land.rhs.lr.ph:                                   ; preds = %entry
  %dcb_index.i = getelementptr i8, ptr %napi, i32 -12
  %db_index.i = getelementptr i8, ptr %napi, i32 -16
  %ndev.i.i = getelementptr i8, ptr %napi, i32 228
  %bridge_mask.i = getelementptr i8, ptr %napi, i32 -53268
  %packets.i = getelementptr i8, ptr %napi, i32 232
  %dma = getelementptr i8, ptr %napi, i32 -8
  %last_entry.i = getelementptr i8, ptr %napi, i32 -3860
  br label %land.rhs

land.rhs:                                         ; preds = %cleanup.land.rhs_crit_edge, %land.rhs.lr.ph
  %counter.059 = phi i32 [ 0, %land.rhs.lr.ph ], [ %inc4, %cleanup.land.rhs_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fi.i) #5
  %0 = ptrtoint ptr %fi.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %fi.i, align 4, !annotation !44
  %1 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %add.ptr, align 8
  %3 = ptrtoint ptr %dcb_index.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %dcb_index.i, align 4
  %5 = ptrtoint ptr %db_index.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %db_index.i, align 8
  %arrayidx1.i = getelementptr %struct.sparx5_rx_dcb_hw, ptr %2, i32 %4, i32 2, i32 %6
  %status.i = getelementptr %struct.sparx5_rx_dcb_hw, ptr %2, i32 %4, i32 2, i32 %6, i32 1
  %7 = ptrtoint ptr %status.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %status.i, align 8
  %and.i = and i64 %8, 524288
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %land.rhs.if.then14.critedge_crit_edge, label %if.end.i, !prof !45

land.rhs.if.then14.critedge_crit_edge:            ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then14.critedge

if.end.i:                                         ; preds = %land.rhs
  %arrayidx9.i = getelementptr %struct.sparx5_rx, ptr %add.ptr, i32 0, i32 2, i32 %4, i32 %6
  %9 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx9.i, align 4
  %11 = ptrtoint ptr %ndev.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ndev.i.i, align 4
  %call.i.i = call ptr @__netdev_alloc_skb(ptr noundef %12, i32 noundef 2048, i32 noundef 2592) #5
  %tobool10.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool10.not.i, label %if.end.i.if.then14.critedge_crit_edge, label %if.end20.i, !prof !45

if.end.i.if.then14.critedge_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then14.critedge

if.end20.i:                                       ; preds = %if.end.i
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %13 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data.i, align 4
  %15 = ptrtoint ptr %14 to i32
  %call.i105.i = call i32 @__virt_to_phys(i32 noundef %15) #5
  %16 = ptrtoint ptr %dcb_index.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dcb_index.i, align 4
  %18 = ptrtoint ptr %db_index.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %db_index.i, align 8
  %arrayidx26.i = getelementptr %struct.sparx5_rx, ptr %add.ptr, i32 0, i32 2, i32 %17, i32 %19
  %20 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call.i.i, ptr %arrayidx26.i, align 4
  %conv.i = zext i32 %call.i105.i to i64
  %21 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %conv.i, ptr %arrayidx1.i, align 8
  %22 = ptrtoint ptr %status.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %status.i, align 8
  %24 = trunc i64 %23 to i32
  %conv29.i = and i32 %24, 65535
  %call30.i = call ptr @skb_put(ptr noundef %10, i32 noundef %conv29.i) #5
  %data31.i = getelementptr inbounds %struct.sk_buff, ptr %10, i32 0, i32 19
  %25 = ptrtoint ptr %data31.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %data31.i, align 4
  call void @sparx5_ifh_parse(ptr noundef %26, ptr noundef nonnull %fi.i) #5
  %27 = ptrtoint ptr %fi.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %fi.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65, i32 %28)
  %cmp.i = icmp slt i32 %28, 65
  br i1 %cmp.i, label %cond.end.i, label %if.end20.i.do.end.i_crit_edge

if.end20.i.do.end.i_crit_edge:                    ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i

cond.end.i:                                       ; preds = %if.end20.i
  %arrayidx34.i = getelementptr %struct.sparx5, ptr %add.ptr3, i32 0, i32 7, i32 %28
  %29 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx34.i, align 4
  %tobool35.not.i = icmp eq ptr %30, null
  br i1 %tobool35.not.i, label %cond.end.i.do.end.i_crit_edge, label %lor.lhs.false.i

cond.end.i.do.end.i_crit_edge:                    ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i

lor.lhs.false.i:                                  ; preds = %cond.end.i
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 8
  %tobool36.not.i = icmp eq ptr %32, null
  br i1 %tobool36.not.i, label %lor.lhs.false.i.do.end.i_crit_edge, label %if.end39.i

lor.lhs.false.i.do.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i

do.end.i:                                         ; preds = %lor.lhs.false.i.do.end.i_crit_edge, %cond.end.i.do.end.i_crit_edge, %if.end20.i.do.end.i_crit_edge
  %dev.i = getelementptr i8, ptr %napi, i32 -55228
  %33 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.11, i32 noundef %28) #8
  call void @sparx5_xtr_flush(ptr noundef %add.ptr3, i8 noundef zeroext 0) #5
  br label %if.then14.critedge

if.end39.i:                                       ; preds = %lor.lhs.false.i
  %35 = getelementptr inbounds %struct.anon.43, ptr %10, i32 0, i32 2
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %32, ptr %35, align 8
  %call41.i = call ptr @skb_pull(ptr noundef %10, i32 noundef 36) #5
  %37 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %35, align 8
  %features.i = getelementptr inbounds %struct.net_device, ptr %38, i32 0, i32 23
  %39 = ptrtoint ptr %features.i to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %features.i, align 16
  %and42.i = and i64 %40, 8796093022208
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and42.i)
  %tobool43.not.i = icmp eq i64 %and42.i, 0
  br i1 %tobool43.not.i, label %if.then52.i, label %if.end39.i.if.end53.i_crit_edge, !prof !38

if.end39.i.if.end53.i_crit_edge:                  ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end53.i

if.then52.i:                                      ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #7
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %10, i32 0, i32 6
  %41 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %len.i, align 4
  %sub.i = add i32 %42, -4
  call void @skb_trim(ptr noundef %10, i32 noundef %sub.i) #5
  br label %if.end53.i

if.end53.i:                                       ; preds = %if.then52.i, %if.end39.i.if.end53.i_crit_edge
  %43 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %35, align 8
  %call54.i = call zeroext i16 @eth_type_trans(ptr noundef %10, ptr noundef %44) #5
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %10, i32 0, i32 15, i32 0, i32 18
  %45 = ptrtoint ptr %protocol.i to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %call54.i, ptr %protocol.i, align 8
  %portno.i = getelementptr inbounds %struct.sparx5_port, ptr %30, i32 0, i32 8
  %46 = ptrtoint ptr %portno.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %portno.i, align 4
  %conv55.i = zext i16 %47 to i32
  %div3.i.i = lshr i32 %conv55.i, 5
  %arrayidx.i.i = getelementptr i32, ptr %bridge_mask.i, i32 %div3.i.i
  %48 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %conv55.i, 31
  %50 = shl nuw i32 1, %and.i.i
  %51 = and i32 %50, %49
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool57.not.i = icmp eq i32 %51, 0
  br i1 %tobool57.not.i, label %if.end53.i.while.body_crit_edge, label %if.then58.i

if.end53.i.while.body_crit_edge:                  ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

if.then58.i:                                      ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #7
  %offload_fwd_mark.i = getelementptr inbounds %struct.sk_buff, ptr %10, i32 0, i32 15, i32 0, i32 3
  %52 = ptrtoint ptr %offload_fwd_mark.i to i32
  call void @__asan_loadN_noabort(i32 %52, i32 4)
  %bf.load.i = load i32, ptr %offload_fwd_mark.i, align 2
  %bf.set.i = or i32 %bf.load.i, 1048576
  store i32 %bf.set.i, ptr %offload_fwd_mark.i, align 2
  br label %while.body

while.body:                                       ; preds = %if.then58.i, %if.end53.i.while.body_crit_edge
  %len60.i = getelementptr inbounds %struct.sk_buff, ptr %10, i32 0, i32 6
  %53 = ptrtoint ptr %len60.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %len60.i, align 4
  %55 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %35, align 8
  %rx_bytes.i = getelementptr inbounds %struct.net_device, ptr %56, i32 0, i32 36, i32 2
  %57 = ptrtoint ptr %rx_bytes.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %rx_bytes.i, align 8
  %add.i = add i32 %58, %54
  store i32 %add.i, ptr %rx_bytes.i, align 8
  %59 = load ptr, ptr %35, align 8
  %stats61.i = getelementptr inbounds %struct.net_device, ptr %59, i32 0, i32 36
  %60 = ptrtoint ptr %stats61.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %stats61.i, align 8
  %inc.i = add i32 %61, 1
  store i32 %inc.i, ptr %stats61.i, align 8
  %62 = ptrtoint ptr %packets.i to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %packets.i, align 8
  %inc62.i = add i64 %63, 1
  store i64 %inc62.i, ptr %packets.i, align 8
  %call63.i = call i32 @netif_receive_skb(ptr noundef %10) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fi.i) #5
  %64 = ptrtoint ptr %db_index.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %db_index.i, align 8
  %inc = add i32 %65, 1
  store i32 %inc, ptr %db_index.i, align 8
  %inc4 = add nuw nsw i32 %counter.059, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %inc)
  %cmp6.not = icmp eq i32 %inc, 15
  br i1 %cmp6.not, label %if.end, label %while.body.cleanup_crit_edge

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  %66 = ptrtoint ptr %db_index.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 0, ptr %db_index.i, align 8
  %67 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %add.ptr, align 8
  %69 = ptrtoint ptr %dcb_index.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %dcb_index.i, align 4
  %arrayidx = getelementptr %struct.sparx5_rx_dcb_hw, ptr %68, i32 %70
  %inc9 = add i32 %70, 1
  %and = and i32 %inc9, 63
  store i32 %and, ptr %dcb_index.i, align 4
  %71 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %dma, align 8
  %arrayidx.idx = shl i32 %70, 8
  %add = add i32 %72, %arrayidx.idx
  %conv = zext i32 %add to i64
  %status.i50 = getelementptr %struct.sparx5_rx_dcb_hw, ptr %68, i32 %70, i32 2, i32 0, i32 1
  %73 = ptrtoint ptr %status.i50 to i32
  call void @__asan_store8_noabort(i32 %73)
  store i64 262144, ptr %status.i50, align 8
  %status.1.i = getelementptr %struct.sparx5_rx_dcb_hw, ptr %68, i32 %70, i32 2, i32 1, i32 1
  %74 = ptrtoint ptr %status.1.i to i32
  call void @__asan_store8_noabort(i32 %74)
  store i64 262144, ptr %status.1.i, align 8
  %status.2.i = getelementptr %struct.sparx5_rx_dcb_hw, ptr %68, i32 %70, i32 2, i32 2, i32 1
  %75 = ptrtoint ptr %status.2.i to i32
  call void @__asan_store8_noabort(i32 %75)
  store i64 262144, ptr %status.2.i, align 8
  %status.3.i = getelementptr %struct.sparx5_rx_dcb_hw, ptr %68, i32 %70, i32 2, i32 3, i32 1
  %76 = ptrtoint ptr %status.3.i to i32
  call void @__asan_store8_noabort(i32 %76)
  store i64 262144, ptr %status.3.i, align 8
  %status.4.i = getelementptr %struct.sparx5_rx_dcb_hw, ptr %68, i32 %70, i32 2, i32 4, i32 1
  %77 = ptrtoint ptr %status.4.i to i32
  call void @__asan_store8_noabort(i32 %77)
  store i64 262144, ptr %status.4.i, align 8
  %status.5.i = getelementptr %struct.sparx5_rx_dcb_hw, ptr %68, i32 %70, i32 2, i32 5, i32 1
  %78 = ptrtoint ptr %status.5.i to i32
  call void @__asan_store8_noabort(i32 %78)
  store i64 262144, ptr %status.5.i, align 8
  %status.6.i = getelementptr %struct.sparx5_rx_dcb_hw, ptr %68, i32 %70, i32 2, i32 6, i32 1
  %79 = ptrtoint ptr %status.6.i to i32
  call void @__asan_store8_noabort(i32 %79)
  store i64 262144, ptr %status.6.i, align 8
  %status.7.i = getelementptr %struct.sparx5_rx_dcb_hw, ptr %68, i32 %70, i32 2, i32 7, i32 1
  %80 = ptrtoint ptr %status.7.i to i32
  call void @__asan_store8_noabort(i32 %80)
  store i64 262144, ptr %status.7.i, align 8
  %status.8.i = getelementptr %struct.sparx5_rx_dcb_hw, ptr %68, i32 %70, i32 2, i32 8, i32 1
  %81 = ptrtoint ptr %status.8.i to i32
  call void @__asan_store8_noabort(i32 %81)
  store i64 262144, ptr %status.8.i, align 8
  %status.9.i = getelementptr %struct.sparx5_rx_dcb_hw, ptr %68, i32 %70, i32 2, i32 9, i32 1
  %82 = ptrtoint ptr %status.9.i to i32
  call void @__asan_store8_noabort(i32 %82)
  store i64 262144, ptr %status.9.i, align 8
  %status.10.i = getelementptr %struct.sparx5_rx_dcb_hw, ptr %68, i32 %70, i32 2, i32 10, i32 1
  %83 = ptrtoint ptr %status.10.i to i32
  call void @__asan_store8_noabort(i32 %83)
  store i64 262144, ptr %status.10.i, align 8
  %status.11.i = getelementptr %struct.sparx5_rx_dcb_hw, ptr %68, i32 %70, i32 2, i32 11, i32 1
  %84 = ptrtoint ptr %status.11.i to i32
  call void @__asan_store8_noabort(i32 %84)
  store i64 262144, ptr %status.11.i, align 8
  %status.12.i = getelementptr %struct.sparx5_rx_dcb_hw, ptr %68, i32 %70, i32 2, i32 12, i32 1
  %85 = ptrtoint ptr %status.12.i to i32
  call void @__asan_store8_noabort(i32 %85)
  store i64 262144, ptr %status.12.i, align 8
  %status.13.i = getelementptr %struct.sparx5_rx_dcb_hw, ptr %68, i32 %70, i32 2, i32 13, i32 1
  %86 = ptrtoint ptr %status.13.i to i32
  call void @__asan_store8_noabort(i32 %86)
  store i64 262144, ptr %status.13.i, align 8
  %status.14.i = getelementptr %struct.sparx5_rx_dcb_hw, ptr %68, i32 %70, i32 2, i32 14, i32 1
  %87 = ptrtoint ptr %status.14.i to i32
  call void @__asan_store8_noabort(i32 %87)
  store i64 262144, ptr %status.14.i, align 8
  %88 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store8_noabort(i32 %88)
  store i64 1, ptr %arrayidx, align 8
  %info.i = getelementptr %struct.sparx5_rx_dcb_hw, ptr %68, i32 %70, i32 1
  %89 = ptrtoint ptr %info.i to i32
  call void @__asan_store8_noabort(i32 %89)
  store i64 2048, ptr %info.i, align 8
  %90 = ptrtoint ptr %last_entry.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %last_entry.i, align 4
  %92 = ptrtoint ptr %91 to i32
  call void @__asan_store8_noabort(i32 %92)
  store i64 %conv, ptr %91, align 8
  store ptr %arrayidx, ptr %last_entry.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %while.body.cleanup_crit_edge
  %exitcond.not = icmp eq i32 %inc4, %weight
  br i1 %exitcond.not, label %cleanup.if.end20_crit_edge, label %cleanup.land.rhs_crit_edge

cleanup.land.rhs_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs

cleanup.if.end20_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20

if.then14.critedge:                               ; preds = %do.end.i, %if.end.i.if.then14.critedge_crit_edge, %land.rhs.if.then14.critedge_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fi.i) #5
  %call16 = call zeroext i1 @napi_complete_done(ptr noundef %napi, i32 noundef %counter.059) #5
  %channel_id = getelementptr i8, ptr %napi, i32 224
  %93 = ptrtoint ptr %channel_id to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %channel_id, align 8
  %shl = shl nuw i32 1, %94
  %and19 = and i32 %shl, 255
  %arrayidx.i.i51 = getelementptr i8, ptr %napi, i32 -54748
  %95 = ptrtoint ptr %arrayidx.i.i51 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %arrayidx.i.i51, align 4
  %add.ptr82.i.i = getelementptr i8, ptr %96, i32 404
  %97 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82.i.i) #5, !srcloc !40
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !42
  call void @arm_heavy_mb() #5
  %98 = call i32 @llvm.bswap.i32(i32 %97) #5
  %or.i = or i32 %98, %and19
  %99 = call i32 @llvm.bswap.i32(i32 %or.i) #5
  %100 = ptrtoint ptr %arrayidx.i.i51 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %arrayidx.i.i51, align 4
  %add.ptr82.i5.i = getelementptr i8, ptr %101, i32 404
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i5.i, i32 %99) #5, !srcloc !39
  br label %if.end20

if.end20:                                         ; preds = %if.then14.critedge, %cleanup.if.end20_crit_edge
  %counter.057 = phi i32 [ %counter.059, %if.then14.critedge ], [ %weight, %cleanup.if.end20_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %counter.057)
  %tobool.not = icmp eq i32 %counter.057, 0
  br i1 %tobool.not, label %if.end20.if.end22_crit_edge, label %if.then21

if.end20.if.end22_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22

if.then21:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  %channel_id.i = getelementptr i8, ptr %napi, i32 224
  %102 = ptrtoint ptr %channel_id.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %channel_id.i, align 8
  %shl.i = shl nuw i32 1, %103
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !37
  call void @arm_heavy_mb() #5
  %104 = call i32 @llvm.bswap.i32(i32 %shl.i) #5
  %arrayidx.i.i.i = getelementptr i8, ptr %napi, i32 -54748
  %105 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr82.i.i.i = getelementptr i8, ptr %106, i32 12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i.i.i, i32 %104) #5, !srcloc !39
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %if.end20.if.end22_crit_edge, %entry.if.end22_crit_edge
  %counter.05766 = phi i32 [ %counter.057, %if.then21 ], [ 0, %if.end20.if.end22_crit_edge ], [ 0, %entry.if.end22_crit_edge ]
  ret i32 %counter.05766
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__virt_to_phys(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_complete_done(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sparx5_ifh_parse(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sparx5_xtr_flush(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_receive_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
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

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !11, !12, !14, !15, !16, !17, !19, !20, !21, !23, !25, !26, !27}
!llvm.module.flags = !{!28, !29, !30, !31, !32, !33, !34, !35}
!llvm.ident = !{!36}

!0 = distinct !{null, !1, !"first_time", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_fdma.c", i32 311, i32 14}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_fdma.c", i32 473, i32 3}
!4 = !{ptr @sparx5_fdma_handler._rs, !3, !"_rs", i1 false, i1 false}
!5 = !{ptr @__func__.sparx5_fdma_handler, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @sparx5_fdma_handler._entry, !3, !"_entry", i1 false, i1 false}
!11 = !{ptr @sparx5_fdma_handler._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_fdma.c", i32 564, i32 3}
!14 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @sparx5_fdma_start._entry, !13, !"_entry", i1 false, i1 false}
!16 = !{ptr @sparx5_fdma_start._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_fdma.c", i32 569, i32 3}
!19 = !{ptr @sparx5_fdma_start._entry.7, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @sparx5_fdma_start._entry_ptr.9, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_main.h", i32 346, i32 2}
!23 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_fdma.c", i32 235, i32 3}
!25 = !{ptr @.str.12, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @sparx5_fdma_rx_get_frame._entry, !24, !"_entry", i1 false, i1 false}
!27 = !{ptr @sparx5_fdma_rx_get_frame._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!28 = !{i32 1, !"wchar_size", i32 2}
!29 = !{i32 1, !"min_enum_size", i32 4}
!30 = !{i32 8, !"branch-target-enforcement", i32 0}
!31 = !{i32 8, !"sign-return-address", i32 0}
!32 = !{i32 8, !"sign-return-address-all", i32 0}
!33 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!34 = !{i32 7, !"uwtable", i32 1}
!35 = !{i32 7, !"frame-pointer", i32 2}
!36 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!37 = !{i64 2157352835}
!38 = !{!"branch_weights", i32 2000, i32 1}
!39 = !{i64 6039490}
!40 = !{i64 6039908}
!41 = !{i64 2157354824}
!42 = !{i64 2157355128}
!43 = !{i64 2157351424}
!44 = !{!"auto-init"}
!45 = !{!"branch_weights", i32 1, i32 2000}
