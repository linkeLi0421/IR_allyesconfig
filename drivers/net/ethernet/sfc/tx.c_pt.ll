; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/sfc/tx.c_pt.bc'
source_filename = "../drivers/net/ethernet/sfc/tx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.softnet_data = type { %struct.list_head, %struct.sk_buff_head, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.sk_buff_head, %struct.anon.153, [100 x i8], i32, [124 x i8], %struct.__call_single_data, ptr, i32, i32, i32, %struct.sk_buff_head, %struct.napi_struct, [72 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.anon.153 = type { i16, i8 }
%struct.__call_single_data = type { %struct.__call_single_node, ptr, ptr }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.20 }
%struct.llist_node = type { ptr }
%union.anon.20 = type { i32 }
%struct.sk_buff_head = type { %union.anon.78, i32, %struct.spinlock }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.efx_tx_queue = type { ptr, i32, i32, i32, i32, i8, ptr, ptr, ptr, ptr, %struct.efx_special_buffer, i32, ptr, i32, i8, i8, i8, [53 x i8], i32, i32, i32, i32, i32, i32, i32, [100 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, [72 x i8], i32, %struct.atomic_t, [120 x i8] }
%struct.efx_special_buffer = type { %struct.efx_buffer, i32, i32 }
%struct.efx_buffer = type { ptr, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.efx_tx_buffer = type { %union.anon.147, %union.anon.148, i16, i16, i16, i16 }
%union.anon.147 = type { ptr }
%union.anon.148 = type { %union.efx_qword }
%union.efx_qword = type { [1 x i64] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
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
%struct.refcount_struct = type { %struct.atomic_t }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.efx_channel = type { ptr, i32, ptr, i8, i8, i32, i32, ptr, %struct.napi_struct, i32, %struct.efx_special_buffer, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.delayed_work, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, %struct.efx_rx_queue, [4 x %struct.efx_tx_queue], [8 x ptr], i32, i32, i32, [84 x i8] }
%struct.efx_rx_queue = type { ptr, i32, ptr, %struct.efx_special_buffer, i32, i8, i8, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, [92 x i8], %struct.xdp_rxq_info, i8, [127 x i8] }
%struct.xdp_rxq_info = type { ptr, i32, i32, %struct.xdp_mem_info, i32, [104 x i8] }
%struct.xdp_mem_info = type { i32, i32 }
%struct.efx_nic = type { [16 x i8], %struct.list_head, ptr, %struct.list_head, ptr, i32, ptr, i32, i8, ptr, [16 x i8], %struct.work_struct, i32, ptr, i32, i32, i32, i32, i8, i8, i32, i32, i32, i32, i32, [32 x ptr], [32 x %struct.efx_msi_context], [2 x ptr], i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.efx_rss_context, %struct.mutex, i32, i32, i32, i8, i8, %struct.efx_buffer, i32, i32, %struct.delayed_work, %struct.list_head, ptr, ptr, %struct.mutex, %struct.work_struct, i8, i8, i8, ptr, i64, i16, %struct.efx_buffer, i64, i64, i8, i32, ptr, %struct.mdio_if_info, i32, i32, [3 x i32], i32, %struct.efx_link_state, i32, i8, %union.efx_multicast_hash, i8, i32, %struct.atomic_t, i32, i64, ptr, ptr, %struct.rw_semaphore, ptr, %struct.mutex, i32, [8 x %struct.efx_async_filter_insertion], %struct.spinlock, ptr, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, ptr, i8, ptr, i8, %struct.notifier_block, i32, i32, %struct.delayed_work, %struct.spinlock, i32, %struct.spinlock, %struct.atomic_t, [60 x i8] }
%struct.efx_msi_context = type { ptr, i32, [22 x i8] }
%struct.efx_rss_context = type { %struct.list_head, i32, i32, i8, [40 x i8], [128 x i32] }
%struct.mdio_if_info = type { i32, i32, i32, ptr, ptr, ptr }
%struct.efx_link_state = type { i8, i8, i8, i32 }
%union.efx_multicast_hash = type { [2 x %union.efx_oword] }
%union.efx_oword = type { [2 x i64] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.efx_async_filter_insertion = type { ptr, %struct.efx_filter_spec, %struct.work_struct, i16, i32 }
%struct.efx_filter_spec = type { i32, i32, i16, i16, [6 x i8], [6 x i8], i16, i8, [4 x i32], [4 x i32], i16, i16, i8 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.efx_nic_type = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i8, i8, i8, i32, i32, i64, i32, i32, i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.128, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.145, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.128 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.145 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.xdp_frame = type { ptr, i16, i16, i32, %struct.xdp_mem_info, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.127, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.127 = type { ptr }
%struct.page = type { i32, %union.anon.2, %union.anon.124, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.124 = type { %struct.atomic_t }
%struct.tc_mqprio_qopt = type { i8, [16 x i8], i8, [16 x i16], [16 x i16] }

@efx_hard_start_xmit.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/net/ethernet/sfc/tx.c\00", [34 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"TX queue %d spurious single TX completion\0A\00", [53 x i8] zeroinitializer }, align 32
@softnet_data = external dso_local global %struct.softnet_data, section ".data..percpu..shared_aligned", align 128
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.5 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967274]
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.10, i32 537, i32 6 }
@___asan_gen_.10 = private constant [33 x i8] c"../drivers/net/ethernet/sfc/tx.c\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.10, i32 569, i32 4 }
@___asan_gen_.15 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.16 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 326, i32 6 }
@llvm.compiler.used = appending global [4 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @efx_tx_get_copy_buffer_limited(ptr nocapture noundef readonly %tx_queue, ptr nocapture noundef writeonly %buffer, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 126, i32 %len)
  %cmp = icmp ugt i32 %len, 126
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  %insert_count.i.i = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 26
  %0 = ptrtoint ptr %insert_count.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %insert_count.i.i, align 128
  %ptr_mask.i.i = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 11
  %2 = ptrtoint ptr %ptr_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ptr_mask.i.i, align 4
  %and.i.i = and i32 %3, %1
  %cb_page.i = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 9
  %4 = ptrtoint ptr %cb_page.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cb_page.i, align 4
  %shr.i = lshr i32 %and.i.i, 5
  %arrayidx.i = getelementptr %struct.efx_buffer, ptr %5, i32 %shr.i
  %shl.i = shl i32 %and.i.i, 7
  %add.i = and i32 %shl.i, 3968
  %and.i = or i32 %add.i, 2
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.end.if.end.i_crit_edge, !prof !21

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.end
  %8 = ptrtoint ptr %tx_queue to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tx_queue, align 128
  %call4.i = tail call i32 @efx_nic_alloc_buffer(ptr noundef %9, ptr noundef %arrayidx.i, i32 noundef 4096, i32 noundef 2592) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %land.lhs.true.i.return_crit_edge

land.lhs.true.i.return_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %if.end.if.end.i_crit_edge
  %dma_addr.i = getelementptr %struct.efx_buffer, ptr %5, i32 %shr.i, i32 1
  %10 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dma_addr.i, align 4
  %add6.i = add i32 %11, %and.i
  %12 = getelementptr inbounds %struct.efx_tx_buffer, ptr %buffer, i32 0, i32 1
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %add6.i, ptr %12, align 8
  %unmap_len.i = getelementptr inbounds %struct.efx_tx_buffer, ptr %buffer, i32 0, i32 4
  %14 = ptrtoint ptr %unmap_len.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 0, ptr %unmap_len.i, align 4
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %16, i32 %and.i
  br label %return

return:                                           ; preds = %if.end.i, %land.lhs.true.i.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi ptr [ null, %entry.return_crit_edge ], [ %add.ptr.i, %if.end.i ], [ null, %land.lhs.true.i.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__efx_enqueue_skb(ptr noundef %tx_queue, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  %data_mapped = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %insert_count = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 26
  %0 = ptrtoint ptr %insert_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %insert_count, align 128
  %2 = tail call i32 @llvm.read_register.i32(metadata !11) #9
  %and.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %5
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %7, ptrtoint (ptr getelementptr inbounds (%struct.softnet_data, ptr @softnet_data, i32 0, i32 11, i32 1) to i32)
  %8 = inttoptr i32 %add.i to ptr
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.i.not = icmp eq i8 %10, 0
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data_mapped) #9
  %11 = ptrtoint ptr %data_mapped to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %data_mapped, align 1
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %12 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len, align 4
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %14 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %end.i.i, align 4
  %gso_size.i = getelementptr inbounds %struct.skb_shared_info, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %gso_size.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %gso_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool.i95.not = icmp eq i16 %17, 0
  br i1 %tobool.i95.not, label %entry.if.else_crit_edge, label %cond.end

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

cond.end:                                         ; preds = %entry
  %gso_segs = getelementptr inbounds %struct.skb_shared_info, ptr %15, i32 0, i32 5
  %18 = ptrtoint ptr %gso_segs to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %gso_segs, align 2
  %conv = zext i16 %19 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %19)
  %switch = icmp ult i16 %19, 2
  br i1 %switch, label %cond.end.if.else_crit_edge, label %if.then4

cond.end.if.else_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.then4:                                         ; preds = %cond.end
  %tso_version = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 4
  %20 = ptrtoint ptr %tso_version to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tso_version, align 16
  %22 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values)
  switch i32 %21, label %if.then4.if.then11_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb6
  ]

if.then4.if.then11_crit_edge:                     ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11

sw.bb:                                            ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  %call5 = call i32 @efx_enqueue_skb_tso(ptr noundef %tx_queue, ptr noundef %skb, ptr noundef nonnull %data_mapped) #9
  br label %sw.epilog

sw.bb6:                                           ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  %call7 = call i32 @efx_ef10_tx_tso_desc(ptr noundef %tx_queue, ptr noundef %skb, ptr noundef nonnull %data_mapped) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb6, %sw.bb
  %rc.0 = phi i32 [ %call7, %sw.bb6 ], [ %call5, %sw.bb ]
  %23 = zext i32 %rc.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.5)
  switch i32 %rc.0, label %sw.epilog.err_crit_edge [
    i32 -22, label %sw.epilog.if.then11_crit_edge
    i32 0, label %sw.epilog.if.end31_crit_edge
  ]

sw.epilog.if.end31_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

sw.epilog.if.then11_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11

sw.epilog.err_crit_edge:                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

if.then11:                                        ; preds = %sw.epilog.if.then11_crit_edge, %if.then4.if.then11_crit_edge
  %call12 = call i32 @efx_tx_tso_fallback(ptr noundef %tx_queue, ptr noundef %skb) #9
  %tso_fallbacks = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 33
  %24 = ptrtoint ptr %tso_fallbacks to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tso_fallbacks, align 4
  %inc = add i32 %25, 1
  store i32 %inc, ptr %tso_fallbacks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp eq i32 %call12, 0
  br i1 %cmp13, label %if.then11.cleanup_crit_edge, label %if.then11.err_crit_edge

if.then11.err_crit_edge:                          ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

if.then11.cleanup_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else:                                          ; preds = %cond.end.if.else_crit_edge, %entry.if.else_crit_edge
  %data_len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %26 = ptrtoint ptr %data_len to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %data_len, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool21.not = icmp ne i32 %27, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %13)
  %cmp22 = icmp ult i32 %13, 127
  %or.cond = select i1 %tobool21.not, i1 %cmp22, i1 false
  br i1 %or.cond, label %if.then24, label %if.else.if.end31_crit_edge

if.else.if.end31_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

if.then24:                                        ; preds = %if.else
  %buffer.i.i.i = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 8
  %28 = ptrtoint ptr %buffer.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %buffer.i.i.i, align 32
  %ptr_mask.i.i.i.i = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 11
  %30 = ptrtoint ptr %ptr_mask.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %ptr_mask.i.i.i.i, align 4
  %and.i.i.i.i = and i32 %31, %1
  %arrayidx.i.i.i = getelementptr %struct.efx_tx_buffer, ptr %29, i32 %and.i.i.i.i
  %cb_page.i.i = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 9
  %32 = ptrtoint ptr %cb_page.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %cb_page.i.i, align 4
  %shr.i.i = lshr i32 %and.i.i.i.i, 5
  %arrayidx.i.i = getelementptr %struct.efx_buffer, ptr %33, i32 %shr.i.i
  %shl.i.i = shl i32 %and.i.i.i.i, 7
  %add.i.i = and i32 %shl.i.i, 3968
  %and.i.i96 = or i32 %add.i.i, 2
  %34 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %35, null
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %if.then24.efx_tx_get_copy_buffer.exit.i_crit_edge, !prof !21

if.then24.efx_tx_get_copy_buffer.exit.i_crit_edge: ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #11
  br label %efx_tx_get_copy_buffer.exit.i

land.lhs.true.i.i:                                ; preds = %if.then24
  %36 = ptrtoint ptr %tx_queue to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %tx_queue, align 128
  %call4.i.i = tail call i32 @efx_nic_alloc_buffer(ptr noundef %37, ptr noundef %arrayidx.i.i, i32 noundef 4096, i32 noundef 2592) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool5.not.i.i = icmp eq i32 %call4.i.i, 0
  br i1 %tobool5.not.i.i, label %land.lhs.true.i.i.efx_tx_get_copy_buffer.exit.i_crit_edge, label %land.lhs.true.i.i.err_crit_edge

land.lhs.true.i.i.err_crit_edge:                  ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

land.lhs.true.i.i.efx_tx_get_copy_buffer.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %efx_tx_get_copy_buffer.exit.i

efx_tx_get_copy_buffer.exit.i:                    ; preds = %land.lhs.true.i.i.efx_tx_get_copy_buffer.exit.i_crit_edge, %if.then24.efx_tx_get_copy_buffer.exit.i_crit_edge
  %dma_addr.i.i = getelementptr %struct.efx_buffer, ptr %33, i32 %shr.i.i, i32 1
  %38 = ptrtoint ptr %dma_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %dma_addr.i.i, align 4
  %add6.i.i = add i32 %39, %and.i.i96
  %40 = getelementptr %struct.efx_tx_buffer, ptr %29, i32 %and.i.i.i.i, i32 1
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %add6.i.i, ptr %40, align 8
  %unmap_len.i.i = getelementptr %struct.efx_tx_buffer, ptr %29, i32 %and.i.i.i.i, i32 4
  %42 = ptrtoint ptr %unmap_len.i.i to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 0, ptr %unmap_len.i.i, align 4
  %43 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %44, i32 %and.i.i96
  %tobool.not.i = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool.not.i, label %efx_tx_get_copy_buffer.exit.i.err_crit_edge, label %efx_enqueue_skb_copy.exit, !prof !21

efx_tx_get_copy_buffer.exit.i.err_crit_edge:      ; preds = %efx_tx_get_copy_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

efx_enqueue_skb_copy.exit:                        ; preds = %efx_tx_get_copy_buffer.exit.i
  %call5.i = tail call i32 @skb_copy_bits(ptr noundef %skb, i32 noundef 0, ptr noundef nonnull %add.ptr.i.i, i32 noundef %13) #9
  %conv.i = trunc i32 %13 to i16
  %len9.i = getelementptr %struct.efx_tx_buffer, ptr %29, i32 %and.i.i.i.i, i32 3
  %45 = ptrtoint ptr %len9.i to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %conv.i, ptr %len9.i, align 2
  %46 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %skb, ptr %arrayidx.i.i.i, align 8
  %flags.i = getelementptr %struct.efx_tx_buffer, ptr %29, i32 %and.i.i.i.i, i32 2
  %47 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 2, ptr %flags.i, align 8
  %48 = ptrtoint ptr %insert_count to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %insert_count, align 128
  %inc.i = add i32 %49, 1
  store i32 %inc.i, ptr %insert_count, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool26.not = icmp eq i32 %call5.i, 0
  br i1 %tobool26.not, label %if.end31.thread, label %efx_enqueue_skb_copy.exit.err_crit_edge

efx_enqueue_skb_copy.exit.err_crit_edge:          ; preds = %efx_enqueue_skb_copy.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

if.end31.thread:                                  ; preds = %efx_enqueue_skb_copy.exit
  call void @__sanitizer_cov_trace_pc() #11
  %cb_packets = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 37
  %50 = ptrtoint ptr %cb_packets to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %cb_packets, align 4
  %inc29 = add i32 %51, 1
  store i32 %inc29, ptr %cb_packets, align 4
  %52 = ptrtoint ptr %data_mapped to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 1, ptr %data_mapped, align 1
  br label %if.end37

if.end31:                                         ; preds = %if.else.if.end31_crit_edge, %sw.epilog.if.end31_crit_edge
  %tobool.not138.ph = phi i1 [ true, %if.else.if.end31_crit_edge ], [ false, %sw.epilog.if.end31_crit_edge ]
  %.ph = phi i32 [ 0, %if.else.if.end31_crit_edge ], [ %conv, %sw.epilog.if.end31_crit_edge ]
  %53 = ptrtoint ptr %data_mapped to i32
  call void @__asan_load1_noabort(i32 %53)
  %.pr = load i8, ptr %data_mapped, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool32.not = icmp eq i8 %.pr, 0
  br i1 %tobool32.not, label %land.lhs.true33, label %if.end31.if.end37_crit_edge

if.end31.if.end37_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37

land.lhs.true33:                                  ; preds = %if.end31
  %call34 = call i32 @efx_tx_map_data(ptr noundef %tx_queue, ptr noundef %skb, i32 noundef %.ph) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %land.lhs.true33.if.end37_crit_edge, label %land.lhs.true33.err_crit_edge

land.lhs.true33.err_crit_edge:                    ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

land.lhs.true33.if.end37_crit_edge:               ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37

if.end37:                                         ; preds = %land.lhs.true33.if.end37_crit_edge, %if.end31.if.end37_crit_edge, %if.end31.thread
  %54 = phi i32 [ 0, %if.end31.thread ], [ %.ph, %land.lhs.true33.if.end37_crit_edge ], [ %.ph, %if.end31.if.end37_crit_edge ]
  %tobool.not138148 = phi i1 [ true, %if.end31.thread ], [ %tobool.not138.ph, %land.lhs.true33.if.end37_crit_edge ], [ %tobool.not138.ph, %if.end31.if.end37_crit_edge ]
  call fastcc void @efx_tx_maybe_stop_queue(ptr noundef %tx_queue)
  %xmit_pending = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 36
  %55 = ptrtoint ptr %xmit_pending to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 1, ptr %xmit_pending, align 8
  %core_txq = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 7
  %56 = ptrtoint ptr %core_txq to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %core_txq, align 4
  br i1 %tobool.i.not, label %if.end.i98, label %if.then.i

if.then.i:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435455, i32 %13)
  %cmp.i.i = icmp ugt i32 %13, 268435455
  br i1 %cmp.i.i, label %do.body2.i.i, label %__netdev_tx_sent_queue.exit, !prof !21

