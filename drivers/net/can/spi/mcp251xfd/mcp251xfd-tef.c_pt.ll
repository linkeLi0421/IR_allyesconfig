; ModuleID = '/llk/IR_all_yes/drivers/net/can/spi/mcp251xfd/mcp251xfd-tef.c_pt.bc'
source_filename = "../drivers/net/can/spi/mcp251xfd/mcp251xfd-tef.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.mcp251xfd_hw_tef_obj = type { i32, i32, i32 }
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
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }

@.str = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"Trying to read too many TEF objects (max=%d, offset=%d, len=%d).\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Transmit Event FIFO buffer overflow.\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [96 x i8], [32 x i8] } { [96 x i8] c"Transmit Event FIFO buffer %s. (seq=0x%08x, tef_tail=0x%08x, tef_head=0x%08x, tx_head=0x%08x).\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"full\00", [27 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"not empty\00", [22 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"empty\00", [26 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"TEF tail of chip (0x%02x) and ours (0x%08x) inconsistent.\0A\00", [37 x i8] zeroinitializer }, align 32
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 160, i32 7 }
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 71, i32 7 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 76, i32 7 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 78, i32 7 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 79, i32 7 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 79, i32 21 }
@___asan_gen_.25 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.26 = private constant [49 x i8] c"../drivers/net/can/spi/mcp251xfd/mcp251xfd-tef.c\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 50, i32 7 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mcp251xfd_handle_tefif(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  %msg.i = alloca %struct.spi_message, align 4
  %tef_sta.i.i = alloca i32, align 4
  %tef_ua.i.i.i = alloca i32, align 4
  %fifo_sta.i.i = alloca i32, align 4
  %hw_tef_obj = alloca [8 x %struct.mcp251xfd_hw_tef_obj], align 4
  %frame_len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %hw_tef_obj) #6
  %0 = call ptr @memset(ptr %hw_tef_obj, i32 255, i32 96)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fifo_sta.i.i) #6
  %1 = ptrtoint ptr %fifo_sta.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %fifo_sta.i.i, align 4, !annotation !23
  %map_reg.i.i = getelementptr inbounds %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 3
  %2 = ptrtoint ptr %map_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %map_reg.i.i, align 4
  %call.i.i = call i32 @regmap_read(ptr noundef %3, i32 noundef 96, ptr noundef nonnull %fifo_sta.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i, label %mcp251xfd_tx_tail_get_from_chip.exit.i

mcp251xfd_tx_tail_get_from_chip.exit.i:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fifo_sta.i.i) #6
  br label %cleanup67

if.end.i:                                         ; preds = %entry
  %tx.i = getelementptr inbounds %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 15
  %4 = ptrtoint ptr %fifo_sta.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fifo_sta.i.i, align 4
  %and.i.i = lshr i32 %5, 8
  %conv.i.i = and i32 %and.i.i, 31
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fifo_sta.i.i) #6
  %tef.i = getelementptr inbounds %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 14
  %6 = ptrtoint ptr %tef.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tef.i, align 128
  %obj_num.i = getelementptr inbounds %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 15, i32 0, i32 3
  %8 = ptrtoint ptr %obj_num.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %obj_num.i, align 2
  %conv.i = zext i8 %9 to i32
  %neg.i = sub nsw i32 0, %conv.i
  %and.i = and i32 %7, %neg.i
  %add.i = add i32 %and.i, %conv.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %7)
  %cmp.not.i = icmp ugt i32 %add.i, %7
  %add10.i = select i1 %cmp.not.i, i32 0, i32 %conv.i
  %spec.select.i = add i32 %add10.i, %add.i
  %10 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tx.i, align 128
  %12 = call i32 @llvm.umin.i32(i32 %spec.select.i, i32 %11) #6
  %13 = ptrtoint ptr %tef.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %tef.i, align 128
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tef_ua.i.i.i) #6
  %14 = ptrtoint ptr %tef_ua.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %tef_ua.i.i.i, align 4, !annotation !23
  %15 = ptrtoint ptr %map_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %map_reg.i.i, align 4
  %call.i.i.i = call i32 @regmap_read(ptr noundef %16, i32 noundef 72, ptr noundef nonnull %tef_ua.i.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i, label %mcp251xfd_tef_tail_get_from_chip.exit.i.i

mcp251xfd_tef_tail_get_from_chip.exit.i.i:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tef_ua.i.i.i) #6
  br label %cleanup67

