; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/microchip/sparx5/sparx5_packet.c_pt.bc'
source_filename = "../drivers/net/ethernet/microchip/sparx5/sparx5_packet.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.sparx5_port = type { ptr, ptr, ptr, ptr, %struct.sparx5_port_config, %struct.phylink_config, ptr, %struct.phylink_pcs, i16, i16, i16, i8, i8, i8, i8, i32, i32, i32, [9 x i32], i8, %struct.hrtimer }
%struct.sparx5_port_config = type { i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, i32 }
%struct.phylink_config = type { ptr, i32, i8, i8, i8, i8, ptr, [1 x i32], i32 }
%struct.phylink_pcs = type { ptr, i8 }

@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"drivers/net/ethernet/microchip/sparx5/sparx5_main.h\00", [44 x i8] zeroinitializer }, align 32
@sparx5_inject._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.sparx5_inject = private unnamed_addr constant [14 x i8] c"sparx5_inject\00", align 1
@sparx5_inject._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.sparx5_inject, ptr @.str.3, i32 165, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013Injection: Queue not ready: 0x%lx\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"drivers/net/ethernet/microchip/sparx5/sparx5_packet.c\00", [42 x i8] zeroinitializer }, align 32
@sparx5_inject._entry_ptr = internal global ptr @sparx5_inject._entry, section ".printk_index", align 4
@sparx5_inject._rs.4 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@sparx5_inject._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @__func__.sparx5_inject, ptr @.str.3, i32 207, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013Injection: Watermark reached: 0x%lx\0A\00", [57 x i8] zeroinitializer }, align 32
@sparx5_inject._entry_ptr.7 = internal global ptr @sparx5_inject._entry.5, section ".printk_index", align 4
@sparx5_xtr_grp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.3, i32 71, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Data on inactive port %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sparx5_xtr_grp\00", [17 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sparx5_xtr_grp._entry_ptr = internal global ptr @sparx5_xtr_grp._entry, section ".printk_index", align 4
@sparx5_xtr_grp._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.9, ptr @.str.3, i32 81, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"No skb allocated\0A\00", [46 x i8] zeroinitializer }, align 32
@sparx5_xtr_grp._entry_ptr.14 = internal global ptr @sparx5_xtr_grp._entry.12, section ".printk_index", align 4
@.str.15 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Discarded frame: abort:%d pruned:%d eof:%d\0A\00", [52 x i8] zeroinitializer }, align 32
@sparx5_injection_timeout._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.sparx5_injection_timeout = private unnamed_addr constant [25 x i8] c"sparx5_injection_timeout\00", align 1
@sparx5_injection_timeout._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @__func__.sparx5_injection_timeout, ptr @.str.3, i32 248, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013Injection: Reset watermark count\0A\00", [60 x i8] zeroinitializer }, align 32
@sparx5_injection_timeout._entry_ptr = internal global ptr @sparx5_injection_timeout._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [10 x i64] [i64 8, i64 32, i64 2147483648, i64 2147483649, i64 2147483650, i64 2147483651, i64 2147483652, i64 2147483653, i64 2147483654, i64 2147483655]
@___asan_gen_.18 = private unnamed_addr constant [55 x i8] c"../drivers/net/ethernet/microchip/sparx5/sparx5_main.h\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 346, i32 2 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 164, i32 3 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 206, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 71, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 81, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 131, i32 22 }
@___asan_gen_.68 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.71 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.74 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.75 = private constant [57 x i8] c"../drivers/net/ethernet/microchip/sparx5/sparx5_packet.c\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 248, i32 3 }
@llvm.compiler.used = appending global [25 x ptr] [ptr @sparx5_inject._entry, ptr @sparx5_inject._entry.5, ptr @sparx5_inject._entry_ptr, ptr @sparx5_inject._entry_ptr.7, ptr @sparx5_injection_timeout._entry, ptr @sparx5_injection_timeout._entry_ptr, ptr @sparx5_xtr_grp._entry, ptr @sparx5_xtr_grp._entry.12, ptr @sparx5_xtr_grp._entry_ptr, ptr @sparx5_xtr_grp._entry_ptr.14, ptr @.str, ptr @sparx5_inject._rs, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @sparx5_inject._rs.4, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @sparx5_injection_timeout._rs, ptr @.str.16], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sparx5_inject._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sparx5_inject._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sparx5_inject._rs.4 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sparx5_inject._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sparx5_xtr_grp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sparx5_xtr_grp._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sparx5_injection_timeout._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sparx5_injection_timeout._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sparx5_xtr_flush(ptr nocapture noundef readonly %sparx5, i8 noundef zeroext %grp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %grp to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !43
  tail call void @arm_heavy_mb() #5
  %and14 = shl i32 16777216, %conv
  %0 = and i32 %and14, 50331648
  %arrayidx.i.i = getelementptr %struct.sparx5, ptr %sparx5, i32 0, i32 4, i32 177
  %1 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr82.i.i = getelementptr i8, ptr %2, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i.i, i32 %0) #5, !srcloc !44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 214748000) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !43
  tail call void @arm_heavy_mb() #5
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr82.i.i20 = getelementptr i8, ptr %5, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i.i20, i32 0) #5, !srcloc !44
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @sparx5_ifh_parse(ptr nocapture noundef readonly %ifh, ptr nocapture noundef writeonly %info) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx4 = getelementptr i8, ptr %ifh, i32 29
  %0 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx4, align 1
  %conv5 = zext i8 %1 to i32
  %shl6 = shl nuw nsw i32 %conv5, 8
  %arrayidx8 = getelementptr i8, ptr %ifh, i32 30
  %2 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx8, align 1
  %conv9 = zext i8 %3 to i32
  %or11 = or i32 %shl6, %conv9
  %shr = lshr i32 %or11, 6
  %and = and i32 %shr, 127
  %4 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %and, ptr %info, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sparx5_port_xmit_impl(ptr noundef %skb, ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %sparx52 = getelementptr i8, ptr %dev, i32 2308
  %0 = ptrtoint ptr %sparx52 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sparx52, align 4
  %fdma_irq = getelementptr inbounds %struct.sparx5, ptr %1, i32 0, i32 31
  %2 = ptrtoint ptr %fdma_irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fdma_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp sgt i32 %3, 0
  br i1 %cmp, label %if.end, label %if.else

if.else:                                          ; preds = %entry
  %arrayidx.i.i.i = getelementptr %struct.sparx5, ptr %1, i32 0, i32 4, i32 177
  %4 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr82.i.i.i = getelementptr i8, ptr %5, i32 60
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82.i.i.i) #5, !srcloc !45
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !46
  %and.i = lshr i32 %7, 2
  %shr.i = and i32 %and.i, 3
  %8 = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i, label %if.then.i, label %do.end55.i