do.body2.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/dynamic_queue_limits.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 77, 0\0A.popsection", ""() #9, !srcloc !22
  unreachable

if.end.i98:                                       ; preds = %if.end37
  %dql.i.i = getelementptr inbounds %struct.netdev_queue, ptr %57, i32 0, i32 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435455, i32 %13)
  %cmp.i.i.i = icmp ugt i32 %13, 268435455
  br i1 %cmp.i.i.i, label %do.body2.i.i.i, label %dql_queued.exit.i.i, !prof !21

do.body2.i.i.i:                                   ; preds = %if.end.i98
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/dynamic_queue_limits.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 77, 0\0A.popsection", ""() #9, !srcloc !22
  unreachable

dql_queued.exit.i.i:                              ; preds = %if.end.i98
  %last_obj_cnt.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %57, i32 0, i32 15, i32 2
  %58 = ptrtoint ptr %last_obj_cnt.i.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %13, ptr %last_obj_cnt.i.i.i, align 8
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !23
  %59 = ptrtoint ptr %dql.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %dql.i.i, align 128
  %add.i.i.i = add i32 %60, %13
  store i32 %add.i.i.i, ptr %dql.i.i, align 128
  %adj_limit.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %57, i32 0, i32 15, i32 1
  %61 = ptrtoint ptr %adj_limit.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile i32, ptr %adj_limit.i.i.i, align 4
  %63 = load volatile i32, ptr %dql.i.i, align 128
  %sub.i.i.i = sub i32 %62, %63
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i.i.i)
  %cmp.i4.i = icmp sgt i32 %sub.i.i.i, -1
  br i1 %cmp.i4.i, label %dql_queued.exit.i.i.if.then40_crit_edge, label %if.end.i.i, !prof !24

dql_queued.exit.i.i.if.then40_crit_edge:          ; preds = %dql_queued.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then40

if.end.i.i:                                       ; preds = %dql_queued.exit.i.i
  %state.i5.i = getelementptr inbounds %struct.netdev_queue, ptr %57, i32 0, i32 13
  call void @_set_bit(i32 noundef 1, ptr noundef %state.i5.i) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !25
  %64 = ptrtoint ptr %adj_limit.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load volatile i32, ptr %adj_limit.i.i.i, align 4
  %66 = ptrtoint ptr %dql.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile i32, ptr %dql.i.i, align 128
  %sub.i22.i.i = sub i32 %65, %67
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i22.i.i)
  %cmp7.i.i = icmp sgt i32 %sub.i22.i.i, -1
  br i1 %cmp7.i.i, label %if.then14.i.i, label %if.end.i.i.if.then40_crit_edge, !prof !21

if.end.i.i.if.then40_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then40

if.then14.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @_clear_bit(i32 noundef 1, ptr noundef %state.i5.i) #9
  br label %if.then40

__netdev_tx_sent_queue.exit:                      ; preds = %if.then.i
  %dql.i = getelementptr inbounds %struct.netdev_queue, ptr %57, i32 0, i32 15
  %last_obj_cnt.i.i = getelementptr inbounds %struct.netdev_queue, ptr %57, i32 0, i32 15, i32 2
  %68 = ptrtoint ptr %last_obj_cnt.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %13, ptr %last_obj_cnt.i.i, align 8
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !23
  %69 = ptrtoint ptr %dql.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %dql.i, align 128
  %add.i.i97 = add i32 %70, %13
  store i32 %add.i.i97, ptr %dql.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %57, i32 0, i32 13
  %71 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load volatile i32, ptr %state.i.i, align 4
  %and1.i.i.i = and i32 %72, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.i.not = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.i.not, label %__netdev_tx_sent_queue.exit.if.end41_crit_edge, label %__netdev_tx_sent_queue.exit.if.then40_crit_edge

__netdev_tx_sent_queue.exit.if.then40_crit_edge:  ; preds = %__netdev_tx_sent_queue.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then40

__netdev_tx_sent_queue.exit.if.end41_crit_edge:   ; preds = %__netdev_tx_sent_queue.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41

