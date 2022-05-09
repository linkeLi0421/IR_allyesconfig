; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/sfc/ethtool.c_pt.bc'
source_filename = "../drivers/net/ethernet/sfc/ethtool.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.efx_nic_type = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i8, i8, i8, i32, i32, i64, i32, i32, i32, i32 }
%struct.ethtool_regs = type { i32, i32, i32, [0 x i8] }
%struct.ethtool_wolinfo = type { i32, i32, i32, [6 x i8] }
%struct.ethtool_coalesce = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.efx_channel = type { ptr, i32, ptr, i8, i8, i32, i32, ptr, %struct.napi_struct, i32, %struct.efx_special_buffer, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.delayed_work, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, %struct.efx_rx_queue, [4 x %struct.efx_tx_queue], [8 x ptr], i32, i32, i32, [84 x i8] }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.efx_special_buffer = type { %struct.efx_buffer, i32, i32 }
%struct.efx_buffer = type { ptr, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.efx_rx_queue = type { ptr, i32, ptr, %struct.efx_special_buffer, i32, i8, i8, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, [92 x i8], %struct.xdp_rxq_info, i8, [127 x i8] }
%struct.xdp_rxq_info = type { ptr, i32, i32, %struct.xdp_mem_info, i32, [104 x i8] }
%struct.xdp_mem_info = type { i32, i32 }
%struct.efx_tx_queue = type { ptr, i32, i32, i32, i32, i8, ptr, ptr, ptr, ptr, %struct.efx_special_buffer, i32, ptr, i32, i8, i8, i8, [53 x i8], i32, i32, i32, i32, i32, i32, i32, [100 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, [72 x i8], i32, %struct.atomic_t, [120 x i8] }
%struct.efx_nic = type { [16 x i8], %struct.list_head, ptr, %struct.list_head, ptr, i32, ptr, i32, i8, ptr, [16 x i8], %struct.work_struct, i32, ptr, i32, i32, i32, i32, i8, i8, i32, i32, i32, i32, i32, [32 x ptr], [32 x %struct.efx_msi_context], [2 x ptr], i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.efx_rss_context, %struct.mutex, i32, i32, i32, i8, i8, %struct.efx_buffer, i32, i32, %struct.delayed_work, %struct.list_head, ptr, ptr, %struct.mutex, %struct.work_struct, i8, i8, i8, ptr, i64, i16, %struct.efx_buffer, i64, i64, i8, i32, ptr, %struct.mdio_if_info, i32, i32, [3 x i32], i32, %struct.efx_link_state, i32, i8, %union.efx_multicast_hash, i8, i32, %struct.atomic_t, i32, i64, ptr, ptr, %struct.rw_semaphore, ptr, %struct.mutex, i32, [8 x %struct.efx_async_filter_insertion], %struct.spinlock, ptr, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, ptr, i8, ptr, i8, %struct.notifier_block, i32, i32, %struct.delayed_work, %struct.spinlock, i32, %struct.spinlock, %struct.atomic_t, [60 x i8] }
%struct.efx_msi_context = type { ptr, i32, [22 x i8] }
%struct.efx_rss_context = type { %struct.list_head, i32, i32, i8, [40 x i8], [128 x i32] }
%struct.mdio_if_info = type { i32, i32, i32, ptr, ptr, ptr }
%struct.efx_link_state = type { i8, i8, i8, i32 }
%union.efx_multicast_hash = type { [2 x %union.efx_oword] }
%union.efx_oword = type { [2 x i64] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.efx_async_filter_insertion = type { ptr, %struct.efx_filter_spec, %struct.work_struct, i16, i32 }
%struct.efx_filter_spec = type { i32, i32, i16, i16, [6 x i8], [6 x i8], i16, i8, [4 x i32], [4 x i32], i16, i16, i8 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.ethtool_ringparam = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ethtool_ts_info = type { i32, i32, i32, i32, [3 x i32], i32, [3 x i32] }

@efx_ethtool_ops = dso_local constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 597, i32 0, ptr @efx_ethtool_get_drvinfo, ptr @efx_ethtool_get_regs_len, ptr @efx_ethtool_get_regs, ptr @efx_ethtool_get_wol, ptr @efx_ethtool_set_wol, ptr @efx_ethtool_get_msglevel, ptr @efx_ethtool_set_msglevel, ptr null, ptr @ethtool_op_get_link, ptr null, ptr null, ptr null, ptr null, ptr @efx_ethtool_get_coalesce, ptr @efx_ethtool_set_coalesce, ptr @efx_ethtool_get_ringparam, ptr @efx_ethtool_set_ringparam, ptr null, ptr @efx_ethtool_get_pauseparam, ptr @efx_ethtool_set_pauseparam, ptr @efx_ethtool_self_test, ptr @efx_ethtool_get_strings, ptr @efx_ethtool_phys_id, ptr @efx_ethtool_get_stats, ptr null, ptr null, ptr null, ptr null, ptr @efx_ethtool_get_sset_count, ptr @efx_ethtool_get_rxnfc, ptr @efx_ethtool_set_rxnfc, ptr null, ptr @efx_ethtool_reset, ptr @efx_ethtool_get_rxfh_key_size, ptr @efx_ethtool_get_rxfh_indir_size, ptr @efx_ethtool_get_rxfh, ptr @efx_ethtool_set_rxfh, ptr @efx_ethtool_get_rxfh_context, ptr @efx_ethtool_set_rxfh_context, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @efx_ethtool_get_ts_info, ptr @efx_ethtool_get_module_info, ptr @efx_ethtool_get_module_eeprom, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @efx_ethtool_get_link_ksettings, ptr @efx_ethtool_set_link_ksettings, ptr @efx_ethtool_get_fec_stats, ptr @efx_ethtool_get_fecparam, ptr @efx_ethtool_set_fecparam, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@.str = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"RX queues cannot be smaller than %u\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"increasing TX queue size to minimum of %u\0A\00", [53 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@___asan_gen_.2 = private unnamed_addr constant [16 x i8] c"efx_ethtool_ops\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 242, i32 26 }
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 189, i32 3 }
@___asan_gen_.8 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.9 = private constant [38 x i8] c"../drivers/net/ethernet/sfc/ethtool.c\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 197, i32 3 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @efx_ethtool_ops, ptr @.str, ptr @.str.1], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efx_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_ethtool_get_drvinfo(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @efx_ethtool_get_regs_len(ptr noundef %net_dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %net_dev, i32 2304
  %call1 = tail call i32 @efx_nic_get_regs_len(ptr noundef %add.ptr.i) #6
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @efx_ethtool_get_regs(ptr noundef %net_dev, ptr nocapture noundef writeonly %regs, ptr noundef %buf) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %net_dev, i32 2304
  %type = getelementptr i8, ptr %net_dev, i32 2348
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %type, align 4
  %revision = getelementptr inbounds %struct.efx_nic_type, ptr %1, i32 0, i32 118
  %2 = ptrtoint ptr %revision to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %revision, align 8
  %version = getelementptr inbounds %struct.ethtool_regs, ptr %regs, i32 0, i32 1
  %4 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %version, align 4
  tail call void @efx_nic_get_regs(ptr noundef %add.ptr.i, ptr noundef %buf) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @efx_ethtool_get_wol(ptr noundef %net_dev, ptr noundef %wol) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %net_dev, i32 2304
  %type = getelementptr i8, ptr %net_dev, i32 2348
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %type, align 4
  %get_wol = getelementptr inbounds %struct.efx_nic_type, ptr %1, i32 0, i32 31
  %2 = ptrtoint ptr %get_wol to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %get_wol, align 4
  tail call void %3(ptr noundef %add.ptr.i, ptr noundef %wol) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @efx_ethtool_set_wol(ptr noundef %net_dev, ptr nocapture noundef readonly %wol) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %net_dev, i32 2304
  %type = getelementptr i8, ptr %net_dev, i32 2348
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %type, align 4
  %set_wol = getelementptr inbounds %struct.efx_nic_type, ptr %1, i32 0, i32 32
  %2 = ptrtoint ptr %set_wol to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %set_wol, align 8
  %wolopts = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 2
  %4 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %wolopts, align 4
  %call1 = tail call i32 %3(ptr noundef %add.ptr.i, i32 noundef %5) #6
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_ethtool_get_msglevel(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_ethtool_set_msglevel(ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_link(ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @efx_ethtool_get_coalesce(ptr noundef %net_dev, ptr nocapture noundef writeonly %coalesce, ptr nocapture noundef readnone %kernel_coal, ptr nocapture noundef readnone %extack) #1 align 64 {
entry:
  %tx_usecs = alloca i32, align 4
  %rx_usecs = alloca i32, align 4
  %rx_adaptive = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %net_dev, i32 2304
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tx_usecs) #6
  %0 = ptrtoint ptr %tx_usecs to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %tx_usecs, align 4, !annotation !15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rx_usecs) #6
  %1 = ptrtoint ptr %rx_usecs to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rx_usecs, align 4, !annotation !15
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rx_adaptive) #6
  %2 = ptrtoint ptr %rx_adaptive to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %rx_adaptive, align 1, !annotation !15
  call void @efx_get_irq_moderation(ptr noundef %add.ptr.i, ptr noundef nonnull %tx_usecs, ptr noundef nonnull %rx_usecs, ptr noundef nonnull %rx_adaptive) #6
  %3 = ptrtoint ptr %tx_usecs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %tx_usecs, align 4
  %tx_coalesce_usecs = getelementptr inbounds %struct.ethtool_coalesce, ptr %coalesce, i32 0, i32 5
  %5 = ptrtoint ptr %tx_coalesce_usecs to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %tx_coalesce_usecs, align 4
  %tx_coalesce_usecs_irq = getelementptr inbounds %struct.ethtool_coalesce, ptr %coalesce, i32 0, i32 7
  %6 = ptrtoint ptr %tx_coalesce_usecs_irq to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %4, ptr %tx_coalesce_usecs_irq, align 4
  %7 = ptrtoint ptr %rx_usecs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rx_usecs, align 4
  %rx_coalesce_usecs = getelementptr inbounds %struct.ethtool_coalesce, ptr %coalesce, i32 0, i32 1
  %9 = ptrtoint ptr %rx_coalesce_usecs to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %rx_coalesce_usecs, align 4
  %rx_coalesce_usecs_irq = getelementptr inbounds %struct.ethtool_coalesce, ptr %coalesce, i32 0, i32 3
  %10 = ptrtoint ptr %rx_coalesce_usecs_irq to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %8, ptr %rx_coalesce_usecs_irq, align 4
  %11 = ptrtoint ptr %rx_adaptive to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %rx_adaptive, align 1, !range !16
  %13 = zext i8 %12 to i32
  %use_adaptive_rx_coalesce = getelementptr inbounds %struct.ethtool_coalesce, ptr %coalesce, i32 0, i32 10
  %14 = ptrtoint ptr %use_adaptive_rx_coalesce to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %use_adaptive_rx_coalesce, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rx_adaptive) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rx_usecs) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tx_usecs) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @efx_ethtool_set_coalesce(ptr noundef %net_dev, ptr nocapture noundef readonly %coalesce, ptr nocapture noundef readnone %kernel_coal, ptr nocapture noundef readnone %extack) #1 align 64 {