if.end.i.i:                                       ; preds = %if.end.i
  %17 = ptrtoint ptr %tef_ua.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tef_ua.i.i.i, align 4
  %div.i.i.i = udiv i32 %18, 12
  %conv.i.i.i = trunc i32 %div.i.i.i to i8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tef_ua.i.i.i) #6
  %tail.i.i.i = getelementptr inbounds %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 14, i32 0, i32 1
  %19 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tail.i.i.i, align 4
  %21 = ptrtoint ptr %obj_num.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %obj_num.i, align 2
  %conv.i14.i.i = zext i8 %22 to i32
  %sub.i.i.i = add nuw nsw i32 %conv.i14.i.i, 255
  %and.i.i.i = and i32 %sub.i.i.i, %20
  %conv2.i.i.i = trunc i32 %and.i.i.i to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %conv.i.i.i, i8 %conv2.i.i.i)
  %cmp.not.i.i = icmp eq i8 %conv.i.i.i, %conv2.i.i.i
  br i1 %cmp.not.i.i, label %if.end, label %if.then4.i.i

if.then4.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv2.i.i = and i32 %and.i.i.i, 255
  %conv.i34.i = and i32 %div.i.i.i, 255
  %ndev.i.i = getelementptr inbounds %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 2
  %23 = ptrtoint ptr %ndev.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ndev.i.i, align 8
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %24, ptr noundef nonnull @.str.6, i32 noundef %conv.i34.i, i32 noundef %conv2.i.i) #9
  br label %cleanup67

if.end:                                           ; preds = %if.end.i.i
  %25 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tail.i.i.i, align 4
  %27 = ptrtoint ptr %obj_num.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %obj_num.i, align 2
  %conv.i116 = zext i8 %28 to i32
  %sub.i = add nuw nsw i32 %conv.i116, 255
  %and.i117 = and i32 %sub.i, %26
  %conv2.i = trunc i32 %and.i117 to i8
  %29 = ptrtoint ptr %tef.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %tef.i, align 128
  %sub.i120 = sub i32 %30, %26
  %conv.i121 = trunc i32 %sub.i120 to i8
  %sub.i126 = sub i8 %28, %conv2.i
  %31 = call i8 @llvm.umin.i8(i8 %sub.i126, i8 %conv.i121) #6
  %map_rx.i = getelementptr inbounds %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 4
  %32 = ptrtoint ptr %map_rx.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %map_rx.i, align 16
  %call.i = call i32 @regmap_get_val_bytes(ptr noundef %33) #6
  %conv.i127 = and i32 %and.i117, 255
  %34 = ptrtoint ptr %obj_num.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %obj_num.i, align 2
  %conv1.i = zext i8 %35 to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %35, i8 %conv2.i)
  %cmp.i = icmp ult i8 %35, %conv2.i
  %.pre.i = zext i8 %31 to i32
  br i1 %cmp.i, label %if.end.mcp251xfd_tef_obj_read.exit.thread_crit_edge, label %lor.lhs.false.i

if.end.mcp251xfd_tef_obj_read.exit.thread_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %mcp251xfd_tef_obj_read.exit.thread

lor.lhs.false.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_cmp1(i8 %35, i8 %31)
  %cmp6.i = icmp ult i8 %35, %31
  %add.i129 = add nuw nsw i32 %conv.i127, %.pre.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i129, i32 %conv1.i)
  %cmp13.i = icmp ugt i32 %add.i129, %conv1.i
  %or.cond.i = select i1 %cmp6.i, i1 true, i1 %cmp13.i
  br i1 %or.cond.i, label %lor.lhs.false.i.mcp251xfd_tef_obj_read.exit.thread_crit_edge, label %mcp251xfd_tef_obj_read.exit

lor.lhs.false.i.mcp251xfd_tef_obj_read.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mcp251xfd_tef_obj_read.exit.thread

mcp251xfd_tef_obj_read.exit.thread:               ; preds = %lor.lhs.false.i.mcp251xfd_tef_obj_read.exit.thread_crit_edge, %if.end.mcp251xfd_tef_obj_read.exit.thread_crit_edge
  %ndev.i = getelementptr inbounds %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 2
  %36 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ndev.i, align 8
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %37, ptr noundef nonnull @.str, i32 noundef %conv1.i, i32 noundef %conv.i127, i32 noundef %.pre.i) #9
  br label %cleanup67