if.then40:                                        ; preds = %__netdev_tx_sent_queue.exit.if.then40_crit_edge, %if.then14.i.i, %if.end.i.i.if.then40_crit_edge, %dql_queued.exit.i.i.if.then40_crit_edge
  %channel = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 6
  %73 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %channel, align 8
  %tx_queue.i = getelementptr inbounds %struct.efx_channel, ptr %74, i32 0, i32 46
  %channel1.i.i.i = getelementptr inbounds %struct.efx_channel, ptr %74, i32 0, i32 1
  %75 = ptrtoint ptr %channel1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %channel1.i.i.i, align 4
  %77 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %74, align 128
  %xdp_channel_offset.i.i12.i = getelementptr inbounds %struct.efx_nic, ptr %78, i32 0, i32 50
  %79 = ptrtoint ptr %xdp_channel_offset.i.i12.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %xdp_channel_offset.i.i12.i, align 8
  %sub.i.i13.i = sub i32 %76, %80
  %n_xdp_channels.i.i14.i = getelementptr inbounds %struct.efx_nic, ptr %78, i32 0, i32 49
  %81 = ptrtoint ptr %n_xdp_channels.i.i14.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %n_xdp_channels.i.i14.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i13.i, i32 %82)
  %cmp.i.i15.i = icmp ult i32 %sub.i.i13.i, %82
  %xdp_tx_per_channel.i16.i = getelementptr inbounds %struct.efx_nic, ptr %78, i32 0, i32 51
  %tx_queues_per_channel.i17.i = getelementptr inbounds %struct.efx_nic, ptr %78, i32 0, i32 48
  %retval.0.in.i18.i = select i1 %cmp.i.i15.i, ptr %xdp_tx_per_channel.i16.i, ptr %tx_queues_per_channel.i17.i
  %83 = ptrtoint ptr %retval.0.in.i18.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %retval.0.i19.i = load i32, ptr %retval.0.in.i18.i, align 4
  %add.ptr20.i = getelementptr %struct.efx_tx_queue, ptr %tx_queue.i, i32 %retval.0.i19.i
  %cmp21.i = icmp ult ptr %tx_queue.i, %add.ptr20.i
  br i1 %cmp21.i, label %if.then40.for.body.i_crit_edge, label %if.then40.if.end41_crit_edge

if.then40.if.end41_crit_edge:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41

if.then40.for.body.i_crit_edge:                   ; preds = %if.then40
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then40.for.body.i_crit_edge
  %q.022.i = phi ptr [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ], [ %tx_queue.i, %if.then40.for.body.i_crit_edge ]
  %xmit_pending.i = getelementptr inbounds %struct.efx_tx_queue, ptr %q.022.i, i32 0, i32 36
  %84 = ptrtoint ptr %xmit_pending.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %xmit_pending.i, align 8, !range !26
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %85)
  %tobool.not.i100 = icmp eq i8 %85, 0
  br i1 %tobool.not.i100, label %for.body.i.for.inc.i_crit_edge, label %if.then4.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.then4.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %86 = ptrtoint ptr %q.022.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %q.022.i, align 128
  %type.i.i = getelementptr inbounds %struct.efx_nic, ptr %87, i32 0, i32 6
  %88 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %type.i.i, align 4
  %tx_write.i.i = getelementptr inbounds %struct.efx_nic_type, ptr %89, i32 0, i32 51
  %90 = ptrtoint ptr %tx_write.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %tx_write.i.i, align 4
  call void %91(ptr noundef %q.022.i) #9
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then4.i, %for.body.i.for.inc.i_crit_edge
  %incdec.ptr.i = getelementptr %struct.efx_tx_queue, ptr %q.022.i, i32 1
  %92 = ptrtoint ptr %channel1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %channel1.i.i.i, align 4
  %94 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %74, align 128
  %xdp_channel_offset.i.i.i = getelementptr inbounds %struct.efx_nic, ptr %95, i32 0, i32 50
  %96 = ptrtoint ptr %xdp_channel_offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %xdp_channel_offset.i.i.i, align 8
  %sub.i.i.i101 = sub i32 %93, %97
  %n_xdp_channels.i.i.i = getelementptr inbounds %struct.efx_nic, ptr %95, i32 0, i32 49
  %98 = ptrtoint ptr %n_xdp_channels.i.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %n_xdp_channels.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i.i101, i32 %99)
  %cmp.i.i.i102 = icmp ult i32 %sub.i.i.i101, %99
  %xdp_tx_per_channel.i.i = getelementptr inbounds %struct.efx_nic, ptr %95, i32 0, i32 51
  %tx_queues_per_channel.i.i = getelementptr inbounds %struct.efx_nic, ptr %95, i32 0, i32 48
  %retval.0.in.i.i = select i1 %cmp.i.i.i102, ptr %xdp_tx_per_channel.i.i, ptr %tx_queues_per_channel.i.i
  %100 = ptrtoint ptr %retval.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %retval.0.i.i = load i32, ptr %retval.0.in.i.i, align 4
  %add.ptr.i = getelementptr %struct.efx_tx_queue, ptr %tx_queue.i, i32 %retval.0.i.i
  %cmp.i = icmp ult ptr %incdec.ptr.i, %add.ptr.i
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.if.end41_crit_edge

for.inc.i.if.end41_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

if.end41:                                         ; preds = %for.inc.i.if.end41_crit_edge, %if.then40.if.end41_crit_edge, %__netdev_tx_sent_queue.exit.if.end41_crit_edge
  br i1 %tobool.not138148, label %if.end41.cleanup.sink.split_crit_edge, label %if.then43

if.end41.cleanup.sink.split_crit_edge:            ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.then43:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  %tso_bursts = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 30
  %101 = ptrtoint ptr %tso_bursts to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %tso_bursts, align 16
  %inc44 = add i32 %102, 1
  store i32 %inc44, ptr %tso_bursts, align 16
  %tso_packets = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 32
  %103 = ptrtoint ptr %tso_packets to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %tso_packets, align 8
  %add = add i32 %104, %54
  store i32 %add, ptr %tso_packets, align 8
  br label %cleanup.sink.split

err:                                              ; preds = %land.lhs.true33.err_crit_edge, %efx_enqueue_skb_copy.exit.err_crit_edge, %efx_tx_get_copy_buffer.exit.i.err_crit_edge, %land.lhs.true.i.i.err_crit_edge, %if.then11.err_crit_edge, %sw.epilog.err_crit_edge
  call void @efx_enqueue_unwind(ptr noundef %tx_queue, i32 noundef %1) #9
  call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #9
  br i1 %tobool.i.not, label %if.then51, label %err.cleanup_crit_edge

err.cleanup_crit_edge:                            ; preds = %err
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then51:                                        ; preds = %err
  %channel52 = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 6
  %105 = ptrtoint ptr %channel52 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %channel52, align 8
  %tx_queue.i103 = getelementptr inbounds %struct.efx_channel, ptr %106, i32 0, i32 46
  %channel1.i.i.i104 = getelementptr inbounds %struct.efx_channel, ptr %106, i32 0, i32 1
  %107 = ptrtoint ptr %channel1.i.i.i104 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %channel1.i.i.i104, align 4
  %109 = ptrtoint ptr %106 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %106, align 128
  %xdp_channel_offset.i.i12.i105 = getelementptr inbounds %struct.efx_nic, ptr %110, i32 0, i32 50
  %111 = ptrtoint ptr %xdp_channel_offset.i.i12.i105 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %xdp_channel_offset.i.i12.i105, align 8
  %sub.i.i13.i106 = sub i32 %108, %112
  %n_xdp_channels.i.i14.i107 = getelementptr inbounds %struct.efx_nic, ptr %110, i32 0, i32 49
  %113 = ptrtoint ptr %n_xdp_channels.i.i14.i107 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %n_xdp_channels.i.i14.i107, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i13.i106, i32 %114)
  %cmp.i.i15.i108 = icmp ult i32 %sub.i.i13.i106, %114
  %xdp_tx_per_channel.i16.i109 = getelementptr inbounds %struct.efx_nic, ptr %110, i32 0, i32 51
  %tx_queues_per_channel.i17.i110 = getelementptr inbounds %struct.efx_nic, ptr %110, i32 0, i32 48
  %retval.0.in.i18.i111 = select i1 %cmp.i.i15.i108, ptr %xdp_tx_per_channel.i16.i109, ptr %tx_queues_per_channel.i17.i110
  %115 = ptrtoint ptr %retval.0.in.i18.i111 to i32
  call void @__asan_load4_noabort(i32 %115)
  %retval.0.i19.i112 = load i32, ptr %retval.0.in.i18.i111, align 4
  %add.ptr20.i113 = getelementptr %struct.efx_tx_queue, ptr %tx_queue.i103, i32 %retval.0.i19.i112
  %cmp21.i114 = icmp ult ptr %tx_queue.i103, %add.ptr20.i113
  br i1 %cmp21.i114, label %if.then51.for.body.i118_crit_edge, label %if.then51.cleanup_crit_edge

if.then51.cleanup_crit_edge:                      ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then51.for.body.i118_crit_edge:                ; preds = %if.then51
  br label %for.body.i118

for.body.i118:                                    ; preds = %for.inc.i133.for.body.i118_crit_edge, %if.then51.for.body.i118_crit_edge
  %q.022.i115 = phi ptr [ %incdec.ptr.i122, %for.inc.i133.for.body.i118_crit_edge ], [ %tx_queue.i103, %if.then51.for.body.i118_crit_edge ]
  %xmit_pending.i116 = getelementptr inbounds %struct.efx_tx_queue, ptr %q.022.i115, i32 0, i32 36
  %116 = ptrtoint ptr %xmit_pending.i116 to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %xmit_pending.i116, align 8, !range !26
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %117)
  %tobool.not.i117 = icmp eq i8 %117, 0
  br i1 %tobool.not.i117, label %for.body.i118.for.inc.i133_crit_edge, label %if.then4.i121

for.body.i118.for.inc.i133_crit_edge:             ; preds = %for.body.i118
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i133

if.then4.i121:                                    ; preds = %for.body.i118
  call void @__sanitizer_cov_trace_pc() #11
  %118 = ptrtoint ptr %q.022.i115 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %q.022.i115, align 128
  %type.i.i119 = getelementptr inbounds %struct.efx_nic, ptr %119, i32 0, i32 6
  %120 = ptrtoint ptr %type.i.i119 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %type.i.i119, align 4
  %tx_write.i.i120 = getelementptr inbounds %struct.efx_nic_type, ptr %121, i32 0, i32 51
  %122 = ptrtoint ptr %tx_write.i.i120 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %tx_write.i.i120, align 4
  call void %123(ptr noundef %q.022.i115) #9
  br label %for.inc.i133

for.inc.i133:                                     ; preds = %if.then4.i121, %for.body.i118.for.inc.i133_crit_edge
  %incdec.ptr.i122 = getelementptr %struct.efx_tx_queue, ptr %q.022.i115, i32 1
  %124 = ptrtoint ptr %channel1.i.i.i104 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %channel1.i.i.i104, align 4
  %126 = ptrtoint ptr %106 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %106, align 128
  %xdp_channel_offset.i.i.i123 = getelementptr inbounds %struct.efx_nic, ptr %127, i32 0, i32 50
  %128 = ptrtoint ptr %xdp_channel_offset.i.i.i123 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %xdp_channel_offset.i.i.i123, align 8
  %sub.i.i.i124 = sub i32 %125, %129
  %n_xdp_channels.i.i.i125 = getelementptr inbounds %struct.efx_nic, ptr %127, i32 0, i32 49
  %130 = ptrtoint ptr %n_xdp_channels.i.i.i125 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %n_xdp_channels.i.i.i125, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i.i124, i32 %131)
  %cmp.i.i.i126 = icmp ult i32 %sub.i.i.i124, %131
  %xdp_tx_per_channel.i.i127 = getelementptr inbounds %struct.efx_nic, ptr %127, i32 0, i32 51
  %tx_queues_per_channel.i.i128 = getelementptr inbounds %struct.efx_nic, ptr %127, i32 0, i32 48
  %retval.0.in.i.i129 = select i1 %cmp.i.i.i126, ptr %xdp_tx_per_channel.i.i127, ptr %tx_queues_per_channel.i.i128
  %132 = ptrtoint ptr %retval.0.in.i.i129 to i32
  call void @__asan_load4_noabort(i32 %132)
  %retval.0.i.i130 = load i32, ptr %retval.0.in.i.i129, align 4
  %add.ptr.i131 = getelementptr %struct.efx_tx_queue, ptr %tx_queue.i103, i32 %retval.0.i.i130
  %cmp.i132 = icmp ult ptr %incdec.ptr.i122, %add.ptr.i131
  br i1 %cmp.i132, label %for.inc.i133.for.body.i118_crit_edge, label %for.inc.i133.cleanup_crit_edge

