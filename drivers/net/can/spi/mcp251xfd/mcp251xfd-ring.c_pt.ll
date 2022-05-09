; ModuleID = '/llk/IR_all_yes/drivers/net/can/spi/mcp251xfd/mcp251xfd-ring.c_pt.bc'
source_filename = "../drivers/net/can/spi/mcp251xfd/mcp251xfd-ring.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
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
%struct.list_head = type { ptr, ptr }
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
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
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
%struct.mcp251xfd_rx_ring = type { i32, i32, i16, i8, i8, i8, i8, [114 x i8], %union.mcp251xfd_write_reg_buf, [32 x %struct.spi_transfer], [0 x %struct.mcp251xfd_hw_rx_obj_canfd] }
%struct.mcp251xfd_hw_rx_obj_canfd = type { i32, i32, i32, [64 x i8] }

@mcp251xfd_ring_alloc.__UNIQUE_ID_ddebug474 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 63, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mcp251xfd\00", [22 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mcp251xfd_ring_alloc\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"drivers/net/can/spi/mcp251xfd/mcp251xfd-ring.c\00", [49 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"FIFO setup: TEF: %d*%d bytes = %d bytes, TX: %d*%d bytes = %d bytes\0A\00", [59 x i8] zeroinitializer }, align 32
@mcp251xfd_ring_alloc.__UNIQUE_ID_ddebug475 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 65, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"FIFO setup: RX-%d: %d*%d bytes = %d bytes\0A\00", [53 x i8] zeroinitializer }, align 32
@mcp251xfd_ring_alloc.__UNIQUE_ID_ddebug476 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.5, i8 0, i8 66, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"FIFO setup: free: %d bytes\0A\00", [36 x i8] zeroinitializer }, align 32
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 252, i32 2 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 258, i32 3 }
@___asan_gen_.21 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.22 = private constant [50 x i8] c"../drivers/net/can/spi/mcp251xfd/mcp251xfd-ring.c\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 264, i32 2 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mcp251xfd_ring_init(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ndev = getelementptr inbounds %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 2
  %0 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ndev, align 8
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 103
  %2 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %3, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %state.i.i) #4
  %dql.i.i = getelementptr inbounds %struct.netdev_queue, ptr %3, i32 0, i32 15
  tail call void @dql_reset(ptr noundef %dql.i.i) #4
  %tef = getelementptr inbounds %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 14
  %4 = ptrtoint ptr %tef to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %tef, align 128
  %tail = getelementptr inbounds %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 14, i32 0, i32 1
  %5 = ptrtoint ptr %tail to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %tail, align 4
  %uinc_buf = getelementptr inbounds %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 14, i32 0, i32 3
  %quirks.i.i = getelementptr inbounds %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 27, i32 1
  %6 = ptrtoint ptr %quirks.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %quirks.i.i, align 4
  %and.i46.i = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i46.i)
  %tobool.not.i47.i = icmp eq i32 %and.i46.i, 0
  br i1 %tobool.not.i47.i, label %mcp251xfd_spi_cmd_write.exit.i.thread, label %if.then.i

mcp251xfd_spi_cmd_write.exit.i.thread:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %8 = ptrtoint ptr %uinc_buf to i32
  call void @__asan_storeN_noabort(i32 %8, i32 2)
  store i16 8257, ptr %uinc_buf, align 1
  %data3.i.i = getelementptr inbounds %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 14, i32 0, i32 3, i32 0, i32 1
  %9 = ptrtoint ptr %data3.i.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %data3.i.i, align 1
  br label %mcp251xfd_cmd_prepare_write_reg.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %10 = ptrtoint ptr %uinc_buf to i32
  call void @__asan_storeN_noabort(i32 %10, i32 2)
  store i16 -24511, ptr %uinc_buf, align 1
  %data1.i.i = getelementptr inbounds %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 14, i32 0, i32 3, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %data1.i.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %data1.i.i, align 1
  %len4.i.i.i = getelementptr inbounds %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 14, i32 0, i32 3, i32 0, i32 1
  %12 = ptrtoint ptr %len4.i.i.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %len4.i.i.i, align 1
  %call16.i = tail call zeroext i16 @mcp251xfd_crc16_compute(ptr noundef %uinc_buf, i32 noundef 4) #4
  %add.ptr.i = getelementptr %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 14, i32 0, i32 3, i32 0, i32 1, i32 2
  %13 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_storeN_noabort(i32 %13, i32 2)
  store i16 %call16.i, ptr %add.ptr.i, align 1
  br label %mcp251xfd_cmd_prepare_write_reg.exit