mcp251xfd_tef_obj_read.exit:                      ; preds = %lor.lhs.false.i
  %38 = ptrtoint ptr %map_rx.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %map_rx.i, align 16
  %mul.i.i = mul nuw nsw i32 %conv.i127, 12
  %add.i.i = add nuw nsw i32 %mul.i.i, 1024
  %div.i = udiv i32 12, %call.i
  %mul.i = mul nuw nsw i32 %div.i, %.pre.i
  %call23.i = call i32 @regmap_bulk_read(ptr noundef %39, i32 noundef %add.i.i, ptr noundef nonnull %hw_tef_obj, i32 noundef %mul.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %tobool5.not = icmp eq i32 %call23.i, 0
  br i1 %tobool5.not, label %if.end7, label %mcp251xfd_tef_obj_read.exit.cleanup67_crit_edge

mcp251xfd_tef_obj_read.exit.cleanup67_crit_edge:  ; preds = %mcp251xfd_tef_obj_read.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup67

if.end7:                                          ; preds = %mcp251xfd_tef_obj_read.exit
  %conv8 = and i32 %sub.i120, 255
  call void @__sanitizer_cov_trace_cmp1(i8 %sub.i126, i8 %conv.i121)
  %cmp = icmp ult i8 %sub.i126, %conv.i121
  br i1 %cmp, label %if.then10, label %if.end7.if.end18_crit_edge

if.end7.if.end18_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

if.then10:                                        ; preds = %if.end7
  %sub = sub i8 %conv.i121, %31
  %40 = ptrtoint ptr %map_rx.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %map_rx.i, align 16
  %call.i133 = call i32 @regmap_get_val_bytes(ptr noundef %41) #6
  %42 = ptrtoint ptr %obj_num.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %obj_num.i, align 2
  %.pre.i136 = zext i8 %sub to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %sub, i8 %43)
  %44 = icmp ugt i8 %sub, %43
  br i1 %44, label %mcp251xfd_tef_obj_read.exit148.thread, label %mcp251xfd_tef_obj_read.exit148

mcp251xfd_tef_obj_read.exit148.thread:            ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #8
  %conv1.i135 = zext i8 %43 to i32
  %ndev.i141 = getelementptr inbounds %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 2
  %45 = ptrtoint ptr %ndev.i141 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ndev.i141, align 8
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %46, ptr noundef nonnull @.str, i32 noundef %conv1.i135, i32 noundef 0, i32 noundef %.pre.i136) #9
  br label %cleanup67

mcp251xfd_tef_obj_read.exit148:                   ; preds = %if.then10
  %arrayidx = getelementptr [8 x %struct.mcp251xfd_hw_tef_obj], ptr %hw_tef_obj, i32 0, i32 %.pre.i
  %47 = ptrtoint ptr %map_rx.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %map_rx.i, align 16
  %div.i143 = udiv i32 12, %call.i133
  %mul.i144 = mul nuw nsw i32 %div.i143, %.pre.i136
  %call23.i145 = call i32 @regmap_bulk_read(ptr noundef %48, i32 noundef 1024, ptr noundef %arrayidx, i32 noundef %mul.i144) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i145)
  %tobool15.not = icmp eq i32 %call23.i145, 0
  br i1 %tobool15.not, label %mcp251xfd_tef_obj_read.exit148.if.end18_crit_edge, label %mcp251xfd_tef_obj_read.exit148.cleanup67_crit_edge

mcp251xfd_tef_obj_read.exit148.cleanup67_crit_edge: ; preds = %mcp251xfd_tef_obj_read.exit148
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup67

mcp251xfd_tef_obj_read.exit148.if.end18_crit_edge: ; preds = %mcp251xfd_tef_obj_read.exit148
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

if.end18:                                         ; preds = %mcp251xfd_tef_obj_read.exit148.if.end18_crit_edge, %if.end7.if.end18_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv8)
  %cmp20193.not = icmp eq i32 %conv8, 0
  br i1 %cmp20193.not, label %if.end18.if.end56_crit_edge, label %for.body.lr.ph

if.end18.if.end56_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end56

for.body.lr.ph:                                   ; preds = %if.end18
  %ndev.i149 = getelementptr inbounds %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 2
  %echo_skb.i = getelementptr inbounds %struct.can_priv, ptr %priv, i32 0, i32 20
  %offload.i = getelementptr inbounds %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %mcp251xfd_handle_tefif_one.exit.thread.for.body_crit_edge, %for.body.lr.ph
  %total_frame_len.0195 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %mcp251xfd_handle_tefif_one.exit.thread.for.body_crit_edge ]
  %i.0194 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %mcp251xfd_handle_tefif_one.exit.thread.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %frame_len) #6
  %49 = ptrtoint ptr %frame_len to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %frame_len, align 4
  %50 = ptrtoint ptr %ndev.i149 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ndev.i149, align 8
  %flags.i = getelementptr [8 x %struct.mcp251xfd_hw_tef_obj], ptr %hw_tef_obj, i32 0, i32 %i.0194, i32 1
  %52 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %flags.i, align 4
  %shr.i = lshr i32 %53, 9
  %54 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %tail.i.i.i, align 4
  %56 = xor i32 %shr.i, %55
  %57 = and i32 %56, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp.not.i151 = icmp eq i32 %57, 0
  br i1 %cmp.not.i151, label %if.end.i161, label %if.then.i155

