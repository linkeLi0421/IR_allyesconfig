; ModuleID = '/llk/IR_all_yes/drivers/net/can/spi/mcp251xfd/mcp251xfd-rx.c_pt.bc'
source_filename = "../drivers/net/can/spi/mcp251xfd/mcp251xfd-rx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.mcp251xfd_priv = type { %struct.can_priv, %struct.can_rx_offload, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, [44 x i8], [1 x %struct.mcp251xfd_tef_ring], [1 x %struct.mcp251xfd_tx_ring], [1 x ptr], i8, %struct.mcp251xfd_ecc, %struct.mcp251xfd_regs_status, %struct.cyclecounter, %struct.timecounter, %struct.delayed_work, ptr, ptr, ptr, ptr, %struct.mcp251xfd_devtype_data, %struct.can_berr_counter, [40 x i8] }
%struct.can_priv = type { ptr, %struct.can_device_stats, ptr, ptr, %struct.can_bittiming, %struct.can_bittiming, ptr, %struct.can_tdc, i32, ptr, ptr, i32, i32, %struct.can_clock, i32, ptr, i16, ptr, [2 x i16], i32, ptr, i32, i32, i32, i32, %struct.delayed_work, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.can_device_stats = type { i32, i32, i32, i32, i32, i32 }
%struct.can_bittiming = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.can_tdc = type { i32, i32, i32 }
%struct.can_clock = type { i32 }
%struct.can_rx_offload = type { ptr, ptr, %struct.sk_buff_head, %struct.sk_buff_head, i32, i32, i32, %struct.napi_struct, i8 }
%struct.sk_buff_head = type { %union.anon.51, i32, %struct.spinlock }
%union.anon.51 = type { %struct.anon.52 }
%struct.anon.52 = type { ptr, ptr }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.mcp251xfd_tef_ring = type { i32, i32, [120 x i8], %union.mcp251xfd_write_reg_buf, [8 x %struct.spi_transfer] }
%union.mcp251xfd_write_reg_buf = type { %struct.anon.140, [122 x i8] }
%struct.anon.140 = type { %struct.mcp251xfd_buf_cmd, [4 x i8] }
%struct.mcp251xfd_buf_cmd = type { i16 }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.spi_delay = type { i16, i8 }
%struct.mcp251xfd_tx_ring = type { i32, i32, i16, i8, i8, [116 x i8], [8 x %struct.mcp251xfd_tx_obj], %union.mcp251xfd_write_reg_buf }
%struct.mcp251xfd_tx_obj = type { %struct.spi_message, [2 x %struct.spi_transfer], [8 x i8], %union.mcp251xfd_tx_obj_load_buf }
%union.mcp251xfd_tx_obj_load_buf = type { %struct.anon.143, [51 x i8] }
%struct.anon.143 = type <{ %struct.mcp251xfd_buf_cmd_crc, %struct.mcp251xfd_hw_tx_obj_raw, i16 }>
%struct.mcp251xfd_buf_cmd_crc = type <{ i16, i8 }>
%struct.mcp251xfd_hw_tx_obj_raw = type { i32, i32, [64 x i8] }
%struct.mcp251xfd_ecc = type { i32, i32 }
%struct.mcp251xfd_regs_status = type { i32 }
%struct.cyclecounter = type { ptr, i64, i32, i32 }
%struct.timecounter = type { ptr, i64, i64, i64, i64 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mcp251xfd_devtype_data = type { i32, i32 }
%struct.can_berr_counter = type { i16, i16 }
%struct.mcp251xfd_rx_ring = type { i32, i32, i16, i8, i8, i8, i8, [114 x i8], %union.mcp251xfd_write_reg_buf, [32 x %struct.spi_transfer], [0 x %struct.mcp251xfd_hw_rx_obj_canfd] }
%struct.mcp251xfd_hw_rx_obj_canfd = type { i32, i32, i32, [64 x i8] }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.139, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.139 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
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
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.sk_buff = type { %union.anon, %union.anon.2, %union.anon.110, [48 x i8], %union.anon.111, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.113, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%union.anon.2 = type { ptr }
%union.anon.110 = type { i64 }
%union.anon.111 = type { %struct.anon.112 }
%struct.anon.112 = type { i32, ptr }
%union.anon.113 = type { %struct.anon.114 }
%struct.anon.114 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.115, i32, i32, i32, i16, i16, %union.anon.117, i32, %union.anon.118, %union.anon.119, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.115 = type { i32 }
%union.anon.117 = type { i32 }
%union.anon.118 = type { i32 }
%union.anon.119 = type { i16 }
%struct.canfd_frame = type { i32, i8, i8, i8, i8, [64 x i8] }
%struct.can_frame = type { i32, %union.anon.151, i8, i8, i8, [8 x i8] }
%union.anon.151 = type { i8 }

@.str = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"RX tail of chip (%d) and ours (%d) inconsistent.\0A\00", [46 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.2 = private constant [48 x i8] c"../drivers/net/can/spi/mcp251xfd/mcp251xfd-rx.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 73, i32 7 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @.str], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mcp251xfd_handle_rxif(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  %msg.i.i = alloca %struct.spi_message, align 4
  %cfd.i.i = alloca ptr, align 4
  %fifo_ua.i.i.i.i = alloca i32, align 4
  %fifo_sta.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %rx = getelementptr inbounds %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 16
  %rx_ring_num = getelementptr inbounds %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 17
  %0 = ptrtoint ptr %rx_ring_num to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %rx_ring_num, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp25.not = icmp eq i8 %1, 0
  br i1 %cmp25.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %map_reg.i.i.i = getelementptr inbounds %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 3
  %map_rx.i.i = getelementptr inbounds %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 4
  %ndev.i.i = getelementptr inbounds %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 2
  %ctrlmode.i.i.i = getelementptr inbounds %struct.can_priv, ptr %priv, i32 0, i32 22
  %offload.i.i = getelementptr inbounds %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 1
  %spi.i = getelementptr inbounds %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 11
  %2 = getelementptr inbounds i8, ptr %msg.i.i, i32 8
  %prev.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i, i32 0, i32 1
  %resources.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10
  %prev.i2.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %n.027 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %ring.0.in26 = phi ptr [ %rx, %for.body.lr.ph ], [ %add.ptr4, %for.inc.for.body_crit_edge ]
  %3 = ptrtoint ptr %ring.0.in26 to i32
  call void @__asan_load4_noabort(i32 %3)
  %ring.0 = load ptr, ptr %ring.0.in26, align 4
  %obj.i = getelementptr inbounds %struct.mcp251xfd_rx_ring, ptr %ring.0, i32 0, i32 10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fifo_sta.i.i.i) #5
  %4 = ptrtoint ptr %fifo_sta.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %fifo_sta.i.i.i, align 4, !annotation !11
  %5 = ptrtoint ptr %map_reg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %map_reg.i.i.i, align 4
  %fifo_nr.i.i.i = getelementptr inbounds %struct.mcp251xfd_rx_ring, ptr %ring.0, i32 0, i32 4
  %7 = ptrtoint ptr %fifo_nr.i.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %fifo_nr.i.i.i, align 1
  %conv.i.i.i = zext i8 %8 to i32
  %mul.i.i.i = mul nuw nsw i32 %conv.i.i.i, 12
  %add.i.i.i = add nuw nsw i32 %mul.i.i.i, 84
  %call.i.i.i = call i32 @regmap_read(ptr noundef %6, i32 noundef %add.i.i.i, ptr noundef nonnull %fifo_sta.i.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i, label %mcp251xfd_rx_head_get_from_chip.exit.i.i

mcp251xfd_rx_head_get_from_chip.exit.i.i:         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fifo_sta.i.i.i) #5
  br label %cleanup

if.end.i.i:                                       ; preds = %for.body
  %9 = ptrtoint ptr %fifo_sta.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %fifo_sta.i.i.i, align 4
  %and.i.i.i = lshr i32 %10, 8
  %conv13.i.i.i = and i32 %and.i.i.i, 31
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fifo_sta.i.i.i) #5
  %11 = ptrtoint ptr %ring.0 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ring.0, align 128
  %obj_num.i.i = getelementptr inbounds %struct.mcp251xfd_rx_ring, ptr %ring.0, i32 0, i32 5
  %13 = ptrtoint ptr %obj_num.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %obj_num.i.i, align 4
  %conv.i.i = zext i8 %14 to i32
  %neg.i.i = sub nsw i32 0, %conv.i.i
  %and.i.i = and i32 %12, %neg.i.i
  %add.i.i = add i32 %and.i.i, %conv13.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %12)
  %cmp.not.i.i = icmp ugt i32 %add.i.i, %12
  %add7.i.i = select i1 %cmp.not.i.i, i32 0, i32 %conv.i.i
  %spec.select.i.i = add i32 %add7.i.i, %add.i.i
  %15 = ptrtoint ptr %ring.0 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %spec.select.i.i, ptr %ring.0, align 128
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fifo_ua.i.i.i.i) #5
  %16 = ptrtoint ptr %fifo_ua.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %fifo_ua.i.i.i.i, align 4, !annotation !11
  %17 = ptrtoint ptr %map_reg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %map_reg.i.i.i, align 4
  %19 = ptrtoint ptr %fifo_nr.i.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %fifo_nr.i.i.i, align 1
  %conv.i.i.i.i = zext i8 %20 to i32
  %mul.i.i.i.i = mul nuw nsw i32 %conv.i.i.i.i, 12
  %add.i.i.i.i = add nuw nsw i32 %mul.i.i.i.i, 88
  %call.i.i.i.i = call i32 @regmap_read(ptr noundef %18, i32 noundef %add.i.i.i.i, ptr noundef nonnull %fifo_ua.i.i.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i.i, label %mcp251xfd_rx_tail_get_from_chip.exit.i.i.i

mcp251xfd_rx_tail_get_from_chip.exit.i.i.i:       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fifo_ua.i.i.i.i) #5
  br label %cleanup