for.inc.i133.cleanup_crit_edge:                   ; preds = %for.inc.i133
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc.i133.for.body.i118_crit_edge:             ; preds = %for.inc.i133
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i118

cleanup.sink.split:                               ; preds = %if.then43, %if.end41.cleanup.sink.split_crit_edge
  %.sink150 = phi i32 [ %54, %if.then43 ], [ 1, %if.end41.cleanup.sink.split_crit_edge ]
  %tx_packets47 = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 39
  %133 = ptrtoint ptr %tx_packets47 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %tx_packets47, align 4
  %add45 = add i32 %134, %.sink150
  store i32 %add45, ptr %tx_packets47, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %for.inc.i133.cleanup_crit_edge, %if.then51.cleanup_crit_edge, %err.cleanup_crit_edge, %if.then11.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data_mapped) #9
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_enqueue_skb_tso(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_ef10_tx_tso_desc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_tx_tso_fallback(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_tx_map_data(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @efx_tx_maybe_stop_queue(ptr nocapture noundef readonly %txq1) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %txq1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %txq1, align 128
  %channel = getelementptr inbounds %struct.efx_tx_queue, ptr %txq1, i32 0, i32 6
  %2 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %channel, align 8
  %tx_queue1.i = getelementptr inbounds %struct.efx_channel, ptr %3, i32 0, i32 46
  %channel1.i.i.i = getelementptr inbounds %struct.efx_channel, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %channel1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %channel1.i.i.i, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 128
  %xdp_channel_offset.i.i.i = getelementptr inbounds %struct.efx_nic, ptr %7, i32 0, i32 50
  %8 = ptrtoint ptr %xdp_channel_offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %xdp_channel_offset.i.i.i, align 8
  %sub.i.i.i = sub i32 %5, %9
  %n_xdp_channels.i.i.i = getelementptr inbounds %struct.efx_nic, ptr %7, i32 0, i32 49
  %10 = ptrtoint ptr %n_xdp_channels.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %n_xdp_channels.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i.i, i32 %11)
  %cmp.i.i.i = icmp ult i32 %sub.i.i.i, %11
  %xdp_tx_per_channel.i.i = getelementptr inbounds %struct.efx_nic, ptr %7, i32 0, i32 51
  %tx_queues_per_channel.i.i = getelementptr inbounds %struct.efx_nic, ptr %7, i32 0, i32 48
  %retval.0.in.i.i = select i1 %cmp.i.i.i, ptr %xdp_tx_per_channel.i.i, ptr %tx_queues_per_channel.i.i
  %12 = ptrtoint ptr %retval.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %retval.0.i.i = load i32, ptr %retval.0.in.i.i, align 4
  %add.ptr.i = getelementptr %struct.efx_tx_queue, ptr %tx_queue1.i, i32 %retval.0.i.i
  %cmp15.i = icmp ult ptr %tx_queue1.i, %add.ptr.i
  br i1 %cmp15.i, label %entry.for.body.i_crit_edge, label %entry.efx_channel_tx_old_fill_level.exit_crit_edge

entry.efx_channel_tx_old_fill_level.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %efx_channel_tx_old_fill_level.exit

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %tx_queue.017.i = phi ptr [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ], [ %tx_queue1.i, %entry.for.body.i_crit_edge ]
  %fill_level.016.i = phi i32 [ %17, %for.body.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %insert_count.i = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue.017.i, i32 0, i32 26
  %13 = ptrtoint ptr %insert_count.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %insert_count.i, align 128
  %old_read_count.i = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue.017.i, i32 0, i32 29
  %15 = ptrtoint ptr %old_read_count.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %old_read_count.i, align 4
  %sub.i = sub i32 %14, %16
  %17 = tail call i32 @llvm.umax.i32(i32 %fill_level.016.i, i32 %sub.i) #9
  %incdec.ptr.i = getelementptr %struct.efx_tx_queue, ptr %tx_queue.017.i, i32 1
  %cmp.i = icmp ult ptr %incdec.ptr.i, %add.ptr.i
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.efx_channel_tx_old_fill_level.exit_crit_edge

for.body.i.efx_channel_tx_old_fill_level.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %efx_channel_tx_old_fill_level.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

efx_channel_tx_old_fill_level.exit:               ; preds = %for.body.i.efx_channel_tx_old_fill_level.exit_crit_edge, %entry.efx_channel_tx_old_fill_level.exit_crit_edge
  %fill_level.0.lcssa.i = phi i32 [ 0, %entry.efx_channel_tx_old_fill_level.exit_crit_edge ], [ %17, %for.body.i.efx_channel_tx_old_fill_level.exit_crit_edge ]
  %txq_stop_thresh = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 33
  %18 = ptrtoint ptr %txq_stop_thresh to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %txq_stop_thresh, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %fill_level.0.lcssa.i, i32 %19)
  %cmp = icmp ult i32 %fill_level.0.lcssa.i, %19
  br i1 %cmp, label %efx_channel_tx_old_fill_level.exit.cleanup_crit_edge, label %if.end, !prof !24

efx_channel_tx_old_fill_level.exit.cleanup_crit_edge: ; preds = %efx_channel_tx_old_fill_level.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %efx_channel_tx_old_fill_level.exit
  %core_txq = getelementptr inbounds %struct.efx_tx_queue, ptr %txq1, i32 0, i32 7
  %20 = ptrtoint ptr %core_txq to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %core_txq, align 4
  %state.i = getelementptr inbounds %struct.netdev_queue, ptr %21, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !27
  %22 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %channel, align 8
  %tx_queue = getelementptr inbounds %struct.efx_channel, ptr %23, i32 0, i32 46
  %channel1.i.i72 = getelementptr inbounds %struct.efx_channel, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %channel1.i.i72 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %channel1.i.i72, align 4
  %26 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %23, align 128
  %xdp_channel_offset.i.i73 = getelementptr inbounds %struct.efx_nic, ptr %27, i32 0, i32 50
  %28 = ptrtoint ptr %xdp_channel_offset.i.i73 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %xdp_channel_offset.i.i73, align 8
  %sub.i.i74 = sub i32 %25, %29
  %n_xdp_channels.i.i75 = getelementptr inbounds %struct.efx_nic, ptr %27, i32 0, i32 49
  %30 = ptrtoint ptr %n_xdp_channels.i.i75 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %n_xdp_channels.i.i75, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i74, i32 %31)
  %cmp.i.i76 = icmp ult i32 %sub.i.i74, %31
  %xdp_tx_per_channel.i77 = getelementptr inbounds %struct.efx_nic, ptr %27, i32 0, i32 51
  %tx_queues_per_channel.i78 = getelementptr inbounds %struct.efx_nic, ptr %27, i32 0, i32 48
  %retval.0.in.i79 = select i1 %cmp.i.i76, ptr %xdp_tx_per_channel.i77, ptr %tx_queues_per_channel.i78
  %32 = ptrtoint ptr %retval.0.in.i79 to i32
  call void @__asan_load4_noabort(i32 %32)
  %retval.0.i80 = load i32, ptr %retval.0.in.i79, align 4
  %add.ptr81 = getelementptr %struct.efx_tx_queue, ptr %tx_queue, i32 %retval.0.i80
  %cmp1582 = icmp ult ptr %tx_queue, %add.ptr81
  br i1 %cmp1582, label %if.end.do.end18_crit_edge, label %if.end.if.end19_crit_edge

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.end.do.end18_crit_edge:                        ; preds = %if.end
  br label %do.end18

do.end18:                                         ; preds = %do.end18.do.end18_crit_edge, %if.end.do.end18_crit_edge
  %txq2.083 = phi ptr [ %incdec.ptr, %do.end18.do.end18_crit_edge ], [ %tx_queue, %if.end.do.end18_crit_edge ]
  %read_count = getelementptr inbounds %struct.efx_tx_queue, ptr %txq2.083, i32 0, i32 18
  %33 = ptrtoint ptr %read_count to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %read_count, align 128
  %old_read_count = getelementptr inbounds %struct.efx_tx_queue, ptr %txq2.083, i32 0, i32 29
  %35 = ptrtoint ptr %old_read_count to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %old_read_count, align 4
  %incdec.ptr = getelementptr %struct.efx_tx_queue, ptr %txq2.083, i32 1
  %36 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %channel, align 8
  %tx_queue11 = getelementptr inbounds %struct.efx_channel, ptr %37, i32 0, i32 46
  %channel1.i.i = getelementptr inbounds %struct.efx_channel, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %channel1.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %channel1.i.i, align 4
  %40 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %37, align 128
  %xdp_channel_offset.i.i = getelementptr inbounds %struct.efx_nic, ptr %41, i32 0, i32 50
  %42 = ptrtoint ptr %xdp_channel_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %xdp_channel_offset.i.i, align 8
  %sub.i.i = sub i32 %39, %43
  %n_xdp_channels.i.i = getelementptr inbounds %struct.efx_nic, ptr %41, i32 0, i32 49
  %44 = ptrtoint ptr %n_xdp_channels.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %n_xdp_channels.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i, i32 %45)
  %cmp.i.i = icmp ult i32 %sub.i.i, %45
  %xdp_tx_per_channel.i = getelementptr inbounds %struct.efx_nic, ptr %41, i32 0, i32 51
  %tx_queues_per_channel.i = getelementptr inbounds %struct.efx_nic, ptr %41, i32 0, i32 48
  %retval.0.in.i = select i1 %cmp.i.i, ptr %xdp_tx_per_channel.i, ptr %tx_queues_per_channel.i
  %46 = ptrtoint ptr %retval.0.in.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %retval.0.i = load i32, ptr %retval.0.in.i, align 4
  %add.ptr = getelementptr %struct.efx_tx_queue, ptr %tx_queue11, i32 %retval.0.i
  %cmp15 = icmp ult ptr %incdec.ptr, %add.ptr
  br i1 %cmp15, label %do.end18.do.end18_crit_edge, label %do.end18.if.end19_crit_edge

do.end18.if.end19_crit_edge:                      ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

do.end18.do.end18_crit_edge:                      ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end18