entry:
  %tx_usecs = alloca i32, align 4
  %rx_usecs = alloca i32, align 4
  %adaptive = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %net_dev, i32 2304
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tx_usecs) #6
  %0 = ptrtoint ptr %tx_usecs to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %tx_usecs, align 4, !annotation !15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rx_usecs) #6
  %1 = ptrtoint ptr %rx_usecs to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rx_usecs, align 4, !annotation !15
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %adaptive) #6
  %2 = ptrtoint ptr %adaptive to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %adaptive, align 1, !annotation !15
  call void @efx_get_irq_moderation(ptr noundef %add.ptr.i, ptr noundef nonnull %tx_usecs, ptr noundef nonnull %rx_usecs, ptr noundef nonnull %adaptive) #6
  %rx_coalesce_usecs = getelementptr inbounds %struct.ethtool_coalesce, ptr %coalesce, i32 0, i32 1
  %3 = ptrtoint ptr %rx_coalesce_usecs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %rx_coalesce_usecs, align 4
  %5 = ptrtoint ptr %rx_usecs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rx_usecs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %6)
  %cmp.not = icmp eq i32 %4, %6
  br i1 %cmp.not, label %if.else, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %rx_coalesce_usecs_irq = getelementptr inbounds %struct.ethtool_coalesce, ptr %coalesce, i32 0, i32 3
  %7 = ptrtoint ptr %rx_coalesce_usecs_irq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rx_coalesce_usecs_irq, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %entry.if.end_crit_edge
  %storemerge = phi i32 [ %8, %if.else ], [ %4, %entry.if.end_crit_edge ]
  %9 = ptrtoint ptr %rx_usecs to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %storemerge, ptr %rx_usecs, align 4
  %use_adaptive_rx_coalesce = getelementptr inbounds %struct.ethtool_coalesce, ptr %coalesce, i32 0, i32 10
  %10 = ptrtoint ptr %use_adaptive_rx_coalesce to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %use_adaptive_rx_coalesce, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool = icmp ne i32 %11, 0
  %frombool = zext i1 %tobool to i8
  %12 = ptrtoint ptr %adaptive to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %frombool, ptr %adaptive, align 1
  %tx_coalesce_usecs = getelementptr inbounds %struct.ethtool_coalesce, ptr %coalesce, i32 0, i32 5
  %13 = ptrtoint ptr %tx_coalesce_usecs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tx_coalesce_usecs, align 4
  %15 = ptrtoint ptr %tx_usecs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tx_usecs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %16)
  %cmp2 = icmp eq i32 %14, %16
  br i1 %cmp2, label %if.else9, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.else9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %tx_coalesce_usecs_irq = getelementptr inbounds %struct.ethtool_coalesce, ptr %coalesce, i32 0, i32 7
  %17 = ptrtoint ptr %tx_coalesce_usecs_irq to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tx_coalesce_usecs_irq, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %14)
  %cmp3 = icmp eq i32 %18, %14
  br label %if.end11

