; ModuleID = '/llk/IR_all_yes/drivers/net/can/spi/mcp251xfd/mcp251xfd-tx.c_pt.bc'
source_filename = "../drivers/net/can/spi/mcp251xfd/mcp251xfd-tx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.sk_buff = type { %union.anon, %union.anon.124, %union.anon.125, [48 x i8], %union.anon.126, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.128, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.124 = type { ptr }
%union.anon.125 = type { i64 }
%union.anon.126 = type { %struct.anon.127 }
%struct.anon.127 = type { i32, ptr }
%union.anon.128 = type { %struct.anon.129 }
%struct.anon.129 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.130, i32, i32, i32, i16, i16, %union.anon.132, i32, %union.anon.133, %union.anon.134, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.130 = type { i32 }
%union.anon.132 = type { i32 }
%union.anon.133 = type { i32 }
%union.anon.134 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.canfd_frame = type { i32, i8, i8, i8, i8, [64 x i8] }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.1, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.123, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.1 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.123 = type { ptr }
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
%struct.can_skb_priv = type { i32, i32, i32, [4 x i8], [0 x %struct.can_frame] }
%struct.can_frame = type { i32, %union.anon.151, i8, i8, i8, [8 x i8] }
%union.anon.151 = type { i8 }
%struct.mcp251xfd_tx_ring = type { i32, i32, i16, i8, i8, [116 x i8], [8 x %struct.mcp251xfd_tx_obj], %union.mcp251xfd_write_reg_buf }
%struct.mcp251xfd_tx_obj = type { %struct.spi_message, [2 x %struct.spi_transfer], [8 x i8], %union.mcp251xfd_tx_obj_load_buf }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.spi_delay = type { i16, i8 }
%union.mcp251xfd_tx_obj_load_buf = type { %struct.anon.150, [51 x i8] }
%struct.anon.150 = type <{ %struct.mcp251xfd_buf_cmd_crc, %struct.mcp251xfd_hw_tx_obj_raw, i16 }>
%struct.mcp251xfd_buf_cmd_crc = type <{ i16, i8 }>
%struct.mcp251xfd_hw_tx_obj_raw = type { i32, i32, [64 x i8] }
%union.mcp251xfd_write_reg_buf = type { %struct.anon.147, [122 x i8] }
%struct.anon.147 = type { %struct.mcp251xfd_buf_cmd, [4 x i8] }
%struct.mcp251xfd_buf_cmd = type { i16 }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.mcp251xfd_priv = type { %struct.can_priv, %struct.can_rx_offload, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, [44 x i8], [1 x %struct.mcp251xfd_tef_ring], [1 x %struct.mcp251xfd_tx_ring], [1 x ptr], i8, %struct.mcp251xfd_ecc, %struct.mcp251xfd_regs_status, %struct.cyclecounter, %struct.timecounter, %struct.delayed_work, ptr, ptr, ptr, ptr, %struct.mcp251xfd_devtype_data, %struct.can_berr_counter, [40 x i8] }
%struct.can_priv = type { ptr, %struct.can_device_stats, ptr, ptr, %struct.can_bittiming, %struct.can_bittiming, ptr, %struct.can_tdc, i32, ptr, ptr, i32, i32, %struct.can_clock, i32, ptr, i16, ptr, [2 x i16], i32, ptr, i32, i32, i32, i32, %struct.delayed_work, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.can_device_stats = type { i32, i32, i32, i32, i32, i32 }
%struct.can_bittiming = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.can_tdc = type { i32, i32, i32 }
%struct.can_clock = type { i32 }
%struct.can_rx_offload = type { ptr, ptr, %struct.sk_buff_head, %struct.sk_buff_head, i32, i32, i32, %struct.napi_struct, i8 }
%struct.sk_buff_head = type { %union.anon.94, i32, %struct.spinlock }
%union.anon.94 = type { %struct.anon.95 }
%struct.anon.95 = type { ptr, ptr }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.mcp251xfd_tef_ring = type { i32, i32, [120 x i8], %union.mcp251xfd_write_reg_buf, [8 x %struct.spi_transfer] }
%struct.mcp251xfd_ecc = type { i32, i32 }
%struct.mcp251xfd_regs_status = type { i32 }
%struct.cyclecounter = type { ptr, i64, i32, i32 }
%struct.timecounter = type { ptr, i64, i64, i64, i64 }
%struct.mcp251xfd_devtype_data = type { i32, i32 }
%struct.can_berr_counter = type { i16, i16 }

@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ERROR in %s: %d\0A\00", [47 x i8] zeroinitializer }, align 32
@__func__.mcp251xfd_start_xmit = private unnamed_addr constant [21 x i8] c"mcp251xfd_start_xmit\00", align 1
@can_skb_headroom_valid.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/can/skb.h\00", [40 x i8] zeroinitializer }, align 32
@mcp251xfd_tx_busy.__UNIQUE_ID_ddebug507 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, i8 0, i8 38, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mcp251xfd\00", [22 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mcp251xfd_tx_busy\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/net/can/spi/mcp251xfd/mcp251xfd-tx.c\00", [51 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"Stopping tx-queue (tx_head=0x%08x, tx_tail=0x%08x, len=%d).\0A\00", [35 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 12, i64 13]
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 202, i32 25 }
@___asan_gen_.10 = private unnamed_addr constant [27 x i8] c"../include/linux/can/skb.h\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.10, i32 104, i32 6 }
@___asan_gen_.21 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.22 = private constant [48 x i8] c"../drivers/net/can/spi/mcp251xfd/mcp251xfd-tx.c\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 152, i32 3 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mcp251xfd_start_xmit(ptr noundef %skb, ptr noundef %ndev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %tx = getelementptr i8, ptr %ndev, i32 4096
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %2 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %protocol.i, align 8
  %4 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i16 %3, label %entry.can_dropped_invalid_skb.exit_crit_edge [
    i16 12, label %if.then.i
    i16 13, label %if.then14.i
  ]

entry.can_dropped_invalid_skb.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %can_dropped_invalid_skb.exit

if.then.i:                                        ; preds = %entry
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %5 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %6)
  %cmp2.not.i = icmp eq i32 %6, 16
  br i1 %cmp2.not.i, label %lor.rhs.i, label %if.then.i.can_dropped_invalid_skb.exit_crit_edge, !prof !22