if.end19:                                         ; preds = %do.end18.if.end19_crit_edge, %if.end.if.end19_crit_edge
  %.lcssa = phi ptr [ %23, %if.end.if.end19_crit_edge ], [ %37, %do.end18.if.end19_crit_edge ]
  %call21 = tail call fastcc i32 @efx_channel_tx_old_fill_level(ptr noundef %.lcssa)
  %47 = ptrtoint ptr %txq_stop_thresh to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %txq_stop_thresh, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call21, i32 %48)
  %cmp26 = icmp ult i32 %call21, %48
  br i1 %cmp26, label %do.end37, label %if.end19.cleanup_crit_edge, !prof !24

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end37:                                         ; preds = %if.end19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !28
  %loopback_selftest = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 106
  %49 = ptrtoint ptr %loopback_selftest to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %loopback_selftest, align 16
  %tobool40.not = icmp eq ptr %50, null
  br i1 %tobool40.not, label %if.then49, label %do.end37.cleanup_crit_edge, !prof !24

do.end37.cleanup_crit_edge:                       ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then49:                                        ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #11
  %51 = ptrtoint ptr %core_txq to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %core_txq, align 4
  %state.i69 = getelementptr inbounds %struct.netdev_queue, ptr %52, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i69) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then49, %do.end37.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %efx_channel_tx_old_fill_level.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @efx_tx_send_pending(ptr noundef %channel) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_queue = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 46
  %channel1.i.i = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 1
  %0 = ptrtoint ptr %channel1.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %channel1.i.i, align 4
  %2 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %channel, align 128
  %xdp_channel_offset.i.i12 = getelementptr inbounds %struct.efx_nic, ptr %3, i32 0, i32 50
  %4 = ptrtoint ptr %xdp_channel_offset.i.i12 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %xdp_channel_offset.i.i12, align 8
  %sub.i.i13 = sub i32 %1, %5
  %n_xdp_channels.i.i14 = getelementptr inbounds %struct.efx_nic, ptr %3, i32 0, i32 49
  %6 = ptrtoint ptr %n_xdp_channels.i.i14 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %n_xdp_channels.i.i14, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i13, i32 %7)
  %cmp.i.i15 = icmp ult i32 %sub.i.i13, %7
  %xdp_tx_per_channel.i16 = getelementptr inbounds %struct.efx_nic, ptr %3, i32 0, i32 51
  %tx_queues_per_channel.i17 = getelementptr inbounds %struct.efx_nic, ptr %3, i32 0, i32 48
  %retval.0.in.i18 = select i1 %cmp.i.i15, ptr %xdp_tx_per_channel.i16, ptr %tx_queues_per_channel.i17
  %8 = ptrtoint ptr %retval.0.in.i18 to i32
  call void @__asan_load4_noabort(i32 %8)
  %retval.0.i19 = load i32, ptr %retval.0.in.i18, align 4
  %add.ptr20 = getelementptr %struct.efx_tx_queue, ptr %tx_queue, i32 %retval.0.i19
  %cmp21 = icmp ult ptr %tx_queue, %add.ptr20
  br i1 %cmp21, label %entry.for.body_crit_edge, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %q.022 = phi ptr [ %incdec.ptr, %for.inc.for.body_crit_edge ], [ %tx_queue, %entry.for.body_crit_edge ]
  %xmit_pending = getelementptr inbounds %struct.efx_tx_queue, ptr %q.022, i32 0, i32 36
  %9 = ptrtoint ptr %xmit_pending to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %xmit_pending, align 8, !range !26
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not = icmp eq i8 %10, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then4

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then4:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %q.022 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %q.022, align 128
  %type.i = getelementptr inbounds %struct.efx_nic, ptr %12, i32 0, i32 6
  %13 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %type.i, align 4
  %tx_write.i = getelementptr inbounds %struct.efx_nic_type, ptr %14, i32 0, i32 51
  %15 = ptrtoint ptr %tx_write.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tx_write.i, align 4
  tail call void %16(ptr noundef %q.022) #9
  br label %for.inc

for.inc:                                          ; preds = %if.then4, %for.body.for.inc_crit_edge
  %incdec.ptr = getelementptr %struct.efx_tx_queue, ptr %q.022, i32 1
  %17 = ptrtoint ptr %channel1.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %channel1.i.i, align 4
  %19 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %channel, align 128
  %xdp_channel_offset.i.i = getelementptr inbounds %struct.efx_nic, ptr %20, i32 0, i32 50
  %21 = ptrtoint ptr %xdp_channel_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %xdp_channel_offset.i.i, align 8
  %sub.i.i = sub i32 %18, %22
  %n_xdp_channels.i.i = getelementptr inbounds %struct.efx_nic, ptr %20, i32 0, i32 49
  %23 = ptrtoint ptr %n_xdp_channels.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %n_xdp_channels.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i, i32 %24)
  %cmp.i.i = icmp ult i32 %sub.i.i, %24
  %xdp_tx_per_channel.i = getelementptr inbounds %struct.efx_nic, ptr %20, i32 0, i32 51
  %tx_queues_per_channel.i = getelementptr inbounds %struct.efx_nic, ptr %20, i32 0, i32 48
  %retval.0.in.i = select i1 %cmp.i.i, ptr %xdp_tx_per_channel.i, ptr %tx_queues_per_channel.i
  %25 = ptrtoint ptr %retval.0.in.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %retval.0.i = load i32, ptr %retval.0.in.i, align 4
  %add.ptr = getelementptr %struct.efx_tx_queue, ptr %tx_queue, i32 %retval.0.i
  %cmp = icmp ult ptr %incdec.ptr, %add.ptr
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.if.end5_crit_edge

for.inc.if.end5_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

if.end5:                                          ; preds = %for.inc.if.end5_crit_edge, %entry.if.end5_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_enqueue_unwind(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efx_xdp_tx_buffers(ptr nocapture noundef readonly %efx, i32 noundef %n, ptr noundef readonly %xdpfs, i1 noundef zeroext %flush) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n)
  %tobool.not = icmp eq i32 %n, 0
  %tobool1.not = icmp eq ptr %xdpfs, null
  %not.tobool.not = xor i1 %tobool.not, true
  %spec.select = and i1 %tobool1.not, %not.tobool.not
  %brmerge = or i1 %tobool.not, %tobool1.not
  %.mux = select i1 %spec.select, i32 -22, i32 0, !prof !29
  br i1 %brmerge, label %entry.cleanup_crit_edge, label %if.end15, !prof !30

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end15:                                         ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !11) #9
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu16 = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu16 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu16, align 4
  %xdp_tx_queue_count = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 28
  %4 = ptrtoint ptr %xdp_tx_queue_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %xdp_tx_queue_count, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp.not = icmp ult i32 %3, %5
  br i1 %cmp.not, label %if.end24, label %if.end15.cleanup_crit_edge, !prof !24

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end24:                                         ; preds = %if.end15
  %xdp_tx_queues = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 29
  %6 = ptrtoint ptr %xdp_tx_queues to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %xdp_tx_queues, align 4
  %arrayidx = getelementptr ptr, ptr %7, i32 %3
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %tobool25.not = icmp eq ptr %9, null
  br i1 %tobool25.not, label %if.end24.cleanup_crit_edge, label %if.end35, !prof !21

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end35:                                         ; preds = %if.end24
  %xdp_txq_queues_mode = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 30
  %10 = ptrtoint ptr %xdp_txq_queues_mode to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %xdp_txq_queues_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp36.not = icmp eq i32 %11, 0
  br i1 %cmp36.not, label %if.end35.if.end51_crit_edge, label %if.then37

if.end35.if.end51_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51

if.then37:                                        ; preds = %if.end35
  %net_dev = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %12 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %net_dev, align 4
  %features = getelementptr inbounds %struct.net_device, ptr %13, i32 0, i32 23
  %14 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %features, align 16
  %and = and i64 %15, 4096
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %cmp38 = icmp eq i64 %and, 0
  br i1 %cmp38, label %if.then39, label %if.then37.if.end43_crit_edge

if.then37.if.end43_crit_edge:                     ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43

if.then39:                                        ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #11
  %core_txq = getelementptr inbounds %struct.efx_tx_queue, ptr %9, i32 0, i32 7
  %16 = ptrtoint ptr %core_txq to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %core_txq, align 4
  %_xmit_lock.i = getelementptr inbounds %struct.netdev_queue, ptr %17, i32 0, i32 10
  tail call void @_raw_spin_lock(ptr noundef %_xmit_lock.i) #9
  %xmit_lock_owner.i = getelementptr inbounds %struct.netdev_queue, ptr %17, i32 0, i32 11
  %18 = ptrtoint ptr %xmit_lock_owner.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile i32 %3, ptr %xmit_lock_owner.i, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.then39, %if.then37.if.end43_crit_edge
  %19 = ptrtoint ptr %xdp_txq_queues_mode to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pr = load i32, ptr %xdp_txq_queues_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.pr)
  %cmp45 = icmp eq i32 %.pr, 2
  br i1 %cmp45, label %if.then46, label %if.end43.if.end51_crit_edge

if.end43.if.end51_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51

if.then46:                                        ; preds = %if.end43
  %core_txq47 = getelementptr inbounds %struct.efx_tx_queue, ptr %9, i32 0, i32 7
  %20 = ptrtoint ptr %core_txq47 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %core_txq47, align 4
  %state.i = getelementptr inbounds %struct.netdev_queue, ptr %21, i32 0, i32 13
  %22 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end50, label %if.then46.unlock_crit_edge

if.then46.unlock_crit_edge:                       ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock

if.end50:                                         ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @efx_tx_maybe_stop_queue(ptr noundef nonnull %9)
  br label %if.end51

if.end51:                                         ; preds = %if.end50, %if.end43.if.end51_crit_edge, %if.end35.if.end51_crit_edge
  %insert_count = getelementptr inbounds %struct.efx_tx_queue, ptr %9, i32 0, i32 26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n)
  %cmp52145 = icmp sgt i32 %n, 0
  br i1 %cmp52145, label %for.body.lr.ph, label %if.end51.unlock_crit_edge

if.end51.unlock_crit_edge:                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock

for.body.lr.ph:                                   ; preds = %if.end51
  %read_count = getelementptr inbounds %struct.efx_tx_queue, ptr %9, i32 0, i32 18
  %24 = ptrtoint ptr %read_count to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %read_count, align 128
  %txq_entries = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 32
  %26 = ptrtoint ptr %txq_entries to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %txq_entries, align 64
  %add = add i32 %25, %27
  %28 = ptrtoint ptr %insert_count to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %insert_count, align 128
  %sub = sub i32 %add, %29
  %buffer.i = getelementptr inbounds %struct.efx_tx_queue, ptr %9, i32 0, i32 8
  %ptr_mask.i.i = getelementptr inbounds %struct.efx_tx_queue, ptr %9, i32 0, i32 11
  %pci_dev = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 4
  %tx_packets = getelementptr inbounds %struct.efx_tx_queue, ptr %9, i32 0, i32 39
  %smax = call i32 @llvm.smax.i32(i32 %sub, i32 0)
  br label %for.body