if.then.i155:                                     ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tef_sta.i.i) #6
  %58 = ptrtoint ptr %tef_sta.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 -1, ptr %tef_sta.i.i, align 4, !annotation !23
  %59 = ptrtoint ptr %map_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %map_reg.i.i, align 4
  %call.i.i153 = call i32 @regmap_read(ptr noundef %60, i32 noundef 68, ptr noundef nonnull %tef_sta.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i153)
  %tobool.not.i.i154 = icmp eq i32 %call.i.i153, 0
  br i1 %tobool.not.i.i154, label %if.end.i.i157, label %mcp251xfd_handle_tefif_one.exit

if.end.i.i157:                                    ; preds = %if.then.i155
  %61 = ptrtoint ptr %tef_sta.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %tef_sta.i.i, align 4
  %and.i.i156 = and i32 %62, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i156)
  %tobool1.not.i.i = icmp eq i32 %and.i.i156, 0
  %63 = ptrtoint ptr %ndev.i149 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %ndev.i149, align 8
  br i1 %tobool1.not.i.i, label %mcp251xfd_handle_tefif_one.exit.thread178, label %mcp251xfd_handle_tefif_one.exit.thread175

mcp251xfd_handle_tefif_one.exit.thread175:        ; preds = %if.end.i.i157
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %64, ptr noundef nonnull @.str.1) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tef_sta.i.i) #6
  br label %cleanup.thread183

mcp251xfd_handle_tefif_one.exit.thread178:        ; preds = %if.end.i.i157
  call void @__sanitizer_cov_trace_pc() #8
  %and5.i.i = and i32 %62, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i.i)
  %tobool6.not.i.i = icmp eq i32 %and5.i.i, 0
  %and7.i.i = and i32 %62, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i.i)
  %tobool8.not.i.i = icmp eq i32 %and7.i.i, 0
  %cond.i.i = select i1 %tobool8.not.i.i, ptr @.str.5, ptr @.str.4
  %cond9.i.i = select i1 %tobool6.not.i.i, ptr %cond.i.i, ptr @.str.3
  %65 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %tail.i.i.i, align 4
  %67 = ptrtoint ptr %tef.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %tef.i, align 128
  %69 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %tx.i, align 128
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %64, ptr noundef nonnull @.str.2, ptr noundef nonnull %cond9.i.i, i32 noundef %shr.i, i32 noundef %66, i32 noundef %68, i32 noundef %70) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tef_sta.i.i) #6
  br label %cleanup.thread

if.end.i161:                                      ; preds = %for.body
  %71 = ptrtoint ptr %obj_num.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %obj_num.i, align 2
  %conv.i.i159 = zext i8 %72 to i32
  %sub.i.i160 = add nuw nsw i32 %conv.i.i159, 255
  %and.i51.i = and i32 %55, 255
  %conv23.i = and i32 %and.i51.i, %sub.i.i160
  %73 = ptrtoint ptr %echo_skb.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %echo_skb.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %74, i32 %conv23.i
  %75 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %76, null
  br i1 %tobool.not.i, label %if.end.i161.mcp251xfd_handle_tefif_one.exit.thread_crit_edge, label %if.then24.i

if.end.i161.mcp251xfd_handle_tefif_one.exit.thread_crit_edge: ; preds = %if.end.i161
  call void @__sanitizer_cov_trace_pc() #8
  br label %mcp251xfd_handle_tefif_one.exit.thread

if.then24.i:                                      ; preds = %if.end.i161
  call void @__sanitizer_cov_trace_pc() #8
  %ts.i = getelementptr [8 x %struct.mcp251xfd_hw_tef_obj], ptr %hw_tef_obj, i32 0, i32 %i.0194, i32 2
  %77 = ptrtoint ptr %ts.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %ts.i, align 4
  call void @mcp251xfd_skb_set_timestamp(ptr noundef %priv, ptr noundef nonnull %76, i32 noundef %78) #6
  br label %mcp251xfd_handle_tefif_one.exit.thread