if.then.i:                                        ; preds = %if.else
  %call14.i = tail call i32 @___ratelimit(ptr noundef nonnull @sparx5_inject._rs, ptr noundef nonnull @__func__.sparx5_inject) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool15.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool15.not.i, label %if.then.i.if.else9_crit_edge, label %do.end35.i

if.then.i.if.else9_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else9

do.end35.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %call39.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %shr.i) #8
  br label %if.else9

do.end55.i:                                       ; preds = %if.else
  %ifh4 = getelementptr i8, ptr %dev, i32 2420
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !43
  tail call void @arm_heavy_mb() #5
  %9 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr82.i.i257.i = getelementptr i8, ptr %10, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i.i257.i, i32 9216) #5, !srcloc !44
  %11 = ptrtoint ptr %ifh4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ifh4, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !43
  tail call void @arm_heavy_mb() #5
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #5
  %14 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr82.i.i261.i = getelementptr i8, ptr %15, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i.i261.i, i32 %13) #5, !srcloc !44
  %arrayidx.1.i = getelementptr i8, ptr %dev, i32 2424
  %16 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.1.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !43
  tail call void @arm_heavy_mb() #5
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #5
  %19 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr82.i.i261.1.i = getelementptr i8, ptr %20, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i.i261.1.i, i32 %18) #5, !srcloc !44
  %arrayidx.2.i = getelementptr i8, ptr %dev, i32 2428
  %21 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.2.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !43
  tail call void @arm_heavy_mb() #5
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #5
  %24 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr82.i.i261.2.i = getelementptr i8, ptr %25, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i.i261.2.i, i32 %23) #5, !srcloc !44
  %arrayidx.3.i = getelementptr i8, ptr %dev, i32 2432
  %26 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.3.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !43
  tail call void @arm_heavy_mb() #5
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #5
  %29 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr82.i.i261.3.i = getelementptr i8, ptr %30, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i.i261.3.i, i32 %28) #5, !srcloc !44
  %arrayidx.4.i = getelementptr i8, ptr %dev, i32 2436
  %31 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx.4.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !43
  tail call void @arm_heavy_mb() #5
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #5
  %34 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr82.i.i261.4.i = getelementptr i8, ptr %35, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i.i261.4.i, i32 %33) #5, !srcloc !44
  %arrayidx.5.i = getelementptr i8, ptr %dev, i32 2440
  %36 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx.5.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !43
  tail call void @arm_heavy_mb() #5
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #5
  %39 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr82.i.i261.5.i = getelementptr i8, ptr %40, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i.i261.5.i, i32 %38) #5, !srcloc !44
  %arrayidx.6.i = getelementptr i8, ptr %dev, i32 2444
  %41 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx.6.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !43
  tail call void @arm_heavy_mb() #5
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #5
  %44 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr82.i.i261.6.i = getelementptr i8, ptr %45, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i.i261.6.i, i32 %43) #5, !srcloc !44
  %arrayidx.7.i = getelementptr i8, ptr %dev, i32 2448
  %46 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx.7.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !43
  tail call void @arm_heavy_mb() #5
  %48 = tail call i32 @llvm.bswap.i32(i32 %47) #5
  %49 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr82.i.i261.7.i = getelementptr i8, ptr %50, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i.i261.7.i, i32 %48) #5, !srcloc !44
  %arrayidx.8.i = getelementptr i8, ptr %dev, i32 2452
  %51 = ptrtoint ptr %arrayidx.8.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx.8.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !43
  tail call void @arm_heavy_mb() #5
  %53 = tail call i32 @llvm.bswap.i32(i32 %52) #5
  %54 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr82.i.i261.8.i = getelementptr i8, ptr %55, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i.i261.8.i, i32 %53) #5, !srcloc !44
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %56 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %len.i, align 4
  %sub.i = add i32 %57, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.i)
  %cmp74282.not.i = icmp ult i32 %sub.i, 4
  br i1 %cmp74282.not.i, label %do.end55.i.while.body.i.preheader_crit_edge, label %for.body75.preheader.i

do.end55.i.while.body.i.preheader_crit_edge:      ; preds = %do.end55.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i.preheader

while.body.i.preheader:                           ; preds = %while.cond.preheader.i.while.body.i.preheader_crit_edge, %do.end55.i.while.body.i.preheader_crit_edge
  %w.2286.i.ph = phi i32 [ 0, %do.end55.i.while.body.i.preheader_crit_edge ], [ %div252.i, %while.cond.preheader.i.while.body.i.preheader_crit_edge ]
  br label %while.body.i

for.body75.preheader.i:                           ; preds = %do.end55.i
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %58 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %data.i, align 4
  %div252.i = lshr i32 %sub.i, 2
  br label %for.body75.i

while.cond.preheader.i:                           ; preds = %for.body75.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 60, i32 %sub.i)
  %cmp80285.i = icmp ult i32 %sub.i, 60
  br i1 %cmp80285.i, label %while.cond.preheader.i.while.body.i.preheader_crit_edge, label %while.cond.preheader.i.do.end96.i_crit_edge

while.cond.preheader.i.do.end96.i_crit_edge:      ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end96.i

while.cond.preheader.i.while.body.i.preheader_crit_edge: ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i.preheader