if.end.i.i.i:                                     ; preds = %if.end.i.i
  %base.i.i.i.i = getelementptr inbounds %struct.mcp251xfd_rx_ring, ptr %ring.0, i32 0, i32 2
  %21 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %base.i.i.i.i, align 8
  %conv1.i.i.i.i = zext i16 %22 to i32
  %23 = ptrtoint ptr %fifo_ua.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %fifo_ua.i.i.i.i, align 4
  %sub.neg.i.i.i.i = sub nsw i32 1024, %conv1.i.i.i.i
  %sub2.i.i.i.i = add i32 %sub.neg.i.i.i.i, %24
  %obj_size.i.i.i.i = getelementptr inbounds %struct.mcp251xfd_rx_ring, ptr %ring.0, i32 0, i32 6
  %25 = ptrtoint ptr %obj_size.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %obj_size.i.i.i.i, align 1
  %conv3.i.i.i.i = zext i8 %26 to i32
  %div.i.i.i.i = udiv i32 %sub2.i.i.i.i, %conv3.i.i.i.i
  %conv4.i.i.i.i = trunc i32 %div.i.i.i.i to i8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fifo_ua.i.i.i.i) #5
  %tail.i.i.i.i = getelementptr inbounds %struct.mcp251xfd_rx_ring, ptr %ring.0, i32 0, i32 1
  %27 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tail.i.i.i.i, align 4
  %29 = ptrtoint ptr %obj_num.i.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %obj_num.i.i, align 4
  %conv.i14.i.i.i = zext i8 %30 to i32
  %sub.i.i.i.i = add nuw nsw i32 %conv.i14.i.i.i, 255
  %and.i.i.i.i = and i32 %sub.i.i.i.i, %28
  %conv1.i15.i.i.i = trunc i32 %and.i.i.i.i to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %conv4.i.i.i.i, i8 %conv1.i15.i.i.i)
  %cmp.not.i.i.i = icmp eq i8 %conv4.i.i.i.i, %conv1.i15.i.i.i
  br i1 %cmp.not.i.i.i, label %while.cond.preheader.i, label %if.then4.i.i.i