if.end11:                                         ; preds = %if.else9, %if.end.if.end11_crit_edge
  %19 = phi i1 [ %cmp3, %if.else9 ], [ false, %if.end.if.end11_crit_edge ]
  %storemerge51 = phi i32 [ %18, %if.else9 ], [ %14, %if.end.if.end11_crit_edge ]
  %20 = ptrtoint ptr %tx_usecs to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %storemerge51, ptr %tx_usecs, align 4
  %call14 = call i32 @efx_init_irq_moderation(ptr noundef %add.ptr.i, i32 noundef %storemerge51, i32 noundef %storemerge, i1 noundef zeroext %tobool, i1 noundef zeroext %19) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15.not = icmp eq i32 %call14, 0
  br i1 %cmp15.not, label %if.end17, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end17:                                         ; preds = %if.end11
  %channel18 = getelementptr i8, ptr %net_dev, i32 2472
  %21 = ptrtoint ptr %channel18 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %channel18, align 8
  %tobool19.not52 = icmp eq ptr %22, null
  br i1 %tobool19.not52, label %if.end17.cleanup_crit_edge, label %for.body.lr.ph

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end17
  %type = getelementptr i8, ptr %net_dev, i32 2348
  %n_channels = getelementptr i8, ptr %net_dev, i32 3688
  br label %for.body