for.body75.i:                                     ; preds = %for.body75.i.for.body75.i_crit_edge, %for.body75.preheader.i
  %w.1284.i = phi i32 [ %inc78.i, %for.body75.i.for.body75.i_crit_edge ], [ 0, %for.body75.preheader.i ]
  %buf.0283.i = phi ptr [ %add.ptr.i25, %for.body75.i.for.body75.i_crit_edge ], [ %59, %for.body75.preheader.i ]
  %60 = ptrtoint ptr %buf.0283.i to i32
  call void @__asan_loadN_noabort(i32 %60, i32 4)
  %61 = load i32, ptr %buf.0283.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !43
  tail call void @arm_heavy_mb() #5
  %62 = tail call i32 @llvm.bswap.i32(i32 %61) #5
  %63 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr82.i.i265.i = getelementptr i8, ptr %64, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i.i265.i, i32 %62) #5, !srcloc !44
  %inc78.i = add nuw nsw i32 %w.1284.i, 1
  %add.ptr.i25 = getelementptr i8, ptr %buf.0283.i, i32 4
  %exitcond.not.i = icmp eq i32 %inc78.i, %div252.i
  br i1 %exitcond.not.i, label %while.cond.preheader.i, label %for.body75.i.for.body75.i_crit_edge

for.body75.i.for.body75.i_crit_edge:              ; preds = %for.body75.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body75.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.i.preheader
  %w.2286.i = phi i32 [ %inc81.i, %while.body.i.while.body.i_crit_edge ], [ %w.2286.i.ph, %while.body.i.preheader ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !43
  tail call void @arm_heavy_mb() #5
  %65 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr82.i.i269.i = getelementptr i8, ptr %66, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i.i269.i, i32 0) #5, !srcloc !44
  %inc81.i = add nuw nsw i32 %w.2286.i, 1
  %exitcond287.not.i = icmp eq i32 %inc81.i, 15
  br i1 %exitcond287.not.i, label %while.body.i.do.end96.i_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

while.body.i.do.end96.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end96.i

do.end96.i:                                       ; preds = %while.body.i.do.end96.i_crit_edge, %while.cond.preheader.i.do.end96.i_crit_edge
  %67 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 60, i32 %68)
  %cmp106.i = icmp ult i32 %68, 60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !43
  tail call void @arm_heavy_mb() #5
  %69 = shl i32 %68, 8
  %phi.bo254.i = and i32 %69, 768
  %phi.bo254.op.i = or i32 %phi.bo254.i, 10240
  %70 = select i1 %cmp106.i, i32 10240, i32 %phi.bo254.op.i
  %71 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr82.i.i273.i = getelementptr i8, ptr %72, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i.i273.i, i32 %70) #5, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !43
  tail call void @arm_heavy_mb() #5
  %73 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr82.i.i277.i = getelementptr i8, ptr %74, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i.i277.i, i32 0) #5, !srcloc !44
  %75 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr82.i.i280.i = getelementptr i8, ptr %76, i32 60
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82.i.i280.i) #5, !srcloc !45
  %78 = tail call i32 @llvm.bswap.i32(i32 %77) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !46
  %and177.i = lshr i32 %78, 4
  %shr178.i = and i32 %and177.i, 3
  %79 = and i32 %78, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %tobool181.not.i = icmp eq i32 %79, 0
  br i1 %tobool181.not.i, label %do.end96.i.if.then8_crit_edge, label %if.then182.i

do.end96.i.if.then8_crit_edge:                    ; preds = %do.end96.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then8

if.then182.i:                                     ; preds = %do.end96.i
  %call184.i = tail call i32 @___ratelimit(ptr noundef nonnull @sparx5_inject._rs.4, ptr noundef nonnull @__func__.sparx5_inject) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call184.i)
  %tobool185.not.i = icmp eq i32 %call184.i, 0
  br i1 %tobool185.not.i, label %if.then182.i.if.end210.i_crit_edge, label %do.end205.i

if.then182.i.if.end210.i_crit_edge:               ; preds = %if.then182.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end210.i

do.end205.i:                                      ; preds = %if.then182.i
  call void @__sanitizer_cov_trace_pc() #7
  %call209.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %shr178.i) #8
  br label %if.end210.i

if.end210.i:                                      ; preds = %do.end205.i, %if.then182.i.if.end210.i_crit_edge
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %80 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %_tx.i.i.i, align 128
  %state.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %81, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i.i) #5
  %inj_timer.i = getelementptr i8, ptr %dev, i32 2464
  tail call void @hrtimer_start_range_ns(ptr noundef %inj_timer.i, i64 noundef 50000, i64 noundef 0, i32 noundef 1) #5
  br label %if.then8

if.end:                                           ; preds = %entry
  %ifh = getelementptr i8, ptr %dev, i32 2420
  %call3 = tail call i32 @sparx5_fdma_xmit(ptr noundef %1, ptr noundef %ifh, ptr noundef %skb) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp7 = icmp eq i32 %call3, 0
  br i1 %cmp7, label %if.end.if.then8_crit_edge, label %if.end.if.else9_crit_edge

if.end.if.else9_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else9

if.end.if.then8_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then8

if.then8:                                         ; preds = %if.end.if.then8_crit_edge, %if.end210.i, %do.end96.i.if.then8_crit_edge
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %82 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %len, align 4
  %tx_bytes = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 3
  %84 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %tx_bytes, align 4
  %add = add i32 %85, %83
  store i32 %add, ptr %tx_bytes, align 4
  %tx_packets = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 1
  %86 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %tx_packets, align 4
  %inc = add i32 %87, 1
  store i32 %inc, ptr %tx_packets, align 4
  tail call void @skb_clone_tx_timestamp(ptr noundef %skb) #5
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %88 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %end.i.i, align 4
  %tx_flags.i = getelementptr inbounds %struct.skb_shared_info, ptr %89, i32 0, i32 3
  %90 = ptrtoint ptr %tx_flags.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %tx_flags.i, align 1
  %92 = and i8 %91, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %92)
  %tobool.not.i26 = icmp eq i8 %92, 0
  br i1 %tobool.not.i26, label %if.then8.skb_tx_timestamp.exit_crit_edge, label %if.then.i27

if.then8.skb_tx_timestamp.exit_crit_edge:         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #7
  br label %skb_tx_timestamp.exit

if.then.i27:                                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @skb_tstamp_tx(ptr noundef %skb, ptr noundef null) #5
  br label %skb_tx_timestamp.exit

skb_tx_timestamp.exit:                            ; preds = %if.then.i27, %if.then8.skb_tx_timestamp.exit_crit_edge
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #5
  br label %if.end11