mcp251xfd_cmd_prepare_write_reg.exit:             ; preds = %if.then.i, %mcp251xfd_spi_cmd_write.exit.i.thread
  %.sink.i = phi i32 [ 6, %if.then.i ], [ 3, %mcp251xfd_spi_cmd_write.exit.i.thread ]
  %arrayidx = getelementptr %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 14, i32 0, i32 4, i32 0
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %uinc_buf, ptr %arrayidx, align 4
  %len2 = getelementptr %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 14, i32 0, i32 4, i32 0, i32 2
  %15 = ptrtoint ptr %len2 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %.sink.i, ptr %len2, align 4
  %cs_change = getelementptr %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 14, i32 0, i32 4, i32 0, i32 7
  %16 = ptrtoint ptr %cs_change to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load = load i8, ptr %cs_change, align 4
  %bf.set = or i8 %bf.load, 64
  store i8 %bf.set, ptr %cs_change, align 4
  %cs_change_delay = getelementptr %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 14, i32 0, i32 4, i32 0, i32 10
  %17 = ptrtoint ptr %cs_change_delay to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 0, ptr %cs_change_delay, align 2
  %unit = getelementptr %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 14, i32 0, i32 4, i32 0, i32 10, i32 1
  %18 = ptrtoint ptr %unit to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %unit, align 2
  %arrayidx.1 = getelementptr %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 14, i32 0, i32 4, i32 1
  %19 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %uinc_buf, ptr %arrayidx.1, align 4
  %len2.1 = getelementptr %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 14, i32 0, i32 4, i32 1, i32 2
  %20 = ptrtoint ptr %len2.1 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %.sink.i, ptr %len2.1, align 4
  %cs_change.1 = getelementptr %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 14, i32 0, i32 4, i32 1, i32 7
  %21 = ptrtoint ptr %cs_change.1 to i32
  call void @__asan_load1_noabort(i32 %21)
  %bf.load.1 = load i8, ptr %cs_change.1, align 4
  %bf.set.1 = or i8 %bf.load.1, 64
  store i8 %bf.set.1, ptr %cs_change.1, align 4
  %cs_change_delay.1 = getelementptr %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 14, i32 0, i32 4, i32 1, i32 10
  %22 = ptrtoint ptr %cs_change_delay.1 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 0, ptr %cs_change_delay.1, align 2
  %unit.1 = getelementptr %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 14, i32 0, i32 4, i32 1, i32 10, i32 1
  %23 = ptrtoint ptr %unit.1 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %unit.1, align 2
  %arrayidx.2 = getelementptr %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 14, i32 0, i32 4, i32 2
  %24 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %uinc_buf, ptr %arrayidx.2, align 4
  %len2.2 = getelementptr %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 14, i32 0, i32 4, i32 2, i32 2
  %25 = ptrtoint ptr %len2.2 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %.sink.i, ptr %len2.2, align 4
  %cs_change.2 = getelementptr %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 14, i32 0, i32 4, i32 2, i32 7
  %26 = ptrtoint ptr %cs_change.2 to i32
  call void @__asan_load1_noabort(i32 %26)
  %bf.load.2 = load i8, ptr %cs_change.2, align 4
  %bf.set.2 = or i8 %bf.load.2, 64
  store i8 %bf.set.2, ptr %cs_change.2, align 4
  %cs_change_delay.2 = getelementptr %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 14, i32 0, i32 4, i32 2, i32 10
  %27 = ptrtoint ptr %cs_change_delay.2 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 0, ptr %cs_change_delay.2, align 2
  %unit.2 = getelementptr %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 14, i32 0, i32 4, i32 2, i32 10, i32 1
  %28 = ptrtoint ptr %unit.2 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 1, ptr %unit.2, align 2
  %arrayidx.3 = getelementptr %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 14, i32 0, i32 4, i32 3
  %29 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %uinc_buf, ptr %arrayidx.3, align 4
  %len2.3 = getelementptr %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 14, i32 0, i32 4, i32 3, i32 2
  %30 = ptrtoint ptr %len2.3 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %.sink.i, ptr %len2.3, align 4
  %cs_change.3 = getelementptr %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 14, i32 0, i32 4, i32 3, i32 7
  %31 = ptrtoint ptr %cs_change.3 to i32
  call void @__asan_load1_noabort(i32 %31)
  %bf.load.3 = load i8, ptr %cs_change.3, align 4
  %bf.set.3 = or i8 %bf.load.3, 64
  store i8 %bf.set.3, ptr %cs_change.3, align 4
  %cs_change_delay.3 = getelementptr %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 14, i32 0, i32 4, i32 3, i32 10
  %32 = ptrtoint ptr %cs_change_delay.3 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 0, ptr %cs_change_delay.3, align 2
  %unit.3 = getelementptr %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 14, i32 0, i32 4, i32 3, i32 10, i32 1
  %33 = ptrtoint ptr %unit.3 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %unit.3, align 2
  %arrayidx.4 = getelementptr %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 14, i32 0, i32 4, i32 4
  %34 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %uinc_buf, ptr %arrayidx.4, align 4
  %len2.4 = getelementptr %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 14, i32 0, i32 4, i32 4, i32 2
  %35 = ptrtoint ptr %len2.4 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %.sink.i, ptr %len2.4, align 4
  %cs_change.4 = getelementptr %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 14, i32 0, i32 4, i32 4, i32 7
  %36 = ptrtoint ptr %cs_change.4 to i32
  call void @__asan_load1_noabort(i32 %36)
  %bf.load.4 = load i8, ptr %cs_change.4, align 4
  %bf.set.4 = or i8 %bf.load.4, 64
  store i8 %bf.set.4, ptr %cs_change.4, align 4
  %cs_change_delay.4 = getelementptr %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 14, i32 0, i32 4, i32 4, i32 10
  %37 = ptrtoint ptr %cs_change_delay.4 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 0, ptr %cs_change_delay.4, align 2
  %unit.4 = getelementptr %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 14, i32 0, i32 4, i32 4, i32 10, i32 1
  %38 = ptrtoint ptr %unit.4 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 1, ptr %unit.4, align 2
  %arrayidx.5 = getelementptr %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 14, i32 0, i32 4, i32 5
  %39 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %uinc_buf, ptr %arrayidx.5, align 4
  %len2.5 = getelementptr %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 14, i32 0, i32 4, i32 5, i32 2
  %40 = ptrtoint ptr %len2.5 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %.sink.i, ptr %len2.5, align 4
  %cs_change.5 = getelementptr %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 14, i32 0, i32 4, i32 5, i32 7
  %41 = ptrtoint ptr %cs_change.5 to i32
  call void @__asan_load1_noabort(i32 %41)
  %bf.load.5 = load i8, ptr %cs_change.5, align 4
  %bf.set.5 = or i8 %bf.load.5, 64
  store i8 %bf.set.5, ptr %cs_change.5, align 4
  %cs_change_delay.5 = getelementptr %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 14, i32 0, i32 4, i32 5, i32 10
  %42 = ptrtoint ptr %cs_change_delay.5 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 0, ptr %cs_change_delay.5, align 2
  %unit.5 = getelementptr %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 14, i32 0, i32 4, i32 5, i32 10, i32 1
  %43 = ptrtoint ptr %unit.5 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 1, ptr %unit.5, align 2
  %arrayidx.6 = getelementptr %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 14, i32 0, i32 4, i32 6
  %44 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %uinc_buf, ptr %arrayidx.6, align 4
  %len2.6 = getelementptr %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 14, i32 0, i32 4, i32 6, i32 2
  %45 = ptrtoint ptr %len2.6 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %.sink.i, ptr %len2.6, align 4
  %cs_change.6 = getelementptr %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 14, i32 0, i32 4, i32 6, i32 7
  %46 = ptrtoint ptr %cs_change.6 to i32
  call void @__asan_load1_noabort(i32 %46)
  %bf.load.6 = load i8, ptr %cs_change.6, align 4
  %bf.set.6 = or i8 %bf.load.6, 64
  store i8 %bf.set.6, ptr %cs_change.6, align 4
  %cs_change_delay.6 = getelementptr %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 14, i32 0, i32 4, i32 6, i32 10
  %47 = ptrtoint ptr %cs_change_delay.6 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 0, ptr %cs_change_delay.6, align 2
  %unit.6 = getelementptr %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 14, i32 0, i32 4, i32 6, i32 10, i32 1
  %48 = ptrtoint ptr %unit.6 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 1, ptr %unit.6, align 2
  %arrayidx.7 = getelementptr %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 14, i32 0, i32 4, i32 7
  %49 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %uinc_buf, ptr %arrayidx.7, align 4
  %len2.7 = getelementptr %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 14, i32 0, i32 4, i32 7, i32 2
  %50 = ptrtoint ptr %len2.7 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %.sink.i, ptr %len2.7, align 4
  %cs_change.7 = getelementptr %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 14, i32 0, i32 4, i32 7, i32 7
  %51 = ptrtoint ptr %cs_change.7 to i32
  call void @__asan_load1_noabort(i32 %51)
  %bf.load.7 = load i8, ptr %cs_change.7, align 4
  %cs_change_delay.7 = getelementptr %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 14, i32 0, i32 4, i32 7, i32 10
  %52 = ptrtoint ptr %cs_change_delay.7 to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 0, ptr %cs_change_delay.7, align 2
  %unit.7 = getelementptr %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 14, i32 0, i32 4, i32 7, i32 10, i32 1
  %53 = ptrtoint ptr %unit.7 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 1, ptr %unit.7, align 2
  %bf.clear6 = and i8 %bf.load.7, -65
  store i8 %bf.clear6, ptr %cs_change.7, align 4
  %tx = getelementptr inbounds %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 15
  %54 = ptrtoint ptr %tx to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %tx, align 128
  %tail10 = getelementptr inbounds %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 15, i32 0, i32 1
  %55 = ptrtoint ptr %tail10 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %tail10, align 4
  %obj_num = getelementptr inbounds %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 15, i32 0, i32 3
  %56 = ptrtoint ptr %obj_num to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %obj_num, align 2
  %conv.i = zext i8 %57 to i16
  %mul.i = mul nuw nsw i16 %conv.i, 12
  %add.i = add nuw nsw i16 %mul.i, 1024
  %base = getelementptr inbounds %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 15, i32 0, i32 2
  %58 = ptrtoint ptr %base to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %add.i, ptr %base, align 8
  %rts_buf = getelementptr inbounds %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 15, i32 0, i32 7
  %59 = ptrtoint ptr %quirks.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %quirks.i.i, align 4
  %and.i46.i159 = and i32 %60, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i46.i159)
  %tobool.not.i47.i160 = icmp eq i32 %and.i46.i159, 0
  br i1 %tobool.not.i47.i160, label %mcp251xfd_spi_cmd_write.exit.i169.thread, label %if.then.i173