for.body:                                         ; preds = %cond.end.for.body_crit_edge, %for.body.lr.ph
  %channel.053 = phi ptr [ %22, %for.body.lr.ph ], [ %32, %cond.end.for.body_crit_edge ]
  %23 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %type, align 4
  %push_irq_moderation = getelementptr inbounds %struct.efx_nic_type, ptr %24, i32 0, i32 26
  %25 = ptrtoint ptr %push_irq_moderation to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %push_irq_moderation, align 8
  call void %26(ptr noundef nonnull %channel.053) #6
  %channel20 = getelementptr inbounds %struct.efx_channel, ptr %channel.053, i32 0, i32 1
  %27 = ptrtoint ptr %channel20 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %channel20, align 4
  %add = add i32 %28, 1
  %29 = ptrtoint ptr %n_channels to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %n_channels, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %30)
  %cmp21 = icmp ult i32 %add, %30
  br i1 %cmp21, label %cond.end, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cond.end:                                         ; preds = %for.body
  %arrayidx25 = getelementptr %struct.efx_nic, ptr %add.ptr.i, i32 0, i32 25, i32 %add
  %31 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx25, align 4
  %tobool19.not = icmp eq ptr %32, null
  br i1 %tobool19.not, label %cond.end.cleanup_crit_edge, label %cond.end.for.body_crit_edge