if.else9:                                         ; preds = %if.end.if.else9_crit_edge, %do.end35.i, %if.then.i.if.else9_crit_edge
  %ret.036 = phi i32 [ %call3, %if.end.if.else9_crit_edge ], [ -16, %do.end35.i ], [ -16, %if.then.i.if.else9_crit_edge ]
  %tx_dropped = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 7
  %93 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %tx_dropped, align 4
  %inc10 = add i32 %94, 1
  store i32 %inc10, ptr %tx_dropped, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.else9, %skb_tx_timestamp.exit
  %ret.030 = phi i32 [ %ret.036, %if.else9 ], [ 0, %skb_tx_timestamp.exit ]
  ret i32 %ret.030
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sparx5_fdma_xmit(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sparx5_manual_injection_mode(ptr nocapture noundef readonly %sparx5) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !43
  tail call void @arm_heavy_mb() #5
  %arrayidx.i.i = getelementptr %struct.sparx5, ptr %sparx5, i32 0, i32 4, i32 177
  %0 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 117440512) #5, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !43
  tail call void @arm_heavy_mb() #5
  %2 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 83886080) #5, !srcloc !44
  %arrayidx.i.i190 = getelementptr %struct.sparx5, ptr %sparx5, i32 0, i32 4, i32 9
  %arrayidx.i.i194 = getelementptr %struct.sparx5, ptr %sparx5, i32 0, i32 4, i32 115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !43
  tail call void @arm_heavy_mb() #5
  %4 = ptrtoint ptr %arrayidx.i.i190 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i.i190, align 4
  %add.ptr84.i.i = getelementptr i8, ptr %5, i32 34080
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr84.i.i, i32 1140981760) #5, !srcloc !44
  %6 = ptrtoint ptr %arrayidx.i.i194 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i.i194, align 4
  %add.ptr84.i.i198 = getelementptr i8, ptr %7, i32 1640
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr84.i.i198) #5, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !48
  tail call void @arm_heavy_mb() #5
  %9 = or i32 %8, 16777216
  %10 = ptrtoint ptr %arrayidx.i.i194 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i.i194, align 4
  %add.ptr84.i7.i = getelementptr i8, ptr %11, i32 1640
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr84.i7.i, i32 %9) #5, !srcloc !44
  %12 = ptrtoint ptr %arrayidx.i.i194 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i.i194, align 4
  %add.ptr84.i.i205 = getelementptr i8, ptr %13, i32 1640
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr84.i.i205) #5, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !48
  tail call void @arm_heavy_mb() #5
  %15 = and i32 %14, 33554431
  %16 = ptrtoint ptr %arrayidx.i.i194 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i.i194, align 4
  %add.ptr84.i7.i211 = getelementptr i8, ptr %17, i32 1640
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr84.i7.i211, i32 %15) #5, !srcloc !44
  %18 = ptrtoint ptr %arrayidx.i.i194 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.i.i194, align 4
  %add.ptr84.i.i218 = getelementptr i8, ptr %19, i32 280
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr84.i.i218) #5, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !48
  tail call void @arm_heavy_mb() #5
  %21 = and i32 %20, -524289
  %22 = ptrtoint ptr %arrayidx.i.i194 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.i.i194, align 4
  %add.ptr84.i7.i223 = getelementptr i8, ptr %23, i32 280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr84.i7.i223, i32 %21) #5, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !43
  tail call void @arm_heavy_mb() #5
  %24 = ptrtoint ptr %arrayidx.i.i190 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.i.i190, align 4
  %add.ptr84.i.i.1 = getelementptr i8, ptr %25, i32 34084
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr84.i.i.1, i32 1140981760) #5, !srcloc !44
  %26 = ptrtoint ptr %arrayidx.i.i194 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.i.i194, align 4
  %add.ptr84.i.i198.1 = getelementptr i8, ptr %27, i32 1644
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr84.i.i198.1) #5, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !48
  tail call void @arm_heavy_mb() #5
  %29 = or i32 %28, 16777216
  %30 = ptrtoint ptr %arrayidx.i.i194 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx.i.i194, align 4
  %add.ptr84.i7.i.1 = getelementptr i8, ptr %31, i32 1644
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr84.i7.i.1, i32 %29) #5, !srcloc !44
  %32 = ptrtoint ptr %arrayidx.i.i194 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx.i.i194, align 4
  %add.ptr84.i.i205.1 = getelementptr i8, ptr %33, i32 1644
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr84.i.i205.1) #5, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !48
  tail call void @arm_heavy_mb() #5
  %35 = and i32 %34, 33554431
  %36 = ptrtoint ptr %arrayidx.i.i194 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx.i.i194, align 4
  %add.ptr84.i7.i211.1 = getelementptr i8, ptr %37, i32 1644
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr84.i7.i211.1, i32 %35) #5, !srcloc !44
  %38 = ptrtoint ptr %arrayidx.i.i194 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx.i.i194, align 4
  %add.ptr84.i.i218.1 = getelementptr i8, ptr %39, i32 284
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr84.i.i218.1) #5, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !48
  tail call void @arm_heavy_mb() #5
  %41 = and i32 %40, -524289
  %42 = ptrtoint ptr %arrayidx.i.i194 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx.i.i194, align 4
  %add.ptr84.i7.i223.1 = getelementptr i8, ptr %43, i32 284
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr84.i7.i223.1, i32 %41) #5, !srcloc !44
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sparx5_xtr_handler(i32 noundef %irq, ptr noundef %_sparx5) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i.i = getelementptr %struct.sparx5, ptr %_sparx5, i32 0, i32 4, i32 177
  %0 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr82.i.i18 = getelementptr i8, ptr %1, i32 28
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82.i.i18) #5, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !46
  %3 = and i32 %2, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not19.not = icmp eq i32 %3, 0
  br i1 %tobool.not19.not, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %bridge_mask.i = getelementptr inbounds %struct.sparx5, ptr %_sparx5, i32 0, i32 21
  %dev14.i = getelementptr inbounds %struct.sparx5, ptr %_sparx5, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %sparx5_xtr_grp.exit.while.body_crit_edge, %while.body.lr.ph
  %poll.020 = phi i32 [ 64, %while.body.lr.ph ], [ %dec, %sparx5_xtr_grp.exit.while.body_crit_edge ]
  %dec = add nsw i32 %poll.020, -1
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr82.i.i.i = getelementptr i8, ptr %5, i32 8
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82.i.i.i) #5, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !46
  %7 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr82.i.i.1.i = getelementptr i8, ptr %8, i32 8
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82.i.i.1.i) #5, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !46
  %10 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr82.i.i.2.i = getelementptr i8, ptr %11, i32 8
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82.i.i.2.i) #5, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !46
  %13 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr82.i.i.3.i = getelementptr i8, ptr %14, i32 8
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82.i.i.3.i) #5, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !46
  %16 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr82.i.i.4.i = getelementptr i8, ptr %17, i32 8
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82.i.i.4.i) #5, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !46
  %19 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr82.i.i.5.i = getelementptr i8, ptr %20, i32 8
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82.i.i.5.i) #5, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !46
  %22 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr82.i.i.6.i = getelementptr i8, ptr %23, i32 8
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82.i.i.6.i) #5, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !46
  %25 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr82.i.i.7.i = getelementptr i8, ptr %26, i32 8
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82.i.i.7.i) #5, !srcloc !45
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !46
  %ifh.sroa.10.sroa.5.0.extract.shift.i = lshr i32 %28, 14
  %29 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr82.i.i.8.i = getelementptr i8, ptr %30, i32 8
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82.i.i.8.i) #5, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !46
  %or11.i.i = and i32 %ifh.sroa.10.sroa.5.0.extract.shift.i, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 65, i32 %or11.i.i)
  %cmp1.i = icmp ult i32 %or11.i.i, 65
  br i1 %cmp1.i, label %cond.end.i, label %while.body.do.end.i_crit_edge

