; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/chelsio/cxgb/sge.c_pt.bc'
source_filename = "../drivers/net/ethernet/chelsio/cxgb/sge.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.124 }
%union.anon.124 = type { ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.sge = type { ptr, ptr, [2 x %struct.freelQ], %struct.respQ, i32, i32, i32, i32, i32, %struct.timer_list, %struct.timer_list, i32, [4 x ptr], i32, %struct.sge_intr_counts, [4 x ptr], ptr, [76 x i8], [2 x %struct.cmdQ], [80 x i8] }
%struct.freelQ = type { i32, i32, i16, i16, i16, i16, i16, i8, ptr, ptr, i32 }
%struct.respQ = type { i32, i32, i16, i8, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.sge_intr_counts = type { i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], [3 x i32] }
%struct.cmdQ = type { i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, ptr, ptr, i32, %struct.spinlock }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.sched = type { i64, i32, i32, i32, [4 x %struct.sched_port], %struct.tasklet_struct, ptr }
%struct.sched_port = type { i32, i32, i32, i32, %struct.sk_buff_head }
%struct.sk_buff_head = type { %union.anon.78, i32, %struct.spinlock }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.145, i32 }
%union.anon.145 = type { ptr }
%struct.adapter = type { ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.adapter_params, ptr, ptr, ptr, %struct.napi_struct, [4 x %struct.port_info], %struct.delayed_work, %struct.timer_list, %struct.spinlock, %struct.spinlock, %struct.spinlock, [80 x i8], %struct.spinlock, i32, i32, i32, [72 x i8] }
%struct.adapter_params = type { %struct.sge_params, %struct.mc5_params, %struct.tp_params, %struct.chelsio_pci_params, ptr, [8 x i16], i32, i32, i16, i8, i8, i8 }
%struct.sge_params = type { [2 x i32], [2 x i32], i32, i32, i32, i32, i32, i32, i32 }
%struct.mc5_params = type { i32, i32, i32 }
%struct.tp_params = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.chelsio_pci_params = type { i16, i8, i8 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.port_info = type { ptr, ptr, ptr, %struct.link_config }
%struct.link_config = type { i32, i32, i16, i16, i8, i8, i8, i8, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.126, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.126 = type { ptr }
%struct.cmdQ_ce = type { ptr, i32, i32 }
%struct.freelQ_ce = type { ptr, i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.127, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.144, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.127 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.144 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.sge_port_stats = type { i64, i64, i64, i64, i64, i64 }
%struct.respQ_e = type { i32, i32 }
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
%struct.freelQ_e = type { i32, i32, i32, i32 }
%struct.cpl_rx_pkt = type { i8, i8, i16, i16, i16 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.cpl_tx_pkt_lso = type { i8, i8, i16, i32, [5 x i8], i8, i16 }
%struct.tcphdr = type { i16, i16, i32, i32, i16, i16, i16, i16 }
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.arphdr = type { i16, i16, i8, i8, i16 }
%struct.cpl_tx_pkt = type { i8, i8, i16, i16, i16 }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.board_info = type { i8, i8, i32, i8, i8, i8, i32, i32, i32, i32, i32, i8, i8, i8, i8, ptr, ptr, ptr, ptr }
%struct.page = type { i32, %union.anon.2, %union.anon.123, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.123 = type { %struct.atomic_t }
%struct.sk_buff_list = type { ptr, ptr }
%struct.cmdQ_e = type { i32, i32, i32, i32 }

@t1_sched_update_parms.__UNIQUE_ID_ddebug486 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 76, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"cxgb\00", [27 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"t1_sched_update_parms\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/net/ethernet/chelsio/cxgb/sge.c\00", [56 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s mtu=%d speed=%d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cxgb: %s mtu=%d speed=%d\0A\00", [38 x i8] zeroinitializer }, align 32
@t1_sched_update_parms.__UNIQUE_ID_ddebug493 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.5, i8 0, i8 83, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [96 x i8], [32 x i8] } { [96 x i8] c"t1_sched_update_parms: mtu %u speed %u max_avail %u max_avail_segs %u drain_bits_per_1024ns %u\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [102 x i8], [58 x i8] } { [102 x i8] c"cxgb: t1_sched_update_parms: mtu %u speed %u max_avail %u max_avail_segs %u drain_bits_per_1024ns %u\0A\00", [58 x i8] zeroinitializer }, align 32
@t1_sge_intr_error_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 956, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\011cxgb: %s: SGE response queue overflow\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"t1_sge_intr_error_handler\00", [38 x i8] zeroinitializer }, align 32
@t1_sge_intr_error_handler._entry_ptr = internal global ptr @t1_sge_intr_error_handler._entry, section ".printk_index", align 4
@t1_sge_intr_error_handler._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.8, ptr @.str.2, i32 965, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\011cxgb: %s: SGE max packet size exceeded\0A\00", [54 x i8] zeroinitializer }, align 32
@t1_sge_intr_error_handler._entry_ptr.11 = internal global ptr @t1_sge_intr_error_handler._entry.9, section ".printk_index", align 4
@t1_sge_intr_error_handler._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.8, ptr @.str.2, i32 969, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\011cxgb: %s: SGE packet mismatch\0A\00", [63 x i8] zeroinitializer }, align 32
@t1_sge_intr_error_handler._entry_ptr.14 = internal global ptr @t1_sge_intr_error_handler._entry.12, section ".printk_index", align 4
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@__param_str_copybreak = internal constant [15 x i8] c"cxgb.copybreak\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@copybreak = internal global i32 256, section ".data..read_mostly", align 4
@__param_copybreak = internal constant %struct.kernel_param { ptr @__param_str_copybreak, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.124 { ptr @copybreak } }, section "__param", align 4
@__UNIQUE_ID_copybreaktype500 = internal constant [28 x i8] c"cxgb.parmtype=copybreak:int\00", section ".modinfo", align 1
@__UNIQUE_ID_copybreak501 = internal constant [43 x i8] c"cxgb.parm=copybreak:Receive copy threshold\00", section ".modinfo", align 1
@t1_interrupt_thread._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 1645, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\011cxgb: %s: encountered fatal error, operation suspended\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"t1_interrupt_thread\00", [44 x i8] zeroinitializer }, align 32
@t1_interrupt_thread._entry_ptr = internal global ptr @t1_interrupt_thread._entry, section ".printk_index", align 4
@t1_start_xmit.__UNIQUE_ID_ddebug504 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.2, ptr @.str.18, i8 1, i8 -45, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"t1_start_xmit\00", [18 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"packet size %d hdr %d mtu%d\0A\00", [35 x i8] zeroinitializer }, align 32
@t1_start_xmit.__UNIQUE_ID_ddebug505 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.2, ptr @.str.19, i8 1, i8 -43, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"unable to do udp checksum\0A\00", [37 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@t1_sge_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.20 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"(&sge->tx_reclaim_timer)\00", [39 x i8] zeroinitializer }, align 32
@t1_sge_create.__key.21 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.22 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"(&sge->espibug_timer)\00", [42 x i8] zeroinitializer }, align 32
@unexpected_offload._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.2, i32 1108, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013cxgb: %s: unexpected offload packet, cmd %u\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"unexpected_offload\00", [45 x i8] zeroinitializer }, align 32
@unexpected_offload._entry_ptr = internal global ptr @unexpected_offload._entry, section ".printk_index", align 4
@t1_sge_tx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.2, i32 1729, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013cxgb: %s: Tx ring full while queue awake!\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"t1_sge_tx\00", [22 x i8] zeroinitializer }, align 32
@t1_sge_tx._entry_ptr = internal global ptr @t1_sge_tx._entry, section ".printk_index", align 4
@reclaim_completed_tx.__UNIQUE_ID_ddebug502 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.2, ptr @.str.28, i8 1, i8 70, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"reclaim_completed_tx\00", [43 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"reclaim_completed_tx processed:%d cleaned:%d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"cxgb: reclaim_completed_tx processed:%d cleaned:%d\0A\00", [44 x i8] zeroinitializer }, align 32
@sched_skb.__UNIQUE_ID_ddebug498 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.30, ptr @.str.2, ptr @.str.31, i8 0, i8 110, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sched_skb\00", [22 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sched_skb %p\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cxgb: sched_skb %p\0A\00", [44 x i8] zeroinitializer }, align 32
@sched_skb.__UNIQUE_ID_ddebug499 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.30, ptr @.str.2, ptr @.str.33, i8 0, i8 122, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sched_skb ret %p\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cxgb: sched_skb ret %p\0A\00", [40 x i8] zeroinitializer }, align 32
@sched_update_avail.__UNIQUE_ID_ddebug495 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.35, ptr @.str.2, ptr @.str.36, i8 0, i8 102, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sched_update_avail\00", [45 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"sched_update_avail delta=%lld\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"cxgb: sched_update_avail delta=%lld\0A\00", [59 x i8] zeroinitializer }, align 32
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.38 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@alloc_tx_resources.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.40 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&q->lock\00", [23 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@ch_mac_addr = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\00\07C\00\00\00", [26 x i8] zeroinitializer }, align 32
@tx_sched_init.__UNIQUE_ID_ddebug494 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.41, ptr @.str.2, ptr @.str.42, i8 0, i8 95, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tx_sched_init\00", [18 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tx_sched_init\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cxgb: tx_sched_init\0A\00", [43 x i8] zeroinitializer }, align 32
@restart_sched.__UNIQUE_ID_ddebug503 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.44, ptr @.str.2, ptr @.str.45, i8 1, i8 76, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"restart_sched\00", [18 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"restart_sched credits=%d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"cxgb: restart_sched credits=%d\0A\00", [32 x i8] zeroinitializer }, align 32
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.47 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 6, i64 17]
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 306, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 331, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 955, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 964, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 969, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 1644, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 1868, i32 4 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 1877, i32 5 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 2124, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 2127, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 1107, i32 2 }
@___asan_gen_.129 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 1728, i32 4 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 1304, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 441, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 490, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 409, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 326, i32 6 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 695, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant [12 x i8] c"ch_mac_addr\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 277, i32 17 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 382, i32 2 }
@___asan_gen_.202 = private constant [43 x i8] c"../drivers/net/ethernet/chelsio/cxgb/sge.c\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 1328, i32 2 }
@___asan_gen_.204 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.207 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.208 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1984, i32 2 }
@llvm.compiler.used = appending global [63 x ptr] [ptr @__UNIQUE_ID_copybreak501, ptr @__UNIQUE_ID_copybreaktype500, ptr @__param_copybreak, ptr @t1_interrupt_thread._entry, ptr @t1_interrupt_thread._entry_ptr, ptr @t1_sge_intr_error_handler._entry, ptr @t1_sge_intr_error_handler._entry.12, ptr @t1_sge_intr_error_handler._entry.9, ptr @t1_sge_intr_error_handler._entry_ptr, ptr @t1_sge_intr_error_handler._entry_ptr.11, ptr @t1_sge_intr_error_handler._entry_ptr.14, ptr @t1_sge_tx._entry, ptr @t1_sge_tx._entry_ptr, ptr @unexpected_offload._entry, ptr @unexpected_offload._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @t1_sge_create.__key, ptr @.str.20, ptr @t1_sge_create.__key.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @alloc_tx_resources.__key, ptr @.str.40, ptr @ch_mac_addr, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @skb_queue_head_init.__key, ptr @.str.47], section "llvm.metadata"
@0 = internal global [54 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 102, i32 160, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t1_sge_intr_error_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t1_sge_intr_error_handler._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t1_sge_intr_error_handler._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t1_interrupt_thread._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t1_sge_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t1_sge_create.__key.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @unexpected_offload._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t1_sge_tx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_tx_resources.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ch_mac_addr to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @t1_sched_update_parms(ptr nocapture noundef readonly %sge, i32 noundef %port, i32 noundef %mtu, i32 noundef %speed) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_sched = getelementptr inbounds %struct.sge, ptr %sge, i32 0, i32 16
  %0 = ptrtoint ptr %tx_sched to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx_sched, align 16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @t1_sched_update_parms.__UNIQUE_ID_ddebug486, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@t1_sched_update_parms, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !111

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @t1_sched_update_parms.__UNIQUE_ID_ddebug486, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef %mtu, i32 noundef %speed) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %speed)
  %tobool4.not = icmp eq i32 %speed, 0
  br i1 %tobool4.not, label %if.end7, label %if.end7.thread

if.end7:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mtu)
  %tobool8.not = icmp eq i32 %mtu, 0
  br i1 %tobool8.not, label %if.end7.if.end224_crit_edge, label %if.end7.if.end11.thread_crit_edge

if.end7.if.end11.thread_crit_edge:                ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end11.thread

if.end7.if.end224_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end224

if.end7.thread:                                   ; preds = %do.end
  %speed6 = getelementptr %struct.sched, ptr %1, i32 0, i32 4, i32 %port, i32 2
  %2 = ptrtoint ptr %speed6 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %speed, ptr %speed6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mtu)
  %tobool8.not438 = icmp eq i32 %mtu, 0
  br i1 %tobool8.not438, label %if.end7.thread.if.then14_crit_edge, label %if.end7.thread.if.end11.thread_crit_edge

if.end7.thread.if.end11.thread_crit_edge:         ; preds = %if.end7.thread
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end11.thread

if.end7.thread.if.then14_crit_edge:               ; preds = %if.end7.thread
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then14

if.end11.thread:                                  ; preds = %if.end7.thread.if.end11.thread_crit_edge, %if.end7.if.end11.thread_crit_edge
  %mtu10 = getelementptr %struct.sched, ptr %1, i32 0, i32 4, i32 %port, i32 3
  %3 = ptrtoint ptr %mtu10 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %mtu, ptr %mtu10, align 4
  br label %if.then14

if.then14:                                        ; preds = %if.end11.thread, %if.end7.thread.if.then14_crit_edge
  %speed15 = getelementptr %struct.sched, ptr %1, i32 0, i32 4, i32 %port, i32 2
  %4 = ptrtoint ptr %speed15 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %speed15, align 4
  %conv = zext i32 %5 to i64
  %mul = shl nuw nsw i64 %conv, 10
  %mtu16 = getelementptr %struct.sched, ptr %1, i32 0, i32 4, i32 %port, i32 3
  %6 = ptrtoint ptr %mtu16 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mtu16, align 4
  %sub = add i32 %7, -40
  %conv17 = zext i32 %sub to i64
  %mul18 = mul i64 %mul, %conv17
  %8 = mul i32 %7, 1000
  %mul20 = add i32 %8, 50000
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul18)
  %cmp194 = icmp ult i64 %mul18, 4294967296
  br i1 %cmp194, label %if.then202, label %if.else208, !prof !112

if.then202:                                       ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #15
  %conv203 = trunc i64 %mul18 to i32
  %div206 = udiv i32 %conv203, %mul20
  br label %if.end212

if.else208:                                       ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #15
  %9 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul20, i64 %mul18) #16, !srcloc !113
  %asmresult1.i = extractvalue { i64, i64 } %9, 1
  %extract.t435 = trunc i64 %asmresult1.i to i32
  br label %if.end212

if.end212:                                        ; preds = %if.else208, %if.then202
  %drain.0.off0 = phi i32 [ %div206, %if.then202 ], [ %extract.t435, %if.else208 ]
  %drain_bits_per_1024ns = getelementptr %struct.sched, ptr %1, i32 0, i32 4, i32 %port, i32 1
  %10 = ptrtoint ptr %drain_bits_per_1024ns to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %drain.0.off0, ptr %drain_bits_per_1024ns, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %5)
  %cmp216 = icmp ult i32 %5, 1000
  br i1 %cmp216, label %if.then218, label %if.end212.if.end224_crit_edge

if.end212.if.end224_crit_edge:                    ; preds = %if.end212
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end224

if.then218:                                       ; preds = %if.end212
  call void @__sanitizer_cov_trace_pc() #15
  %mul220 = mul i32 %drain.0.off0, 90
  %div221 = udiv i32 %mul220, 100
  %11 = ptrtoint ptr %drain_bits_per_1024ns to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %div221, ptr %drain_bits_per_1024ns, align 4
  br label %if.end224

if.end224:                                        ; preds = %if.then218, %if.end212.if.end224_crit_edge, %if.end7.if.end224_crit_edge
  %12 = ptrtoint ptr %sge to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sge, align 128
  %brd_info = getelementptr inbounds %struct.adapter, ptr %13, i32 0, i32 8, i32 4
  %14 = ptrtoint ptr %brd_info to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %brd_info, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %15, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %17)
  %cmp226 = icmp eq i8 %17, 7
  br i1 %cmp226, label %if.then228, label %if.else252

if.then228:                                       ; preds = %if.end224
  %drain_bits_per_1024ns229 = getelementptr %struct.sched, ptr %1, i32 0, i32 4, i32 %port, i32 1
  %18 = ptrtoint ptr %drain_bits_per_1024ns229 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %drain_bits_per_1024ns229, align 4
  %sub230 = add i32 %19, -16
  store i32 %sub230, ptr %drain_bits_per_1024ns229, align 4
  %mtu231 = getelementptr %struct.sched, ptr %1, i32 0, i32 4, i32 %port, i32 3
  %20 = ptrtoint ptr %mtu231 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mtu231, align 4
  %add234 = add i32 %21, 34
  %22 = tail call i32 @llvm.umax.i32(i32 %add234, i32 4096)
  %max_avail = getelementptr inbounds %struct.sched, ptr %1, i32 0, i32 1
  %23 = ptrtoint ptr %max_avail to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %max_avail, align 8
  %24 = ptrtoint ptr %mtu231 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %mtu231, align 4
  %sub243 = add i32 %25, -40
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %sub243)
  %cmp246 = icmp ugt i32 %sub243, 4096
  br i1 %cmp246, label %if.then228.do.body265_crit_edge, label %if.then228.do.body265.sink.split_crit_edge

if.then228.do.body265.sink.split_crit_edge:       ; preds = %if.then228
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body265.sink.split

if.then228.do.body265_crit_edge:                  ; preds = %if.then228
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body265

if.else252:                                       ; preds = %if.end224
  %max_avail253 = getelementptr inbounds %struct.sched, ptr %1, i32 0, i32 1
  %26 = ptrtoint ptr %max_avail253 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 16384, ptr %max_avail253, align 8
  %mtu254 = getelementptr %struct.sched, ptr %1, i32 0, i32 4, i32 %port, i32 3
  %27 = ptrtoint ptr %mtu254 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %mtu254, align 4
  %sub255 = add i32 %28, -40
  call void @__sanitizer_cov_trace_const_cmp4(i32 9000, i32 %sub255)
  %cmp258 = icmp ugt i32 %sub255, 9000
  br i1 %cmp258, label %if.else252.do.body265_crit_edge, label %if.else252.do.body265.sink.split_crit_edge

if.else252.do.body265.sink.split_crit_edge:       ; preds = %if.else252
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body265.sink.split

if.else252.do.body265_crit_edge:                  ; preds = %if.else252
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body265

do.body265.sink.split:                            ; preds = %if.else252.do.body265.sink.split_crit_edge, %if.then228.do.body265.sink.split_crit_edge
  %sub255.sink = phi i32 [ %sub243, %if.then228.do.body265.sink.split_crit_edge ], [ %sub255, %if.else252.do.body265.sink.split_crit_edge ]
  %.sink = phi i16 [ 4096, %if.then228.do.body265.sink.split_crit_edge ], [ 9000, %if.else252.do.body265.sink.split_crit_edge ]
  %div256.rhs.trunc = trunc i32 %sub255.sink to i16
  %div256433 = udiv i16 %.sink, %div256.rhs.trunc
  %phi.cast = zext i16 %div256433 to i32
  br label %do.body265

do.body265:                                       ; preds = %do.body265.sink.split, %if.else252.do.body265_crit_edge, %if.then228.do.body265_crit_edge
  %max_avail_segs.0.shrunk = phi i32 [ 1, %if.then228.do.body265_crit_edge ], [ 1, %if.else252.do.body265_crit_edge ], [ %phi.cast, %do.body265.sink.split ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @t1_sched_update_parms.__UNIQUE_ID_ddebug493, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@t1_sched_update_parms, %if.then277)) #13
          to label %do.end284 [label %if.then277], !srcloc !111

if.then277:                                       ; preds = %do.body265
  call void @__sanitizer_cov_trace_pc() #15
  %mtu278 = getelementptr %struct.sched, ptr %1, i32 0, i32 4, i32 %port, i32 3
  %29 = ptrtoint ptr %mtu278 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %mtu278, align 4
  %speed279 = getelementptr %struct.sched, ptr %1, i32 0, i32 4, i32 %port, i32 2
  %31 = ptrtoint ptr %speed279 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %speed279, align 4
  %max_avail280 = getelementptr inbounds %struct.sched, ptr %1, i32 0, i32 1
  %33 = ptrtoint ptr %max_avail280 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %max_avail280, align 8
  %drain_bits_per_1024ns281 = getelementptr %struct.sched, ptr %1, i32 0, i32 4, i32 %port, i32 1
  %35 = ptrtoint ptr %drain_bits_per_1024ns281 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %drain_bits_per_1024ns281, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @t1_sched_update_parms.__UNIQUE_ID_ddebug493, ptr noundef nonnull @.str.6, i32 noundef %30, i32 noundef %32, i32 noundef %34, i32 noundef %max_avail_segs.0.shrunk, i32 noundef %36) #13
  br label %do.end284

do.end284:                                        ; preds = %if.then277, %do.body265
  %mtu285 = getelementptr %struct.sched, ptr %1, i32 0, i32 4, i32 %port, i32 3
  %37 = ptrtoint ptr %mtu285 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %mtu285, align 4
  %sub286 = add i32 %38, -40
  %mul287 = mul i32 %sub286, %max_avail_segs.0.shrunk
  ret i32 %mul287
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @t1_vlan_mode(ptr nocapture noundef readonly %adapter, i64 noundef %features) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %sge1 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 9
  %0 = ptrtoint ptr %sge1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sge1, align 8
  %sge_control2 = getelementptr inbounds %struct.sge, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %sge_control2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sge_control2, align 4
  %and3 = and i32 %3, -262145
  %4 = trunc i64 %features to i32
  %5 = shl i32 %4, 10
  %6 = and i32 %5, 262144
  %and3.sink = or i32 %and3, %6
  store i32 %and3.sink, ptr %sge_control2, align 4
  %open_device_map = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 3
  %7 = ptrtoint ptr %open_device_map to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %open_device_map, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool4.not = icmp eq i32 %8, 0
  br i1 %tobool4.not, label %entry.if.end10_crit_edge, label %do.body

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !114
  tail call void @arm_heavy_mb() #13
  %sge_control6 = getelementptr inbounds %struct.sge, ptr %1, i32 0, i32 13
  %9 = ptrtoint ptr %sge_control6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sge_control6, align 4
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %12 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %adapter, align 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %11) #13, !srcloc !115
  %14 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %adapter, align 128
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #13, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !117
  br label %if.end10

if.end10:                                         ; preds = %do.body, %entry.if.end10_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @t1_sge_destroy(ptr noundef %sge) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sge to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sge, align 128
  %nports8 = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 8, i32 6
  %2 = ptrtoint ptr %nports8 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nports8, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp9.not = icmp eq i32 %3, 0
  br i1 %cmp9.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.010 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.sge, ptr %sge, i32 0, i32 15, i32 %i.010
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  tail call void @free_percpu(ptr noundef %5) #13
  %inc = add nuw i32 %i.010, 1
  %6 = ptrtoint ptr %sge to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sge, align 128
  %nports = getelementptr inbounds %struct.adapter, ptr %7, i32 0, i32 8, i32 6
  %8 = ptrtoint ptr %nports to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nports, align 8
  %cmp = icmp ult i32 %inc, %9
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %tx_sched = getelementptr inbounds %struct.sge, ptr %sge, i32 0, i32 16
  %10 = ptrtoint ptr %tx_sched to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tx_sched, align 16
  tail call void @kfree(ptr noundef %11) #13
  tail call fastcc void @free_tx_resources(ptr noundef %sge)
  tail call fastcc void @free_rx_resources(ptr noundef %sge)
  tail call void @kfree(ptr noundef %sge) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @free_tx_resources(ptr nocapture noundef %sge) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sge to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sge, align 128
  %pdev1 = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev1, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  br label %for.body

for.body:                                         ; preds = %if.end11.for.body_crit_edge, %entry
  %i.025 = phi i32 [ 0, %entry ], [ %inc, %if.end11.for.body_crit_edge ]
  %centries = getelementptr %struct.sge, ptr %sge, i32 0, i32 18, i32 %i.025, i32 11
  %4 = ptrtoint ptr %centries to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %centries, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %for.body.if.end6_crit_edge, label %if.then

for.body.if.end6_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6

if.then:                                          ; preds = %for.body
  %in_use = getelementptr %struct.sge, ptr %sge, i32 0, i32 18, i32 %i.025, i32 1
  %6 = ptrtoint ptr %in_use to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %in_use, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool2.not = icmp eq i32 %7, 0
  br i1 %tobool2.not, label %if.then.if.end_crit_edge, label %while.body.lr.ph.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

while.body.lr.ph.i:                               ; preds = %if.then
  %8 = ptrtoint ptr %sge to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sge, align 128
  %pdev1.i = getelementptr inbounds %struct.adapter, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %pdev1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev1.i, align 4
  %cidx2.i = getelementptr %struct.sge, ptr %sge, i32 0, i32 18, i32 %i.025, i32 7
  %12 = ptrtoint ptr %cidx2.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %cidx2.i, align 2
  %conv.i = zext i16 %13 to i32
  %14 = ptrtoint ptr %in_use to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %in_use, align 4
  %sub.i = sub i32 %15, %7
  store i32 %sub.i, ptr %in_use, align 4
  %16 = ptrtoint ptr %centries to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %centries, align 4
  %arrayidx.i = getelementptr %struct.cmdQ_ce, ptr %17, i32 %conv.i
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  %sop.i = getelementptr %struct.sge, ptr %sge, i32 0, i32 18, i32 %i.025, i32 9
  %size.i = getelementptr %struct.sge, ptr %sge, i32 0, i32 18, i32 %i.025, i32 2
  br label %while.body.i

while.body.i:                                     ; preds = %if.end19.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %dec43.in.i = phi i32 [ %7, %while.body.lr.ph.i ], [ %dec43.i, %if.end19.i.while.body.i_crit_edge ]
  %cidx.042.i = phi i32 [ %conv.i, %while.body.lr.ph.i ], [ %cidx.1.i, %if.end19.i.while.body.i_crit_edge ]
  %ce.041.i = phi ptr [ %arrayidx.i, %while.body.lr.ph.i ], [ %ce.1.i, %if.end19.i.while.body.i_crit_edge ]
  %dec43.i = add i32 %dec43.in.i, -1
  %dma_len.i = getelementptr inbounds %struct.cmdQ_ce, ptr %ce.041.i, i32 0, i32 2
  %18 = ptrtoint ptr %dma_len.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dma_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool3.not.i = icmp eq i32 %19, 0
  br i1 %tobool3.not.i, label %while.body.i.if.end10.i_crit_edge, label %if.then.i, !prof !118

while.body.i.if.end10.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10.i

if.then.i:                                        ; preds = %while.body.i
  %dma_addr.i = getelementptr inbounds %struct.cmdQ_ce, ptr %ce.041.i, i32 0, i32 1
  %20 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dma_addr.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev.i, i32 noundef %21, i32 noundef %19, i32 noundef 1, i32 noundef 0) #13
  %22 = ptrtoint ptr %sop.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %sop.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool7.not.i = icmp eq i8 %23, 0
  br i1 %tobool7.not.i, label %if.then.i.if.end10.i_crit_edge, label %if.then8.i

if.then.i.if.end10.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10.i

if.then8.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %24 = ptrtoint ptr %sop.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %sop.i, align 1
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then8.i, %if.then.i.if.end10.i_crit_edge, %while.body.i.if.end10.i_crit_edge
  %25 = ptrtoint ptr %ce.041.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ce.041.i, align 4
  %tobool11.not.i = icmp eq ptr %26, null
  br i1 %tobool11.not.i, label %if.end10.i.if.end15.i_crit_edge, label %if.then12.i

if.end10.i.if.end15.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.i

if.then12.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %26, i32 noundef 1) #13
  %27 = ptrtoint ptr %sop.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %sop.i, align 1
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then12.i, %if.end10.i.if.end15.i_crit_edge
  %incdec.ptr.i = getelementptr %struct.cmdQ_ce, ptr %ce.041.i, i32 1
  %inc.i = add i32 %cidx.042.i, 1
  %28 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %29)
  %cmp.i = icmp eq i32 %inc.i, %29
  br i1 %cmp.i, label %if.then17.i, label %if.end15.i.if.end19.i_crit_edge

if.end15.i.if.end19.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end19.i

if.then17.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #15
  %30 = ptrtoint ptr %centries to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %centries, align 4
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.then17.i, %if.end15.i.if.end19.i_crit_edge
  %ce.1.i = phi ptr [ %31, %if.then17.i ], [ %incdec.ptr.i, %if.end15.i.if.end19.i_crit_edge ]
  %cidx.1.i = phi i32 [ 0, %if.then17.i ], [ %inc.i, %if.end15.i.if.end19.i_crit_edge ]
  %tobool.not.i = icmp eq i32 %dec43.i, 0
  br i1 %tobool.not.i, label %free_cmdQ_buffers.exit, label %if.end19.i.while.body.i_crit_edge

if.end19.i.while.body.i_crit_edge:                ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i

free_cmdQ_buffers.exit:                           ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #15
  %conv20.i = trunc i32 %cidx.1.i to i16
  %32 = ptrtoint ptr %cidx2.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %conv20.i, ptr %cidx2.i, align 2
  br label %if.end

if.end:                                           ; preds = %free_cmdQ_buffers.exit, %if.then.if.end_crit_edge
  %33 = ptrtoint ptr %centries to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %centries, align 4
  tail call void @kfree(ptr noundef %34) #13
  br label %if.end6

if.end6:                                          ; preds = %if.end, %for.body.if.end6_crit_edge
  %entries = getelementptr %struct.sge, ptr %sge, i32 0, i32 18, i32 %i.025, i32 10
  %35 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %entries, align 4
  %tobool7.not = icmp eq ptr %36, null
  br i1 %tobool7.not, label %if.end6.if.end11_crit_edge, label %if.then8

if.end6.if.end11_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end11

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  %size9 = getelementptr %struct.sge, ptr %sge, i32 0, i32 18, i32 %i.025, i32 2
  %37 = ptrtoint ptr %size9 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %size9, align 4
  %mul = shl i32 %38, 4
  %dma_addr = getelementptr %struct.sge, ptr %sge, i32 0, i32 18, i32 %i.025, i32 12
  %39 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %dma_addr, align 4
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef %mul, ptr noundef nonnull %36, i32 noundef %40, i32 noundef 0) #13
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %if.end6.if.end11_crit_edge
  %inc = add nuw nsw i32 %i.025, 1
  %exitcond.not = icmp eq i32 %inc, 2
  br i1 %exitcond.not, label %for.end, label %if.end11.for.body_crit_edge

if.end11.for.body_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @free_rx_resources(ptr nocapture noundef %sge) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sge to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sge, align 128
  %pdev1 = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev1, align 4
  %entries = getelementptr inbounds %struct.sge, ptr %sge, i32 0, i32 3, i32 4
  %4 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %entries, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %size3 = getelementptr inbounds %struct.sge, ptr %sge, i32 0, i32 3, i32 1
  %6 = ptrtoint ptr %size3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %size3, align 4
  %mul = shl i32 %7, 3
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %dma_addr = getelementptr inbounds %struct.sge, ptr %sge, i32 0, i32 3, i32 5
  %8 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dma_addr, align 8
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef %mul, ptr noundef nonnull %5, i32 noundef %9, i32 noundef 0) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %centries = getelementptr %struct.sge, ptr %sge, i32 0, i32 2, i32 0, i32 9
  %10 = ptrtoint ptr %centries to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %centries, align 4
  %tobool7.not = icmp eq ptr %11, null
  br i1 %tobool7.not, label %if.end.if.end10_crit_edge, label %if.then8

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10

if.then8:                                         ; preds = %if.end
  %arrayidx = getelementptr %struct.sge, ptr %sge, i32 0, i32 2, i32 0
  %cidx1.i = getelementptr %struct.sge, ptr %sge, i32 0, i32 2, i32 0, i32 3
  %12 = ptrtoint ptr %cidx1.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %cidx1.i, align 2
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx, align 4
  %dec11.i = add i32 %15, -1
  store i32 %dec11.i, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not12.i = icmp eq i32 %15, 0
  br i1 %tobool.not12.i, label %if.then8.free_freelQ_buffers.exit_crit_edge, label %while.body.lr.ph.i

if.then8.free_freelQ_buffers.exit_crit_edge:      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #15
  br label %free_freelQ_buffers.exit

while.body.lr.ph.i:                               ; preds = %if.then8
  %conv.i = zext i16 %13 to i32
  %size.i = getelementptr %struct.sge, ptr %sge, i32 0, i32 2, i32 0, i32 1
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %cidx.013.i = phi i32 [ %conv.i, %while.body.lr.ph.i ], [ %spec.store.select.i, %while.body.i.while.body.i_crit_edge ]
  %16 = ptrtoint ptr %centries to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %centries, align 4
  %arrayidx.i = getelementptr %struct.freelQ_ce, ptr %17, i32 %cidx.013.i
  %dma_addr.i = getelementptr %struct.freelQ_ce, ptr %17, i32 %cidx.013.i, i32 1
  %18 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dma_addr.i, align 4
  %dma_len.i = getelementptr %struct.freelQ_ce, ptr %17, i32 %cidx.013.i, i32 2
  %20 = ptrtoint ptr %dma_len.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dma_len.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev.i, i32 noundef %19, i32 noundef %21, i32 noundef 2, i32 noundef 0) #13
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.i, align 4
  tail call void @consume_skb(ptr noundef %23) #13
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %arrayidx.i, align 4
  %inc.i = add i32 %cidx.013.i, 1
  %25 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %26)
  %cmp.i = icmp eq i32 %inc.i, %26
  %spec.store.select.i = select i1 %cmp.i, i32 0, i32 %inc.i
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx, align 4
  %dec.i = add i32 %28, -1
  store i32 %dec.i, ptr %arrayidx, align 4
  %tobool.not.i = icmp eq i32 %28, 0
  br i1 %tobool.not.i, label %while.body.i.free_freelQ_buffers.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i

while.body.i.free_freelQ_buffers.exit_crit_edge:  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %free_freelQ_buffers.exit

free_freelQ_buffers.exit:                         ; preds = %while.body.i.free_freelQ_buffers.exit_crit_edge, %if.then8.free_freelQ_buffers.exit_crit_edge
  %29 = ptrtoint ptr %centries to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %centries, align 4
  tail call void @kfree(ptr noundef %30) #13
  br label %if.end10

if.end10:                                         ; preds = %free_freelQ_buffers.exit, %if.end.if.end10_crit_edge
  %entries11 = getelementptr %struct.sge, ptr %sge, i32 0, i32 2, i32 0, i32 8
  %31 = ptrtoint ptr %entries11 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %entries11, align 4
  %tobool12.not = icmp eq ptr %32, null
  br i1 %tobool12.not, label %if.end10.if.end19_crit_edge, label %if.then13

if.end10.if.end19_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end19

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  %size14 = getelementptr %struct.sge, ptr %sge, i32 0, i32 2, i32 0, i32 1
  %33 = ptrtoint ptr %size14 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %size14, align 4
  %mul15 = shl i32 %34, 4
  %dma_addr18 = getelementptr %struct.sge, ptr %sge, i32 0, i32 2, i32 0, i32 10
  %35 = ptrtoint ptr %dma_addr18 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %dma_addr18, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.i, i32 noundef %mul15, ptr noundef nonnull %32, i32 noundef %36, i32 noundef 0) #13
  br label %if.end19

if.end19:                                         ; preds = %if.then13, %if.end10.if.end19_crit_edge
  %centries.1 = getelementptr %struct.sge, ptr %sge, i32 0, i32 2, i32 1, i32 9
  %37 = ptrtoint ptr %centries.1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %centries.1, align 4
  %tobool7.not.1 = icmp eq ptr %38, null
  br i1 %tobool7.not.1, label %if.end19.if.end10.1_crit_edge, label %if.then8.1