while.cond.preheader.i:                           ; preds = %if.end.i.i.i
  %31 = ptrtoint ptr %ring.0 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %ring.0, align 128
  %sub.i.i80.i = sub i32 %32, %28
  %conv.i.i5381.i = trunc i32 %sub.i.i80.i to i8
  %sub.i86.i = sub i8 %30, %conv4.i.i.i.i
  %33 = call i8 @llvm.umin.i8(i8 %sub.i86.i, i8 %conv.i.i5381.i) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool2.not87.i = icmp eq i8 %33, 0
  br i1 %tobool2.not87.i, label %while.cond.preheader.i.for.inc_crit_edge, label %while.body.lr.ph.i

while.cond.preheader.i.for.inc_crit_edge:         ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

while.body.lr.ph.i:                               ; preds = %while.cond.preheader.i
  %uinc_xfer.i = getelementptr inbounds %struct.mcp251xfd_rx_ring, ptr %ring.0, i32 0, i32 9
  br label %while.body.i

if.then4.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv2.i.i.i = and i32 %and.i.i.i.i, 255
  %conv.i23.i.i = and i32 %div.i.i.i.i, 255
  %34 = ptrtoint ptr %ndev.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ndev.i.i, align 8
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %35, ptr noundef nonnull @.str, i32 noundef %conv.i23.i.i, i32 noundef %conv2.i.i.i) #8
  br label %cleanup

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %36 = phi i8 [ %33, %while.body.lr.ph.i ], [ %109, %cleanup.i.while.body.i_crit_edge ]
  %and.i.i5588.i = phi i32 [ %and.i.i.i.i, %while.body.lr.ph.i ], [ %and.i.i55.i, %cleanup.i.while.body.i_crit_edge ]
  %37 = ptrtoint ptr %map_rx.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %map_rx.i.i, align 16
  %call.i.i = call i32 @regmap_get_val_bytes(ptr noundef %38) #5
  %39 = ptrtoint ptr %map_rx.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %map_rx.i.i, align 16
  %41 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %base.i.i.i.i, align 8
  %43 = ptrtoint ptr %obj_size.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %obj_size.i.i.i.i, align 1
  %conv1.i.i60.i = zext i8 %44 to i16
  %45 = trunc i32 %and.i.i5588.i to i16
  %conv2.i.i61.i = and i16 %45, 255
  %mul.i.i62.i = mul nuw i16 %conv2.i.i61.i, %conv1.i.i60.i
  %add.i.i63.i = add i16 %mul.i.i62.i, %42
  %conv.i64.i = zext i16 %add.i.i63.i to i32
  %conv3.i.i = zext i8 %36 to i32
  %conv4.i.i = zext i8 %44 to i32
  %mul.i.i = mul nuw nsw i32 %conv4.i.i, %conv3.i.i
  %div.i.i = sdiv i32 %mul.i.i, %call.i.i
  %call5.i.i = call i32 @regmap_bulk_read(ptr noundef %40, i32 noundef %conv.i64.i, ptr noundef %obj.i, i32 noundef %div.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool5.not.i = icmp eq i32 %call5.i.i, 0
  br i1 %tobool5.not.i, label %while.body.i.for.body.i_crit_edge, label %while.body.i.cleanup_crit_edge

while.body.i.cleanup_crit_edge:                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

while.body.i.for.body.i_crit_edge:                ; preds = %while.body.i
  br label %for.body.i

for.body.i:                                       ; preds = %mcp251xfd_handle_rxif_one.exit.i.for.body.i_crit_edge, %while.body.i.for.body.i_crit_edge
  %i.079.i = phi i32 [ %inc.i, %mcp251xfd_handle_rxif_one.exit.i.for.body.i_crit_edge ], [ 0, %while.body.i.for.body.i_crit_edge ]
  %46 = ptrtoint ptr %obj_size.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %obj_size.i.i.i.i, align 1
  %conv9.i = zext i8 %47 to i32
  %mul.i = mul i32 %i.079.i, %conv9.i
  %add.ptr.i = getelementptr i8, ptr %obj.i, i32 %mul.i
  %48 = ptrtoint ptr %ndev.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ndev.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cfd.i.i) #5
  %50 = ptrtoint ptr %cfd.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr inttoptr (i32 -1 to ptr), ptr %cfd.i.i, align 4, !annotation !11
  %flags.i.i = getelementptr inbounds %struct.mcp251xfd_hw_rx_obj_canfd, ptr %add.ptr.i, i32 0, i32 1
  %51 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %flags.i.i, align 4
  %and.i65.i = and i32 %52, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i65.i)
  %tobool.not.i.i = icmp eq i32 %and.i65.i, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i66.i = call ptr @alloc_canfd_skb(ptr noundef %49, ptr noundef nonnull %cfd.i.i) #5
  br label %if.end.i67.i