if.then.i.can_dropped_invalid_skb.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %can_dropped_invalid_skb.exit

lor.rhs.i:                                        ; preds = %if.then.i
  %len4.i = getelementptr inbounds %struct.canfd_frame, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %len4.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %len4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %8)
  %cmp6.i = icmp ugt i8 %8, 8
  br i1 %cmp6.i, label %lor.rhs.i.can_dropped_invalid_skb.exit_crit_edge, label %lor.rhs.i.if.end34.i_crit_edge, !prof !23

lor.rhs.i.if.end34.i_crit_edge:                   ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end34.i

lor.rhs.i.can_dropped_invalid_skb.exit_crit_edge: ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %can_dropped_invalid_skb.exit

if.then14.i:                                      ; preds = %entry
  %len15.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %9 = ptrtoint ptr %len15.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len15.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 72, i32 %10)
  %cmp16.not.i = icmp eq i32 %10, 72
  br i1 %cmp16.not.i, label %lor.rhs18.i, label %if.then14.i.can_dropped_invalid_skb.exit_crit_edge, !prof !22

if.then14.i.can_dropped_invalid_skb.exit_crit_edge: ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %can_dropped_invalid_skb.exit

lor.rhs18.i:                                      ; preds = %if.then14.i
  %len19.i = getelementptr inbounds %struct.canfd_frame, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %len19.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %len19.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %12)
  %cmp21.i = icmp ugt i8 %12, 64
  br i1 %cmp21.i, label %lor.rhs18.i.can_dropped_invalid_skb.exit_crit_edge, label %lor.rhs18.i.if.end34.i_crit_edge, !prof !23

lor.rhs18.i.if.end34.i_crit_edge:                 ; preds = %lor.rhs18.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end34.i

lor.rhs18.i.can_dropped_invalid_skb.exit_crit_edge: ; preds = %lor.rhs18.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %can_dropped_invalid_skb.exit

if.end34.i:                                       ; preds = %lor.rhs18.i.if.end34.i_crit_edge, %lor.rhs.i.if.end34.i_crit_edge
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %13 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %head.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %1 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %14 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %sub.ptr.sub.i.i.i)
  %cmp.i.i = icmp ult i32 %sub.ptr.sub.i.i.i, 16
  br i1 %cmp.i.i, label %land.rhs.i.i, label %if.end37.i.i

land.rhs.i.i:                                     ; preds = %if.end34.i
  %.b70.i.i = load i1, ptr @can_skb_headroom_valid.__already_done, align 1
  br i1 %.b70.i.i, label %land.rhs.i.i.can_dropped_invalid_skb.exit_crit_edge, label %if.then.i.i, !prof !22