if.end19.if.end10.1_crit_edge:                    ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10.1

if.then8.1:                                       ; preds = %if.end19
  %arrayidx.1 = getelementptr %struct.sge, ptr %sge, i32 0, i32 2, i32 1
  %cidx1.i.1 = getelementptr %struct.sge, ptr %sge, i32 0, i32 2, i32 1, i32 3
  %39 = ptrtoint ptr %cidx1.i.1 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %cidx1.i.1, align 2
  %41 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx.1, align 4
  %dec11.i.1 = add i32 %42, -1
  store i32 %dec11.i.1, ptr %arrayidx.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool.not12.i.1 = icmp eq i32 %42, 0
  br i1 %tobool.not12.i.1, label %if.then8.1.free_freelQ_buffers.exit.1_crit_edge, label %while.body.lr.ph.i.1

if.then8.1.free_freelQ_buffers.exit.1_crit_edge:  ; preds = %if.then8.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %free_freelQ_buffers.exit.1

while.body.lr.ph.i.1:                             ; preds = %if.then8.1
  %conv.i.1 = zext i16 %40 to i32
  %size.i.1 = getelementptr %struct.sge, ptr %sge, i32 0, i32 2, i32 1, i32 1
  br label %while.body.i.1

while.body.i.1:                                   ; preds = %while.body.i.1.while.body.i.1_crit_edge, %while.body.lr.ph.i.1
  %cidx.013.i.1 = phi i32 [ %conv.i.1, %while.body.lr.ph.i.1 ], [ %spec.store.select.i.1, %while.body.i.1.while.body.i.1_crit_edge ]
  %43 = ptrtoint ptr %centries.1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %centries.1, align 4
  %arrayidx.i.1 = getelementptr %struct.freelQ_ce, ptr %44, i32 %cidx.013.i.1
  %dma_addr.i.1 = getelementptr %struct.freelQ_ce, ptr %44, i32 %cidx.013.i.1, i32 1
  %45 = ptrtoint ptr %dma_addr.i.1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %dma_addr.i.1, align 4
  %dma_len.i.1 = getelementptr %struct.freelQ_ce, ptr %44, i32 %cidx.013.i.1, i32 2
  %47 = ptrtoint ptr %dma_len.i.1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %dma_len.i.1, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev.i, i32 noundef %46, i32 noundef %48, i32 noundef 2, i32 noundef 0) #13
  %49 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx.i.1, align 4
  tail call void @consume_skb(ptr noundef %50) #13
  %51 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr null, ptr %arrayidx.i.1, align 4
  %inc.i.1 = add i32 %cidx.013.i.1, 1
  %52 = ptrtoint ptr %size.i.1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %size.i.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.1, i32 %53)
  %cmp.i.1 = icmp eq i32 %inc.i.1, %53
  %spec.store.select.i.1 = select i1 %cmp.i.1, i32 0, i32 %inc.i.1
  %54 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx.1, align 4
  %dec.i.1 = add i32 %55, -1
  store i32 %dec.i.1, ptr %arrayidx.1, align 4
  %tobool.not.i.1 = icmp eq i32 %55, 0
  br i1 %tobool.not.i.1, label %while.body.i.1.free_freelQ_buffers.exit.1_crit_edge, label %while.body.i.1.while.body.i.1_crit_edge

while.body.i.1.while.body.i.1_crit_edge:          ; preds = %while.body.i.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i.1

while.body.i.1.free_freelQ_buffers.exit.1_crit_edge: ; preds = %while.body.i.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %free_freelQ_buffers.exit.1

free_freelQ_buffers.exit.1:                       ; preds = %while.body.i.1.free_freelQ_buffers.exit.1_crit_edge, %if.then8.1.free_freelQ_buffers.exit.1_crit_edge
  %56 = ptrtoint ptr %centries.1 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %centries.1, align 4
  tail call void @kfree(ptr noundef %57) #13
  br label %if.end10.1

if.end10.1:                                       ; preds = %free_freelQ_buffers.exit.1, %if.end19.if.end10.1_crit_edge
  %entries11.1 = getelementptr %struct.sge, ptr %sge, i32 0, i32 2, i32 1, i32 8
  %58 = ptrtoint ptr %entries11.1 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %entries11.1, align 4
  %tobool12.not.1 = icmp eq ptr %59, null
  br i1 %tobool12.not.1, label %if.end10.1.if.end19.1_crit_edge, label %if.then13.1

if.end10.1.if.end19.1_crit_edge:                  ; preds = %if.end10.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end19.1

if.then13.1:                                      ; preds = %if.end10.1
  call void @__sanitizer_cov_trace_pc() #15
  %size14.1 = getelementptr %struct.sge, ptr %sge, i32 0, i32 2, i32 1, i32 1
  %60 = ptrtoint ptr %size14.1 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %size14.1, align 4
  %mul15.1 = shl i32 %61, 4
  %dma_addr18.1 = getelementptr %struct.sge, ptr %sge, i32 0, i32 2, i32 1, i32 10
  %62 = ptrtoint ptr %dma_addr18.1 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %dma_addr18.1, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.i, i32 noundef %mul15.1, ptr noundef nonnull %59, i32 noundef %63, i32 noundef 0) #13
  br label %if.end19.1

if.end19.1:                                       ; preds = %if.then13.1, %if.end10.1.if.end19.1_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @t1_sge_intr_disable(ptr nocapture noundef readonly %sge) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sge to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sge, align 128
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 128
  %add.ptr = getelementptr i8, ptr %3, i32 2560
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #13, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !120
  tail call void @arm_heavy_mb() #13
  %5 = and i32 %4, -50331649
  %6 = ptrtoint ptr %sge to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sge, align 128
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 128
  %add.ptr4 = getelementptr i8, ptr %9, i32 2560
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %5) #13, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !121
  tail call void @arm_heavy_mb() #13
  %10 = ptrtoint ptr %sge to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sge, align 128
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 128
  %add.ptr10 = getelementptr i8, ptr %13, i32 184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 0) #13, !srcloc !115
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @t1_sge_intr_enable(ptr nocapture noundef readonly %sge) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sge to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sge, align 128
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 128
  %add.ptr = getelementptr i8, ptr %3, i32 2560
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #13, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !122
  %5 = ptrtoint ptr %sge to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sge, align 128
  %port = getelementptr inbounds %struct.adapter, ptr %6, i32 0, i32 13
  %7 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %port, align 8
  %hw_features = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 24
  %9 = ptrtoint ptr %hw_features to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %hw_features, align 8
  %and = and i64 %10, 65536
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  %spec.select = select i1 %tobool.not, i32 520093696, i32 385875968
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !123
  tail call void @arm_heavy_mb() #13
  %11 = ptrtoint ptr %sge to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sge, align 128
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 128
  %add.ptr6 = getelementptr i8, ptr %14, i32 184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 %spec.select) #13, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !124
  tail call void @arm_heavy_mb() #13
  %15 = or i32 %4, 50331648
  %16 = ptrtoint ptr %sge to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sge, align 128
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 128
  %add.ptr12 = getelementptr i8, ptr %19, i32 2560
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 %15) #13, !srcloc !115
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @t1_sge_intr_clear(ptr nocapture noundef readonly %sge) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !125
  tail call void @arm_heavy_mb() #13
  %0 = ptrtoint ptr %sge to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sge, align 128
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 128
  %add.ptr = getelementptr i8, ptr %3, i32 2564
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 50331648) #13, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !126
  tail call void @arm_heavy_mb() #13
  %4 = ptrtoint ptr %sge to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sge, align 128
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 128
  %add.ptr5 = getelementptr i8, ptr %7, i32 188
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 -1) #13, !srcloc !115
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @t1_sge_intr_error_handler(ptr nocapture noundef %sge) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sge to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sge, align 128
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 128
  %add.ptr = getelementptr i8, ptr %3, i32 188
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #13, !srcloc !116
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !127
  %port = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 13
  %6 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %port, align 8
  %hw_features = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 24
  %8 = ptrtoint ptr %hw_features to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %hw_features, align 8
  %and = and i64 %9, 65536
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  %and3 = and i32 %5, -9
  %spec.select = select i1 %tobool.not, i32 %5, i32 %and3
  %and4 = and i32 %spec.select, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %entry.if.end7_crit_edge, label %if.then6

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7

if.then6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %respQ_empty = getelementptr inbounds %struct.sge, ptr %sge, i32 0, i32 14, i32 3
  %10 = ptrtoint ptr %respQ_empty to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %respQ_empty, align 4
  %inc = add i32 %11, 1
  store i32 %inc, ptr %respQ_empty, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %entry.if.end7_crit_edge
  %and8 = and i32 %spec.select, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.end7.if.end15_crit_edge, label %if.then10

if.end7.if.end15_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  %respQ_overflow = getelementptr inbounds %struct.sge, ptr %sge, i32 0, i32 14, i32 4
  %12 = ptrtoint ptr %respQ_overflow to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %respQ_overflow, align 8
  %inc12 = add i32 %13, 1
  store i32 %inc12, ptr %respQ_overflow, align 8
  %name = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 5
  %14 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %name, align 4
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %15) #17
  br label %if.end15

if.end15:                                         ; preds = %if.then10, %if.end7.if.end15_crit_edge
  %and16 = and i32 %spec.select, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.end15.if.end21_crit_edge, label %if.then18

if.end15.if.end21_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  %freelistQ_empty = getelementptr inbounds %struct.sge, ptr %sge, i32 0, i32 14, i32 5
  %16 = ptrtoint ptr %freelistQ_empty to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %freelistQ_empty, align 4
  %inc20 = add i32 %17, 1
  store i32 %inc20, ptr %freelistQ_empty, align 4
  tail call fastcc void @freelQs_empty(ptr noundef %sge)
  br label %if.end21

if.end21:                                         ; preds = %if.then18, %if.end15.if.end21_crit_edge
  %and22 = and i32 %spec.select, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.end21.if.end33_crit_edge, label %if.then24

if.end21.if.end33_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end33

if.then24:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #15
  %pkt_too_big = getelementptr inbounds %struct.sge, ptr %sge, i32 0, i32 14, i32 6
  %18 = ptrtoint ptr %pkt_too_big to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pkt_too_big, align 8
  %inc26 = add i32 %19, 1
  store i32 %inc26, ptr %pkt_too_big, align 8
  %name31 = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 5
  %20 = ptrtoint ptr %name31 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %name31, align 4
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %21) #17
  br label %if.end33

if.end33:                                         ; preds = %if.then24, %if.end21.if.end33_crit_edge
  %and34 = and i32 %spec.select, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %if.end33.if.end45_crit_edge, label %if.then36

if.end33.if.end45_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end45

if.then36:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #15
  %pkt_mismatch = getelementptr inbounds %struct.sge, ptr %sge, i32 0, i32 14, i32 7
  %22 = ptrtoint ptr %pkt_mismatch to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pkt_mismatch, align 4
  %inc38 = add i32 %23, 1
  store i32 %inc38, ptr %pkt_mismatch, align 4
  %name43 = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 5
  %24 = ptrtoint ptr %name43 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %name43, align 4
  %call44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %25) #17
  br label %if.end45

if.end45:                                         ; preds = %if.then36, %if.end33.if.end45_crit_edge
  %and46 = and i32 %spec.select, 26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  br i1 %tobool47.not, label %if.end45.do.body50_crit_edge, label %if.then48

if.end45.do.body50_crit_edge:                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body50

if.then48:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @t1_interrupts_disable(ptr noundef %1) #13
  %pending_thread_intr = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 21
  %26 = ptrtoint ptr %pending_thread_intr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pending_thread_intr, align 4
  %or = or i32 %27, 1
  store i32 %or, ptr %pending_thread_intr, align 4
  br label %do.body50

do.body50:                                        ; preds = %if.then48, %if.end45.do.body50_crit_edge
  %28 = xor i1 %tobool47.not, true
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !128
  tail call void @arm_heavy_mb() #13
  %29 = tail call i32 @llvm.bswap.i32(i32 %spec.select)
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 128
  %add.ptr54 = getelementptr i8, ptr %31, i32 188
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr54, i32 %29) #13, !srcloc !115
  ret i1 %28
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @freelQs_empty(ptr nocapture noundef %sge) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sge to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sge, align 128
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 128
  %add.ptr = getelementptr i8, ptr %3, i32 184
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #13, !srcloc !116
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !129
  %freelQ = getelementptr inbounds %struct.sge, ptr %sge, i32 0, i32 2
  tail call fastcc void @refill_free_list(ptr noundef %sge, ptr noundef %freelQ)
  %arrayidx4 = getelementptr %struct.sge, ptr %sge, i32 0, i32 2, i32 1
  tail call fastcc void @refill_free_list(ptr noundef %sge, ptr noundef %arrayidx4)
  %6 = ptrtoint ptr %freelQ to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %freelQ, align 8
  %size = getelementptr inbounds %struct.sge, ptr %sge, i32 0, i32 2, i32 0, i32 1
  %8 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %size, align 4
  %shr = lshr i32 %9, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %shr)
  %cmp = icmp ugt i32 %7, %shr
  br i1 %cmp, label %land.lhs.true, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %10 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx4, align 8
  %size14 = getelementptr %struct.sge, ptr %sge, i32 0, i32 2, i32 1, i32 1
  %12 = ptrtoint ptr %size14 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %size14, align 4
  %shr15 = lshr i32 %13, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %shr15)
  %cmp16 = icmp ugt i32 %11, %shr15
  br i1 %cmp16, label %if.then, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %or = or i32 %5, 4
  %fixed_intrtimer = getelementptr inbounds %struct.sge, ptr %sge, i32 0, i32 8
  br label %do.body

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %and = and i32 %5, -5
  %intrtimer_nres = getelementptr inbounds %struct.sge, ptr %sge, i32 0, i32 7
  br label %do.body

do.body:                                          ; preds = %if.else, %if.then
  %irq_reg.0 = phi i32 [ %or, %if.then ], [ %and, %if.else ]
  %irqholdoff_reg.0.in = phi ptr [ %fixed_intrtimer, %if.then ], [ %intrtimer_nres, %if.else ]
  %14 = ptrtoint ptr %irqholdoff_reg.0.in to i32
  call void @__asan_load4_noabort(i32 %14)
  %irqholdoff_reg.0 = load i32, ptr %irqholdoff_reg.0.in, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !130
  tail call void @arm_heavy_mb() #13
  %15 = tail call i32 @llvm.bswap.i32(i32 %irqholdoff_reg.0)
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 128
  %add.ptr18 = getelementptr i8, ptr %17, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 %15) #13, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !131
  tail call void @arm_heavy_mb() #13
  %18 = tail call i32 @llvm.bswap.i32(i32 %irq_reg.0)
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 128
  %add.ptr23 = getelementptr i8, ptr %20, i32 184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23, i32 %18) #13, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !132
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !133
  tail call void @arm_heavy_mb() #13
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 128
  %add.ptr.i = getelementptr i8, ptr %22, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 201326592) #13, !srcloc !115
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @t1_interrupts_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @t1_sge_get_intr_counts(ptr noundef readnone %sge) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %stats = getelementptr inbounds %struct.sge, ptr %sge, i32 0, i32 14
  ret ptr %stats
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @t1_sge_get_port_stats(ptr nocapture noundef readonly %sge, i32 noundef %port, ptr nocapture noundef %ss) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %ss, i32 0, i32 48)
  %call28 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %1 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call28, i32 %1)
  %cmp29 = icmp ult i32 %call28, %1
  br i1 %cmp29, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %arrayidx = getelementptr %struct.sge, ptr %sge, i32 0, i32 15, i32 %port
  %tx_cso5 = getelementptr inbounds %struct.sge_port_stats, ptr %ss, i32 0, i32 1
  %tx_tso7 = getelementptr inbounds %struct.sge_port_stats, ptr %ss, i32 0, i32 2
  %tx_need_hdrroom9 = getelementptr inbounds %struct.sge_port_stats, ptr %ss, i32 0, i32 5
  %vlan_xtract11 = getelementptr inbounds %struct.sge_port_stats, ptr %ss, i32 0, i32 3
  %vlan_insert13 = getelementptr inbounds %struct.sge_port_stats, ptr %ss, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %call30 = phi i32 [ %call28, %for.body.lr.ph ], [ %call, %for.body.for.body_crit_edge ]
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %4 = ptrtoint ptr %3 to i32
  %arrayidx2 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call30
  %5 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx2, align 4
  %add = add i32 %6, %4
  %7 = inttoptr i32 %add to ptr
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %7, align 8
  %10 = ptrtoint ptr %ss to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %ss, align 8
  %add4 = add i64 %11, %9
  store i64 %add4, ptr %ss, align 8
  %tx_cso = getelementptr inbounds %struct.sge_port_stats, ptr %7, i32 0, i32 1
  %12 = ptrtoint ptr %tx_cso to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %tx_cso, align 8
  %14 = ptrtoint ptr %tx_cso5 to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %tx_cso5, align 8
  %add6 = add i64 %15, %13
  store i64 %add6, ptr %tx_cso5, align 8
  %tx_tso = getelementptr inbounds %struct.sge_port_stats, ptr %7, i32 0, i32 2
  %16 = ptrtoint ptr %tx_tso to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %tx_tso, align 8
  %18 = ptrtoint ptr %tx_tso7 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %tx_tso7, align 8
  %add8 = add i64 %19, %17
  store i64 %add8, ptr %tx_tso7, align 8
  %tx_need_hdrroom = getelementptr inbounds %struct.sge_port_stats, ptr %7, i32 0, i32 5
  %20 = ptrtoint ptr %tx_need_hdrroom to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %tx_need_hdrroom, align 8
  %22 = ptrtoint ptr %tx_need_hdrroom9 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %tx_need_hdrroom9, align 8
  %add10 = add i64 %23, %21
  store i64 %add10, ptr %tx_need_hdrroom9, align 8
  %vlan_xtract = getelementptr inbounds %struct.sge_port_stats, ptr %7, i32 0, i32 3
  %24 = ptrtoint ptr %vlan_xtract to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %vlan_xtract, align 8
  %26 = ptrtoint ptr %vlan_xtract11 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %vlan_xtract11, align 8
  %add12 = add i64 %27, %25
  store i64 %add12, ptr %vlan_xtract11, align 8
  %vlan_insert = getelementptr inbounds %struct.sge_port_stats, ptr %7, i32 0, i32 4
  %28 = ptrtoint ptr %vlan_insert to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %vlan_insert, align 8
  %30 = ptrtoint ptr %vlan_insert13 to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %vlan_insert13, align 8
  %add14 = add i64 %31, %29
  store i64 %add14, ptr %vlan_insert13, align 8
  %call = tail call i32 @cpumask_next(i32 noundef %call30, ptr noundef nonnull @__cpu_possible_mask) #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %32 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call, %32
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @t1_poll(ptr noundef %napi, i32 noundef %budget) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %napi, i32 -184
  %sge1.i = getelementptr i8, ptr %napi, i32 -16
  %0 = ptrtoint ptr %sge1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sge1.i, align 8
  %respQ.i = getelementptr inbounds %struct.sge, ptr %1, i32 0, i32 3
  %entries.i = getelementptr inbounds %struct.sge, ptr %1, i32 0, i32 3, i32 4
  %cidx.i = getelementptr inbounds %struct.sge, ptr %1, i32 0, i32 3, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %budget)
  %cmp213.i = icmp sgt i32 %budget, 0
  br i1 %cmp213.i, label %land.rhs.lr.ph.i, label %entry.process_responses.exit_crit_edge

entry.process_responses.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %process_responses.exit

land.rhs.lr.ph.i:                                 ; preds = %entry
  %2 = ptrtoint ptr %entries.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %entries.i, align 4
  %4 = ptrtoint ptr %cidx.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %cidx.i, align 4
  %idxprom.i = zext i16 %5 to i32
  %arrayidx.i = getelementptr %struct.respQ_e, ptr %3, i32 %idxprom.i
  %genbit.i = getelementptr inbounds %struct.sge, ptr %1, i32 0, i32 3, i32 3
  %processed.i = getelementptr %struct.sge, ptr %1, i32 0, i32 18, i32 1, i32 3
  %rx_pkt_pad.i.i = getelementptr inbounds %struct.sge, ptr %1, i32 0, i32 5
  %stats.i.i = getelementptr inbounds %struct.sge, ptr %1, i32 0, i32 14
  %pure_rsps.i = getelementptr inbounds %struct.sge, ptr %1, i32 0, i32 14, i32 1
  %size117.i = getelementptr inbounds %struct.sge, ptr %1, i32 0, i32 3, i32 1
  %pdev.i = getelementptr i8, ptr %napi, i32 -180
  %name.i = getelementptr i8, ptr %napi, i32 -164
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %if.end143.i.land.rhs.i_crit_edge, %land.rhs.lr.ph.i
  %cmdq_processed.sroa.9.0220.i = phi i32 [ 0, %land.rhs.lr.ph.i ], [ %cmdq_processed.sroa.9.1.i, %if.end143.i.land.rhs.i_crit_edge ]
  %cmdq_processed.sroa.0.0219.i = phi i32 [ 0, %land.rhs.lr.ph.i ], [ %cmdq_processed.sroa.0.1.i, %if.end143.i.land.rhs.i_crit_edge ]
  %flags.0218.i = phi i32 [ 0, %land.rhs.lr.ph.i ], [ %flags.1.i, %if.end143.i.land.rhs.i_crit_edge ]
  %done.0217.i = phi i32 [ 0, %land.rhs.lr.ph.i ], [ %done.1.i, %if.end143.i.land.rhs.i_crit_edge ]
  %e.0214.i = phi ptr [ %arrayidx.i, %land.rhs.lr.ph.i ], [ %e.1.i, %if.end143.i.land.rhs.i_crit_edge ]
  %6 = ptrtoint ptr %e.0214.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %bf.load.i = load i32, ptr %e.0214.i, align 4
  %bf.clear.i = and i32 %bf.load.i, 1
  %7 = ptrtoint ptr %genbit.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %genbit.i, align 2
  %conv.i = zext i8 %8 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.clear.i, i32 %conv.i)
  %cmp2.i = icmp eq i32 %bf.clear.i, %conv.i
  br i1 %cmp2.i, label %while.body.i, label %land.rhs.i.process_responses.exit_crit_edge

land.rhs.i.process_responses.exit_crit_edge:      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %process_responses.exit

while.body.i:                                     ; preds = %land.rhs.i
  %bf.lshr.i = lshr i32 %bf.load.i, 28
  %or.i = or i32 %bf.lshr.i, %flags.0218.i
  %bf.lshr6.i = lshr i32 %bf.load.i, 13
  %bf.clear7.i = and i32 %bf.lshr6.i, 31
  %add.i = add i32 %bf.clear7.i, %cmdq_processed.sroa.0.0219.i
  %bf.lshr10.i = lshr i32 %bf.load.i, 23
  %bf.clear11.i = and i32 %bf.lshr10.i, 31
  %add13.i = add nuw nsw i32 %bf.clear11.i, %cmdq_processed.sroa.9.0220.i
  %and.i = and i32 %or.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp ne i32 %and.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %add.i)
  %cmp15.i = icmp ugt i32 %add.i, 64
  %spec.select.i = select i1 %tobool.not.i, i1 true, i1 %cmp15.i
  br i1 %spec.select.i, label %if.then.i, label %while.body.i.if.end.i_crit_edge, !prof !118

while.body.i.if.end.i_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i = tail call fastcc i32 @update_tx_info(ptr noundef %add.ptr, i32 noundef %or.i, i32 noundef %add.i) #13
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %while.body.i.if.end.i_crit_edge
  %flags.1.i = phi i32 [ %call.i, %if.then.i ], [ %or.i, %while.body.i.if.end.i_crit_edge ]
  %cmdq_processed.sroa.0.1.i = phi i32 [ 0, %if.then.i ], [ %add.i, %while.body.i.if.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %add13.i)
  %cmp22.i = icmp ugt i32 %add13.i, 16
  br i1 %cmp22.i, label %if.then30.i, label %if.end.i.if.end35.i_crit_edge, !prof !118

if.end.i.if.end35.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end35.i

if.then30.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %9 = ptrtoint ptr %processed.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %processed.i, align 4
  %add33.i = add i32 %10, %add13.i
  store i32 %add33.i, ptr %processed.i, align 4
  br label %if.end35.i

if.end35.i:                                       ; preds = %if.then30.i, %if.end.i.if.end35.i_crit_edge
  %cmdq_processed.sroa.9.1.i = phi i32 [ 0, %if.then30.i ], [ %add13.i, %if.end.i.if.end35.i_crit_edge ]
  %11 = ptrtoint ptr %e.0214.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %bf.load36.i = load i32, ptr %e.0214.i, align 4
  %12 = and i32 %bf.load36.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool39.not.i = icmp eq i32 %12, 0
  br i1 %tobool39.not.i, label %if.else111.i, label %if.then46.i, !prof !118

if.then46.i:                                      ; preds = %if.end35.i
  %bf.lshr48.i = lshr i32 %bf.load36.i, 6
  %bf.clear49.i = and i32 %bf.lshr48.i, 3
  %arrayidx50.i = getelementptr %struct.sge, ptr %1, i32 0, i32 2, i32 %bf.clear49.i
  %13 = and i32 %bf.load36.i, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %13)
  %.not.i = icmp eq i32 %13, 6
  br i1 %.not.i, label %do.end76.i, label %do.body70.i, !prof !112

do.body70.i:                                      ; preds = %if.then46.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/chelsio/cxgb/sge.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1510, 0\0A.popsection", ""() #13, !srcloc !134
  unreachable

do.end76.i:                                       ; preds = %if.then46.i
  %14 = and i32 %bf.load36.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool80.not.i = icmp eq i32 %14, 0
  br i1 %tobool80.not.i, label %if.else.i, label %if.then87.i, !prof !112

if.then87.i:                                      ; preds = %do.end76.i
  %centries.i10 = getelementptr %struct.sge, ptr %1, i32 0, i32 2, i32 %bf.clear49.i, i32 9
  %15 = ptrtoint ptr %centries.i10 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %centries.i10, align 4
  %cidx.i11 = getelementptr %struct.sge, ptr %1, i32 0, i32 2, i32 %bf.clear49.i, i32 3
  %17 = ptrtoint ptr %cidx.i11 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %cidx.i11, align 2
  %idxprom.i12 = zext i16 %18 to i32
  %arrayidx.i13 = getelementptr %struct.freelQ_ce, ptr %16, i32 %idxprom.i12
  %19 = ptrtoint ptr %arrayidx.i13 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.i13, align 4
  %21 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 44
  %dma_addr.i = getelementptr %struct.freelQ_ce, ptr %16, i32 %idxprom.i12, i32 1
  %23 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %dma_addr.i, align 4
  %dma_len.i = getelementptr %struct.freelQ_ce, ptr %16, i32 %idxprom.i12, i32 2
  %25 = ptrtoint ptr %dma_len.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %dma_len.i, align 4
  tail call void @dma_sync_single_for_cpu(ptr noundef %dev.i, i32 noundef %24, i32 noundef %26, i32 noundef 2) #13
  %27 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %name.i, align 4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %20, i32 0, i32 19
  %29 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %data.i, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %30, align 1
  %conv.i14 = zext i8 %32 to i32
  %call.i15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %28, i32 noundef %conv.i14) #17
  %33 = ptrtoint ptr %cidx.i11 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %cidx.i11, align 2
  %conv3.i = zext i16 %34 to i32
  %entries.i.i = getelementptr %struct.sge, ptr %1, i32 0, i32 2, i32 %bf.clear49.i, i32 8
  %35 = ptrtoint ptr %entries.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %entries.i.i, align 4
  %arrayidx.i.i16 = getelementptr %struct.freelQ_e, ptr %36, i32 %conv3.i
  %pidx.i.i = getelementptr %struct.sge, ptr %1, i32 0, i32 2, i32 %bf.clear49.i, i32 2
  %37 = ptrtoint ptr %pidx.i.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %pidx.i.i, align 4
  %idxprom.i.i17 = zext i16 %38 to i32
  %arrayidx2.i.i = getelementptr %struct.freelQ_e, ptr %36, i32 %idxprom.i.i17
  %39 = ptrtoint ptr %centries.i10 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %centries.i10, align 4
  %arrayidx5.i.i = getelementptr %struct.freelQ_ce, ptr %40, i32 %idxprom.i.i17
  %arrayidx7.i.i = getelementptr %struct.freelQ_ce, ptr %40, i32 %conv3.i
  %41 = call ptr @memcpy(ptr %arrayidx5.i.i, ptr %arrayidx7.i.i, i32 12)
  %42 = ptrtoint ptr %arrayidx.i.i16 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx.i.i16, align 4
  %44 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %arrayidx2.i.i, align 4
  %addr_hi.i.i = getelementptr %struct.freelQ_e, ptr %36, i32 %conv3.i, i32 3
  %45 = ptrtoint ptr %addr_hi.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %addr_hi.i.i, align 4
  %addr_hi9.i.i = getelementptr %struct.freelQ_e, ptr %36, i32 %idxprom.i.i17, i32 3
  %47 = ptrtoint ptr %addr_hi9.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %addr_hi9.i.i, align 4
  %len_gen.i.i = getelementptr %struct.freelQ_e, ptr %36, i32 %conv3.i, i32 1
  %48 = ptrtoint ptr %len_gen.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %len_gen.i.i, align 4
  %and.i.i18 = and i32 %49, 2147483647
  %genbit.i.i = getelementptr %struct.sge, ptr %1, i32 0, i32 2, i32 %bf.clear49.i, i32 7
  %50 = ptrtoint ptr %genbit.i.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %genbit.i.i, align 2
  %conv.i.i19 = zext i8 %51 to i32
  %shl.i.i = shl i32 %conv.i.i19, 31
  %or.i.i = or i32 %shl.i.i, %and.i.i18
  %len_gen10.i.i = getelementptr %struct.freelQ_e, ptr %36, i32 %idxprom.i.i17, i32 1
  %52 = ptrtoint ptr %len_gen10.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %or.i.i, ptr %len_gen10.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !135
  tail call void @arm_heavy_mb() #13
  %53 = ptrtoint ptr %genbit.i.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %genbit.i.i, align 2
  %conv12.i.i = zext i8 %54 to i32
  %gen2.i.i = getelementptr %struct.freelQ_e, ptr %36, i32 %idxprom.i.i17, i32 2
  %55 = ptrtoint ptr %gen2.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %conv12.i.i, ptr %gen2.i.i, align 4
  %56 = ptrtoint ptr %arrayidx50.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx50.i, align 4
  %inc.i.i20 = add i32 %57, 1
  store i32 %inc.i.i20, ptr %arrayidx50.i, align 4
  %58 = ptrtoint ptr %pidx.i.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %pidx.i.i, align 4
  %inc14.i.i = add i16 %59, 1
  store i16 %inc14.i.i, ptr %pidx.i.i, align 4
  %conv15.i.i = zext i16 %inc14.i.i to i32
  %size.i.i = getelementptr %struct.sge, ptr %1, i32 0, i32 2, i32 %bf.clear49.i, i32 1
  %60 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %size.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %61, i32 %conv15.i.i)
  %cmp.i.i = icmp eq i32 %61, %conv15.i.i
  br i1 %cmp.i.i, label %if.then.i.i21, label %if.then87.i.if.end88.i_crit_edge

if.then87.i.if.end88.i_crit_edge:                 ; preds = %if.then87.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end88.i

if.then.i.i21:                                    ; preds = %if.then87.i
  call void @__sanitizer_cov_trace_pc() #15
  %62 = ptrtoint ptr %pidx.i.i to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 0, ptr %pidx.i.i, align 4
  %63 = ptrtoint ptr %genbit.i.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %genbit.i.i, align 2
  %65 = xor i8 %64, 1
  store i8 %65, ptr %genbit.i.i, align 2
  br label %if.end88.i

if.else.i:                                        ; preds = %do.end76.i
  %BufferLength.i = getelementptr inbounds %struct.respQ_e, ptr %e.0214.i, i32 0, i32 1
  %66 = ptrtoint ptr %BufferLength.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %BufferLength.i, align 4
  %68 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %1, align 128
  %70 = ptrtoint ptr %rx_pkt_pad.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %rx_pkt_pad.i.i, align 32
  %sub.i.i = sub i32 %67, %71
  %centries.i.i.i = getelementptr %struct.sge, ptr %1, i32 0, i32 2, i32 %bf.clear49.i, i32 9
  %72 = ptrtoint ptr %centries.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %centries.i.i.i, align 4
  %cidx.i.i.i = getelementptr %struct.sge, ptr %1, i32 0, i32 2, i32 %bf.clear49.i, i32 3
  %74 = ptrtoint ptr %cidx.i.i.i to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %cidx.i.i.i, align 2
  %idxprom.i.i.i = zext i16 %75 to i32
  %arrayidx.i.i.i = getelementptr %struct.freelQ_ce, ptr %73, i32 %idxprom.i.i.i
  %pdev1.i.i.i = getelementptr inbounds %struct.adapter, ptr %69, i32 0, i32 1
  %76 = ptrtoint ptr %pdev1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %pdev1.i.i.i, align 4
  %78 = load i32, ptr @copybreak, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %78, i32 %sub.i.i)
  %cmp.i.i.i = icmp ugt i32 %78, %sub.i.i
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %if.else.i.use_orig_buf.i.i.i_crit_edge

if.else.i.use_orig_buf.i.i.i_crit_edge:           ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %use_orig_buf.i.i.i

if.then.i.i.i:                                    ; preds = %if.else.i
  %napi.i.i.i = getelementptr inbounds %struct.adapter, ptr %69, i32 0, i32 12
  %call.i.i.i.i = tail call ptr @__napi_alloc_skb(ptr noundef %napi.i.i.i, i32 noundef %sub.i.i, i32 noundef 2592) #13
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i.use_orig_buf.i.i.i_crit_edge, label %if.end.i.i.i