while.body.do.end.i_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i

cond.end.i:                                       ; preds = %while.body
  %arrayidx4.i = getelementptr %struct.sparx5, ptr %_sparx5, i32 0, i32 7, i32 %or11.i.i
  %32 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx4.i, align 4
  %tobool.not.i = icmp eq ptr %33, null
  br i1 %tobool.not.i, label %cond.end.i.do.end.i_crit_edge, label %lor.lhs.false.i

cond.end.i.do.end.i_crit_edge:                    ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i

lor.lhs.false.i:                                  ; preds = %cond.end.i
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 8
  %tobool5.not.i = icmp eq ptr %35, null
  br i1 %tobool5.not.i, label %lor.lhs.false.i.do.end.i_crit_edge, label %if.end.i

lor.lhs.false.i.do.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i

do.end.i:                                         ; preds = %lor.lhs.false.i.do.end.i_crit_edge, %cond.end.i.do.end.i_crit_edge, %while.body.do.end.i_crit_edge
  %36 = ptrtoint ptr %dev14.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev14.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.8, i32 noundef %or11.i.i) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !43
  tail call void @arm_heavy_mb() #5
  %38 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr82.i.i.i.i = getelementptr i8, ptr %39, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i.i.i.i, i32 16777216) #5, !srcloc !44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %40 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %40(i32 noundef 214748000) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !43
  tail call void @arm_heavy_mb() #5
  %41 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr82.i.i20.i.i = getelementptr i8, ptr %42, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i.i20.i.i, i32 0) #5, !srcloc !44
  br label %sparx5_xtr_grp.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  %mtu.i = getelementptr inbounds %struct.net_device, ptr %35, i32 0, i32 20
  %43 = ptrtoint ptr %mtu.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %mtu.i, align 4
  %add.i = add i32 %44, 14
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef nonnull %35, i32 noundef %add.i, i32 noundef 2592) #5
  %tobool9.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool9.not.i, label %if.then10.i, label %if.end16.i

if.then10.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !43
  tail call void @arm_heavy_mb() #5
  %45 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr82.i.i.i18.i = getelementptr i8, ptr %46, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i.i.i18.i, i32 16777216) #5, !srcloc !44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %47 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %47(i32 noundef 214748000) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !43
  tail call void @arm_heavy_mb() #5
  %48 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr82.i.i20.i19.i = getelementptr i8, ptr %49, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i.i20.i19.i, i32 0) #5, !srcloc !44
  %50 = ptrtoint ptr %dev14.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev14.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %51, ptr noundef nonnull @.str.13) #8
  %rx_dropped.i = getelementptr inbounds %struct.net_device, ptr %35, i32 0, i32 36, i32 6
  %52 = ptrtoint ptr %rx_dropped.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %rx_dropped.i, align 8
  %inc15.i = add i32 %53, 1
  store i32 %inc15.i, ptr %rx_dropped.i, align 8
  br label %sparx5_xtr_grp.exit

if.end16.i:                                       ; preds = %if.end.i
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %54 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %data.i, align 4
  br label %while.body.outer.outer.i

while.body.outer.outer.i:                         ; preds = %sw.bb28.i.while.body.outer.outer.i_crit_edge, %if.end16.i
  %rxbuf.031.ph.ph.i = phi ptr [ %55, %if.end16.i ], [ %incdec.ptr.i, %sw.bb28.i.while.body.outer.outer.i_crit_edge ]
  %byte_cnt.030.ph.ph.i = phi i32 [ 0, %if.end16.i ], [ %add31.i, %sw.bb28.i.while.body.outer.outer.i_crit_edge ]
  %pruned_flag.0.off028.ph.ph.i = phi i1 [ false, %if.end16.i ], [ %pruned_flag.1.off0.i, %sw.bb28.i.while.body.outer.outer.i_crit_edge ]
  br label %while.body.outer.i

while.body.outer.i:                               ; preds = %sw.default.i, %while.body.outer.outer.i
  %rxbuf.031.ph.i = phi ptr [ %incdec.ptr33.i, %sw.default.i ], [ %rxbuf.031.ph.ph.i, %while.body.outer.outer.i ]
  %byte_cnt.030.ph.i = phi i32 [ %add32.i, %sw.default.i ], [ %byte_cnt.030.ph.ph.i, %while.body.outer.outer.i ]
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.outer.i
  %56 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr82.i.i21.i = getelementptr i8, ptr %57, i32 8
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82.i.i21.i) #5, !srcloc !45
  %59 = tail call i32 @llvm.bswap.i32(i32 %58) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !46
  %60 = zext i32 %59 to i64
  call void @__sanitizer_cov_trace_switch(i64 %60, ptr @__sancov_gen_cov_switch_values)
  switch i32 %59, label %sw.default.i [
    i32 -2147483641, label %while.body.i.while.body.i_crit_edge
    i32 -2147483643, label %while.body.i.if.then41.i_crit_edge
    i32 -2147483648, label %while.body.i.sw.bb24.i_crit_edge
    i32 -2147483647, label %while.body.i.sw.bb24.i_crit_edge93
    i32 -2147483646, label %while.body.i.sw.bb24.i_crit_edge94
    i32 -2147483645, label %while.body.i.sw.bb24.i_crit_edge95
    i32 -2147483644, label %sw.bb28.i.loopexit
    i32 -2147483642, label %while.body.i.sw.bb28.i_crit_edge
  ]