for.body:                                         ; preds = %if.end65.for.body_crit_edge, %for.body.lr.ph
  %i.0146 = phi i32 [ 0, %for.body.lr.ph ], [ %inc68, %if.end65.for.body_crit_edge ]
  %arrayidx53 = getelementptr ptr, ptr %xdpfs, i32 %i.0146
  %30 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx53, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0146, i32 %smax)
  %exitcond.not = icmp eq i32 %i.0146, %smax
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %if.end56

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end56:                                         ; preds = %for.body
  %32 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %buffer.i, align 32
  %34 = ptrtoint ptr %insert_count to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %insert_count, align 128
  %36 = ptrtoint ptr %ptr_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %ptr_mask.i.i, align 4
  %and.i.i = and i32 %37, %35
  %arrayidx.i = getelementptr %struct.efx_tx_buffer, ptr %33, i32 %and.i.i
  tail call void @llvm.prefetch.p0(ptr %arrayidx.i, i32 1, i32 3, i32 1)
  %len58 = getelementptr inbounds %struct.xdp_frame, ptr %31, i32 0, i32 1
  %38 = ptrtoint ptr %len58 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %len58, align 4
  %conv = zext i16 %39 to i32
  %40 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pci_dev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %41, i32 0, i32 44
  %42 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %31, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %43) #9
  br i1 %call.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %if.end56
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !24

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev) #9
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %41, i32 0, i32 44, i32 3
  %44 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %45, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %46 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %47, %if.end.i.i ], [ %45, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.4, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #9
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @debug_dma_map_single(ptr noundef %dev, ptr noundef %43, i32 noundef %conv) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %48 = load ptr, ptr @mem_map, align 4
  %49 = ptrtoint ptr %43 to i32
  %sub.i = add i32 %49, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %48, i32 %shr.i
  %and.i140 = and i32 %49, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev, ptr noundef %add.ptr.i, i32 noundef %and.i140, i32 noundef %conv, i32 noundef 1, i32 noundef 0) #9
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %50 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pci_dev, align 4
  %dev61 = getelementptr inbounds %struct.pci_dev, ptr %51, i32 0, i32 44
  tail call void @debug_dma_mapping_error(ptr noundef %dev61, i32 noundef %retval.0.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i)
  %cmp.i = icmp eq i32 %retval.0.i, -1
  br i1 %cmp.i, label %dma_map_single_attrs.exit.for.end_crit_edge, label %if.end65

dma_map_single_attrs.exit.for.end_crit_edge:      ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end65:                                         ; preds = %dma_map_single_attrs.exit
  %call66 = tail call ptr @efx_tx_map_chunk(ptr noundef nonnull %9, i32 noundef %retval.0.i, i32 noundef %conv) #9
  %52 = ptrtoint ptr %call66 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %31, ptr %call66, align 8
  %flags = getelementptr inbounds %struct.efx_tx_buffer, ptr %call66, i32 0, i32 2
  %53 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 40, ptr %flags, align 8
  %dma_offset = getelementptr inbounds %struct.efx_tx_buffer, ptr %call66, i32 0, i32 5
  %54 = ptrtoint ptr %dma_offset to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 0, ptr %dma_offset, align 2
  %unmap_len = getelementptr inbounds %struct.efx_tx_buffer, ptr %call66, i32 0, i32 4
  %55 = ptrtoint ptr %unmap_len to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %39, ptr %unmap_len, align 4
  %56 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %tx_packets, align 4
  %inc = add i32 %57, 1
  store i32 %inc, ptr %tx_packets, align 4
  %inc68 = add nuw nsw i32 %i.0146, 1
  %exitcond149.not = icmp eq i32 %inc68, %n
  br i1 %exitcond149.not, label %if.end65.for.end_crit_edge, label %if.end65.for.body_crit_edge

if.end65.for.body_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

if.end65.for.end_crit_edge:                       ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %if.end65.for.end_crit_edge, %dma_map_single_attrs.exit.for.end_crit_edge, %for.body.for.end_crit_edge
  %i.0.lcssa = phi i32 [ %n, %if.end65.for.end_crit_edge ], [ %smax, %for.body.for.end_crit_edge ], [ %i.0146, %dma_map_single_attrs.exit.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0.lcssa)
  %cmp71 = icmp sgt i32 %i.0.lcssa, 0
  %or.cond = select i1 %flush, i1 %cmp71, i1 false
  br i1 %or.cond, label %if.then73, label %for.end.unlock_crit_edge

for.end.unlock_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock

if.then73:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %58 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %9, align 128
  %type.i = getelementptr inbounds %struct.efx_nic, ptr %59, i32 0, i32 6
  %60 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %type.i, align 4
  %tx_write.i = getelementptr inbounds %struct.efx_nic_type, ptr %61, i32 0, i32 51
  %62 = ptrtoint ptr %tx_write.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %tx_write.i, align 4
  tail call void %63(ptr noundef nonnull %9) #9
  br label %unlock

unlock:                                           ; preds = %if.then73, %for.end.unlock_crit_edge, %if.end51.unlock_crit_edge, %if.then46.unlock_crit_edge
  %i.1 = phi i32 [ 0, %if.then46.unlock_crit_edge ], [ %i.0.lcssa, %if.then73 ], [ %i.0.lcssa, %for.end.unlock_crit_edge ], [ 0, %if.end51.unlock_crit_edge ]
  %64 = ptrtoint ptr %xdp_txq_queues_mode to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %xdp_txq_queues_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %cmp76.not = icmp eq i32 %65, 0
  br i1 %cmp76.not, label %unlock.if.end89_crit_edge, label %if.then78

unlock.if.end89_crit_edge:                        ; preds = %unlock
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end89

if.then78:                                        ; preds = %unlock
  %net_dev79 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %66 = ptrtoint ptr %net_dev79 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %net_dev79, align 4
  %features80 = getelementptr inbounds %struct.net_device, ptr %67, i32 0, i32 23
  %68 = ptrtoint ptr %features80 to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %features80, align 16
  %and81 = and i64 %69, 4096
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and81)
  %cmp82 = icmp eq i64 %and81, 0
  br i1 %cmp82, label %if.then84, label %if.then78.if.end89_crit_edge

if.then78.if.end89_crit_edge:                     ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end89

if.then84:                                        ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #11
  %core_txq85 = getelementptr inbounds %struct.efx_tx_queue, ptr %9, i32 0, i32 7
  %70 = ptrtoint ptr %core_txq85 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %core_txq85, align 4
  %xmit_lock_owner.i141 = getelementptr inbounds %struct.netdev_queue, ptr %71, i32 0, i32 11
  %72 = ptrtoint ptr %xmit_lock_owner.i141 to i32
  call void @__asan_store4_noabort(i32 %72)
  store volatile i32 -1, ptr %xmit_lock_owner.i141, align 4
  %_xmit_lock.i142 = getelementptr inbounds %struct.netdev_queue, ptr %71, i32 0, i32 10
  tail call void @_raw_spin_unlock(ptr noundef %_xmit_lock.i142) #9
  br label %if.end89

if.end89:                                         ; preds = %if.then84, %if.then78.if.end89_crit_edge, %unlock.if.end89_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.1)
  %cmp90 = icmp eq i32 %i.1, 0
  %spec.select139 = select i1 %cmp90, i32 -5, i32 %i.1
  br label %cleanup

cleanup:                                          ; preds = %if.end89, %if.end24.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select139, %if.end89 ], [ %.mux, %entry.cleanup_crit_edge ], [ -22, %if.end15.cleanup_crit_edge ], [ -22, %if.end24.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @efx_tx_map_chunk(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efx_hard_start_xmit(ptr noundef %skb, ptr noundef %net_dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %net_dev, i32 2304
  %queue_mapping.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 10
  %0 = ptrtoint ptr %queue_mapping.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %queue_mapping.i, align 8
  %conv = zext i16 %1 to i32
  %ip_summed.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %2 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load.i = load i16, ptr %ip_summed.i, align 8
  %3 = and i16 %bf.load.i, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %3)
  %cmp.not.i = icmp eq i16 %3, 1536
  br i1 %cmp.not.i, label %if.end.i, label %entry.efx_tx_csum_type_skb.exit_crit_edge

entry.efx_tx_csum_type_skb.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %efx_tx_csum_type_skb.exit

if.end.i:                                         ; preds = %entry
  %4 = and i16 %bf.load.i, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool.not.i = icmp eq i16 %4, 0
  br i1 %tobool.not.i, label %if.end.i.efx_tx_csum_type_skb.exit_crit_edge, label %land.lhs.true.i

if.end.i.efx_tx_csum_type_skb.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %efx_tx_csum_type_skb.exit

land.lhs.true.i:                                  ; preds = %if.end.i
  %5 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %5, align 8
  %conv.i.i = zext i16 %7 to i32
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %8 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data.i.i.i, align 4
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %10 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %head.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %9 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %11 to i32
  %sub.ptr.sub.i.neg.i.i = sub i32 %conv.i.i, %sub.ptr.lhs.cast.i.i.i
  %sub.i.i = add i32 %sub.ptr.sub.i.neg.i.i, %sub.ptr.rhs.cast.i.i.i
  %inner_transport_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 15
  %12 = ptrtoint ptr %inner_transport_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %inner_transport_header.i.i.i, align 2
  %conv.i.i.i = zext i16 %13 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %11, i32 %conv.i.i.i
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %add.ptr.i.i.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.lhs.cast.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i, i32 %sub.ptr.sub.i.i)
  %cmp8.i = icmp eq i32 %sub.i.i, %sub.ptr.sub.i.i
  br i1 %cmp8.i, label %if.then10.i, label %land.lhs.true.i.efx_tx_csum_type_skb.exit_crit_edge

land.lhs.true.i.efx_tx_csum_type_skb.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %efx_tx_csum_type_skb.exit

if.then10.i:                                      ; preds = %land.lhs.true.i
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %14 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %end.i.i, align 4
  %gso_segs.i = getelementptr inbounds %struct.skb_shared_info, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %gso_segs.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %gso_segs.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %17)
  %cmp13.i = icmp ugt i16 %17, 1
  br i1 %cmp13.i, label %land.lhs.true15.i, label %if.then10.i.if.end24.i_crit_edge

if.then10.i.if.end24.i_crit_edge:                 ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24.i

land.lhs.true15.i:                                ; preds = %if.then10.i
  %gso_type.i = getelementptr inbounds %struct.skb_shared_info, ptr %15, i32 0, i32 8
  %18 = ptrtoint ptr %gso_type.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %gso_type.i, align 8
  %20 = and i32 %19, 6144
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %20)
  %.not.i = icmp eq i32 %20, 2048
  br i1 %.not.i, label %land.lhs.true15.i.efx_tx_csum_type_skb.exit_crit_edge, label %land.lhs.true15.i.if.end24.i_crit_edge

land.lhs.true15.i.if.end24.i_crit_edge:           ; preds = %land.lhs.true15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24.i

land.lhs.true15.i.efx_tx_csum_type_skb.exit_crit_edge: ; preds = %land.lhs.true15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %efx_tx_csum_type_skb.exit

if.end24.i:                                       ; preds = %land.lhs.true15.i.if.end24.i_crit_edge, %if.then10.i.if.end24.i_crit_edge
  br label %efx_tx_csum_type_skb.exit

efx_tx_csum_type_skb.exit:                        ; preds = %if.end24.i, %land.lhs.true15.i.efx_tx_csum_type_skb.exit_crit_edge, %land.lhs.true.i.efx_tx_csum_type_skb.exit_crit_edge, %if.end.i.efx_tx_csum_type_skb.exit_crit_edge, %entry.efx_tx_csum_type_skb.exit_crit_edge
  %retval.0.i = phi i32 [ 2, %if.end24.i ], [ 0, %entry.efx_tx_csum_type_skb.exit_crit_edge ], [ 1, %land.lhs.true.i.efx_tx_csum_type_skb.exit_crit_edge ], [ 1, %if.end.i.efx_tx_csum_type_skb.exit_crit_edge ], [ 3, %land.lhs.true15.i.efx_tx_csum_type_skb.exit_crit_edge ]
  %n_tx_channels = getelementptr i8, ptr %net_dev, i32 3704
  %21 = ptrtoint ptr %n_tx_channels to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %n_tx_channels, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %conv)
  %cmp.not = icmp ugt i32 %22, %conv
  %or = or i32 %retval.0.i, 4
  %sub = select i1 %cmp.not, i32 0, i32 %22
  %index.0 = sub i32 %conv, %sub
  %type.0 = select i1 %cmp.not, i32 %retval.0.i, i32 %or
  %end.i.i101 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %23 = ptrtoint ptr %end.i.i101 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %end.i.i101, align 4
  %tx_flags.i = getelementptr inbounds %struct.skb_shared_info, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %tx_flags.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %tx_flags.i, align 1
  %27 = and i8 %26, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool.i.not = icmp eq i8 %27, 0
  br i1 %tobool.i.not, label %efx_tx_csum_type_skb.exit.if.end17_crit_edge, label %land.lhs.true, !prof !24