if.else.i.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i = call ptr @alloc_can_skb(ptr noundef %49, ptr noundef nonnull %cfd.i.i) #5
  br label %if.end.i67.i

if.end.i67.i:                                     ; preds = %if.else.i.i, %if.then.i.i
  %skb.0.i.i = phi ptr [ %call.i66.i, %if.then.i.i ], [ %call4.i.i, %if.else.i.i ]
  %tobool5.not.i.i = icmp eq ptr %skb.0.i.i, null
  br i1 %tobool5.not.i.i, label %if.then6.i.i, label %if.end7.i.i

if.then6.i.i:                                     ; preds = %if.end.i67.i
  call void @__sanitizer_cov_trace_pc() #7
  %rx_dropped.i.i = getelementptr inbounds %struct.net_device, ptr %49, i32 0, i32 36, i32 6
  br label %cleanup.sink.split.i.i

if.end7.i.i:                                      ; preds = %if.end.i67.i
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0.i.i, i32 0, i32 19
  %53 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %data.i.i.i, align 4
  %55 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %flags.i.i, align 4
  %and.i.i68.i = and i32 %56, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i68.i)
  %tobool.not.i.i69.i = icmp eq i32 %and.i.i68.i, 0
  %57 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %add.ptr.i, align 4
  br i1 %tobool.not.i.i69.i, label %do.end92.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %and13.i.i.i = lshr i32 %58, 11
  %shr.i.i.i = and i32 %and13.i.i.i, 262143
  %and31.i.i.i = shl i32 %58, 18
  %shl75.i.i.i = and i32 %and31.i.i.i, 536608768
  %or.i.i.i = or i32 %shr.i.i.i, %shl75.i.i.i
  %or77.i.i.i = or i32 %or.i.i.i, -2147483648
  br label %do.end113.i.i.i