mcp251xfd_spi_cmd_write.exit.i169.thread:         ; preds = %mcp251xfd_cmd_prepare_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #6
  %61 = ptrtoint ptr %rts_buf to i32
  call void @__asan_storeN_noabort(i32 %61, i32 2)
  store i16 8285, ptr %rts_buf, align 1
  %data3.i.i163 = getelementptr inbounds %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 15, i32 0, i32 7, i32 0, i32 1
  %62 = ptrtoint ptr %data3.i.i163 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 3, ptr %data3.i.i163, align 1
  br label %mcp251xfd_cmd_prepare_write_reg.exit175

if.then.i173:                                     ; preds = %mcp251xfd_cmd_prepare_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #6
  %63 = ptrtoint ptr %rts_buf to i32
  call void @__asan_storeN_noabort(i32 %63, i32 2)
  store i16 -24483, ptr %rts_buf, align 1
  %data1.i.i161 = getelementptr inbounds %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 15, i32 0, i32 7, i32 0, i32 1, i32 1
  %64 = ptrtoint ptr %data1.i.i161 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 3, ptr %data1.i.i161, align 1
  %len4.i.i.i170 = getelementptr inbounds %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 15, i32 0, i32 7, i32 0, i32 1
  %65 = ptrtoint ptr %len4.i.i.i170 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 1, ptr %len4.i.i.i170, align 1
  %call16.i171 = tail call zeroext i16 @mcp251xfd_crc16_compute(ptr noundef %rts_buf, i32 noundef 4) #4
  %add.ptr.i172 = getelementptr %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 15, i32 0, i32 7, i32 0, i32 1, i32 2
  %66 = ptrtoint ptr %add.ptr.i172 to i32
  call void @__asan_storeN_noabort(i32 %66, i32 2)
  store i16 %call16.i171, ptr %add.ptr.i172, align 1
  br label %mcp251xfd_cmd_prepare_write_reg.exit175

mcp251xfd_cmd_prepare_write_reg.exit175:          ; preds = %if.then.i173, %mcp251xfd_spi_cmd_write.exit.i169.thread
  %.sink.i174 = phi i32 [ 6, %if.then.i173 ], [ 3, %mcp251xfd_spi_cmd_write.exit.i169.thread ]
  %67 = ptrtoint ptr %obj_num to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %obj_num, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %cmp17205.not = icmp eq i8 %68, 0
  br i1 %cmp17205.not, label %mcp251xfd_cmd_prepare_write_reg.exit175.for.end25_crit_edge, label %for.body19.lr.ph

mcp251xfd_cmd_prepare_write_reg.exit175.for.end25_crit_edge: ; preds = %mcp251xfd_cmd_prepare_write_reg.exit175
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end25

for.body19.lr.ph:                                 ; preds = %mcp251xfd_cmd_prepare_write_reg.exit175
  %obj = getelementptr inbounds %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 15, i32 0, i32 6
  %obj_size.i.i = getelementptr inbounds %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 15, i32 0, i32 4
  br label %for.body19