while.body.i.sw.bb28.i_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb28.i

while.body.i.sw.bb24.i_crit_edge95:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb24.i

while.body.i.sw.bb24.i_crit_edge94:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb24.i

while.body.i.sw.bb24.i_crit_edge93:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb24.i

while.body.i.sw.bb24.i_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb24.i

while.body.i.if.then41.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then41.i

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

sw.bb24.i:                                        ; preds = %while.body.i.sw.bb24.i_crit_edge, %while.body.i.sw.bb24.i_crit_edge93, %while.body.i.sw.bb24.i_crit_edge94, %while.body.i.sw.bb24.i_crit_edge95
  %and.i = and i32 %59, 3
  %sub26.i = sub i32 %byte_cnt.030.ph.i, %and.i
  br i1 %pruned_flag.0.off028.ph.ph.i, label %sw.bb24.i.if.then41.i_crit_edge, label %sw.bb24.i.if.end51.i_crit_edge

sw.bb24.i.if.end51.i_crit_edge:                   ; preds = %sw.bb24.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end51.i

sw.bb24.i.if.then41.i_crit_edge:                  ; preds = %sw.bb24.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then41.i

sw.bb28.i.loopexit:                               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb28.i

sw.bb28.i:                                        ; preds = %sw.bb28.i.loopexit, %while.body.i.sw.bb28.i_crit_edge
  %eof_flag.1.off0.i = phi i1 [ true, %sw.bb28.i.loopexit ], [ false, %while.body.i.sw.bb28.i_crit_edge ]
  %pruned_flag.1.off0.i = phi i1 [ true, %sw.bb28.i.loopexit ], [ %pruned_flag.0.off028.ph.ph.i, %while.body.i.sw.bb28.i_crit_edge ]
  %61 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr82.i.i23.i = getelementptr i8, ptr %62, i32 8
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82.i.i23.i) #5, !srcloc !45
  %64 = tail call i32 @llvm.bswap.i32(i32 %63) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !46
  %65 = ptrtoint ptr %rxbuf.031.ph.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %rxbuf.031.ph.i, align 4
  %add31.i = add i32 %byte_cnt.030.ph.i, 4
  %incdec.ptr.i = getelementptr i32, ptr %rxbuf.031.ph.i, i32 1
  br i1 %eof_flag.1.off0.i, label %while.end.i, label %sw.bb28.i.while.body.outer.outer.i_crit_edge

sw.bb28.i.while.body.outer.outer.i_crit_edge:     ; preds = %sw.bb28.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.outer.outer.i

sw.default.i:                                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %66 = ptrtoint ptr %rxbuf.031.ph.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %59, ptr %rxbuf.031.ph.i, align 4
  %add32.i = add i32 %byte_cnt.030.ph.i, 4
  %incdec.ptr33.i = getelementptr i32, ptr %rxbuf.031.ph.i, i32 1
  br label %while.body.outer.i

while.end.i:                                      ; preds = %sw.bb28.i
  br i1 %pruned_flag.1.off0.i, label %while.end.i.if.then41.i_crit_edge, label %while.end.i.if.end51.i_crit_edge

while.end.i.if.end51.i_crit_edge:                 ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end51.i

while.end.i.if.then41.i_crit_edge:                ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then41.i

if.then41.i:                                      ; preds = %while.end.i.if.then41.i_crit_edge, %sw.bb24.i.if.then41.i_crit_edge, %while.body.i.if.then41.i_crit_edge
  %pruned_flag.2.off03745.i = phi i1 [ true, %while.end.i.if.then41.i_crit_edge ], [ true, %sw.bb24.i.if.then41.i_crit_edge ], [ %pruned_flag.0.off028.ph.ph.i, %while.body.i.if.then41.i_crit_edge ]
  %abort_flag.1.off03844.i = phi i32 [ 0, %while.end.i.if.then41.i_crit_edge ], [ 0, %sw.bb24.i.if.then41.i_crit_edge ], [ 1, %while.body.i.if.then41.i_crit_edge ]
  %conv45.i = zext i1 %pruned_flag.2.off03745.i to i32
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef nonnull %35, ptr noundef nonnull @.str.15, i32 noundef %abort_flag.1.off03844.i, i32 noundef %conv45.i, i32 noundef 1) #8
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i.i, i32 noundef 0) #5
  %rx_dropped49.i = getelementptr inbounds %struct.net_device, ptr %35, i32 0, i32 36, i32 6
  %67 = ptrtoint ptr %rx_dropped49.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %rx_dropped49.i, align 8
  %inc50.i = add i32 %68, 1
  store i32 %inc50.i, ptr %rx_dropped49.i, align 8
  br label %sparx5_xtr_grp.exit

if.end51.i:                                       ; preds = %while.end.i.if.end51.i_crit_edge, %sw.bb24.i.if.end51.i_crit_edge
  %byte_cnt.139.i3 = phi i32 [ %sub26.i, %sw.bb24.i.if.end51.i_crit_edge ], [ %add31.i, %while.end.i.if.end51.i_crit_edge ]
  %portno.i = getelementptr inbounds %struct.sparx5_port, ptr %33, i32 0, i32 8
  %69 = ptrtoint ptr %portno.i to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %portno.i, align 4
  %conv52.i = zext i16 %70 to i32
  %div3.i.i = lshr i32 %conv52.i, 5
  %arrayidx.i.i2 = getelementptr i32, ptr %bridge_mask.i, i32 %div3.i.i
  %71 = ptrtoint ptr %arrayidx.i.i2 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load volatile i32, ptr %arrayidx.i.i2, align 4
  %and.i.i = and i32 %conv52.i, 31
  %73 = shl nuw i32 1, %and.i.i
  %74 = and i32 %73, %72
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool55.not.i = icmp eq i32 %74, 0
  br i1 %tobool55.not.i, label %if.end51.i.if.end57.i_crit_edge, label %if.then56.i