land.rhs.i.i.can_dropped_invalid_skb.exit_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %can_dropped_invalid_skb.exit

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @can_skb_headroom_valid.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 104, i32 noundef 9, ptr noundef null) #4
  br label %can_dropped_invalid_skb.exit

if.end37.i.i:                                     ; preds = %if.end34.i
  %ip_summed.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %15 = ptrtoint ptr %ip_summed.i.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %bf.load.i.i = load i16, ptr %ip_summed.i.i, align 8
  %16 = and i16 %bf.load.i.i, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %cmp38.i.i = icmp eq i16 %16, 0
  br i1 %cmp38.i.i, label %if.then40.i.i, label %if.end37.i.i.if.end_crit_edge

if.end37.i.i.if.end_crit_edge:                    ; preds = %if.end37.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then40.i.i:                                    ; preds = %if.end37.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %ifindex.i.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 17
  %17 = ptrtoint ptr %ifindex.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ifindex.i.i, align 4
  %19 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %14, align 8
  %20 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %head.i.i.i, align 8
  %skbcnt.i.i = getelementptr inbounds %struct.can_skb_priv, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %skbcnt.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %skbcnt.i.i, align 4
  %23 = ptrtoint ptr %ip_summed.i.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %bf.load45.i.i = load i16, ptr %ip_summed.i.i, align 8
  %bf.clear46.i.i = and i16 %bf.load45.i.i, -1537
  %bf.set.i.i = or i16 %bf.clear46.i.i, 512
  store i16 %bf.set.i.i, ptr %ip_summed.i.i, align 8
  %flags.i.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 14
  %24 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %flags.i.i, align 8
  %and.i.i = and i32 %25, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool47.not.i.i = icmp eq i32 %and.i.i, 0
  %bf.clear54.i.i = and i16 %bf.set.i.i, 7167
  %bf.set51.i.i = or i16 %bf.clear54.i.i, -24576
  %storemerge.i.i = select i1 %tobool47.not.i.i, i16 %bf.clear54.i.i, i16 %bf.set51.i.i
  %26 = ptrtoint ptr %ip_summed.i.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %storemerge.i.i, ptr %ip_summed.i.i, align 8
  %27 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %data.i, align 4
  %29 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %head.i.i.i, align 8
  %sub.ptr.lhs.cast.i76.i.i = ptrtoint ptr %28 to i32
  %sub.ptr.rhs.cast.i77.i.i = ptrtoint ptr %30 to i32
  %sub.ptr.sub.i78.i.i = sub i32 %sub.ptr.lhs.cast.i76.i.i, %sub.ptr.rhs.cast.i77.i.i
  %conv.i.i.i = trunc i32 %sub.ptr.sub.i78.i.i to i16
  %mac_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %31 = ptrtoint ptr %mac_header.i.i.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %conv.i.i.i, ptr %mac_header.i.i.i, align 2
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %32 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %conv.i.i.i, ptr %network_header.i.i.i, align 4
  %transport_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %33 = ptrtoint ptr %transport_header.i.i.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %conv.i.i.i, ptr %transport_header.i.i.i, align 2
  br label %if.end

can_dropped_invalid_skb.exit:                     ; preds = %if.then.i.i, %land.rhs.i.i.can_dropped_invalid_skb.exit_crit_edge, %lor.rhs18.i.can_dropped_invalid_skb.exit_crit_edge, %if.then14.i.can_dropped_invalid_skb.exit_crit_edge, %lor.rhs.i.can_dropped_invalid_skb.exit_crit_edge, %if.then.i.can_dropped_invalid_skb.exit_crit_edge, %entry.can_dropped_invalid_skb.exit_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #4
  %tx_dropped.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 36, i32 7
  %34 = ptrtoint ptr %tx_dropped.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %tx_dropped.i, align 4
  %inc.i = add i32 %35, 1
  store i32 %inc.i, ptr %tx_dropped.i, align 4
  br label %cleanup