efx_tx_csum_type_skb.exit.if.end17_crit_edge:     ; preds = %efx_tx_csum_type_skb.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

land.lhs.true:                                    ; preds = %efx_tx_csum_type_skb.exit
  %call7 = tail call zeroext i1 @efx_ptp_is_ptp_tx(ptr noundef %add.ptr.i, ptr noundef %skb) #9
  br i1 %call7, label %if.then14, label %land.lhs.true.if.end17_crit_edge, !prof !21

land.lhs.true.if.end17_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.then14:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %tx_channel_offset.i = getelementptr i8, ptr %net_dev, i32 3700
  %28 = ptrtoint ptr %tx_channel_offset.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %tx_channel_offset.i, align 4
  %add.i = add i32 %29, %index.0
  %arrayidx.i = getelementptr %struct.efx_nic, ptr %add.ptr.i, i32 0, i32 25, i32 %add.i
  %30 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx.i, align 4
  tail call fastcc void @efx_tx_send_pending(ptr noundef %31)
  %call16 = tail call i32 @efx_ptp_tx(ptr noundef %add.ptr.i, ptr noundef %skb) #9
  br label %cleanup

if.end17:                                         ; preds = %land.lhs.true.if.end17_crit_edge, %efx_tx_csum_type_skb.exit.if.end17_crit_edge
  %tx_channel_offset.i.i = getelementptr i8, ptr %net_dev, i32 3700
  %32 = ptrtoint ptr %tx_channel_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %tx_channel_offset.i.i, align 4
  %add.i.i = add i32 %33, %index.0
  %arrayidx.i.i = getelementptr %struct.efx_nic, ptr %add.ptr.i, i32 0, i32 25, i32 %add.i.i
  %34 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx.i.i, align 4
  %arrayidx.i2.i = getelementptr %struct.efx_channel, ptr %35, i32 0, i32 47, i32 %type.0
  %36 = ptrtoint ptr %arrayidx.i2.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx.i2.i, align 4
  %tobool19.not = icmp eq ptr %37, null
  br i1 %tobool19.not, label %land.rhs, label %if.end75

land.rhs:                                         ; preds = %if.end17
  %.b99 = load i1, ptr @efx_hard_start_xmit.__already_done, align 1
  br i1 %.b99, label %land.rhs.if.then71_crit_edge, label %if.then37, !prof !24

land.rhs.if.then71_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then71

if.then37:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @efx_hard_start_xmit.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 537, i32 noundef 9, ptr noundef null) #9
  br label %if.then71

if.then71:                                        ; preds = %if.then37, %land.rhs.if.then71_crit_edge
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #9
  %38 = tail call i32 @llvm.read_register.i32(metadata !11) #9
  %and.i.i = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 3
  %40 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %cpu.i, align 4
  %arrayidx.i102 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %41
  %42 = ptrtoint ptr %arrayidx.i102 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx.i102, align 4
  %add.i103 = add i32 %43, ptrtoint (ptr getelementptr inbounds (%struct.softnet_data, ptr @softnet_data, i32 0, i32 11, i32 1) to i32)
  %44 = inttoptr i32 %add.i103 to ptr
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %44, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool.i104.not = icmp eq i8 %46, 0
  br i1 %tobool.i104.not, label %if.then73, label %if.then71.cleanup_crit_edge

if.then71.cleanup_crit_edge:                      ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then73:                                        ; preds = %if.then71
  call void @__asan_load4_noabort(i32 24)
  %47 = load ptr, ptr inttoptr (i32 24 to ptr), align 8
  %tx_queue.i = getelementptr inbounds %struct.efx_channel, ptr %47, i32 0, i32 46
  %channel1.i.i.i = getelementptr inbounds %struct.efx_channel, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %channel1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %channel1.i.i.i, align 4
  %50 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %47, align 128
  %xdp_channel_offset.i.i12.i = getelementptr inbounds %struct.efx_nic, ptr %51, i32 0, i32 50
  %52 = ptrtoint ptr %xdp_channel_offset.i.i12.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %xdp_channel_offset.i.i12.i, align 8
  %sub.i.i13.i = sub i32 %49, %53
  %n_xdp_channels.i.i14.i = getelementptr inbounds %struct.efx_nic, ptr %51, i32 0, i32 49
  %54 = ptrtoint ptr %n_xdp_channels.i.i14.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %n_xdp_channels.i.i14.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i13.i, i32 %55)
  %cmp.i.i15.i = icmp ult i32 %sub.i.i13.i, %55
  %xdp_tx_per_channel.i16.i = getelementptr inbounds %struct.efx_nic, ptr %51, i32 0, i32 51
  %tx_queues_per_channel.i17.i = getelementptr inbounds %struct.efx_nic, ptr %51, i32 0, i32 48
  %retval.0.in.i18.i = select i1 %cmp.i.i15.i, ptr %xdp_tx_per_channel.i16.i, ptr %tx_queues_per_channel.i17.i
  %56 = ptrtoint ptr %retval.0.in.i18.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %retval.0.i19.i = load i32, ptr %retval.0.in.i18.i, align 4
  %add.ptr20.i = getelementptr %struct.efx_tx_queue, ptr %tx_queue.i, i32 %retval.0.i19.i
  %cmp21.i = icmp ult ptr %tx_queue.i, %add.ptr20.i
  br i1 %cmp21.i, label %if.then73.for.body.i_crit_edge, label %if.then73.cleanup_crit_edge

if.then73.cleanup_crit_edge:                      ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then73.for.body.i_crit_edge:                   ; preds = %if.then73
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then73.for.body.i_crit_edge
  %q.022.i = phi ptr [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ], [ %tx_queue.i, %if.then73.for.body.i_crit_edge ]
  %xmit_pending.i = getelementptr inbounds %struct.efx_tx_queue, ptr %q.022.i, i32 0, i32 36
  %57 = ptrtoint ptr %xmit_pending.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %xmit_pending.i, align 8, !range !26
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool.not.i105 = icmp eq i8 %58, 0
  br i1 %tobool.not.i105, label %for.body.i.for.inc.i_crit_edge, label %if.then4.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.then4.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %59 = ptrtoint ptr %q.022.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %q.022.i, align 128
  %type.i.i = getelementptr inbounds %struct.efx_nic, ptr %60, i32 0, i32 6
  %61 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %type.i.i, align 4
  %tx_write.i.i = getelementptr inbounds %struct.efx_nic_type, ptr %62, i32 0, i32 51
  %63 = ptrtoint ptr %tx_write.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %tx_write.i.i, align 4
  tail call void %64(ptr noundef %q.022.i) #9
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then4.i, %for.body.i.for.inc.i_crit_edge
  %incdec.ptr.i = getelementptr %struct.efx_tx_queue, ptr %q.022.i, i32 1
  %65 = ptrtoint ptr %channel1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %channel1.i.i.i, align 4
  %67 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %47, align 128
  %xdp_channel_offset.i.i.i = getelementptr inbounds %struct.efx_nic, ptr %68, i32 0, i32 50
  %69 = ptrtoint ptr %xdp_channel_offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %xdp_channel_offset.i.i.i, align 8
  %sub.i.i.i = sub i32 %66, %70
  %n_xdp_channels.i.i.i = getelementptr inbounds %struct.efx_nic, ptr %68, i32 0, i32 49
  %71 = ptrtoint ptr %n_xdp_channels.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %n_xdp_channels.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i.i, i32 %72)
  %cmp.i.i.i = icmp ult i32 %sub.i.i.i, %72
  %xdp_tx_per_channel.i.i = getelementptr inbounds %struct.efx_nic, ptr %68, i32 0, i32 51
  %tx_queues_per_channel.i.i = getelementptr inbounds %struct.efx_nic, ptr %68, i32 0, i32 48
  %retval.0.in.i.i = select i1 %cmp.i.i.i, ptr %xdp_tx_per_channel.i.i, ptr %tx_queues_per_channel.i.i
  %73 = ptrtoint ptr %retval.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %retval.0.i.i = load i32, ptr %retval.0.in.i.i, align 4
  %add.ptr.i106 = getelementptr %struct.efx_tx_queue, ptr %tx_queue.i, i32 %retval.0.i.i
  %cmp.i = icmp ult ptr %incdec.ptr.i, %add.ptr.i106
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.cleanup_crit_edge

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

if.end75:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  %call76 = tail call i32 @__efx_enqueue_skb(ptr noundef nonnull %37, ptr noundef %skb)
  br label %cleanup

cleanup:                                          ; preds = %if.end75, %for.inc.i.cleanup_crit_edge, %if.then73.cleanup_crit_edge, %if.then71.cleanup_crit_edge, %if.then14
  %retval.0 = phi i32 [ %call16, %if.then14 ], [ 0, %if.end75 ], [ 0, %if.then71.cleanup_crit_edge ], [ 0, %if.then73.cleanup_crit_edge ], [ 0, %for.inc.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @efx_ptp_is_ptp_tx(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_ptp_tx(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efx_xmit_done_single(ptr noundef %tx_queue) local_unnamed_addr #0 align 64 {
entry:
  %pkts_compl = alloca i32, align 4
  %bytes_compl = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pkts_compl) #9
  %0 = ptrtoint ptr %pkts_compl to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %pkts_compl, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bytes_compl) #9
  %1 = ptrtoint ptr %bytes_compl to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %bytes_compl, align 4
  %read_count = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 18
  %2 = ptrtoint ptr %read_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %read_count, align 128
  %ptr_mask = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 11
  %4 = ptrtoint ptr %ptr_mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ptr_mask, align 4
  %and = and i32 %5, %3
  %buffer1 = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 8
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %entry
  %read_ptr.047 = phi i32 [ %and, %entry ], [ %and14, %cleanup.while.body_crit_edge ]
  %6 = ptrtoint ptr %buffer1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %buffer1, align 32
  %arrayidx = getelementptr %struct.efx_tx_buffer, ptr %7, i32 %read_ptr.047
  %len.i = getelementptr %struct.efx_tx_buffer, ptr %7, i32 %read_ptr.047, i32 3
  %8 = ptrtoint ptr %len.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %len.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool.not.i = icmp eq i16 %9, 0
  br i1 %tobool.not.i, label %efx_tx_buffer_in_use.exit, label %while.body.cleanup_crit_edge

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

efx_tx_buffer_in_use.exit:                        ; preds = %while.body
  %flags.i = getelementptr %struct.efx_tx_buffer, ptr %7, i32 %read_ptr.047, i32 2
  %10 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %flags.i, align 8
  %12 = and i16 %11, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool2.i.not = icmp eq i16 %12, 0
  br i1 %tobool2.i.not, label %if.then, label %efx_tx_buffer_in_use.exit.cleanup_crit_edge

efx_tx_buffer_in_use.exit.cleanup_crit_edge:      ; preds = %efx_tx_buffer_in_use.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then:                                          ; preds = %efx_tx_buffer_in_use.exit
  %13 = ptrtoint ptr %tx_queue to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tx_queue, align 128
  %msg_enable = getelementptr inbounds %struct.efx_nic, ptr %14, i32 0, i32 22
  %15 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %msg_enable, align 4
  %and3 = and i32 %16, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.then.cleanup.thread_crit_edge, label %if.then5

if.then.cleanup.thread_crit_edge:                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %net_dev = getelementptr inbounds %struct.efx_nic, ptr %14, i32 0, i32 83
  %17 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %net_dev, align 4
  %queue = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 1
  %19 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %queue, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %18, ptr noundef nonnull @.str.1, i32 noundef %20) #12
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then5, %if.then.cleanup.thread_crit_edge
  call void @efx_schedule_reset(ptr noundef %14, i32 noundef 12) #9
  br label %cleanup21