for.body19:                                       ; preds = %mcp251xfd_tx_ring_init_tx_obj.exit.for.body19_crit_edge, %for.body19.lr.ph
  %i.0208 = phi i32 [ 0, %for.body19.lr.ph ], [ %inc22, %mcp251xfd_tx_ring_init_tx_obj.exit.for.body19_crit_edge ]
  %tx_obj.0206 = phi ptr [ %obj, %for.body19.lr.ph ], [ %arrayidx24, %mcp251xfd_tx_ring_init_tx_obj.exit.for.body19_crit_edge ]
  %69 = ptrtoint ptr %base to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %base, align 8
  %71 = ptrtoint ptr %obj_size.i.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %obj_size.i.i, align 1
  %conv1.i.i = zext i8 %72 to i16
  %73 = trunc i32 %i.0208 to i16
  %conv2.i.i = and i16 %73, 255
  %mul.i.i = mul nuw i16 %conv2.i.i, %conv1.i.i
  %add.i.i = add i16 %mul.i.i, %70
  %74 = ptrtoint ptr %quirks.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %quirks.i.i, align 4
  %and.i176 = and i32 %75, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i176)
  %tobool.not.i177 = icmp eq i32 %and.i176, 0
  %..i = select i1 %tobool.not.i177, i16 8192, i16 -24576
  %76 = or i16 %..i, %add.i.i
  %77 = getelementptr inbounds %struct.mcp251xfd_tx_obj, ptr %tx_obj.0206, i32 0, i32 3
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_storeN_noabort(i32 %78, i32 2)
  store i16 %76, ptr %77, align 1
  %xfer3.i = getelementptr inbounds %struct.mcp251xfd_tx_obj, ptr %tx_obj.0206, i32 0, i32 1
  %79 = ptrtoint ptr %xfer3.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %77, ptr %xfer3.i, align 4
  %len.i = getelementptr inbounds %struct.mcp251xfd_tx_obj, ptr %tx_obj.0206, i32 0, i32 1, i32 0, i32 2
  %80 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 0, ptr %len.i, align 4
  %cs_change.i = getelementptr inbounds %struct.mcp251xfd_tx_obj, ptr %tx_obj.0206, i32 0, i32 1, i32 0, i32 7
  %81 = ptrtoint ptr %cs_change.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %bf.load.i = load i8, ptr %cs_change.i, align 4
  %bf.set.i = or i8 %bf.load.i, 64
  store i8 %bf.set.i, ptr %cs_change.i, align 4
  %cs_change_delay.i = getelementptr inbounds %struct.mcp251xfd_tx_obj, ptr %tx_obj.0206, i32 0, i32 1, i32 0, i32 10
  %82 = ptrtoint ptr %cs_change_delay.i to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 0, ptr %cs_change_delay.i, align 2
  %unit.i = getelementptr inbounds %struct.mcp251xfd_tx_obj, ptr %tx_obj.0206, i32 0, i32 1, i32 0, i32 10, i32 1
  %83 = ptrtoint ptr %unit.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 1, ptr %unit.i, align 2
  %arrayidx7.i = getelementptr %struct.mcp251xfd_tx_obj, ptr %tx_obj.0206, i32 0, i32 1, i32 1
  %84 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %rts_buf, ptr %arrayidx7.i, align 4
  %len9.i = getelementptr %struct.mcp251xfd_tx_obj, ptr %tx_obj.0206, i32 0, i32 1, i32 1, i32 2
  %85 = ptrtoint ptr %len9.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %.sink.i174, ptr %len9.i, align 4
  %86 = getelementptr inbounds i8, ptr %tx_obj.0206, i32 8
  %87 = call ptr @memset(ptr %86, i32 0, i32 40)
  %88 = ptrtoint ptr %tx_obj.0206 to i32
  call void @__asan_store4_noabort(i32 %88)
  store volatile ptr %tx_obj.0206, ptr %tx_obj.0206, align 4
  %prev.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %tx_obj.0206, i32 0, i32 1
  %89 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %tx_obj.0206, ptr %prev.i.i.i.i.i, align 4
  %resources.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %tx_obj.0206, i32 0, i32 10
  %90 = ptrtoint ptr %resources.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store volatile ptr %resources.i.i.i.i, ptr %resources.i.i.i.i, align 4
  %prev.i2.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %tx_obj.0206, i32 0, i32 10, i32 1
  %91 = ptrtoint ptr %prev.i2.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %resources.i.i.i.i, ptr %prev.i2.i.i.i.i, align 4
  %transfer_list.i.i.i = getelementptr %struct.mcp251xfd_tx_obj, ptr %tx_obj.0206, i32 0, i32 1, i32 0, i32 18
  %call.i.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i, ptr noundef %tx_obj.0206, ptr noundef %tx_obj.0206) #4
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %for.body19.spi_message_add_tail.exit.i.i_crit_edge

for.body19.spi_message_add_tail.exit.i.i_crit_edge: ; preds = %for.body19
  call void @__sanitizer_cov_trace_pc() #6
  br label %spi_message_add_tail.exit.i.i

if.end.i.i.i.i.i:                                 ; preds = %for.body19
  call void @__sanitizer_cov_trace_pc() #6
  %92 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %transfer_list.i.i.i, ptr %prev.i.i.i.i.i, align 4
  %93 = ptrtoint ptr %transfer_list.i.i.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %tx_obj.0206, ptr %transfer_list.i.i.i, align 4
  %prev3.i.i.i.i.i = getelementptr %struct.mcp251xfd_tx_obj, ptr %tx_obj.0206, i32 0, i32 1, i32 0, i32 18, i32 1
  %94 = ptrtoint ptr %prev3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %tx_obj.0206, ptr %prev3.i.i.i.i.i, align 4
  %95 = ptrtoint ptr %tx_obj.0206 to i32
  call void @__asan_store4_noabort(i32 %95)
  store volatile ptr %transfer_list.i.i.i, ptr %tx_obj.0206, align 4
  br label %spi_message_add_tail.exit.i.i

spi_message_add_tail.exit.i.i:                    ; preds = %if.end.i.i.i.i.i, %for.body19.spi_message_add_tail.exit.i.i_crit_edge
  %transfer_list.i.1.i.i = getelementptr %struct.mcp251xfd_tx_obj, ptr %tx_obj.0206, i32 0, i32 1, i32 1, i32 18
  %96 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %prev.i.i.i.i.i, align 4
  %call.i.i.i.1.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.1.i.i, ptr noundef %97, ptr noundef %tx_obj.0206) #4
  br i1 %call.i.i.i.1.i.i, label %if.end.i.i.i.1.i.i, label %spi_message_add_tail.exit.i.i.mcp251xfd_tx_ring_init_tx_obj.exit_crit_edge