if.end:                                           ; preds = %if.then40.i.i, %if.end37.i.i.if.end_crit_edge
  %call2 = tail call fastcc zeroext i1 @mcp251xfd_tx_busy(ptr noundef %add.ptr.i, ptr noundef %tx)
  br i1 %call2, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %36 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %tx, align 128
  %obj_num.i.i = getelementptr i8, ptr %ndev, i32 4106
  %38 = ptrtoint ptr %obj_num.i.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %obj_num.i.i, align 2
  %conv.i.i = zext i8 %39 to i32
  %sub.i.i = add nuw nsw i32 %conv.i.i, 255
  %and.i.i48 = and i32 %37, 255
  %idxprom.i = and i32 %and.i.i48, %sub.i.i
  %arrayidx.i = getelementptr %struct.mcp251xfd_tx_ring, ptr %tx, i32 0, i32 6, i32 %idxprom.i
  %40 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %data.i, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %41, align 8
  %and14.i = lshr i32 %43, 18
  %shr.i = and i32 %and14.i, 2047
  %and32.i = shl i32 %43, 11
  %shl.i = and i32 %and32.i, 536868864
  %or.i = or i32 %shl.i, %shr.i
  %and104.i = and i32 %43, 2047
  %44 = lshr i32 %43, 27
  %45 = and i32 %44, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool.not.i62 = icmp slt i32 %43, 0
  %id.0.i = select i1 %tobool.not.i62, i32 %or.i, i32 %and104.i
  %shl128.i = shl i32 %37, 9
  %or130.i = or i32 %45, %shl128.i
  %and132.i = and i32 %43, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and132.i)
  %tobool133.not.i = icmp eq i32 %and132.i, 0
  br i1 %tobool133.not.i, label %if.else136.i, label %if.then134.i

if.then134.i:                                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  %or135.i = or i32 %or130.i, 32
  br label %if.end138.i

if.else136.i:                                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  %len137.i = getelementptr inbounds %struct.canfd_frame, ptr %41, i32 0, i32 1
  %46 = ptrtoint ptr %len137.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %len137.i, align 4
  %call.i.i = tail call zeroext i8 @can_fd_len2dlc(i8 noundef zeroext %47) #4
  %call1.i.i = tail call zeroext i8 @can_fd_dlc2len(i8 noundef zeroext %call.i.i) #4
  %conv.i = zext i8 %call1.i.i to i32
  br label %if.end138.i

if.end138.i:                                      ; preds = %if.else136.i, %if.then134.i
  %len_sanitized.0.i = phi i32 [ 0, %if.then134.i ], [ %conv.i, %if.else136.i ]
  %flags.1.i = phi i32 [ %or135.i, %if.then134.i ], [ %or130.i, %if.else136.i ]
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %48 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %len.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 72, i32 %49)
  %cmp.i.i51 = icmp eq i32 %49, 72
  br i1 %cmp.i.i51, label %if.then140.i, label %if.else158.i

if.then140.i:                                     ; preds = %if.end138.i
  call void @__sanitizer_cov_trace_pc() #6
  %flags141.i = getelementptr inbounds %struct.canfd_frame, ptr %41, i32 0, i32 2
  %50 = ptrtoint ptr %flags141.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %flags141.i, align 1
  %52 = and i8 %51, 2
  %53 = zext i8 %52 to i32
  %54 = shl nuw nsw i32 %53, 7
  %55 = or i32 %54, %flags.1.i
  %56 = and i8 %51, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool152.not.i = icmp eq i8 %56, 0
  %flags.3.v.i = select i1 %tobool152.not.i, i32 128, i32 192
  %flags.3.i = or i32 %55, %flags.3.v.i
  %len156.i = getelementptr inbounds %struct.canfd_frame, ptr %41, i32 0, i32 1
  %57 = ptrtoint ptr %len156.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %len156.i, align 4
  %call157.i = tail call zeroext i8 @can_fd_len2dlc(i8 noundef zeroext %58) #4
  br label %do.end182.i

if.else158.i:                                     ; preds = %if.end138.i
  %ctrlmode.i = getelementptr i8, ptr %ndev, i32 2476
  %59 = ptrtoint ptr %ctrlmode.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %ctrlmode.i, align 4
  %and.i.i52 = and i32 %60, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i52)
  %tobool.not.i.i = icmp eq i32 %and.i.i52, 0
  br i1 %tobool.not.i.i, label %if.else158.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.else158.i.if.end.i.i_crit_edge:                ; preds = %if.else158.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.else158.i
  %61 = getelementptr inbounds %struct.can_frame, ptr %41, i32 0, i32 1
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %61, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %63)
  %cmp.i285.i = icmp eq i8 %63, 8
  br i1 %cmp.i285.i, label %land.lhs.true2.i.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %len8_dlc.i.i = getelementptr inbounds %struct.can_frame, ptr %41, i32 0, i32 4
  %64 = ptrtoint ptr %len8_dlc.i.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %len8_dlc.i.i, align 1
  %66 = add i8 %65, -9
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %66)
  %67 = icmp ult i8 %66, 7
  br i1 %67, label %land.lhs.true2.i.i.do.end182.i_crit_edge, label %land.lhs.true2.i.i.if.end.i.i_crit_edge