mcp251xfd_handle_tefif_one.exit.thread:           ; preds = %if.then24.i, %if.end.i161.mcp251xfd_handle_tefif_one.exit.thread_crit_edge
  %ts26.i = getelementptr [8 x %struct.mcp251xfd_hw_tef_obj], ptr %hw_tef_obj, i32 0, i32 %i.0194, i32 2
  %79 = ptrtoint ptr %ts26.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %ts26.i, align 4
  %call27.i = call i32 @can_rx_offload_get_echo_skb(ptr noundef %offload.i, i32 noundef %conv23.i, i32 noundef %80, ptr noundef nonnull %frame_len) #6
  %tx_bytes.i = getelementptr inbounds %struct.net_device, ptr %51, i32 0, i32 36, i32 3
  %81 = ptrtoint ptr %tx_bytes.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %tx_bytes.i, align 4
  %add.i162 = add i32 %82, %call27.i
  store i32 %add.i162, ptr %tx_bytes.i, align 4
  %tx_packets.i = getelementptr inbounds %struct.net_device, ptr %51, i32 0, i32 36, i32 1
  %83 = ptrtoint ptr %tx_packets.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %tx_packets.i, align 4
  %inc.i = add i32 %84, 1
  store i32 %inc.i, ptr %tx_packets.i, align 4
  %85 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %tail.i.i.i, align 4
  %inc31.i = add i32 %86, 1
  store i32 %inc31.i, ptr %tail.i.i.i, align 4
  %87 = ptrtoint ptr %frame_len to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %frame_len, align 4
  %add = add i32 %88, %total_frame_len.0195
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %frame_len) #6
  %inc = add nuw nsw i32 %i.0194, 1
  %exitcond.not = icmp eq i32 %inc, %conv8
  br i1 %exitcond.not, label %mcp251xfd_handle_tefif_one.exit.thread.out_netif_wake_queue_crit_edge, label %mcp251xfd_handle_tefif_one.exit.thread.for.body_crit_edge

mcp251xfd_handle_tefif_one.exit.thread.for.body_crit_edge: ; preds = %mcp251xfd_handle_tefif_one.exit.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

mcp251xfd_handle_tefif_one.exit.thread.out_netif_wake_queue_crit_edge: ; preds = %mcp251xfd_handle_tefif_one.exit.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_netif_wake_queue

mcp251xfd_handle_tefif_one.exit:                  ; preds = %if.then.i155
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tef_sta.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call.i.i153)
  %cond = icmp eq i32 %call.i.i153, -11
  br i1 %cond, label %mcp251xfd_handle_tefif_one.exit.cleanup.thread_crit_edge, label %mcp251xfd_handle_tefif_one.exit.cleanup.thread183_crit_edge

mcp251xfd_handle_tefif_one.exit.cleanup.thread183_crit_edge: ; preds = %mcp251xfd_handle_tefif_one.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread183

mcp251xfd_handle_tefif_one.exit.cleanup.thread_crit_edge: ; preds = %mcp251xfd_handle_tefif_one.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread

cleanup.thread183:                                ; preds = %mcp251xfd_handle_tefif_one.exit.cleanup.thread183_crit_edge, %mcp251xfd_handle_tefif_one.exit.thread175
  %retval.0.i.i177 = phi i32 [ -105, %mcp251xfd_handle_tefif_one.exit.thread175 ], [ %call.i.i153, %mcp251xfd_handle_tefif_one.exit.cleanup.thread183_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %frame_len) #6
  br label %cleanup67

cleanup.thread:                                   ; preds = %mcp251xfd_handle_tefif_one.exit.cleanup.thread_crit_edge, %mcp251xfd_handle_tefif_one.exit.thread178
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %frame_len) #6
  br label %out_netif_wake_queue

out_netif_wake_queue:                             ; preds = %cleanup.thread, %mcp251xfd_handle_tefif_one.exit.thread.out_netif_wake_queue_crit_edge
  %i.0192 = phi i32 [ %i.0194, %cleanup.thread ], [ %conv8, %mcp251xfd_handle_tefif_one.exit.thread.out_netif_wake_queue_crit_edge ]
  %total_frame_len.0190 = phi i32 [ %total_frame_len.0195, %cleanup.thread ], [ %add, %mcp251xfd_handle_tefif_one.exit.thread.out_netif_wake_queue_crit_edge ]
  %conv31 = trunc i32 %i.0192 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv31)
  %tobool32.not = icmp eq i8 %conv31, 0
  br i1 %tobool32.not, label %out_netif_wake_queue.if.end56_crit_edge, label %if.then33

out_netif_wake_queue.if.end56_crit_edge:          ; preds = %out_netif_wake_queue
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end56