if.then.i.i.i.use_orig_buf.i.i.i_crit_edge:       ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %use_orig_buf.i.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i.i
  %call3.i.i.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i.i, i32 noundef %sub.i.i) #13
  %dev.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %77, i32 0, i32 44
  %dma_addr.i.i.i = getelementptr %struct.freelQ_ce, ptr %73, i32 %idxprom.i.i.i, i32 1
  %79 = ptrtoint ptr %dma_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %dma_addr.i.i.i, align 4
  %dma_len.i.i.i = getelementptr %struct.freelQ_ce, ptr %73, i32 %idxprom.i.i.i, i32 2
  %81 = ptrtoint ptr %dma_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %dma_len.i.i.i, align 4
  tail call void @dma_sync_single_for_cpu(ptr noundef %dev.i.i.i, i32 noundef %80, i32 noundef %82, i32 noundef 2) #13
  %83 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %arrayidx.i.i.i, align 4
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 19
  %85 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %data.i.i.i, align 4
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %84, i32 0, i32 19
  %87 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %data.i.i.i.i, align 4
  %89 = call ptr @memcpy(ptr %86, ptr %88, i32 %sub.i.i)
  %90 = ptrtoint ptr %dma_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %dma_addr.i.i.i, align 4
  %92 = ptrtoint ptr %dma_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %dma_len.i.i.i, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %dev.i.i.i, i32 noundef %91, i32 noundef %93, i32 noundef 2) #13
  %94 = ptrtoint ptr %cidx.i.i.i to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %cidx.i.i.i, align 2
  %conv.i.i.i = zext i16 %95 to i32
  %entries.i.i.i.i = getelementptr %struct.sge, ptr %1, i32 0, i32 2, i32 %bf.clear49.i, i32 8
  %96 = ptrtoint ptr %entries.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %entries.i.i.i.i, align 4
  %arrayidx.i.i.i.i = getelementptr %struct.freelQ_e, ptr %97, i32 %conv.i.i.i
  %pidx.i.i.i.i = getelementptr %struct.sge, ptr %1, i32 0, i32 2, i32 %bf.clear49.i, i32 2
  %98 = ptrtoint ptr %pidx.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %pidx.i.i.i.i, align 4
  %idxprom.i.i.i.i = zext i16 %99 to i32
  %arrayidx2.i.i.i.i = getelementptr %struct.freelQ_e, ptr %97, i32 %idxprom.i.i.i.i
  %100 = ptrtoint ptr %centries.i.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %centries.i.i.i, align 4
  %arrayidx5.i.i.i.i = getelementptr %struct.freelQ_ce, ptr %101, i32 %idxprom.i.i.i.i
  %arrayidx7.i.i.i.i = getelementptr %struct.freelQ_ce, ptr %101, i32 %conv.i.i.i
  %102 = call ptr @memcpy(ptr %arrayidx5.i.i.i.i, ptr %arrayidx7.i.i.i.i, i32 12)
  %103 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %105 = ptrtoint ptr %arrayidx2.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %104, ptr %arrayidx2.i.i.i.i, align 4
  %addr_hi.i.i.i.i = getelementptr %struct.freelQ_e, ptr %97, i32 %conv.i.i.i, i32 3
  %106 = ptrtoint ptr %addr_hi.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %addr_hi.i.i.i.i, align 4
  %addr_hi9.i.i.i.i = getelementptr %struct.freelQ_e, ptr %97, i32 %idxprom.i.i.i.i, i32 3
  %108 = ptrtoint ptr %addr_hi9.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %107, ptr %addr_hi9.i.i.i.i, align 4
  %len_gen.i.i.i.i = getelementptr %struct.freelQ_e, ptr %97, i32 %conv.i.i.i, i32 1
  %109 = ptrtoint ptr %len_gen.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %len_gen.i.i.i.i, align 4
  %and.i.i.i.i = and i32 %110, 2147483647
  %genbit.i.i.i.i = getelementptr %struct.sge, ptr %1, i32 0, i32 2, i32 %bf.clear49.i, i32 7
  %111 = ptrtoint ptr %genbit.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %genbit.i.i.i.i, align 2
  %conv.i.i.i.i = zext i8 %112 to i32
  %shl.i.i.i.i = shl i32 %conv.i.i.i.i, 31
  %or.i.i.i.i = or i32 %shl.i.i.i.i, %and.i.i.i.i
  %len_gen10.i.i.i.i = getelementptr %struct.freelQ_e, ptr %97, i32 %idxprom.i.i.i.i, i32 1
  %113 = ptrtoint ptr %len_gen10.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %or.i.i.i.i, ptr %len_gen10.i.i.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !135
  tail call void @arm_heavy_mb() #13
  %114 = ptrtoint ptr %genbit.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %genbit.i.i.i.i, align 2
  %conv12.i.i.i.i = zext i8 %115 to i32
  %gen2.i.i.i.i = getelementptr %struct.freelQ_e, ptr %97, i32 %idxprom.i.i.i.i, i32 2
  %116 = ptrtoint ptr %gen2.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %conv12.i.i.i.i, ptr %gen2.i.i.i.i, align 4
  %117 = ptrtoint ptr %arrayidx50.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %arrayidx50.i, align 4
  %inc.i.i.i.i = add i32 %118, 1
  store i32 %inc.i.i.i.i, ptr %arrayidx50.i, align 4
  %119 = ptrtoint ptr %pidx.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %119)
  %120 = load i16, ptr %pidx.i.i.i.i, align 4
  %inc14.i.i.i.i = add i16 %120, 1
  store i16 %inc14.i.i.i.i, ptr %pidx.i.i.i.i, align 4
  %conv15.i.i.i.i = zext i16 %inc14.i.i.i.i to i32
  %size.i.i.i.i = getelementptr %struct.sge, ptr %1, i32 0, i32 2, i32 %bf.clear49.i, i32 1
  %121 = ptrtoint ptr %size.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %size.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %122, i32 %conv15.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %122, %conv15.i.i.i.i
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %if.end.i.i.i.if.end.i.i_crit_edge

if.end.i.i.i.if.end.i.i_crit_edge:                ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i

if.then.i.i.i.i:                                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %123 = ptrtoint ptr %pidx.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %123)
  store i16 0, ptr %pidx.i.i.i.i, align 4
  %124 = ptrtoint ptr %genbit.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %genbit.i.i.i.i, align 2
  %126 = xor i8 %125, 1
  store i8 %126, ptr %genbit.i.i.i.i, align 2
  br label %if.end.i.i

use_orig_buf.i.i.i:                               ; preds = %if.then.i.i.i.use_orig_buf.i.i.i_crit_edge, %if.else.i.use_orig_buf.i.i.i_crit_edge
  %127 = ptrtoint ptr %arrayidx50.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %arrayidx50.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %128)
  %cmp10.i.i.i = icmp ult i32 %128, 2
  br i1 %cmp10.i.i.i, label %if.then12.i.i.i, label %get_packet.exit.i.i

if.then12.i.i.i:                                  ; preds = %use_orig_buf.i.i.i
  %129 = ptrtoint ptr %cidx.i.i.i to i32
  call void @__asan_load2_noabort(i32 %129)
  %130 = load i16, ptr %cidx.i.i.i, align 2
  %conv14.i.i.i = zext i16 %130 to i32
  %entries.i50.i.i.i = getelementptr %struct.sge, ptr %1, i32 0, i32 2, i32 %bf.clear49.i, i32 8
  %131 = ptrtoint ptr %entries.i50.i.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %entries.i50.i.i.i, align 4
  %arrayidx.i51.i.i.i = getelementptr %struct.freelQ_e, ptr %132, i32 %conv14.i.i.i
  %pidx.i52.i.i.i = getelementptr %struct.sge, ptr %1, i32 0, i32 2, i32 %bf.clear49.i, i32 2
  %133 = ptrtoint ptr %pidx.i52.i.i.i to i32
  call void @__asan_load2_noabort(i32 %133)
  %134 = load i16, ptr %pidx.i52.i.i.i, align 4
  %idxprom.i53.i.i.i = zext i16 %134 to i32
  %arrayidx2.i54.i.i.i = getelementptr %struct.freelQ_e, ptr %132, i32 %idxprom.i53.i.i.i
  %135 = ptrtoint ptr %centries.i.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %centries.i.i.i, align 4
  %arrayidx5.i56.i.i.i = getelementptr %struct.freelQ_ce, ptr %136, i32 %idxprom.i53.i.i.i
  %arrayidx7.i57.i.i.i = getelementptr %struct.freelQ_ce, ptr %136, i32 %conv14.i.i.i
  %137 = call ptr @memcpy(ptr %arrayidx5.i56.i.i.i, ptr %arrayidx7.i57.i.i.i, i32 12)
  %138 = ptrtoint ptr %arrayidx.i51.i.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %arrayidx.i51.i.i.i, align 4
  %140 = ptrtoint ptr %arrayidx2.i54.i.i.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %139, ptr %arrayidx2.i54.i.i.i, align 4
  %addr_hi.i58.i.i.i = getelementptr %struct.freelQ_e, ptr %132, i32 %conv14.i.i.i, i32 3
  %141 = ptrtoint ptr %addr_hi.i58.i.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %addr_hi.i58.i.i.i, align 4
  %addr_hi9.i59.i.i.i = getelementptr %struct.freelQ_e, ptr %132, i32 %idxprom.i53.i.i.i, i32 3
  %143 = ptrtoint ptr %addr_hi9.i59.i.i.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %142, ptr %addr_hi9.i59.i.i.i, align 4
  %len_gen.i60.i.i.i = getelementptr %struct.freelQ_e, ptr %132, i32 %conv14.i.i.i, i32 1
  %144 = ptrtoint ptr %len_gen.i60.i.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %len_gen.i60.i.i.i, align 4
  %and.i61.i.i.i = and i32 %145, 2147483647
  %genbit.i62.i.i.i = getelementptr %struct.sge, ptr %1, i32 0, i32 2, i32 %bf.clear49.i, i32 7
  %146 = ptrtoint ptr %genbit.i62.i.i.i to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %genbit.i62.i.i.i, align 2
  %conv.i63.i.i.i = zext i8 %147 to i32
  %shl.i64.i.i.i = shl i32 %conv.i63.i.i.i, 31
  %or.i65.i.i.i = or i32 %shl.i64.i.i.i, %and.i61.i.i.i
  %len_gen10.i66.i.i.i = getelementptr %struct.freelQ_e, ptr %132, i32 %idxprom.i53.i.i.i, i32 1
  %148 = ptrtoint ptr %len_gen10.i66.i.i.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %or.i65.i.i.i, ptr %len_gen10.i66.i.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !135
  tail call void @arm_heavy_mb() #13
  %149 = ptrtoint ptr %genbit.i62.i.i.i to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %genbit.i62.i.i.i, align 2
  %conv12.i67.i.i.i = zext i8 %150 to i32
  %gen2.i68.i.i.i = getelementptr %struct.freelQ_e, ptr %132, i32 %idxprom.i53.i.i.i, i32 2
  %151 = ptrtoint ptr %gen2.i68.i.i.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 %conv12.i67.i.i.i, ptr %gen2.i68.i.i.i, align 4
  %152 = ptrtoint ptr %arrayidx50.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %arrayidx50.i, align 4
  %inc.i69.i.i.i = add i32 %153, 1
  store i32 %inc.i69.i.i.i, ptr %arrayidx50.i, align 4
  %154 = ptrtoint ptr %pidx.i52.i.i.i to i32
  call void @__asan_load2_noabort(i32 %154)
  %155 = load i16, ptr %pidx.i52.i.i.i, align 4
  %inc14.i70.i.i.i = add i16 %155, 1
  store i16 %inc14.i70.i.i.i, ptr %pidx.i52.i.i.i, align 4
  %conv15.i71.i.i.i = zext i16 %inc14.i70.i.i.i to i32
  %size.i72.i.i.i = getelementptr %struct.sge, ptr %1, i32 0, i32 2, i32 %bf.clear49.i, i32 1
  %156 = ptrtoint ptr %size.i72.i.i.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %size.i72.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %157, i32 %conv15.i71.i.i.i)
  %cmp.i73.i.i.i = icmp eq i32 %157, %conv15.i71.i.i.i
  br i1 %cmp.i73.i.i.i, label %if.then.i74.i.i.i, label %if.then12.i.i.i.if.then.i.i_crit_edge

if.then12.i.i.i.if.then.i.i_crit_edge:            ; preds = %if.then12.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i.i

if.then.i74.i.i.i:                                ; preds = %if.then12.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %158 = ptrtoint ptr %pidx.i52.i.i.i to i32
  call void @__asan_store2_noabort(i32 %158)
  store i16 0, ptr %pidx.i52.i.i.i, align 4
  %159 = ptrtoint ptr %genbit.i62.i.i.i to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %genbit.i62.i.i.i, align 2
  %161 = xor i8 %160, 1
  store i8 %161, ptr %genbit.i62.i.i.i, align 2
  br label %if.then.i.i

get_packet.exit.i.i:                              ; preds = %use_orig_buf.i.i.i
  %dev16.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %77, i32 0, i32 44
  %dma_addr17.i.i.i = getelementptr %struct.freelQ_ce, ptr %73, i32 %idxprom.i.i.i, i32 1
  %162 = ptrtoint ptr %dma_addr17.i.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %dma_addr17.i.i.i, align 4
  %dma_len18.i.i.i = getelementptr %struct.freelQ_ce, ptr %73, i32 %idxprom.i.i.i, i32 2
  %164 = ptrtoint ptr %dma_len18.i.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %dma_len18.i.i.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev16.i.i.i, i32 noundef %163, i32 noundef %165, i32 noundef 2, i32 noundef 0) #13
  %166 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %arrayidx.i.i.i, align 4
  %data20.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %167, i32 0, i32 19
  %168 = ptrtoint ptr %data20.i.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %data20.i.i.i, align 4
  tail call void asm sideeffect "pld\09${0:a}", "r"(ptr %169) #13, !srcloc !136
  %call21.i.i.i = tail call ptr @skb_put(ptr noundef %167, i32 noundef %sub.i.i) #13
  %tobool.not.i.i = icmp eq ptr %167, null
  br i1 %tobool.not.i.i, label %get_packet.exit.i.i.if.then.i.i_crit_edge, label %get_packet.exit.i.i.if.end.i.i_crit_edge, !prof !118

get_packet.exit.i.i.if.end.i.i_crit_edge:         ; preds = %get_packet.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i

get_packet.exit.i.i.if.then.i.i_crit_edge:        ; preds = %get_packet.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %get_packet.exit.i.i.if.then.i.i_crit_edge, %if.then.i74.i.i.i, %if.then12.i.i.i.if.then.i.i_crit_edge
  %170 = ptrtoint ptr %stats.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %stats.i.i, align 8
  %inc.i.i = add i32 %171, 1
  store i32 %inc.i.i, ptr %stats.i.i, align 8
  br label %if.end88.i

if.end.i.i:                                       ; preds = %get_packet.exit.i.i.if.end.i.i_crit_edge, %if.then.i.i.i.i, %if.end.i.i.i.if.end.i.i_crit_edge
  %retval.0.i92.i.i = phi ptr [ %167, %get_packet.exit.i.i.if.end.i.i_crit_edge ], [ %call.i.i.i.i, %if.end.i.i.i.if.end.i.i_crit_edge ], [ %call.i.i.i.i, %if.then.i.i.i.i ]
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %retval.0.i92.i.i, i32 0, i32 19
  %172 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %data.i.i, align 4
  %iff.i.i = getelementptr inbounds %struct.cpl_rx_pkt, ptr %173, i32 0, i32 1
  %174 = ptrtoint ptr %iff.i.i to i32
  call void @__asan_load1_noabort(i32 %174)
  %bf.load.i.i = load i8, ptr %iff.i.i, align 1
  %bf.clear.i.i = and i8 %bf.load.i.i, 15
  %conv.i.i = zext i8 %bf.clear.i.i to i32
  %nports.i.i = getelementptr inbounds %struct.adapter, ptr %69, i32 0, i32 8, i32 6
  %175 = ptrtoint ptr %nports.i.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %nports.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %176, i32 %conv.i.i)
  %cmp.not.i.i = icmp ugt i32 %176, %conv.i.i
  br i1 %cmp.not.i.i, label %if.end7.i.i, label %if.then6.i.i

if.then6.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @kfree_skb_reason(ptr noundef nonnull %retval.0.i92.i.i, i32 noundef 0) #13
  br label %if.end88.i

if.end7.i.i:                                      ; preds = %if.end.i.i
  %len1.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %retval.0.i92.i.i, i32 0, i32 6
  %177 = ptrtoint ptr %len1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %len1.i.i.i, align 4
  %sub.i.i.i = add i32 %178, -8
  store i32 %sub.i.i.i, ptr %len1.i.i.i, align 4
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %retval.0.i92.i.i, i32 0, i32 7
  %179 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i.i, i32 %180)
  %cmp.i82.i.i = icmp ult i32 %sub.i.i.i, %180
  br i1 %cmp.i82.i.i, label %do.body4.i.i.i, label %__skb_pull.exit.i.i, !prof !118

do.body4.i.i.i:                                   ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2398, 0\0A.popsection", ""() #13, !srcloc !137
  unreachable

__skb_pull.exit.i.i:                              ; preds = %if.end7.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %173, i32 8
  %181 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store4_noabort(i32 %181)
  store ptr %add.ptr.i.i.i, ptr %data.i.i, align 4
  %182 = ptrtoint ptr %iff.i.i to i32
  call void @__asan_load1_noabort(i32 %182)
  %bf.load10.i.i = load i8, ptr %iff.i.i, align 1
  %bf.clear11.i.i = and i8 %bf.load10.i.i, 15
  %idxprom.i.i = zext i8 %bf.clear11.i.i to i32
  %arrayidx.i.i = getelementptr %struct.sge, ptr %1, i32 0, i32 15, i32 %idxprom.i.i
  %183 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %arrayidx.i.i, align 4
  %185 = ptrtoint ptr %184 to i32
  %186 = tail call i32 @llvm.read_register.i32(metadata !101) #13
  %and.i.i.i = and i32 %186, -16384
  %187 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %187, i32 0, i32 3
  %188 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %cpu.i.i, align 4
  %arrayidx14.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %189
  %190 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %arrayidx14.i.i, align 4
  %add.i.i = add i32 %191, %185
  %192 = inttoptr i32 %add.i.i to ptr
  %arrayidx19.i.i = getelementptr %struct.adapter, ptr %69, i32 0, i32 13, i32 %idxprom.i.i
  %193 = ptrtoint ptr %arrayidx19.i.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %arrayidx19.i.i, align 8
  %call21.i.i = tail call zeroext i16 @eth_type_trans(ptr noundef nonnull %retval.0.i92.i.i, ptr noundef %194) #13
  %protocol.i.i = getelementptr inbounds %struct.sk_buff, ptr %retval.0.i92.i.i, i32 0, i32 15, i32 0, i32 18
  %195 = ptrtoint ptr %protocol.i.i to i32
  call void @__asan_store2_noabort(i32 %195)
  store i16 %call21.i.i, ptr %protocol.i.i, align 8
  %features.i.i = getelementptr inbounds %struct.net_device, ptr %194, i32 0, i32 23
  %196 = ptrtoint ptr %features.i.i to i32
  call void @__asan_load8_noabort(i32 %196)
  %197 = load i64, ptr %features.i.i, align 16
  %and.i.i = and i64 %197, 1099511627776
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool22.not.i.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool22.not.i.i, label %__skb_pull.exit.i.i.if.end46.i.i_crit_edge, label %land.lhs.true.i.i

__skb_pull.exit.i.i.if.end46.i.i_crit_edge:       ; preds = %__skb_pull.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end46.i.i

land.lhs.true.i.i:                                ; preds = %__skb_pull.exit.i.i
  %csum.i.i = getelementptr inbounds %struct.cpl_rx_pkt, ptr %173, i32 0, i32 2
  %198 = ptrtoint ptr %csum.i.i to i32
  call void @__asan_load2_noabort(i32 %198)
  %199 = load i16, ptr %csum.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %199)
  %cmp24.i.i = icmp eq i16 %199, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %call21.i.i)
  %cmp29.i.i = icmp eq i16 %call21.i.i, 2048
  %or.cond.i.i = select i1 %cmp24.i.i, i1 %cmp29.i.i, i1 false
  br i1 %or.cond.i.i, label %land.lhs.true31.i.i, label %land.lhs.true.i.i.if.end46.i.i_crit_edge

land.lhs.true.i.i.if.end46.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end46.i.i

land.lhs.true31.i.i:                              ; preds = %land.lhs.true.i.i
  %200 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %data.i.i, align 4
  %arrayidx33.i.i = getelementptr i8, ptr %201, i32 9
  %202 = ptrtoint ptr %arrayidx33.i.i to i32
  call void @__asan_load1_noabort(i32 %202)
  %203 = load i8, ptr %arrayidx33.i.i, align 1
  %204 = zext i8 %203 to i64
  call void @__sanitizer_cov_trace_switch(i64 %204, ptr @__sancov_gen_cov_switch_values)
  switch i8 %203, label %land.lhs.true31.i.i.if.end46.i.i_crit_edge [
    i8 6, label %land.lhs.true31.i.i.if.then42.i.i_crit_edge
    i8 17, label %land.lhs.true31.i.i.if.then42.i.i_crit_edge22
  ]

land.lhs.true31.i.i.if.then42.i.i_crit_edge22:    ; preds = %land.lhs.true31.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then42.i.i

land.lhs.true31.i.i.if.then42.i.i_crit_edge:      ; preds = %land.lhs.true31.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then42.i.i

land.lhs.true31.i.i.if.end46.i.i_crit_edge:       ; preds = %land.lhs.true31.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end46.i.i

if.then42.i.i:                                    ; preds = %land.lhs.true31.i.i.if.then42.i.i_crit_edge, %land.lhs.true31.i.i.if.then42.i.i_crit_edge22
  %205 = ptrtoint ptr %192 to i32
  call void @__asan_load8_noabort(i32 %205)
  %206 = load i64, ptr %192, align 8
  %inc43.i.i = add i64 %206, 1
  store i64 %inc43.i.i, ptr %192, align 8
  %ip_summed.i.i = getelementptr inbounds %struct.sk_buff, ptr %retval.0.i92.i.i, i32 0, i32 15
  %207 = ptrtoint ptr %ip_summed.i.i to i32
  call void @__asan_load2_noabort(i32 %207)
  %bf.load44.i.i = load i16, ptr %ip_summed.i.i, align 8
  %bf.clear45.i.i = and i16 %bf.load44.i.i, -1537
  %bf.set.i.i = or i16 %bf.clear45.i.i, 512
  store i16 %bf.set.i.i, ptr %ip_summed.i.i, align 8
  br label %if.end46.i.i

if.end46.i.i:                                     ; preds = %if.then42.i.i, %land.lhs.true31.i.i.if.end46.i.i_crit_edge, %land.lhs.true.i.i.if.end46.i.i_crit_edge, %__skb_pull.exit.i.i.if.end46.i.i_crit_edge
  %208 = ptrtoint ptr %iff.i.i to i32
  call void @__asan_load1_noabort(i32 %208)
  %bf.load47.i.i = load i8, ptr %iff.i.i, align 1
  %209 = and i8 %bf.load47.i.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %209)
  %tobool49.not.i.i = icmp eq i8 %209, 0
  br i1 %tobool49.not.i.i, label %if.end46.i.i.if.end52.i.i_crit_edge, label %if.then50.i.i

if.end46.i.i.if.end52.i.i_crit_edge:              ; preds = %if.end46.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end52.i.i

if.then50.i.i:                                    ; preds = %if.end46.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %vlan_xtract.i.i = getelementptr inbounds %struct.sge_port_stats, ptr %192, i32 0, i32 3
  %210 = ptrtoint ptr %vlan_xtract.i.i to i32
  call void @__asan_load8_noabort(i32 %210)
  %211 = load i64, ptr %vlan_xtract.i.i, align 8
  %inc51.i.i = add i64 %211, 1
  store i64 %inc51.i.i, ptr %vlan_xtract.i.i, align 8
  %vlan.i.i = getelementptr inbounds %struct.cpl_rx_pkt, ptr %173, i32 0, i32 3
  %212 = ptrtoint ptr %vlan.i.i to i32
  call void @__asan_load2_noabort(i32 %212)
  %213 = load i16, ptr %vlan.i.i, align 2
  %vlan_proto1.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %retval.0.i92.i.i, i32 0, i32 15, i32 0, i32 9
  %214 = ptrtoint ptr %vlan_proto1.i.i.i to i32
  call void @__asan_store2_noabort(i32 %214)
  store i16 -32512, ptr %vlan_proto1.i.i.i, align 8
  %vlan_tci2.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %retval.0.i92.i.i, i32 0, i32 15, i32 0, i32 10
  %215 = ptrtoint ptr %vlan_tci2.i.i.i to i32
  call void @__asan_store2_noabort(i32 %215)
  store i16 %213, ptr %vlan_tci2.i.i.i, align 2
  %vlan_present.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %retval.0.i92.i.i, i32 0, i32 15, i32 0, i32 3
  %216 = ptrtoint ptr %vlan_present.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %216, i32 4)
  %bf.load.i.i.i = load i32, ptr %vlan_present.i.i.i, align 2
  %bf.set.i.i.i = or i32 %bf.load.i.i.i, -2147483648
  store i32 %bf.set.i.i.i, ptr %vlan_present.i.i.i, align 2
  br label %if.end52.i.i

if.end52.i.i:                                     ; preds = %if.then50.i.i, %if.end46.i.i.if.end52.i.i_crit_edge
  %call53.i.i = tail call i32 @netif_receive_skb(ptr noundef nonnull %retval.0.i92.i.i) #13
  br label %if.end88.i

if.end88.i:                                       ; preds = %if.end52.i.i, %if.then6.i.i, %if.then.i.i, %if.then.i.i21, %if.then87.i.if.end88.i_crit_edge
  %inc.i = add nsw i32 %done.0217.i, 1
  %cidx89.i = getelementptr %struct.sge, ptr %1, i32 0, i32 2, i32 %bf.clear49.i, i32 3
  %217 = ptrtoint ptr %cidx89.i to i32
  call void @__asan_load2_noabort(i32 %217)
  %218 = load i16, ptr %cidx89.i, align 2
  %inc90.i = add i16 %218, 1
  %conv91.i = zext i16 %inc90.i to i32
  %size.i = getelementptr %struct.sge, ptr %1, i32 0, i32 2, i32 %bf.clear49.i, i32 1
  %219 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %220, i32 %conv91.i)
  %cmp92.i = icmp eq i32 %220, %conv91.i
  %spec.store.select.i = select i1 %cmp92.i, i16 0, i16 %inc90.i
  %221 = ptrtoint ptr %cidx89.i to i32
  call void @__asan_store2_noabort(i32 %221)
  store i16 %spec.store.select.i, ptr %cidx89.i, align 2
  %centries.i = getelementptr %struct.sge, ptr %1, i32 0, i32 2, i32 %bf.clear49.i, i32 9
  %222 = ptrtoint ptr %centries.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %centries.i, align 4
  %idxprom98.i = zext i16 %spec.store.select.i to i32
  %arrayidx99.i = getelementptr %struct.freelQ_ce, ptr %223, i32 %idxprom98.i
  %224 = ptrtoint ptr %arrayidx99.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %arrayidx99.i, align 4
  tail call void asm sideeffect "pld\09${0:a}", "r"(ptr %225) #13, !srcloc !136
  %226 = ptrtoint ptr %arrayidx50.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %arrayidx50.i, align 4
  %dec.i = add i32 %227, -1
  store i32 %dec.i, ptr %arrayidx50.i, align 4
  %228 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %size.i, align 4
  %sub.i = add i32 %229, -16
  call void @__sanitizer_cov_trace_cmp4(i32 %dec.i, i32 %sub.i)
  %cmp101.i = icmp ult i32 %dec.i, %sub.i
  br i1 %cmp101.i, label %if.then109.i, label %if.end88.i.if.end113.i_crit_edge, !prof !118

if.end88.i.if.end113.i_crit_edge:                 ; preds = %if.end88.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end113.i

if.then109.i:                                     ; preds = %if.end88.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @refill_free_list(ptr noundef %1, ptr noundef %arrayidx50.i) #13
  br label %if.end113.i

if.else111.i:                                     ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #15
  %230 = ptrtoint ptr %pure_rsps.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %pure_rsps.i, align 4
  %inc112.i = add i32 %231, 1
  store i32 %inc112.i, ptr %pure_rsps.i, align 4
  br label %if.end113.i

if.end113.i:                                      ; preds = %if.else111.i, %if.then109.i, %if.end88.i.if.end113.i_crit_edge
  %done.1.i = phi i32 [ %done.0217.i, %if.else111.i ], [ %inc.i, %if.then109.i ], [ %inc.i, %if.end88.i.if.end113.i_crit_edge ]
  %incdec.ptr.i = getelementptr %struct.respQ_e, ptr %e.0214.i, i32 1
  %232 = ptrtoint ptr %cidx.i to i32
  call void @__asan_load2_noabort(i32 %232)
  %233 = load i16, ptr %cidx.i, align 4
  %inc115.i = add i16 %233, 1
  store i16 %inc115.i, ptr %cidx.i, align 4
  %conv116.i = zext i16 %inc115.i to i32
  %234 = ptrtoint ptr %size117.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %size117.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %235, i32 %conv116.i)
  %cmp118.i = icmp eq i32 %235, %conv116.i
  br i1 %cmp118.i, label %if.then126.i, label %if.end113.i.if.end132.i_crit_edge, !prof !118

if.end113.i.if.end132.i_crit_edge:                ; preds = %if.end113.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end132.i

if.then126.i:                                     ; preds = %if.end113.i
  call void @__sanitizer_cov_trace_pc() #15
  %236 = ptrtoint ptr %cidx.i to i32
  call void @__asan_store2_noabort(i32 %236)
  store i16 0, ptr %cidx.i, align 4
  %237 = ptrtoint ptr %genbit.i to i32
  call void @__asan_load1_noabort(i32 %237)
  %238 = load i8, ptr %genbit.i, align 2
  %239 = xor i8 %238, 1
  store i8 %239, ptr %genbit.i, align 2
  %240 = ptrtoint ptr %entries.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %entries.i, align 4
  br label %if.end132.i

if.end132.i:                                      ; preds = %if.then126.i, %if.end113.i.if.end132.i_crit_edge
  %e.1.i = phi ptr [ %241, %if.then126.i ], [ %incdec.ptr.i, %if.end113.i.if.end132.i_crit_edge ]
  tail call void asm sideeffect "pld\09${0:a}", "r"(ptr %e.1.i) #13, !srcloc !136
  %242 = ptrtoint ptr %respQ.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %respQ.i, align 4
  %inc134.i = add i32 %243, 1
  store i32 %inc134.i, ptr %respQ.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %inc134.i)
  %cmp135.i = icmp ugt i32 %inc134.i, 256
  br i1 %cmp135.i, label %do.body138.i, label %if.end132.i.if.end143.i_crit_edge

if.end132.i.if.end143.i_crit_edge:                ; preds = %if.end132.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end143.i

do.body138.i:                                     ; preds = %if.end132.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !138
  tail call void @arm_heavy_mb() #13
  %244 = ptrtoint ptr %respQ.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %respQ.i, align 4
  %246 = tail call i32 @llvm.bswap.i32(i32 %245) #13
  %247 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %add.ptr, align 128
  %add.ptr.i = getelementptr i8, ptr %248, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %246) #13, !srcloc !115
  %249 = ptrtoint ptr %respQ.i to i32
  call void @__asan_store4_noabort(i32 %249)
  store i32 0, ptr %respQ.i, align 4
  br label %if.end143.i

if.end143.i:                                      ; preds = %do.body138.i, %if.end132.i.if.end143.i_crit_edge
  %cmp.i = icmp slt i32 %done.1.i, %budget
  br i1 %cmp.i, label %if.end143.i.land.rhs.i_crit_edge, label %if.end143.i.process_responses.exit_crit_edge

if.end143.i.process_responses.exit_crit_edge:     ; preds = %if.end143.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %process_responses.exit

if.end143.i.land.rhs.i_crit_edge:                 ; preds = %if.end143.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.rhs.i

process_responses.exit:                           ; preds = %if.end143.i.process_responses.exit_crit_edge, %land.rhs.i.process_responses.exit_crit_edge, %entry.process_responses.exit_crit_edge
  %done.0.lcssa.i = phi i32 [ 0, %entry.process_responses.exit_crit_edge ], [ %done.0217.i, %land.rhs.i.process_responses.exit_crit_edge ], [ %done.1.i, %if.end143.i.process_responses.exit_crit_edge ]
  %flags.0.lcssa.i = phi i32 [ 0, %entry.process_responses.exit_crit_edge ], [ %flags.0218.i, %land.rhs.i.process_responses.exit_crit_edge ], [ %flags.1.i, %if.end143.i.process_responses.exit_crit_edge ]
  %cmdq_processed.sroa.0.0.lcssa.i = phi i32 [ 0, %entry.process_responses.exit_crit_edge ], [ %cmdq_processed.sroa.0.0219.i, %land.rhs.i.process_responses.exit_crit_edge ], [ %cmdq_processed.sroa.0.1.i, %if.end143.i.process_responses.exit_crit_edge ]
  %cmdq_processed.sroa.9.0.lcssa.i = phi i32 [ 0, %entry.process_responses.exit_crit_edge ], [ %cmdq_processed.sroa.9.0220.i, %land.rhs.i.process_responses.exit_crit_edge ], [ %cmdq_processed.sroa.9.1.i, %if.end143.i.process_responses.exit_crit_edge ]
  %call145.i = tail call fastcc i32 @update_tx_info(ptr noundef %add.ptr, i32 noundef %flags.0.lcssa.i, i32 noundef %cmdq_processed.sroa.0.0.lcssa.i) #13
  %processed149.i = getelementptr %struct.sge, ptr %1, i32 0, i32 18, i32 1, i32 3
  %250 = ptrtoint ptr %processed149.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %processed149.i, align 4
  %add150.i = add i32 %251, %cmdq_processed.sroa.9.0.lcssa.i
  store i32 %add150.i, ptr %processed149.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %done.0.lcssa.i, i32 %budget)
  %cmp = icmp slt i32 %done.0.lcssa.i, %budget
  br i1 %cmp, label %if.then, label %process_responses.exit.if.end_crit_edge, !prof !112

process_responses.exit.if.end_crit_edge:          ; preds = %process_responses.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %process_responses.exit
  call void @__sanitizer_cov_trace_pc() #15
  %call2 = tail call zeroext i1 @napi_complete_done(ptr noundef %napi, i32 noundef %done.0.lcssa.i) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !139
  tail call void @arm_heavy_mb() #13
  %252 = ptrtoint ptr %sge1.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %sge1.i, align 8
  %cidx = getelementptr inbounds %struct.sge, ptr %253, i32 0, i32 3, i32 2
  %254 = ptrtoint ptr %cidx to i32
  call void @__asan_load2_noabort(i32 %254)
  %255 = load i16, ptr %cidx, align 8
  %conv = zext i16 %255 to i32
  %256 = tail call i32 @llvm.bswap.i32(i32 %conv)
  %257 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %add.ptr, align 128
  %add.ptr3 = getelementptr i8, ptr %258, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %256) #13, !srcloc !115
  br label %if.end

if.end:                                           ; preds = %if.then, %process_responses.exit.if.end_crit_edge
  ret i32 %done.0.lcssa.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_complete_done(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @t1_interrupt_thread(i32 noundef %irq, ptr noundef %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %async_lock = getelementptr inbounds %struct.adapter, ptr %data, i32 0, i32 20
  tail call void @_raw_spin_lock_irq(ptr noundef %async_lock) #13
  %pending_thread_intr1 = getelementptr inbounds %struct.adapter, ptr %data, i32 0, i32 21
  %0 = ptrtoint ptr %pending_thread_intr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pending_thread_intr1, align 4
  store i32 0, ptr %pending_thread_intr1, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %async_lock) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %1, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %if.end.if.end6_crit_edge, label %if.then5

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call i32 @t1_elmer0_ext_intr_handler(ptr noundef %data) #13
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end.if.end6_crit_edge
  %and7 = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.end11, label %do.end

do.end:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  %name = getelementptr inbounds %struct.adapter, ptr %data, i32 0, i32 5
  %2 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name, align 4
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %3) #17
  %sge = getelementptr inbounds %struct.adapter, ptr %data, i32 0, i32 9
  %4 = ptrtoint ptr %sge to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sge, align 8
  tail call void @t1_sge_stop(ptr noundef %5)
  br label %cleanup

if.end11:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_raw_spin_lock_irq(ptr noundef %async_lock) #13
  %slow_intr_mask = getelementptr inbounds %struct.adapter, ptr %data, i32 0, i32 22
  %6 = ptrtoint ptr %slow_intr_mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %slow_intr_mask, align 16
  %or = or i32 %7, 2048
  store i32 %or, ptr %slow_intr_mask, align 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !140
  tail call void @arm_heavy_mb() #13
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 128
  %add.ptr = getelementptr i8, ptr %9, i32 2564
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 524288) #13, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !141
  tail call void @arm_heavy_mb() #13
  %10 = ptrtoint ptr %slow_intr_mask to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %slow_intr_mask, align 16
  %or20 = or i32 %11, 2
  %12 = tail call i32 @llvm.bswap.i32(i32 %or20)
  %13 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data, align 128
  %add.ptr22 = getelementptr i8, ptr %14, i32 2560
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22, i32 %12) #13, !srcloc !115
  tail call void @_raw_spin_unlock_irq(ptr noundef %async_lock) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %do.end ], [ 1, %if.end11 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t1_elmer0_ext_intr_handler(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @t1_sge_stop(ptr noundef %sge) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !142
  tail call void @arm_heavy_mb() #13
  %0 = ptrtoint ptr %sge to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sge, align 128
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 0) #13, !srcloc !115
  %4 = ptrtoint ptr %sge to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sge, align 128
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 128
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #13, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !143
  %9 = ptrtoint ptr %sge to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sge, align 128
  %chip_version.i = getelementptr inbounds %struct.adapter, ptr %10, i32 0, i32 8, i32 9
  %11 = ptrtoint ptr %chip_version.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %chip_version.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %12)
  %cmp.i = icmp eq i8 %12, 2
  br i1 %cmp.i, label %adapter_matches_type.exit, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

adapter_matches_type.exit:                        ; preds = %entry
  %chip_revision.i = getelementptr inbounds %struct.adapter, ptr %10, i32 0, i32 8, i32 8
  %13 = ptrtoint ptr %chip_revision.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %chip_revision.i, align 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %14)
  %cmp4.i.not = icmp eq i16 %14, 3
  br i1 %cmp4.i.not, label %if.then, label %adapter_matches_type.exit.if.end_crit_edge