cond.end.for.body_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %cond.end.cleanup_crit_edge, %for.body.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %if.end11.cleanup_crit_edge
  %retval.0 = phi i32 [ %call14, %if.end11.cleanup_crit_edge ], [ 0, %if.end17.cleanup_crit_edge ], [ 0, %cond.end.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %adaptive) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rx_usecs) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tx_usecs) #6
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @efx_ethtool_get_ringparam(ptr nocapture noundef readonly %net_dev, ptr nocapture noundef writeonly %ring, ptr nocapture noundef readnone %kernel_ring, ptr nocapture noundef readnone %extack) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_max_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 1
  %0 = ptrtoint ptr %rx_max_pending to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 4096, ptr %rx_max_pending, align 4
  %type.i = getelementptr i8, ptr %net_dev, i32 2348
  %1 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %type.i, align 4
  %revision.i = getelementptr inbounds %struct.efx_nic_type, ptr %2, i32 0, i32 118
  %3 = ptrtoint ptr %revision.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %revision.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %4)
  %cmp = icmp sgt i32 %4, 3
  %cond = select i1 %cmp, i32 2048, i32 4096
  %tx_max_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 4
  %5 = ptrtoint ptr %tx_max_pending to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %cond, ptr %tx_max_pending, align 4
  %rxq_entries = getelementptr i8, ptr %net_dev, i32 3644
  %6 = ptrtoint ptr %rxq_entries to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rxq_entries, align 4
  %rx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 5
  %8 = ptrtoint ptr %rx_pending to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %rx_pending, align 4
  %txq_entries = getelementptr i8, ptr %net_dev, i32 3648
  %9 = ptrtoint ptr %txq_entries to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %txq_entries, align 64
  %tx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 8
  %11 = ptrtoint ptr %tx_pending to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %tx_pending, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @efx_ethtool_set_ringparam(ptr noundef %net_dev, ptr nocapture noundef readonly %ring, ptr nocapture noundef readnone %kernel_ring, ptr nocapture noundef readnone %extack) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %net_dev, i32 2304
  %rx_mini_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 6
  %0 = ptrtoint ptr %rx_mini_pending to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rx_mini_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %rx_jumbo_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 7
  %2 = ptrtoint ptr %rx_jumbo_pending to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rx_jumbo_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %lor.lhs.false2, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %rx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 5
  %4 = ptrtoint ptr %rx_pending to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rx_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %5)
  %cmp = icmp ugt i32 %5, 4096
  br i1 %cmp, label %lor.lhs.false2.cleanup_crit_edge, label %lor.lhs.false3

lor.lhs.false2.cleanup_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false3:                                   ; preds = %lor.lhs.false2
  %tx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 8
  %6 = ptrtoint ptr %tx_pending to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tx_pending, align 4
  %type.i = getelementptr i8, ptr %net_dev, i32 2348
  %8 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %type.i, align 4
  %revision.i = getelementptr inbounds %struct.efx_nic_type, ptr %9, i32 0, i32 118
  %10 = ptrtoint ptr %revision.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %revision.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %11)
  %cmp5 = icmp sgt i32 %11, 3
  %cond = select i1 %cmp5, i32 2048, i32 4096
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %cond)
  %cmp6 = icmp ugt i32 %7, %cond
  br i1 %cmp6, label %lor.lhs.false3.cleanup_crit_edge, label %if.end

lor.lhs.false3.cleanup_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %5)
  %cmp8 = icmp ult i32 %5, 128
  br i1 %cmp8, label %do.body, label %if.end14

do.body:                                          ; preds = %if.end
  %msg_enable = getelementptr i8, ptr %net_dev, i32 2460
  %12 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %msg_enable, align 4
  %and = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  br i1 %tobool10.not, label %do.body.cleanup_crit_edge, label %if.then11

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %net_dev12 = getelementptr i8, ptr %net_dev, i32 4732
  %14 = ptrtoint ptr %net_dev12 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %net_dev12, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %15, ptr noundef nonnull @.str, i32 noundef 128) #9
  br label %cleanup

if.end14:                                         ; preds = %if.end
  %call16 = tail call i32 @efx_tx_max_skb_descs(ptr noundef %add.ptr.i) #6
  %mul = shl i32 %call16, 1
  %16 = tail call i32 @llvm.umax.i32(i32 %7, i32 %mul)
  %17 = ptrtoint ptr %tx_pending to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tx_pending, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %18)
  %cmp20.not = icmp eq i32 %16, %18
  br i1 %cmp20.not, label %if.end14.if.end31_crit_edge, label %do.body22

if.end14.if.end31_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

do.body22:                                        ; preds = %if.end14
  %msg_enable23 = getelementptr i8, ptr %net_dev, i32 2460
  %19 = ptrtoint ptr %msg_enable23 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %msg_enable23, align 4
  %and24 = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %do.body22.if.end31_crit_edge, label %if.then26