if.then33:                                        ; preds = %out_netif_wake_queue
  %conv36 = and i32 %i.0192, 255
  %sub37 = sub nsw i32 8, %conv36
  %spi = getelementptr inbounds %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 11
  %89 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %spi, align 4
  %uinc_xfer = getelementptr inbounds %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 14, i32 0, i32 4
  %add.ptr = getelementptr %struct.spi_transfer, ptr %uinc_xfer, i32 %sub37
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i) #6
  %91 = getelementptr inbounds i8, ptr %msg.i, i32 8
  %92 = call ptr @memset(ptr %91, i32 0, i32 40)
  %93 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store volatile ptr %msg.i, ptr %msg.i, align 4
  %prev.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i, i32 0, i32 1
  %94 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %msg.i, ptr %prev.i.i.i.i.i, align 4
  %resources.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i, i32 0, i32 10
  %95 = ptrtoint ptr %resources.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store volatile ptr %resources.i.i.i.i, ptr %resources.i.i.i.i, align 4
  %prev.i2.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i, i32 0, i32 10, i32 1
  %96 = ptrtoint ptr %prev.i2.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %resources.i.i.i.i, ptr %prev.i2.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv36)
  %cmp4.not.i.i = icmp eq i32 %conv36, 0
  br i1 %cmp4.not.i.i, label %if.then33.spi_sync_transfer.exit_crit_edge, label %if.then33.for.body.i.i_crit_edge

if.then33.for.body.i.i_crit_edge:                 ; preds = %if.then33
  br label %for.body.i.i

if.then33.spi_sync_transfer.exit_crit_edge:       ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_sync_transfer.exit

for.body.i.i:                                     ; preds = %spi_message_add_tail.exit.i.i.for.body.i.i_crit_edge, %if.then33.for.body.i.i_crit_edge
  %i.05.i.i = phi i32 [ %inc.i.i, %spi_message_add_tail.exit.i.i.for.body.i.i_crit_edge ], [ 0, %if.then33.for.body.i.i_crit_edge ]
  %transfer_list.i.i.i = getelementptr %struct.spi_transfer, ptr %add.ptr, i32 %i.05.i.i, i32 18
  %97 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %prev.i.i.i.i.i, align 4
  %call.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i, ptr noundef %98, ptr noundef nonnull %msg.i) #6
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %for.body.i.i.spi_message_add_tail.exit.i.i_crit_edge

for.body.i.i.spi_message_add_tail.exit.i.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_message_add_tail.exit.i.i

if.end.i.i.i.i.i:                                 ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %99 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %transfer_list.i.i.i, ptr %prev.i.i.i.i.i, align 4
  %100 = ptrtoint ptr %transfer_list.i.i.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %msg.i, ptr %transfer_list.i.i.i, align 4
  %prev3.i.i.i.i.i = getelementptr %struct.spi_transfer, ptr %add.ptr, i32 %i.05.i.i, i32 18, i32 1
  %101 = ptrtoint ptr %prev3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %98, ptr %prev3.i.i.i.i.i, align 4
  %102 = ptrtoint ptr %98 to i32
  call void @__asan_store4_noabort(i32 %102)
  store volatile ptr %transfer_list.i.i.i, ptr %98, align 4
  br label %spi_message_add_tail.exit.i.i

spi_message_add_tail.exit.i.i:                    ; preds = %if.end.i.i.i.i.i, %for.body.i.i.spi_message_add_tail.exit.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %i.05.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %conv36
  br i1 %exitcond.not.i.i, label %spi_message_add_tail.exit.i.i.spi_sync_transfer.exit_crit_edge, label %spi_message_add_tail.exit.i.i.for.body.i.i_crit_edge

spi_message_add_tail.exit.i.i.for.body.i.i_crit_edge: ; preds = %spi_message_add_tail.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

spi_message_add_tail.exit.i.i.spi_sync_transfer.exit_crit_edge: ; preds = %spi_message_add_tail.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_sync_transfer.exit

spi_sync_transfer.exit:                           ; preds = %spi_message_add_tail.exit.i.i.spi_sync_transfer.exit_crit_edge, %if.then33.spi_sync_transfer.exit_crit_edge
  %call.i164 = call i32 @spi_sync(ptr noundef %90, ptr noundef nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i164)
  %tobool41.not = icmp eq i32 %call.i164, 0
  br i1 %tobool41.not, label %cleanup51, label %spi_sync_transfer.exit.cleanup67_crit_edge

spi_sync_transfer.exit.cleanup67_crit_edge:       ; preds = %spi_sync_transfer.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup67