adapter_matches_type.exit.if.end_crit_edge:       ; preds = %adapter_matches_type.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %adapter_matches_type.exit
  call void @__sanitizer_cov_trace_pc() #15
  %espibug_timer = getelementptr inbounds %struct.sge, ptr %sge, i32 0, i32 10
  %call7 = tail call i32 @del_timer_sync(ptr noundef %espibug_timer) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %adapter_matches_type.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %tx_reclaim_timer = getelementptr inbounds %struct.sge, ptr %sge, i32 0, i32 9
  %call8 = tail call i32 @del_timer_sync(ptr noundef %tx_reclaim_timer) #13
  %tx_sched = getelementptr inbounds %struct.sge, ptr %sge, i32 0, i32 16
  %15 = ptrtoint ptr %tx_sched to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tx_sched, align 16
  %tobool9.not = icmp eq ptr %16, null
  br i1 %tobool9.not, label %if.end.if.end11_crit_edge, label %if.then10

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end11

if.then10:                                        ; preds = %if.end
  %sched_tsk.i = getelementptr inbounds %struct.sched, ptr %16, i32 0, i32 5
  tail call void @tasklet_kill(ptr noundef %sched_tsk.i) #13
  %port.i = getelementptr inbounds %struct.sched, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %port.i, align 4
  %skbq.i = getelementptr %struct.sched, ptr %16, i32 0, i32 4, i32 %18, i32 4
  %19 = ptrtoint ptr %skbq.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %skbq.i, align 4
  %cmp.i.i2.i.i = icmp eq ptr %20, %skbq.i
  %tobool.not.i13.i.i = icmp eq ptr %20, null
  %tobool.not.i4.i.i = or i1 %cmp.i.i2.i.i, %tobool.not.i13.i.i
  br i1 %tobool.not.i4.i.i, label %if.then10.__skb_queue_purge.exit.i_crit_edge, label %while.body.lr.ph.i.i

if.then10.__skb_queue_purge.exit.i_crit_edge:     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #15
  br label %__skb_queue_purge.exit.i

while.body.lr.ph.i.i:                             ; preds = %if.then10
  %qlen.i.i.i.i = getelementptr %struct.sched, ptr %16, i32 0, i32 4, i32 %18, i32 4, i32 1
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %while.body.lr.ph.i.i
  %21 = phi ptr [ %20, %while.body.lr.ph.i.i ], [ %31, %while.body.i.i.while.body.i.i_crit_edge ]
  %22 = ptrtoint ptr %qlen.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %qlen.i.i.i.i, align 4
  %sub.i.i.i.i = add i32 %23, -1
  store volatile i32 %sub.i.i.i.i, ptr %qlen.i.i.i.i, align 4
  %24 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %21, align 8
  %prev9.i.i.i.i = getelementptr inbounds %struct.anon.51, ptr %21, i32 0, i32 1
  %26 = ptrtoint ptr %prev9.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %prev9.i.i.i.i, align 4
  store ptr null, ptr %prev9.i.i.i.i, align 4
  store ptr null, ptr %21, align 8
  %prev17.i.i.i.i = getelementptr inbounds %struct.anon.51, ptr %25, i32 0, i32 1
  %28 = ptrtoint ptr %prev17.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %27, ptr %prev17.i.i.i.i, align 4
  %29 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %25, ptr %27, align 8
  tail call void @kfree_skb_reason(ptr noundef nonnull %21, i32 noundef 0) #13
  %30 = ptrtoint ptr %skbq.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %skbq.i, align 4
  %cmp.i.i.i.i = icmp eq ptr %31, %skbq.i
  %tobool.not.i1.i.i = icmp eq ptr %31, null
  %tobool.not.i.i.i = or i1 %cmp.i.i.i.i, %tobool.not.i1.i.i
  br i1 %tobool.not.i.i.i, label %while.body.i.i.__skb_queue_purge.exit.i_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i.i

while.body.i.i.__skb_queue_purge.exit.i_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__skb_queue_purge.exit.i

__skb_queue_purge.exit.i:                         ; preds = %while.body.i.i.__skb_queue_purge.exit.i_crit_edge, %if.then10.__skb_queue_purge.exit.i_crit_edge
  %32 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %port.i, align 4
  %skbq.1.i = getelementptr %struct.sched, ptr %16, i32 0, i32 4, i32 %33, i32 4
  %34 = ptrtoint ptr %skbq.1.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %skbq.1.i, align 4
  %cmp.i.i2.i.1.i = icmp eq ptr %35, %skbq.1.i
  %tobool.not.i13.i.1.i = icmp eq ptr %35, null
  %tobool.not.i4.i.1.i = or i1 %cmp.i.i2.i.1.i, %tobool.not.i13.i.1.i
  br i1 %tobool.not.i4.i.1.i, label %__skb_queue_purge.exit.i.__skb_queue_purge.exit.1.i_crit_edge, label %while.body.lr.ph.i.1.i

__skb_queue_purge.exit.i.__skb_queue_purge.exit.1.i_crit_edge: ; preds = %__skb_queue_purge.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__skb_queue_purge.exit.1.i

while.body.lr.ph.i.1.i:                           ; preds = %__skb_queue_purge.exit.i
  %qlen.i.i.i.1.i = getelementptr %struct.sched, ptr %16, i32 0, i32 4, i32 %33, i32 4, i32 1
  br label %while.body.i.1.i

while.body.i.1.i:                                 ; preds = %while.body.i.1.i.while.body.i.1.i_crit_edge, %while.body.lr.ph.i.1.i
  %36 = phi ptr [ %35, %while.body.lr.ph.i.1.i ], [ %46, %while.body.i.1.i.while.body.i.1.i_crit_edge ]
  %37 = ptrtoint ptr %qlen.i.i.i.1.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %qlen.i.i.i.1.i, align 4
  %sub.i.i.i.1.i = add i32 %38, -1
  store volatile i32 %sub.i.i.i.1.i, ptr %qlen.i.i.i.1.i, align 4
  %39 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %36, align 8
  %prev9.i.i.i.1.i = getelementptr inbounds %struct.anon.51, ptr %36, i32 0, i32 1
  %41 = ptrtoint ptr %prev9.i.i.i.1.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %prev9.i.i.i.1.i, align 4
  store ptr null, ptr %prev9.i.i.i.1.i, align 4
  store ptr null, ptr %36, align 8
  %prev17.i.i.i.1.i = getelementptr inbounds %struct.anon.51, ptr %40, i32 0, i32 1
  %43 = ptrtoint ptr %prev17.i.i.i.1.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %42, ptr %prev17.i.i.i.1.i, align 4
  %44 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %40, ptr %42, align 8
  tail call void @kfree_skb_reason(ptr noundef nonnull %36, i32 noundef 0) #13
  %45 = ptrtoint ptr %skbq.1.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %skbq.1.i, align 4
  %cmp.i.i.i.1.i = icmp eq ptr %46, %skbq.1.i
  %tobool.not.i1.i.1.i = icmp eq ptr %46, null
  %tobool.not.i.i.1.i = or i1 %cmp.i.i.i.1.i, %tobool.not.i1.i.1.i
  br i1 %tobool.not.i.i.1.i, label %while.body.i.1.i.__skb_queue_purge.exit.1.i_crit_edge, label %while.body.i.1.i.while.body.i.1.i_crit_edge

while.body.i.1.i.while.body.i.1.i_crit_edge:      ; preds = %while.body.i.1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i.1.i

while.body.i.1.i.__skb_queue_purge.exit.1.i_crit_edge: ; preds = %while.body.i.1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__skb_queue_purge.exit.1.i

__skb_queue_purge.exit.1.i:                       ; preds = %while.body.i.1.i.__skb_queue_purge.exit.1.i_crit_edge, %__skb_queue_purge.exit.i.__skb_queue_purge.exit.1.i_crit_edge
  %47 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %port.i, align 4
  %skbq.2.i = getelementptr %struct.sched, ptr %16, i32 0, i32 4, i32 %48, i32 4
  %49 = ptrtoint ptr %skbq.2.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %skbq.2.i, align 4
  %cmp.i.i2.i.2.i = icmp eq ptr %50, %skbq.2.i
  %tobool.not.i13.i.2.i = icmp eq ptr %50, null
  %tobool.not.i4.i.2.i = or i1 %cmp.i.i2.i.2.i, %tobool.not.i13.i.2.i
  br i1 %tobool.not.i4.i.2.i, label %__skb_queue_purge.exit.1.i.__skb_queue_purge.exit.2.i_crit_edge, label %while.body.lr.ph.i.2.i

__skb_queue_purge.exit.1.i.__skb_queue_purge.exit.2.i_crit_edge: ; preds = %__skb_queue_purge.exit.1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__skb_queue_purge.exit.2.i

while.body.lr.ph.i.2.i:                           ; preds = %__skb_queue_purge.exit.1.i
  %qlen.i.i.i.2.i = getelementptr %struct.sched, ptr %16, i32 0, i32 4, i32 %48, i32 4, i32 1
  br label %while.body.i.2.i

while.body.i.2.i:                                 ; preds = %while.body.i.2.i.while.body.i.2.i_crit_edge, %while.body.lr.ph.i.2.i
  %51 = phi ptr [ %50, %while.body.lr.ph.i.2.i ], [ %61, %while.body.i.2.i.while.body.i.2.i_crit_edge ]
  %52 = ptrtoint ptr %qlen.i.i.i.2.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %qlen.i.i.i.2.i, align 4
  %sub.i.i.i.2.i = add i32 %53, -1
  store volatile i32 %sub.i.i.i.2.i, ptr %qlen.i.i.i.2.i, align 4
  %54 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %51, align 8
  %prev9.i.i.i.2.i = getelementptr inbounds %struct.anon.51, ptr %51, i32 0, i32 1
  %56 = ptrtoint ptr %prev9.i.i.i.2.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %prev9.i.i.i.2.i, align 4
  store ptr null, ptr %prev9.i.i.i.2.i, align 4
  store ptr null, ptr %51, align 8
  %prev17.i.i.i.2.i = getelementptr inbounds %struct.anon.51, ptr %55, i32 0, i32 1
  %58 = ptrtoint ptr %prev17.i.i.i.2.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile ptr %57, ptr %prev17.i.i.i.2.i, align 4
  %59 = ptrtoint ptr %57 to i32
  call void @__asan_store4_noabort(i32 %59)
  store volatile ptr %55, ptr %57, align 8
  tail call void @kfree_skb_reason(ptr noundef nonnull %51, i32 noundef 0) #13
  %60 = ptrtoint ptr %skbq.2.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %skbq.2.i, align 4
  %cmp.i.i.i.2.i = icmp eq ptr %61, %skbq.2.i
  %tobool.not.i1.i.2.i = icmp eq ptr %61, null
  %tobool.not.i.i.2.i = or i1 %cmp.i.i.i.2.i, %tobool.not.i1.i.2.i
  br i1 %tobool.not.i.i.2.i, label %while.body.i.2.i.__skb_queue_purge.exit.2.i_crit_edge, label %while.body.i.2.i.while.body.i.2.i_crit_edge

while.body.i.2.i.while.body.i.2.i_crit_edge:      ; preds = %while.body.i.2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i.2.i

while.body.i.2.i.__skb_queue_purge.exit.2.i_crit_edge: ; preds = %while.body.i.2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__skb_queue_purge.exit.2.i

__skb_queue_purge.exit.2.i:                       ; preds = %while.body.i.2.i.__skb_queue_purge.exit.2.i_crit_edge, %__skb_queue_purge.exit.1.i.__skb_queue_purge.exit.2.i_crit_edge
  %62 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %port.i, align 4
  %skbq.3.i = getelementptr %struct.sched, ptr %16, i32 0, i32 4, i32 %63, i32 4
  %64 = ptrtoint ptr %skbq.3.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %skbq.3.i, align 4
  %cmp.i.i2.i.3.i = icmp eq ptr %65, %skbq.3.i
  %tobool.not.i13.i.3.i = icmp eq ptr %65, null
  %tobool.not.i4.i.3.i = or i1 %cmp.i.i2.i.3.i, %tobool.not.i13.i.3.i
  br i1 %tobool.not.i4.i.3.i, label %__skb_queue_purge.exit.2.i.if.end11_crit_edge, label %while.body.lr.ph.i.3.i

__skb_queue_purge.exit.2.i.if.end11_crit_edge:    ; preds = %__skb_queue_purge.exit.2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end11

while.body.lr.ph.i.3.i:                           ; preds = %__skb_queue_purge.exit.2.i
  %qlen.i.i.i.3.i = getelementptr %struct.sched, ptr %16, i32 0, i32 4, i32 %63, i32 4, i32 1
  br label %while.body.i.3.i

while.body.i.3.i:                                 ; preds = %while.body.i.3.i.while.body.i.3.i_crit_edge, %while.body.lr.ph.i.3.i
  %66 = phi ptr [ %65, %while.body.lr.ph.i.3.i ], [ %76, %while.body.i.3.i.while.body.i.3.i_crit_edge ]
  %67 = ptrtoint ptr %qlen.i.i.i.3.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %qlen.i.i.i.3.i, align 4
  %sub.i.i.i.3.i = add i32 %68, -1
  store volatile i32 %sub.i.i.i.3.i, ptr %qlen.i.i.i.3.i, align 4
  %69 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %66, align 8
  %prev9.i.i.i.3.i = getelementptr inbounds %struct.anon.51, ptr %66, i32 0, i32 1
  %71 = ptrtoint ptr %prev9.i.i.i.3.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %prev9.i.i.i.3.i, align 4
  store ptr null, ptr %prev9.i.i.i.3.i, align 4
  store ptr null, ptr %66, align 8
  %prev17.i.i.i.3.i = getelementptr inbounds %struct.anon.51, ptr %70, i32 0, i32 1
  %73 = ptrtoint ptr %prev17.i.i.i.3.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store volatile ptr %72, ptr %prev17.i.i.i.3.i, align 4
  %74 = ptrtoint ptr %72 to i32
  call void @__asan_store4_noabort(i32 %74)
  store volatile ptr %70, ptr %72, align 8
  tail call void @kfree_skb_reason(ptr noundef nonnull %66, i32 noundef 0) #13
  %75 = ptrtoint ptr %skbq.3.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %skbq.3.i, align 4
  %cmp.i.i.i.3.i = icmp eq ptr %76, %skbq.3.i
  %tobool.not.i1.i.3.i = icmp eq ptr %76, null
  %tobool.not.i.i.3.i = or i1 %cmp.i.i.i.3.i, %tobool.not.i1.i.3.i
  br i1 %tobool.not.i.i.3.i, label %while.body.i.3.i.if.end11_crit_edge, label %while.body.i.3.i.while.body.i.3.i_crit_edge

while.body.i.3.i.while.body.i.3.i_crit_edge:      ; preds = %while.body.i.3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i.3.i

while.body.i.3.i.if.end11_crit_edge:              ; preds = %while.body.i.3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end11

if.end11:                                         ; preds = %while.body.i.3.i.if.end11_crit_edge, %__skb_queue_purge.exit.2.i.if.end11_crit_edge, %if.end.if.end11_crit_edge
  %arrayidx = getelementptr %struct.sge, ptr %sge, i32 0, i32 12, i32 0
  %77 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %arrayidx, align 4
  tail call void @kfree_skb_reason(ptr noundef %78, i32 noundef 0) #13
  %arrayidx.1 = getelementptr %struct.sge, ptr %sge, i32 0, i32 12, i32 1
  %79 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %arrayidx.1, align 4
  tail call void @kfree_skb_reason(ptr noundef %80, i32 noundef 0) #13
  %arrayidx.2 = getelementptr %struct.sge, ptr %sge, i32 0, i32 12, i32 2
  %81 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %arrayidx.2, align 4
  tail call void @kfree_skb_reason(ptr noundef %82, i32 noundef 0) #13
  %arrayidx.3 = getelementptr %struct.sge, ptr %sge, i32 0, i32 12, i32 3
  %83 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %arrayidx.3, align 4
  tail call void @kfree_skb_reason(ptr noundef %84, i32 noundef 0) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @t1_interrupt(i32 noundef %irq, ptr noundef %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %sge1 = getelementptr inbounds %struct.adapter, ptr %data, i32 0, i32 9
  %0 = ptrtoint ptr %sge1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sge1, align 8
  %entries.i = getelementptr inbounds %struct.sge, ptr %1, i32 0, i32 3, i32 4
  %2 = ptrtoint ptr %entries.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %entries.i, align 4
  %cidx.i = getelementptr inbounds %struct.sge, ptr %1, i32 0, i32 3, i32 2
  %4 = ptrtoint ptr %cidx.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %cidx.i, align 4
  %idxprom.i = zext i16 %5 to i32
  %arrayidx.i = getelementptr %struct.respQ_e, ptr %3, i32 %idxprom.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %bf.load.i = load i32, ptr %arrayidx.i, align 4
  %bf.clear.i = and i32 %bf.load.i, 1
  %genbit.i = getelementptr inbounds %struct.sge, ptr %1, i32 0, i32 3, i32 3
  %7 = ptrtoint ptr %genbit.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %genbit.i, align 2
  %conv.i = zext i8 %8 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.clear.i, i32 %conv.i)
  %cmp.i.not = icmp eq i32 %bf.clear.i, %conv.i
  br i1 %cmp.i.not, label %do.body, label %if.end17, !prof !112

do.body:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !144
  tail call void @arm_heavy_mb() #13
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data, align 128
  %add.ptr = getelementptr i8, ptr %10, i32 2564
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 33554432) #13, !srcloc !115
  %napi = getelementptr inbounds %struct.adapter, ptr %data, i32 0, i32 12
  %call4 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi) #13
  br i1 %call4, label %if.then5, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then5:                                         ; preds = %do.body
  %11 = ptrtoint ptr %sge1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sge1, align 8
  %respQ.i = getelementptr inbounds %struct.sge, ptr %12, i32 0, i32 3
  %entries.i37 = getelementptr inbounds %struct.sge, ptr %12, i32 0, i32 3, i32 4
  %13 = ptrtoint ptr %entries.i37 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %entries.i37, align 4
  %cidx.i38 = getelementptr inbounds %struct.sge, ptr %12, i32 0, i32 3, i32 2
  %15 = ptrtoint ptr %cidx.i38 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %cidx.i38, align 4
  %idxprom.i39 = zext i16 %16 to i32
  %arrayidx.i40 = getelementptr %struct.respQ_e, ptr %14, i32 %idxprom.i39
  %17 = ptrtoint ptr %arrayidx.i40 to i32
  call void @__asan_load4_noabort(i32 %17)
  %bf.load.i41 = load i32, ptr %arrayidx.i40, align 4
  %bf.lshr.i = lshr i32 %bf.load.i41, 6
  %bf.clear.i42 = and i32 %bf.lshr.i, 3
  %centries.i = getelementptr %struct.sge, ptr %12, i32 0, i32 2, i32 %bf.clear.i42, i32 9
  %18 = ptrtoint ptr %centries.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %centries.i, align 4
  %cidx3.i = getelementptr %struct.sge, ptr %12, i32 0, i32 2, i32 %bf.clear.i42, i32 3
  %20 = ptrtoint ptr %cidx3.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %cidx3.i, align 2
  %idxprom4.i = zext i16 %21 to i32
  %arrayidx5.i = getelementptr %struct.freelQ_ce, ptr %19, i32 %idxprom4.i
  %22 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx5.i, align 4
  tail call void asm sideeffect "pld\09${0:a}", "r"(ptr %23) #13, !srcloc !136
  %24 = ptrtoint ptr %arrayidx.i40 to i32
  call void @__asan_load4_noabort(i32 %24)
  %bf.load6.i = load i32, ptr %arrayidx.i40, align 4
  %25 = and i32 %bf.load6.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not.i = icmp eq i32 %25, 0
  br i1 %tobool.not.i, label %do.body.preheader.i, label %if.then5.if.then8_crit_edge

if.then5.if.then8_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then8

do.body.preheader.i:                              ; preds = %if.then5
  %size.i = getelementptr inbounds %struct.sge, ptr %12, i32 0, i32 3, i32 1
  %genbit.i43 = getelementptr inbounds %struct.sge, ptr %12, i32 0, i32 3, i32 3
  %pure_rsps.i = getelementptr inbounds %struct.sge, ptr %12, i32 0, i32 14, i32 1
  br label %do.body.i

do.body.i:                                        ; preds = %if.end37.i.do.body.i_crit_edge, %do.body.preheader.i
  %e.0.i = phi ptr [ %e.1.i, %if.end37.i.do.body.i_crit_edge ], [ %arrayidx.i40, %do.body.preheader.i ]
  %flags.0.i = phi i32 [ %or.i, %if.end37.i.do.body.i_crit_edge ], [ 0, %do.body.preheader.i ]
  %cmdq_processed.sroa.0.0.i = phi i32 [ %add.i, %if.end37.i.do.body.i_crit_edge ], [ 0, %do.body.preheader.i ]
  %cmdq_processed.sroa.6.0.i = phi i32 [ %add19.i, %if.end37.i.do.body.i_crit_edge ], [ 0, %do.body.preheader.i ]
  %26 = ptrtoint ptr %e.0.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %bf.load9.i = load i32, ptr %e.0.i, align 4
  %bf.lshr10.i = lshr i32 %bf.load9.i, 28
  %or.i = or i32 %bf.lshr10.i, %flags.0.i
  %bf.lshr12.i = lshr i32 %bf.load9.i, 13
  %bf.clear13.i = and i32 %bf.lshr12.i, 31
  %add.i = add i32 %bf.clear13.i, %cmdq_processed.sroa.0.0.i
  %bf.lshr16.i = lshr i32 %bf.load9.i, 23
  %bf.clear17.i = and i32 %bf.lshr16.i, 31
  %add19.i = add i32 %bf.clear17.i, %cmdq_processed.sroa.6.0.i
  %incdec.ptr.i = getelementptr %struct.respQ_e, ptr %e.0.i, i32 1
  %27 = ptrtoint ptr %cidx.i38 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %cidx.i38, align 4
  %inc.i = add i16 %28, 1
  store i16 %inc.i, ptr %cidx.i38, align 4
  %conv.i44 = zext i16 %inc.i to i32
  %29 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %conv.i44)
  %cmp.i45 = icmp eq i32 %30, %conv.i44
  br i1 %cmp.i45, label %if.then24.i, label %do.body.i.if.end29.i_crit_edge, !prof !118

do.body.i.if.end29.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29.i

if.then24.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %31 = ptrtoint ptr %cidx.i38 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 0, ptr %cidx.i38, align 4
  %32 = ptrtoint ptr %genbit.i43 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %genbit.i43, align 2
  %34 = xor i8 %33, 1
  store i8 %34, ptr %genbit.i43, align 2
  %35 = ptrtoint ptr %entries.i37 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %entries.i37, align 4
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.then24.i, %do.body.i.if.end29.i_crit_edge
  %e.1.i = phi ptr [ %36, %if.then24.i ], [ %incdec.ptr.i, %do.body.i.if.end29.i_crit_edge ]
  tail call void asm sideeffect "pld\09${0:a}", "r"(ptr %e.1.i) #13, !srcloc !136
  %37 = ptrtoint ptr %respQ.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %respQ.i, align 4
  %inc30.i = add i32 %38, 1
  store i32 %inc30.i, ptr %respQ.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %inc30.i)
  %cmp31.i = icmp ugt i32 %inc30.i, 256
  br i1 %cmp31.i, label %do.body34.i, label %if.end29.i.if.end37.i_crit_edge

if.end29.i.if.end37.i_crit_edge:                  ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end37.i

do.body34.i:                                      ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !145
  tail call void @arm_heavy_mb() #13
  %39 = ptrtoint ptr %respQ.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %respQ.i, align 4
  %41 = tail call i32 @llvm.bswap.i32(i32 %40) #13
  %42 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %data, align 128
  %add.ptr.i = getelementptr i8, ptr %43, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %41) #13, !srcloc !115
  %44 = ptrtoint ptr %respQ.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %respQ.i, align 4
  br label %if.end37.i

if.end37.i:                                       ; preds = %do.body34.i, %if.end29.i.if.end37.i_crit_edge
  %45 = ptrtoint ptr %pure_rsps.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %pure_rsps.i, align 4
  %inc38.i = add i32 %46, 1
  store i32 %inc38.i, ptr %pure_rsps.i, align 4
  %47 = ptrtoint ptr %e.1.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %bf.load40.i = load i32, ptr %e.1.i, align 4
  %bf.clear41.i = and i32 %bf.load40.i, 1
  %48 = ptrtoint ptr %genbit.i43 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %genbit.i43, align 2
  %conv43.i = zext i8 %49 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.clear41.i, i32 %conv43.i)
  %cmp44.i = icmp eq i32 %bf.clear41.i, %conv43.i
  %50 = and i32 %bf.load40.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool49.not.i = icmp eq i32 %50, 0
  %or.cond.i = and i1 %tobool49.not.i, %cmp44.i
  br i1 %or.cond.i, label %if.end37.i.do.body.i_crit_edge, label %process_pure_responses.exit

if.end37.i.do.body.i_crit_edge:                   ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i

process_pure_responses.exit:                      ; preds = %if.end37.i
  %call.i = tail call fastcc i32 @update_tx_info(ptr noundef %data, i32 noundef %or.i, i32 noundef %add.i) #13
  %processed.i = getelementptr %struct.sge, ptr %12, i32 0, i32 18, i32 1, i32 3
  %51 = ptrtoint ptr %processed.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %processed.i, align 4
  %add56.i = add i32 %52, %add19.i
  store i32 %add56.i, ptr %processed.i, align 4
  %53 = ptrtoint ptr %e.1.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %bf.load57.i = load i32, ptr %e.1.i, align 4
  %bf.clear58.i = and i32 %bf.load57.i, 1
  %54 = ptrtoint ptr %genbit.i43 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %genbit.i43, align 2
  %conv60.i = zext i8 %55 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.clear58.i, i32 %conv60.i)
  %cmp61.i.not = icmp eq i32 %bf.clear58.i, %conv60.i
  br i1 %cmp61.i.not, label %process_pure_responses.exit.if.then8_crit_edge, label %do.body10

process_pure_responses.exit.if.then8_crit_edge:   ; preds = %process_pure_responses.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then8

if.then8:                                         ; preds = %process_pure_responses.exit.if.then8_crit_edge, %if.then5.if.then8_crit_edge
  tail call void @__napi_schedule(ptr noundef %napi) #13
  br label %cleanup

do.body10:                                        ; preds = %process_pure_responses.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !146
  tail call void @arm_heavy_mb() #13
  %56 = ptrtoint ptr %cidx.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %cidx.i, align 8
  %conv = zext i16 %57 to i32
  %58 = tail call i32 @llvm.bswap.i32(i32 %conv)
  %59 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %data, align 128
  %add.ptr14 = getelementptr i8, ptr %60, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 %58) #13, !srcloc !115
  tail call void @napi_enable(ptr noundef %napi) #13
  br label %cleanup

if.end17:                                         ; preds = %entry
  %async_lock = getelementptr inbounds %struct.adapter, ptr %data, i32 0, i32 20
  tail call void @_raw_spin_lock(ptr noundef %async_lock) #13
  %call18 = tail call i32 @t1_slow_intr_handler(ptr noundef %data) #13
  tail call void @_raw_spin_unlock(ptr noundef %async_lock) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp = icmp eq i32 %call18, 0
  br i1 %cmp, label %if.then21, label %if.end17.cleanup_crit_edge

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then21:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #15
  %unhandled_irqs = getelementptr inbounds %struct.sge, ptr %1, i32 0, i32 14, i32 2
  %61 = ptrtoint ptr %unhandled_irqs to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %unhandled_irqs, align 8
  %inc = add i32 %62, 1
  store i32 %inc, ptr %unhandled_irqs, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then21, %if.end17.cleanup_crit_edge, %do.body10, %if.then8, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then8 ], [ 1, %do.body10 ], [ 1, %do.body.cleanup_crit_edge ], [ 0, %if.then21 ], [ %call18, %if.end17.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_schedule_prep(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t1_slow_intr_handler(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @t1_start_xmit(ptr noundef %skb, ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %ml_priv = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 128
  %0 = ptrtoint ptr %ml_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ml_priv, align 8
  %sge1 = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %sge1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sge1, align 8
  %if_port = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 52
  %4 = ptrtoint ptr %if_port to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %if_port, align 2
  %idxprom = zext i8 %5 to i32
  %arrayidx = getelementptr %struct.sge, ptr %3, i32 0, i32 15, i32 %idxprom
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %8 = ptrtoint ptr %7 to i32
  %9 = tail call i32 @llvm.read_register.i32(metadata !101) #13
  %and.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cpu, align 4
  %arrayidx3 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %12
  %13 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx3, align 4
  %add = add i32 %14, %8
  %15 = inttoptr i32 %add to ptr
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %16 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %protocol, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 15, i16 %17)
  %cmp = icmp eq i16 %17, 15
  br i1 %cmp, label %entry.send_crit_edge, label %if.end

entry.send_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %send

if.end:                                           ; preds = %entry
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %18 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %20 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %19 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %21 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %hard_header_len = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 19
  %22 = ptrtoint ptr %hard_header_len to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %hard_header_len, align 2
  %conv6 = zext i16 %23 to i32
  %sub = add nsw i32 %conv6, -14
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i, i32 %sub)
  %cmp7 = icmp ult i32 %sub.ptr.sub.i, %sub
  br i1 %cmp7, label %if.then10, label %if.end.if.end15_crit_edge, !prof !118

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

if.then10:                                        ; preds = %if.end
  %call11 = tail call ptr @skb_realloc_headroom(ptr noundef %skb, i32 noundef 16) #13
  %tx_need_hdrroom = getelementptr inbounds %struct.sge_port_stats, ptr %15, i32 0, i32 5
  %24 = ptrtoint ptr %tx_need_hdrroom to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %tx_need_hdrroom, align 8
  %inc = add i64 %25, 1
  store i64 %inc, ptr %tx_need_hdrroom, align 8
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #13
  %tobool12.not = icmp eq ptr %call11, null
  br i1 %tobool12.not, label %if.then10.cleanup_crit_edge, label %if.then10.if.end15_crit_edge

if.then10.if.end15_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

if.then10.cleanup_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end15:                                         ; preds = %if.then10.if.end15_crit_edge, %if.end.if.end15_crit_edge
  %skb.addr.0 = phi ptr [ %call11, %if.then10.if.end15_crit_edge ], [ %skb, %if.end.if.end15_crit_edge ]
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 17
  %26 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %end.i, align 4
  %gso_size = getelementptr inbounds %struct.skb_shared_info, ptr %27, i32 0, i32 4
  %28 = ptrtoint ptr %gso_size to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %gso_size, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %tobool17.not = icmp eq i16 %29, 0
  br i1 %tobool17.not, label %if.else, label %if.then18

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  %tx_tso = getelementptr inbounds %struct.sge_port_stats, ptr %15, i32 0, i32 2
  %30 = ptrtoint ptr %tx_tso to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %tx_tso, align 8
  %inc19 = add i64 %31, 1
  store i64 %inc19, ptr %tx_tso, align 8
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 18
  %32 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 15, i32 0, i32 20
  %34 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %35 to i32
  %add.ptr.i.i = getelementptr i8, ptr %33, i32 %conv.i.i
  %data.i295 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 19
  %36 = ptrtoint ptr %data.i295 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %data.i295, align 4
  %sub.ptr.lhs.cast.i296 = ptrtoint ptr %add.ptr.i.i to i32
  %sub.ptr.rhs.cast.i297 = ptrtoint ptr %37 to i32
  %sub.ptr.sub.i298 = sub i32 %sub.ptr.lhs.cast.i296, %sub.ptr.rhs.cast.i297
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %sub.ptr.sub.i298)
  %cmp21.not = icmp eq i32 %sub.ptr.sub.i298, 14
  %call23 = tail call ptr @skb_push(ptr noundef %skb.addr.0, i32 noundef 16) #13
  %38 = ptrtoint ptr %call23 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 -74, ptr %call23, align 4
  %l4_csum_dis = getelementptr inbounds %struct.cpl_tx_pkt_lso, ptr %call23, i32 0, i32 1
  %39 = ptrtoint ptr %l4_csum_dis to i32
  call void @__asan_load1_noabort(i32 %39)
  %bf.load = load i8, ptr %l4_csum_dis, align 1
  %bf.clear25 = and i8 %bf.load, -49
  store i8 %bf.clear25, ptr %l4_csum_dis, align 1
  %40 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %head.i.i, align 8
  %42 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i301 = zext i16 %43 to i32
  %add.ptr.i.i302 = getelementptr i8, ptr %41, i32 %conv.i.i301
  %44 = ptrtoint ptr %add.ptr.i.i302 to i32
  call void @__asan_load1_noabort(i32 %44)
  %bf.load28 = load i8, ptr %add.ptr.i.i302, align 4
  %ip_hdr_words = getelementptr inbounds %struct.cpl_tx_pkt_lso, ptr %call23, i32 0, i32 5
  %45 = ptrtoint ptr %ip_hdr_words to i32
  call void @__asan_load1_noabort(i32 %45)
  %bf.load30 = load i8, ptr %ip_hdr_words, align 1
  %bf.shl = shl i8 %bf.load28, 4
  %bf.clear31 = and i8 %bf.load30, 15
  %bf.set32 = or i8 %bf.clear31, %bf.shl
  store i8 %bf.set32, ptr %ip_hdr_words, align 1
  %46 = load ptr, ptr %head.i.i, align 8
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 15, i32 0, i32 19
  %47 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i304 = zext i16 %48 to i32
  %add.ptr.i.i305 = getelementptr i8, ptr %46, i32 %conv.i.i304
  %doff = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i305, i32 0, i32 4
  %49 = ptrtoint ptr %doff to i32
  call void @__asan_load2_noabort(i32 %49)
  %bf.load34 = load i16, ptr %doff, align 4
  %bf.lshr = lshr i16 %bf.load34, 12
  %conv35 = trunc i16 %bf.lshr to i8
  %bf.set39 = or i8 %bf.shl, %conv35
  store i8 %bf.set39, ptr %ip_hdr_words, align 1
  %50 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %end.i, align 4
  %gso_size41 = getelementptr inbounds %struct.skb_shared_info, ptr %51, i32 0, i32 4
  %52 = ptrtoint ptr %gso_size41 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %gso_size41, align 4
  %54 = and i16 %53, 16383
  %shl = select i1 %cmp21.not, i16 0, i16 16384
  %or = or i16 %54, %shl
  %eth_type_mss = getelementptr inbounds %struct.cpl_tx_pkt_lso, ptr %call23, i32 0, i32 6
  %55 = ptrtoint ptr %eth_type_mss to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %or, ptr %eth_type_mss, align 2
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 6
  %56 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %len, align 4
  %sub44 = add i32 %57, -16
  %len45 = getelementptr inbounds %struct.cpl_tx_pkt_lso, ptr %call23, i32 0, i32 3
  %58 = ptrtoint ptr %len45 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %sub44, ptr %len45, align 4
  br label %if.end189

if.else:                                          ; preds = %if.end15
  %len46 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 6
  %59 = ptrtoint ptr %len46 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %len46, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %60)
  %cmp47 = icmp ult i32 %60, 14
  br i1 %cmp47, label %if.else.do.body62_crit_edge, label %lor.rhs, !prof !118

if.else.do.body62_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body62

lor.rhs:                                          ; preds = %if.else
  %mtu = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 20
  %61 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %mtu, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 19
  %63 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %data, align 4
  %h_proto.i = getelementptr inbounds %struct.ethhdr, ptr %64, i32 0, i32 2
  %65 = ptrtoint ptr %h_proto.i to i32
  call void @__asan_loadN_noabort(i32 %65, i32 2)
  %66 = load i16, ptr %h_proto.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32512, i16 %66)
  %cmp.i = icmp eq i16 %66, -32512
  %cond.i = select i1 %cmp.i, i32 18, i32 14
  %add51 = add i32 %cond.i, %62
  call void @__sanitizer_cov_trace_cmp4(i32 %60, i32 %add51)
  %cmp52 = icmp ugt i32 %60, %add51
  br i1 %cmp52, label %lor.rhs.do.body62_crit_edge, label %if.end82, !prof !118