do.end92.i.i.i:                                   ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %and95.i.i.i = and i32 %58, 2047
  br label %do.end113.i.i.i

do.end113.i.i.i:                                  ; preds = %do.end92.i.i.i, %if.then.i.i.i
  %storemerge.i.i.i = phi i32 [ %and95.i.i.i, %do.end92.i.i.i ], [ %or77.i.i.i, %if.then.i.i.i ]
  %59 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %storemerge.i.i.i, ptr %54, align 8
  %60 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %flags.i.i, align 4
  %62 = trunc i32 %61 to i8
  %conv.i.i70.i = and i8 %62, 15
  %and119.i.i.i = and i32 %61, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and119.i.i.i)
  %tobool120.not.i.i.i = icmp eq i32 %and119.i.i.i, 0
  br i1 %tobool120.not.i.i.i, label %if.else140.i.i.i, label %if.then121.i.i.i

if.then121.i.i.i:                                 ; preds = %do.end113.i.i.i
  %and123.i.i.i = and i32 %61, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and123.i.i.i)
  %tobool124.not.i.i.i = icmp eq i32 %and123.i.i.i, 0
  br i1 %tobool124.not.i.i.i, label %if.then121.i.i.i.if.end130.i.i.i_crit_edge, label %if.then125.i.i.i

if.then121.i.i.i.if.end130.i.i.i_crit_edge:       ; preds = %if.then121.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end130.i.i.i

if.then125.i.i.i:                                 ; preds = %if.then121.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %flags126.i.i.i = getelementptr inbounds %struct.canfd_frame, ptr %54, i32 0, i32 2
  %63 = ptrtoint ptr %flags126.i.i.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %flags126.i.i.i, align 1
  %65 = or i8 %64, 2
  store i8 %65, ptr %flags126.i.i.i, align 1
  br label %if.end130.i.i.i

if.end130.i.i.i:                                  ; preds = %if.then125.i.i.i, %if.then121.i.i.i.if.end130.i.i.i_crit_edge
  %66 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %flags.i.i, align 4
  %and132.i.i.i = and i32 %67, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and132.i.i.i)
  %tobool133.not.i.i.i = icmp eq i32 %and132.i.i.i, 0
  br i1 %tobool133.not.i.i.i, label %if.end130.i.i.i.if.end139.i.i.i_crit_edge, label %if.then134.i.i.i

if.end130.i.i.i.if.end139.i.i.i_crit_edge:        ; preds = %if.end130.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end139.i.i.i

if.then134.i.i.i:                                 ; preds = %if.end130.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %flags135.i.i.i = getelementptr inbounds %struct.canfd_frame, ptr %54, i32 0, i32 2
  %68 = ptrtoint ptr %flags135.i.i.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %flags135.i.i.i, align 1
  %70 = or i8 %69, 1
  store i8 %70, ptr %flags135.i.i.i, align 1
  br label %if.end139.i.i.i

if.end139.i.i.i:                                  ; preds = %if.then134.i.i.i, %if.end130.i.i.i.if.end139.i.i.i_crit_edge
  %call.i.i71.i = call zeroext i8 @can_fd_dlc2len(i8 noundef zeroext %conv.i.i70.i) #5
  %len.i.i.i = getelementptr inbounds %struct.canfd_frame, ptr %54, i32 0, i32 1
  %71 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %call.i.i71.i, ptr %len.i.i.i, align 4
  br label %if.end148.i.i.i