spi_message_add_tail.exit.i.i.mcp251xfd_tx_ring_init_tx_obj.exit_crit_edge: ; preds = %spi_message_add_tail.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %mcp251xfd_tx_ring_init_tx_obj.exit

if.end.i.i.i.1.i.i:                               ; preds = %spi_message_add_tail.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %98 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %transfer_list.i.1.i.i, ptr %prev.i.i.i.i.i, align 4
  %99 = ptrtoint ptr %transfer_list.i.1.i.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %tx_obj.0206, ptr %transfer_list.i.1.i.i, align 4
  %prev3.i.i.i.1.i.i = getelementptr %struct.mcp251xfd_tx_obj, ptr %tx_obj.0206, i32 0, i32 1, i32 1, i32 18, i32 1
  %100 = ptrtoint ptr %prev3.i.i.i.1.i.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %97, ptr %prev3.i.i.i.1.i.i, align 4
  %101 = ptrtoint ptr %97 to i32
  call void @__asan_store4_noabort(i32 %101)
  store volatile ptr %transfer_list.i.1.i.i, ptr %97, align 4
  br label %mcp251xfd_tx_ring_init_tx_obj.exit

mcp251xfd_tx_ring_init_tx_obj.exit:               ; preds = %if.end.i.i.i.1.i.i, %spi_message_add_tail.exit.i.i.mcp251xfd_tx_ring_init_tx_obj.exit_crit_edge
  %inc22 = add nuw nsw i32 %i.0208, 1
  %arrayidx24 = getelementptr %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 15, i32 0, i32 6, i32 %inc22
  %102 = ptrtoint ptr %obj_num to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %obj_num, align 2
  %conv16 = zext i8 %103 to i32
  %cmp17 = icmp ult i32 %inc22, %conv16
  br i1 %cmp17, label %mcp251xfd_tx_ring_init_tx_obj.exit.for.body19_crit_edge, label %mcp251xfd_tx_ring_init_tx_obj.exit.for.end25_crit_edge

mcp251xfd_tx_ring_init_tx_obj.exit.for.end25_crit_edge: ; preds = %mcp251xfd_tx_ring_init_tx_obj.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end25

mcp251xfd_tx_ring_init_tx_obj.exit.for.body19_crit_edge: ; preds = %mcp251xfd_tx_ring_init_tx_obj.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body19

for.end25:                                        ; preds = %mcp251xfd_tx_ring_init_tx_obj.exit.for.end25_crit_edge, %mcp251xfd_cmd_prepare_write_reg.exit175.for.end25_crit_edge
  %rx = getelementptr inbounds %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 16
  %rx_ring_num = getelementptr inbounds %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 17
  %104 = ptrtoint ptr %rx_ring_num to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %rx_ring_num, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %105)
  %cmp29212.not = icmp eq i8 %105, 0
  br i1 %cmp29212.not, label %for.end25.for.end84_crit_edge, label %for.body31.lr.ph

for.end25.for.end84_crit_edge:                    ; preds = %for.end25
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end84

for.body31.lr.ph:                                 ; preds = %for.end25
  %obj_size.i = getelementptr inbounds %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 15, i32 0, i32 4
  br label %for.body31

for.body31:                                       ; preds = %for.end74.for.body31_crit_edge, %for.body31.lr.ph
  %rx_ring.0215.in = phi ptr [ %rx, %for.body31.lr.ph ], [ %add.ptr83, %for.end74.for.body31_crit_edge ]
  %i.1214 = phi i32 [ 0, %for.body31.lr.ph ], [ %inc80, %for.end74.for.body31_crit_edge ]
  %prev_rx_ring.0213 = phi ptr [ null, %for.body31.lr.ph ], [ %rx_ring.0215, %for.end74.for.body31_crit_edge ]
  %106 = ptrtoint ptr %rx_ring.0215.in to i32
  call void @__asan_load4_noabort(i32 %106)
  %rx_ring.0215 = load ptr, ptr %rx_ring.0215.in, align 4
  %107 = ptrtoint ptr %rx_ring.0215 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 0, ptr %rx_ring.0215, align 128
  %tail33 = getelementptr inbounds %struct.mcp251xfd_rx_ring, ptr %rx_ring.0215, i32 0, i32 1
  %108 = ptrtoint ptr %tail33 to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 0, ptr %tail33, align 4
  %conv34 = trunc i32 %i.1214 to i8
  %nr = getelementptr inbounds %struct.mcp251xfd_rx_ring, ptr %rx_ring.0215, i32 0, i32 3
  %109 = ptrtoint ptr %nr to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 %conv34, ptr %nr, align 2
  %conv35 = add i8 %conv34, 2
  %fifo_nr = getelementptr inbounds %struct.mcp251xfd_rx_ring, ptr %rx_ring.0215, i32 0, i32 4
  %110 = ptrtoint ptr %fifo_nr to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 %conv35, ptr %fifo_nr, align 1
  %tobool.not = icmp eq ptr %prev_rx_ring.0213, null
  %base39 = getelementptr inbounds %struct.mcp251xfd_rx_ring, ptr %prev_rx_ring.0213, i32 0, i32 2
  %obj_size = getelementptr inbounds %struct.mcp251xfd_rx_ring, ptr %prev_rx_ring.0213, i32 0, i32 6
  %obj_num42 = getelementptr inbounds %struct.mcp251xfd_rx_ring, ptr %prev_rx_ring.0213, i32 0, i32 5
  %conv41.sink.in.in = select i1 %tobool.not, ptr %obj_num, ptr %obj_size
  %conv43.sink.in.in = select i1 %tobool.not, ptr %obj_size.i, ptr %obj_num42
  %.sink.in = select i1 %tobool.not, ptr %base, ptr %base39
  %111 = ptrtoint ptr %.sink.in to i32
  call void @__asan_load2_noabort(i32 %111)
  %.sink = load i16, ptr %.sink.in, align 8
  %112 = ptrtoint ptr %conv43.sink.in.in to i32
  call void @__asan_load1_noabort(i32 %112)
  %conv43.sink.in = load i8, ptr %conv43.sink.in.in, align 1
  %conv43.sink = zext i8 %conv43.sink.in to i16
  %113 = ptrtoint ptr %conv41.sink.in.in to i32
  call void @__asan_load1_noabort(i32 %113)
  %conv41.sink.in = load i8, ptr %conv41.sink.in.in, align 1
  %conv41.sink = zext i8 %conv41.sink.in to i16
  %mul = mul nuw i16 %conv43.sink, %conv41.sink
  %add44 = add i16 %mul, %.sink
  %114 = getelementptr inbounds %struct.mcp251xfd_rx_ring, ptr %rx_ring.0215, i32 0, i32 2
  %115 = ptrtoint ptr %114 to i32
  call void @__asan_store2_noabort(i32 %115)
  store i16 %add44, ptr %114, align 8
  %116 = load i8, ptr %fifo_nr, align 1
  %conv48 = zext i8 %116 to i16
  %mul49 = mul nuw nsw i16 %conv48, 12
  %uinc_buf52 = getelementptr inbounds %struct.mcp251xfd_rx_ring, ptr %rx_ring.0215, i32 0, i32 8
  %conv7.i = add nuw nsw i16 %mul49, 81
  %117 = ptrtoint ptr %quirks.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %quirks.i.i, align 4
  %and.i46.i184 = and i32 %118, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i46.i184)
  %tobool.not.i47.i185 = icmp eq i32 %and.i46.i184, 0
  br i1 %tobool.not.i47.i185, label %if.else.i.i189, label %if.then.i.i187