lor.rhs.do.body62_crit_edge:                      ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body62

do.body62:                                        ; preds = %lor.rhs.do.body62_crit_edge, %if.else.do.body62_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @t1_start_xmit.__UNIQUE_ID_ddebug504, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@t1_start_xmit, %if.then72)) #13
          to label %cleanup.sink.split [label %if.then72], !srcloc !111

if.then72:                                        ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #15
  %67 = ptrtoint ptr %len46 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %len46, align 4
  %data74 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 19
  %69 = ptrtoint ptr %data74 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %data74, align 4
  %h_proto.i307 = getelementptr inbounds %struct.ethhdr, ptr %70, i32 0, i32 2
  %71 = ptrtoint ptr %h_proto.i307 to i32
  call void @__asan_loadN_noabort(i32 %71, i32 2)
  %72 = load i16, ptr %h_proto.i307, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32512, i16 %72)
  %cmp.i308 = icmp eq i16 %72, -32512
  %cond.i309 = select i1 %cmp.i308, i32 18, i32 14
  %mtu76 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 20
  %73 = ptrtoint ptr %mtu76 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %mtu76, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @t1_start_xmit.__UNIQUE_ID_ddebug504, ptr noundef %dev, ptr noundef nonnull @.str.18, i32 noundef %68, i32 noundef %cond.i309, i32 noundef %74) #13
  br label %cleanup.sink.split

if.end82:                                         ; preds = %lor.rhs
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 15
  %75 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %75)
  %bf.load83 = load i16, ptr %ip_summed, align 8
  %76 = and i16 %bf.load83, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %76)
  %cmp87 = icmp eq i16 %76, 1536
  br i1 %cmp87, label %land.lhs.true, label %if.end82.if.end124_crit_edge

if.end82.if.end124_crit_edge:                     ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end124

land.lhs.true:                                    ; preds = %if.end82
  %head.i.i310 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 18
  %77 = ptrtoint ptr %head.i.i310 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %head.i.i310, align 8
  %network_header.i.i311 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 15, i32 0, i32 20
  %79 = ptrtoint ptr %network_header.i.i311 to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %network_header.i.i311, align 4
  %conv.i.i312 = zext i16 %80 to i32
  %add.ptr.i.i313 = getelementptr i8, ptr %78, i32 %conv.i.i312
  %protocol90 = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i313, i32 0, i32 6
  %81 = ptrtoint ptr %protocol90 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %protocol90, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %82)
  %cmp92 = icmp eq i8 %82, 17
  br i1 %cmp92, label %if.then94, label %land.lhs.true.if.end124_crit_edge

land.lhs.true.if.end124_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end124

if.then94:                                        ; preds = %land.lhs.true
  %call95 = tail call i32 @skb_checksum_help(ptr noundef %skb.addr.0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95)
  %tobool96.not = icmp eq i32 %call95, 0
  br i1 %tobool96.not, label %if.then94.if.end124_crit_edge, label %do.body105, !prof !112

if.then94.if.end124_crit_edge:                    ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end124

do.body105:                                       ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @t1_start_xmit.__UNIQUE_ID_ddebug505, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@t1_start_xmit, %if.then117)) #13
          to label %cleanup.sink.split [label %if.then117], !srcloc !111

if.then117:                                       ; preds = %do.body105
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @t1_start_xmit.__UNIQUE_ID_ddebug505, ptr noundef %dev, ptr noundef nonnull @.str.19) #13
  br label %cleanup.sink.split

if.end124:                                        ; preds = %if.then94.if.end124_crit_edge, %land.lhs.true.if.end124_crit_edge, %if.end82.if.end124_crit_edge
  %83 = ptrtoint ptr %sge1 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %sge1, align 8
  %85 = ptrtoint ptr %if_port to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %if_port, align 2
  %idxprom127 = zext i8 %86 to i32
  %arrayidx128 = getelementptr %struct.sge, ptr %84, i32 0, i32 12, i32 %idxprom127
  %87 = ptrtoint ptr %arrayidx128 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %arrayidx128, align 4
  %tobool129.not = icmp eq ptr %88, null
  br i1 %tobool129.not, label %if.then138, label %if.end124.if.end156_crit_edge, !prof !118

if.end124.if.end156_crit_edge:                    ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end156

if.then138:                                       ; preds = %if.end124
  %protocol139 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 15, i32 0, i32 18
  %89 = ptrtoint ptr %protocol139 to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %protocol139, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 2054, i16 %90)
  %cmp141 = icmp eq i16 %90, 2054
  br i1 %cmp141, label %land.lhs.true143, label %if.then138.if.end156_crit_edge

if.then138.if.end156_crit_edge:                   ; preds = %if.then138
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end156

land.lhs.true143:                                 ; preds = %if.then138
  %head.i.i314 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 18
  %91 = ptrtoint ptr %head.i.i314 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %head.i.i314, align 8
  %network_header.i.i315 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 15, i32 0, i32 20
  %93 = ptrtoint ptr %network_header.i.i315 to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %network_header.i.i315, align 4
  %conv.i.i316 = zext i16 %94 to i32
  %add.ptr.i.i317 = getelementptr i8, ptr %92, i32 %conv.i.i316
  %ar_op = getelementptr inbounds %struct.arphdr, ptr %add.ptr.i.i317, i32 0, i32 4
  %95 = ptrtoint ptr %ar_op to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %ar_op, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %96)
  %cmp146 = icmp eq i16 %96, 1
  br i1 %cmp146, label %if.then148, label %land.lhs.true143.if.end156_crit_edge

land.lhs.true143.if.end156_crit_edge:             ; preds = %land.lhs.true143
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end156

if.then148:                                       ; preds = %land.lhs.true143
  call void @__sanitizer_cov_trace_pc() #15
  %97 = ptrtoint ptr %arrayidx128 to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %skb.addr.0, ptr %arrayidx128, align 4
  %call154 = tail call fastcc ptr @skb_get(ptr noundef %skb.addr.0)
  br label %if.end156

if.end156:                                        ; preds = %if.then148, %land.lhs.true143.if.end156_crit_edge, %if.then138.if.end156_crit_edge, %if.end124.if.end156_crit_edge
  %98 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %data, align 4
  %add.ptr.i = getelementptr i8, ptr %99, i32 -8
  store ptr %add.ptr.i, ptr %data, align 4
  %100 = ptrtoint ptr %len46 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %len46, align 4
  %add.i = add i32 %101, 8
  store i32 %add.i, ptr %len46, align 4
  %102 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 -78, ptr %add.ptr.i, align 2
  %ip_csum_dis159 = getelementptr i8, ptr %99, i32 -7
  %103 = ptrtoint ptr %ip_csum_dis159 to i32
  call void @__asan_load1_noabort(i32 %103)
  %bf.load160 = load i8, ptr %ip_csum_dis159, align 1
  %bf.set162 = or i8 %bf.load160, 16
  store i8 %bf.set162, ptr %ip_csum_dis159, align 1
  %104 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %104)
  %bf.load164 = load i16, ptr %ip_summed, align 8
  %105 = and i16 %bf.load164, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %105)
  %cmp169.not = icmp eq i16 %105, 1536
  %bf.shl176 = select i1 %cmp169.not, i8 0, i8 32
  %bf.clear177 = and i8 %bf.set162, -33
  %bf.set178 = or i8 %bf.shl176, %bf.clear177
  %106 = ptrtoint ptr %ip_csum_dis159 to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 %bf.set178, ptr %ip_csum_dis159, align 1
  %107 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %107)
  %bf.load180 = load i16, ptr %ip_summed, align 8
  %108 = and i16 %bf.load180, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %108)
  %cmp185 = icmp eq i16 %108, 1536
  %109 = zext i1 %cmp185 to i64
  %tx_cso = getelementptr inbounds %struct.sge_port_stats, ptr %15, i32 0, i32 1
  %110 = ptrtoint ptr %tx_cso to i32
  call void @__asan_load8_noabort(i32 %110)
  %111 = load i64, ptr %tx_cso, align 8
  %add188 = add i64 %111, %109
  store i64 %add188, ptr %tx_cso, align 8
  br label %if.end189

if.end189:                                        ; preds = %if.end156, %if.then18
  %cpl.0 = phi ptr [ %call23, %if.then18 ], [ %add.ptr.i, %if.end156 ]
  %112 = ptrtoint ptr %if_port to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %if_port, align 2
  %iff = getelementptr inbounds %struct.cpl_tx_pkt, ptr %cpl.0, i32 0, i32 1
  %114 = ptrtoint ptr %iff to i32
  call void @__asan_load1_noabort(i32 %114)
  %bf.load191 = load i8, ptr %iff, align 1
  %bf.value192 = and i8 %113, 15
  %bf.clear193 = and i8 %bf.load191, -16
  %bf.set194 = or i8 %bf.clear193, %bf.value192
  store i8 %bf.set194, ptr %iff, align 1
  %vlan_present = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 15, i32 0, i32 3
  %115 = ptrtoint ptr %vlan_present to i32
  call void @__asan_loadN_noabort(i32 %115, i32 4)
  %bf.load195 = load i32, ptr %vlan_present, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load195)
  %tobool198.not = icmp sgt i32 %bf.load195, -1
  br i1 %tobool198.not, label %if.else204, label %if.then199

if.then199:                                       ; preds = %if.end189
  call void @__sanitizer_cov_trace_pc() #15
  %bf.set202 = or i8 %bf.set194, 64
  %116 = ptrtoint ptr %iff to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 %bf.set202, ptr %iff, align 1
  %vlan_tci = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 15, i32 0, i32 10
  %117 = ptrtoint ptr %vlan_tci to i32
  call void @__asan_load2_noabort(i32 %117)
  %118 = load i16, ptr %vlan_tci, align 2
  %vlan = getelementptr inbounds %struct.cpl_tx_pkt, ptr %cpl.0, i32 0, i32 2
  %119 = ptrtoint ptr %vlan to i32
  call void @__asan_store2_noabort(i32 %119)
  store i16 %118, ptr %vlan, align 2
  %vlan_insert = getelementptr inbounds %struct.sge_port_stats, ptr %15, i32 0, i32 4
  %120 = ptrtoint ptr %vlan_insert to i32
  call void @__asan_load8_noabort(i32 %120)
  %121 = load i64, ptr %vlan_insert, align 8
  %inc203 = add i64 %121, 1
  store i64 %inc203, ptr %vlan_insert, align 8
  br label %send

if.else204:                                       ; preds = %if.end189
  call void @__sanitizer_cov_trace_pc() #15
  %bf.clear207 = and i8 %bf.set194, -65
  %122 = ptrtoint ptr %iff to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 %bf.clear207, ptr %iff, align 1
  br label %send

send:                                             ; preds = %if.else204, %if.then199, %entry.send_crit_edge
  %skb.addr.3 = phi ptr [ %skb, %entry.send_crit_edge ], [ %skb.addr.0, %if.then199 ], [ %skb.addr.0, %if.else204 ]
  %call210 = tail call fastcc i32 @t1_sge_tx(ptr noundef %skb.addr.3, ptr noundef %1, ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call210)
  %cmp211.not = icmp ne i32 %call210, 0
  %cmp213 = icmp ne ptr %skb.addr.3, %skb
  %spec.select = and i1 %cmp213, %cmp211.not
  br i1 %spec.select, label %send.cleanup.sink.split_crit_edge, label %send.cleanup_crit_edge, !prof !118

send.cleanup_crit_edge:                           ; preds = %send
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

send.cleanup.sink.split_crit_edge:                ; preds = %send
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %send.cleanup.sink.split_crit_edge, %if.then117, %do.body105, %if.then72, %do.body62
  %skb.addr.3.sink = phi ptr [ %skb.addr.0, %do.body62 ], [ %skb.addr.0, %if.then72 ], [ %skb.addr.0, %do.body105 ], [ %skb.addr.0, %if.then117 ], [ %skb.addr.3, %send.cleanup.sink.split_crit_edge ]
  tail call void @__dev_kfree_skb_any(ptr noundef %skb.addr.3.sink, i32 noundef 1) #13
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %send.cleanup_crit_edge, %if.then10.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then10.cleanup_crit_edge ], [ %call210, %send.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_realloc_headroom(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_checksum_help(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @skb_get(ptr noundef returned %skb) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %users = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 21
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %users, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %users, i32 1, i32 3, i32 1) #13
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users, ptr %users, i32 1, ptr elementtype(i32) %users) #13, !srcloc !147
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %entry.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !118

entry.if.end15.sink.split.i.i.i_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %entry
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %1 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.refcount_inc.exit_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !112

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.refcount_inc.exit_crit_edge:        ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %refcount_inc.exit

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %entry.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %users, i32 noundef %.sink.i.i.i) #13
  br label %refcount_inc.exit

refcount_inc.exit:                                ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.refcount_inc.exit_crit_edge
  ret ptr %skb
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @t1_sge_tx(ptr noundef %skb, ptr nocapture noundef readonly %adapter, ptr nocapture noundef readonly %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %sge1 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 9
  %0 = ptrtoint ptr %sge1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sge1, align 8
  %cmdQ = getelementptr inbounds %struct.sge, ptr %1, i32 0, i32 18
  %lock = getelementptr inbounds %struct.sge, ptr %1, i32 0, i32 18, i32 0, i32 13
  tail call void @_raw_spin_lock(ptr noundef %lock) #13
  tail call fastcc void @reclaim_completed_tx(ptr noundef %1, ptr noundef %cmdQ)
  %pidx2 = getelementptr inbounds %struct.sge, ptr %1, i32 0, i32 18, i32 0, i32 6
  %size = getelementptr inbounds %struct.sge, ptr %1, i32 0, i32 18, i32 0, i32 2
  %2 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size, align 4
  %in_use = getelementptr inbounds %struct.sge, ptr %1, i32 0, i32 18, i32 0, i32 1
  %4 = ptrtoint ptr %in_use to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %in_use, align 4
  %sub = sub i32 %3, %5
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %6 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %end.i, align 4
  %nr_frags = getelementptr inbounds %struct.skb_shared_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %nr_frags to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %nr_frags, align 2
  %conv3 = zext i8 %9 to i32
  %add = add nuw nsw i32 %conv3, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %conv3)
  %cmp.not = icmp ugt i32 %sub, %conv3
  br i1 %cmp.not, label %if.end14, label %if.then, !prof !112

if.then:                                          ; preds = %entry
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %10 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %11, i32 0, i32 13
  %12 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %state.i.i, align 4
  %and1.i.i.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.i.not = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.i.not, label %if.then9, label %if.then.cleanup.sink.split_crit_edge

if.then.cleanup.sink.split_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

if.then9:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #13
  %if_port = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 52
  %14 = ptrtoint ptr %if_port to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %if_port, align 2
  %conv10 = zext i8 %15 to i32
  %stopped_tx_queues = getelementptr inbounds %struct.sge, ptr %1, i32 0, i32 4
  tail call void @_set_bit(i32 noundef %conv10, ptr noundef %stopped_tx_queues) #13
  %arrayidx11 = getelementptr %struct.sge, ptr %1, i32 0, i32 14, i32 8, i32 2
  %16 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx11, align 8
  %inc = add i32 %17, 1
  store i32 %inc, ptr %arrayidx11, align 8
  %name = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 5
  %18 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %name, align 4
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %19) #17
  br label %cleanup.sink.split

if.end14:                                         ; preds = %entry
  %sub15 = sub i32 %sub, %add
  %stop_thres = getelementptr inbounds %struct.sge, ptr %1, i32 0, i32 18, i32 0, i32 5
  %20 = ptrtoint ptr %stop_thres to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %stop_thres, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub15, i32 %21)
  %cmp16 = icmp ult i32 %sub15, %21
  br i1 %cmp16, label %if.then24, label %if.end14.if.end32_crit_edge, !prof !118

if.end14.if.end32_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end32

if.then24:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  %_tx.i.i3 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %22 = ptrtoint ptr %_tx.i.i3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %_tx.i.i3, align 128
  %state.i.i4 = getelementptr inbounds %struct.netdev_queue, ptr %23, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i4) #13
  %if_port25 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 52
  %24 = ptrtoint ptr %if_port25 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %if_port25, align 2
  %conv26 = zext i8 %25 to i32
  %stopped_tx_queues27 = getelementptr inbounds %struct.sge, ptr %1, i32 0, i32 4
  tail call void @_set_bit(i32 noundef %conv26, ptr noundef %stopped_tx_queues27) #13
  %arrayidx30 = getelementptr %struct.sge, ptr %1, i32 0, i32 14, i32 8, i32 2
  %26 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx30, align 8
  %inc31 = add i32 %27, 1
  store i32 %inc31, ptr %arrayidx30, align 8
  br label %if.end32

if.end32:                                         ; preds = %if.then24, %if.end14.if.end32_crit_edge
  %tx_sched = getelementptr inbounds %struct.sge, ptr %1, i32 0, i32 16
  %28 = ptrtoint ptr %tx_sched to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %tx_sched, align 16
  %tobool33.not = icmp eq ptr %29, null
  br i1 %tobool33.not, label %if.end32.if.end51_crit_edge, label %land.lhs.true35

if.end32.if.end51_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end51

land.lhs.true35:                                  ; preds = %if.end32
  %30 = getelementptr inbounds %struct.anon.51, ptr %skb, i32 0, i32 2
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 8
  %tobool36.not = icmp eq ptr %32, null
  br i1 %tobool36.not, label %land.lhs.true35.if.end51_crit_edge, label %land.lhs.true35.use_sched_crit_edge

land.lhs.true35.use_sched_crit_edge:              ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #15
  br label %use_sched

land.lhs.true35.if.end51_crit_edge:               ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end51

use_sched:                                        ; preds = %if.then96, %land.lhs.true35.use_sched_crit_edge
  %skb.addr.0 = phi ptr [ null, %if.then96 ], [ %skb, %land.lhs.true35.use_sched_crit_edge ]
  %credits.0 = phi i32 [ %sub99, %if.then96 ], [ %sub, %land.lhs.true35.use_sched_crit_edge ]
  %call38 = tail call fastcc ptr @sched_skb(ptr noundef %1, ptr noundef %skb.addr.0, i32 noundef %credits.0)
  %tobool39.not = icmp eq ptr %call38, null
  br i1 %tobool39.not, label %use_sched.cleanup.sink.split_crit_edge, label %if.end42

use_sched.cleanup.sink.split_crit_edge:           ; preds = %use_sched
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

if.end42:                                         ; preds = %use_sched
  call void @__sanitizer_cov_trace_pc() #15
  %end.i5 = getelementptr inbounds %struct.sk_buff, ptr %call38, i32 0, i32 17
  %33 = ptrtoint ptr %end.i5 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %end.i5, align 4
  %nr_frags46 = getelementptr inbounds %struct.skb_shared_info, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %nr_frags46 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %nr_frags46, align 2
  %conv47 = zext i8 %36 to i32
  %add48 = add nuw nsw i32 %conv47, 1
  br label %if.end51

if.end51:                                         ; preds = %if.end42, %land.lhs.true35.if.end51_crit_edge, %if.end32.if.end51_crit_edge
  %skb.addr.1 = phi ptr [ %call38, %if.end42 ], [ %skb, %land.lhs.true35.if.end51_crit_edge ], [ %skb, %if.end32.if.end51_crit_edge ]
  %count.0 = phi i32 [ %add48, %if.end42 ], [ %add, %land.lhs.true35.if.end51_crit_edge ], [ %add, %if.end32.if.end51_crit_edge ]
  %tobool91.not = phi i1 [ false, %if.end42 ], [ true, %land.lhs.true35.if.end51_crit_edge ], [ true, %if.end32.if.end51_crit_edge ]
  %37 = ptrtoint ptr %in_use to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %in_use, align 4
  %add53 = add i32 %38, %count.0
  store i32 %add53, ptr %in_use, align 4
  %genbit54 = getelementptr inbounds %struct.sge, ptr %1, i32 0, i32 18, i32 0, i32 8
  %39 = ptrtoint ptr %genbit54 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %genbit54, align 4
  %conv55 = zext i8 %40 to i32
  %41 = ptrtoint ptr %pidx2 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %pidx2, align 4
  %conv57 = zext i16 %42 to i32
  %43 = trunc i32 %count.0 to i16
  %conv61 = add i16 %42, %43
  store i16 %conv61, ptr %pidx2, align 4
  %conv63 = zext i16 %conv61 to i32
  %44 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %conv63)
  %cmp65.not = icmp ugt i32 %45, %conv63
  br i1 %cmp65.not, label %if.end51.if.end76_crit_edge, label %if.then67

if.end51.if.end76_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end76

if.then67:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #15
  %46 = trunc i32 %45 to i16
  %conv72 = sub i16 %conv61, %46
  %47 = ptrtoint ptr %pidx2 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %conv72, ptr %pidx2, align 4
  %48 = xor i8 %40, 1
  %49 = ptrtoint ptr %genbit54 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %48, ptr %genbit54, align 4
  br label %if.end76

if.end76:                                         ; preds = %if.then67, %if.end51.if.end76_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #13
  tail call fastcc void @write_tx_descs(ptr noundef %adapter, ptr noundef %skb.addr.1, i32 noundef %conv57, i32 noundef %conv55, ptr noundef %cmdQ)
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %cmdQ) #13
  %call81 = tail call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %cmdQ) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %cmp82 = icmp eq i32 %call81, 0
  br i1 %cmp82, label %if.then84, label %if.end76.if.end90_crit_edge

if.end76.if.end90_crit_edge:                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end90

if.then84:                                        ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_set_bit(i32 noundef 2, ptr noundef %cmdQ) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !148
  tail call void @arm_heavy_mb() #13
  %50 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %adapter, align 128
  %add.ptr = getelementptr i8, ptr %51, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 16777216) #13, !srcloc !115
  br label %if.end90

if.end90:                                         ; preds = %if.then84, %if.end76.if.end90_crit_edge
  br i1 %tobool91.not, label %if.end90.cleanup_crit_edge, label %if.then92

if.end90.cleanup_crit_edge:                       ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then92:                                        ; preds = %if.end90
  %call.i = tail call i32 @_raw_spin_trylock(ptr noundef %lock) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool95.not = icmp eq i32 %call.i, 0
  br i1 %tobool95.not, label %if.then92.cleanup_crit_edge, label %if.then96

if.then92.cleanup_crit_edge:                      ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then96:                                        ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #15
  %52 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %size, align 4
  %54 = ptrtoint ptr %in_use to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %in_use, align 4
  %sub99 = sub i32 %53, %55
  br label %use_sched

cleanup.sink.split:                               ; preds = %use_sched.cleanup.sink.split_crit_edge, %if.then9, %if.then.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ 16, %if.then9 ], [ 16, %if.then.cleanup.sink.split_crit_edge ], [ 0, %use_sched.cleanup.sink.split_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %lock) #13
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then92.cleanup_crit_edge, %if.end90.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then92.cleanup_crit_edge ], [ 0, %if.end90.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @t1_sge_set_coalesce_params(ptr nocapture noundef %sge, ptr nocapture noundef readonly %p) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_coalesce_usecs = getelementptr inbounds %struct.sge_params, ptr %p, i32 0, i32 3
  %0 = ptrtoint ptr %rx_coalesce_usecs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rx_coalesce_usecs, align 4
  %2 = ptrtoint ptr %sge to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sge, align 128
  %brd_info.i = getelementptr inbounds %struct.adapter, ptr %3, i32 0, i32 8, i32 4
  %4 = ptrtoint ptr %brd_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %brd_info.i, align 4
  %clock_core.i = getelementptr inbounds %struct.board_info, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %clock_core.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %clock_core.i, align 4
  %div.i = udiv i32 %7, 1000000
  %mul = mul i32 %div.i, %1
  %fixed_intrtimer = getelementptr inbounds %struct.sge, ptr %sge, i32 0, i32 8
  %8 = ptrtoint ptr %fixed_intrtimer to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %mul, ptr %fixed_intrtimer, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !149
  tail call void @arm_heavy_mb() #13
  %9 = ptrtoint ptr %fixed_intrtimer to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %fixed_intrtimer, align 4
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %12 = ptrtoint ptr %sge to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sge, align 128
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 128
  %add.ptr = getelementptr i8, ptr %15, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %11) #13, !srcloc !115
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @t1_sge_configure(ptr noundef %sge, ptr nocapture noundef %p) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sge to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sge, align 128
  %pdev1.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pdev1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev1.i, align 4
  %rx_pkt_pad.i = getelementptr inbounds %struct.sge, ptr %sge, i32 0, i32 5
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %genbit.i = getelementptr %struct.sge, ptr %sge, i32 0, i32 2, i32 0, i32 7
  %4 = ptrtoint ptr %genbit.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %genbit.i, align 2
  %arrayidx2.i = getelementptr %struct.sge_params, ptr %p, i32 0, i32 1, i32 0
  %5 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx2.i, align 4
  %size3.i = getelementptr %struct.sge, ptr %sge, i32 0, i32 2, i32 0, i32 1
  %7 = ptrtoint ptr %size3.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %size3.i, align 4
  %8 = ptrtoint ptr %rx_pkt_pad.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rx_pkt_pad.i, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i = icmp eq i32 %9, 0
  %conv.i = select i1 %tobool.not.i, i16 2, i16 0
  %dma_offset.i = getelementptr %struct.sge, ptr %sge, i32 0, i32 2, i32 0, i32 5
  %10 = ptrtoint ptr %dma_offset.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv.i, ptr %dma_offset.i, align 2
  %mul.i = shl i32 %6, 4
  %dma_addr.i = getelementptr %struct.sge, ptr %sge, i32 0, i32 2, i32 0, i32 10
  %call.i.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev.i, i32 noundef %mul.i, ptr noundef %dma_addr.i, i32 noundef 3264, i32 noundef 0) #13
  %entries.i = getelementptr %struct.sge, ptr %sge, i32 0, i32 2, i32 0, i32 8
  %11 = ptrtoint ptr %entries.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i.i, ptr %entries.i, align 4
  %tobool6.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool6.not.i, label %entry.alloc_rx_resources.exit_crit_edge, label %if.end8.i.i.i

entry.alloc_rx_resources.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %alloc_rx_resources.exit

if.end8.i.i.i:                                    ; preds = %entry
  %12 = ptrtoint ptr %size3.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %size3.i, align 4
  %mul8.i = mul i32 %13, 12
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul8.i, i32 noundef 3520) #19
  %centries.i = getelementptr %struct.sge, ptr %sge, i32 0, i32 2, i32 0, i32 9
  %14 = ptrtoint ptr %centries.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call9.i.i.i, ptr %centries.i, align 4
  %tobool11.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool11.not.i, label %if.end8.i.i.i.alloc_rx_resources.exit_crit_edge, label %for.inc.i

if.end8.i.i.i.alloc_rx_resources.exit_crit_edge:  ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %alloc_rx_resources.exit

for.inc.i:                                        ; preds = %if.end8.i.i.i
  %genbit.1.i = getelementptr %struct.sge, ptr %sge, i32 0, i32 2, i32 1, i32 7
  %15 = ptrtoint ptr %genbit.1.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %genbit.1.i, align 2
  %arrayidx2.1.i = getelementptr %struct.sge_params, ptr %p, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %arrayidx2.1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx2.1.i, align 4
  %size3.1.i = getelementptr %struct.sge, ptr %sge, i32 0, i32 2, i32 1, i32 1
  %18 = ptrtoint ptr %size3.1.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %size3.1.i, align 4
  %19 = ptrtoint ptr %rx_pkt_pad.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rx_pkt_pad.i, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.1.i = icmp eq i32 %20, 0
  %conv.1.i = select i1 %tobool.not.1.i, i16 2, i16 0
  %dma_offset.1.i = getelementptr %struct.sge, ptr %sge, i32 0, i32 2, i32 1, i32 5
  %21 = ptrtoint ptr %dma_offset.1.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv.1.i, ptr %dma_offset.1.i, align 2
  %mul.1.i = shl i32 %17, 4
  %dma_addr.1.i = getelementptr %struct.sge, ptr %sge, i32 0, i32 2, i32 1, i32 10
  %call.i.1.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev.i, i32 noundef %mul.1.i, ptr noundef %dma_addr.1.i, i32 noundef 3264, i32 noundef 0) #13
  %entries.1.i = getelementptr %struct.sge, ptr %sge, i32 0, i32 2, i32 1, i32 8
  %22 = ptrtoint ptr %entries.1.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call.i.1.i, ptr %entries.1.i, align 4
  %tobool6.not.1.i = icmp eq ptr %call.i.1.i, null
  br i1 %tobool6.not.1.i, label %for.inc.i.alloc_rx_resources.exit_crit_edge, label %if.end8.i.i.1.i

for.inc.i.alloc_rx_resources.exit_crit_edge:      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %alloc_rx_resources.exit

if.end8.i.i.1.i:                                  ; preds = %for.inc.i
  %23 = ptrtoint ptr %size3.1.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %size3.1.i, align 4
  %mul8.1.i = mul i32 %24, 12
  %call9.i.i.1.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul8.1.i, i32 noundef 3520) #19
  %centries.1.i = getelementptr %struct.sge, ptr %sge, i32 0, i32 2, i32 1, i32 9
  %25 = ptrtoint ptr %centries.1.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call9.i.i.1.i, ptr %centries.1.i, align 4
  %tobool11.not.1.i = icmp eq ptr %call9.i.i.1.i, null
  br i1 %tobool11.not.1.i, label %if.end8.i.i.1.i.alloc_rx_resources.exit_crit_edge, label %for.inc.1.i

if.end8.i.i.1.i.alloc_rx_resources.exit_crit_edge: ; preds = %if.end8.i.i.1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %alloc_rx_resources.exit

for.inc.1.i:                                      ; preds = %if.end8.i.i.1.i
  %jumbo_fl.i = getelementptr inbounds %struct.sge, ptr %sge, i32 0, i32 6
  %26 = ptrtoint ptr %jumbo_fl.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %jumbo_fl.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool15.not.i = icmp eq i32 %27, 0
  %lnot.ext.i = zext i1 %tobool15.not.i to i32
  %dma_offset17.i = getelementptr %struct.sge, ptr %sge, i32 0, i32 2, i32 %lnot.ext.i, i32 5
  %28 = ptrtoint ptr %dma_offset17.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %dma_offset17.i, align 2
  %add.i = add i16 %29, 1552
  %rx_buffer_size.i = getelementptr %struct.sge, ptr %sge, i32 0, i32 2, i32 %lnot.ext.i, i32 4
  %30 = ptrtoint ptr %rx_buffer_size.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %add.i, ptr %rx_buffer_size.i, align 4
  %rx_buffer_size30.i = getelementptr %struct.sge, ptr %sge, i32 0, i32 2, i32 %27, i32 4
  %31 = ptrtoint ptr %rx_buffer_size30.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 16128, ptr %rx_buffer_size30.i, align 4
  %recycleq_idx.i = getelementptr %struct.sge, ptr %sge, i32 0, i32 2, i32 %lnot.ext.i, i32 6
  %32 = ptrtoint ptr %recycleq_idx.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 0, ptr %recycleq_idx.i, align 8
  %recycleq_idx40.i = getelementptr %struct.sge, ptr %sge, i32 0, i32 2, i32 %27, i32 6
  %33 = ptrtoint ptr %recycleq_idx40.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 1, ptr %recycleq_idx40.i, align 8
  %respQ.i = getelementptr inbounds %struct.sge, ptr %sge, i32 0, i32 3
  %genbit41.i = getelementptr inbounds %struct.sge, ptr %sge, i32 0, i32 3, i32 3
  %34 = ptrtoint ptr %genbit41.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 1, ptr %genbit41.i, align 2
  %size43.i = getelementptr inbounds %struct.sge, ptr %sge, i32 0, i32 3, i32 1
  %35 = ptrtoint ptr %size43.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 1024, ptr %size43.i, align 4
  %36 = ptrtoint ptr %respQ.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %respQ.i, align 8
  %dma_addr50.i = getelementptr inbounds %struct.sge, ptr %sge, i32 0, i32 3, i32 5
  %call.i98.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev.i, i32 noundef 8192, ptr noundef %dma_addr50.i, i32 noundef 3264, i32 noundef 0) #13
  %entries53.i = getelementptr inbounds %struct.sge, ptr %sge, i32 0, i32 3, i32 4
  %37 = ptrtoint ptr %entries53.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call.i98.i, ptr %entries53.i, align 4
  %tobool56.not.i = icmp eq ptr %call.i98.i, null
  br i1 %tobool56.not.i, label %for.inc.1.i.alloc_rx_resources.exit_crit_edge, label %if.end

for.inc.1.i.alloc_rx_resources.exit_crit_edge:    ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %alloc_rx_resources.exit

alloc_rx_resources.exit:                          ; preds = %for.inc.1.i.alloc_rx_resources.exit_crit_edge, %if.end8.i.i.1.i.alloc_rx_resources.exit_crit_edge, %for.inc.i.alloc_rx_resources.exit_crit_edge, %if.end8.i.i.i.alloc_rx_resources.exit_crit_edge, %entry.alloc_rx_resources.exit_crit_edge
  tail call fastcc void @free_rx_resources(ptr noundef %sge) #13
  br label %return

if.end:                                           ; preds = %for.inc.1.i
  %38 = ptrtoint ptr %sge to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %sge, align 128
  %pdev1.i13 = getelementptr inbounds %struct.adapter, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %pdev1.i13 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pdev1.i13, align 4
  %dev.i14 = getelementptr inbounds %struct.pci_dev, ptr %41, i32 0, i32 44
  %arrayidx.i = getelementptr %struct.sge, ptr %sge, i32 0, i32 18, i32 0
  %genbit.i15 = getelementptr %struct.sge, ptr %sge, i32 0, i32 18, i32 0, i32 8
  %42 = ptrtoint ptr %genbit.i15 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 1, ptr %genbit.i15, align 4
  %sop.i = getelementptr %struct.sge, ptr %sge, i32 0, i32 18, i32 0, i32 9
  %43 = ptrtoint ptr %sop.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 1, ptr %sop.i, align 1
  %44 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %p, align 4
  %size3.i17 = getelementptr %struct.sge, ptr %sge, i32 0, i32 18, i32 0, i32 2
  %46 = ptrtoint ptr %size3.i17 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %size3.i17, align 4
  %in_use.i = getelementptr %struct.sge, ptr %sge, i32 0, i32 18, i32 0, i32 1
  %47 = ptrtoint ptr %in_use.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %in_use.i, align 4
  %48 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %arrayidx.i, align 4
  %cleaned.i = getelementptr %struct.sge, ptr %sge, i32 0, i32 18, i32 0, i32 4
  %49 = ptrtoint ptr %cleaned.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %cleaned.i, align 4
  %processed.i = getelementptr %struct.sge, ptr %sge, i32 0, i32 18, i32 0, i32 3
  %50 = ptrtoint ptr %processed.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %processed.i, align 4
  %stop_thres.i = getelementptr %struct.sge, ptr %sge, i32 0, i32 18, i32 0, i32 5
  %51 = ptrtoint ptr %stop_thres.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %stop_thres.i, align 4
  %lock.i = getelementptr %struct.sge, ptr %sge, i32 0, i32 18, i32 0, i32 13
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.40, ptr noundef nonnull @alloc_tx_resources.__key, i16 noundef signext 3) #13
  %52 = ptrtoint ptr %size3.i17 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %size3.i17, align 4
  %mul.i18 = shl i32 %53, 4
  %dma_addr.i19 = getelementptr %struct.sge, ptr %sge, i32 0, i32 18, i32 0, i32 12
  %call.i.i20 = tail call ptr @dma_alloc_attrs(ptr noundef %dev.i14, i32 noundef %mul.i18, ptr noundef %dma_addr.i19, i32 noundef 3264, i32 noundef 0) #13
  %entries.i21 = getelementptr %struct.sge, ptr %sge, i32 0, i32 18, i32 0, i32 10
  %54 = ptrtoint ptr %entries.i21 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call.i.i20, ptr %entries.i21, align 4
  %tobool.not.i22 = icmp eq ptr %call.i.i20, null
  br i1 %tobool.not.i22, label %if.end.if.then3_crit_edge, label %if.end8.i.i.i52

if.end.if.then3_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then3