if.end51.i.if.end57.i_crit_edge:                  ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end57.i

if.then56.i:                                      ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #7
  %offload_fwd_mark.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15, i32 0, i32 3
  %75 = ptrtoint ptr %offload_fwd_mark.i to i32
  call void @__asan_loadN_noabort(i32 %75, i32 4)
  %bf.load.i = load i32, ptr %offload_fwd_mark.i, align 2
  %bf.set.i = or i32 %bf.load.i, 1048576
  store i32 %bf.set.i, ptr %offload_fwd_mark.i, align 2
  br label %if.end57.i

if.end57.i:                                       ; preds = %if.then56.i, %if.end51.i.if.end57.i_crit_edge
  %sub58.i = add i32 %byte_cnt.139.i3, -4
  %call59.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef %sub58.i) #5
  %len1.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 6
  %76 = ptrtoint ptr %len1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %len1.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 60, i32 %77)
  %cmp.i.i.i.i = icmp ult i32 %77, 60
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %if.end57.i.eth_skb_pad.exit.i_crit_edge, !prof !49

if.end57.i.eth_skb_pad.exit.i_crit_edge:          ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %eth_skb_pad.exit.i

if.then.i.i.i.i:                                  ; preds = %if.end57.i
  %sub.i.i.i.i = sub nuw nsw i32 60, %77
  %call.i.i.i.i = tail call i32 @__skb_pad(ptr noundef nonnull %call.i.i, i32 noundef %sub.i.i.i.i, i1 noundef zeroext true) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool4.not.i.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i.i, label %if.end.i.i.i.i, label %if.then.i.i.i.i.eth_skb_pad.exit.i_crit_edge

if.then.i.i.i.i.eth_skb_pad.exit.i_crit_edge:     ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %eth_skb_pad.exit.i

if.end.i.i.i.i:                                   ; preds = %if.then.i.i.i.i
  %data_len.i.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 7
  %78 = ptrtoint ptr %data_len.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %data_len.i.i.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %tobool.i.not.i.i.i.i.i = icmp eq i32 %79, 0
  br i1 %tobool.i.not.i.i.i.i.i, label %__skb_put.exit.i.i.i.i, label %do.body3.i.i.i.i.i, !prof !50

do.body3.i.i.i.i.i:                               ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #5, !srcloc !51
  unreachable

__skb_put.exit.i.i.i.i:                           ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %tail.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %80 = ptrtoint ptr %tail.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %tail.i.i.i.i.i, align 8
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %81, i32 %sub.i.i.i.i
  store ptr %add.ptr.i.i.i.i.i, ptr %tail.i.i.i.i.i, align 8
  %82 = ptrtoint ptr %len1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %len1.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %83, %sub.i.i.i.i
  store i32 %add.i.i.i.i.i, ptr %len1.i.i.i.i, align 4
  br label %eth_skb_pad.exit.i

eth_skb_pad.exit.i:                               ; preds = %__skb_put.exit.i.i.i.i, %if.then.i.i.i.i.eth_skb_pad.exit.i_crit_edge, %if.end57.i.eth_skb_pad.exit.i_crit_edge
  %call61.i = tail call zeroext i16 @eth_type_trans(ptr noundef nonnull %call.i.i, ptr noundef nonnull %35) #5
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15, i32 0, i32 18
  %84 = ptrtoint ptr %protocol.i to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 %call61.i, ptr %protocol.i, align 8
  %85 = ptrtoint ptr %len1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %len1.i.i.i.i, align 4
  %stats62.i = getelementptr inbounds %struct.net_device, ptr %35, i32 0, i32 36
  %rx_bytes.i = getelementptr inbounds %struct.net_device, ptr %35, i32 0, i32 36, i32 2
  %87 = ptrtoint ptr %rx_bytes.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %rx_bytes.i, align 8
  %add63.i = add i32 %88, %86
  store i32 %add63.i, ptr %rx_bytes.i, align 8
  %89 = ptrtoint ptr %stats62.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %stats62.i, align 8
  %inc65.i = add i32 %90, 1
  store i32 %inc65.i, ptr %stats62.i, align 8
  %call66.i = tail call i32 @netif_rx(ptr noundef nonnull %call.i.i) #5
  br label %sparx5_xtr_grp.exit

sparx5_xtr_grp.exit:                              ; preds = %eth_skb_pad.exit.i, %if.then41.i, %if.then10.i, %do.end.i
  %91 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr82.i.i = getelementptr i8, ptr %92, i32 28
  %93 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82.i.i) #5, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !46
  %94 = and i32 %93, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %tobool.not = icmp ne i32 %94, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %poll.020)
  %cmp = icmp ugt i32 %poll.020, 1
  %or.cond = select i1 %tobool.not, i1 %cmp, i1 false
  br i1 %or.cond, label %sparx5_xtr_grp.exit.while.body_crit_edge, label %sparx5_xtr_grp.exit.while.end_crit_edge

sparx5_xtr_grp.exit.while.end_crit_edge:          ; preds = %sparx5_xtr_grp.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

sparx5_xtr_grp.exit.while.body_crit_edge:         ; preds = %sparx5_xtr_grp.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.end:                                        ; preds = %sparx5_xtr_grp.exit.while.end_crit_edge, %entry.while.end_crit_edge
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sparx5_port_inj_timer_setup(ptr noundef %port) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %inj_timer = getelementptr inbounds %struct.sparx5_port, ptr %port, i32 0, i32 20
  tail call void @hrtimer_init(ptr noundef %inj_timer, i32 noundef 1, i32 noundef 1) #5
  %function = getelementptr inbounds %struct.sparx5_port, ptr %port, i32 0, i32 20, i32 2
  %0 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @sparx5_injection_timeout, ptr %function, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sparx5_injection_timeout(ptr nocapture noundef readonly %tmr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %sparx5 = getelementptr i8, ptr %tmr, i32 -156
  %0 = ptrtoint ptr %sparx5 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sparx5, align 4
  %arrayidx.i.i = getelementptr %struct.sparx5, ptr %1, i32 0, i32 4, i32 177
  %2 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr82.i.i = getelementptr i8, ptr %3, i32 60
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82.i.i) #5, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !46
  %5 = and i32 %4, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.if.end40_crit_edge, label %if.then