land.lhs.true2.i.i.if.end.i.i_crit_edge:          ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i.i

land.lhs.true2.i.i.do.end182.i_crit_edge:         ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end182.i

if.end.i.i:                                       ; preds = %land.lhs.true2.i.i.if.end.i.i_crit_edge, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.else158.i.if.end.i.i_crit_edge
  %68 = getelementptr inbounds %struct.can_frame, ptr %41, i32 0, i32 1
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %68, align 4
  br label %do.end182.i

do.end182.i:                                      ; preds = %if.end.i.i, %land.lhs.true2.i.i.do.end182.i_crit_edge, %if.then140.i
  %flags.4.i = phi i32 [ %flags.3.i, %if.then140.i ], [ %flags.1.i, %land.lhs.true2.i.i.do.end182.i_crit_edge ], [ %flags.1.i, %if.end.i.i ]
  %dlc.0.i = phi i8 [ %call157.i, %if.then140.i ], [ %65, %land.lhs.true2.i.i.do.end182.i_crit_edge ], [ %70, %if.end.i.i ]
  %71 = and i8 %dlc.0.i, 15
  %and186.i = zext i8 %71 to i32
  %or187.i = or i32 %flags.4.i, %and186.i
  %buf.i = getelementptr inbounds %struct.mcp251xfd_tx_obj, ptr %arrayidx.i, i32 0, i32 3
  %quirks.i = getelementptr i8, ptr %ndev, i32 7632
  %72 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %quirks.i, align 4
  %and188.i = and i32 %73, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and188.i)
  %tobool189.not.i = icmp eq i32 %and188.i, 0
  %hw_tx_obj191.i = getelementptr inbounds %struct.mcp251xfd_tx_obj, ptr %arrayidx.i, i32 0, i32 3, i32 0, i32 1
  %hw_tx_obj193.i = getelementptr inbounds %struct.mcp251xfd_tx_obj, ptr %arrayidx.i, i32 0, i32 3, i32 0, i32 0, i32 1
  %hw_tx_obj.0.i = select i1 %tobool189.not.i, ptr %hw_tx_obj193.i, ptr %hw_tx_obj191.i
  %74 = tail call i32 @llvm.bswap.i32(i32 %id.0.i) #4
  %75 = ptrtoint ptr %hw_tx_obj.0.i to i32
  call void @__asan_storeN_noabort(i32 %75, i32 4)
  store i32 %74, ptr %hw_tx_obj.0.i, align 1
  %flags196.i = getelementptr inbounds %struct.mcp251xfd_hw_tx_obj_raw, ptr %hw_tx_obj.0.i, i32 0, i32 1
  %76 = tail call i32 @llvm.bswap.i32(i32 %or187.i) #4
  %77 = ptrtoint ptr %flags196.i to i32
  call void @__asan_storeN_noabort(i32 %77, i32 4)
  store i32 %76, ptr %flags196.i, align 1
  %data197.i = getelementptr inbounds %struct.mcp251xfd_hw_tx_obj_raw, ptr %hw_tx_obj.0.i, i32 0, i32 2
  %data198.i = getelementptr inbounds %struct.canfd_frame, ptr %41, i32 0, i32 5
  %len200.i = getelementptr inbounds %struct.canfd_frame, ptr %41, i32 0, i32 1
  %78 = ptrtoint ptr %len200.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %len200.i, align 4
  %conv201.i = zext i8 %79 to i32
  %80 = call ptr @memcpy(ptr %data197.i, ptr %data198.i, i32 %conv201.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len_sanitized.0.i)
  %tobool202.not.i = icmp eq i32 %len_sanitized.0.i, 0
  br i1 %tobool202.not.i, label %do.end182.i.if.end213.i_crit_edge, label %if.then203.i

do.end182.i.if.end213.i_crit_edge:                ; preds = %do.end182.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end213.i

if.then203.i:                                     ; preds = %do.end182.i
  %81 = ptrtoint ptr %len200.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %len200.i, align 4
  %conv205.i = zext i8 %82 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %len_sanitized.0.i, i32 %conv205.i)
  %tobool206.not.i = icmp eq i32 %len_sanitized.0.i, %conv205.i
  br i1 %tobool206.not.i, label %if.then203.i.if.end213.i_crit_edge, label %if.then207.i

if.then203.i.if.end213.i_crit_edge:               ; preds = %if.then203.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end213.i