if.then.i.i187:                                   ; preds = %for.body31
  call void @__sanitizer_cov_trace_pc() #6
  %119 = or i16 %conv7.i, -24576
  %120 = ptrtoint ptr %uinc_buf52 to i32
  call void @__asan_storeN_noabort(i32 %120, i32 2)
  store i16 %119, ptr %uinc_buf52, align 1
  %data1.i.i186 = getelementptr inbounds %struct.mcp251xfd_rx_ring, ptr %rx_ring.0215, i32 0, i32 8, i32 0, i32 1, i32 1
  br label %mcp251xfd_spi_cmd_write.exit.i194

if.else.i.i189:                                   ; preds = %for.body31
  call void @__sanitizer_cov_trace_pc() #6
  %121 = or i16 %conv7.i, 8192
  %122 = ptrtoint ptr %uinc_buf52 to i32
  call void @__asan_storeN_noabort(i32 %122, i32 2)
  store i16 %121, ptr %uinc_buf52, align 1
  %data3.i.i188 = getelementptr inbounds %struct.mcp251xfd_rx_ring, ptr %rx_ring.0215, i32 0, i32 8, i32 0, i32 1
  br label %mcp251xfd_spi_cmd_write.exit.i194

mcp251xfd_spi_cmd_write.exit.i194:                ; preds = %if.else.i.i189, %if.then.i.i187
  %data.0.i.i190 = phi ptr [ %data1.i.i186, %if.then.i.i187 ], [ %data3.i.i188, %if.else.i.i189 ]
  %123 = ptrtoint ptr %data.0.i.i190 to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 1, ptr %data.0.i.i190, align 1
  %124 = ptrtoint ptr %quirks.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %quirks.i.i, align 4
  %and.i192 = and i32 %125, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i192)
  %tobool.not.i193 = icmp eq i32 %and.i192, 0
  br i1 %tobool.not.i193, label %mcp251xfd_spi_cmd_write.exit.i194.mcp251xfd_cmd_prepare_write_reg.exit200_crit_edge, label %if.then.i198

mcp251xfd_spi_cmd_write.exit.i194.mcp251xfd_cmd_prepare_write_reg.exit200_crit_edge: ; preds = %mcp251xfd_spi_cmd_write.exit.i194
  call void @__sanitizer_cov_trace_pc() #6
  br label %mcp251xfd_cmd_prepare_write_reg.exit200

if.then.i198:                                     ; preds = %mcp251xfd_spi_cmd_write.exit.i194
  call void @__sanitizer_cov_trace_pc() #6
  %len4.i.i.i195 = getelementptr inbounds %struct.mcp251xfd_rx_ring, ptr %rx_ring.0215, i32 0, i32 8, i32 0, i32 1
  %126 = ptrtoint ptr %len4.i.i.i195 to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 1, ptr %len4.i.i.i195, align 1
  %call16.i196 = tail call zeroext i16 @mcp251xfd_crc16_compute(ptr noundef %uinc_buf52, i32 noundef 4) #4
  %add.ptr.i197 = getelementptr %struct.mcp251xfd_rx_ring, ptr %rx_ring.0215, i32 0, i32 8, i32 0, i32 1, i32 2
  %127 = ptrtoint ptr %add.ptr.i197 to i32
  call void @__asan_storeN_noabort(i32 %127, i32 2)
  store i16 %call16.i196, ptr %add.ptr.i197, align 1
  br label %mcp251xfd_cmd_prepare_write_reg.exit200

mcp251xfd_cmd_prepare_write_reg.exit200:          ; preds = %if.then.i198, %mcp251xfd_spi_cmd_write.exit.i194.mcp251xfd_cmd_prepare_write_reg.exit200_crit_edge
  %.sink.i199 = phi i32 [ 6, %if.then.i198 ], [ 3, %mcp251xfd_spi_cmd_write.exit.i194.mcp251xfd_cmd_prepare_write_reg.exit200_crit_edge ]
  br label %for.body57