if.else140.i.i.i:                                 ; preds = %do.end113.i.i.i
  %and142.i.i.i = and i32 %61, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and142.i.i.i)
  %tobool143.not.i.i.i = icmp eq i32 %and142.i.i.i, 0
  br i1 %tobool143.not.i.i.i, label %if.else140.i.i.i.if.end147.i.i.i_crit_edge, label %if.then144.i.i.i

if.else140.i.i.i.if.end147.i.i.i_crit_edge:       ; preds = %if.else140.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end147.i.i.i

if.then144.i.i.i:                                 ; preds = %if.else140.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %or146.i.i.i = or i32 %storemerge.i.i.i, 1073741824
  %72 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %or146.i.i.i, ptr %54, align 8
  br label %if.end147.i.i.i

if.end147.i.i.i:                                  ; preds = %if.then144.i.i.i, %if.else140.i.i.i.if.end147.i.i.i_crit_edge
  %73 = ptrtoint ptr %ctrlmode.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %ctrlmode.i.i.i, align 4
  %and.i.i.i72.i = and i32 %74, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i72.i)
  %tobool.not.i.i.i73.i = icmp ne i32 %and.i.i.i72.i, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %conv.i.i70.i)
  %cmp.i.i.i.i = icmp ugt i8 %conv.i.i70.i, 8
  %or.cond.i.i.i.i = and i1 %cmp.i.i.i.i, %tobool.not.i.i.i73.i
  br i1 %or.cond.i.i.i.i, label %if.then.i.i.i.i, label %if.end147.i.i.i.can_frame_set_cc_len.exit.i.i.i_crit_edge

if.end147.i.i.i.can_frame_set_cc_len.exit.i.i.i_crit_edge: ; preds = %if.end147.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %can_frame_set_cc_len.exit.i.i.i

if.then.i.i.i.i:                                  ; preds = %if.end147.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %len8_dlc.i.i.i.i = getelementptr inbounds %struct.can_frame, ptr %54, i32 0, i32 4
  %75 = ptrtoint ptr %len8_dlc.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %conv.i.i70.i, ptr %len8_dlc.i.i.i.i, align 1
  br label %can_frame_set_cc_len.exit.i.i.i

can_frame_set_cc_len.exit.i.i.i:                  ; preds = %if.then.i.i.i.i, %if.end147.i.i.i.can_frame_set_cc_len.exit.i.i.i_crit_edge
  %76 = call i8 @llvm.umin.i8(i8 %conv.i.i70.i, i8 8) #5
  %77 = getelementptr inbounds %struct.can_frame, ptr %54, i32 0, i32 1
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %76, ptr %77, align 4
  br label %if.end148.i.i.i

if.end148.i.i.i:                                  ; preds = %can_frame_set_cc_len.exit.i.i.i, %if.end139.i.i.i
  %79 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %flags.i.i, align 4
  %and150.i.i.i = and i32 %80, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and150.i.i.i)
  %tobool151.not.i.i.i = icmp eq i32 %and150.i.i.i, 0
  br i1 %tobool151.not.i.i.i, label %if.then152.i.i.i, label %if.end148.i.i.i.mcp251xfd_hw_rx_obj_to_skb.exit.i.i_crit_edge

if.end148.i.i.i.mcp251xfd_hw_rx_obj_to_skb.exit.i.i_crit_edge: ; preds = %if.end148.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mcp251xfd_hw_rx_obj_to_skb.exit.i.i

if.then152.i.i.i:                                 ; preds = %if.end148.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %data153.i.i.i = getelementptr inbounds %struct.canfd_frame, ptr %54, i32 0, i32 5
  %data154.i.i.i = getelementptr inbounds %struct.mcp251xfd_hw_rx_obj_canfd, ptr %add.ptr.i, i32 0, i32 3
  %len156.i.i.i = getelementptr inbounds %struct.canfd_frame, ptr %54, i32 0, i32 1
  %81 = ptrtoint ptr %len156.i.i.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %len156.i.i.i, align 4
  %conv157.i.i.i = zext i8 %82 to i32
  %83 = call ptr @memcpy(ptr %data153.i.i.i, ptr %data154.i.i.i, i32 %conv157.i.i.i)
  br label %mcp251xfd_hw_rx_obj_to_skb.exit.i.i