if.then207.i:                                     ; preds = %if.then203.i
  call void @__sanitizer_cov_trace_pc() #6
  %sub.i = sub nsw i32 %len_sanitized.0.i, %conv205.i
  %add.ptr.i53 = getelementptr i8, ptr %data197.i, i32 %conv205.i
  %83 = call ptr @memset(ptr %add.ptr.i53, i32 0, i32 %sub.i)
  br label %if.end213.i

if.end213.i:                                      ; preds = %if.then207.i, %if.then203.i.if.end213.i_crit_edge, %do.end182.i.if.end213.i_crit_edge
  %sub214.i = add nsw i32 %len_sanitized.0.i, -1
  %or215.i = or i32 %sub214.i, 3
  %84 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %quirks.i, align 4
  %and219.i = and i32 %85, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and219.i)
  %tobool220.not.i = icmp eq i32 %and219.i, 0
  br i1 %tobool220.not.i, label %if.end213.i.mcp251xfd_tx_obj_from_skb.exit_crit_edge, label %if.then221.i

if.end213.i.mcp251xfd_tx_obj_from_skb.exit_crit_edge: ; preds = %if.end213.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %mcp251xfd_tx_obj_from_skb.exit

if.then221.i:                                     ; preds = %if.end213.i
  call void @__sanitizer_cov_trace_pc() #6
  %86 = trunc i32 %or215.i to i16
  %conv222.i = add i16 %86, 9
  %87 = lshr exact i16 %conv222.i, 2
  %conv1.i.i.i = trunc i16 %87 to i8
  %88 = ptrtoint ptr %hw_tx_obj193.i to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %conv1.i.i.i, ptr %hw_tx_obj193.i, align 1
  %add223.i = add nsw i32 %or215.i, 12
  %call224.i = tail call zeroext i16 @mcp251xfd_crc16_compute(ptr noundef %buf.i, i32 noundef %add223.i) #4
  %add.ptr225.i = getelementptr i8, ptr %buf.i, i32 %add223.i
  %89 = ptrtoint ptr %add.ptr225.i to i32
  call void @__asan_storeN_noabort(i32 %89, i32 2)
  store i16 %call224.i, ptr %add.ptr225.i, align 1
  br label %mcp251xfd_tx_obj_from_skb.exit

mcp251xfd_tx_obj_from_skb.exit:                   ; preds = %if.then221.i, %if.end213.i.mcp251xfd_tx_obj_from_skb.exit_crit_edge
  %.sink.i = phi i32 [ 14, %if.then221.i ], [ 11, %if.end213.i.mcp251xfd_tx_obj_from_skb.exit_crit_edge ]
  %add228.i = add nsw i32 %.sink.i, %or215.i
  %len230.i = getelementptr inbounds %struct.mcp251xfd_tx_obj, ptr %arrayidx.i, i32 0, i32 1, i32 0, i32 2
  %90 = ptrtoint ptr %len230.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %add228.i, ptr %len230.i, align 8
  %91 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %tx, align 128
  %93 = ptrtoint ptr %obj_num.i.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %obj_num.i.i, align 2
  %conv.i54 = zext i8 %94 to i32
  %sub.i55 = add nuw nsw i32 %conv.i54, 255
  %inc = add i32 %92, 1
  store i32 %inc, ptr %tx, align 128
  %tail.i = getelementptr i8, ptr %ndev, i32 4100
  %95 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %tail.i, align 4
  %sub.neg.i.neg = sub i32 %inc, %96
  %.neg = trunc i32 %sub.neg.i.neg to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %94, i8 %.neg)
  %cmp = icmp eq i8 %94, %.neg
  br i1 %cmp, label %if.then10, label %mcp251xfd_tx_obj_from_skb.exit.if.end11_crit_edge

mcp251xfd_tx_obj_from_skb.exit.if.end11_crit_edge: ; preds = %mcp251xfd_tx_obj_from_skb.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end11

if.then10:                                        ; preds = %mcp251xfd_tx_obj_from_skb.exit
  call void @__sanitizer_cov_trace_pc() #6
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 103
  %97 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %98, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #4
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %mcp251xfd_tx_obj_from_skb.exit.if.end11_crit_edge
  %call12 = tail call i32 @can_skb_get_frame_len(ptr noundef %skb) #4
  %and.i = and i32 %92, 255
  %conv13 = and i32 %and.i, %sub.i55
  %call14 = tail call i32 @can_put_echo_skb(ptr noundef %skb, ptr noundef %ndev, i32 noundef %conv13, i32 noundef %call12) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool.not = icmp eq i32 %call14, 0
  br i1 %tobool.not, label %if.then15, label %if.end11.if.end17_crit_edge