if.end8.i.i.i52:                                  ; preds = %if.end
  %55 = ptrtoint ptr %size3.i17 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %size3.i17, align 4
  %mul8.i23 = mul i32 %56, 12
  %call9.i.i.i51 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul8.i23, i32 noundef 3520) #19
  %centries.i54 = getelementptr %struct.sge, ptr %sge, i32 0, i32 18, i32 0, i32 11
  %57 = ptrtoint ptr %centries.i54 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %call9.i.i.i51, ptr %centries.i54, align 4
  %tobool11.not.i55 = icmp eq ptr %call9.i.i.i51, null
  br i1 %tobool11.not.i55, label %if.end8.i.i.i52.if.then3_crit_edge, label %for.inc.i57

if.end8.i.i.i52.if.then3_crit_edge:               ; preds = %if.end8.i.i.i52
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then3

for.inc.i57:                                      ; preds = %if.end8.i.i.i52
  %arrayidx.i.1 = getelementptr %struct.sge, ptr %sge, i32 0, i32 18, i32 1
  %genbit.i15.1 = getelementptr %struct.sge, ptr %sge, i32 0, i32 18, i32 1, i32 8
  %58 = ptrtoint ptr %genbit.i15.1 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 1, ptr %genbit.i15.1, align 4
  %sop.i.1 = getelementptr %struct.sge, ptr %sge, i32 0, i32 18, i32 1, i32 9
  %59 = ptrtoint ptr %sop.i.1 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 1, ptr %sop.i.1, align 1
  %arrayidx2.i16.1 = getelementptr [2 x i32], ptr %p, i32 0, i32 1
  %60 = ptrtoint ptr %arrayidx2.i16.1 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx2.i16.1, align 4
  %size3.i17.1 = getelementptr %struct.sge, ptr %sge, i32 0, i32 18, i32 1, i32 2
  %62 = ptrtoint ptr %size3.i17.1 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %size3.i17.1, align 4
  %in_use.i.1 = getelementptr %struct.sge, ptr %sge, i32 0, i32 18, i32 1, i32 1
  %63 = ptrtoint ptr %in_use.i.1 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %in_use.i.1, align 4
  %64 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 0, ptr %arrayidx.i.1, align 4
  %cleaned.i.1 = getelementptr %struct.sge, ptr %sge, i32 0, i32 18, i32 1, i32 4
  %65 = ptrtoint ptr %cleaned.i.1 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 0, ptr %cleaned.i.1, align 4
  %processed.i.1 = getelementptr %struct.sge, ptr %sge, i32 0, i32 18, i32 1, i32 3
  %66 = ptrtoint ptr %processed.i.1 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 0, ptr %processed.i.1, align 4
  %stop_thres.i.1 = getelementptr %struct.sge, ptr %sge, i32 0, i32 18, i32 1, i32 5
  %67 = ptrtoint ptr %stop_thres.i.1 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 0, ptr %stop_thres.i.1, align 4
  %lock.i.1 = getelementptr %struct.sge, ptr %sge, i32 0, i32 18, i32 1, i32 13
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i.1, ptr noundef nonnull @.str.40, ptr noundef nonnull @alloc_tx_resources.__key, i16 noundef signext 3) #13
  %68 = ptrtoint ptr %size3.i17.1 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %size3.i17.1, align 4
  %mul.i18.1 = shl i32 %69, 4
  %dma_addr.i19.1 = getelementptr %struct.sge, ptr %sge, i32 0, i32 18, i32 1, i32 12
  %call.i.i20.1 = tail call ptr @dma_alloc_attrs(ptr noundef %dev.i14, i32 noundef %mul.i18.1, ptr noundef %dma_addr.i19.1, i32 noundef 3264, i32 noundef 0) #13
  %entries.i21.1 = getelementptr %struct.sge, ptr %sge, i32 0, i32 18, i32 1, i32 10
  %70 = ptrtoint ptr %entries.i21.1 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %call.i.i20.1, ptr %entries.i21.1, align 4
  %tobool.not.i22.1 = icmp eq ptr %call.i.i20.1, null
  br i1 %tobool.not.i22.1, label %for.inc.i57.if.then3_crit_edge, label %if.end8.i.i.i52.1

for.inc.i57.if.then3_crit_edge:                   ; preds = %for.inc.i57
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then3

if.end8.i.i.i52.1:                                ; preds = %for.inc.i57
  %71 = ptrtoint ptr %size3.i17.1 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %size3.i17.1, align 4
  %mul8.i23.1 = mul i32 %72, 12
  %call9.i.i.i51.1 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul8.i23.1, i32 noundef 3520) #19
  %centries.i54.1 = getelementptr %struct.sge, ptr %sge, i32 0, i32 18, i32 1, i32 11
  %73 = ptrtoint ptr %centries.i54.1 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %call9.i.i.i51.1, ptr %centries.i54.1, align 4
  %tobool11.not.i55.1 = icmp eq ptr %call9.i.i.i51.1, null
  br i1 %tobool11.not.i55.1, label %if.end8.i.i.i52.1.if.then3_crit_edge, label %for.inc.i57.1

if.end8.i.i.i52.1.if.then3_crit_edge:             ; preds = %if.end8.i.i.i52.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then3

for.inc.i57.1:                                    ; preds = %if.end8.i.i.i52.1
  call void @__sanitizer_cov_trace_pc() #15
  %74 = ptrtoint ptr %sge to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %sge, align 128
  %nports.i = getelementptr inbounds %struct.adapter, ptr %75, i32 0, i32 8, i32 6
  %76 = ptrtoint ptr %nports.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %nports.i, align 8
  %mul15.i = mul i32 %77, 18
  %stop_thres18.i = getelementptr inbounds %struct.sge, ptr %sge, i32 0, i32 18, i32 0, i32 5
  %78 = ptrtoint ptr %stop_thres18.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %mul15.i, ptr %stop_thres18.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !150
  tail call void @arm_heavy_mb() #13
  %79 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %75, align 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %80, i32 0) #13, !srcloc !115
  %dma_addr.i60 = getelementptr inbounds %struct.sge, ptr %sge, i32 0, i32 18, i32 0, i32 12
  %81 = ptrtoint ptr %dma_addr.i60 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %dma_addr.i60, align 8
  %size.i = getelementptr inbounds %struct.sge, ptr %sge, i32 0, i32 18, i32 0, i32 2
  %83 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %size.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !151
  tail call void @arm_heavy_mb() #13
  %85 = tail call i32 @llvm.bswap.i32(i32 %82) #13
  %86 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %75, align 128
  %add.ptr.i.i = getelementptr i8, ptr %87, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %85) #13, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !152
  tail call void @arm_heavy_mb() #13
  %88 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %75, align 128
  %add.ptr5.i.i = getelementptr i8, ptr %89, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i.i, i32 0) #13, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !153
  tail call void @arm_heavy_mb() #13
  %90 = tail call i32 @llvm.bswap.i32(i32 %84) #13
  %91 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %75, align 128
  %add.ptr9.i.i = getelementptr i8, ptr %92, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i.i, i32 %90) #13, !srcloc !115
  %dma_addr5.i = getelementptr %struct.sge, ptr %sge, i32 0, i32 18, i32 1, i32 12
  %93 = ptrtoint ptr %dma_addr5.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %dma_addr5.i, align 8
  %size9.i = getelementptr %struct.sge, ptr %sge, i32 0, i32 18, i32 1, i32 2
  %95 = ptrtoint ptr %size9.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %size9.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !151
  tail call void @arm_heavy_mb() #13
  %97 = tail call i32 @llvm.bswap.i32(i32 %94) #13
  %98 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %75, align 128
  %add.ptr.i66.i = getelementptr i8, ptr %99, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i66.i, i32 %97) #13, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !152
  tail call void @arm_heavy_mb() #13
  %100 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %75, align 128
  %add.ptr5.i67.i = getelementptr i8, ptr %101, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i67.i, i32 0) #13, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !153
  tail call void @arm_heavy_mb() #13
  %102 = tail call i32 @llvm.bswap.i32(i32 %96) #13
  %103 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %75, align 128
  %add.ptr9.i68.i = getelementptr i8, ptr %104, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i68.i, i32 %102) #13, !srcloc !115
  %105 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %dma_addr.i, align 4
  %107 = ptrtoint ptr %size3.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %size3.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !151
  tail call void @arm_heavy_mb() #13
  %109 = tail call i32 @llvm.bswap.i32(i32 %106) #13
  %110 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %75, align 128
  %add.ptr.i69.i = getelementptr i8, ptr %111, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i69.i, i32 %109) #13, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !152
  tail call void @arm_heavy_mb() #13
  %112 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %75, align 128
  %add.ptr5.i70.i = getelementptr i8, ptr %113, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i70.i, i32 0) #13, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !153
  tail call void @arm_heavy_mb() #13
  %114 = tail call i32 @llvm.bswap.i32(i32 %108) #13
  %115 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %75, align 128
  %add.ptr9.i71.i = getelementptr i8, ptr %116, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i71.i, i32 %114) #13, !srcloc !115
  %117 = ptrtoint ptr %dma_addr.1.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %dma_addr.1.i, align 4
  %119 = ptrtoint ptr %size3.1.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %size3.1.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !151
  tail call void @arm_heavy_mb() #13
  %121 = tail call i32 @llvm.bswap.i32(i32 %118) #13
  %122 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %75, align 128
  %add.ptr.i72.i = getelementptr i8, ptr %123, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i72.i, i32 %121) #13, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !152
  tail call void @arm_heavy_mb() #13
  %124 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %75, align 128
  %add.ptr5.i73.i = getelementptr i8, ptr %125, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i73.i, i32 0) #13, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !153
  tail call void @arm_heavy_mb() #13
  %126 = tail call i32 @llvm.bswap.i32(i32 %120) #13
  %127 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %75, align 128
  %add.ptr9.i74.i = getelementptr i8, ptr %128, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i74.i, i32 %126) #13, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !154
  tail call void @arm_heavy_mb() #13
  %129 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %75, align 128
  %add.ptr27.i = getelementptr i8, ptr %130, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27.i, i32 17170432) #13, !srcloc !115
  %131 = ptrtoint ptr %dma_addr50.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %dma_addr50.i, align 8
  %133 = ptrtoint ptr %size43.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %size43.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !151
  tail call void @arm_heavy_mb() #13
  %135 = tail call i32 @llvm.bswap.i32(i32 %132) #13
  %136 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %75, align 128
  %add.ptr.i75.i = getelementptr i8, ptr %137, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i75.i, i32 %135) #13, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !152
  tail call void @arm_heavy_mb() #13
  %138 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %75, align 128
  %add.ptr5.i76.i = getelementptr i8, ptr %139, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i76.i, i32 0) #13, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !153
  tail call void @arm_heavy_mb() #13
  %140 = tail call i32 @llvm.bswap.i32(i32 %134) #13
  %141 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %75, align 128
  %add.ptr9.i77.i = getelementptr i8, ptr %142, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i77.i, i32 %140) #13, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !155
  tail call void @arm_heavy_mb() #13
  %143 = ptrtoint ptr %size43.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %size43.i, align 4
  %sub.i = add i32 %144, -1
  %145 = tail call i32 @llvm.bswap.i32(i32 %sub.i) #13
  %146 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %75, align 128
  %add.ptr38.i = getelementptr i8, ptr %147, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr38.i, i32 %145) #13, !srcloc !115
  %148 = ptrtoint ptr %rx_pkt_pad.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %rx_pkt_pad.i, align 32
  %shl.i = shl i32 %149, 15
  %sge_control.i = getelementptr inbounds %struct.sge, ptr %sge, i32 0, i32 13
  %or40.i = or i32 %shl.i, 21183
  %150 = ptrtoint ptr %sge_control.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 %or40.i, ptr %sge_control.i, align 4
  %brd_info.i.i = getelementptr inbounds %struct.adapter, ptr %75, i32 0, i32 8, i32 4
  %151 = ptrtoint ptr %brd_info.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %brd_info.i.i, align 4
  %clock_core.i.i = getelementptr inbounds %struct.board_info, ptr %152, i32 0, i32 6
  %153 = ptrtoint ptr %clock_core.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %clock_core.i.i, align 4
  %div.i.i = udiv i32 %154, 1000000
  %mul.i62 = mul nuw nsw i32 %div.i.i, 1000
  %intrtimer_nres.i = getelementptr inbounds %struct.sge, ptr %sge, i32 0, i32 7
  %155 = ptrtoint ptr %intrtimer_nres.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 %mul.i62, ptr %intrtimer_nres.i, align 8
  %rx_coalesce_usecs.i.i = getelementptr inbounds %struct.sge_params, ptr %p, i32 0, i32 3
  %156 = ptrtoint ptr %rx_coalesce_usecs.i.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %rx_coalesce_usecs.i.i, align 4
  %158 = ptrtoint ptr %sge to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %sge, align 128
  %brd_info.i.i.i = getelementptr inbounds %struct.adapter, ptr %159, i32 0, i32 8, i32 4
  %160 = ptrtoint ptr %brd_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %brd_info.i.i.i, align 4
  %clock_core.i.i.i = getelementptr inbounds %struct.board_info, ptr %161, i32 0, i32 6
  %162 = ptrtoint ptr %clock_core.i.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %clock_core.i.i.i, align 4
  %div.i.i.i = udiv i32 %163, 1000000
  %mul.i.i = mul i32 %div.i.i.i, %157
  %fixed_intrtimer.i.i = getelementptr inbounds %struct.sge, ptr %sge, i32 0, i32 8
  %164 = ptrtoint ptr %fixed_intrtimer.i.i to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 %mul.i.i, ptr %fixed_intrtimer.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !149
  tail call void @arm_heavy_mb() #13
  %165 = ptrtoint ptr %fixed_intrtimer.i.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %fixed_intrtimer.i.i, align 4
  %167 = tail call i32 @llvm.bswap.i32(i32 %166) #13
  %168 = ptrtoint ptr %sge to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %sge, align 128
  %170 = ptrtoint ptr %169 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %169, align 128
  %add.ptr.i78.i = getelementptr i8, ptr %171, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i78.i, i32 %167) #13, !srcloc !115
  %172 = ptrtoint ptr %jumbo_fl.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %jumbo_fl.i, align 4
  %rx_buffer_size.i64 = getelementptr %struct.sge, ptr %sge, i32 0, i32 2, i32 %173, i32 4
  %174 = ptrtoint ptr %rx_buffer_size.i64 to i32
  call void @__asan_load2_noabort(i32 %174)
  %175 = load i16, ptr %rx_buffer_size.i64, align 4
  %conv.i65 = zext i16 %175 to i32
  %dma_offset.i66 = getelementptr %struct.sge, ptr %sge, i32 0, i32 2, i32 %173, i32 5
  %176 = ptrtoint ptr %dma_offset.i66 to i32
  call void @__asan_load2_noabort(i32 %176)
  %177 = load i16, ptr %dma_offset.i66, align 2
  %conv4.i = zext i16 %177 to i32
  %sub.i67 = add nsw i32 %conv.i65, -16
  %sub5.i = sub nsw i32 %sub.i67, %conv4.i
  %large_buf_capacity = getelementptr inbounds %struct.sge_params, ptr %p, i32 0, i32 2
  %178 = ptrtoint ptr %large_buf_capacity to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 %sub5.i, ptr %large_buf_capacity, align 4
  br label %return

if.then3:                                         ; preds = %if.end8.i.i.i52.1.if.then3_crit_edge, %for.inc.i57.if.then3_crit_edge, %if.end8.i.i.i52.if.then3_crit_edge, %if.end.if.then3_crit_edge
  tail call fastcc void @free_tx_resources(ptr noundef %sge) #13
  tail call fastcc void @free_rx_resources(ptr noundef %sge)
  br label %return

return:                                           ; preds = %if.then3, %for.inc.i57.1, %alloc_rx_resources.exit
  %retval.0 = phi i32 [ -12, %if.then3 ], [ 0, %for.inc.i57.1 ], [ -12, %alloc_rx_resources.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @t1_sge_start(ptr noundef %sge) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %freelQ = getelementptr inbounds %struct.sge, ptr %sge, i32 0, i32 2
  tail call fastcc void @refill_free_list(ptr noundef %sge, ptr noundef %freelQ)
  %arrayidx2 = getelementptr %struct.sge, ptr %sge, i32 0, i32 2, i32 1
  tail call fastcc void @refill_free_list(ptr noundef %sge, ptr noundef %arrayidx2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !156
  tail call void @arm_heavy_mb() #13
  %sge_control = getelementptr inbounds %struct.sge, ptr %sge, i32 0, i32 13
  %0 = ptrtoint ptr %sge_control to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sge_control, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %3 = ptrtoint ptr %sge to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sge, align 128
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %2) #13, !srcloc !115
  %7 = ptrtoint ptr %sge to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sge, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !132
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !133
  tail call void @arm_heavy_mb() #13
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 128
  %add.ptr.i = getelementptr i8, ptr %10, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 201326592) #13, !srcloc !115
  %11 = ptrtoint ptr %sge to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sge, align 128
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 128
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #13, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !157
  %tx_reclaim_timer = getelementptr inbounds %struct.sge, ptr %sge, i32 0, i32 9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %16 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %16, 25
  %call8 = tail call i32 @mod_timer(ptr noundef %tx_reclaim_timer, i32 noundef %add) #13
  %17 = ptrtoint ptr %sge to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sge, align 128
  %chip_version.i = getelementptr inbounds %struct.adapter, ptr %18, i32 0, i32 8, i32 9
  %19 = ptrtoint ptr %chip_version.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %chip_version.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %20)
  %cmp.i = icmp eq i8 %20, 2
  br i1 %cmp.i, label %adapter_matches_type.exit, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

adapter_matches_type.exit:                        ; preds = %entry
  %chip_revision.i = getelementptr inbounds %struct.adapter, ptr %18, i32 0, i32 8, i32 8
  %21 = ptrtoint ptr %chip_revision.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %chip_revision.i, align 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %22)
  %cmp4.i.not = icmp eq i16 %22, 3
  br i1 %cmp4.i.not, label %if.then, label %adapter_matches_type.exit.if.end_crit_edge

adapter_matches_type.exit.if.end_crit_edge:       ; preds = %adapter_matches_type.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %adapter_matches_type.exit
  call void @__sanitizer_cov_trace_pc() #15
  %espibug_timer = getelementptr inbounds %struct.sge, ptr %sge, i32 0, i32 10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %23 = load volatile i32, ptr @jiffies, align 128
  %espibug_timeout = getelementptr inbounds %struct.sge, ptr %sge, i32 0, i32 11
  %24 = ptrtoint ptr %espibug_timeout to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %espibug_timeout, align 16
  %add11 = add i32 %25, %23
  %call12 = tail call i32 @mod_timer(ptr noundef %espibug_timer, i32 noundef %add11) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %adapter_matches_type.exit.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @refill_free_list(ptr nocapture noundef readonly %sge, ptr nocapture noundef %q) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %centries = getelementptr inbounds %struct.freelQ, ptr %q, i32 0, i32 9
  %pidx = getelementptr inbounds %struct.freelQ, ptr %q, i32 0, i32 2
  %entries = getelementptr inbounds %struct.freelQ, ptr %q, i32 0, i32 8
  %rx_buffer_size = getelementptr inbounds %struct.freelQ, ptr %q, i32 0, i32 4
  %0 = ptrtoint ptr %rx_buffer_size to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %rx_buffer_size, align 4
  %conv = zext i16 %1 to i32
  %dma_offset = getelementptr inbounds %struct.freelQ, ptr %q, i32 0, i32 5
  %2 = ptrtoint ptr %dma_offset to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %dma_offset, align 2
  %conv5 = zext i16 %3 to i32
  %sub = sub nsw i32 %conv, %conv5
  %size = getelementptr inbounds %struct.freelQ, ptr %q, i32 0, i32 1
  %4 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %q, align 4
  %6 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp79 = icmp ult i32 %5, %7
  br i1 %cmp79, label %while.body.lr.ph, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %8 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %entries, align 4
  %10 = ptrtoint ptr %pidx to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %pidx, align 4
  %idxprom = zext i16 %11 to i32
  %arrayidx4 = getelementptr %struct.freelQ_e, ptr %9, i32 %idxprom
  %12 = ptrtoint ptr %centries to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %centries, align 4
  %arrayidx = getelementptr %struct.freelQ_ce, ptr %13, i32 %idxprom
  %14 = ptrtoint ptr %sge to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sge, align 128
  %pdev1 = getelementptr inbounds %struct.adapter, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pdev1, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44, i32 3
  %rx_pkt_pad = getelementptr inbounds %struct.sge, ptr %sge, i32 0, i32 5
  %genbit = getelementptr inbounds %struct.freelQ, ptr %q, i32 0, i32 7
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %e.081 = phi ptr [ %arrayidx4, %while.body.lr.ph ], [ %e.1, %cleanup.while.body_crit_edge ]
  %ce.080 = phi ptr [ %arrayidx, %while.body.lr.ph ], [ %ce.1, %cleanup.while.body_crit_edge ]
  %18 = ptrtoint ptr %rx_buffer_size to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %rx_buffer_size, align 4
  %conv8 = zext i16 %19 to i32
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %conv8, i32 noundef 2592) #13
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %if.end

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

if.end:                                           ; preds = %while.body
  %20 = ptrtoint ptr %dma_offset to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %dma_offset, align 2
  %conv10 = zext i16 %21 to i32
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %22 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %23, i32 %conv10
  store ptr %add.ptr.i, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %24 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %25, i32 %conv10
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %add.ptr.i) #13
  br i1 %call.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %if.end
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !112

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev) #13
  %26 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %27, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %28 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %29, %if.end.i.i ], [ %27, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.38, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.39, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #13
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @debug_dma_map_single(ptr noundef %dev, ptr noundef %add.ptr.i, i32 noundef %sub) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %30 = load ptr, ptr @mem_map, align 4
  %31 = ptrtoint ptr %add.ptr.i to i32
  %sub.i = add i32 %31, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i70 = getelementptr %struct.page, ptr %30, i32 %shr.i
  %and.i = and i32 %31, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev, ptr noundef %add.ptr.i70, i32 noundef %and.i, i32 noundef %sub, i32 noundef 2, i32 noundef 0) #13
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %32 = ptrtoint ptr %rx_pkt_pad to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rx_pkt_pad, align 32
  %34 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %data.i, align 4
  %add.ptr.i72 = getelementptr i8, ptr %35, i32 %33
  store ptr %add.ptr.i72, ptr %data.i, align 4
  %36 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i74 = getelementptr i8, ptr %37, i32 %33
  store ptr %add.ptr1.i74, ptr %tail.i, align 8
  %38 = ptrtoint ptr %ce.080 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call.i.i, ptr %ce.080, align 4
  %dma_addr = getelementptr inbounds %struct.freelQ_ce, ptr %ce.080, i32 0, i32 1
  %39 = ptrtoint ptr %dma_addr to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %retval.0.i, ptr %dma_addr, align 4
  %dma_len13 = getelementptr inbounds %struct.freelQ_ce, ptr %ce.080, i32 0, i32 2
  %40 = ptrtoint ptr %dma_len13 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %sub, ptr %dma_len13, align 4
  %41 = ptrtoint ptr %e.081 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %retval.0.i, ptr %e.081, align 4
  %addr_hi = getelementptr inbounds %struct.freelQ_e, ptr %e.081, i32 0, i32 3
  %42 = ptrtoint ptr %addr_hi to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %addr_hi, align 4
  %43 = ptrtoint ptr %genbit to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %genbit, align 2
  %conv16 = zext i8 %44 to i32
  %shl = shl i32 %conv16, 31
  %or = or i32 %shl, %sub
  %len_gen = getelementptr inbounds %struct.freelQ_e, ptr %e.081, i32 0, i32 1
  %45 = ptrtoint ptr %len_gen to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %or, ptr %len_gen, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !158
  tail call void @arm_heavy_mb() #13
  %46 = ptrtoint ptr %genbit to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %genbit, align 2
  %conv18 = zext i8 %47 to i32
  %gen2 = getelementptr inbounds %struct.freelQ_e, ptr %e.081, i32 0, i32 2
  %48 = ptrtoint ptr %gen2 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %conv18, ptr %gen2, align 4
  %incdec.ptr = getelementptr %struct.freelQ_e, ptr %e.081, i32 1
  %incdec.ptr19 = getelementptr %struct.freelQ_ce, ptr %ce.080, i32 1
  %49 = ptrtoint ptr %pidx to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %pidx, align 4
  %inc = add i16 %50, 1
  store i16 %inc, ptr %pidx, align 4
  %conv21 = zext i16 %inc to i32
  %51 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %52, i32 %conv21)
  %cmp23 = icmp eq i32 %52, %conv21
  br i1 %cmp23, label %if.then25, label %dma_map_single_attrs.exit.cleanup_crit_edge

dma_map_single_attrs.exit.cleanup_crit_edge:      ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then25:                                        ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #15
  %53 = ptrtoint ptr %pidx to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 0, ptr %pidx, align 4
  %54 = ptrtoint ptr %genbit to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %genbit, align 2
  %56 = xor i8 %55, 1
  store i8 %56, ptr %genbit, align 2
  %57 = ptrtoint ptr %centries to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %centries, align 4
  %59 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %entries, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then25, %dma_map_single_attrs.exit.cleanup_crit_edge
  %ce.1 = phi ptr [ %58, %if.then25 ], [ %incdec.ptr19, %dma_map_single_attrs.exit.cleanup_crit_edge ]
  %e.1 = phi ptr [ %60, %if.then25 ], [ %incdec.ptr, %dma_map_single_attrs.exit.cleanup_crit_edge ]
  %61 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %q, align 4
  %inc34 = add i32 %62, 1
  store i32 %inc34, ptr %q, align 4
  %63 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %size, align 4
  %cmp = icmp ult i32 %inc34, %64
  br i1 %cmp, label %cleanup.while.body_crit_edge, label %cleanup.while.end_crit_edge

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @t1_sge_create(ptr noundef %adapter, ptr nocapture noundef writeonly %p) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 640) #20
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %adapter, ptr %call7.i.i, align 128
  %port = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 13
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port, align 8
  %netdev = getelementptr inbounds %struct.sge, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %netdev to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %netdev, align 4
  %chip_version.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 8, i32 9
  %5 = ptrtoint ptr %chip_version.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %chip_version.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %6)
  %cmp.i = icmp eq i8 %6, 1
  br i1 %cmp.i, label %adapter_matches_type.exit, label %11

adapter_matches_type.exit:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %chip_revision.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 8, i32 8
  %7 = ptrtoint ptr %chip_revision.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %chip_revision.i, align 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %8)
  %cmp4.i.not = icmp eq i16 %8, 1
  %spec.select = select i1 %cmp4.i.not, i32 0, i32 2
  %9 = getelementptr inbounds %struct.sge, ptr %call7.i.i, i32 0, i32 5
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %spec.select, ptr %9, align 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %8)
  %cmp4.i109 = icmp eq i16 %8, 1
  %phi.cast = zext i1 %cmp4.i109 to i32
  br label %adapter_matches_type.exit112

11:                                               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %rx_pkt_pad = getelementptr inbounds %struct.sge, ptr %call7.i.i, i32 0, i32 5
  %12 = ptrtoint ptr %rx_pkt_pad to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 2, ptr %rx_pkt_pad, align 32
  br label %adapter_matches_type.exit112

adapter_matches_type.exit112:                     ; preds = %11, %adapter_matches_type.exit
  %13 = phi i32 [ 0, %11 ], [ %phi.cast, %adapter_matches_type.exit ]
  %jumbo_fl = getelementptr inbounds %struct.sge, ptr %call7.i.i, i32 0, i32 6
  %14 = ptrtoint ptr %jumbo_fl to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %jumbo_fl, align 4
  %nports = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 8, i32 6
  %15 = ptrtoint ptr %nports to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %nports, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp129.not = icmp eq i32 %16, 0
  br i1 %cmp129.not, label %adapter_matches_type.exit112.do.body_crit_edge, label %adapter_matches_type.exit112.for.body_crit_edge

adapter_matches_type.exit112.for.body_crit_edge:  ; preds = %adapter_matches_type.exit112
  br label %for.body

adapter_matches_type.exit112.do.body_crit_edge:   ; preds = %adapter_matches_type.exit112
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %adapter_matches_type.exit112.for.body_crit_edge
  %i.0130 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %adapter_matches_type.exit112.for.body_crit_edge ]
  %call7 = tail call noalias ptr @__alloc_percpu(i32 noundef 48, i32 noundef 8) #19
  %arrayidx8 = getelementptr %struct.sge, ptr %call7.i.i, i32 0, i32 15, i32 %i.0130
  %17 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call7, ptr %arrayidx8, align 4
  %tobool11.not = icmp eq ptr %call7, null
  br i1 %tobool11.not, label %while.cond.preheader, label %for.inc

while.cond.preheader:                             ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.0130)
  %cmp59131 = icmp sgt i32 %i.0130, -1
  br i1 %cmp59131, label %while.cond.preheader.while.body_crit_edge, label %while.cond.preheader.while.end_crit_edge

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.0130, 1
  %18 = ptrtoint ptr %nports to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %nports, align 8
  %cmp = icmp ult i32 %inc, %19
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.do.body_crit_edge

for.inc.do.body_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

do.body:                                          ; preds = %for.inc.do.body_crit_edge, %adapter_matches_type.exit112.do.body_crit_edge
  %tx_reclaim_timer = getelementptr inbounds %struct.sge, ptr %call7.i.i, i32 0, i32 9
  tail call void @init_timer_key(ptr noundef %tx_reclaim_timer, ptr noundef nonnull @sge_tx_reclaim_cb, i32 noundef 0, ptr noundef nonnull @.str.20, ptr noundef nonnull @t1_sge_create.__key) #13
  %20 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %call7.i.i, align 128
  %chip_version.i113 = getelementptr inbounds %struct.adapter, ptr %21, i32 0, i32 8, i32 9
  %22 = ptrtoint ptr %chip_version.i113 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %chip_version.i113, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %23)
  %cmp.i115 = icmp eq i8 %23, 2
  br i1 %cmp.i115, label %adapter_matches_type.exit121, label %do.body.if.end37_crit_edge

do.body.if.end37_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end37

adapter_matches_type.exit121:                     ; preds = %do.body
  %chip_revision.i116 = getelementptr inbounds %struct.adapter, ptr %21, i32 0, i32 8, i32 8
  %24 = ptrtoint ptr %chip_revision.i116 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %chip_revision.i116, align 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %25)
  %cmp4.i118.not = icmp eq i16 %25, 3
  br i1 %cmp4.i118.not, label %do.body18, label %adapter_matches_type.exit121.if.end37_crit_edge

adapter_matches_type.exit121.if.end37_crit_edge:  ; preds = %adapter_matches_type.exit121
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end37

do.body18:                                        ; preds = %adapter_matches_type.exit121
  %espibug_timer = getelementptr inbounds %struct.sge, ptr %call7.i.i, i32 0, i32 10
  %26 = ptrtoint ptr %nports to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %nports, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %27)
  %cmp21 = icmp ugt i32 %27, 1
  %cond22 = select i1 %cmp21, ptr @espibug_workaround_t204, ptr @espibug_workaround
  tail call void @init_timer_key(ptr noundef %espibug_timer, ptr noundef nonnull %cond22, i32 noundef 0, ptr noundef nonnull @.str.22, ptr noundef nonnull @t1_sge_create.__key.21) #13
  %28 = ptrtoint ptr %nports to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %nports, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %29)
  %cmp27 = icmp ugt i32 %29, 1
  br i1 %cmp27, label %if.then28, label %do.body18.if.end30_crit_edge

do.body18.if.end30_crit_edge:                     ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end30

if.then28:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @tx_sched_init(ptr noundef nonnull %call7.i.i)
  br label %if.end30

if.end30:                                         ; preds = %if.then28, %do.body18.if.end30_crit_edge
  %espibug_timeout = getelementptr inbounds %struct.sge, ptr %call7.i.i, i32 0, i32 11
  %30 = ptrtoint ptr %espibug_timeout to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1, ptr %espibug_timeout, align 16
  br label %if.end37

if.end37:                                         ; preds = %if.end30, %adapter_matches_type.exit121.if.end37_crit_edge, %do.body.if.end37_crit_edge
  %31 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1024, ptr %p, align 4
  %arrayidx40 = getelementptr [2 x i32], ptr %p, i32 0, i32 1
  %32 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 128, ptr %arrayidx40, align 4
  %33 = ptrtoint ptr %jumbo_fl to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %jumbo_fl, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool42.not = icmp eq i32 %34, 0
  %lnot.ext = zext i1 %tobool42.not to i32
  %arrayidx43 = getelementptr %struct.sge_params, ptr %p, i32 0, i32 1, i32 %lnot.ext
  %35 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 4096, ptr %arrayidx43, align 4
  %arrayidx46 = getelementptr %struct.sge_params, ptr %p, i32 0, i32 1, i32 %34
  %36 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 512, ptr %arrayidx46, align 4
  %tx_sched = getelementptr inbounds %struct.sge, ptr %call7.i.i, i32 0, i32 16
  %37 = ptrtoint ptr %tx_sched to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %tx_sched, align 16
  %tobool47.not = icmp eq ptr %38, null
  br i1 %tobool47.not, label %if.else56, label %if.then48

if.then48:                                        ; preds = %if.end37
  %39 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %call7.i.i, align 128
  %brd_info = getelementptr inbounds %struct.adapter, ptr %40, i32 0, i32 8, i32 4
  %41 = ptrtoint ptr %brd_info to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %brd_info, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %42, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %44)
  %cmp51 = icmp eq i8 %44, 7
  %rx_coalesce_usecs = getelementptr inbounds %struct.sge_params, ptr %p, i32 0, i32 3
  br i1 %cmp51, label %if.then53, label %if.else

if.then53:                                        ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #15
  %45 = ptrtoint ptr %rx_coalesce_usecs to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 15, ptr %rx_coalesce_usecs, align 4
  br label %if.end58

if.else:                                          ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #15
  %46 = ptrtoint ptr %rx_coalesce_usecs to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 50, ptr %rx_coalesce_usecs, align 4
  br label %if.end58

if.else56:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #15
  %rx_coalesce_usecs57 = getelementptr inbounds %struct.sge_params, ptr %p, i32 0, i32 3
  %47 = ptrtoint ptr %rx_coalesce_usecs57 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 50, ptr %rx_coalesce_usecs57, align 4
  br label %if.end58

if.end58:                                         ; preds = %if.else56, %if.else, %if.then53
  %coalesce_enable = getelementptr inbounds %struct.sge_params, ptr %p, i32 0, i32 7
  %48 = ptrtoint ptr %coalesce_enable to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %coalesce_enable, align 4
  %sample_interval_usecs = getelementptr inbounds %struct.sge_params, ptr %p, i32 0, i32 6
  %49 = ptrtoint ptr %sample_interval_usecs to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %sample_interval_usecs, align 4
  br label %cleanup

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %i.1132 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %i.0130, %while.cond.preheader.while.body_crit_edge ]
  %arrayidx62 = getelementptr %struct.sge, ptr %call7.i.i, i32 0, i32 15, i32 %i.1132
  %50 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx62, align 4
  tail call void @free_percpu(ptr noundef %51) #13
  %dec = add nsw i32 %i.1132, -1
  %cmp59.not = icmp eq i32 %i.1132, 0
  br i1 %cmp59.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #13
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.end58, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %while.end ], [ %call7.i.i, %if.end58 ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sge_tx_reclaim_cb(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -112
  %lock = getelementptr i8, ptr %t, i32 316
  %call.i = tail call i32 @_raw_spin_trylock(ptr noundef %lock) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %land.lhs.true

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %cmdQ = getelementptr i8, ptr %t, i32 272
  tail call fastcc void @reclaim_completed_tx(ptr noundef %add.ptr, ptr noundef %cmdQ)
  %in_use = getelementptr i8, ptr %t, i32 276
  %0 = ptrtoint ptr %in_use to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %in_use, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool2.not = icmp eq i32 %1, 0
  br i1 %tobool2.not, label %land.lhs.true.if.end5_crit_edge, label %do.body

land.lhs.true.if.end5_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end5

do.body:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !159
  tail call void @arm_heavy_mb() #13
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 128
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 128
  %add.ptr4 = getelementptr i8, ptr %5, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 16777216) #13, !srcloc !115
  br label %if.end5

if.end5:                                          ; preds = %do.body, %land.lhs.true.if.end5_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %entry.cleanup_crit_edge
  %lock.1 = getelementptr i8, ptr %t, i32 404
  %call.i.1 = tail call i32 @_raw_spin_trylock(ptr noundef %lock.1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1)
  %tobool.not.1 = icmp eq i32 %call.i.1, 0
  br i1 %tobool.not.1, label %cleanup.cleanup.1_crit_edge, label %if.end5.1

cleanup.cleanup.1_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.1

if.end5.1:                                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx.1 = getelementptr i8, ptr %t, i32 360
  tail call fastcc void @reclaim_completed_tx(ptr noundef %add.ptr, ptr noundef %arrayidx.1)
  tail call void @_raw_spin_unlock(ptr noundef %lock.1) #13
  br label %cleanup.1

cleanup.1:                                        ; preds = %if.end5.1, %cleanup.cleanup.1_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %6, 25
  %call7 = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @espibug_workaround_t204(ptr noundef %t) #0 align 64 {
entry:
  %seop = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -160
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 128
  %nports2 = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 8, i32 6
  %2 = ptrtoint ptr %nports2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nports2, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %seop) #13
  %open_device_map = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 3
  %4 = call ptr @memset(ptr %seop, i32 255, i32 16)
  %5 = ptrtoint ptr %open_device_map to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %open_device_map, align 4
  %and = and i32 %6, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end37_crit_edge, label %if.then