cleanup51:                                        ; preds = %spi_sync_transfer.exit
  %tail = getelementptr inbounds %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 15, i32 0, i32 1
  %103 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %tail, align 4
  %add45 = add i32 %104, %conv36
  store i32 %add45, ptr %tail, align 4
  %ndev = getelementptr inbounds %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 2
  %105 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %ndev, align 8
  call fastcc void @netdev_completed_queue(ptr noundef %106, i32 noundef %total_frame_len.0190)
  %call47 = call fastcc i32 @mcp251xfd_check_tef_tail(ptr noundef %priv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %cleanup51.if.end56_crit_edge, label %cleanup51.cleanup67_crit_edge

cleanup51.cleanup67_crit_edge:                    ; preds = %cleanup51
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup67

cleanup51.if.end56_crit_edge:                     ; preds = %cleanup51
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end56

if.end56:                                         ; preds = %cleanup51.if.end56_crit_edge, %out_netif_wake_queue.if.end56_crit_edge, %if.end18.if.end56_crit_edge
  %ecc1.i = getelementptr inbounds %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 18
  %107 = ptrtoint ptr %ecc1.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 0, ptr %ecc1.i, align 4
  %108 = ptrtoint ptr %obj_num.i to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %obj_num.i, align 2
  %110 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %tx.i, align 128
  %tail.i166 = getelementptr inbounds %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 15, i32 0, i32 1
  %112 = ptrtoint ptr %tail.i166 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %tail.i166, align 4
  %sub.neg.i.neg = sub i32 %111, %113
  %.neg = trunc i32 %sub.neg.i.neg to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %109, i8 %.neg)
  %tobool60.not = icmp eq i8 %109, %.neg
  br i1 %tobool60.not, label %if.end56.cleanup67_crit_edge, label %do.end

if.end56.cleanup67_crit_edge:                     ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup67

do.end:                                           ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !24
  %ndev65 = getelementptr inbounds %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 2
  %114 = ptrtoint ptr %ndev65 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %ndev65, align 8
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %115, i32 0, i32 103
  %116 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %_tx.i.i, align 128
  call void @netif_tx_wake_queue(ptr noundef %117) #6
  br label %cleanup67

cleanup67:                                        ; preds = %do.end, %if.end56.cleanup67_crit_edge, %cleanup51.cleanup67_crit_edge, %spi_sync_transfer.exit.cleanup67_crit_edge, %cleanup.thread183, %mcp251xfd_tef_obj_read.exit148.cleanup67_crit_edge, %mcp251xfd_tef_obj_read.exit148.thread, %mcp251xfd_tef_obj_read.exit.cleanup67_crit_edge, %mcp251xfd_tef_obj_read.exit.thread, %if.then4.i.i, %mcp251xfd_tef_tail_get_from_chip.exit.i.i, %mcp251xfd_tx_tail_get_from_chip.exit.i
  %retval.4 = phi i32 [ %call47, %cleanup51.cleanup67_crit_edge ], [ %call23.i, %mcp251xfd_tef_obj_read.exit.cleanup67_crit_edge ], [ %call23.i145, %mcp251xfd_tef_obj_read.exit148.cleanup67_crit_edge ], [ 0, %do.end ], [ 0, %if.end56.cleanup67_crit_edge ], [ -34, %mcp251xfd_tef_obj_read.exit.thread ], [ -34, %mcp251xfd_tef_obj_read.exit148.thread ], [ %retval.0.i.i177, %cleanup.thread183 ], [ %call.i.i.i, %mcp251xfd_tef_tail_get_from_chip.exit.i.i ], [ -84, %if.then4.i.i ], [ %call.i.i, %mcp251xfd_tx_tail_get_from_chip.exit.i ], [ %call.i164, %spi_sync_transfer.exit.cleanup67_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %hw_tef_obj) #6
  ret i32 %retval.4
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @netdev_completed_queue(ptr nocapture noundef readonly %dev, i32 noundef %bytes) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %_tx.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %0 = ptrtoint ptr %_tx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_tx.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bytes)
  %tobool.not.i = icmp eq i32 %bytes, 0
  br i1 %tobool.not.i, label %entry.netdev_tx_completed_queue.exit_crit_edge, label %if.end.i, !prof !25

entry.netdev_tx_completed_queue.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %netdev_tx_completed_queue.exit

if.end.i:                                         ; preds = %entry
  %dql.i = getelementptr inbounds %struct.netdev_queue, ptr %1, i32 0, i32 15
  tail call void @dql_completed(ptr noundef %dql.i, i32 noundef %bytes) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !26
  %adj_limit.i.i = getelementptr inbounds %struct.netdev_queue, ptr %1, i32 0, i32 15, i32 1
  %2 = ptrtoint ptr %adj_limit.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %adj_limit.i.i, align 4
  %4 = ptrtoint ptr %dql.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %dql.i, align 128
  %sub.i.i = sub i32 %3, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp.i = icmp slt i32 %sub.i.i, 0
  br i1 %cmp.i, label %if.end.i.netdev_tx_completed_queue.exit_crit_edge, label %if.end14.i, !prof !25