if.end11.if.end17_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end17

if.then15:                                        ; preds = %if.end11
  %ndev16 = getelementptr i8, ptr %ndev, i32 2984
  %99 = ptrtoint ptr %ndev16 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %ndev16, align 8
  %_tx.i.i57 = getelementptr inbounds %struct.net_device, ptr %100, i32 0, i32 103
  %101 = ptrtoint ptr %_tx.i.i57 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %_tx.i.i57, align 128
  %dql.i.i = getelementptr inbounds %struct.netdev_queue, ptr %102, i32 0, i32 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435455, i32 %call12)
  %cmp.i.i.i = icmp ugt i32 %call12, 268435455
  br i1 %cmp.i.i.i, label %do.body2.i.i.i, label %dql_queued.exit.i.i, !prof !23

do.body2.i.i.i:                                   ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/dynamic_queue_limits.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 77, 0\0A.popsection", ""() #4, !srcloc !24
  unreachable

dql_queued.exit.i.i:                              ; preds = %if.then15
  %last_obj_cnt.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %102, i32 0, i32 15, i32 2
  %103 = ptrtoint ptr %last_obj_cnt.i.i.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %call12, ptr %last_obj_cnt.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !25
  %104 = ptrtoint ptr %dql.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %dql.i.i, align 128
  %add.i.i.i = add i32 %105, %call12
  store i32 %add.i.i.i, ptr %dql.i.i, align 128
  %adj_limit.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %102, i32 0, i32 15, i32 1
  %106 = ptrtoint ptr %adj_limit.i.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load volatile i32, ptr %adj_limit.i.i.i, align 4
  %108 = load volatile i32, ptr %dql.i.i, align 128
  %sub.i.i.i = sub i32 %107, %108
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i.i.i)
  %cmp.i.i58 = icmp sgt i32 %sub.i.i.i, -1
  br i1 %cmp.i.i58, label %dql_queued.exit.i.i.if.end17_crit_edge, label %if.end.i.i60, !prof !22

dql_queued.exit.i.i.if.end17_crit_edge:           ; preds = %dql_queued.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end17

if.end.i.i60:                                     ; preds = %dql_queued.exit.i.i
  %state.i.i59 = getelementptr inbounds %struct.netdev_queue, ptr %102, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 1, ptr noundef %state.i.i59) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !26
  %109 = ptrtoint ptr %adj_limit.i.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load volatile i32, ptr %adj_limit.i.i.i, align 4
  %111 = ptrtoint ptr %dql.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load volatile i32, ptr %dql.i.i, align 128
  %sub.i22.i.i = sub i32 %110, %112
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i22.i.i)
  %cmp7.i.i = icmp sgt i32 %sub.i22.i.i, -1
  br i1 %cmp7.i.i, label %if.then14.i.i, label %if.end.i.i60.if.end17_crit_edge, !prof !23

if.end.i.i60.if.end17_crit_edge:                  ; preds = %if.end.i.i60
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end17

if.then14.i.i:                                    ; preds = %if.end.i.i60
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %state.i.i59) #4
  br label %if.end17

if.end17:                                         ; preds = %if.then14.i.i, %if.end.i.i60.if.end17_crit_edge, %dql_queued.exit.i.i.if.end17_crit_edge, %if.end11.if.end17_crit_edge
  %spi.i = getelementptr i8, ptr %ndev, i32 3020
  %113 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %spi.i, align 4
  %call.i = tail call i32 @spi_async(ptr noundef %114, ptr noundef %arrayidx.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool19.not = icmp eq i32 %call.i, 0
  br i1 %tobool19.not, label %if.end17.cleanup_crit_edge, label %out_err

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

out_err:                                          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #6
  %ndev22 = getelementptr i8, ptr %ndev, i32 2984
  %115 = ptrtoint ptr %ndev22 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %ndev22, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %116, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.mcp251xfd_start_xmit, i32 noundef %call.i) #7
  br label %cleanup