entry.if.end37_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end37

if.then:                                          ; preds = %entry
  %call = call i32 @t1_espi_get_mon_t204(ptr noundef %1, ptr noundef nonnull %seop, i8 noundef zeroext 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then.cleanup39_crit_edge, label %for.cond.preheader

if.then.cleanup39_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup39

for.cond.preheader:                               ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp472.not = icmp eq i32 %3, 0
  br i1 %cmp472.not, label %for.cond.preheader.if.end37_crit_edge, label %for.body.lr.ph

for.cond.preheader.if.end37_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end37

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %espibug_skb = getelementptr i8, ptr %t, i32 52
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %i.073 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cleanup.for.body_crit_edge ]
  %arrayidx5 = getelementptr [4 x ptr], ptr %espibug_skb, i32 0, i32 %i.073
  %7 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx5, align 4
  %arrayidx6 = getelementptr %struct.adapter, ptr %1, i32 0, i32 13, i32 %i.073
  %9 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx6, align 8
  %state.i = getelementptr inbounds %struct.net_device, ptr %10, i32 0, i32 6
  %11 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %for.body.cleanup_crit_edge, label %lor.lhs.false

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %for.body
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %10, i32 0, i32 103
  %13 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %14, i32 0, i32 13
  %15 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %state.i.i, align 4
  %and1.i.i.i = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.i.not = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.i.not, label %lor.lhs.false12, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false12:                                  ; preds = %lor.lhs.false
  %arrayidx13 = getelementptr [4 x i32], ptr %seop, i32 0, i32 %i.073
  %17 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool14.not = icmp eq i32 %18, 0
  %and17 = and i32 %18, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %cmp18.not = icmp ne i32 %and17, 0
  %or.cond.not = or i1 %tobool14.not, %cmp18.not
  %tobool20.not = icmp eq ptr %8, null
  %or.cond69 = select i1 %or.cond.not, i1 true, i1 %tobool20.not
  br i1 %or.cond69, label %lor.lhs.false12.cleanup_crit_edge, label %if.end22

lor.lhs.false12.cleanup_crit_edge:                ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end22:                                         ; preds = %lor.lhs.false12
  %cb = getelementptr inbounds %struct.sk_buff, ptr %8, i32 0, i32 3
  %19 = ptrtoint ptr %cb to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %cb, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool24.not = icmp eq i8 %20, 0
  br i1 %tobool24.not, label %if.then25, label %if.end22.if.end28_crit_edge

if.end22.if.end28_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end28

if.then25:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #15
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %8, i32 0, i32 19
  %21 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %22, i32 8
  %23 = call ptr @memcpy(ptr %add.ptr.i, ptr @ch_mac_addr, i32 6)
  %len = getelementptr inbounds %struct.sk_buff, ptr %8, i32 0, i32 6
  %24 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %len, align 4
  %sub = add i32 %25, -10
  %26 = load ptr, ptr %data.i, align 4
  %add.ptr.i71 = getelementptr i8, ptr %26, i32 %sub
  %27 = call ptr @memcpy(ptr %add.ptr.i71, ptr @ch_mac_addr, i32 6)
  %28 = ptrtoint ptr %cb to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 -1, ptr %cb, align 8
  br label %if.end28

if.end28:                                         ; preds = %if.then25, %if.end22.if.end28_crit_edge
  %users.i = getelementptr inbounds %struct.sk_buff, ptr %8, i32 0, i32 21
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %users.i, i32 noundef 4) #13
  call void @llvm.prefetch.p0(ptr %users.i, i32 1, i32 3, i32 1) #13
  %29 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users.i, ptr %users.i, i32 1, ptr elementtype(i32) %users.i) #13, !srcloc !147
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %29, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end28.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !118

if.end28.if.end15.sink.split.i.i.i.i_crit_edge:   ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end28
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %30 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %30)
  %.not.i.i.i.i = icmp sgt i32 %30, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.skb_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !112

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.skb_get.exit_crit_edge:           ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %skb_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end28.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end28.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %users.i, i32 noundef %.sink.i.i.i.i) #13
  br label %skb_get.exit

skb_get.exit:                                     ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.skb_get.exit_crit_edge
  %31 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx6, align 8
  %33 = call fastcc i32 @t1_sge_tx(ptr noundef nonnull %8, ptr noundef %1, ptr noundef %32)
  br label %cleanup

cleanup:                                          ; preds = %skb_get.exit, %lor.lhs.false12.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %inc = add nuw i32 %i.073, 1
  %exitcond.not = icmp eq i32 %inc, %3
  br i1 %exitcond.not, label %cleanup.if.end37_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

cleanup.if.end37_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end37

if.end37:                                         ; preds = %cleanup.if.end37_crit_edge, %for.cond.preheader.if.end37_crit_edge, %entry.if.end37_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %34 = load volatile i32, ptr @jiffies, align 128
  %espibug_timeout = getelementptr i8, ptr %t, i32 48
  %35 = ptrtoint ptr %espibug_timeout to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %espibug_timeout, align 16
  %add = add i32 %36, %34
  %call38 = call i32 @mod_timer(ptr noundef %t, i32 noundef %add) #13
  br label %cleanup39

cleanup39:                                        ; preds = %if.end37, %if.then.cleanup39_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %seop) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @espibug_workaround(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -160
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 128
  %port = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port, align 8
  %state.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.if.end16_crit_edge, label %if.then

entry.if.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end16

if.then:                                          ; preds = %entry
  %espibug_skb = getelementptr i8, ptr %t, i32 52
  %6 = ptrtoint ptr %espibug_skb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %espibug_skb, align 4
  %call3 = tail call i32 @t1_espi_get_mon(ptr noundef %1, i32 noundef 2352, i8 noundef zeroext 0) #13
  %and = and i32 %call3, 268374015
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %and)
  %cmp = icmp ne i32 %and, 4095
  %tobool.not = icmp eq ptr %7, null
  %or.cond = select i1 %cmp, i1 true, i1 %tobool.not
  br i1 %or.cond, label %if.then.if.end16_crit_edge, label %if.then4

if.then.if.end16_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end16

if.then4:                                         ; preds = %if.then
  %cb = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %cb to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %cb, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool6.not = icmp eq i8 %9, 0
  br i1 %tobool6.not, label %if.then7, label %if.then4.if.end_crit_edge

if.then4.if.end_crit_edge:                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then7:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #15
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 19
  %10 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 8
  %12 = call ptr @memcpy(ptr %add.ptr.i, ptr @ch_mac_addr, i32 6)
  %len = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 6
  %13 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %len, align 4
  %sub = add i32 %14, -10
  %15 = load ptr, ptr %data.i, align 4
  %add.ptr.i32 = getelementptr i8, ptr %15, i32 %sub
  %16 = call ptr @memcpy(ptr %add.ptr.i32, ptr @ch_mac_addr, i32 6)
  %17 = ptrtoint ptr %cb to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 -1, ptr %cb, align 8
  br label %if.end

if.end:                                           ; preds = %if.then7, %if.then4.if.end_crit_edge
  %users.i = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 21
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %users.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %users.i, i32 1, i32 3, i32 1) #13
  %18 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users.i, ptr %users.i, i32 1, ptr elementtype(i32) %users.i) #13, !srcloc !147
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !118

if.end.if.end15.sink.split.i.i.i.i_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %19 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %19)
  %.not.i.i.i.i = icmp sgt i32 %19, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.skb_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !112

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.skb_get.exit_crit_edge:           ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %skb_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %users.i, i32 noundef %.sink.i.i.i.i) #13
  br label %skb_get.exit

skb_get.exit:                                     ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.skb_get.exit_crit_edge
  %20 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %port, align 8
  %22 = tail call fastcc i32 @t1_sge_tx(ptr noundef nonnull %7, ptr noundef %1, ptr noundef %21)
  br label %if.end16

if.end16:                                         ; preds = %skb_get.exit, %if.then.if.end16_crit_edge, %entry.if.end16_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %23 = load volatile i32, ptr @jiffies, align 128
  %espibug_timeout = getelementptr i8, ptr %t, i32 48
  %24 = ptrtoint ptr %espibug_timeout to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %espibug_timeout, align 16
  %add = add i32 %25, %23
  %call17 = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tx_sched_init(ptr noundef %sge) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 336) #20
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tx_sched_init.__UNIQUE_ID_ddebug494, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tx_sched_init, %if.then5)) #13
          to label %do.end [label %if.then5], !srcloc !111

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tx_sched_init.__UNIQUE_ID_ddebug494, ptr noundef nonnull @.str.43) #13
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  %sched_tsk = getelementptr inbounds %struct.sched, ptr %call7.i.i, i32 0, i32 5
  tail call void @tasklet_setup(ptr noundef %sched_tsk, ptr noundef nonnull @restart_sched) #13
  %sge7 = getelementptr inbounds %struct.sched, ptr %call7.i.i, i32 0, i32 6
  %1 = ptrtoint ptr %sge7 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %sge, ptr %sge7, align 4
  %tx_sched = getelementptr inbounds %struct.sge, ptr %sge, i32 0, i32 16
  %2 = ptrtoint ptr %tx_sched to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i, ptr %tx_sched, align 16
  %skbq = getelementptr %struct.sched, ptr %call7.i.i, i32 0, i32 4, i32 0, i32 4
  %lock.i = getelementptr %struct.sched, ptr %call7.i.i, i32 0, i32 4, i32 0, i32 4, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.47, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #13
  %3 = ptrtoint ptr %skbq to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %skbq, ptr %skbq, align 4
  %prev.i.i = getelementptr %struct.sched, ptr %call7.i.i, i32 0, i32 4, i32 0, i32 4, i32 0, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %skbq, ptr %prev.i.i, align 8
  %qlen.i.i = getelementptr %struct.sched, ptr %call7.i.i, i32 0, i32 4, i32 0, i32 4, i32 1
  %5 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %qlen.i.i, align 4
  %call8 = tail call i32 @t1_sched_update_parms(ptr noundef %sge, i32 noundef 0, i32 noundef 1500, i32 noundef 1000)
  %skbq.1 = getelementptr %struct.sched, ptr %call7.i.i, i32 0, i32 4, i32 1, i32 4
  %lock.i.1 = getelementptr %struct.sched, ptr %call7.i.i, i32 0, i32 4, i32 1, i32 4, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i.1, ptr noundef nonnull @.str.47, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #13
  %6 = ptrtoint ptr %skbq.1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %skbq.1, ptr %skbq.1, align 4
  %prev.i.i.1 = getelementptr %struct.sched, ptr %call7.i.i, i32 0, i32 4, i32 1, i32 4, i32 0, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %skbq.1, ptr %prev.i.i.1, align 8
  %qlen.i.i.1 = getelementptr %struct.sched, ptr %call7.i.i, i32 0, i32 4, i32 1, i32 4, i32 1
  %8 = ptrtoint ptr %qlen.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %qlen.i.i.1, align 4
  %call8.1 = tail call i32 @t1_sched_update_parms(ptr noundef %sge, i32 noundef 1, i32 noundef 1500, i32 noundef 1000)
  %skbq.2 = getelementptr %struct.sched, ptr %call7.i.i, i32 0, i32 4, i32 2, i32 4
  %lock.i.2 = getelementptr %struct.sched, ptr %call7.i.i, i32 0, i32 4, i32 2, i32 4, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i.2, ptr noundef nonnull @.str.47, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #13
  %9 = ptrtoint ptr %skbq.2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %skbq.2, ptr %skbq.2, align 4
  %prev.i.i.2 = getelementptr %struct.sched, ptr %call7.i.i, i32 0, i32 4, i32 2, i32 4, i32 0, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i.2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %skbq.2, ptr %prev.i.i.2, align 8
  %qlen.i.i.2 = getelementptr %struct.sched, ptr %call7.i.i, i32 0, i32 4, i32 2, i32 4, i32 1
  %11 = ptrtoint ptr %qlen.i.i.2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %qlen.i.i.2, align 4
  %call8.2 = tail call i32 @t1_sched_update_parms(ptr noundef %sge, i32 noundef 2, i32 noundef 1500, i32 noundef 1000)
  %skbq.3 = getelementptr %struct.sched, ptr %call7.i.i, i32 0, i32 4, i32 3, i32 4
  %lock.i.3 = getelementptr %struct.sched, ptr %call7.i.i, i32 0, i32 4, i32 3, i32 4, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i.3, ptr noundef nonnull @.str.47, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #13
  %12 = ptrtoint ptr %skbq.3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %skbq.3, ptr %skbq.3, align 4
  %prev.i.i.3 = getelementptr %struct.sched, ptr %call7.i.i, i32 0, i32 4, i32 3, i32 4, i32 0, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i.i.3 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %skbq.3, ptr %prev.i.i.3, align 8
  %qlen.i.i.3 = getelementptr %struct.sched, ptr %call7.i.i, i32 0, i32 4, i32 3, i32 4, i32 1
  %14 = ptrtoint ptr %qlen.i.i.3 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %qlen.i.i.3, align 4
  %call8.3 = tail call i32 @t1_sched_update_parms(ptr noundef %sge, i32 noundef 3, i32 noundef 1500, i32 noundef 1000)
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @update_tx_info(ptr nocapture noundef readonly %adapter, i32 noundef %flags, i32 noundef %pr0) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %sge1 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 9
  %0 = ptrtoint ptr %sge1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sge1, align 8
  %cmdQ = getelementptr inbounds %struct.sge, ptr %1, i32 0, i32 18
  %processed = getelementptr inbounds %struct.sge, ptr %1, i32 0, i32 18, i32 0, i32 3
  %2 = ptrtoint ptr %processed to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %processed, align 4
  %add = add i32 %3, %pr0
  store i32 %add, ptr %processed, align 4
  %and = and i32 %flags, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @freelQs_empty(ptr noundef %1)
  %and2 = and i32 %flags, -13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %flags.addr.0 = phi i32 [ %and2, %if.then ], [ %flags, %entry.if.end_crit_edge ]
  %and3 = and i32 %flags.addr.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.end.if.end18_crit_edge, label %if.then5

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end18

if.then5:                                         ; preds = %if.end
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %cmdQ) #13
  %cleaned = getelementptr inbounds %struct.sge, ptr %1, i32 0, i32 18, i32 0, i32 4
  %4 = ptrtoint ptr %cleaned to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cleaned, align 4
  %in_use = getelementptr inbounds %struct.sge, ptr %1, i32 0, i32 18, i32 0, i32 1
  %6 = ptrtoint ptr %in_use to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %in_use, align 4
  %add6 = add i32 %7, %5
  %8 = ptrtoint ptr %processed to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %processed, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add6, i32 %9)
  %cmp.not = icmp eq i32 %add6, %9
  br i1 %cmp.not, label %if.then5.if.end12_crit_edge, label %land.lhs.true

if.then5.if.end12_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12

land.lhs.true:                                    ; preds = %if.then5
  %call = tail call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef %cmdQ) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool9.not = icmp eq i32 %call, 0
  br i1 %tobool9.not, label %if.then10, label %land.lhs.true.if.end12_crit_edge

land.lhs.true.if.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12

if.then10:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_set_bit(i32 noundef 1, ptr noundef %cmdQ) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !160
  tail call void @arm_heavy_mb() #13
  %10 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %adapter, align 128
  %add.ptr = getelementptr i8, ptr %11, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 16777216) #13, !srcloc !115
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %land.lhs.true.if.end12_crit_edge, %if.then5.if.end12_crit_edge
  %tx_sched = getelementptr inbounds %struct.sge, ptr %1, i32 0, i32 16
  %12 = ptrtoint ptr %tx_sched to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tx_sched, align 16
  %tobool13.not = icmp eq ptr %13, null
  br i1 %tobool13.not, label %if.end12.if.end16_crit_edge, label %if.then14

if.end12.if.end16_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end16

if.then14:                                        ; preds = %if.end12
  %state.i = getelementptr inbounds %struct.sched, ptr %13, i32 0, i32 5, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then14.if.end16_crit_edge

if.then14.if.end16_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end16

if.then.i:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #15
  %sched_tsk = getelementptr inbounds %struct.sched, ptr %13, i32 0, i32 5
  tail call void @__tasklet_hi_schedule(ptr noundef %sched_tsk) #13
  br label %if.end16

if.end16:                                         ; preds = %if.then.i, %if.then14.if.end16_crit_edge, %if.end12.if.end16_crit_edge
  %and17 = and i32 %flags.addr.0, -2
  br label %if.end18

if.end18:                                         ; preds = %if.end16, %if.end.if.end18_crit_edge
  %flags.addr.1 = phi i32 [ %and17, %if.end16 ], [ %flags.addr.0, %if.end.if.end18_crit_edge ]
  %stopped_tx_queues = getelementptr inbounds %struct.sge, ptr %1, i32 0, i32 4
  %14 = ptrtoint ptr %stopped_tx_queues to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %stopped_tx_queues, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp19.not = icmp eq i32 %15, 0
  br i1 %cmp19.not, label %if.end18.if.end23_crit_edge, label %if.then22, !prof !112

if.end18.if.end23_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end23

if.then22:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @restart_tx_queues(ptr noundef %1)
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %if.end18.if.end23_crit_edge
  ret i32 %flags.addr.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @restart_tx_queues(ptr noundef %sge) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sge to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sge, align 128
  %processed.i = getelementptr inbounds %struct.sge, ptr %sge, i32 0, i32 18, i32 0, i32 3
  %2 = ptrtoint ptr %processed.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %processed.i, align 4
  %cleaned.i = getelementptr inbounds %struct.sge, ptr %sge, i32 0, i32 18, i32 0, i32 4
  %4 = ptrtoint ptr %cleaned.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cleaned.i, align 4
  %sub.neg.i = sub i32 %5, %3
  %in_use.i = getelementptr inbounds %struct.sge, ptr %sge, i32 0, i32 18, i32 0, i32 1
  %6 = ptrtoint ptr %in_use.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %in_use.i, align 4
  %sub1.i = add i32 %sub.neg.i, %7
  %size.i = getelementptr inbounds %struct.sge, ptr %sge, i32 0, i32 18, i32 0, i32 2
  %8 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %size.i, align 4
  %shr.i = lshr i32 %9, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub1.i, i32 %shr.i)
  %cmp.i.not = icmp ult i32 %sub1.i, %shr.i
  br i1 %cmp.i.not, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %nports = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 8, i32 6
  %10 = ptrtoint ptr %nports to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nports, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp19.not = icmp eq i32 %11, 0
  br i1 %cmp19.not, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %stopped_tx_queues = getelementptr inbounds %struct.sge, ptr %sge, i32 0, i32 4
  %arrayidx7 = getelementptr %struct.sge, ptr %sge, i32 0, i32 14, i32 9, i32 2
  br label %for.body

for.body:                                         ; preds = %if.end8.for.body_crit_edge, %for.body.lr.ph
  %i.020 = phi i32 [ 0, %for.body.lr.ph ], [ %inc9, %if.end8.for.body_crit_edge ]
  %arrayidx1 = getelementptr %struct.adapter, ptr %1, i32 0, i32 13, i32 %i.020
  %12 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx1, align 8
  %if_port = getelementptr inbounds %struct.net_device, ptr %13, i32 0, i32 52
  %14 = ptrtoint ptr %if_port to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %if_port, align 2
  %conv = zext i8 %15 to i32
  %call2 = tail call i32 @_test_and_clear_bit(i32 noundef %conv, ptr noundef %stopped_tx_queues) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %for.body.if.end8_crit_edge, label %land.lhs.true

for.body.if.end8_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8

land.lhs.true:                                    ; preds = %for.body
  %state.i = getelementptr inbounds %struct.net_device, ptr %13, i32 0, i32 6
  %16 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %land.lhs.true.if.end8_crit_edge, label %if.then6

land.lhs.true.if.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8

if.then6:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %18 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx7, align 4
  %inc = add i32 %19, 1
  store i32 %inc, ptr %arrayidx7, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %13, i32 0, i32 103
  %20 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %21) #13
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %land.lhs.true.if.end8_crit_edge, %for.body.if.end8_crit_edge
  %inc9 = add nuw i32 %i.020, 1
  %22 = ptrtoint ptr %nports to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %nports, align 8
  %cmp = icmp ult i32 %inc9, %23
  br i1 %cmp, label %if.end8.for.body_crit_edge, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end8.for.body_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

cleanup:                                          ; preds = %if.end8.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_hi_schedule(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_cpu(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_receive_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__napi_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #11

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @reclaim_completed_tx(ptr nocapture noundef readonly %sge, ptr nocapture noundef %q) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %processed = getelementptr inbounds %struct.cmdQ, ptr %q, i32 0, i32 3
  %0 = ptrtoint ptr %processed to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %processed, align 4
  %cleaned = getelementptr inbounds %struct.cmdQ, ptr %q, i32 0, i32 4
  %2 = ptrtoint ptr %cleaned to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cleaned, align 4
  %sub = sub i32 %1, %3
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %tobool.not = icmp eq i32 %1, %3
  br i1 %tobool.not, label %entry.if.end8_crit_edge, label %do.body

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reclaim_completed_tx.__UNIQUE_ID_ddebug502, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@reclaim_completed_tx, %if.then4)) #13
          to label %do.end [label %if.then4], !srcloc !111

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %4 = ptrtoint ptr %processed to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %processed, align 4
  %6 = ptrtoint ptr %cleaned to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cleaned, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @reclaim_completed_tx.__UNIQUE_ID_ddebug502, ptr noundef nonnull @.str.29, i32 noundef %5, i32 noundef %7) #13
  br label %do.end

do.end:                                           ; preds = %if.then4, %do.body
  %8 = ptrtoint ptr %sge to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sge, align 128
  %pdev1.i = getelementptr inbounds %struct.adapter, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %pdev1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev1.i, align 4
  %cidx2.i = getelementptr inbounds %struct.cmdQ, ptr %q, i32 0, i32 7
  %12 = ptrtoint ptr %cidx2.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %cidx2.i, align 2
  %conv.i = zext i16 %13 to i32
  %in_use.i = getelementptr inbounds %struct.cmdQ, ptr %q, i32 0, i32 1
  %14 = ptrtoint ptr %in_use.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %in_use.i, align 4
  %sub.i = sub i32 %15, %sub
  store i32 %sub.i, ptr %in_use.i, align 4
  %centries.i = getelementptr inbounds %struct.cmdQ, ptr %q, i32 0, i32 11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %tobool.not40.i = icmp eq i32 %sub, 0
  br i1 %tobool.not40.i, label %do.end.free_cmdQ_buffers.exit_crit_edge, label %while.body.lr.ph.i

do.end.free_cmdQ_buffers.exit_crit_edge:          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %free_cmdQ_buffers.exit

while.body.lr.ph.i:                               ; preds = %do.end
  %16 = ptrtoint ptr %centries.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %centries.i, align 4
  %arrayidx.i = getelementptr %struct.cmdQ_ce, ptr %17, i32 %conv.i
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  %sop.i = getelementptr inbounds %struct.cmdQ, ptr %q, i32 0, i32 9
  %size.i = getelementptr inbounds %struct.cmdQ, ptr %q, i32 0, i32 2
  br label %while.body.i

while.body.i:                                     ; preds = %if.end19.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %dec43.in.i = phi i32 [ %sub, %while.body.lr.ph.i ], [ %dec43.i, %if.end19.i.while.body.i_crit_edge ]
  %cidx.042.i = phi i32 [ %conv.i, %while.body.lr.ph.i ], [ %cidx.1.i, %if.end19.i.while.body.i_crit_edge ]
  %ce.041.i = phi ptr [ %arrayidx.i, %while.body.lr.ph.i ], [ %ce.1.i, %if.end19.i.while.body.i_crit_edge ]
  %dec43.i = add i32 %dec43.in.i, -1
  %dma_len.i = getelementptr inbounds %struct.cmdQ_ce, ptr %ce.041.i, i32 0, i32 2
  %18 = ptrtoint ptr %dma_len.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dma_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool3.not.i = icmp eq i32 %19, 0
  br i1 %tobool3.not.i, label %while.body.i.if.end10.i_crit_edge, label %if.then.i, !prof !118

while.body.i.if.end10.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10.i

if.then.i:                                        ; preds = %while.body.i
  %dma_addr.i = getelementptr inbounds %struct.cmdQ_ce, ptr %ce.041.i, i32 0, i32 1
  %20 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dma_addr.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev.i, i32 noundef %21, i32 noundef %19, i32 noundef 1, i32 noundef 0) #13
  %22 = ptrtoint ptr %sop.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %sop.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool7.not.i = icmp eq i8 %23, 0
  br i1 %tobool7.not.i, label %if.then.i.if.end10.i_crit_edge, label %if.then8.i

if.then.i.if.end10.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10.i

if.then8.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %24 = ptrtoint ptr %sop.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %sop.i, align 1
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then8.i, %if.then.i.if.end10.i_crit_edge, %while.body.i.if.end10.i_crit_edge
  %25 = ptrtoint ptr %ce.041.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ce.041.i, align 4
  %tobool11.not.i = icmp eq ptr %26, null
  br i1 %tobool11.not.i, label %if.end10.i.if.end15.i_crit_edge, label %if.then12.i

if.end10.i.if.end15.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.i

if.then12.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %26, i32 noundef 1) #13
  %27 = ptrtoint ptr %sop.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %sop.i, align 1
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then12.i, %if.end10.i.if.end15.i_crit_edge
  %incdec.ptr.i = getelementptr %struct.cmdQ_ce, ptr %ce.041.i, i32 1
  %inc.i = add i32 %cidx.042.i, 1
  %28 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %29)
  %cmp.i = icmp eq i32 %inc.i, %29
  br i1 %cmp.i, label %if.then17.i, label %if.end15.i.if.end19.i_crit_edge

if.end15.i.if.end19.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end19.i

if.then17.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #15
  %30 = ptrtoint ptr %centries.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %centries.i, align 4
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.then17.i, %if.end15.i.if.end19.i_crit_edge
  %ce.1.i = phi ptr [ %31, %if.then17.i ], [ %incdec.ptr.i, %if.end15.i.if.end19.i_crit_edge ]
  %cidx.1.i = phi i32 [ 0, %if.then17.i ], [ %inc.i, %if.end15.i.if.end19.i_crit_edge ]
  %tobool.not.i = icmp eq i32 %dec43.i, 0
  br i1 %tobool.not.i, label %if.end19.i.free_cmdQ_buffers.exit_crit_edge, label %if.end19.i.while.body.i_crit_edge

if.end19.i.while.body.i_crit_edge:                ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i

if.end19.i.free_cmdQ_buffers.exit_crit_edge:      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %free_cmdQ_buffers.exit

free_cmdQ_buffers.exit:                           ; preds = %if.end19.i.free_cmdQ_buffers.exit_crit_edge, %do.end.free_cmdQ_buffers.exit_crit_edge
  %cidx.0.lcssa.i = phi i32 [ %conv.i, %do.end.free_cmdQ_buffers.exit_crit_edge ], [ %cidx.1.i, %if.end19.i.free_cmdQ_buffers.exit_crit_edge ]
  %conv20.i = trunc i32 %cidx.0.lcssa.i to i16
  %32 = ptrtoint ptr %cidx2.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %conv20.i, ptr %cidx2.i, align 2
  %33 = ptrtoint ptr %cleaned to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %cleaned, align 4
  %add = add i32 %34, %sub
  store i32 %add, ptr %cleaned, align 4
  br label %if.end8

if.end8:                                          ; preds = %free_cmdQ_buffers.exit, %entry.if.end8_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @sched_skb(ptr noundef %sge, ptr noundef %skb, i32 noundef %credits) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_sched = getelementptr inbounds %struct.sge, ptr %sge, i32 0, i32 16
  %0 = ptrtoint ptr %tx_sched to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx_sched, align 16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sched_skb.__UNIQUE_ID_ddebug498, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sched_skb, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !111

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sched_skb.__UNIQUE_ID_ddebug498, ptr noundef nonnull @.str.32, ptr noundef %skb) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %tobool3.not = icmp eq ptr %skb, null
  br i1 %tobool3.not, label %if.then4, label %if.else

if.then4:                                         ; preds = %do.end
  %num = getelementptr inbounds %struct.sched, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool5.not = icmp eq i32 %3, 0
  br i1 %tobool5.not, label %if.then4.cleanup_crit_edge, label %if.then4.if.end10_crit_edge

if.then4.if.end10_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.else:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  %4 = getelementptr inbounds %struct.anon.51, ptr %skb, i32 0, i32 2
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 8
  %if_port = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 52
  %7 = ptrtoint ptr %if_port to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %if_port, align 2
  %idxprom = zext i8 %8 to i32
  %skbq8 = getelementptr %struct.sched, ptr %1, i32 0, i32 4, i32 %idxprom, i32 4
  %prev.i.i = getelementptr inbounds %struct.sk_buff_list, ptr %skbq8, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i, align 4
  %11 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %skbq8, ptr %skb, align 8
  %prev10.i.i.i = getelementptr inbounds %struct.anon.51, ptr %skb, i32 0, i32 1
  %12 = ptrtoint ptr %prev10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %prev10.i.i.i, align 4
  store volatile ptr %skb, ptr %prev.i.i, align 4
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %skb, ptr %10, align 4
  %qlen.i.i.i = getelementptr %struct.sched, ptr %1, i32 0, i32 4, i32 %idxprom, i32 4, i32 1
  %14 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %qlen.i.i.i, align 4
  %add.i.i.i = add i32 %15, 1
  store volatile i32 %add.i.i.i, ptr %qlen.i.i.i, align 4
  %num9 = getelementptr inbounds %struct.sched, ptr %1, i32 0, i32 3
  %16 = ptrtoint ptr %num9 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num9, align 8
  %inc = add i32 %17, 1
  store i32 %inc, ptr %num9, align 8
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then4.if.end10_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %credits)
  %cmp = icmp ult i32 %credits, 18
  br i1 %cmp, label %if.end10.out_crit_edge, label %again.preheader

if.end10.out_crit_edge:                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

again.preheader:                                  ; preds = %if.end10
  %port = getelementptr inbounds %struct.sched, ptr %1, i32 0, i32 2
  br label %again

again:                                            ; preds = %sched_update_avail.exit, %again.preheader
  %update.0 = phi i32 [ %dec36, %sched_update_avail.exit ], [ 1, %again.preheader ]
  %18 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %port, align 4
  %add = add i32 %19, 1
  %and = and i32 %add, 3
  store i32 %and, ptr %port, align 4
  %skbq18 = getelementptr %struct.sched, ptr %1, i32 0, i32 4, i32 %and, i32 4
  %20 = ptrtoint ptr %skbq18 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %skbq18, align 4
  %cmp.i = icmp eq ptr %21, %skbq18
  %tobool20.not125 = icmp eq ptr %21, null
  %tobool20.not = or i1 %tobool20.not125, %cmp.i
  br i1 %tobool20.not, label %again.for.inc_crit_edge, label %if.end22

again.for.inc_crit_edge:                          ; preds = %again
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end22:                                         ; preds = %again
  %len23 = getelementptr inbounds %struct.sk_buff, ptr %21, i32 0, i32 6
  %22 = ptrtoint ptr %len23 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %len23, align 4
  %arrayidx26 = getelementptr %struct.sched, ptr %1, i32 0, i32 4, i32 %and
  %24 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx26, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %23)
  %cmp27.not = icmp ult i32 %25, %23
  br i1 %cmp27.not, label %if.end22.for.inc_crit_edge, label %if.end22.out.thread_crit_edge

if.end22.out.thread_crit_edge:                    ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #15
  br label %out.thread

if.end22.for.inc_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

out.thread:                                       ; preds = %if.end22.3.out.thread_crit_edge, %if.end22.2.out.thread_crit_edge, %if.end22.1.out.thread_crit_edge, %if.end22.out.thread_crit_edge
  %and.lcssa = phi i32 [ %and, %if.end22.out.thread_crit_edge ], [ %and.1, %if.end22.1.out.thread_crit_edge ], [ %and.2, %if.end22.2.out.thread_crit_edge ], [ %and.3, %if.end22.3.out.thread_crit_edge ]
  %.lcssa130 = phi ptr [ %21, %if.end22.out.thread_crit_edge ], [ %40, %if.end22.1.out.thread_crit_edge ], [ %48, %if.end22.2.out.thread_crit_edge ], [ %56, %if.end22.3.out.thread_crit_edge ]
  %.lcssa129 = phi i32 [ %23, %if.end22.out.thread_crit_edge ], [ %42, %if.end22.1.out.thread_crit_edge ], [ %50, %if.end22.2.out.thread_crit_edge ], [ %58, %if.end22.3.out.thread_crit_edge ]
  %arrayidx26.lcssa = phi ptr [ %arrayidx26, %if.end22.out.thread_crit_edge ], [ %arrayidx26.1, %if.end22.1.out.thread_crit_edge ], [ %arrayidx26.2, %if.end22.2.out.thread_crit_edge ], [ %arrayidx26.3, %if.end22.3.out.thread_crit_edge ]
  %.lcssa = phi i32 [ %25, %if.end22.out.thread_crit_edge ], [ %44, %if.end22.1.out.thread_crit_edge ], [ %52, %if.end22.2.out.thread_crit_edge ], [ %60, %if.end22.3.out.thread_crit_edge ]
  %sub = sub i32 %.lcssa, %.lcssa129
  %26 = ptrtoint ptr %arrayidx26.lcssa to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %sub, ptr %arrayidx26.lcssa, align 4
  %num33 = getelementptr inbounds %struct.sched, ptr %1, i32 0, i32 3
  %27 = ptrtoint ptr %num33 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %num33, align 8
  %dec = add i32 %28, -1
  store i32 %dec, ptr %num33, align 8
  %qlen.i = getelementptr %struct.sched, ptr %1, i32 0, i32 4, i32 %and.lcssa, i32 4, i32 1
  %29 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %qlen.i, align 4
  %sub.i = add i32 %30, -1
  store volatile i32 %sub.i, ptr %qlen.i, align 4
  %31 = ptrtoint ptr %.lcssa130 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %.lcssa130, align 8
  %prev9.i = getelementptr inbounds %struct.anon.51, ptr %.lcssa130, i32 0, i32 1
  %33 = ptrtoint ptr %prev9.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %prev9.i, align 4
  store ptr null, ptr %prev9.i, align 4
  store ptr null, ptr %.lcssa130, align 8
  %prev17.i = getelementptr inbounds %struct.anon.51, ptr %32, i32 0, i32 1
  %35 = ptrtoint ptr %prev17.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %34, ptr %prev17.i, align 4
  %36 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %32, ptr %34, align 8
  br label %do.body58