if.end.i.netdev_tx_completed_queue.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %netdev_tx_completed_queue.exit

if.end14.i:                                       ; preds = %if.end.i
  %state.i = getelementptr inbounds %struct.netdev_queue, ptr %1, i32 0, i32 13
  %call15.i = tail call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %state.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool16.not.i = icmp eq i32 %call15.i, 0
  br i1 %tobool16.not.i, label %if.end14.i.netdev_tx_completed_queue.exit_crit_edge, label %if.then17.i

if.end14.i.netdev_tx_completed_queue.exit_crit_edge: ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %netdev_tx_completed_queue.exit

if.then17.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @netif_schedule_queue(ptr noundef %1) #6
  br label %netdev_tx_completed_queue.exit

netdev_tx_completed_queue.exit:                   ; preds = %if.then17.i, %if.end14.i.netdev_tx_completed_queue.exit_crit_edge, %if.end.i.netdev_tx_completed_queue.exit_crit_edge, %entry.netdev_tx_completed_queue.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mcp251xfd_check_tef_tail(ptr nocapture noundef readonly %priv) unnamed_addr #0 align 64 {
entry:
  %tef_ua.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tef_ua.i) #6
  %0 = ptrtoint ptr %tef_ua.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %tef_ua.i, align 4, !annotation !23
  %map_reg.i = getelementptr inbounds %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 3
  %1 = ptrtoint ptr %map_reg.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %map_reg.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %2, i32 noundef 72, ptr noundef nonnull %tef_ua.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end, label %mcp251xfd_tef_tail_get_from_chip.exit

mcp251xfd_tef_tail_get_from_chip.exit:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tef_ua.i) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %tef_ua.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %tef_ua.i, align 4
  %div.i = udiv i32 %4, 12
  %conv.i = trunc i32 %div.i to i8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tef_ua.i) #6
  %tail.i = getelementptr inbounds %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 14, i32 0, i32 1
  %5 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tail.i, align 4
  %obj_num.i = getelementptr inbounds %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 15, i32 0, i32 3
  %7 = ptrtoint ptr %obj_num.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %obj_num.i, align 2
  %conv.i14 = zext i8 %8 to i32
  %sub.i = add nuw nsw i32 %conv.i14, 255
  %and.i = and i32 %sub.i, %6
  %conv2.i = trunc i32 %and.i to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %conv.i, i8 %conv2.i)
  %cmp.not = icmp eq i8 %conv.i, %conv2.i
  br i1 %cmp.not, label %if.end.cleanup_crit_edge, label %if.then4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %conv2 = and i32 %and.i, 255
  %conv = and i32 %div.i, 255
  %ndev = getelementptr inbounds %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 2
  %9 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ndev, align 8
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %10, ptr noundef nonnull @.str.6, i32 noundef %conv, i32 noundef %conv2) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.end.cleanup_crit_edge, %mcp251xfd_tef_tail_get_from_chip.exit
  %retval.0 = phi i32 [ -84, %if.then4 ], [ %call.i, %mcp251xfd_tef_tail_get_from_chip.exit ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_get_val_bytes(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mcp251xfd_skb_set_timestamp(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @can_rx_offload_get_echo_skb(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dql_completed(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_schedule_queue(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12}
!llvm.module.flags = !{!14, !15, !16, !17, !18, !19, !20, !21}
!llvm.ident = !{!22}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/can/spi/mcp251xfd/mcp251xfd-tef.c", i32 160, i32 7}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/can/spi/mcp251xfd/mcp251xfd-tef.c", i32 71, i32 7}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/can/spi/mcp251xfd/mcp251xfd-tef.c", i32 76, i32 7}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/can/spi/mcp251xfd/mcp251xfd-tef.c", i32 78, i32 7}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/can/spi/mcp251xfd/mcp251xfd-tef.c", i32 79, i32 7}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/can/spi/mcp251xfd/mcp251xfd-tef.c", i32 79, i32 21}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/can/spi/mcp251xfd/mcp251xfd-tef.c", i32 50, i32 7}
!14 = !{i32 1, !"wchar_size", i32 2}
!15 = !{i32 1, !"min_enum_size", i32 4}
!16 = !{i32 8, !"branch-target-enforcement", i32 0}
!17 = !{i32 8, !"sign-return-address", i32 0}
!18 = !{i32 8, !"sign-return-address-all", i32 0}
!19 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!20 = !{i32 7, !"uwtable", i32 1}
!21 = !{i32 7, !"frame-pointer", i32 2}
!22 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!23 = !{!"auto-init"}
!24 = !{i64 2157424585}
!25 = !{!"branch_weights", i32 1, i32 2000}
!26 = !{i64 2155834166}