mcp251xfd_hw_rx_obj_to_skb.exit.i.i:              ; preds = %if.then152.i.i.i, %if.end148.i.i.i.mcp251xfd_hw_rx_obj_to_skb.exit.i.i_crit_edge
  %ts.i.i.i = getelementptr inbounds %struct.mcp251xfd_hw_rx_obj_canfd, ptr %add.ptr.i, i32 0, i32 2
  %84 = ptrtoint ptr %ts.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %ts.i.i.i, align 4
  call void @mcp251xfd_skb_set_timestamp(ptr noundef %priv, ptr noundef nonnull %skb.0.i.i, i32 noundef %85) #5
  %86 = ptrtoint ptr %ts.i.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %ts.i.i.i, align 4
  %call8.i.i = call i32 @can_rx_offload_queue_sorted(ptr noundef %offload.i.i, ptr noundef nonnull %skb.0.i.i, i32 noundef %87) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.i)
  %tobool9.not.i.i = icmp eq i32 %call8.i.i, 0
  br i1 %tobool9.not.i.i, label %mcp251xfd_hw_rx_obj_to_skb.exit.i.i.mcp251xfd_handle_rxif_one.exit.i_crit_edge, label %if.then10.i.i

mcp251xfd_hw_rx_obj_to_skb.exit.i.i.mcp251xfd_handle_rxif_one.exit.i_crit_edge: ; preds = %mcp251xfd_hw_rx_obj_to_skb.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mcp251xfd_handle_rxif_one.exit.i

if.then10.i.i:                                    ; preds = %mcp251xfd_hw_rx_obj_to_skb.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %rx_fifo_errors.i.i = getelementptr inbounds %struct.net_device, ptr %49, i32 0, i32 36, i32 14
  br label %cleanup.sink.split.i.i

cleanup.sink.split.i.i:                           ; preds = %if.then10.i.i, %if.then6.i.i
  %rx_fifo_errors.sink1.i.i = phi ptr [ %rx_fifo_errors.i.i, %if.then10.i.i ], [ %rx_dropped.i.i, %if.then6.i.i ]
  %88 = ptrtoint ptr %rx_fifo_errors.sink1.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %rx_fifo_errors.sink1.i.i, align 4
  %inc11.i.i = add i32 %89, 1
  store i32 %inc11.i.i, ptr %rx_fifo_errors.sink1.i.i, align 4
  br label %mcp251xfd_handle_rxif_one.exit.i

mcp251xfd_handle_rxif_one.exit.i:                 ; preds = %cleanup.sink.split.i.i, %mcp251xfd_hw_rx_obj_to_skb.exit.i.i.mcp251xfd_handle_rxif_one.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cfd.i.i) #5
  %inc.i = add nuw nsw i32 %i.079.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv3.i.i
  br i1 %exitcond.not.i, label %for.end.i, label %mcp251xfd_handle_rxif_one.exit.i.for.body.i_crit_edge

mcp251xfd_handle_rxif_one.exit.i.for.body.i_crit_edge: ; preds = %mcp251xfd_handle_rxif_one.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.end.i:                                        ; preds = %mcp251xfd_handle_rxif_one.exit.i
  %sub.i = sub nsw i32 32, %conv3.i.i
  %90 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %spi.i, align 4
  %add.ptr16.i = getelementptr %struct.spi_transfer, ptr %uinc_xfer.i, i32 %sub.i
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i) #5
  %92 = call ptr @memset(ptr %2, i32 0, i32 40)
  %93 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store volatile ptr %msg.i.i, ptr %msg.i.i, align 4
  %94 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %msg.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %95 = ptrtoint ptr %resources.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store volatile ptr %resources.i.i.i.i.i, ptr %resources.i.i.i.i.i, align 4
  %96 = ptrtoint ptr %prev.i2.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %resources.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i, align 4
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %spi_message_add_tail.exit.i.i.i.for.body.i.i.i_crit_edge, %for.end.i
  %i.05.i.i.i = phi i32 [ %inc.i.i.i, %spi_message_add_tail.exit.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %for.end.i ]
  %transfer_list.i.i.i.i = getelementptr %struct.spi_transfer, ptr %add.ptr16.i, i32 %i.05.i.i.i, i32 18
  %97 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %prev.i.i.i.i.i.i, align 4
  %call.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i, ptr noundef %98, ptr noundef nonnull %msg.i.i) #5
  br i1 %call.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, label %for.body.i.i.i.spi_message_add_tail.exit.i.i.i_crit_edge

for.body.i.i.i.spi_message_add_tail.exit.i.i.i_crit_edge: ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %spi_message_add_tail.exit.i.i.i