for.inc:                                          ; preds = %if.end22.for.inc_crit_edge, %again.for.inc_crit_edge
  %37 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %port, align 4
  %add.1 = add i32 %38, 1
  %and.1 = and i32 %add.1, 3
  store i32 %and.1, ptr %port, align 4
  %skbq18.1 = getelementptr %struct.sched, ptr %1, i32 0, i32 4, i32 %and.1, i32 4
  %39 = ptrtoint ptr %skbq18.1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %skbq18.1, align 4
  %cmp.i.1 = icmp eq ptr %40, %skbq18.1
  %tobool20.not125.1 = icmp eq ptr %40, null
  %tobool20.not.1 = or i1 %tobool20.not125.1, %cmp.i.1
  br i1 %tobool20.not.1, label %for.inc.for.inc.1_crit_edge, label %if.end22.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.1

if.end22.1:                                       ; preds = %for.inc
  %len23.1 = getelementptr inbounds %struct.sk_buff, ptr %40, i32 0, i32 6
  %41 = ptrtoint ptr %len23.1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %len23.1, align 4
  %arrayidx26.1 = getelementptr %struct.sched, ptr %1, i32 0, i32 4, i32 %and.1
  %43 = ptrtoint ptr %arrayidx26.1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx26.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %42)
  %cmp27.not.1 = icmp ult i32 %44, %42
  br i1 %cmp27.not.1, label %if.end22.1.for.inc.1_crit_edge, label %if.end22.1.out.thread_crit_edge

if.end22.1.out.thread_crit_edge:                  ; preds = %if.end22.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %out.thread

if.end22.1.for.inc.1_crit_edge:                   ; preds = %if.end22.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end22.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %45 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %port, align 4
  %add.2 = add i32 %46, 1
  %and.2 = and i32 %add.2, 3
  store i32 %and.2, ptr %port, align 4
  %skbq18.2 = getelementptr %struct.sched, ptr %1, i32 0, i32 4, i32 %and.2, i32 4
  %47 = ptrtoint ptr %skbq18.2 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %skbq18.2, align 4
  %cmp.i.2 = icmp eq ptr %48, %skbq18.2
  %tobool20.not125.2 = icmp eq ptr %48, null
  %tobool20.not.2 = or i1 %tobool20.not125.2, %cmp.i.2
  br i1 %tobool20.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.end22.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.2

if.end22.2:                                       ; preds = %for.inc.1
  %len23.2 = getelementptr inbounds %struct.sk_buff, ptr %48, i32 0, i32 6
  %49 = ptrtoint ptr %len23.2 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %len23.2, align 4
  %arrayidx26.2 = getelementptr %struct.sched, ptr %1, i32 0, i32 4, i32 %and.2
  %51 = ptrtoint ptr %arrayidx26.2 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx26.2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %52, i32 %50)
  %cmp27.not.2 = icmp ult i32 %52, %50
  br i1 %cmp27.not.2, label %if.end22.2.for.inc.2_crit_edge, label %if.end22.2.out.thread_crit_edge

if.end22.2.out.thread_crit_edge:                  ; preds = %if.end22.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %out.thread

if.end22.2.for.inc.2_crit_edge:                   ; preds = %if.end22.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.end22.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %53 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %port, align 4
  %add.3 = add i32 %54, 1
  %and.3 = and i32 %add.3, 3
  store i32 %and.3, ptr %port, align 4
  %skbq18.3 = getelementptr %struct.sched, ptr %1, i32 0, i32 4, i32 %and.3, i32 4
  %55 = ptrtoint ptr %skbq18.3 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %skbq18.3, align 4
  %cmp.i.3 = icmp eq ptr %56, %skbq18.3
  %tobool20.not125.3 = icmp eq ptr %56, null
  %tobool20.not.3 = or i1 %tobool20.not125.3, %cmp.i.3
  br i1 %tobool20.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.end22.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.3

if.end22.3:                                       ; preds = %for.inc.2
  %len23.3 = getelementptr inbounds %struct.sk_buff, ptr %56, i32 0, i32 6
  %57 = ptrtoint ptr %len23.3 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %len23.3, align 4
  %arrayidx26.3 = getelementptr %struct.sched, ptr %1, i32 0, i32 4, i32 %and.3
  %59 = ptrtoint ptr %arrayidx26.3 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx26.3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %60, i32 %58)
  %cmp27.not.3 = icmp ult i32 %60, %58
  br i1 %cmp27.not.3, label %if.end22.3.for.inc.3_crit_edge, label %if.end22.3.out.thread_crit_edge

if.end22.3.out.thread_crit_edge:                  ; preds = %if.end22.3
  call void @__sanitizer_cov_trace_pc() #15
  br label %out.thread

if.end22.3.for.inc.3_crit_edge:                   ; preds = %if.end22.3
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.end22.3.for.inc.3_crit_edge, %for.inc.2.for.inc.3_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %update.0)
  %tobool37.not = icmp eq i32 %update.0, 0
  br i1 %tobool37.not, label %for.inc.3.out_crit_edge, label %land.lhs.true

for.inc.3.out_crit_edge:                          ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

land.lhs.true:                                    ; preds = %for.inc.3
  %dec36 = add nsw i32 %update.0, -1
  %61 = ptrtoint ptr %tx_sched to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %tx_sched, align 16
  %call.i = tail call i64 @ktime_get() #13
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %62, align 8
  %sub.i112 = sub i64 %call.i, %64
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sched_update_avail.__UNIQUE_ID_ddebug495, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sched_skb, %if.then.i)) #13
          to label %do.end.i [label %if.then.i], !srcloc !111

if.then.i:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sched_update_avail.__UNIQUE_ID_ddebug495, ptr noundef nonnull @.str.37, i64 noundef %sub.i112) #13
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %land.lhs.true
  %cmp.i113 = icmp slt i64 %sub.i112, 15000
  br i1 %cmp.i113, label %do.end.i.out_crit_edge, label %sched_update_avail.exit

do.end.i.out_crit_edge:                           ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

sched_update_avail.exit:                          ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %max_avail.i = getelementptr inbounds %struct.sched, ptr %62, i32 0, i32 1
  %arrayidx.i = getelementptr %struct.sched, ptr %62, i32 0, i32 4, i32 0
  %drain_bits_per_1024ns.i = getelementptr %struct.sched, ptr %62, i32 0, i32 4, i32 0, i32 1
  %65 = ptrtoint ptr %drain_bits_per_1024ns.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %drain_bits_per_1024ns.i, align 4
  %conv.i = zext i32 %66 to i64
  %mul.i = mul i64 %sub.i112, %conv.i
  %67 = lshr i64 %mul.i, 13
  %conv9.i = trunc i64 %67 to i32
  %68 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %69, %conv9.i
  %70 = ptrtoint ptr %max_avail.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %max_avail.i, align 8
  %72 = tail call i32 @llvm.umin.i32(i32 %add.i, i32 %71) #13
  %73 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %arrayidx.i, align 4
  %arrayidx.1.i = getelementptr %struct.sched, ptr %62, i32 0, i32 4, i32 1
  %drain_bits_per_1024ns.1.i = getelementptr %struct.sched, ptr %62, i32 0, i32 4, i32 1, i32 1
  %74 = ptrtoint ptr %drain_bits_per_1024ns.1.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %drain_bits_per_1024ns.1.i, align 4
  %conv.1.i = zext i32 %75 to i64
  %mul.1.i = mul i64 %sub.i112, %conv.1.i
  %76 = lshr i64 %mul.1.i, 13
  %conv9.1.i = trunc i64 %76 to i32
  %77 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %arrayidx.1.i, align 4
  %add.1.i = add i32 %78, %conv9.1.i
  %79 = tail call i32 @llvm.umin.i32(i32 %add.1.i, i32 %71) #13
  %80 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %79, ptr %arrayidx.1.i, align 4
  %arrayidx.2.i = getelementptr %struct.sched, ptr %62, i32 0, i32 4, i32 2
  %drain_bits_per_1024ns.2.i = getelementptr %struct.sched, ptr %62, i32 0, i32 4, i32 2, i32 1
  %81 = ptrtoint ptr %drain_bits_per_1024ns.2.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %drain_bits_per_1024ns.2.i, align 4
  %conv.2.i = zext i32 %82 to i64
  %mul.2.i = mul i64 %sub.i112, %conv.2.i
  %83 = lshr i64 %mul.2.i, 13
  %conv9.2.i = trunc i64 %83 to i32
  %84 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %arrayidx.2.i, align 4
  %add.2.i = add i32 %85, %conv9.2.i
  %86 = tail call i32 @llvm.umin.i32(i32 %add.2.i, i32 %71) #13
  %87 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %86, ptr %arrayidx.2.i, align 4
  %arrayidx.3.i = getelementptr %struct.sched, ptr %62, i32 0, i32 4, i32 3
  %drain_bits_per_1024ns.3.i = getelementptr %struct.sched, ptr %62, i32 0, i32 4, i32 3, i32 1
  %88 = ptrtoint ptr %drain_bits_per_1024ns.3.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %drain_bits_per_1024ns.3.i, align 4
  %conv.3.i = zext i32 %89 to i64
  %mul.3.i = mul i64 %sub.i112, %conv.3.i
  %90 = lshr i64 %mul.3.i, 13
  %conv9.3.i = trunc i64 %90 to i32
  %91 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %arrayidx.3.i, align 4
  %add.3.i = add i32 %92, %conv9.3.i
  %93 = tail call i32 @llvm.umin.i32(i32 %add.3.i, i32 %71) #13
  %94 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %93, ptr %arrayidx.3.i, align 4
  %95 = ptrtoint ptr %62 to i32
  call void @__asan_store8_noabort(i32 %95)
  store i64 %call.i, ptr %62, align 8
  br label %again

out:                                              ; preds = %do.end.i.out_crit_edge, %for.inc.3.out_crit_edge, %if.end10.out_crit_edge
  %num42 = getelementptr inbounds %struct.sched, ptr %1, i32 0, i32 3
  %96 = ptrtoint ptr %num42 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %num42, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %tobool43.not.not = icmp eq i32 %97, 0
  br i1 %tobool43.not.not, label %out.do.body58_crit_edge, label %if.then46

out.do.body58_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body58

if.then46:                                        ; preds = %out
  %cmdQ = getelementptr inbounds %struct.sge, ptr %sge, i32 0, i32 18
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %cmdQ) #13
  %call49 = tail call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %cmdQ) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %cmp50 = icmp eq i32 %call49, 0
  br i1 %cmp50, label %if.then51, label %if.then46.do.body58_crit_edge

if.then46.do.body58_crit_edge:                    ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body58

if.then51:                                        ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_set_bit(i32 noundef 2, ptr noundef %cmdQ) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !161
  tail call void @arm_heavy_mb() #13
  %98 = ptrtoint ptr %sge to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %sge, align 128
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %99, align 128
  %add.ptr = getelementptr i8, ptr %101, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 16777216) #13, !srcloc !115
  br label %do.body58

do.body58:                                        ; preds = %if.then51, %if.then46.do.body58_crit_edge, %out.do.body58_crit_edge, %out.thread
  %skb.addr.4123 = phi ptr [ %.lcssa130, %out.thread ], [ null, %if.then46.do.body58_crit_edge ], [ null, %if.then51 ], [ null, %out.do.body58_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sched_skb.__UNIQUE_ID_ddebug499, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sched_skb, %if.then70)) #13
          to label %cleanup [label %if.then70], !srcloc !111

if.then70:                                        ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sched_skb.__UNIQUE_ID_ddebug499, ptr noundef nonnull @.str.34, ptr noundef %skb.addr.4123) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then70, %do.body58, %if.then4.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then4.cleanup_crit_edge ], [ %skb.addr.4123, %if.then70 ], [ %skb.addr.4123, %do.body58 ]
  ret ptr %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @write_tx_descs(ptr nocapture noundef readonly %adapter, ptr noundef %skb, i32 noundef %pidx, i32 noundef %gen, ptr nocapture noundef readonly %q) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %0 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %end.i, align 4
  %nr_frags = getelementptr inbounds %struct.skb_shared_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %nr_frags to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %nr_frags, align 2
  %conv = zext i8 %3 to i32
  %entries = getelementptr inbounds %struct.cmdQ, ptr %q, i32 0, i32 10
  %4 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %entries, align 4
  %arrayidx = getelementptr %struct.cmdQ_e, ptr %5, i32 %pidx
  %centries = getelementptr inbounds %struct.cmdQ, ptr %q, i32 0, i32 11
  %6 = ptrtoint ptr %centries to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %centries, align 4
  %arrayidx1 = getelementptr %struct.cmdQ_ce, ptr %7, i32 %pidx
  %pdev = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 1
  %8 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %12 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len.i, align 4
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %14 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %data_len.i, align 8
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %11) #13
  br i1 %call.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %entry
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !112

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev) #13
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44, i32 3
  %16 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %17, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %19, %if.end.i.i ], [ %17, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.38, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.39, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #13
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i = sub i32 %13, %15
  tail call void @debug_dma_map_single(ptr noundef %dev, ptr noundef %11, i32 noundef %sub.i) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %20 = load ptr, ptr @mem_map, align 4
  %21 = ptrtoint ptr %11 to i32
  %sub.i76 = add i32 %21, 1073741824
  %shr.i = lshr i32 %sub.i76, 12
  %add.ptr.i = getelementptr %struct.page, ptr %20, i32 %shr.i
  %and.i = and i32 %21, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef %sub.i, i32 noundef 1, i32 noundef 0) #13
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %22 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %len.i, align 4
  %24 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %data_len.i, align 8
  %sub.i79 = sub i32 %23, %25
  call void @__sanitizer_cov_trace_const_cmp4(i32 16385, i32 %sub.i79)
  %cmp6 = icmp ult i32 %sub.i79, 16385
  %cond = select i1 %cmp6, i32 %sub.i79, i32 16384
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %retval.0.i, ptr %arrayidx, align 4
  %addr_hi = getelementptr %struct.cmdQ_e, ptr %5, i32 %pidx, i32 3
  %27 = ptrtoint ptr %addr_hi to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %addr_hi, align 4
  %shl13 = shl i32 %gen, 31
  %or14 = or i32 %cond, %shl13
  %len_gen = getelementptr %struct.cmdQ_e, ptr %5, i32 %pidx, i32 1
  %28 = ptrtoint ptr %len_gen to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %or14, ptr %len_gen, align 4
  %dma_len = getelementptr %struct.cmdQ_ce, ptr %7, i32 %pidx, i32 2
  %29 = ptrtoint ptr %dma_len to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %dma_len, align 4
  %30 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %arrayidx1, align 4
  %dma_addr = getelementptr %struct.cmdQ_ce, ptr %7, i32 %pidx, i32 1
  %31 = ptrtoint ptr %dma_addr to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %retval.0.i, ptr %dma_addr, align 4
  %32 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %len.i, align 4
  %34 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %data_len.i, align 8
  %sub.i82 = sub i32 %33, %35
  store i32 %sub.i82, ptr %dma_len, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not97 = icmp eq i8 %3, 0
  br i1 %tobool.not97, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %dma_map_single_attrs.exit
  %size = getelementptr inbounds %struct.cmdQ, ptr %q, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %if.end38.for.body_crit_edge, %for.body.lr.ph
  %dec103.in = phi i32 [ %conv, %for.body.lr.ph ], [ %dec103, %if.end38.for.body_crit_edge ]
  %i.0102 = phi i32 [ 0, %for.body.lr.ph ], [ %inc43, %if.end38.for.body_crit_edge ]
  %pidx.addr.0101 = phi i32 [ %pidx, %for.body.lr.ph ], [ %pidx.addr.1, %if.end38.for.body_crit_edge ]
  %ce.0100 = phi ptr [ %arrayidx1, %for.body.lr.ph ], [ %ce.1, %if.end38.for.body_crit_edge ]
  %e1.099 = phi ptr [ %arrayidx, %for.body.lr.ph ], [ %e1.1, %if.end38.for.body_crit_edge ]
  %gen.addr.098 = phi i32 [ %gen, %for.body.lr.ph ], [ %gen.addr.1, %if.end38.for.body_crit_edge ]
  %dec103 = add nsw i32 %dec103.in, -1
  %36 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %end.i, align 4
  %arrayidx20 = getelementptr %struct.skb_shared_info, ptr %37, i32 0, i32 12, i32 %i.0102
  %incdec.ptr = getelementptr %struct.cmdQ_e, ptr %e1.099, i32 1
  %incdec.ptr21 = getelementptr %struct.cmdQ_ce, ptr %ce.0100, i32 1
  %inc = add i32 %pidx.addr.0101, 1
  %38 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %39)
  %cmp22 = icmp eq i32 %inc, %39
  br i1 %cmp22, label %if.then, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %xor = xor i32 %gen.addr.098, 1
  %40 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %entries, align 4
  %42 = ptrtoint ptr %centries to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %centries, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %gen.addr.1 = phi i32 [ %xor, %if.then ], [ %gen.addr.098, %for.body.if.end_crit_edge ]
  %e1.1 = phi ptr [ %41, %if.then ], [ %incdec.ptr, %for.body.if.end_crit_edge ]
  %ce.1 = phi ptr [ %43, %if.then ], [ %incdec.ptr21, %for.body.if.end_crit_edge ]
  %pidx.addr.1 = phi i32 [ 0, %if.then ], [ %inc, %for.body.if.end_crit_edge ]
  %44 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pdev, align 4
  %dev27 = getelementptr inbounds %struct.pci_dev, ptr %45, i32 0, i32 44
  %bv_len.i = getelementptr %struct.skb_shared_info, ptr %37, i32 0, i32 12, i32 %i.0102, i32 1
  %46 = ptrtoint ptr %bv_len.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %bv_len.i, align 4
  %48 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx20, align 4
  %bv_offset.i.i = getelementptr %struct.skb_shared_info, ptr %37, i32 0, i32 12, i32 %i.0102, i32 2
  %50 = ptrtoint ptr %bv_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %bv_offset.i.i, align 4
  %call2.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev27, ptr noundef %49, i32 noundef %51, i32 noundef %47, i32 noundef 1, i32 noundef 0) #13
  %52 = ptrtoint ptr %bv_len.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %bv_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool32.not = icmp eq i32 %53, 0
  br i1 %tobool32.not, label %if.end.if.end38_crit_edge, label %if.then35, !prof !118

if.end.if.end38_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end38

if.then35:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %53)
  %cmp.i = icmp ugt i32 %53, 16384
  br i1 %cmp.i, label %do.body2.i, label %write_tx_desc.exit, !prof !118

do.body2.i:                                       ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/chelsio/cxgb/sge.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1155, 0\0A.popsection", ""() #13, !srcloc !162
  unreachable

write_tx_desc.exit:                               ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec103)
  %cmp36 = icmp eq i32 %dec103, 0
  %54 = ptrtoint ptr %e1.1 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %call2.i, ptr %e1.1, align 4
  %addr_hi.i = getelementptr inbounds %struct.cmdQ_e, ptr %e1.1, i32 0, i32 3
  %55 = ptrtoint ptr %addr_hi.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %addr_hi.i, align 4
  %shl.i = shl i32 %gen.addr.1, 31
  %or.i = or i32 %53, %shl.i
  %len_gen.i = getelementptr inbounds %struct.cmdQ_e, ptr %e1.1, i32 0, i32 1
  %56 = ptrtoint ptr %len_gen.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %or.i, ptr %len_gen.i, align 4
  %or8.i = select i1 %cmp36, i32 10, i32 2
  %or9.i = or i32 %or8.i, %gen.addr.1
  %flags.i = getelementptr inbounds %struct.cmdQ_e, ptr %e1.1, i32 0, i32 2
  %57 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %or9.i, ptr %flags.i, align 4
  br label %if.end38

if.end38:                                         ; preds = %write_tx_desc.exit, %if.end.if.end38_crit_edge
  %58 = ptrtoint ptr %ce.1 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr null, ptr %ce.1, align 4
  %dma_addr40 = getelementptr inbounds %struct.cmdQ_ce, ptr %ce.1, i32 0, i32 1
  %59 = ptrtoint ptr %dma_addr40 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %call2.i, ptr %dma_addr40, align 4
  %60 = ptrtoint ptr %bv_len.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %bv_len.i, align 4
  %dma_len42 = getelementptr inbounds %struct.cmdQ_ce, ptr %ce.1, i32 0, i32 2
  %62 = ptrtoint ptr %dma_len42 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %dma_len42, align 4
  %inc43 = add nuw nsw i32 %i.0102, 1
  %tobool.not = icmp eq i32 %dec103, 0
  br i1 %tobool.not, label %if.end38.for.end.thread_crit_edge, label %if.end38.for.body_crit_edge

if.end38.for.body_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

if.end38.for.end.thread_crit_edge:                ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.thread

for.end:                                          ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #15
  %spec.select = select i1 %cmp6, i32 14, i32 6
  br label %for.end.thread

for.end.thread:                                   ; preds = %for.end, %if.end38.for.end.thread_crit_edge
  %ce.0.lcssa106 = phi ptr [ %arrayidx1, %for.end ], [ %ce.1, %if.end38.for.end.thread_crit_edge ]
  %63 = phi i32 [ %spec.select, %for.end ], [ 6, %if.end38.for.end.thread_crit_edge ]
  %or8 = or i32 %63, %gen
  %64 = ptrtoint ptr %ce.0.lcssa106 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %skb, ptr %ce.0.lcssa106, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !163
  tail call void @arm_heavy_mb() #13
  %flags45 = getelementptr %struct.cmdQ_e, ptr %5, i32 %pidx, i32 2
  %65 = ptrtoint ptr %flags45 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %or8, ptr %flags45, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_trylock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t1_espi_get_mon_t204(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t1_espi_get_mon(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_setup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @restart_sched(ptr nocapture noundef readonly %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %sge1 = getelementptr i8, ptr %t, i32 24
  %0 = ptrtoint ptr %sge1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sge1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 128
  %cmdQ = getelementptr inbounds %struct.sge, ptr %1, i32 0, i32 18
  %lock = getelementptr inbounds %struct.sge, ptr %1, i32 0, i32 18, i32 0, i32 13
  tail call void @_raw_spin_lock(ptr noundef %lock) #13
  tail call fastcc void @reclaim_completed_tx(ptr noundef %1, ptr noundef %cmdQ)
  %size = getelementptr inbounds %struct.sge, ptr %1, i32 0, i32 18, i32 0, i32 2
  %4 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %size, align 4
  %in_use = getelementptr inbounds %struct.sge, ptr %1, i32 0, i32 18, i32 0, i32 1
  %6 = ptrtoint ptr %in_use to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %in_use, align 4
  %sub = sub i32 %5, %7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @restart_sched.__UNIQUE_ID_ddebug503, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@restart_sched, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !111

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @restart_sched.__UNIQUE_ID_ddebug503, ptr noundef nonnull @.str.46, i32 noundef %sub) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call682 = tail call fastcc ptr @sched_skb(ptr noundef %1, ptr noundef null, i32 noundef %sub)
  %cmp.not83 = icmp eq ptr %call682, null
  br i1 %cmp.not83, label %do.end.if.end51_crit_edge, label %while.body.lr.ph

do.end.if.end51_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end51

while.body.lr.ph:                                 ; preds = %do.end
  %genbit12 = getelementptr inbounds %struct.sge, ptr %1, i32 0, i32 18, i32 0, i32 8
  %pidx14 = getelementptr inbounds %struct.sge, ptr %1, i32 0, i32 18, i32 0, i32 6
  br label %while.body

while.body:                                       ; preds = %if.end34.while.body_crit_edge, %while.body.lr.ph
  %call684 = phi ptr [ %call682, %while.body.lr.ph ], [ %call6, %if.end34.while.body_crit_edge ]
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %call684, i32 0, i32 17
  %8 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %end.i, align 4
  %nr_frags = getelementptr inbounds %struct.skb_shared_info, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %nr_frags to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %nr_frags, align 2
  %conv = zext i8 %11 to i32
  %add = add nuw nsw i32 %conv, 1
  %12 = ptrtoint ptr %in_use to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %in_use, align 4
  %add11 = add i32 %add, %13
  store i32 %add11, ptr %in_use, align 4
  %14 = ptrtoint ptr %genbit12 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %genbit12, align 4
  %conv13 = zext i8 %15 to i32
  %16 = ptrtoint ptr %pidx14 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %pidx14, align 4
  %conv15 = zext i16 %17 to i32
  %18 = trunc i32 %add to i16
  %conv19 = add i16 %17, %18
  store i16 %conv19, ptr %pidx14, align 4
  %conv21 = zext i16 %conv19 to i32
  %19 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %conv21)
  %cmp23.not = icmp ugt i32 %20, %conv21
  br i1 %cmp23.not, label %while.body.if.end34_crit_edge, label %if.then25

while.body.if.end34_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end34

if.then25:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  %21 = trunc i32 %20 to i16
  %conv30 = sub i16 %conv19, %21
  %22 = ptrtoint ptr %pidx14 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %conv30, ptr %pidx14, align 4
  %23 = xor i8 %15, 1
  %24 = ptrtoint ptr %genbit12 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %genbit12, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.then25, %while.body.if.end34_crit_edge
  tail call fastcc void @write_tx_descs(ptr noundef %3, ptr noundef nonnull %call684, i32 noundef %conv15, i32 noundef %conv13, ptr noundef %cmdQ)
  %25 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %size, align 4
  %27 = ptrtoint ptr %in_use to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %in_use, align 4
  %sub37 = sub i32 %26, %28
  %call6 = tail call fastcc ptr @sched_skb(ptr noundef %1, ptr noundef null, i32 noundef %sub37)
  %cmp.not = icmp eq ptr %call6, null
  br i1 %cmp.not, label %if.then39, label %if.end34.while.body_crit_edge

if.end34.while.body_crit_edge:                    ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

if.then39:                                        ; preds = %if.end34
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %cmdQ) #13
  %call41 = tail call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %cmdQ) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %cmp42 = icmp eq i32 %call41, 0
  br i1 %cmp42, label %if.then44, label %if.then39.if.end51_crit_edge

if.then39.if.end51_crit_edge:                     ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end51

if.then44:                                        ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_set_bit(i32 noundef 2, ptr noundef %cmdQ) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !164
  tail call void @arm_heavy_mb() #13
  %29 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %3, align 128
  %add.ptr49 = getelementptr i8, ptr %30, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr49, i32 16777216) #13, !srcloc !115
  br label %if.end51

if.end51:                                         ; preds = %if.then44, %if.then39.if.end51_crit_edge, %do.end.if.end51_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #13
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 54)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 54)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind readonly }
attributes #11 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #12 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { nounwind readnone }
attributes #17 = { cold nounwind }
attributes #18 = { nounwind readonly willreturn }
attributes #19 = { nounwind allocsize(0) }
attributes #20 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !9, !10, !11, !13, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !27, !29, !31, !32, !33, !34, !36, !37, !38, !40, !41, !43, !44, !46, !47, !48, !50, !52, !53, !54, !55, !57, !58, !59, !60, !62, !63, !64, !65, !67, !68, !69, !70, !72, !73, !74, !76, !77, !78, !79, !81, !82, !83, !85, !86, !88, !90, !91, !92, !93, !95, !96, !97, !98, !100}
!llvm.named.register.sp = !{!101}
!llvm.module.flags = !{!102, !103, !104, !105, !106, !107, !108, !109}
!llvm.ident = !{!110}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/chelsio/cxgb/sge.c", i32 306, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @t1_sched_update_parms.__UNIQUE_ID_ddebug486, !1, !"__UNIQUE_ID_ddebug486", i1 false, i1 false}
!6 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/net/ethernet/chelsio/cxgb/sge.c", i32 331, i32 2}
!9 = !{ptr @t1_sched_update_parms.__UNIQUE_ID_ddebug493, !8, !"__UNIQUE_ID_ddebug493", i1 false, i1 false}
!10 = !{ptr @.str.6, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/ethernet/chelsio/cxgb/sge.c", i32 955, i32 3}
!13 = !{ptr @.str.8, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @t1_sge_intr_error_handler._entry, !12, !"_entry", i1 false, i1 false}
!15 = !{ptr @t1_sge_intr_error_handler._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/chelsio/cxgb/sge.c", i32 964, i32 3}
!18 = !{ptr @t1_sge_intr_error_handler._entry.9, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @t1_sge_intr_error_handler._entry_ptr.11, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.13, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/chelsio/cxgb/sge.c", i32 969, i32 3}
!22 = !{ptr @t1_sge_intr_error_handler._entry.12, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @t1_sge_intr_error_handler._entry_ptr.14, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @__param_copybreak, !25, !"__param_copybreak", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/chelsio/cxgb/sge.c", i32 1032, i32 1}
!26 = !{ptr @__UNIQUE_ID_copybreaktype500, !25, !"__UNIQUE_ID_copybreaktype500", i1 false, i1 false}
!27 = !{ptr @__UNIQUE_ID_copybreak501, !28, !"__UNIQUE_ID_copybreak501", i1 false, i1 false}
!28 = !{!"../drivers/net/ethernet/chelsio/cxgb/sge.c", i32 1033, i32 1}
!29 = !{ptr @.str.15, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/ethernet/chelsio/cxgb/sge.c", i32 1644, i32 3}
!31 = !{ptr @.str.16, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @t1_interrupt_thread._entry, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @t1_interrupt_thread._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/chelsio/cxgb/sge.c", i32 1868, i32 4}
!36 = !{ptr @.str.18, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @t1_start_xmit.__UNIQUE_ID_ddebug504, !35, !"__UNIQUE_ID_ddebug504", i1 false, i1 false}
!38 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/chelsio/cxgb/sge.c", i32 1877, i32 5}
!40 = !{ptr @t1_start_xmit.__UNIQUE_ID_ddebug505, !39, !"__UNIQUE_ID_ddebug505", i1 false, i1 false}
!41 = !{ptr @t1_sge_create.__key, !42, !"__key", i1 false, i1 false}
!42 = !{!"../drivers/net/ethernet/chelsio/cxgb/sge.c", i32 2124, i32 2}
!43 = !{ptr @.str.20, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @t1_sge_create.__key.21, !45, !"__key", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/chelsio/cxgb/sge.c", i32 2127, i32 3}
!46 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @__param_str_copybreak, !25, !"__param_str_copybreak", i1 false, i1 false}
!48 = !{ptr @copybreak, !49, !"copybreak", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/chelsio/cxgb/sge.c", i32 1031, i32 12}
!50 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/ethernet/chelsio/cxgb/sge.c", i32 1107, i32 2}
!52 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @unexpected_offload._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @unexpected_offload._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.25, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/ethernet/chelsio/cxgb/sge.c", i32 1728, i32 4}
!57 = !{ptr @.str.26, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @t1_sge_tx._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @t1_sge_tx._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.27, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/ethernet/chelsio/cxgb/sge.c", i32 1304, i32 3}
!62 = !{ptr @.str.28, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @reclaim_completed_tx.__UNIQUE_ID_ddebug502, !61, !"__UNIQUE_ID_ddebug502", i1 false, i1 false}
!64 = !{ptr @.str.29, !61, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.30, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/ethernet/chelsio/cxgb/sge.c", i32 441, i32 2}
!67 = !{ptr @.str.31, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @sched_skb.__UNIQUE_ID_ddebug498, !66, !"__UNIQUE_ID_ddebug498", i1 false, i1 false}
!69 = !{ptr @.str.32, !66, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @.str.33, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/ethernet/chelsio/cxgb/sge.c", i32 490, i32 2}
!72 = !{ptr @sched_skb.__UNIQUE_ID_ddebug499, !71, !"__UNIQUE_ID_ddebug499", i1 false, i1 false}
!73 = !{ptr @.str.34, !71, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @.str.35, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/ethernet/chelsio/cxgb/sge.c", i32 409, i32 2}
!76 = !{ptr @.str.36, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @sched_update_avail.__UNIQUE_ID_ddebug495, !75, !"__UNIQUE_ID_ddebug495", i1 false, i1 false}
!78 = !{ptr @.str.37, !75, !"<string literal>", i1 false, i1 false}
!79 = distinct !{null, !80, !"__already_done", i1 false, i1 false}
!80 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!81 = !{ptr @.str.38, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @.str.39, !80, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @alloc_tx_resources.__key, !84, !"__key", i1 false, i1 false}
!84 = !{!"../drivers/net/ethernet/chelsio/cxgb/sge.c", i32 695, i32 3}
!85 = !{ptr @.str.40, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @ch_mac_addr, !87, !"ch_mac_addr", i1 false, i1 false}
!87 = !{!"../drivers/net/ethernet/chelsio/cxgb/sge.c", i32 277, i32 17}
!88 = !{ptr @.str.41, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/ethernet/chelsio/cxgb/sge.c", i32 382, i32 2}
!90 = !{ptr @.str.42, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @tx_sched_init.__UNIQUE_ID_ddebug494, !89, !"__UNIQUE_ID_ddebug494", i1 false, i1 false}
!92 = !{ptr @.str.43, !89, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @.str.44, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/ethernet/chelsio/cxgb/sge.c", i32 1328, i32 2}
!95 = !{ptr @.str.45, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @restart_sched.__UNIQUE_ID_ddebug503, !94, !"__UNIQUE_ID_ddebug503", i1 false, i1 false}
!97 = !{ptr @.str.46, !94, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @skb_queue_head_init.__key, !99, !"__key", i1 false, i1 false}
!99 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!100 = !{ptr @.str.47, !99, !"<string literal>", i1 false, i1 false}
!101 = !{!"sp"}
!102 = !{i32 1, !"wchar_size", i32 2}
!103 = !{i32 1, !"min_enum_size", i32 4}
!104 = !{i32 8, !"branch-target-enforcement", i32 0}
!105 = !{i32 8, !"sign-return-address", i32 0}
!106 = !{i32 8, !"sign-return-address-all", i32 0}
!107 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!108 = !{i32 7, !"uwtable", i32 1}
!109 = !{i32 7, !"frame-pointer", i32 2}
!110 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!111 = !{i64 2149022640, i64 2149022645, i64 2149022658, i64 2149022702, i64 2149022736, i64 2149022757}
!112 = !{!"branch_weights", i32 2000, i32 1}
!113 = !{i64 2148255687, i64 2148255967, i64 2148256301, i64 2148256635}
!114 = !{i64 2157968194}
!115 = !{i64 6778502}
!116 = !{i64 6778920}
!117 = !{i64 2157968908}
!118 = !{!"branch_weights", i32 1, i32 2000}
!119 = !{i64 2157973483}
!120 = !{i64 2157973903}
!121 = !{i64 2157974432}
!122 = !{i64 2157975497}
!123 = !{i64 2157975894}
!124 = !{i64 2157976492}
!125 = !{i64 2157977202}
!126 = !{i64 2157977716}
!127 = !{i64 2157978423}
!128 = !{i64 2157984407}
!129 = !{i64 2157971911}
!130 = !{i64 2157972240}
!131 = !{i64 2157972677}
!132 = !{i64 2157963702}
!133 = !{i64 2157963922}
!134 = !{i64 2158006567, i64 2158007072, i64 2158006604, i64 2158006660, i64 2158006694, i64 2158006718, i64 2158006759, i64 2158006780, i64 2158006808, i64 2158006842}
!135 = !{i64 2157985864}
!136 = !{i64 907551}
!137 = !{i64 2155009396, i64 2155009884, i64 2155009433, i64 2155009489, i64 2155009523, i64 2155009547, i64 2155009588, i64 2155009609, i64 2155009637, i64 2155009671}
!138 = !{i64 2158008241}
!139 = !{i64 2158010531}
!140 = !{i64 2158013045}
!141 = !{i64 2158013577}
!142 = !{i64 2158028083}
!143 = !{i64 2158028777}
!144 = !{i64 2158014212}
!145 = !{i64 2158008913}
!146 = !{i64 2158014658}
!147 = !{i64 2148410793, i64 2148410825, i64 2148410854, i64 2148410888, i64 2148410919, i64 2148410942}
!148 = !{i64 2158017808}
!149 = !{i64 2158027620}
!150 = !{i64 2157969121}
!151 = !{i64 2157966653}
!152 = !{i64 2157967087}
!153 = !{i64 2157967515}
!154 = !{i64 2157969572}
!155 = !{i64 2157970013}
!156 = !{i64 2158029080}
!157 = !{i64 2158029907}
!158 = !{i64 2157971394}
!159 = !{i64 2158027138}
!160 = !{i64 2158005645}
!161 = !{i64 2157960969}
!162 = !{i64 2157993014, i64 2157993519, i64 2157993051, i64 2157993107, i64 2157993141, i64 2157993165, i64 2157993206, i64 2157993227, i64 2157993255, i64 2157993289}
!163 = !{i64 2157995729}
!164 = !{i64 2158002676}