cleanup:                                          ; preds = %out_err, %if.end17.cleanup_crit_edge, %if.end.cleanup_crit_edge, %can_dropped_invalid_skb.exit
  %retval.0 = phi i32 [ 0, %out_err ], [ 0, %can_dropped_invalid_skb.exit ], [ 16, %if.end.cleanup_crit_edge ], [ 0, %if.end17.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @mcp251xfd_tx_busy(ptr nocapture noundef readonly %priv, ptr nocapture noundef readonly %tx_ring) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %obj_num.i = getelementptr inbounds %struct.mcp251xfd_tx_ring, ptr %tx_ring, i32 0, i32 3
  %0 = ptrtoint ptr %obj_num.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %obj_num.i, align 2
  %2 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tx_ring, align 128
  %tail.i = getelementptr inbounds %struct.mcp251xfd_tx_ring, ptr %tx_ring, i32 0, i32 1
  %4 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tail.i, align 4
  %sub.neg.i.neg = sub i32 %3, %5
  %.neg = trunc i32 %sub.neg.i.neg to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %.neg)
  %cmp.not = icmp eq i8 %1, %.neg
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end:                                           ; preds = %entry
  %ndev = getelementptr inbounds %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 2
  %6 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ndev, align 8
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 103
  %8 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %9, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !27
  %10 = ptrtoint ptr %obj_num.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %obj_num.i, align 2
  %12 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tx_ring, align 128
  %14 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tail.i, align 4
  %sub.neg.i33.neg = sub i32 %13, %15
  %.neg38 = trunc i32 %sub.neg.i33.neg to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %11, i8 %.neg38)
  %cmp6 = icmp eq i8 %11, %.neg38
  br i1 %cmp6, label %do.body10, label %if.end22

do.body10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mcp251xfd_tx_busy.__UNIQUE_ID_ddebug507, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mcp251xfd_tx_busy, %return)) #4
          to label %if.then15 [label %return], !srcloc !28

if.then15:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #6
  %16 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ndev, align 8
  %18 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tx_ring, align 128
  %20 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tail.i, align 4
  %sub = sub i32 %19, %21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @mcp251xfd_tx_busy.__UNIQUE_ID_ddebug507, ptr noundef %17, ptr noundef nonnull @.str.5, i32 noundef %19, i32 noundef %21, i32 noundef %sub) #4
  br label %return

if.end22:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %22 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ndev, align 8
  %_tx.i.i35 = getelementptr inbounds %struct.net_device, ptr %23, i32 0, i32 103
  %24 = ptrtoint ptr %_tx.i.i35 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %_tx.i.i35, align 128
  %state.i.i36 = getelementptr inbounds %struct.netdev_queue, ptr %25, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i36) #4
  br label %return

return:                                           ; preds = %if.end22, %if.then15, %do.body10, %entry.return_crit_edge
  %retval.0 = phi i1 [ false, %if.end22 ], [ false, %entry.return_crit_edge ], [ true, %if.then15 ], [ true, %do.body10 ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @can_skb_get_frame_len(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @can_put_echo_skb(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @can_fd_len2dlc(i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @mcp251xfd_crc16_compute(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @can_fd_dlc2len(i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_async(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

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
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !11, !12}
!llvm.module.flags = !{!13, !14, !15, !16, !17, !18, !19, !20}
!llvm.ident = !{!21}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/can/spi/mcp251xfd/mcp251xfd-tx.c", i32 202, i32 25}
!2 = !{ptr @__func__.mcp251xfd_start_xmit, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/can/spi/mcp251xfd/mcp251xfd-tx.c", i32 202, i32 46}
!4 = distinct !{null, !5, !"__already_done", i1 false, i1 false}
!5 = !{!"../include/linux/can/skb.h", i32 104, i32 6}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/net/can/spi/mcp251xfd/mcp251xfd-tx.c", i32 152, i32 3}
!9 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.5, !8, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @mcp251xfd_tx_busy.__UNIQUE_ID_ddebug507, !8, !"__UNIQUE_ID_ddebug507", i1 false, i1 false}
!13 = !{i32 1, !"wchar_size", i32 2}
!14 = !{i32 1, !"min_enum_size", i32 4}
!15 = !{i32 8, !"branch-target-enforcement", i32 0}
!16 = !{i32 8, !"sign-return-address", i32 0}
!17 = !{i32 8, !"sign-return-address-all", i32 0}
!18 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!19 = !{i32 7, !"uwtable", i32 1}
!20 = !{i32 7, !"frame-pointer", i32 2}
!21 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!22 = !{!"branch_weights", i32 2000, i32 1}
!23 = !{!"branch_weights", i32 1, i32 2000}
!24 = !{i64 2154876881, i64 2154877381, i64 2154876918, i64 2154876974, i64 2154877008, i64 2154877032, i64 2154877073, i64 2154877094, i64 2154877122, i64 2154877156}
!25 = !{i64 2154878225}
!26 = !{i64 2155831553}
!27 = !{i64 2157666495}
!28 = !{i64 2148813483, i64 2148813488, i64 2148813501, i64 2148813545, i64 2148813579, i64 2148813600}