for.body57:                                       ; preds = %for.body57.for.body57_crit_edge, %mcp251xfd_cmd_prepare_write_reg.exit200
  %j.1209 = phi i32 [ 0, %mcp251xfd_cmd_prepare_write_reg.exit200 ], [ %inc73, %for.body57.for.body57_crit_edge ]
  %arrayidx59 = getelementptr %struct.mcp251xfd_rx_ring, ptr %rx_ring.0215, i32 0, i32 9, i32 %j.1209
  %128 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr %uinc_buf52, ptr %arrayidx59, align 4
  %len63 = getelementptr %struct.mcp251xfd_rx_ring, ptr %rx_ring.0215, i32 0, i32 9, i32 %j.1209, i32 2
  %129 = ptrtoint ptr %len63 to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %.sink.i199, ptr %len63, align 4
  %cs_change64 = getelementptr %struct.mcp251xfd_rx_ring, ptr %rx_ring.0215, i32 0, i32 9, i32 %j.1209, i32 7
  %130 = ptrtoint ptr %cs_change64 to i32
  call void @__asan_load1_noabort(i32 %130)
  %bf.load65 = load i8, ptr %cs_change64, align 4
  %bf.set67 = or i8 %bf.load65, 64
  store i8 %bf.set67, ptr %cs_change64, align 4
  %cs_change_delay68 = getelementptr %struct.mcp251xfd_rx_ring, ptr %rx_ring.0215, i32 0, i32 9, i32 %j.1209, i32 10
  %131 = ptrtoint ptr %cs_change_delay68 to i32
  call void @__asan_store2_noabort(i32 %131)
  store i16 0, ptr %cs_change_delay68, align 2
  %unit71 = getelementptr %struct.mcp251xfd_rx_ring, ptr %rx_ring.0215, i32 0, i32 9, i32 %j.1209, i32 10, i32 1
  %132 = ptrtoint ptr %unit71 to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 1, ptr %unit71, align 2
  %inc73 = add nuw nsw i32 %j.1209, 1
  %exitcond.not = icmp eq i32 %inc73, 32
  br i1 %exitcond.not, label %for.end74, label %for.body57.for.body57_crit_edge

for.body57.for.body57_crit_edge:                  ; preds = %for.body57
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body57

for.end74:                                        ; preds = %for.body57
  %cs_change75 = getelementptr %struct.mcp251xfd_rx_ring, ptr %rx_ring.0215, i32 0, i32 9, i32 31, i32 7
  %133 = ptrtoint ptr %cs_change75 to i32
  call void @__asan_load1_noabort(i32 %133)
  %bf.load76 = load i8, ptr %cs_change75, align 4
  %bf.clear77 = and i8 %bf.load76, -65
  store i8 %bf.clear77, ptr %cs_change75, align 4
  %inc80 = add nuw nsw i32 %i.1214, 1
  %add.ptr83 = getelementptr ptr, ptr %rx, i32 %inc80
  %134 = ptrtoint ptr %rx_ring_num to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %rx_ring_num, align 4
  %conv28 = zext i8 %135 to i32
  %cmp29 = icmp ult i32 %inc80, %conv28
  br i1 %cmp29, label %for.end74.for.body31_crit_edge, label %for.end74.for.end84_crit_edge

for.end74.for.end84_crit_edge:                    ; preds = %for.end74
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end84

for.end74.for.body31_crit_edge:                   ; preds = %for.end74
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body31

for.end84:                                        ; preds = %for.end74.for.end84_crit_edge, %for.end25.for.end84_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mcp251xfd_ring_free(ptr nocapture noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %rx = getelementptr inbounds %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 16
  %0 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx, align 4
  tail call void @kfree(ptr noundef %1) #4
  %2 = ptrtoint ptr %rx to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %rx, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mcp251xfd_ring_alloc(ptr nocapture noundef %priv) local_unnamed_addr #0 align 64 {
for.body.lr.ph:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrlmode.i = getelementptr inbounds %struct.can_priv, ptr %priv, i32 0, i32 22
  %0 = ptrtoint ptr %ctrlmode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ctrlmode.i, align 4
  %and.i = and i32 %1, 34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  %. = select i1 %tobool.i.not, i32 8, i32 4
  %.162 = select i1 %tobool.i.not, i32 20, i32 76
  %.163 = select i1 %tobool.i.not, i32 16, i32 72
  %conv = trunc i32 %. to i8
  %obj_num = getelementptr inbounds %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 15, i32 0, i32 3
  %2 = ptrtoint ptr %obj_num to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv, ptr %obj_num, align 2
  %conv1 = trunc i32 %.163 to i8
  %obj_size = getelementptr inbounds %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 15, i32 0, i32 4
  %3 = ptrtoint ptr %obj_size to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv1, ptr %obj_size, align 1
  %add = add nuw nsw i32 %.163, 12
  %mul = mul nuw nsw i32 %add, %.
  %sub = sub nuw nsw i32 2048, %mul
  %rx = getelementptr inbounds %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 16
  %div.lhs.trunc = trunc i32 %sub to i16
  %div.rhs.trunc = trunc i32 %.162 to i16
  %div191 = udiv i16 %div.lhs.trunc, %div.rhs.trunc
  %div.zext = zext i16 %div191 to i32
  %4 = tail call i32 @llvm.ctlz.i32(i32 %div.zext, i1 true) #4, !range !21
  %sub.i.op = xor i32 %4, 31
  %sub.i.op.op = shl nuw i32 1, %sub.i.op
  %5 = tail call i32 @llvm.smin.i32(i32 %sub.i.op.op, i32 32)
  %mul9 = mul i32 %5, %.162
  %add10 = add i32 %mul9, 3328
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add10, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %cleanup.thread, label %for.end

cleanup.thread:                                   ; preds = %for.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #6
  %6 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rx, align 4
  tail call void @kfree(ptr noundef %7) #4
  %8 = ptrtoint ptr %rx to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %rx, align 4
  br label %cleanup105

for.end:                                          ; preds = %for.body.lr.ph
  %conv16 = trunc i32 %.162 to i8
  %conv14 = trunc i32 %5 to i8
  %obj_num15 = getelementptr inbounds %struct.mcp251xfd_rx_ring, ptr %call9.i.i, i32 0, i32 5
  %9 = ptrtoint ptr %obj_num15 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv14, ptr %obj_num15, align 4
  %obj_size17 = getelementptr inbounds %struct.mcp251xfd_rx_ring, ptr %call9.i.i, i32 0, i32 6
  %10 = ptrtoint ptr %obj_size17 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv16, ptr %obj_size17, align 1
  %11 = ptrtoint ptr %rx to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call9.i.i, ptr %rx, align 4
  %conv19 = and i32 %5, 255
  %mul22 = mul nuw nsw i32 %conv19, %.162
  %sub23 = sub nsw i32 %sub, %mul22
  %rx_ring_num = getelementptr inbounds %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 17
  %12 = ptrtoint ptr %rx_ring_num to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %rx_ring_num, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mcp251xfd_ring_alloc.__UNIQUE_ID_ddebug474, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mcp251xfd_ring_alloc, %do.end37)) #4
          to label %if.then32 [label %do.end37], !srcloc !22