entry.if.end40_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end40

if.then:                                          ; preds = %entry
  %call15 = tail call i32 @___ratelimit(ptr noundef nonnull @sparx5_injection_timeout._rs, ptr noundef nonnull @__func__.sparx5_injection_timeout) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.then.do.end37_crit_edge, label %do.end20

if.then.do.end37_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end37

do.end20:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #8
  br label %do.end37

do.end37:                                         ; preds = %do.end20, %if.then.do.end37_crit_edge
  %6 = ptrtoint ptr %sparx5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sparx5, align 4
  %portno = getelementptr i8, ptr %tmr, i32 -68
  %8 = ptrtoint ptr %portno to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %portno, align 4
  %conv = zext i16 %9 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 67, i16 %9)
  %cmp51.not.i.i = icmp ult i16 %9, 67
  br i1 %cmp51.not.i.i, label %do.end37.spx5_addr.exit.i_crit_edge, label %do.end67.i.i, !prof !50

do.end37.spx5_addr.exit.i_crit_edge:              ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #7
  br label %spx5_addr.exit.i

do.end67.i.i:                                     ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 348, i32 noundef 9, ptr noundef null) #5
  br label %spx5_addr.exit.i

spx5_addr.exit.i:                                 ; preds = %do.end67.i.i, %do.end37.spx5_addr.exit.i_crit_edge
  %arrayidx.i.i44 = getelementptr %struct.sparx5, ptr %7, i32 0, i32 4, i32 115
  %10 = ptrtoint ptr %arrayidx.i.i44 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i.i44, align 4
  %add.ptr82.i.i46 = getelementptr i8, ptr %11, i32 1380
  %mul83.i.i = shl nuw nsw i32 %conv, 2
  %add.ptr84.i.i = getelementptr i8, ptr %add.ptr82.i.i46, i32 %mul83.i.i
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr84.i.i) #5, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !48
  tail call void @arm_heavy_mb() #5
  br i1 %cmp51.not.i.i, label %spx5_addr.exit.i.spx5_rmw.exit_crit_edge, label %do.end67.i2.i, !prof !50

spx5_addr.exit.i.spx5_rmw.exit_crit_edge:         ; preds = %spx5_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %spx5_rmw.exit

do.end67.i2.i:                                    ; preds = %spx5_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 348, i32 noundef 9, ptr noundef null) #5
  br label %spx5_rmw.exit

spx5_rmw.exit:                                    ; preds = %do.end67.i2.i, %spx5_addr.exit.i.spx5_rmw.exit_crit_edge
  %13 = or i32 %12, 16777216
  %14 = ptrtoint ptr %arrayidx.i.i44 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i.i44, align 4
  %add.ptr82.i5.i = getelementptr i8, ptr %15, i32 1380
  %add.ptr84.i7.i = getelementptr i8, ptr %add.ptr82.i5.i, i32 %mul83.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr84.i7.i, i32 %13) #5, !srcloc !44
  br label %if.end40

if.end40:                                         ; preds = %spx5_rmw.exit, %entry.if.end40_crit_edge
  %add.ptr = getelementptr i8, ptr %tmr, i32 -160
  %16 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %add.ptr, align 8
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %17, i32 0, i32 103
  %18 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %19) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_start_range_ns(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_clone_tx_timestamp(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_tstamp_tx(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__skb_pad(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !12, !13, !14, !15, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !30, !31, !32, !33}
!llvm.module.flags = !{!34, !35, !36, !37, !38, !39, !40, !41}
!llvm.ident = !{!42}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_main.h", i32 346, i32 2}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_packet.c", i32 164, i32 3}
!4 = !{ptr @sparx5_inject._rs, !3, !"_rs", i1 false, i1 false}
!5 = !{ptr @__func__.sparx5_inject, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @sparx5_inject._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @sparx5_inject._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @sparx5_inject._rs.4, !11, !"_rs", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_packet.c", i32 206, i32 3}
!12 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @sparx5_inject._entry.5, !11, !"_entry", i1 false, i1 false}
!14 = !{ptr @sparx5_inject._entry_ptr.7, !11, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_packet.c", i32 71, i32 3}
!17 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.10, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.11, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @sparx5_xtr_grp._entry, !16, !"_entry", i1 false, i1 false}
!21 = !{ptr @sparx5_xtr_grp._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_packet.c", i32 81, i32 3}
!24 = !{ptr @sparx5_xtr_grp._entry.12, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @sparx5_xtr_grp._entry_ptr.14, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.15, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_packet.c", i32 131, i32 22}
!28 = !{ptr @sparx5_injection_timeout._rs, !29, !"_rs", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_packet.c", i32 248, i32 3}
!30 = !{ptr @__func__.sparx5_injection_timeout, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.16, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @sparx5_injection_timeout._entry, !29, !"_entry", i1 false, i1 false}
!33 = !{ptr @sparx5_injection_timeout._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!34 = !{i32 1, !"wchar_size", i32 2}
!35 = !{i32 1, !"min_enum_size", i32 4}
!36 = !{i32 8, !"branch-target-enforcement", i32 0}
!37 = !{i32 8, !"sign-return-address", i32 0}
!38 = !{i32 8, !"sign-return-address-all", i32 0}
!39 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!40 = !{i32 7, !"uwtable", i32 1}
!41 = !{i32 7, !"frame-pointer", i32 2}
!42 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!43 = !{i64 2157336975}
!44 = !{i64 6180609}
!45 = !{i64 6181027}
!46 = !{i64 2157335564}
!47 = !{i64 2157338964}
!48 = !{i64 2157339268}
!49 = !{!"branch_weights", i32 1, i32 2000}
!50 = !{!"branch_weights", i32 2000, i32 1}
!51 = !{i64 2156110830, i64 2156111318, i64 2156110867, i64 2156110923, i64 2156110957, i64 2156110981, i64 2156111022, i64 2156111043, i64 2156111071, i64 2156111105}