do.body22.if.end31_crit_edge:                     ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

if.then26:                                        ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #8
  %net_dev27 = getelementptr i8, ptr %net_dev, i32 4732
  %21 = ptrtoint ptr %net_dev27 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %net_dev27, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %22, ptr noundef nonnull @.str.1, i32 noundef %16) #9
  br label %if.end31

if.end31:                                         ; preds = %if.then26, %do.body22.if.end31_crit_edge, %if.end14.if.end31_crit_edge
  %23 = ptrtoint ptr %rx_pending to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %rx_pending, align 4
  %call33 = tail call i32 @efx_realloc_channels(ptr noundef %add.ptr.i, i32 noundef %24, i32 noundef %16) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %if.then11, %do.body.cleanup_crit_edge, %lor.lhs.false3.cleanup_crit_edge, %lor.lhs.false2.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call33, %if.end31 ], [ -22, %lor.lhs.false3.cleanup_crit_edge ], [ -22, %lor.lhs.false2.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.then11 ], [ -22, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_ethtool_get_pauseparam(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_ethtool_set_pauseparam(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_ethtool_self_test(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_ethtool_get_strings(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @efx_ethtool_phys_id(ptr noundef %net_dev, i32 noundef %state) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %net_dev, i32 2304
  %0 = zext i32 %state to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %state, label %entry.sw.epilog_crit_edge [
    i32 2, label %sw.bb
    i32 3, label %sw.bb1
    i32 1, label %entry.cleanup_crit_edge
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %sw.bb, %entry.sw.epilog_crit_edge
  %mode.0 = phi i32 [ 0, %sw.bb1 ], [ 1, %sw.bb ], [ 2, %entry.sw.epilog_crit_edge ]
  %call4 = tail call i32 @efx_mcdi_set_id_led(ptr noundef %add.ptr.i, i32 noundef %mode.0) #6
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %sw.epilog ], [ %state, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_ethtool_get_stats(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_ethtool_get_sset_count(ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_ethtool_get_rxnfc(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_ethtool_set_rxnfc(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_ethtool_reset(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_ethtool_get_rxfh_key_size(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_ethtool_get_rxfh_indir_size(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_ethtool_get_rxfh(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_ethtool_set_rxfh(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_ethtool_get_rxfh_context(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_ethtool_set_rxfh_context(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i1 noundef zeroext) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @efx_ethtool_get_ts_info(ptr noundef %net_dev, ptr noundef %ts_info) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %net_dev, i32 2304
  %so_timestamping = getelementptr inbounds %struct.ethtool_ts_info, ptr %ts_info, i32 0, i32 1
  %0 = ptrtoint ptr %so_timestamping to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 24, ptr %so_timestamping, align 4
  %phc_index = getelementptr inbounds %struct.ethtool_ts_info, ptr %ts_info, i32 0, i32 2
  %1 = ptrtoint ptr %phc_index to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %phc_index, align 4
  tail call void @efx_ptp_get_ts_info(ptr noundef %add.ptr.i, ptr noundef %ts_info) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_ethtool_get_module_info(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_ethtool_get_module_eeprom(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_ethtool_get_link_ksettings(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_ethtool_set_link_ksettings(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @efx_ethtool_get_fec_stats(ptr noundef %net_dev, ptr noundef %fec_stats) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr i8, ptr %net_dev, i32 2348
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %type, align 4
  %get_fec_stats = getelementptr inbounds %struct.efx_nic_type, ptr %1, i32 0, i32 34
  %2 = ptrtoint ptr %get_fec_stats to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %get_fec_stats, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i = getelementptr i8, ptr %net_dev, i32 2304
  tail call void %3(ptr noundef %add.ptr.i, ptr noundef %fec_stats) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_ethtool_get_fecparam(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_ethtool_set_fecparam(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_nic_get_regs_len(ptr noundef) local_unnamed_addr #0

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_nic_get_regs(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_get_irq_moderation(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_init_irq_moderation(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_tx_max_skb_descs(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_realloc_channels(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_mcdi_set_id_led(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_ptp_get_ts_info(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @efx_ethtool_ops, !1, !"efx_ethtool_ops", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/sfc/ethtool.c", i32 242, i32 26}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/sfc/ethtool.c", i32 189, i32 3}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/sfc/ethtool.c", i32 197, i32 3}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!15 = !{!"auto-init"}
!16 = !{i8 0, i8 2}