if.then32:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  %ndev = getelementptr inbounds %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 2
  %13 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ndev, align 8
  %mul33 = mul nuw nsw i32 %., 12
  %mul34 = select i1 %tobool.i.not, i32 128, i32 288
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @mcp251xfd_ring_alloc.__UNIQUE_ID_ddebug474, ptr noundef %14, ptr noundef nonnull @.str.3, i32 noundef %., i32 noundef 12, i32 noundef %mul33, i32 noundef %., i32 noundef %.163, i32 noundef %mul34) #4
  br label %do.end37

do.end37:                                         ; preds = %if.then32, %for.end
  %rx38 = getelementptr inbounds %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 16
  %15 = ptrtoint ptr %rx_ring_num to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %rx_ring_num, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %cmp43187.not = icmp eq i8 %16, 0
  br i1 %cmp43187.not, label %do.end37.do.body84_crit_edge, label %do.body47.lr.ph

do.end37.do.body84_crit_edge:                     ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body84

do.body47.lr.ph:                                  ; preds = %do.end37
  %ndev62 = getelementptr inbounds %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 2
  br label %do.body47

do.body47:                                        ; preds = %for.inc77.do.body47_crit_edge, %do.body47.lr.ph
  %rx_ring.0190.in = phi ptr [ %rx38, %do.body47.lr.ph ], [ %add.ptr81, %for.inc77.do.body47_crit_edge ]
  %i.1188 = phi i32 [ 0, %do.body47.lr.ph ], [ %inc78, %for.inc77.do.body47_crit_edge ]
  %17 = ptrtoint ptr %rx_ring.0190.in to i32
  call void @__asan_load4_noabort(i32 %17)
  %rx_ring.0190 = load ptr, ptr %rx_ring.0190.in, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mcp251xfd_ring_alloc.__UNIQUE_ID_ddebug475, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mcp251xfd_ring_alloc, %for.inc77)) #4
          to label %if.then61 [label %for.inc77], !srcloc !22

if.then61:                                        ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #6
  %18 = ptrtoint ptr %ndev62 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ndev62, align 8
  %obj_num63 = getelementptr inbounds %struct.mcp251xfd_rx_ring, ptr %rx_ring.0190, i32 0, i32 5
  %20 = ptrtoint ptr %obj_num63 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %obj_num63, align 4
  %conv64 = zext i8 %21 to i32
  %obj_size65 = getelementptr inbounds %struct.mcp251xfd_rx_ring, ptr %rx_ring.0190, i32 0, i32 6
  %22 = ptrtoint ptr %obj_size65 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %obj_size65, align 1
  %conv66 = zext i8 %23 to i32
  %mul71 = mul nuw nsw i32 %conv66, %conv64
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @mcp251xfd_ring_alloc.__UNIQUE_ID_ddebug475, ptr noundef %19, ptr noundef nonnull @.str.4, i32 noundef %i.1188, i32 noundef %conv64, i32 noundef %conv66, i32 noundef %mul71) #4
  br label %for.inc77

for.inc77:                                        ; preds = %if.then61, %do.body47
  %inc78 = add nuw nsw i32 %i.1188, 1
  %add.ptr81 = getelementptr ptr, ptr %rx38, i32 %inc78
  %24 = ptrtoint ptr %rx_ring_num to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %rx_ring_num, align 4
  %conv42 = zext i8 %25 to i32
  %cmp43 = icmp ult i32 %inc78, %conv42
  br i1 %cmp43, label %for.inc77.do.body47_crit_edge, label %for.inc77.do.body84_crit_edge

for.inc77.do.body84_crit_edge:                    ; preds = %for.inc77
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body84

for.inc77.do.body47_crit_edge:                    ; preds = %for.inc77
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body47

do.body84:                                        ; preds = %for.inc77.do.body84_crit_edge, %do.end37.do.body84_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mcp251xfd_ring_alloc.__UNIQUE_ID_ddebug476, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mcp251xfd_ring_alloc, %cleanup105)) #4
          to label %if.then98 [label %cleanup105], !srcloc !22

if.then98:                                        ; preds = %do.body84
  call void @__sanitizer_cov_trace_pc() #6
  %ndev99 = getelementptr inbounds %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 2
  %26 = ptrtoint ptr %ndev99 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ndev99, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @mcp251xfd_ring_alloc.__UNIQUE_ID_ddebug476, ptr noundef %27, ptr noundef nonnull @.str.5, i32 noundef %sub23) #4
  br label %cleanup105

cleanup105:                                       ; preds = %if.then98, %do.body84, %cleanup.thread
  %retval.2 = phi i32 [ 0, %if.then98 ], [ -12, %cleanup.thread ], [ 0, %do.body84 ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dql_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @mcp251xfd_crc16_compute(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

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
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !11}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18, !19}
!llvm.ident = !{!20}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/can/spi/mcp251xfd/mcp251xfd-ring.c", i32 252, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @mcp251xfd_ring_alloc.__UNIQUE_ID_ddebug474, !1, !"__UNIQUE_ID_ddebug474", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/can/spi/mcp251xfd/mcp251xfd-ring.c", i32 258, i32 3}
!8 = !{ptr @mcp251xfd_ring_alloc.__UNIQUE_ID_ddebug475, !7, !"__UNIQUE_ID_ddebug475", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/net/can/spi/mcp251xfd/mcp251xfd-ring.c", i32 264, i32 2}
!11 = !{ptr @mcp251xfd_ring_alloc.__UNIQUE_ID_ddebug476, !10, !"__UNIQUE_ID_ddebug476", i1 false, i1 false}
!12 = !{i32 1, !"wchar_size", i32 2}
!13 = !{i32 1, !"min_enum_size", i32 4}
!14 = !{i32 8, !"branch-target-enforcement", i32 0}
!15 = !{i32 8, !"sign-return-address", i32 0}
!16 = !{i32 8, !"sign-return-address-all", i32 0}
!17 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!18 = !{i32 7, !"uwtable", i32 1}
!19 = !{i32 7, !"frame-pointer", i32 2}
!20 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!21 = !{i32 0, i32 33}
!22 = !{i64 2148815708, i64 2148815713, i64 2148815726, i64 2148815770, i64 2148815804, i64 2148815825}