cleanup:                                          ; preds = %efx_tx_buffer_in_use.exit.cleanup_crit_edge, %while.body.cleanup_crit_edge
  %flags = getelementptr %struct.efx_tx_buffer, ptr %7, i32 %read_ptr.047, i32 2
  %21 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %flags, align 8
  %23 = and i16 %22, 2
  %tobool8.not.not = icmp eq i16 %23, 0
  call void @efx_dequeue_buffer(ptr noundef %tx_queue, ptr noundef %arrayidx, ptr noundef nonnull %pkts_compl, ptr noundef nonnull %bytes_compl) #9
  %24 = ptrtoint ptr %read_count to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %read_count, align 128
  %inc = add i32 %25, 1
  store i32 %inc, ptr %read_count, align 128
  %26 = ptrtoint ptr %ptr_mask to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ptr_mask, align 4
  %and14 = and i32 %27, %inc
  br i1 %tobool8.not.not, label %cleanup.while.body_crit_edge, label %while.end

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.end:                                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  %28 = ptrtoint ptr %pkts_compl to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %pkts_compl, align 4
  %pkts_compl15 = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 22
  %30 = ptrtoint ptr %pkts_compl15 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %pkts_compl15, align 16
  %add = add i32 %31, %29
  store i32 %add, ptr %pkts_compl15, align 16
  %32 = ptrtoint ptr %bytes_compl to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %bytes_compl, align 4
  %bytes_compl16 = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 21
  %34 = ptrtoint ptr %bytes_compl16 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %bytes_compl16, align 4
  %add17 = add i32 %35, %33
  store i32 %add17, ptr %bytes_compl16, align 4
  call void @efx_xmit_done_check_empty(ptr noundef %tx_queue) #9
  br label %cleanup21

cleanup21:                                        ; preds = %while.end, %cleanup.thread
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bytes_compl) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pkts_compl) #9
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_schedule_reset(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_dequeue_buffer(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_xmit_done_check_empty(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @efx_init_tx_queue_core_txq(ptr nocapture noundef %tx_queue) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %tx_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx_queue, align 128
  %net_dev = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 83
  %2 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net_dev, align 4
  %channel = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 6
  %4 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %channel, align 8
  %channel2 = getelementptr inbounds %struct.efx_channel, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %channel2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %channel2, align 4
  %type = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 3
  %8 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %type, align 4
  %and = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %n_tx_channels = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 46
  %10 = ptrtoint ptr %n_tx_channels to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %n_tx_channels, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %11, %cond.true ], [ 0, %entry.cond.end_crit_edge ]
  %add = add i32 %cond, %7
  %_tx.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 103
  %12 = ptrtoint ptr %_tx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %_tx.i, align 128
  %arrayidx.i = getelementptr %struct.netdev_queue, ptr %13, i32 %add
  %core_txq = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 7
  %14 = ptrtoint ptr %core_txq to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %arrayidx.i, ptr %core_txq, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efx_setup_tc(ptr noundef %net_dev, i32 noundef %type, ptr nocapture noundef %type_data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %type)
  %cmp.not = icmp eq i32 %type, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %type.i = getelementptr i8, ptr %net_dev, i32 2348
  %0 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %type.i, align 4
  %revision.i = getelementptr inbounds %struct.efx_nic_type, ptr %1, i32 0, i32 118
  %2 = ptrtoint ptr %revision.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %revision.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp2 = icmp sgt i32 %3, 3
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %4 = ptrtoint ptr %type_data to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %type_data, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %5)
  %cmp6 = icmp ugt i8 %5, 2
  br i1 %cmp6, label %if.end4.cleanup_crit_edge, label %if.end9

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end9:                                          ; preds = %if.end4
  %conv = zext i8 %5 to i32
  %hw = getelementptr inbounds %struct.tc_mqprio_qopt, ptr %type_data, i32 0, i32 2
  %6 = ptrtoint ptr %hw to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %hw, align 1
  %num_tc10 = getelementptr inbounds %struct.net_device, ptr %net_dev, i32 0, i32 140
  %7 = ptrtoint ptr %num_tc10 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %num_tc10, align 4
  %conv11 = sext i16 %8 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %conv11)
  %cmp12 = icmp eq i32 %conv, %conv11
  br i1 %cmp12, label %if.end9.cleanup_crit_edge, label %for.cond.preheader

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp1652.not = icmp eq i8 %5, 0
  br i1 %cmp1652.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %n_tx_channels = getelementptr i8, ptr %net_dev, i32 3704
  %arrayidx = getelementptr %struct.net_device, ptr %net_dev, i32 0, i32 141, i32 0
  %offset = getelementptr %struct.net_device, ptr %net_dev, i32 0, i32 141, i32 0, i32 1
  %9 = ptrtoint ptr %offset to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 0, ptr %offset, align 2
  %10 = ptrtoint ptr %n_tx_channels to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %n_tx_channels, align 8
  %conv20 = trunc i32 %11 to i16
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv20, ptr %arrayidx, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %exitcond.not = icmp eq i8 %5, 1
  br i1 %exitcond.not, label %for.body.lr.ph.for.end_crit_edge, label %for.body.1

for.body.lr.ph.for.end_crit_edge:                 ; preds = %for.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.1:                                       ; preds = %for.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %n_tx_channels to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %n_tx_channels, align 8
  %conv18.1 = trunc i32 %14 to i16
  %arrayidx.1 = getelementptr %struct.net_device, ptr %net_dev, i32 0, i32 141, i32 1
  %offset.1 = getelementptr %struct.net_device, ptr %net_dev, i32 0, i32 141, i32 1, i32 1
  %15 = ptrtoint ptr %offset.1 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv18.1, ptr %offset.1, align 2
  %conv20.1 = trunc i32 %14 to i16
  %16 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv20.1, ptr %arrayidx.1, align 2
  br label %for.end

for.end:                                          ; preds = %for.body.1, %for.body.lr.ph.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %conv23 = zext i8 %5 to i16
  %17 = ptrtoint ptr %num_tc10 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv23, ptr %num_tc10, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp25 = icmp ugt i8 %5, 1
  %. = select i1 %cmp25, i32 2, i32 1
  %n_tx_channels27 = getelementptr i8, ptr %net_dev, i32 3704
  %18 = ptrtoint ptr %n_tx_channels27 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %n_tx_channels27, align 8
  %mul28 = mul i32 %19, %.
  %call29 = tail call i32 @netif_set_real_num_tx_queues(ptr noundef %net_dev, i32 noundef %mul28) #9
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end9.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call29, %for.end ], [ -95, %entry.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ], [ -22, %if.end4.cleanup_crit_edge ], [ 0, %if.end9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_set_real_num_tx_queues(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_nic_alloc_buffer(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @efx_channel_tx_old_fill_level(ptr noundef readonly %channel) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %tx_queue1 = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 46
  %channel1.i.i = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 1
  %0 = ptrtoint ptr %channel1.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %channel1.i.i, align 4
  %2 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %channel, align 128
  %xdp_channel_offset.i.i = getelementptr inbounds %struct.efx_nic, ptr %3, i32 0, i32 50
  %4 = ptrtoint ptr %xdp_channel_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %xdp_channel_offset.i.i, align 8
  %sub.i.i = sub i32 %1, %5
  %n_xdp_channels.i.i = getelementptr inbounds %struct.efx_nic, ptr %3, i32 0, i32 49
  %6 = ptrtoint ptr %n_xdp_channels.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %n_xdp_channels.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i, i32 %7)
  %cmp.i.i = icmp ult i32 %sub.i.i, %7
  %xdp_tx_per_channel.i = getelementptr inbounds %struct.efx_nic, ptr %3, i32 0, i32 51
  %tx_queues_per_channel.i = getelementptr inbounds %struct.efx_nic, ptr %3, i32 0, i32 48
  %retval.0.in.i = select i1 %cmp.i.i, ptr %xdp_tx_per_channel.i, ptr %tx_queues_per_channel.i
  %8 = ptrtoint ptr %retval.0.in.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %retval.0.i = load i32, ptr %retval.0.in.i, align 4
  %add.ptr = getelementptr %struct.efx_tx_queue, ptr %tx_queue1, i32 %retval.0.i
  %cmp15 = icmp ult ptr %tx_queue1, %add.ptr
  br i1 %cmp15, label %entry.for.body_crit_edge, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %tx_queue.017 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %tx_queue1, %entry.for.body_crit_edge ]
  %fill_level.016 = phi i32 [ %13, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %insert_count = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue.017, i32 0, i32 26
  %9 = ptrtoint ptr %insert_count to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %insert_count, align 128
  %old_read_count = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue.017, i32 0, i32 29
  %11 = ptrtoint ptr %old_read_count to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %old_read_count, align 4
  %sub = sub i32 %10, %12
  %13 = tail call i32 @llvm.umax.i32(i32 %fill_level.016, i32 %sub)
  %incdec.ptr = getelementptr %struct.efx_tx_queue, ptr %tx_queue.017, i32 1
  %cmp = icmp ult ptr %incdec.ptr, %add.ptr
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

if.end:                                           ; preds = %for.body.if.end_crit_edge, %entry.if.end_crit_edge
  %fill_level.0.lcssa = phi i32 [ 0, %entry.if.end_crit_edge ], [ %13, %for.body.if.end_crit_edge ]
  ret i32 %fill_level.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

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

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inlinehint nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind readonly }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10}
!llvm.named.register.sp = !{!11}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18, !19}
!llvm.ident = !{!20}

!0 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/sfc/tx.c", i32 537, i32 6}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/net/ethernet/sfc/tx.c", i32 569, i32 4}
!5 = distinct !{null, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../include/linux/netdevice.h", i32 4690, i32 9}
!7 = distinct !{null, !8, !"__already_done", i1 false, i1 false}
!8 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!9 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!11 = !{!"sp"}
!12 = !{i32 1, !"wchar_size", i32 2}
!13 = !{i32 1, !"min_enum_size", i32 4}
!14 = !{i32 8, !"branch-target-enforcement", i32 0}
!15 = !{i32 8, !"sign-return-address", i32 0}
!16 = !{i32 8, !"sign-return-address-all", i32 0}
!17 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!18 = !{i32 7, !"uwtable", i32 1}
!19 = !{i32 7, !"frame-pointer", i32 2}
!20 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!21 = !{!"branch_weights", i32 1, i32 2000}
!22 = !{i64 2155402227, i64 2155402727, i64 2155402264, i64 2155402320, i64 2155402354, i64 2155402378, i64 2155402419, i64 2155402440, i64 2155402468, i64 2155402502}
!23 = !{i64 2155403571}
!24 = !{!"branch_weights", i32 2000, i32 1}
!25 = !{i64 2156213940}
!26 = !{i8 0, i8 2}
!27 = !{i64 2158482588}
!28 = !{i64 2158486047}
!29 = !{!"branch_weights", i32 2001, i32 2000}
!30 = !{!"branch_weights", i32 4001, i32 4000000}