if.end.i.i.i.i.i.i:                               ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %99 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %transfer_list.i.i.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %100 = ptrtoint ptr %transfer_list.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %msg.i.i, ptr %transfer_list.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i = getelementptr %struct.spi_transfer, ptr %add.ptr16.i, i32 %i.05.i.i.i, i32 18, i32 1
  %101 = ptrtoint ptr %prev3.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %98, ptr %prev3.i.i.i.i.i.i, align 4
  %102 = ptrtoint ptr %98 to i32
  call void @__asan_store4_noabort(i32 %102)
  store volatile ptr %transfer_list.i.i.i.i, ptr %98, align 4
  br label %spi_message_add_tail.exit.i.i.i

spi_message_add_tail.exit.i.i.i:                  ; preds = %if.end.i.i.i.i.i.i, %for.body.i.i.i.spi_message_add_tail.exit.i.i.i_crit_edge
  %inc.i.i.i = add nuw i32 %i.05.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, %conv3.i.i
  br i1 %exitcond.not.i.i.i, label %spi_sync_transfer.exit.i, label %spi_message_add_tail.exit.i.i.i.for.body.i.i.i_crit_edge

spi_message_add_tail.exit.i.i.i.for.body.i.i.i_crit_edge: ; preds = %spi_message_add_tail.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i.i

spi_sync_transfer.exit.i:                         ; preds = %spi_message_add_tail.exit.i.i.i
  %call.i74.i = call i32 @spi_sync(ptr noundef %91, ptr noundef nonnull %msg.i.i) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i74.i)
  %tobool19.not.i = icmp eq i32 %call.i74.i, 0
  br i1 %tobool19.not.i, label %cleanup.i, label %spi_sync_transfer.exit.i.cleanup_crit_edge

spi_sync_transfer.exit.i.cleanup_crit_edge:       ; preds = %spi_sync_transfer.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup.i:                                        ; preds = %spi_sync_transfer.exit.i
  %103 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %tail.i.i.i.i, align 4
  %add.i = add i32 %104, %conv3.i.i
  store i32 %add.i, ptr %tail.i.i.i.i, align 4
  %105 = ptrtoint ptr %ring.0 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %ring.0, align 128
  %sub.i.i.i = sub i32 %106, %add.i
  %conv.i.i53.i = trunc i32 %sub.i.i.i to i8
  %107 = ptrtoint ptr %obj_num.i.i to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %obj_num.i.i, align 4
  %conv.i15.i.i = zext i8 %108 to i32
  %sub.i16.i.i = add nuw nsw i32 %conv.i15.i.i, 255
  %and.i.i55.i = and i32 %sub.i16.i.i, %add.i
  %conv1.i.i.i = trunc i32 %and.i.i55.i to i8
  %sub.i.i = sub i8 %108, %conv1.i.i.i
  %109 = call i8 @llvm.umin.i8(i8 %sub.i.i, i8 %conv.i.i53.i) #5
  %tobool2.not.i = icmp eq i8 %109, 0
  br i1 %tobool2.not.i, label %cleanup.i.for.inc_crit_edge, label %cleanup.i.while.body.i_crit_edge

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

cleanup.i.for.inc_crit_edge:                      ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

for.inc:                                          ; preds = %cleanup.i.for.inc_crit_edge, %while.cond.preheader.i.for.inc_crit_edge
  %inc = add nuw nsw i32 %n.027, 1
  %add.ptr4 = getelementptr ptr, ptr %rx, i32 %inc
  %110 = ptrtoint ptr %rx_ring_num to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %rx_ring_num, align 4
  %conv = zext i8 %111 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %spi_sync_transfer.exit.i.cleanup_crit_edge, %while.body.i.cleanup_crit_edge, %if.then4.i.i.i, %mcp251xfd_rx_tail_get_from_chip.exit.i.i.i, %mcp251xfd_rx_head_get_from_chip.exit.i.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i.i.i, %mcp251xfd_rx_head_get_from_chip.exit.i.i ], [ -84, %if.then4.i.i.i ], [ %call.i.i.i.i, %mcp251xfd_rx_tail_get_from_chip.exit.i.i.i ], [ 0, %entry.cleanup_crit_edge ], [ %call5.i.i, %while.body.i.cleanup_crit_edge ], [ %call.i74.i, %spi_sync_transfer.exit.i.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_get_val_bytes(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_canfd_skb(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_can_skb(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @can_rx_offload_queue_sorted(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @can_fd_dlc2len(i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mcp251xfd_skb_set_timestamp(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
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

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/can/spi/mcp251xfd/mcp251xfd-rx.c", i32 73, i32 7}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!11 = !{!"auto-init"}
