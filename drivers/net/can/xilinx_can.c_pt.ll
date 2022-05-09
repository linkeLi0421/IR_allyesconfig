; ModuleID = '/llk/IR_all_yes/drivers/net/can/xilinx_can.c_pt.bc'
source_filename = "../drivers/net/can/xilinx_can.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.xcan_devtype_data = type { i32, i32, ptr, ptr, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.can_bittiming_const = type { [16 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.130, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.144, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.130 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.144 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.can_berr_counter = type { i16, i16 }
%struct.xcan_priv = type { %struct.can_priv, %struct.spinlock, i32, i32, i32, %struct.napi_struct, ptr, ptr, ptr, ptr, i32, ptr, ptr, %struct.xcan_devtype_data }
%struct.can_priv = type { ptr, %struct.can_device_stats, ptr, ptr, %struct.can_bittiming, %struct.can_bittiming, ptr, %struct.can_tdc, i32, ptr, ptr, i32, i32, %struct.can_clock, i32, ptr, i16, ptr, [2 x i16], i32, ptr, i32, i32, i32, i32, %struct.delayed_work, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.can_device_stats = type { i32, i32, i32, i32, i32, i32 }
%struct.can_bittiming = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.can_tdc = type { i32, i32, i32 }
%struct.can_clock = type { i32 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.canfd_frame = type { i32, i8, i8, i8, i8, [64 x i8] }
%struct.can_frame = type { i32, %union.anon.146, i8, i8, i8, [8 x i8] }
%union.anon.146 = type { i8 }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
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
%struct.can_skb_priv = type { i32, i32, i32, [4 x i8], [0 x %struct.can_frame] }

@__initcall__kmod_xilinx_can__471_1866_xcan_driver_init6 = internal global ptr @xcan_driver_init, section ".initcall6.init", align 4
@xcan_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @xcan_probe, ptr @xcan_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @xcan_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @xcan_dev_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_xcan_driver_exit = internal global ptr @xcan_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file472 = internal constant [43 x i8] c"xilinx_can.file=drivers/net/can/xilinx_can\00", section ".modinfo", align 1
@__UNIQUE_ID_license473 = internal constant [23 x i8] c"xilinx_can.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author474 = internal constant [29 x i8] c"xilinx_can.author=Xilinx Inc\00", section ".modinfo", align 1
@__UNIQUE_ID_description475 = internal constant [44 x i8] c"xilinx_can.description=Xilinx CAN interface\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"xilinx_can\00", [21 x i8] zeroinitializer }, align 32
@xcan_of_match = internal constant { [5 x %struct.of_device_id], [236 x i8] } { [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"xlnx,zynq-can-1.0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @xcan_zynq_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"xlnx,axi-can-1.00.a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @xcan_axi_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"xlnx,canfd-1.0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @xcan_canfd_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"xlnx,canfd-2.0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @xcan_canfd2_data }, %struct.of_device_id zeroinitializer], [236 x i8] zeroinitializer }, align 32
@xcan_dev_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @xcan_suspend, ptr @xcan_resume, ptr @xcan_suspend, ptr @xcan_resume, ptr @xcan_suspend, ptr @xcan_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @xcan_runtime_suspend, ptr @xcan_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@xcan_axi_data = internal constant { %struct.xcan_devtype_data, [40 x i8] } { %struct.xcan_devtype_data { i32 0, i32 0, ptr @xcan_bittiming_const, ptr @.str.21, i32 4, i32 7 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tx-mailbox-count\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tx-fifo-depth\00", [18 x i8] zeroinitializer }, align 32
@xcan_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 1692, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"missing %s property\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"xcan_probe\00", [21 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/net/can/xilinx_can.c\00", [35 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@xcan_probe._entry_ptr = internal global ptr @xcan_probe._entry, section ".printk_index", align 4
@.str.8 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rx-fifo-depth\00", [18 x i8] zeroinitializer }, align 32
@xcan_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.4, ptr @.str.5, i32 1700, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"missing rx-fifo-depth property (mailbox mode is not supported)\0A\00", [32 x i8] zeroinitializer }, align 32
@xcan_probe._entry_ptr.11 = internal global ptr @xcan_probe._entry.9, section ".printk_index", align 4
@xcan_data_bittiming_const_canfd = internal global { %struct.can_bittiming_const, [48 x i8] } { %struct.can_bittiming_const { [16 x i8] c"xilinx_can\00\00\00\00\00\00", i32 1, i32 16, i32 1, i32 8, i32 8, i32 1, i32 256, i32 1 }, [48 x i8] zeroinitializer }, align 32
@xcan_data_bittiming_const_canfd2 = internal global { %struct.can_bittiming_const, [48 x i8] } { %struct.can_bittiming_const { [16 x i8] c"xilinx_can\00\00\00\00\00\00", i32 1, i32 32, i32 1, i32 16, i32 16, i32 2, i32 256, i32 1 }, [48 x i8] zeroinitializer }, align 32
@xcan_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&priv->tx_lock\00", [17 x i8] zeroinitializer }, align 32
@xcan_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @xcan_open, ptr @xcan_close, ptr @xcan_start_xmit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @can_change_mtu, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"can_clk\00", [24 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"device clock not found\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"bus clock not found\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: pm_runtime_get failed(%d)\0A\00", [33 x i8] zeroinitializer }, align 32
@xcan_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.4, ptr @.str.5, i32 1810, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"fail to register failed (err=%d)\0A\00", [62 x i8] zeroinitializer }, align 32
@xcan_probe._entry_ptr.19 = internal global ptr @xcan_probe._entry.17, section ".printk_index", align 4
@xcan_probe.__UNIQUE_ID_ddebug470 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.5, ptr @.str.20, i8 1, i8 -56, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"reg_base=0x%p irq=%d clock=%d, tx buffers: actual %d, using %d\0A\00", [32 x i8] zeroinitializer }, align 32
@xcan_bittiming_const = internal constant { %struct.can_bittiming_const, [48 x i8] } { %struct.can_bittiming_const { [16 x i8] c"xilinx_can\00\00\00\00\00\00", i32 1, i32 16, i32 1, i32 8, i32 4, i32 1, i32 256, i32 1 }, [48 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"s_axi_aclk\00", [21 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"xcan_chip_start failed!\0A\00", [39 x i8] zeroinitializer }, align 32
@xcan_chip_start.__UNIQUE_ID_ddebug461 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.23, ptr @.str.5, ptr @.str.24, i8 0, i8 127, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"xcan_chip_start\00", [16 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"status:#x%08x\0A\00", [17 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.25 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"timed out for config mode\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"BUG! Cannot set bittiming - CAN is not in config mode\0A\00", [41 x i8] zeroinitializer }, align 32
@xcan_set_bittiming.__UNIQUE_ID_ddebug460 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.5, ptr @.str.28, i8 0, i8 111, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"xcan_set_bittiming\00", [45 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"BRPR=0x%08x, BTR=0x%08x\0A\00", [39 x i8] zeroinitializer }, align 32
@__func__.xcan_get_berr_counter = private unnamed_addr constant [22 x i8] c"xcan_get_berr_counter\00", align 1
@__func__.xcan_open = private unnamed_addr constant [10 x i8] c"xcan_open\00", align 1
@.str.29 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"irq allocation for CAN failed\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mode resetting failed!\0A\00", [40 x i8] zeroinitializer }, align 32
@xcan_tx_interrupt.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.31 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"RX match not finished, frame discarded\0A\00", [56 x i8] zeroinitializer }, align 32
@xcan_err_interrupt.__UNIQUE_ID_ddebug466 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.32, ptr @.str.5, ptr @.str.33, i8 1, i8 19, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"xcan_err_interrupt\00", [45 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: error status register:0x%x\0A\00", [32 x i8] zeroinitializer }, align 32
@xcan_chip_stop.__UNIQUE_ID_ddebug467 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.34, ptr @.str.5, ptr @.str.35, i8 1, i8 87, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"xcan_chip_stop\00", [17 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"set_reset_mode() Failed\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"BUG!, TX full when queue awake!\0A\00", [63 x i8] zeroinitializer }, align 32
@can_skb_headroom_valid.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.37 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/can/skb.h\00", [40 x i8] zeroinitializer }, align 32
@xcan_zynq_data = internal constant { %struct.xcan_devtype_data, [40 x i8] } { %struct.xcan_devtype_data { i32 1, i32 1, ptr @xcan_bittiming_const, ptr @.str.38, i32 4, i32 7 }, [40 x i8] zeroinitializer }, align 32
@xcan_canfd_data = internal constant { %struct.xcan_devtype_data, [40 x i8] } { %struct.xcan_devtype_data { i32 2, i32 30, ptr @xcan_bittiming_const_canfd, ptr @.str.21, i32 8, i32 16 }, [40 x i8] zeroinitializer }, align 32
@xcan_canfd2_data = internal constant { %struct.xcan_devtype_data, [40 x i8] } { %struct.xcan_devtype_data { i32 3, i32 62, ptr @xcan_bittiming_const_canfd2, ptr @.str.21, i32 8, i32 16 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pclk\00", [27 x i8] zeroinitializer }, align 32
@xcan_bittiming_const_canfd = internal constant { %struct.can_bittiming_const, [48 x i8] } { %struct.can_bittiming_const { [16 x i8] c"xilinx_can\00\00\00\00\00\00", i32 1, i32 64, i32 1, i32 16, i32 16, i32 1, i32 256, i32 1 }, [48 x i8] zeroinitializer }, align 32
@xcan_bittiming_const_canfd2 = internal constant { %struct.can_bittiming_const, [48 x i8] } { %struct.can_bittiming_const { [16 x i8] c"xilinx_can\00\00\00\00\00\00", i32 1, i32 256, i32 1, i32 128, i32 128, i32 2, i32 256, i32 1 }, [48 x i8] zeroinitializer }, align 32
@xcan_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.5, i32 1532, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"pm_runtime_force_resume failed on resume\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"xcan_resume\00", [20 x i8] zeroinitializer }, align 32
@xcan_resume._entry_ptr = internal global ptr @xcan_resume._entry, section ".printk_index", align 4
@xcan_resume._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.40, ptr @.str.5, i32 1539, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"xcan_chip_start failed on resume\0A\00", [62 x i8] zeroinitializer }, align 32
@xcan_resume._entry_ptr.43 = internal global ptr @xcan_resume._entry.41, section ".printk_index", align 4
@xcan_runtime_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.5, i32 1583, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Cannot enable clock.\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"xcan_runtime_resume\00", [44 x i8] zeroinitializer }, align 32
@xcan_runtime_resume._entry_ptr = internal global ptr @xcan_runtime_resume._entry, section ".printk_index", align 4
@xcan_runtime_resume._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.5, i32 1588, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@xcan_runtime_resume._entry_ptr.47 = internal global ptr @xcan_runtime_resume._entry.46, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 12, i64 13]
@__sancov_gen_cov_switch_values.48 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.49 = private unnamed_addr constant [12 x i8] c"xcan_driver\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 1856, i32 31 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 1860, i32 11 }
@___asan_gen_.55 = private unnamed_addr constant [14 x i8] c"xcan_of_match\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 1644, i32 34 }
@___asan_gen_.58 = private unnamed_addr constant [16 x i8] c"xcan_dev_pm_ops\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 1596, i32 32 }
@___asan_gen_.61 = private unnamed_addr constant [14 x i8] c"xcan_axi_data\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 1610, i32 39 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 1686, i32 9 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 1686, i32 30 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 1691, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 1696, i32 48 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 1699, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant [32 x i8] c"xcan_data_bittiming_const_canfd\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 242, i32 35 }
@___asan_gen_.100 = private unnamed_addr constant [33 x i8] c"xcan_data_bittiming_const_canfd2\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 268, i32 35 }
@___asan_gen_.103 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 1758, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant [16 x i8] c"xcan_netdev_ops\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 1491, i32 36 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 1774, i32 43 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 1777, i32 9 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 1784, i32 9 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 1794, i32 20 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 1810, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 1823, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant [21 x i8] c"xcan_bittiming_const\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 216, i32 41 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 1615, i32 18 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 531, i32 21 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 507, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 370, i32 22 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 405, i32 9 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 442, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 1400, i32 20 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 1407, i32 20 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 1029, i32 20 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 1101, i32 2 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 1373, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 722, i32 20 }
@___asan_gen_.185 = private unnamed_addr constant [27 x i8] c"../include/linux/can/skb.h\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 104, i32 6 }
@___asan_gen_.187 = private unnamed_addr constant [15 x i8] c"xcan_zynq_data\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 1601, i32 39 }
@___asan_gen_.190 = private unnamed_addr constant [16 x i8] c"xcan_canfd_data\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 1618, i32 39 }
@___asan_gen_.193 = private unnamed_addr constant [17 x i8] c"xcan_canfd2_data\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 1630, i32 39 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 1607, i32 18 }
@___asan_gen_.199 = private unnamed_addr constant [27 x i8] c"xcan_bittiming_const_canfd\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 229, i32 41 }
@___asan_gen_.202 = private unnamed_addr constant [28 x i8] c"xcan_bittiming_const_canfd2\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 255, i32 41 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 1532, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 1539, i32 4 }
@___asan_gen_.226 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 1583, i32 3 }
@___asan_gen_.229 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.230 = private constant [32 x i8] c"../drivers/net/can/xilinx_can.c\00", align 1
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 1588, i32 3 }
@llvm.compiler.used = appending global [75 x ptr] [ptr @__UNIQUE_ID_author474, ptr @__UNIQUE_ID_description475, ptr @__UNIQUE_ID_file472, ptr @__UNIQUE_ID_license473, ptr @__exitcall_xcan_driver_exit, ptr @__initcall__kmod_xilinx_can__471_1866_xcan_driver_init6, ptr @xcan_driver_exit, ptr @xcan_probe._entry, ptr @xcan_probe._entry.17, ptr @xcan_probe._entry.9, ptr @xcan_probe._entry_ptr, ptr @xcan_probe._entry_ptr.11, ptr @xcan_probe._entry_ptr.19, ptr @xcan_resume._entry, ptr @xcan_resume._entry.41, ptr @xcan_resume._entry_ptr, ptr @xcan_resume._entry_ptr.43, ptr @xcan_runtime_resume._entry, ptr @xcan_runtime_resume._entry.46, ptr @xcan_runtime_resume._entry_ptr, ptr @xcan_runtime_resume._entry_ptr.47, ptr @xcan_driver, ptr @.str, ptr @xcan_of_match, ptr @xcan_dev_pm_ops, ptr @xcan_axi_data, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @xcan_data_bittiming_const_canfd, ptr @xcan_data_bittiming_const_canfd2, ptr @xcan_probe.__key, ptr @.str.12, ptr @xcan_netdev_ops, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @xcan_bittiming_const, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @xcan_zynq_data, ptr @xcan_canfd_data, ptr @xcan_canfd2_data, ptr @.str.38, ptr @xcan_bittiming_const_canfd, ptr @xcan_bittiming_const_canfd2, ptr @.str.39, ptr @.str.40, ptr @.str.42, ptr @.str.44, ptr @.str.45], section "llvm.metadata"
@0 = internal global [61 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xcan_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xcan_of_match to i32), i32 980, i32 1216, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xcan_dev_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xcan_axi_data to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xcan_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xcan_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xcan_data_bittiming_const_canfd to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xcan_data_bittiming_const_canfd2 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xcan_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xcan_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xcan_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xcan_bittiming_const to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xcan_zynq_data to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xcan_canfd_data to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xcan_canfd2_data to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xcan_bittiming_const_canfd to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xcan_bittiming_const_canfd2 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xcan_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xcan_resume._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xcan_runtime_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xcan_runtime_resume._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @xcan_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @xcan_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @xcan_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @xcan_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xcan_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %hw_tx_max = alloca i32, align 4
  %hw_rx_max = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hw_tx_max) #6
  %0 = ptrtoint ptr %hw_tx_max to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %hw_tx_max, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hw_rx_max) #6
  %1 = ptrtoint ptr %hw_rx_max to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %hw_rx_max, align 4
  %call = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #6
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call3 = tail call ptr @of_match_device(ptr noundef nonnull @xcan_of_match, ptr noundef %dev) #6
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.if.end7_crit_edge, label %land.lhs.true

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

land.lhs.true:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %data = getelementptr inbounds %struct.of_device_id, ptr %call3, i32 0, i32 3
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  %tobool4.not = icmp eq ptr %4, null
  %spec.select = select i1 %tobool4.not, ptr @xcan_axi_data, ptr %4
  br label %if.end7

if.end7:                                          ; preds = %land.lhs.true, %if.end.if.end7_crit_edge
  %devtype.0 = phi ptr [ @xcan_axi_data, %if.end.if.end7_crit_edge ], [ %spec.select, %land.lhs.true ]
  %flags = getelementptr inbounds %struct.xcan_devtype_data, ptr %devtype.0, i32 0, i32 1
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags, align 4
  %and = and i32 %6, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool8.not, ptr @.str.2, ptr @.str.1
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %7 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %of_node, align 8
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %8, ptr noundef nonnull %cond, ptr noundef nonnull %hw_tx_max, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp = icmp slt i32 %call.i.i, 0
  br i1 %cmp, label %do.end, label %if.end13

do.end:                                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.3, ptr noundef nonnull %cond) #9
  br label %cleanup

if.end13:                                         ; preds = %if.end7
  %9 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %of_node, align 8
  %call.i.i258 = call i32 @of_property_read_variable_u32_array(ptr noundef %10, ptr noundef nonnull @.str.8, ptr noundef nonnull %hw_rx_max, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i258)
  %cmp17 = icmp slt i32 %call.i.i258, 0
  br i1 %cmp17, label %do.end21, label %if.end23

do.end21:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10) #9
  br label %cleanup

if.end23:                                         ; preds = %if.end13
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags, align 4
  %13 = and i32 %12, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %.not = icmp eq i32 %13, 1
  br i1 %.not, label %if.then31, label %if.end23.if.end34_crit_edge

if.end23.if.end34_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34

if.then31:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %hw_tx_max to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %hw_tx_max, align 4
  %16 = call i32 @llvm.umin.i32(i32 %15, i32 2)
  br label %if.end34

if.end34:                                         ; preds = %if.then31, %if.end23.if.end34_crit_edge
  %tx_max.0 = phi i32 [ %16, %if.then31 ], [ 1, %if.end23.if.end34_crit_edge ]
  %17 = ptrtoint ptr %hw_rx_max to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %hw_rx_max, align 4
  %call35 = call ptr @alloc_candev_mqs(i32 noundef 648, i32 noundef %tx_max.0, i32 noundef 1, i32 noundef 1) #6
  %tobool36.not = icmp eq ptr %call35, null
  br i1 %tobool36.not, label %if.end34.cleanup_crit_edge, label %if.end38

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end38:                                         ; preds = %if.end34
  %add.ptr.i = getelementptr i8, ptr %call35, i32 2304
  %dev41 = getelementptr i8, ptr %call35, i32 2904
  %19 = ptrtoint ptr %dev41 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %dev, ptr %dev41, align 8
  %bittiming_const = getelementptr inbounds %struct.xcan_devtype_data, ptr %devtype.0, i32 0, i32 2
  %20 = ptrtoint ptr %bittiming_const to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bittiming_const, align 4
  %bittiming_const42 = getelementptr i8, ptr %call35, i32 2332
  %22 = ptrtoint ptr %bittiming_const42 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %bittiming_const42, align 4
  %do_set_mode = getelementptr i8, ptr %call35, i32 2596
  %23 = ptrtoint ptr %do_set_mode to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @xcan_do_set_mode, ptr %do_set_mode, align 4
  %do_get_berr_counter = getelementptr i8, ptr %call35, i32 2608
  %24 = ptrtoint ptr %do_get_berr_counter to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @xcan_get_berr_counter, ptr %do_get_berr_counter, align 8
  %ctrlmode_supported = getelementptr i8, ptr %call35, i32 2480
  %25 = ptrtoint ptr %ctrlmode_supported to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 17, ptr %ctrlmode_supported, align 8
  %26 = ptrtoint ptr %devtype.0 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %devtype.0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %27)
  %cmp46 = icmp eq i32 %27, 2
  br i1 %cmp46, label %if.then47, label %if.end38.if.end49_crit_edge

if.end38.if.end49_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end49

if.then47:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  %data_bittiming_const = getelementptr i8, ptr %call35, i32 2336
  %28 = ptrtoint ptr %data_bittiming_const to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @xcan_data_bittiming_const_canfd, ptr %data_bittiming_const, align 8
  %29 = ptrtoint ptr %devtype.0 to i32
  call void @__asan_load4_noabort(i32 %29)
  %.pr = load i32, ptr %devtype.0, align 4
  br label %if.end49

if.end49:                                         ; preds = %if.then47, %if.end38.if.end49_crit_edge
  %30 = phi i32 [ %.pr, %if.then47 ], [ %27, %if.end38.if.end49_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %30)
  %cmp51 = icmp eq i32 %30, 3
  br i1 %cmp51, label %if.then52, label %if.end49.if.end55_crit_edge

if.end49.if.end55_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end55

if.then52:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #8
  %data_bittiming_const54 = getelementptr i8, ptr %call35, i32 2336
  %31 = ptrtoint ptr %data_bittiming_const54 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @xcan_data_bittiming_const_canfd2, ptr %data_bittiming_const54, align 8
  br label %if.end55

if.end55:                                         ; preds = %if.then52, %if.end49.if.end55_crit_edge
  %32 = ptrtoint ptr %devtype.0 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %devtype.0, align 4
  %34 = and i32 %33, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %34)
  %switch = icmp eq i32 %34, 2
  br i1 %switch, label %if.then60, label %if.end55.if.end63_crit_edge

if.end55.if.end63_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end63

if.then60:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #8
  %35 = ptrtoint ptr %ctrlmode_supported to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %ctrlmode_supported, align 8
  %or = or i32 %36, 32
  store i32 %or, ptr %ctrlmode_supported, align 8
  br label %if.end63

if.end63:                                         ; preds = %if.then60, %if.end55.if.end63_crit_edge
  %reg_base = getelementptr i8, ptr %call35, i32 2908
  %37 = ptrtoint ptr %reg_base to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call, ptr %reg_base, align 4
  %tx_max64 = getelementptr i8, ptr %call35, i32 2668
  %38 = ptrtoint ptr %tx_max64 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %tx_max.0, ptr %tx_max64, align 4
  %devtype65 = getelementptr i8, ptr %call35, i32 2924
  %39 = call ptr @memcpy(ptr %devtype65, ptr %devtype.0, i32 24)
  %tx_lock = getelementptr i8, ptr %call35, i32 2616
  call void @__raw_spin_lock_init(ptr noundef %tx_lock, ptr noundef nonnull @.str.12, ptr noundef nonnull @xcan_probe.__key, i16 noundef signext 3) #6
  %call70 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %cmp71 = icmp slt i32 %call70, 0
  br i1 %cmp71, label %if.end63.err_free_crit_edge, label %if.end73

if.end63.err_free_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_free

if.end73:                                         ; preds = %if.end63
  %irq = getelementptr inbounds %struct.net_device, ptr %call35, i32 0, i32 64
  %40 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %call70, ptr %irq, align 4
  %flags74 = getelementptr inbounds %struct.net_device, ptr %call35, i32 0, i32 14
  %41 = ptrtoint ptr %flags74 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %flags74, align 8
  %or75 = or i32 %42, 262144
  store i32 %or75, ptr %flags74, align 8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %43 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call35, ptr %driver_data.i.i, align 4
  %parent = getelementptr inbounds %struct.net_device, ptr %call35, i32 0, i32 133, i32 1
  %44 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %dev, ptr %parent, align 8
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %call35, i32 0, i32 16
  %45 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @xcan_netdev_ops, ptr %netdev_ops, align 8
  %call79 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.13) #6
  %can_clk = getelementptr i8, ptr %call35, i32 2920
  %46 = ptrtoint ptr %can_clk to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call79, ptr %can_clk, align 8
  %cmp.i259 = icmp ugt ptr %call79, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i259, label %if.then82, label %if.end87

if.then82:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #8
  %47 = ptrtoint ptr %call79 to i32
  %call86 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %47, ptr noundef nonnull @.str.14) #6
  br label %err_free

if.end87:                                         ; preds = %if.end73
  %bus_clk_name = getelementptr inbounds %struct.xcan_devtype_data, ptr %devtype.0, i32 0, i32 3
  %48 = ptrtoint ptr %bus_clk_name to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %bus_clk_name, align 4
  %call89 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef %49) #6
  %bus_clk = getelementptr i8, ptr %call35, i32 2916
  %50 = ptrtoint ptr %bus_clk to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call89, ptr %bus_clk, align 4
  %cmp.i260 = icmp ugt ptr %call89, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i260, label %if.then92, label %if.end97

if.then92:                                        ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #8
  %51 = ptrtoint ptr %call89 to i32
  %call96 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %51, ptr noundef nonnull @.str.15) #6
  br label %err_free

if.end97:                                         ; preds = %if.end87
  %write_reg = getelementptr i8, ptr %call35, i32 2900
  %52 = ptrtoint ptr %write_reg to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @xcan_write_reg_le, ptr %write_reg, align 4
  %read_reg = getelementptr i8, ptr %call35, i32 2896
  %53 = ptrtoint ptr %read_reg to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @xcan_read_reg_le, ptr %read_reg, align 8
  call void @pm_runtime_enable(ptr noundef %dev) #6
  %call.i = call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp101 = icmp slt i32 %call.i, 0
  br i1 %cmp101, label %if.then102, label %if.end103

if.then102:                                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @netdev_err(ptr noundef nonnull %call35, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.4, i32 noundef %call.i) #9
  br label %err_disableclks

if.end103:                                        ; preds = %if.end97
  %54 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %read_reg, align 8
  %call105 = call i32 %55(ptr noundef %add.ptr.i, i32 noundef 24) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call105)
  %cmp106.not = icmp eq i32 %call105, 1
  br i1 %cmp106.not, label %if.end103.if.end110_crit_edge, label %if.then107

if.end103.if.end110_crit_edge:                    ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end110

if.then107:                                       ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #8
  %56 = ptrtoint ptr %write_reg to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @xcan_write_reg_be, ptr %write_reg, align 4
  %57 = ptrtoint ptr %read_reg to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @xcan_read_reg_be, ptr %read_reg, align 8
  br label %if.end110

if.end110:                                        ; preds = %if.then107, %if.end103.if.end110_crit_edge
  %58 = ptrtoint ptr %can_clk to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %can_clk, align 8
  %call112 = call i32 @clk_get_rate(ptr noundef %59) #6
  %clock = getelementptr i8, ptr %call35, i32 2440
  %60 = ptrtoint ptr %clock to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %call112, ptr %clock, align 8
  %napi = getelementptr i8, ptr %call35, i32 2672
  call void @netif_napi_add(ptr noundef nonnull %call35, ptr noundef %napi, ptr noundef nonnull @xcan_rx_poll, i32 noundef %18) #6
  %call114 = call i32 @register_candev(ptr noundef nonnull %call35) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114)
  %tobool115.not = icmp eq i32 %call114, 0
  br i1 %tobool115.not, label %if.end121, label %do.end119

do.end119:                                        ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18, i32 noundef %call114) #9
  br label %err_disableclks

if.end121:                                        ; preds = %if.end110
  %call.i261 = call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 5) #6
  %flags125 = getelementptr i8, ptr %call35, i32 2928
  %61 = ptrtoint ptr %flags125 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %flags125, align 4
  %and126 = and i32 %62, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and126)
  %tobool127.not = icmp eq i32 %and126, 0
  br i1 %tobool127.not, label %if.end121.do.body133_crit_edge, label %if.then128

if.end121.do.body133_crit_edge:                   ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body133

if.then128:                                       ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #8
  %63 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %write_reg, align 4
  call void %64(ptr noundef %add.ptr.i, i32 noundef 2564, i32 noundef 0) #6
  %65 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %write_reg, align 4
  call void %66(ptr noundef %add.ptr.i, i32 noundef 2560, i32 noundef 0) #6
  br label %do.body133

do.body133:                                       ; preds = %if.then128, %if.end121.do.body133_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xcan_probe.__UNIQUE_ID_ddebug470, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@xcan_probe, %cleanup)) #6
          to label %if.then140 [label %cleanup], !srcloc !143

if.then140:                                       ; preds = %do.body133
  call void @__sanitizer_cov_trace_pc() #8
  %67 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %reg_base, align 4
  %69 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %irq, align 4
  %71 = ptrtoint ptr %clock to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %clock, align 8
  %73 = ptrtoint ptr %hw_tx_max to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %hw_tx_max, align 4
  %75 = ptrtoint ptr %tx_max64 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %tx_max64, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @xcan_probe.__UNIQUE_ID_ddebug470, ptr noundef nonnull %call35, ptr noundef nonnull @.str.20, ptr noundef %68, i32 noundef %70, i32 noundef %72, i32 noundef %74, i32 noundef %76) #6
  br label %cleanup

err_disableclks:                                  ; preds = %do.end119, %if.then102
  %ret.0 = phi i32 [ %call.i, %if.then102 ], [ %call114, %do.end119 ]
  %77 = ptrtoint ptr %dev41 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %dev41, align 8
  %call.i262 = call i32 @__pm_runtime_idle(ptr noundef %78, i32 noundef 5) #6
  call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #6
  br label %err_free

err_free:                                         ; preds = %err_disableclks, %if.then92, %if.then82, %if.end63.err_free_crit_edge
  %ret.1 = phi i32 [ %call70, %if.end63.err_free_crit_edge ], [ %call86, %if.then82 ], [ %call96, %if.then92 ], [ %ret.0, %err_disableclks ]
  call void @free_candev(ptr noundef nonnull %call35) #6
  br label %cleanup

cleanup:                                          ; preds = %err_free, %if.then140, %do.body133, %if.end34.cleanup_crit_edge, %do.end21, %do.end, %if.then
  %retval.0 = phi i32 [ -12, %if.end34.cleanup_crit_edge ], [ 0, %if.then140 ], [ %2, %if.then ], [ %call.i.i, %do.end ], [ %call.i.i258, %do.end21 ], [ %ret.1, %err_free ], [ 0, %do.body133 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hw_rx_max) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hw_tx_max) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xcan_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @unregister_candev(ptr noundef %1) #6
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #6
  tail call void @free_candev(ptr noundef %1) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_candev_mqs(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xcan_do_set_mode(ptr noundef %ndev, i32 noundef %mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %mode)
  %cond = icmp eq i32 %mode, 1
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %call = tail call fastcc i32 @xcan_chip_start(ptr noundef %ndev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %ndev, ptr noundef nonnull @.str.22) #9
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 103
  %0 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then ], [ %call, %if.end ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xcan_get_berr_counter(ptr noundef %ndev, ptr nocapture noundef writeonly %bec) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr i8, ptr %ndev, i32 2904
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %ndev, ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.xcan_get_berr_counter, i32 noundef %call.i) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %read_reg = getelementptr i8, ptr %ndev, i32 2896
  %2 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read_reg, align 8
  %call4 = tail call i32 %3(ptr noundef %add.ptr.i, i32 noundef 16) #6
  %4 = trunc i32 %call4 to i16
  %conv = and i16 %4, 255
  %5 = ptrtoint ptr %bec to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %conv, ptr %bec, align 2
  %6 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read_reg, align 8
  %call6 = tail call i32 %7(ptr noundef %add.ptr.i, i32 noundef 16) #6
  %8 = trunc i32 %call6 to i16
  %9 = lshr i16 %8, 8
  %rxerr = getelementptr inbounds %struct.can_berr_counter, ptr %bec, i32 0, i32 1
  %10 = ptrtoint ptr %rxerr to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %rxerr, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call.i, %if.then ], [ 0, %if.end ]
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 8
  %call.i23 = tail call i32 @__pm_runtime_idle(ptr noundef %12, i32 noundef 5) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xcan_write_reg_le(ptr nocapture noundef readonly %priv, i32 noundef %reg, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_base = getelementptr inbounds %struct.xcan_priv, ptr %priv, i32 0, i32 9
  %0 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %reg
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !144
  tail call void @arm_heavy_mb() #6
  %2 = tail call i32 @llvm.bswap.i32(i32 %val) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #6, !srcloc !145
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xcan_read_reg_le(ptr nocapture noundef readonly %priv, i32 noundef %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_base = getelementptr inbounds %struct.xcan_priv, ptr %priv, i32 0, i32 9
  %0 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %reg
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !146
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !147
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xcan_write_reg_be(ptr nocapture noundef readonly %priv, i32 noundef %reg, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !148
  tail call void @arm_heavy_mb() #6
  %reg_base = getelementptr inbounds %struct.xcan_priv, ptr %priv, i32 0, i32 9
  %0 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %reg
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %val) #6, !srcloc !145
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xcan_read_reg_be(ptr nocapture noundef readonly %priv, i32 noundef %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_base = getelementptr inbounds %struct.xcan_priv, ptr %priv, i32 0, i32 9
  %0 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %reg
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !146
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !149
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_napi_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xcan_rx_poll(ptr noundef %napi, i32 noundef %quota) #2 align 64 {
entry:
  %cf.i57 = alloca ptr, align 4
  %cf.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.napi_struct, ptr %napi, i32 0, i32 7
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  %flags.i = getelementptr i8, ptr %1, i32 2928
  %write_reg.i = getelementptr i8, ptr %1, i32 2900
  %read_reg.i = getelementptr i8, ptr %1, i32 2896
  %stats1.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36
  %rx_bytes.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 2
  %rx_dropped.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 6
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %work_done.0 = phi i32 [ 0, %entry ], [ %work_done.1, %if.end ]
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else22.i, label %if.then.i

if.then.i:                                        ; preds = %while.cond
  %4 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write_reg.i, align 4
  call void %5(ptr noundef %add.ptr.i, i32 noundef 36, i32 noundef 16) #6
  %6 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read_reg.i, align 8
  %call.i = call i32 %7(ptr noundef %add.ptr.i, i32 noundef 232) #6
  %8 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags.i, align 4
  %and3.i = and i32 %9, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  %..i = select i1 %tobool4.not.i, i32 16128, i32 32512
  %and6.i = and i32 %..i, %call.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp eq i32 %and6.i, 0
  br i1 %tobool7.not.i, label %if.then.i.xcan_rx_fifo_get_next_frame.exit.thread_crit_edge, label %if.end9.i

if.then.i.xcan_rx_fifo_get_next_frame.exit.thread_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %xcan_rx_fifo_get_next_frame.exit.thread

if.end9.i:                                        ; preds = %if.then.i
  br i1 %tobool4.not.i, label %if.else16.i, label %if.then14.i

if.then14.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  %and15.i = and i32 %call.i, 63
  %mul.i = mul nuw nsw i32 %and15.i, 72
  %add.i = add nuw nsw i32 %mul.i, 8448
  br label %xcan_rx_fifo_get_next_frame.exit

if.else16.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  %and17.i = and i32 %call.i, 31
  %mul18.i = mul nuw nsw i32 %and17.i, 72
  %add19.i = add nuw nsw i32 %mul18.i, 4352
  br label %xcan_rx_fifo_get_next_frame.exit

if.else22.i:                                      ; preds = %while.cond
  %10 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %read_reg.i, align 8
  %call24.i = call i32 %11(ptr noundef %add.ptr.i, i32 noundef 28) #6
  %and25.i = and i32 %call24.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i)
  %tobool26.not.i = icmp eq i32 %and25.i, 0
  br i1 %tobool26.not.i, label %if.else22.i.xcan_rx_fifo_get_next_frame.exit.thread_crit_edge, label %if.else22.i.xcan_rx_fifo_get_next_frame.exit_crit_edge

if.else22.i.xcan_rx_fifo_get_next_frame.exit_crit_edge: ; preds = %if.else22.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %xcan_rx_fifo_get_next_frame.exit

if.else22.i.xcan_rx_fifo_get_next_frame.exit.thread_crit_edge: ; preds = %if.else22.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %xcan_rx_fifo_get_next_frame.exit.thread

xcan_rx_fifo_get_next_frame.exit.thread:          ; preds = %if.else22.i.xcan_rx_fifo_get_next_frame.exit.thread_crit_edge, %if.then.i.xcan_rx_fifo_get_next_frame.exit.thread_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %work_done.0, i32 %quota)
  %cmp288 = icmp slt i32 %work_done.0, %quota
  br label %while.end

xcan_rx_fifo_get_next_frame.exit:                 ; preds = %if.else22.i.xcan_rx_fifo_get_next_frame.exit_crit_edge, %if.else16.i, %if.then14.i
  %offset.2.i = phi i32 [ 80, %if.else22.i.xcan_rx_fifo_get_next_frame.exit_crit_edge ], [ %add19.i, %if.else16.i ], [ %add.i, %if.then14.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %work_done.0, i32 %quota)
  %cmp2 = icmp slt i32 %work_done.0, %quota
  br i1 %cmp2, label %while.body, label %xcan_rx_fifo_get_next_frame.exit.while.end_crit_edge

xcan_rx_fifo_get_next_frame.exit.while.end_crit_edge: ; preds = %xcan_rx_fifo_get_next_frame.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body:                                       ; preds = %xcan_rx_fifo_get_next_frame.exit
  %12 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags.i, align 4
  %and.i49 = and i32 %13, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i49)
  %tobool.not = icmp eq i32 %and.i49, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %while.body
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cf.i) #6
  %14 = ptrtoint ptr %cf.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 -1 to ptr), ptr %cf.i, align 4, !annotation !150
  %15 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %read_reg.i, align 8
  %call2.i = call i32 %16(ptr noundef %add.ptr.i, i32 noundef %offset.2.i) #6
  %17 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %read_reg.i, align 8
  %add4.i = add nuw nsw i32 %offset.2.i, 4
  %call5.i = call i32 %18(ptr noundef %add.ptr.i, i32 noundef %add4.i) #6
  %and.i53 = and i32 %call5.i, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i53)
  %tobool.not.i54 = icmp eq i32 %and.i53, 0
  br i1 %tobool.not.i54, label %if.end.i, label %if.end.thread.i

if.end.i:                                         ; preds = %if.then
  %call7.i = call ptr @alloc_can_skb(ptr noundef %1, ptr noundef nonnull %cf.i) #6
  %tobool8.not.i = icmp eq ptr %call7.i, null
  br i1 %tobool8.not.i, label %if.end.i.if.then12.i_crit_edge, label %if.else19.i, !prof !151

if.end.i.if.then12.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then12.i

if.end.thread.i:                                  ; preds = %if.then
  %call6.i = call ptr @alloc_canfd_skb(ptr noundef %1, ptr noundef nonnull %cf.i) #6
  %tobool8.not153.i = icmp eq ptr %call6.i, null
  br i1 %tobool8.not153.i, label %if.end.thread.i.if.then12.i_crit_edge, label %if.then16.i, !prof !151

if.end.thread.i.if.then12.i_crit_edge:            ; preds = %if.end.thread.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then12.i

if.then12.i:                                      ; preds = %if.end.thread.i.if.then12.i_crit_edge, %if.end.i.if.then12.i_crit_edge
  %19 = ptrtoint ptr %rx_dropped.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rx_dropped.i, align 4
  %inc.i = add i32 %20, 1
  store i32 %inc.i, ptr %rx_dropped.i, align 4
  br label %xcanfd_rx.exit

if.then16.i:                                      ; preds = %if.end.thread.i
  call void @__sanitizer_cov_trace_pc() #8
  %shr.i = lshr i32 %call5.i, 28
  %conv.i = trunc i32 %shr.i to i8
  %call18.i = call zeroext i8 @can_fd_dlc2len(i8 noundef zeroext %conv.i) #6
  br label %if.end30.i

if.else19.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call5.i)
  %cmp.i = icmp sgt i32 %call5.i, -1
  %shr21.i = lshr i32 %call5.i, 28
  %phi.cast.i = trunc i32 %shr21.i to i8
  %cond.i = select i1 %cmp.i, i8 %phi.cast.i, i8 8
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.else19.i, %if.then16.i
  %cond.sink.i = phi i8 [ %cond.i, %if.else19.i ], [ %call18.i, %if.then16.i ]
  %skb.0154156.i = phi ptr [ %call7.i, %if.else19.i ], [ %call6.i, %if.then16.i ]
  %21 = ptrtoint ptr %cf.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %.sink.i = load ptr, ptr %cf.i, align 4
  %len29.i = getelementptr inbounds %struct.canfd_frame, ptr %.sink.i, i32 0, i32 1
  %22 = ptrtoint ptr %len29.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %cond.sink.i, ptr %len29.i, align 4
  %and31.i = and i32 %call2.i, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31.i)
  %tobool32.not.i = icmp eq i32 %and31.i, 0
  br i1 %tobool32.not.i, label %if.else47.i, label %if.then33.i

if.then33.i:                                      ; preds = %if.end30.i
  %and34.i = lshr i32 %call2.i, 3
  %shr35.i = and i32 %and34.i, 536608768
  %23 = ptrtoint ptr %.sink.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %shr35.i, ptr %.sink.i, align 8
  %and36.i = lshr i32 %call2.i, 1
  %shr37.i = and i32 %and36.i, 262143
  %24 = ptrtoint ptr %cf.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cf.i, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 8
  %or.i = or i32 %27, %shr37.i
  store i32 %or.i, ptr %25, align 8
  %28 = load ptr, ptr %cf.i, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %28, align 8
  %or40.i = or i32 %30, -2147483648
  store i32 %or40.i, ptr %28, align 8
  %and41.i = and i32 %call2.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41.i)
  %tobool42.not.i = icmp eq i32 %and41.i, 0
  br i1 %tobool42.not.i, label %if.then33.i.if.end59.i_crit_edge, label %if.then33.i.if.end59.sink.split.i_crit_edge

if.then33.i.if.end59.sink.split.i_crit_edge:      ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end59.sink.split.i

if.then33.i.if.end59.i_crit_edge:                 ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end59.i

if.else47.i:                                      ; preds = %if.end30.i
  %shr49.i = lshr i32 %call2.i, 21
  %31 = ptrtoint ptr %.sink.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %shr49.i, ptr %.sink.i, align 8
  %tobool.not.not.i = xor i1 %tobool.not.i54, true
  %and53.i = and i32 %call2.i, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53.i)
  %tobool54.not.i = icmp eq i32 %and53.i, 0
  %or.cond.i = select i1 %tobool.not.not.i, i1 true, i1 %tobool54.not.i
  br i1 %or.cond.i, label %if.else47.i.if.end59.i_crit_edge, label %if.else47.i.if.end59.sink.split.i_crit_edge

if.else47.i.if.end59.sink.split.i_crit_edge:      ; preds = %if.else47.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end59.sink.split.i

if.else47.i.if.end59.i_crit_edge:                 ; preds = %if.else47.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end59.i

if.end59.sink.split.i:                            ; preds = %if.else47.i.if.end59.sink.split.i_crit_edge, %if.then33.i.if.end59.sink.split.i_crit_edge
  %32 = ptrtoint ptr %cf.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %.sink172.i = load ptr, ptr %cf.i, align 4
  %33 = ptrtoint ptr %.sink172.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %.sink172.i, align 8
  %or57.i = or i32 %34, 1073741824
  store i32 %or57.i, ptr %.sink172.i, align 8
  br label %if.end59.i

if.end59.i:                                       ; preds = %if.end59.sink.split.i, %if.else47.i.if.end59.i_crit_edge, %if.then33.i.if.end59.i_crit_edge
  %35 = ptrtoint ptr %cf.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %cf.i, align 4
  %len77164.i = getelementptr inbounds %struct.canfd_frame, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %len77164.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %len77164.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %cmp79166.not.i = icmp eq i8 %38, 0
  br i1 %tobool.not.i54, label %for.cond76.preheader.i, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %if.end59.i
  br i1 %cmp79166.not.i, label %for.cond.preheader.i.if.end94.i_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.if.end94.i_crit_edge:        ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end94.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %add67.i = add nuw nsw i32 %offset.2.i, 8
  br label %for.body.i

for.cond76.preheader.i:                           ; preds = %if.end59.i
  br i1 %cmp79166.not.i, label %for.cond76.preheader.i.if.end94.i_crit_edge, label %for.body81.lr.ph.i

for.cond76.preheader.i.if.end94.i_crit_edge:      ; preds = %for.cond76.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end94.i

for.body81.lr.ph.i:                               ; preds = %for.cond76.preheader.i
  %add82.i = add nuw nsw i32 %offset.2.i, 8
  br label %for.body81.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0163.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add74.i, %for.body.i.for.body.i_crit_edge ]
  %dwindex.0162.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc73.i, %for.body.i.for.body.i_crit_edge ]
  %mul.i55 = shl i32 %dwindex.0162.i, 2
  %add68.i = add nuw nsw i32 %add67.i, %mul.i55
  %39 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %read_reg.i, align 8
  %call70.i = call i32 %40(ptr noundef %add.ptr.i, i32 noundef %add68.i) #6
  %41 = ptrtoint ptr %cf.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %cf.i, align 4
  %data72.i = getelementptr inbounds %struct.canfd_frame, ptr %42, i32 0, i32 5
  %add.ptr.i56 = getelementptr i8, ptr %data72.i, i32 %i.0163.i
  %43 = ptrtoint ptr %add.ptr.i56 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %call70.i, ptr %add.ptr.i56, align 4
  %inc73.i = add nuw nsw i32 %dwindex.0162.i, 1
  %add74.i = add nuw nsw i32 %i.0163.i, 4
  %44 = load ptr, ptr %cf.i, align 4
  %len63.i = getelementptr inbounds %struct.canfd_frame, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %len63.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %len63.i, align 4
  %conv64.i = zext i8 %46 to i32
  %cmp65.i = icmp ult i32 %add74.i, %conv64.i
  br i1 %cmp65.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.if.end94.i_crit_edge

for.body.i.if.end94.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end94.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.body81.i:                                     ; preds = %for.body81.i.for.body81.i_crit_edge, %for.body81.lr.ph.i
  %i.1167.i = phi i32 [ 0, %for.body81.lr.ph.i ], [ %add92.i, %for.body81.i.for.body81.i_crit_edge ]
  %47 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %read_reg.i, align 8
  %add84.i = add nuw nsw i32 %add82.i, %i.1167.i
  %call85.i = call i32 %48(ptr noundef %add.ptr.i, i32 noundef %add84.i) #6
  %49 = ptrtoint ptr %cf.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %cf.i, align 4
  %data88.i = getelementptr inbounds %struct.canfd_frame, ptr %50, i32 0, i32 5
  %add.ptr90.i = getelementptr i8, ptr %data88.i, i32 %i.1167.i
  %51 = ptrtoint ptr %add.ptr90.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %call85.i, ptr %add.ptr90.i, align 4
  %add92.i = add nuw nsw i32 %i.1167.i, 4
  %52 = load ptr, ptr %cf.i, align 4
  %len77.i = getelementptr inbounds %struct.canfd_frame, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %len77.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %len77.i, align 4
  %conv78.i = zext i8 %54 to i32
  %cmp79.i = icmp ult i32 %add92.i, %conv78.i
  br i1 %cmp79.i, label %for.body81.i.for.body81.i_crit_edge, label %for.body81.i.if.end94.i_crit_edge

for.body81.i.if.end94.i_crit_edge:                ; preds = %for.body81.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end94.i

for.body81.i.for.body81.i_crit_edge:              ; preds = %for.body81.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body81.i

if.end94.i:                                       ; preds = %for.body81.i.if.end94.i_crit_edge, %for.body.i.if.end94.i_crit_edge, %for.cond76.preheader.i.if.end94.i_crit_edge, %for.cond.preheader.i.if.end94.i_crit_edge
  %55 = ptrtoint ptr %cf.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %cf.i, align 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %56, align 8
  %and96.i = and i32 %58, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and96.i)
  %tobool97.not.i = icmp eq i32 %and96.i, 0
  br i1 %tobool97.not.i, label %if.then98.i, label %if.end94.i.if.end102.i_crit_edge

if.end94.i.if.end102.i_crit_edge:                 ; preds = %if.end94.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end102.i

if.then98.i:                                      ; preds = %if.end94.i
  call void @__sanitizer_cov_trace_pc() #8
  %len99.i = getelementptr inbounds %struct.canfd_frame, ptr %56, i32 0, i32 1
  %59 = ptrtoint ptr %len99.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %len99.i, align 4
  %conv100.i = zext i8 %60 to i32
  %61 = ptrtoint ptr %rx_bytes.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %rx_bytes.i, align 4
  %add101.i = add i32 %62, %conv100.i
  store i32 %add101.i, ptr %rx_bytes.i, align 4
  br label %if.end102.i

if.end102.i:                                      ; preds = %if.then98.i, %if.end94.i.if.end102.i_crit_edge
  %63 = ptrtoint ptr %stats1.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %stats1.i, align 4
  %inc103.i = add i32 %64, 1
  store i32 %inc103.i, ptr %stats1.i, align 4
  %call104.i = call i32 @netif_receive_skb(ptr noundef nonnull %skb.0154156.i) #6
  br label %xcanfd_rx.exit

xcanfd_rx.exit:                                   ; preds = %if.end102.i, %if.then12.i
  %retval.0.i = phi i32 [ 0, %if.then12.i ], [ 1, %if.end102.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cf.i) #6
  br label %if.end

if.else:                                          ; preds = %while.body
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cf.i57) #6
  %65 = ptrtoint ptr %cf.i57 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr inttoptr (i32 -1 to ptr), ptr %cf.i57, align 4, !annotation !150
  %call2.i60 = call ptr @alloc_can_skb(ptr noundef %1, ptr noundef nonnull %cf.i57) #6
  %tobool.not.i61 = icmp eq ptr %call2.i60, null
  br i1 %tobool.not.i61, label %if.then.i64, label %if.end.i72, !prof !151

if.then.i64:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %66 = ptrtoint ptr %rx_dropped.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %rx_dropped.i, align 4
  %inc.i63 = add i32 %67, 1
  store i32 %inc.i63, ptr %rx_dropped.i, align 4
  br label %xcan_rx.exit

if.end.i72:                                       ; preds = %if.else
  %68 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %read_reg.i, align 8
  %call6.i66 = call i32 %69(ptr noundef %add.ptr.i, i32 noundef %offset.2.i) #6
  %70 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %read_reg.i, align 8
  %add8.i = add nuw nsw i32 %offset.2.i, 4
  %call9.i = call i32 %71(ptr noundef %add.ptr.i, i32 noundef %add8.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call9.i)
  %cmp.i67 = icmp sgt i32 %call9.i, -1
  %shr.i68 = lshr i32 %call9.i, 28
  %phi.cast.i69 = trunc i32 %shr.i68 to i8
  %cond.i70 = select i1 %cmp.i67, i8 %phi.cast.i69, i8 8
  %72 = ptrtoint ptr %cf.i57 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %cf.i57, align 4
  %74 = getelementptr inbounds %struct.can_frame, ptr %73, i32 0, i32 1
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %cond.i70, ptr %74, align 4
  %and.i71 = and i32 %call6.i66, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i71)
  %tobool16.not.i = icmp eq i32 %and.i71, 0
  br i1 %tobool16.not.i, label %if.else.i, label %if.then17.i

if.then17.i:                                      ; preds = %if.end.i72
  %and18.i = lshr i32 %call6.i66, 3
  %shr19.i = and i32 %and18.i, 536608768
  %76 = ptrtoint ptr %73 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %shr19.i, ptr %73, align 8
  %and20.i = lshr i32 %call6.i66, 1
  %shr21.i73 = and i32 %and20.i, 262143
  %77 = ptrtoint ptr %cf.i57 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %cf.i57, align 4
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %78, align 8
  %or.i74 = or i32 %80, %shr21.i73
  store i32 %or.i74, ptr %78, align 8
  %81 = load ptr, ptr %cf.i57, align 4
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %81, align 8
  %or24.i = or i32 %83, -2147483648
  store i32 %or24.i, ptr %81, align 8
  %and25.i75 = and i32 %call6.i66, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i75)
  %tobool26.not.i76 = icmp eq i32 %and25.i75, 0
  br i1 %tobool26.not.i76, label %if.then17.i.if.end40.i_crit_edge, label %if.then17.i.if.end40.sink.split.i_crit_edge

if.then17.i.if.end40.sink.split.i_crit_edge:      ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end40.sink.split.i

if.then17.i.if.end40.i_crit_edge:                 ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end40.i

if.else.i:                                        ; preds = %if.end.i72
  %shr32.i = lshr i32 %call6.i66, 21
  %84 = ptrtoint ptr %73 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %shr32.i, ptr %73, align 8
  %and34.i77 = and i32 %call6.i66, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34.i77)
  %tobool35.not.i = icmp eq i32 %and34.i77, 0
  br i1 %tobool35.not.i, label %if.else.i.if.end40.i_crit_edge, label %if.else.i.if.end40.sink.split.i_crit_edge

if.else.i.if.end40.sink.split.i_crit_edge:        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end40.sink.split.i

if.else.i.if.end40.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end40.i

if.end40.sink.split.i:                            ; preds = %if.else.i.if.end40.sink.split.i_crit_edge, %if.then17.i.if.end40.sink.split.i_crit_edge
  %85 = ptrtoint ptr %cf.i57 to i32
  call void @__asan_load4_noabort(i32 %85)
  %.sink102.i = load ptr, ptr %cf.i57, align 4
  %86 = ptrtoint ptr %.sink102.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %.sink102.i, align 8
  %or38.i = or i32 %87, 1073741824
  store i32 %or38.i, ptr %.sink102.i, align 8
  br label %if.end40.i

if.end40.i:                                       ; preds = %if.end40.sink.split.i, %if.else.i.if.end40.i_crit_edge, %if.then17.i.if.end40.i_crit_edge
  %88 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %read_reg.i, align 8
  %add42.i = add nuw nsw i32 %offset.2.i, 8
  %call43.i = call i32 %89(ptr noundef %add.ptr.i, i32 noundef %add42.i) #6
  %90 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %read_reg.i, align 8
  %add45.i = add nuw nsw i32 %offset.2.i, 12
  %call46.i = call i32 %91(ptr noundef %add.ptr.i, i32 noundef %add45.i) #6
  %92 = ptrtoint ptr %cf.i57 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %cf.i57, align 4
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %93, align 8
  %and49.i = and i32 %95, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49.i)
  %tobool50.not.i = icmp eq i32 %and49.i, 0
  br i1 %tobool50.not.i, label %if.then51.i, label %if.end40.i.if.end69.i_crit_edge

if.end40.i.if.end69.i_crit_edge:                  ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end69.i

if.then51.i:                                      ; preds = %if.end40.i
  %96 = getelementptr inbounds %struct.can_frame, ptr %93, i32 0, i32 1
  %97 = ptrtoint ptr %96 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %96, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %98)
  %cmp53.not.i = icmp eq i8 %98, 0
  br i1 %cmp53.not.i, label %if.then51.i.if.end66.i_crit_edge, label %if.end58.i

if.then51.i.if.end66.i_crit_edge:                 ; preds = %if.then51.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end66.i

if.end58.i:                                       ; preds = %if.then51.i
  %data57.i = getelementptr inbounds %struct.can_frame, ptr %93, i32 0, i32 5
  %99 = ptrtoint ptr %data57.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %call43.i, ptr %data57.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %98)
  %cmp60.i = icmp ugt i8 %98, 4
  br i1 %cmp60.i, label %if.then62.i, label %if.end58.i.if.end66.i_crit_edge

if.end58.i.if.end66.i_crit_edge:                  ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end66.i

if.then62.i:                                      ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i78 = getelementptr %struct.can_frame, ptr %93, i32 0, i32 5, i32 4
  %100 = ptrtoint ptr %add.ptr.i78 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %call46.i, ptr %add.ptr.i78, align 4
  br label %if.end66.i

if.end66.i:                                       ; preds = %if.then62.i, %if.end58.i.if.end66.i_crit_edge, %if.then51.i.if.end66.i_crit_edge
  %101 = ptrtoint ptr %cf.i57 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %cf.i57, align 4
  %103 = getelementptr inbounds %struct.can_frame, ptr %102, i32 0, i32 1
  %104 = ptrtoint ptr %103 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %103, align 4
  %conv67.i = zext i8 %105 to i32
  %106 = ptrtoint ptr %rx_bytes.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %rx_bytes.i, align 4
  %add68.i80 = add i32 %107, %conv67.i
  store i32 %add68.i80, ptr %rx_bytes.i, align 4
  br label %if.end69.i

if.end69.i:                                       ; preds = %if.end66.i, %if.end40.i.if.end69.i_crit_edge
  %108 = ptrtoint ptr %stats1.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %stats1.i, align 4
  %inc70.i = add i32 %109, 1
  store i32 %inc70.i, ptr %stats1.i, align 4
  %call71.i = call i32 @netif_receive_skb(ptr noundef nonnull %call2.i60) #6
  br label %xcan_rx.exit

xcan_rx.exit:                                     ; preds = %if.end69.i, %if.then.i64
  %retval.0.i81 = phi i32 [ 0, %if.then.i64 ], [ 1, %if.end69.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cf.i57) #6
  br label %if.end

if.end:                                           ; preds = %xcan_rx.exit, %xcanfd_rx.exit
  %call4.pn = phi i32 [ %retval.0.i, %xcanfd_rx.exit ], [ %retval.0.i81, %xcan_rx.exit ]
  %work_done.1 = add i32 %call4.pn, %work_done.0
  %110 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %flags.i, align 4
  %and7 = and i32 %111, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  %112 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %write_reg.i, align 4
  %. = select i1 %tobool8.not, i32 36, i32 232
  call void %113(ptr noundef %add.ptr.i, i32 noundef %., i32 noundef 128) #6
  br label %while.cond

while.end:                                        ; preds = %xcan_rx_fifo_get_next_frame.exit.while.end_crit_edge, %xcan_rx_fifo_get_next_frame.exit.thread
  %cmp290 = phi i1 [ %cmp288, %xcan_rx_fifo_get_next_frame.exit.thread ], [ false, %xcan_rx_fifo_get_next_frame.exit.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %work_done.0)
  %tobool13.not = icmp eq i32 %work_done.0, 0
  br i1 %tobool13.not, label %while.end.if.end15_crit_edge, label %if.then14

while.end.if.end15_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.then14:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  call fastcc void @xcan_update_error_state_after_rxtx(ptr noundef %1)
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %while.end.if.end15_crit_edge
  br i1 %cmp290, label %if.then17, label %if.end15.if.end22_crit_edge

if.end15.if.end22_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

if.then17:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  %call18 = call zeroext i1 @napi_complete_done(ptr noundef %napi, i32 noundef %work_done.0) #6
  %114 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %read_reg.i, align 8
  %call19 = call i32 %115(ptr noundef %add.ptr.i, i32 noundef 32) #6
  %116 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %flags.i, align 4
  %and.i83 = and i32 %117, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i83)
  %tobool.not.i84 = icmp eq i32 %and.i83, 0
  %..i85 = select i1 %tobool.not.i84, i32 128, i32 16
  %or = or i32 %..i85, %call19
  %118 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %write_reg.i, align 4
  call void %119(ptr noundef %add.ptr.i, i32 noundef 32, i32 noundef %or) #6
  br label %if.end22

if.end22:                                         ; preds = %if.then17, %if.end15.if.end22_crit_edge
  ret i32 %work_done.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_candev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_candev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xcan_chip_start(ptr noundef %ndev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %write_reg.i = getelementptr i8, ptr %ndev, i32 2900
  %0 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %write_reg.i, align 4
  tail call void %1(ptr noundef %add.ptr.i, i32 noundef 0, i32 noundef 1) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %2, 100
  %read_reg.i = getelementptr i8, ptr %ndev, i32 2896
  %3 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %read_reg.i, align 8
  %call19.i = tail call i32 %4(ptr noundef %add.ptr.i, i32 noundef 24) #6
  %and10.i = and i32 %call19.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool.not11.i = icmp eq i32 %and10.i, 0
  br i1 %tobool.not11.i, label %entry.while.body.i_crit_edge, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %5 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %set_reset_mode.exit.thread, label %if.end.i

set_reset_mode.exit.thread:                       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %ndev, ptr noundef nonnull @.str.25) #9
  br label %cleanup

if.end.i:                                         ; preds = %while.body.i
  tail call void @usleep_range_state(i32 noundef 500, i32 noundef 10000, i32 noundef 2) #6
  %6 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read_reg.i, align 8
  %call1.i = tail call i32 %7(ptr noundef %add.ptr.i, i32 noundef 24) #6
  %and.i = and i32 %call1.i, 1
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i.while.body.i_crit_edge, label %if.end.i.if.end_crit_edge

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

if.end:                                           ; preds = %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %tx_head.i = getelementptr i8, ptr %ndev, i32 2660
  %8 = ptrtoint ptr %tx_head.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %tx_head.i, align 4
  %tx_tail.i = getelementptr i8, ptr %ndev, i32 2664
  %9 = ptrtoint ptr %tx_tail.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %tx_tail.i, align 8
  %call2 = tail call fastcc i32 @xcan_set_bittiming(ptr noundef %ndev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %flags.i = getelementptr i8, ptr %ndev, i32 2928
  %10 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags.i, align 4
  %and.i60 = and i32 %11, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i60)
  %tobool.not.i61 = icmp eq i32 %and.i60, 0
  %..i = select i1 %tobool.not.i61, i32 128, i32 16
  %and = and i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %spec.select.v = select i1 %tobool.not, i32 3907, i32 134979
  %spec.select = or i32 %..i, %spec.select.v
  %12 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write_reg.i, align 4
  tail call void %13(ptr noundef %add.ptr.i, i32 noundef 32, i32 noundef %spec.select) #6
  %ctrlmode = getelementptr i8, ptr %ndev, i32 2476
  %14 = ptrtoint ptr %ctrlmode to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ctrlmode, align 4
  %and10 = shl i32 %15, 1
  %16 = and i32 %and10, 2
  %17 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags.i, align 4
  %and16 = and i32 %18, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.end5.if.end20_crit_edge, label %if.then18

if.end5.if.end20_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

if.then18:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %write_reg.i, align 4
  tail call void %20(ptr noundef %add.ptr.i, i32 noundef 224, i32 noundef 1) #6
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.end5.if.end20_crit_edge
  %21 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %write_reg.i, align 4
  tail call void %22(ptr noundef %add.ptr.i, i32 noundef 4, i32 noundef %16) #6
  %23 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %write_reg.i, align 4
  tail call void %24(ptr noundef %add.ptr.i, i32 noundef 0, i32 noundef 2) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xcan_chip_start.__UNIQUE_ID_ddebug461, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@xcan_chip_start, %do.end33)) #6
          to label %if.then29 [label %do.end33], !srcloc !143

if.then29:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %read_reg.i, align 8
  %call30 = tail call i32 %26(ptr noundef %add.ptr.i, i32 noundef 24) #6
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @xcan_chip_start.__UNIQUE_ID_ddebug461, ptr noundef %ndev, ptr noundef nonnull @.str.24, i32 noundef %call30) #6
  br label %do.end33

do.end33:                                         ; preds = %if.then29, %if.end20
  %state = getelementptr i8, ptr %ndev, i32 2472
  %27 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %state, align 8
  br label %cleanup

cleanup:                                          ; preds = %do.end33, %if.end.cleanup_crit_edge, %set_reset_mode.exit.thread
  %retval.0 = phi i32 [ 0, %do.end33 ], [ %call2, %if.end.cleanup_crit_edge ], [ -110, %set_reset_mode.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xcan_set_bittiming(ptr noundef %ndev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %read_reg = getelementptr i8, ptr %ndev, i32 2896
  %0 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %read_reg, align 8
  %call2 = tail call i32 %1(ptr noundef %add.ptr.i, i32 noundef 24) #6
  %and = and i32 %call2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @netdev_alert(ptr noundef %ndev, ptr noundef nonnull @.str.26) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %brp = getelementptr i8, ptr %ndev, i32 2368
  %2 = ptrtoint ptr %brp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %brp, align 4
  %sub = add i32 %3, -1
  %prop_seg = getelementptr i8, ptr %ndev, i32 2352
  %4 = ptrtoint ptr %prop_seg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %prop_seg, align 4
  %phase_seg1 = getelementptr i8, ptr %ndev, i32 2356
  %6 = ptrtoint ptr %phase_seg1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %phase_seg1, align 4
  %add = add i32 %5, -1
  %sub3 = add i32 %add, %7
  %phase_seg2 = getelementptr i8, ptr %ndev, i32 2360
  %8 = ptrtoint ptr %phase_seg2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %phase_seg2, align 4
  %sub4 = add i32 %9, -1
  %devtype = getelementptr i8, ptr %ndev, i32 2924
  %btr_ts2_shift = getelementptr i8, ptr %ndev, i32 2940
  %10 = ptrtoint ptr %btr_ts2_shift to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %btr_ts2_shift, align 4
  %shl = shl i32 %sub4, %11
  %or = or i32 %shl, %sub3
  %sjw = getelementptr i8, ptr %ndev, i32 2364
  %12 = ptrtoint ptr %sjw to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sjw, align 4
  %sub5 = add i32 %13, -1
  %btr_sjw_shift = getelementptr i8, ptr %ndev, i32 2944
  %14 = ptrtoint ptr %btr_sjw_shift to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %btr_sjw_shift, align 4
  %shl7 = shl i32 %sub5, %15
  %or8 = or i32 %or, %shl7
  %write_reg = getelementptr i8, ptr %ndev, i32 2900
  %16 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %write_reg, align 4
  tail call void %17(ptr noundef %add.ptr.i, i32 noundef 8, i32 noundef %sub) #6
  %18 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %write_reg, align 4
  tail call void %19(ptr noundef %add.ptr.i, i32 noundef 12, i32 noundef %or8) #6
  %20 = ptrtoint ptr %devtype to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %devtype, align 4
  %22 = and i32 %21, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %22)
  %switch = icmp eq i32 %22, 2
  br i1 %switch, label %if.then14, label %if.end.do.body36_crit_edge

if.end.do.body36_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body36

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %brp15 = getelementptr i8, ptr %ndev, i32 2400
  %23 = ptrtoint ptr %brp15 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %brp15, align 4
  %sub16 = add i32 %24, -1
  %prop_seg17 = getelementptr i8, ptr %ndev, i32 2384
  %25 = ptrtoint ptr %prop_seg17 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %prop_seg17, align 4
  %phase_seg118 = getelementptr i8, ptr %ndev, i32 2388
  %27 = ptrtoint ptr %phase_seg118 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %phase_seg118, align 4
  %add19 = add i32 %26, -1
  %sub20 = add i32 %add19, %28
  %phase_seg221 = getelementptr i8, ptr %ndev, i32 2392
  %29 = ptrtoint ptr %phase_seg221 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %phase_seg221, align 4
  %sub22 = add i32 %30, -1
  %31 = ptrtoint ptr %btr_ts2_shift to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %btr_ts2_shift, align 4
  %shl25 = shl i32 %sub22, %32
  %or26 = or i32 %shl25, %sub20
  %sjw27 = getelementptr i8, ptr %ndev, i32 2396
  %33 = ptrtoint ptr %sjw27 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %sjw27, align 4
  %sub28 = add i32 %34, -1
  %35 = ptrtoint ptr %btr_sjw_shift to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %btr_sjw_shift, align 4
  %shl31 = shl i32 %sub28, %36
  %or32 = or i32 %or26, %shl31
  %37 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %write_reg, align 4
  tail call void %38(ptr noundef %add.ptr.i, i32 noundef 136, i32 noundef %sub16) #6
  %39 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %write_reg, align 4
  tail call void %40(ptr noundef %add.ptr.i, i32 noundef 140, i32 noundef %or32) #6
  br label %do.body36

do.body36:                                        ; preds = %if.then14, %if.end.do.body36_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xcan_set_bittiming.__UNIQUE_ID_ddebug460, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@xcan_set_bittiming, %cleanup)) #6
          to label %if.then42 [label %cleanup], !srcloc !143

if.then42:                                        ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #8
  %41 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %read_reg, align 8
  %call44 = tail call i32 %42(ptr noundef %add.ptr.i, i32 noundef 8) #6
  %43 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %read_reg, align 8
  %call46 = tail call i32 %44(ptr noundef %add.ptr.i, i32 noundef 12) #6
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @xcan_set_bittiming.__UNIQUE_ID_ddebug460, ptr noundef %ndev, ptr noundef nonnull @.str.28, i32 noundef %call44, i32 noundef %call46) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then42, %do.body36, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ 0, %if.then42 ], [ 0, %do.body36 ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_alert(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xcan_open(ptr noundef %ndev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %dev = getelementptr i8, ptr %ndev, i32 2904
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %ndev, ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.xcan_open, i32 noundef %call.i) #9
  br label %err

if.end:                                           ; preds = %entry
  %irq = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 64
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  %irq_flags = getelementptr i8, ptr %ndev, i32 2912
  %4 = ptrtoint ptr %irq_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq_flags, align 8
  %call.i46 = tail call i32 @request_threaded_irq(i32 noundef %3, ptr noundef nonnull @xcan_interrupt, ptr noundef null, i32 noundef %5, ptr noundef %ndev, ptr noundef %ndev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i46)
  %cmp3 = icmp slt i32 %call.i46, 0
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %ndev, ptr noundef nonnull @.str.29) #9
  br label %err

if.end5:                                          ; preds = %if.end
  %write_reg.i = getelementptr i8, ptr %ndev, i32 2900
  %6 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write_reg.i, align 4
  tail call void %7(ptr noundef %add.ptr.i, i32 noundef 0, i32 noundef 1) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %8, 100
  %read_reg.i = getelementptr i8, ptr %ndev, i32 2896
  %9 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %read_reg.i, align 8
  %call19.i = tail call i32 %10(ptr noundef %add.ptr.i, i32 noundef 24) #6
  %and10.i = and i32 %call19.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool.not11.i = icmp eq i32 %and10.i, 0
  br i1 %tobool.not11.i, label %if.end5.while.body.i_crit_edge, label %if.end5.if.end9_crit_edge

if.end5.if.end9_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.end5.while.body.i_crit_edge:                   ; preds = %if.end5
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %if.end5.while.body.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %11 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %if.then8, label %if.end.i

if.end.i:                                         ; preds = %while.body.i
  tail call void @usleep_range_state(i32 noundef 500, i32 noundef 10000, i32 noundef 2) #6
  %12 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %read_reg.i, align 8
  %call1.i = tail call i32 %13(ptr noundef %add.ptr.i, i32 noundef 24) #6
  %and.i = and i32 %call1.i, 1
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i.while.body.i_crit_edge, label %if.end.i.if.end9_crit_edge

if.end.i.if.end9_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

if.then8:                                         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %ndev, ptr noundef nonnull @.str.25) #9
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %ndev, ptr noundef nonnull @.str.30) #9
  br label %err_irq

if.end9:                                          ; preds = %if.end.i.if.end9_crit_edge, %if.end5.if.end9_crit_edge
  %tx_head.i = getelementptr i8, ptr %ndev, i32 2660
  %14 = ptrtoint ptr %tx_head.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %tx_head.i, align 4
  %tx_tail.i = getelementptr i8, ptr %ndev, i32 2664
  %15 = ptrtoint ptr %tx_tail.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %tx_tail.i, align 8
  %call10 = tail call i32 @open_candev(ptr noundef %ndev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool.not = icmp eq i32 %call10, 0
  br i1 %tobool.not, label %if.end12, label %if.end9.err_irq_crit_edge

if.end9.err_irq_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_irq

if.end12:                                         ; preds = %if.end9
  %call13 = tail call fastcc i32 @xcan_chip_start(ptr noundef %ndev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %ndev, ptr noundef nonnull @.str.22) #9
  tail call void @close_candev(ptr noundef %ndev) #6
  br label %err_irq

if.end16:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  %napi = getelementptr i8, ptr %ndev, i32 2672
  tail call void @napi_enable(ptr noundef %napi) #6
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 103
  %16 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %17, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #6
  br label %cleanup

err_irq:                                          ; preds = %if.then15, %if.end9.err_irq_crit_edge, %if.then8
  %ret.0 = phi i32 [ -110, %if.then8 ], [ %call10, %if.end9.err_irq_crit_edge ], [ %call13, %if.then15 ]
  %18 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %irq, align 4
  %call18 = tail call ptr @free_irq(i32 noundef %19, ptr noundef %ndev) #6
  br label %err

err:                                              ; preds = %err_irq, %if.then4, %if.then
  %ret.1 = phi i32 [ %call.i, %if.then ], [ %call.i46, %if.then4 ], [ %ret.0, %err_irq ]
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 8
  %call.i47 = tail call i32 @__pm_runtime_idle(ptr noundef %21, i32 noundef 5) #6
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end16
  %retval.0 = phi i32 [ %ret.1, %err ], [ 0, %if.end16 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xcan_close(ptr noundef %ndev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 103
  %0 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %1, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #6
  %napi = getelementptr i8, ptr %ndev, i32 2672
  tail call void @napi_disable(ptr noundef %napi) #6
  tail call fastcc void @xcan_chip_stop(ptr noundef %ndev)
  %irq = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 64
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  %call1 = tail call ptr @free_irq(i32 noundef %3, ptr noundef %ndev) #6
  tail call void @close_candev(ptr noundef %ndev) #6
  %dev = getelementptr i8, ptr %ndev, i32 2904
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 8
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %5, i32 noundef 5) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xcan_start_xmit(ptr noundef %skb, ptr noundef %ndev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %can_dropped_invalid_skb.exit

if.then.i:                                        ; preds = %entry
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %5 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %6)
  %cmp2.not.i = icmp eq i32 %6, 16
  br i1 %cmp2.not.i, label %lor.rhs.i, label %if.then.i.can_dropped_invalid_skb.exit_crit_edge, !prof !152

if.then.i.can_dropped_invalid_skb.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %can_dropped_invalid_skb.exit

lor.rhs.i:                                        ; preds = %if.then.i
  %len4.i = getelementptr inbounds %struct.canfd_frame, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %len4.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %len4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %8)
  %cmp6.i = icmp ugt i8 %8, 8
  br i1 %cmp6.i, label %lor.rhs.i.can_dropped_invalid_skb.exit_crit_edge, label %lor.rhs.i.if.end34.i_crit_edge, !prof !151

lor.rhs.i.if.end34.i_crit_edge:                   ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34.i

lor.rhs.i.can_dropped_invalid_skb.exit_crit_edge: ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %can_dropped_invalid_skb.exit

if.then14.i:                                      ; preds = %entry
  %len15.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %9 = ptrtoint ptr %len15.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len15.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 72, i32 %10)
  %cmp16.not.i = icmp eq i32 %10, 72
  br i1 %cmp16.not.i, label %lor.rhs18.i, label %if.then14.i.can_dropped_invalid_skb.exit_crit_edge, !prof !152

if.then14.i.can_dropped_invalid_skb.exit_crit_edge: ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %can_dropped_invalid_skb.exit

lor.rhs18.i:                                      ; preds = %if.then14.i
  %len19.i = getelementptr inbounds %struct.canfd_frame, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %len19.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %len19.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %12)
  %cmp21.i = icmp ugt i8 %12, 64
  br i1 %cmp21.i, label %lor.rhs18.i.can_dropped_invalid_skb.exit_crit_edge, label %lor.rhs18.i.if.end34.i_crit_edge, !prof !151

lor.rhs18.i.if.end34.i_crit_edge:                 ; preds = %lor.rhs18.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34.i

lor.rhs18.i.can_dropped_invalid_skb.exit_crit_edge: ; preds = %lor.rhs18.i
  call void @__sanitizer_cov_trace_pc() #8
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
  br i1 %.b70.i.i, label %land.rhs.i.i.can_dropped_invalid_skb.exit_crit_edge, label %if.then.i.i, !prof !152

land.rhs.i.i.can_dropped_invalid_skb.exit_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %can_dropped_invalid_skb.exit

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @can_skb_headroom_valid.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.37, i32 noundef 104, i32 noundef 9, ptr noundef null) #6
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then40.i.i:                                    ; preds = %if.end37.i.i
  call void @__sanitizer_cov_trace_pc() #8
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
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #6
  %tx_dropped.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 36, i32 7
  %34 = ptrtoint ptr %tx_dropped.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %tx_dropped.i, align 4
  %inc.i = add i32 %35, 1
  store i32 %inc.i, ptr %tx_dropped.i, align 4
  br label %cleanup

if.end:                                           ; preds = %if.then40.i.i, %if.end37.i.i.if.end_crit_edge
  %flags = getelementptr i8, ptr %ndev, i32 2928
  %36 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %flags, align 4
  %and = and i32 %37, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %read_reg.i18 = getelementptr i8, ptr %ndev, i32 2896
  %38 = ptrtoint ptr %read_reg.i18 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %read_reg.i18, align 8
  br i1 %tobool.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  %call1.i = tail call i32 %39(ptr noundef %add.ptr.i, i32 noundef 144) #6
  %and.i = and i32 %call1.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.body4.i, label %if.then2.if.then6_crit_edge, !prof !152

if.then2.if.then6_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then6

do.body4.i:                                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  %tx_lock.i = getelementptr i8, ptr %ndev, i32 2616
  %call6.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tx_lock.i) #6
  tail call fastcc void @xcan_write_frame(ptr noundef %ndev, ptr noundef %skb, i32 noundef 256) #6
  %write_reg.i = getelementptr i8, ptr %ndev, i32 2900
  %40 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %write_reg.i, align 4
  tail call void %41(ptr noundef %add.ptr.i, i32 noundef 144, i32 noundef 1) #6
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 103
  %42 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %_tx.i.i.i, align 128
  %state.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %43, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i.i) #6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tx_lock.i, i32 noundef %call6.i) #6
  br label %cleanup

if.else:                                          ; preds = %if.end
  %call1.i19 = tail call i32 %39(ptr noundef %add.ptr.i, i32 noundef 24) #6
  %and.i20 = and i32 %call1.i19, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i20)
  %tobool.not.i21 = icmp eq i32 %and.i20, 0
  br i1 %tobool.not.i21, label %do.body4.i24, label %if.else.if.then6_crit_edge, !prof !152

if.else.if.then6_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then6

do.body4.i24:                                     ; preds = %if.else
  %tx_lock.i22 = getelementptr i8, ptr %ndev, i32 2616
  %call6.i23 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tx_lock.i22) #6
  tail call fastcc void @xcan_write_frame(ptr noundef %ndev, ptr noundef %skb, i32 noundef 48) #6
  %tx_max.i = getelementptr i8, ptr %ndev, i32 2668
  %44 = ptrtoint ptr %tx_max.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %tx_max.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %45)
  %cmp9.i = icmp ugt i32 %45, 1
  br i1 %cmp9.i, label %if.then11.i, label %do.body4.i24.if.end12.i_crit_edge

do.body4.i24.if.end12.i_crit_edge:                ; preds = %do.body4.i24
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12.i

if.then11.i:                                      ; preds = %do.body4.i24
  call void @__sanitizer_cov_trace_pc() #8
  %write_reg.i25 = getelementptr i8, ptr %ndev, i32 2900
  %46 = ptrtoint ptr %write_reg.i25 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %write_reg.i25, align 4
  tail call void %47(ptr noundef %add.ptr.i, i32 noundef 36, i32 noundef 16384) #6
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then11.i, %do.body4.i24.if.end12.i_crit_edge
  %tx_head.i = getelementptr i8, ptr %ndev, i32 2660
  %48 = ptrtoint ptr %tx_head.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %tx_head.i, align 4
  %tx_tail.i = getelementptr i8, ptr %ndev, i32 2664
  %50 = ptrtoint ptr %tx_tail.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %tx_tail.i, align 8
  %sub.i = sub i32 %49, %51
  %52 = ptrtoint ptr %tx_max.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %tx_max.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %53)
  %cmp14.i = icmp eq i32 %sub.i, %53
  br i1 %cmp14.i, label %if.then16.i, label %if.end12.i.if.end17.i_crit_edge

if.end12.i.if.end17.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17.i

if.then16.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  %_tx.i.i.i26 = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 103
  %54 = ptrtoint ptr %_tx.i.i.i26 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %_tx.i.i.i26, align 128
  %state.i.i.i27 = getelementptr inbounds %struct.netdev_queue, ptr %55, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i.i27) #6
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.then16.i, %if.end12.i.if.end17.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tx_lock.i22, i32 noundef %call6.i23) #6
  br label %cleanup

if.then6:                                         ; preds = %if.else.if.then6_crit_edge, %if.then2.if.then6_crit_edge
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %ndev, ptr noundef nonnull @.str.36) #9
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 103
  %56 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %57, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %if.end17.i, %do.body4.i, %can_dropped_invalid_skb.exit
  %retval.0 = phi i32 [ 16, %if.then6 ], [ 0, %can_dropped_invalid_skb.exit ], [ 0, %if.end17.i ], [ 0, %do.body4.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @can_change_mtu(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xcan_interrupt(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev_id, i32 2304
  %flags.i = getelementptr i8, ptr %dev_id, i32 2928
  %0 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %..i = select i1 %tobool.not.i, i32 128, i32 16
  %read_reg = getelementptr i8, ptr %dev_id, i32 2896
  %2 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read_reg, align 8
  %call2 = tail call i32 %3(ptr noundef %add.ptr.i, i32 noundef 28) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %call2, 3072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.end.if.end5_crit_edge, label %if.then4

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.then4:                                         ; preds = %if.end
  %write_reg = getelementptr i8, ptr %dev_id, i32 2900
  %4 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write_reg, align 4
  tail call void %5(ptr noundef %add.ptr.i, i32 noundef 36, i32 noundef 3072) #6
  %and.i52 = and i32 %call2, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i52)
  %tobool.not.i53 = icmp eq i32 %and.i52, 0
  br i1 %tobool.not.i53, label %if.then4.if.end.i_crit_edge, label %if.then.i

if.then4.if.end.i_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  %state.i = getelementptr i8, ptr %dev_id, i32 2472
  %6 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 5, ptr %state.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then4.if.end.i_crit_edge
  %and1.i = and i32 %call2, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end5_crit_edge, label %if.then3.i

if.end.i.if.end5_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %state5.i = getelementptr i8, ptr %dev_id, i32 2472
  %7 = ptrtoint ptr %state5.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %state5.i, align 8
  br label %if.end5

if.end5:                                          ; preds = %if.then3.i, %if.end.i.if.end5_crit_edge, %if.end.if.end5_crit_edge
  %and6 = and i32 %call2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.end5.if.end9_crit_edge, label %if.then8

if.end5.if.end9_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.then8:                                         ; preds = %if.end5
  %tx_lock.i = getelementptr i8, ptr %dev_id, i32 2616
  %call4.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tx_lock.i) #6
  %tx_head.i = getelementptr i8, ptr %dev_id, i32 2660
  %8 = ptrtoint ptr %tx_head.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tx_head.i, align 4
  %tx_tail.i = getelementptr i8, ptr %dev_id, i32 2664
  %10 = ptrtoint ptr %tx_tail.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tx_tail.i, align 8
  %sub.i = sub i32 %9, %11
  %12 = zext i32 %sub.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %sub.i, label %if.then54.i [
    i32 0, label %land.rhs.i
    i32 1, label %if.else.i
  ]

land.rhs.i:                                       ; preds = %if.then8
  %.b180.i = load i1, ptr @xcan_tx_interrupt.__already_done, align 1
  br i1 %.b180.i, label %land.rhs.i.if.then49.i_crit_edge, label %if.then.i54, !prof !152

land.rhs.i.if.then49.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then49.i

if.then.i54:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @xcan_tx_interrupt.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1250, i32 noundef 9, ptr noundef null) #6
  br label %if.then49.i

if.then49.i:                                      ; preds = %if.then.i54, %land.rhs.i.if.then49.i_crit_edge
  %write_reg.i = getelementptr i8, ptr %dev_id, i32 2900
  %13 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %write_reg.i, align 4
  tail call void %14(ptr noundef %add.ptr.i, i32 noundef 36, i32 noundef 2) #6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tx_lock.i, i32 noundef %call4.i) #6
  br label %if.end9

if.then54.i:                                      ; preds = %if.then8
  %tx_max.i = getelementptr i8, ptr %dev_id, i32 2668
  %15 = ptrtoint ptr %tx_max.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tx_max.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %16)
  %cmp56.i = icmp ugt i32 %sub.i, %16
  br i1 %cmp56.i, label %do.end73.i, label %if.then54.i.land.rhs88.lr.ph.i_crit_edge, !prof !151

if.then54.i.land.rhs88.lr.ph.i_crit_edge:         ; preds = %if.then54.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs88.lr.ph.i

do.end73.i:                                       ; preds = %if.then54.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1261, i32 noundef 9, ptr noundef null) #6
  br label %land.rhs88.lr.ph.i

land.rhs88.lr.ph.i:                               ; preds = %do.end73.i, %if.then54.i.land.rhs88.lr.ph.i_crit_edge
  %write_reg125.i = getelementptr i8, ptr %dev_id, i32 2900
  br label %while.body.critedge.i

land.rhs88.i:                                     ; preds = %while.body.critedge.i
  %inc.i = add nuw nsw i32 %inc.i59, 1
  %cmp90.i = icmp eq i32 %inc.i, 100
  br i1 %cmp90.i, label %do.end107.i, label %land.rhs88.i.while.body.critedge.i_crit_edge, !prof !151

land.rhs88.i.while.body.critedge.i_crit_edge:     ; preds = %land.rhs88.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.critedge.i

do.end107.i:                                      ; preds = %land.rhs88.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1274, i32 noundef 9, ptr noundef null) #6
  br label %while.end.i

while.body.critedge.i:                            ; preds = %land.rhs88.i.while.body.critedge.i_crit_edge, %land.rhs88.lr.ph.i
  %inc.i59 = phi i32 [ 1, %land.rhs88.lr.ph.i ], [ %inc.i, %land.rhs88.i.while.body.critedge.i_crit_edge ]
  %17 = ptrtoint ptr %write_reg125.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %write_reg125.i, align 4
  tail call void %18(ptr noundef %add.ptr.i, i32 noundef 36, i32 noundef 2) #6
  %19 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %read_reg, align 8
  %call126.i = tail call i32 %20(ptr noundef %add.ptr.i, i32 noundef 28) #6
  %and.i55 = and i32 %call126.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i55)
  %tobool87.not.i = icmp eq i32 %and.i55, 0
  br i1 %tobool87.not.i, label %while.body.critedge.i.while.end.i_crit_edge, label %land.rhs88.i

while.body.critedge.i.while.end.i_crit_edge:      ; preds = %while.body.critedge.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i

while.end.i:                                      ; preds = %while.body.critedge.i.while.end.i_crit_edge, %do.end107.i
  %and127.i = and i32 %call126.i, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and127.i)
  %tobool128.not.i = icmp eq i32 %and127.i, 0
  br i1 %tobool128.not.i, label %while.end.i.while.body135.lr.ph.i_crit_edge, label %if.end132.i

while.end.i.while.body135.lr.ph.i_crit_edge:      ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body135.lr.ph.i

if.else.i:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  %write_reg131.i = getelementptr i8, ptr %dev_id, i32 2900
  %21 = ptrtoint ptr %write_reg131.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %write_reg131.i, align 4
  tail call void %22(ptr noundef %add.ptr.i, i32 noundef 36, i32 noundef 2) #6
  br label %while.body135.lr.ph.i

if.end132.i:                                      ; preds = %while.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %tobool134.not188.i = icmp eq i32 %sub.i, 0
  br i1 %tobool134.not188.i, label %if.end132.i.while.end142.i_crit_edge, label %if.end132.i.while.body135.lr.ph.i_crit_edge

if.end132.i.while.body135.lr.ph.i_crit_edge:      ; preds = %if.end132.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body135.lr.ph.i

if.end132.i.while.end142.i_crit_edge:             ; preds = %if.end132.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end142.i

while.body135.lr.ph.i:                            ; preds = %if.end132.i.while.body135.lr.ph.i_crit_edge, %if.else.i, %while.end.i.while.body135.lr.ph.i_crit_edge
  %frames_sent.0193.i = phi i32 [ %sub.i, %if.end132.i.while.body135.lr.ph.i_crit_edge ], [ 1, %if.else.i ], [ 1, %while.end.i.while.body135.lr.ph.i_crit_edge ]
  %tx_max137.i = getelementptr i8, ptr %dev_id, i32 2668
  %tx_bytes.i = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 36, i32 3
  %tx_packets.i = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 36, i32 1
  br label %while.body135.i

while.body135.i:                                  ; preds = %while.body135.i.while.body135.i_crit_edge, %while.body135.lr.ph.i
  %frames_sent.1189.i = phi i32 [ %frames_sent.0193.i, %while.body135.lr.ph.i ], [ %dec.i, %while.body135.i.while.body135.i_crit_edge ]
  %dec.i = add i32 %frames_sent.1189.i, -1
  %23 = ptrtoint ptr %tx_tail.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tx_tail.i, align 8
  %25 = ptrtoint ptr %tx_max137.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tx_max137.i, align 4
  %rem.i = urem i32 %24, %26
  %call138.i = tail call i32 @can_get_echo_skb(ptr noundef %dev_id, i32 noundef %rem.i, ptr noundef null) #6
  %27 = ptrtoint ptr %tx_bytes.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tx_bytes.i, align 4
  %add.i = add i32 %28, %call138.i
  store i32 %add.i, ptr %tx_bytes.i, align 4
  %29 = ptrtoint ptr %tx_tail.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %tx_tail.i, align 8
  %inc140.i = add i32 %30, 1
  store i32 %inc140.i, ptr %tx_tail.i, align 8
  %31 = ptrtoint ptr %tx_packets.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %tx_packets.i, align 4
  %inc141.i = add i32 %32, 1
  store i32 %inc141.i, ptr %tx_packets.i, align 4
  %tobool134.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool134.not.i, label %while.body135.i.while.end142.i_crit_edge, label %while.body135.i.while.body135.i_crit_edge

while.body135.i.while.body135.i_crit_edge:        ; preds = %while.body135.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body135.i

while.body135.i.while.end142.i_crit_edge:         ; preds = %while.body135.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end142.i

while.end142.i:                                   ; preds = %while.body135.i.while.end142.i_crit_edge, %if.end132.i.while.end142.i_crit_edge
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 103
  %33 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %_tx.i.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %34) #6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tx_lock.i, i32 noundef %call4.i) #6
  tail call fastcc void @xcan_update_error_state_after_rxtx(ptr noundef %dev_id) #6
  br label %if.end9

if.end9:                                          ; preds = %while.end142.i, %if.then49.i, %if.end5.if.end9_crit_edge
  %and10 = and i32 %call2, 131905
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.end9.if.end14_crit_edge, label %if.then12

if.end9.if.end14_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %write_reg13 = getelementptr i8, ptr %dev_id, i32 2900
  %35 = ptrtoint ptr %write_reg13 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %write_reg13, align 4
  tail call void %36(ptr noundef %add.ptr.i, i32 noundef 36, i32 noundef %and10) #6
  tail call fastcc void @xcan_err_interrupt(ptr noundef %dev_id, i32 noundef %call2)
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.end9.if.end14_crit_edge
  %and15 = and i32 %..i, %call2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.end14.cleanup_crit_edge, label %if.then17

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then17:                                        ; preds = %if.end14
  %37 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %read_reg, align 8
  %call19 = tail call i32 %38(ptr noundef %add.ptr.i, i32 noundef 32) #6
  %neg = xor i32 %..i, -1
  %and20 = and i32 %call19, %neg
  %write_reg21 = getelementptr i8, ptr %dev_id, i32 2900
  %39 = ptrtoint ptr %write_reg21 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %write_reg21, align 4
  tail call void %40(ptr noundef %add.ptr.i, i32 noundef 32, i32 noundef %and20) #6
  %napi = getelementptr i8, ptr %dev_id, i32 2672
  %call.i = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi) #6
  br i1 %call.i, label %if.then.i56, label %if.then17.cleanup_crit_edge

if.then17.cleanup_crit_edge:                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.i56:                                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__napi_schedule(ptr noundef %napi) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then.i56, %if.then17.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %if.end14.cleanup_crit_edge ], [ 1, %if.then17.cleanup_crit_edge ], [ 1, %if.then.i56 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @open_candev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @close_candev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xcan_err_interrupt(ptr noundef %ndev, i32 noundef %isr) unnamed_addr #2 align 64 {
entry:
  %cf = alloca %struct.can_frame, align 8
  %skb_cf = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cf) #6
  %0 = call ptr @memset(ptr %cf, i32 0, i32 16)
  %read_reg = getelementptr i8, ptr %ndev, i32 2896
  %1 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %read_reg, align 8
  %call2 = tail call i32 %2(ptr noundef %add.ptr.i, i32 noundef 20) #6
  %write_reg = getelementptr i8, ptr %ndev, i32 2900
  %3 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %write_reg, align 4
  tail call void %4(ptr noundef %add.ptr.i, i32 noundef 20, i32 noundef %call2) #6
  %and = and i32 %isr, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %state = getelementptr i8, ptr %ndev, i32 2472
  %5 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 3, ptr %state, align 8
  %bus_off = getelementptr i8, ptr %ndev, i32 2320
  %6 = ptrtoint ptr %bus_off to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bus_off, align 4
  %inc = add i32 %7, 1
  store i32 %inc, ptr %bus_off, align 4
  %8 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write_reg, align 4
  tail call void %9(ptr noundef %add.ptr.i, i32 noundef 0, i32 noundef 1) #6
  tail call void @can_bus_off(ptr noundef %ndev) #6
  %10 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cf, align 8
  %or = or i32 %11, 64
  store i32 %or, ptr %cf, align 8
  br label %if.end9

if.else:                                          ; preds = %entry
  %12 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %read_reg, align 8
  %call1.i = tail call i32 %13(ptr noundef %add.ptr.i, i32 noundef 24) #6
  %and.i = and i32 %call1.i, 384
  call void @__sanitizer_cov_trace_const_cmp4(i32 384, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 384
  %and2.i = lshr i32 %call1.i, 6
  %and2.lobit.i = and i32 %and2.i, 1
  %retval.0.i193 = select i1 %cmp.i, i32 2, i32 %and2.lobit.i
  %state7 = getelementptr i8, ptr %ndev, i32 2472
  %14 = ptrtoint ptr %state7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %state7, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i193, i32 %15)
  %cmp.not = icmp eq i32 %retval.0.i193, %15
  br i1 %cmp.not, label %if.else.if.end9_crit_edge, label %if.then8

if.else.if.end9_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.then8:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %read_reg, align 8
  %call1.i196 = tail call i32 %17(ptr noundef %add.ptr.i, i32 noundef 16) #6
  %and.i197 = and i32 %call1.i196, 255
  %and2.i198 = lshr i32 %call1.i196, 8
  %shr.i = and i32 %and2.i198, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i197, i32 %shr.i)
  %cmp.not.i = icmp ult i32 %and.i197, %shr.i
  %spec.select.i = select i1 %cmp.not.i, i32 0, i32 %retval.0.i193
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i197, i32 %shr.i)
  %cmp3.not.i = icmp ugt i32 %and.i197, %shr.i
  %cond7.i = select i1 %cmp3.not.i, i32 0, i32 %retval.0.i193
  call void @can_change_state(ptr noundef %ndev, ptr noundef nonnull %cf, i32 noundef %spec.select.i, i32 noundef %cond7.i) #6
  %conv.i = trunc i32 %call1.i196 to i8
  %arrayidx.i = getelementptr inbounds %struct.can_frame, ptr %cf, i32 0, i32 5, i32 6
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv.i, ptr %arrayidx.i, align 2
  %conv32.i = trunc i32 %and2.i198 to i8
  %arrayidx34.i = getelementptr inbounds %struct.can_frame, ptr %cf, i32 0, i32 5, i32 7
  %19 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv32.i, ptr %arrayidx34.i, align 1
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.else.if.end9_crit_edge, %if.then
  %and10 = and i32 %isr, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.end9.if.end18_crit_edge, label %if.then12

if.end9.if.end18_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %arbitration_lost = getelementptr i8, ptr %ndev, i32 2324
  %20 = ptrtoint ptr %arbitration_lost to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arbitration_lost, align 4
  %inc15 = add i32 %21, 1
  store i32 %inc15, ptr %arbitration_lost, align 4
  %22 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cf, align 8
  %or17 = or i32 %23, 2
  store i32 %or17, ptr %cf, align 8
  %data = getelementptr inbounds %struct.can_frame, ptr %cf, i32 0, i32 5
  %24 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %data, align 8
  br label %if.end18

if.end18:                                         ; preds = %if.then12, %if.end9.if.end18_crit_edge
  %and19 = and i32 %isr, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.end18.if.end30_crit_edge, label %if.then21

if.end18.if.end30_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30

if.then21:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  %rx_over_errors = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 36, i32 11
  %25 = ptrtoint ptr %rx_over_errors to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %rx_over_errors, align 4
  %inc22 = add i32 %26, 1
  store i32 %inc22, ptr %rx_over_errors, align 4
  %rx_errors = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 36, i32 4
  %27 = ptrtoint ptr %rx_errors to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %rx_errors, align 4
  %inc23 = add i32 %28, 1
  store i32 %inc23, ptr %rx_errors, align 4
  %29 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %cf, align 8
  %or25 = or i32 %30, 4
  store i32 %or25, ptr %cf, align 8
  %arrayidx27 = getelementptr inbounds %struct.can_frame, ptr %cf, i32 0, i32 5, i32 1
  %31 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx27, align 1
  %33 = or i8 %32, 1
  store i8 %33, ptr %arrayidx27, align 1
  br label %if.end30

if.end30:                                         ; preds = %if.then21, %if.end18.if.end30_crit_edge
  %and31 = and i32 %isr, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %if.end30.if.end44_crit_edge, label %if.then33

if.end30.if.end44_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end44

if.then33:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  %rx_dropped = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 36, i32 6
  %34 = ptrtoint ptr %rx_dropped to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %rx_dropped, align 4
  %inc34 = add i32 %35, 1
  store i32 %inc34, ptr %rx_dropped, align 4
  %rx_errors35 = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 36, i32 4
  %36 = ptrtoint ptr %rx_errors35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %rx_errors35, align 4
  %inc36 = add i32 %37, 1
  store i32 %inc36, ptr %rx_errors35, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %ndev, ptr noundef nonnull @.str.31) #9
  %38 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %cf, align 8
  %or38 = or i32 %39, 4
  store i32 %or38, ptr %cf, align 8
  br label %if.end44

if.end44:                                         ; preds = %if.then33, %if.end30.if.end44_crit_edge
  %and45 = and i32 %isr, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  br i1 %tobool46.not, label %if.end44.if.end122_crit_edge, label %if.then47

if.end44.if.end122_crit_edge:                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end122

if.then47:                                        ; preds = %if.end44
  %ctrlmode = getelementptr i8, ptr %ndev, i32 2476
  %40 = ptrtoint ptr %ctrlmode to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %ctrlmode, align 4
  %and49 = and i32 %41, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool50.not, label %if.end54, label %if.end54.thread

if.end54:                                         ; preds = %if.then47
  %and55 = and i32 %call2, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %tobool56.not = icmp eq i32 %and55, 0
  br i1 %tobool56.not, label %if.end54.if.end66_crit_edge, label %if.then57

if.end54.if.end66_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end66

if.end54.thread:                                  ; preds = %if.then47
  %42 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %cf, align 8
  %or53 = or i32 %43, 136
  store i32 %or53, ptr %cf, align 8
  %and55199 = and i32 %call2, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55199)
  %tobool56.not200 = icmp eq i32 %and55199, 0
  br i1 %tobool56.not200, label %if.end54.thread.if.end66_crit_edge, label %if.then60

if.end54.thread.if.end66_crit_edge:               ; preds = %if.end54.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end66

if.then57:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #8
  %tx_errors = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 36, i32 5
  %44 = ptrtoint ptr %tx_errors to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %tx_errors, align 4
  %inc58 = add i32 %45, 1
  store i32 %inc58, ptr %tx_errors, align 4
  br label %if.end66

if.then60:                                        ; preds = %if.end54.thread
  call void @__sanitizer_cov_trace_pc() #8
  %tx_errors201 = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 36, i32 5
  %46 = ptrtoint ptr %tx_errors201 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %tx_errors201, align 4
  %inc58202 = add i32 %47, 1
  store i32 %inc58202, ptr %tx_errors201, align 4
  %48 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %cf, align 8
  %or62 = or i32 %49, 32
  store i32 %or62, ptr %cf, align 8
  %arrayidx64 = getelementptr inbounds %struct.can_frame, ptr %cf, i32 0, i32 5, i32 3
  %50 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 25, ptr %arrayidx64, align 1
  br label %if.end66

if.end66:                                         ; preds = %if.then60, %if.then57, %if.end54.thread.if.end66_crit_edge, %if.end54.if.end66_crit_edge
  %and67 = and i32 %call2, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67)
  %tobool68.not = icmp eq i32 %and67, 0
  br i1 %tobool68.not, label %if.end79, label %if.then69

if.then69:                                        ; preds = %if.end66
  %tx_errors70 = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 36, i32 5
  %51 = ptrtoint ptr %tx_errors70 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %tx_errors70, align 4
  %inc71 = add i32 %52, 1
  store i32 %inc71, ptr %tx_errors70, align 4
  br i1 %tobool50.not, label %if.end79.thread207, label %if.end79.thread

if.end79:                                         ; preds = %if.end66
  %and80 = and i32 %call2, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80)
  %tobool81.not = icmp eq i32 %and80, 0
  br i1 %tobool81.not, label %if.end79.if.end92_crit_edge, label %if.then82

if.end79.if.end92_crit_edge:                      ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end92

if.end79.thread207:                               ; preds = %if.then69
  %and80208 = and i32 %call2, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80208)
  %tobool81.not209 = icmp eq i32 %and80208, 0
  br i1 %tobool81.not209, label %if.end79.thread207.if.end92_crit_edge, label %if.then82.thread210

if.end79.thread207.if.end92_crit_edge:            ; preds = %if.end79.thread207
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end92

if.then82.thread210:                              ; preds = %if.end79.thread207
  call void @__sanitizer_cov_trace_pc() #8
  %rx_errors83211 = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 36, i32 4
  %53 = ptrtoint ptr %rx_errors83211 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %rx_errors83211, align 4
  %inc84212 = add i32 %54, 1
  store i32 %inc84212, ptr %rx_errors83211, align 4
  br label %if.end92

if.end79.thread:                                  ; preds = %if.then69
  %55 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %cf, align 8
  %or75 = or i32 %56, 8
  store i32 %or75, ptr %cf, align 8
  %arrayidx77 = getelementptr inbounds %struct.can_frame, ptr %cf, i32 0, i32 5, i32 2
  %57 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 1, ptr %arrayidx77, align 2
  %and80203 = and i32 %call2, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80203)
  %tobool81.not204 = icmp eq i32 %and80203, 0
  br i1 %tobool81.not204, label %if.end79.thread.if.end92_crit_edge, label %if.then82.thread

if.end79.thread.if.end92_crit_edge:               ; preds = %if.end79.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end92

if.then82.thread:                                 ; preds = %if.end79.thread
  call void @__sanitizer_cov_trace_pc() #8
  %rx_errors83205 = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 36, i32 4
  %58 = ptrtoint ptr %rx_errors83205 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %rx_errors83205, align 4
  %inc84206 = add i32 %59, 1
  store i32 %inc84206, ptr %rx_errors83205, align 4
  br label %if.then86

if.then82:                                        ; preds = %if.end79
  %rx_errors83 = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 36, i32 4
  %60 = ptrtoint ptr %rx_errors83 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %rx_errors83, align 4
  %inc84 = add i32 %61, 1
  store i32 %inc84, ptr %rx_errors83, align 4
  br i1 %tobool50.not, label %if.then82.if.end92_crit_edge, label %if.then82.if.then86_crit_edge

if.then82.if.then86_crit_edge:                    ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then86

if.then82.if.end92_crit_edge:                     ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end92

if.then86:                                        ; preds = %if.then82.if.then86_crit_edge, %if.then82.thread
  %62 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %cf, align 8
  %or88 = or i32 %63, 8
  store i32 %or88, ptr %cf, align 8
  %arrayidx90 = getelementptr inbounds %struct.can_frame, ptr %cf, i32 0, i32 5, i32 2
  %64 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 4, ptr %arrayidx90, align 2
  br label %if.end92

if.end92:                                         ; preds = %if.then86, %if.then82.if.end92_crit_edge, %if.end79.thread.if.end92_crit_edge, %if.then82.thread210, %if.end79.thread207.if.end92_crit_edge, %if.end79.if.end92_crit_edge
  %and93 = and i32 %call2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and93)
  %tobool94.not = icmp eq i32 %and93, 0
  br i1 %tobool94.not, label %if.end105, label %if.then95

if.then95:                                        ; preds = %if.end92
  %rx_errors96 = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 36, i32 4
  %65 = ptrtoint ptr %rx_errors96 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %rx_errors96, align 4
  %inc97 = add i32 %66, 1
  store i32 %inc97, ptr %rx_errors96, align 4
  br i1 %tobool50.not, label %if.end105.thread217, label %if.end105.thread

if.end105:                                        ; preds = %if.end92
  %and106 = and i32 %call2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and106)
  %tobool107.not = icmp eq i32 %and106, 0
  br i1 %tobool107.not, label %if.end105.if.end118_crit_edge, label %if.then108

if.end105.if.end118_crit_edge:                    ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end118

if.end105.thread217:                              ; preds = %if.then95
  %and106218 = and i32 %call2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and106218)
  %tobool107.not219 = icmp eq i32 %and106218, 0
  br i1 %tobool107.not219, label %if.end105.thread217.if.end118_crit_edge, label %if.then108.thread220

if.end105.thread217.if.end118_crit_edge:          ; preds = %if.end105.thread217
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end118

if.then108.thread220:                             ; preds = %if.end105.thread217
  call void @__sanitizer_cov_trace_pc() #8
  %67 = ptrtoint ptr %rx_errors96 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %rx_errors96, align 4
  %inc110222 = add i32 %68, 1
  store i32 %inc110222, ptr %rx_errors96, align 4
  br label %if.end118

if.end105.thread:                                 ; preds = %if.then95
  %69 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %cf, align 8
  %or101 = or i32 %70, 8
  store i32 %or101, ptr %cf, align 8
  %arrayidx103 = getelementptr inbounds %struct.can_frame, ptr %cf, i32 0, i32 5, i32 2
  %71 = ptrtoint ptr %arrayidx103 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 2, ptr %arrayidx103, align 2
  %and106213 = and i32 %call2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and106213)
  %tobool107.not214 = icmp eq i32 %and106213, 0
  br i1 %tobool107.not214, label %if.end105.thread.if.end118_crit_edge, label %if.then108.thread

if.end105.thread.if.end118_crit_edge:             ; preds = %if.end105.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end118

if.then108.thread:                                ; preds = %if.end105.thread
  call void @__sanitizer_cov_trace_pc() #8
  %72 = ptrtoint ptr %rx_errors96 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %rx_errors96, align 4
  %inc110216 = add i32 %73, 1
  store i32 %inc110216, ptr %rx_errors96, align 4
  br label %if.then112

if.then108:                                       ; preds = %if.end105
  %rx_errors109 = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 36, i32 4
  %74 = ptrtoint ptr %rx_errors109 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %rx_errors109, align 4
  %inc110 = add i32 %75, 1
  store i32 %inc110, ptr %rx_errors109, align 4
  br i1 %tobool50.not, label %if.then108.if.end118_crit_edge, label %if.then108.if.then112_crit_edge

if.then108.if.then112_crit_edge:                  ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then112

if.then108.if.end118_crit_edge:                   ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end118

if.then112:                                       ; preds = %if.then108.if.then112_crit_edge, %if.then108.thread
  %76 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %cf, align 8
  %or114 = or i32 %77, 8
  store i32 %or114, ptr %cf, align 8
  %arrayidx116 = getelementptr inbounds %struct.can_frame, ptr %cf, i32 0, i32 5, i32 3
  %78 = ptrtoint ptr %arrayidx116 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 8, ptr %arrayidx116, align 1
  br label %if.end118

if.end118:                                        ; preds = %if.then112, %if.then108.if.end118_crit_edge, %if.end105.thread.if.end118_crit_edge, %if.then108.thread220, %if.end105.thread217.if.end118_crit_edge, %if.end105.if.end118_crit_edge
  %can_stats120 = getelementptr i8, ptr %ndev, i32 2308
  %79 = ptrtoint ptr %can_stats120 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %can_stats120, align 4
  %inc121 = add i32 %80, 1
  store i32 %inc121, ptr %can_stats120, align 4
  br label %if.end122

if.end122:                                        ; preds = %if.end118, %if.end44.if.end122_crit_edge
  %81 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %cf, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool124.not = icmp eq i32 %82, 0
  br i1 %tobool124.not, label %if.end122.do.body138_crit_edge, label %if.then125

if.end122.do.body138_crit_edge:                   ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body138

if.then125:                                       ; preds = %if.end122
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %skb_cf) #6
  %83 = ptrtoint ptr %skb_cf to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr inttoptr (i32 -1 to ptr), ptr %skb_cf, align 4, !annotation !150
  %call126 = call ptr @alloc_can_err_skb(ptr noundef %ndev, ptr noundef nonnull %skb_cf) #6
  %tobool127.not = icmp eq ptr %call126, null
  br i1 %tobool127.not, label %if.then125.if.end136_crit_edge, label %if.then128

if.then125.if.end136_crit_edge:                   ; preds = %if.then125
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end136

if.then128:                                       ; preds = %if.then125
  call void @__sanitizer_cov_trace_pc() #8
  %84 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %cf, align 8
  %86 = ptrtoint ptr %skb_cf to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %skb_cf, align 4
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %87, align 8
  %or131 = or i32 %89, %85
  store i32 %or131, ptr %87, align 8
  %90 = load ptr, ptr %skb_cf, align 4
  %data132 = getelementptr inbounds %struct.can_frame, ptr %90, i32 0, i32 5
  %data133 = getelementptr inbounds %struct.can_frame, ptr %cf, i32 0, i32 5
  %91 = ptrtoint ptr %data133 to i32
  call void @__asan_load8_noabort(i32 %91)
  %92 = load i64, ptr %data133, align 8
  %93 = ptrtoint ptr %data132 to i32
  call void @__asan_store8_noabort(i32 %93)
  store i64 %92, ptr %data132, align 8
  %call135 = call i32 @netif_rx(ptr noundef nonnull %call126) #6
  br label %if.end136

if.end136:                                        ; preds = %if.then128, %if.then125.if.end136_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %skb_cf) #6
  br label %do.body138

do.body138:                                       ; preds = %if.end136, %if.end122.do.body138_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xcan_err_interrupt.__UNIQUE_ID_ddebug466, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@xcan_err_interrupt, %do.end149)) #6
          to label %if.then144 [label %do.end149], !srcloc !143

if.then144:                                       ; preds = %do.body138
  call void @__sanitizer_cov_trace_pc() #8
  %94 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %read_reg, align 8
  %call146 = call i32 %95(ptr noundef %add.ptr.i, i32 noundef 20) #6
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @xcan_err_interrupt.__UNIQUE_ID_ddebug466, ptr noundef %ndev, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.32, i32 noundef %call146) #6
  br label %do.end149

do.end149:                                        ; preds = %if.then144, %do.body138
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cf) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @can_get_echo_skb(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xcan_update_error_state_after_rxtx(ptr noundef %ndev) unnamed_addr #2 align 64 {
entry:
  %cf = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %state = getelementptr i8, ptr %ndev, i32 2472
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 8
  %.off = add i32 %1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %read_reg.i = getelementptr i8, ptr %ndev, i32 2896
  %2 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read_reg.i, align 8
  %call1.i = tail call i32 %3(ptr noundef %add.ptr.i, i32 noundef 24) #6
  %and.i = and i32 %call1.i, 384
  call void @__sanitizer_cov_trace_const_cmp4(i32 384, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 384
  %and2.i = lshr i32 %call1.i, 6
  %and2.lobit.i = and i32 %and2.i, 1
  %retval.0.i = select i1 %cmp.i, i32 2, i32 %and2.lobit.i
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i, i32 %1)
  %cmp3.not = icmp eq i32 %retval.0.i, %1
  br i1 %cmp3.not, label %if.end.cleanup_crit_edge, label %if.then4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then4:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cf) #6
  %4 = ptrtoint ptr %cf to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %cf, align 4, !annotation !150
  %call5 = call ptr @alloc_can_err_skb(ptr noundef %ndev, ptr noundef nonnull %cf) #6
  %tobool.not = icmp eq ptr %call5, null
  br i1 %tobool.not, label %if.end9.critedge, label %cond.true

cond.true:                                        ; preds = %if.then4
  %5 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cf, align 4
  %7 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %read_reg.i, align 8
  %call1.i23 = call i32 %8(ptr noundef %add.ptr.i, i32 noundef 16) #6
  %and.i24 = and i32 %call1.i23, 255
  %and2.i25 = lshr i32 %call1.i23, 8
  %shr.i = and i32 %and2.i25, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i24, i32 %shr.i)
  %cmp.not.i = icmp ult i32 %and.i24, %shr.i
  %spec.select.i = select i1 %cmp.not.i, i32 0, i32 %retval.0.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i24, i32 %shr.i)
  %cmp3.not.i = icmp ugt i32 %and.i24, %shr.i
  %cond7.i = select i1 %cmp3.not.i, i32 0, i32 %retval.0.i
  call void @can_change_state(ptr noundef %ndev, ptr noundef %6, i32 noundef %spec.select.i, i32 noundef %cond7.i) #6
  %tobool30.not.i = icmp eq ptr %6, null
  br i1 %tobool30.not.i, label %cond.true.xcan_set_error_state.exit_crit_edge, label %if.then31.i

cond.true.xcan_set_error_state.exit_crit_edge:    ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %xcan_set_error_state.exit

if.then31.i:                                      ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i = trunc i32 %call1.i23 to i8
  %arrayidx.i = getelementptr %struct.can_frame, ptr %6, i32 0, i32 5, i32 6
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv.i, ptr %arrayidx.i, align 2
  %conv32.i = trunc i32 %and2.i25 to i8
  %arrayidx34.i = getelementptr %struct.can_frame, ptr %6, i32 0, i32 5, i32 7
  %10 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv32.i, ptr %arrayidx34.i, align 1
  br label %xcan_set_error_state.exit

xcan_set_error_state.exit:                        ; preds = %if.then31.i, %cond.true.xcan_set_error_state.exit_crit_edge
  %call8 = call i32 @netif_rx(ptr noundef nonnull %call5) #6
  br label %if.end9

if.end9.critedge:                                 ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %read_reg.i, align 8
  %call1.i28 = call i32 %12(ptr noundef %add.ptr.i, i32 noundef 16) #6
  %and.i29 = and i32 %call1.i28, 255
  %and2.i30 = lshr i32 %call1.i28, 8
  %shr.i31 = and i32 %and2.i30, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i29, i32 %shr.i31)
  %cmp.not.i32 = icmp ult i32 %and.i29, %shr.i31
  %spec.select.i33 = select i1 %cmp.not.i32, i32 0, i32 %retval.0.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i29, i32 %shr.i31)
  %cmp3.not.i34 = icmp ugt i32 %and.i29, %shr.i31
  %cond7.i35 = select i1 %cmp3.not.i34, i32 0, i32 %retval.0.i
  call void @can_change_state(ptr noundef %ndev, ptr noundef null, i32 noundef %spec.select.i33, i32 noundef %cond7.i35) #6
  br label %if.end9

if.end9:                                          ; preds = %if.end9.critedge, %xcan_set_error_state.exit
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cf) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_can_err_skb(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @can_change_state(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @can_bus_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_schedule_prep(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xcan_chip_stop(ptr noundef %ndev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %write_reg.i = getelementptr i8, ptr %ndev, i32 2900
  %0 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %write_reg.i, align 4
  tail call void %1(ptr noundef %add.ptr.i, i32 noundef 0, i32 noundef 1) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %2, 100
  %read_reg.i = getelementptr i8, ptr %ndev, i32 2896
  %3 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %read_reg.i, align 8
  %call19.i = tail call i32 %4(ptr noundef %add.ptr.i, i32 noundef 24) #6
  %and10.i = and i32 %call19.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool.not11.i = icmp eq i32 %and10.i, 0
  br i1 %tobool.not11.i, label %entry.while.body.i_crit_edge, label %entry.set_reset_mode.exit_crit_edge

entry.set_reset_mode.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %set_reset_mode.exit

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %5 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %do.body2, label %if.end.i

if.end.i:                                         ; preds = %while.body.i
  tail call void @usleep_range_state(i32 noundef 500, i32 noundef 10000, i32 noundef 2) #6
  %6 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read_reg.i, align 8
  %call1.i = tail call i32 %7(ptr noundef %add.ptr.i, i32 noundef 24) #6
  %and.i = and i32 %call1.i, 1
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i.while.body.i_crit_edge, label %if.end.i.set_reset_mode.exit_crit_edge

if.end.i.set_reset_mode.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %set_reset_mode.exit

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

set_reset_mode.exit:                              ; preds = %if.end.i.set_reset_mode.exit_crit_edge, %entry.set_reset_mode.exit_crit_edge
  %tx_head.i = getelementptr i8, ptr %ndev, i32 2660
  %8 = ptrtoint ptr %tx_head.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %tx_head.i, align 4
  %tx_tail.i = getelementptr i8, ptr %ndev, i32 2664
  %9 = ptrtoint ptr %tx_tail.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %tx_tail.i, align 8
  br label %if.end10

do.body2:                                         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %ndev, ptr noundef nonnull @.str.25) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xcan_chip_stop.__UNIQUE_ID_ddebug467, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@xcan_chip_stop, %if.end10)) #6
          to label %if.then7 [label %if.end10], !srcloc !143

if.then7:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @xcan_chip_stop.__UNIQUE_ID_ddebug467, ptr noundef %ndev, ptr noundef nonnull @.str.35) #6
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %do.body2, %set_reset_mode.exit
  %state = getelementptr i8, ptr %ndev, i32 2472
  %10 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 4, ptr %state, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xcan_write_frame(ptr noundef %ndev, ptr noundef %skb, i32 noundef %frame_offset) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %data1 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data1, align 4
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %tobool.not = icmp sgt i32 %3, -1
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %and3 = shl i32 %3, 1
  %shl = and i32 %and3, 524286
  %4 = shl i32 %3, 3
  %shl7 = and i32 %4, -2097152
  %or = or i32 %shl, %shl7
  %and11 = and i32 %3, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  %spec.select.v = select i1 %tobool12.not, i32 1572864, i32 1572865
  %spec.select = or i32 %or, %spec.select.v
  br label %if.end25

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %shl17 = shl i32 %3, 21
  %and20 = lshr i32 %3, 10
  %5 = and i32 %and20, 1048576
  %6 = or i32 %5, %shl17
  br label %if.end25

if.end25:                                         ; preds = %if.else, %if.then
  %id.0 = phi i32 [ %spec.select, %if.then ], [ %6, %if.else ]
  %len = getelementptr inbounds %struct.canfd_frame, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %len, align 4
  %call26 = tail call zeroext i8 @can_fd_len2dlc(i8 noundef zeroext %8) #6
  %conv = zext i8 %call26 to i32
  %shl27 = shl i32 %conv, 28
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %9 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 72, i32 %10)
  %cmp.i = icmp eq i32 %10, 72
  br i1 %cmp.i, label %if.then29, label %if.end25.if.end37_crit_edge

if.end25.if.end37_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

if.then29:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  %flags = getelementptr inbounds %struct.canfd_frame, ptr %1, i32 0, i32 2
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %flags, align 1
  %13 = and i8 %12, 1
  %14 = zext i8 %13 to i32
  %15 = shl nuw nsw i32 %14, 26
  %16 = or i32 %15, %shl27
  %or36 = or i32 %16, 134217728
  br label %if.end37

if.end37:                                         ; preds = %if.then29, %if.end25.if.end37_crit_edge
  %dlc.1 = phi i32 [ %or36, %if.then29 ], [ %shl27, %if.end25.if.end37_crit_edge ]
  %devtype = getelementptr i8, ptr %ndev, i32 2924
  %flags38 = getelementptr i8, ptr %ndev, i32 2928
  %17 = ptrtoint ptr %flags38 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags38, align 4
  %19 = and i32 %18, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %19)
  %.not = icmp eq i32 %19, 1
  br i1 %.not, label %if.then45, label %if.end37.if.end49_crit_edge

if.end37.if.end49_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end49

if.then45:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  %tx_head = getelementptr i8, ptr %ndev, i32 2660
  %20 = ptrtoint ptr %tx_head to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tx_head, align 4
  %tx_max = getelementptr i8, ptr %ndev, i32 2668
  %22 = ptrtoint ptr %tx_max to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tx_max, align 4
  %rem = urem i32 %21, %23
  br label %if.end49

if.end49:                                         ; preds = %if.then45, %if.end37.if.end49_crit_edge
  %.sink = phi i32 [ %rem, %if.then45 ], [ 0, %if.end37.if.end49_crit_edge ]
  %call48 = tail call i32 @can_put_echo_skb(ptr noundef %skb, ptr noundef %ndev, i32 noundef %.sink, i32 noundef 0) #6
  %tx_head50 = getelementptr i8, ptr %ndev, i32 2660
  %24 = ptrtoint ptr %tx_head50 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tx_head50, align 4
  %inc = add i32 %25, 1
  store i32 %inc, ptr %tx_head50, align 4
  %write_reg = getelementptr i8, ptr %ndev, i32 2900
  %26 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %write_reg, align 4
  tail call void %27(ptr noundef %add.ptr.i, i32 noundef %frame_offset, i32 noundef %id.0) #6
  %28 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %write_reg, align 4
  %add52 = add i32 %frame_offset, 4
  tail call void %29(ptr noundef %add.ptr.i, i32 noundef %add52, i32 noundef %dlc.1) #6
  %30 = ptrtoint ptr %devtype to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %devtype, align 4
  %32 = and i32 %31, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %32)
  %switch = icmp eq i32 %32, 2
  %33 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %cmp62159.not = icmp eq i8 %34, 0
  br i1 %switch, label %for.cond.preheader, label %if.else71

for.cond.preheader:                               ; preds = %if.end49
  br i1 %cmp62159.not, label %for.cond.preheader.if.end104_crit_edge, label %for.body.lr.ph

for.cond.preheader.if.end104_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end104

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %add64 = add i32 %frame_offset, 8
  %data67 = getelementptr inbounds %struct.canfd_frame, ptr %1, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0161 = phi i32 [ 0, %for.body.lr.ph ], [ %add70, %for.body.for.body_crit_edge ]
  %dwindex.0160 = phi i32 [ 0, %for.body.lr.ph ], [ %inc69, %for.body.for.body_crit_edge ]
  %mul = shl i32 %dwindex.0160, 2
  %add65 = add i32 %add64, %mul
  %35 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %write_reg, align 4
  %add.ptr = getelementptr i8, ptr %data67, i32 %i.0161
  %37 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %add.ptr, align 4
  tail call void %36(ptr noundef %add.ptr.i, i32 noundef %add65, i32 noundef %38) #6
  %inc69 = add nuw nsw i32 %dwindex.0160, 1
  %add70 = add nuw nsw i32 %i.0161, 4
  %39 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %len, align 4
  %conv61 = zext i8 %40 to i32
  %cmp62 = icmp ult i32 %add70, %conv61
  br i1 %cmp62, label %for.body.for.body_crit_edge, label %for.body.if.end104_crit_edge

for.body.if.end104_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end104

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

if.else71:                                        ; preds = %if.end49
  br i1 %cmp62159.not, label %if.else71.if.end92_crit_edge, label %if.end81

if.else71.if.end92_crit_edge:                     ; preds = %if.else71
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end92

if.end81:                                         ; preds = %if.else71
  %data77 = getelementptr inbounds %struct.canfd_frame, ptr %1, i32 0, i32 5
  %41 = ptrtoint ptr %data77 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %data77, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %34)
  %cmp84 = icmp ugt i8 %34, 4
  br i1 %cmp84, label %if.then86, label %if.end81.if.end92_crit_edge

if.end81.if.end92_crit_edge:                      ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end92

if.then86:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr89 = getelementptr %struct.canfd_frame, ptr %1, i32 0, i32 5, i32 4
  %43 = ptrtoint ptr %add.ptr89 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %add.ptr89, align 4
  br label %if.end92

if.end92:                                         ; preds = %if.then86, %if.end81.if.end92_crit_edge, %if.else71.if.end92_crit_edge
  %data.sroa.0.0157 = phi i32 [ %42, %if.then86 ], [ %42, %if.end81.if.end92_crit_edge ], [ 0, %if.else71.if.end92_crit_edge ]
  %data.sroa.5.0 = phi i32 [ %44, %if.then86 ], [ 0, %if.end81.if.end92_crit_edge ], [ 0, %if.else71.if.end92_crit_edge ]
  %45 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %1, align 8
  %and94 = and i32 %46, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and94)
  %tobool95.not = icmp eq i32 %and94, 0
  br i1 %tobool95.not, label %if.then96, label %if.end92.if.end104_crit_edge

if.end92.if.end104_crit_edge:                     ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end104

if.then96:                                        ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #8
  %47 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %write_reg, align 4
  %add98 = add i32 %frame_offset, 8
  tail call void %48(ptr noundef %add.ptr.i, i32 noundef %add98, i32 noundef %data.sroa.0.0157) #6
  %49 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %write_reg, align 4
  %add101 = add i32 %frame_offset, 12
  tail call void %50(ptr noundef %add.ptr.i, i32 noundef %add101, i32 noundef %data.sroa.5.0) #6
  br label %if.end104

if.end104:                                        ; preds = %if.then96, %if.end92.if.end104_crit_edge, %for.body.if.end104_crit_edge, %for.cond.preheader.if.end104_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @can_fd_len2dlc(i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @can_put_echo_skb(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_complete_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_canfd_skb(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_can_skb(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @can_fd_dlc2len(i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_receive_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_candev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xcan_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 103
  %4 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %5, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #6
  tail call void @netif_device_detach(ptr noundef %1) #6
  tail call fastcc void @xcan_chip_stop(ptr noundef %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call2 = tail call i32 @pm_runtime_force_suspend(ptr noundef %dev) #6
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xcan_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i32 @pm_runtime_force_resume(ptr noundef %dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.39) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then3:                                         ; preds = %if.end
  %call4 = tail call fastcc i32 @xcan_chip_start(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end10, label %do.end9

do.end9:                                          ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.42) #9
  br label %cleanup

if.end10:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @netif_device_attach(ptr noundef %1) #6
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 103
  %4 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %5, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %do.end9, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call1, %do.end ], [ %call4, %do.end9 ], [ 0, %if.end10 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xcan_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %bus_clk = getelementptr i8, ptr %1, i32 2916
  %2 = ptrtoint ptr %bus_clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus_clk, align 4
  tail call void @clk_disable(ptr noundef %3) #6
  tail call void @clk_unprepare(ptr noundef %3) #6
  %can_clk = getelementptr i8, ptr %1, i32 2920
  %4 = ptrtoint ptr %can_clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %can_clk, align 8
  tail call void @clk_disable(ptr noundef %5) #6
  tail call void @clk_unprepare(ptr noundef %5) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xcan_runtime_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %bus_clk = getelementptr i8, ptr %1, i32 2916
  %2 = ptrtoint ptr %bus_clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus_clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %3) #6
  br label %do.end

do.end:                                           ; preds = %if.then3.i, %entry.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %entry.do.end_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.44) #9
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %can_clk = getelementptr i8, ptr %1, i32 2920
  %4 = ptrtoint ptr %can_clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %can_clk, align 8
  %call.i20 = tail call i32 @clk_prepare(ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i20)
  %tobool.not.i21 = icmp eq i32 %call.i20, 0
  br i1 %tobool.not.i21, label %if.end.i24, label %if.end.do.end8_crit_edge

if.end.do.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end8

if.end.i24:                                       ; preds = %if.end
  %call1.i22 = tail call i32 @clk_enable(ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i22)
  %tobool2.not.i23 = icmp eq i32 %call1.i22, 0
  br i1 %tobool2.not.i23, label %if.end.i24.cleanup_crit_edge, label %if.then3.i25

if.end.i24.cleanup_crit_edge:                     ; preds = %if.end.i24
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then3.i25:                                     ; preds = %if.end.i24
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %5) #6
  br label %do.end8

do.end8:                                          ; preds = %if.then3.i25, %if.end.do.end8_crit_edge
  %retval.0.i26.ph = phi i32 [ %call1.i22, %if.then3.i25 ], [ %call.i20, %if.end.do.end8_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.44) #9
  %6 = ptrtoint ptr %bus_clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bus_clk, align 4
  tail call void @clk_disable(ptr noundef %7) #6
  tail call void @clk_unprepare(ptr noundef %7) #6
  br label %cleanup

cleanup:                                          ; preds = %do.end8, %if.end.i24.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %retval.0.i.ph, %do.end ], [ %retval.0.i26.ph, %do.end8 ], [ 0, %if.end.i24.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_attach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 61)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 61)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !30, !31, !32, !34, !35, !37, !39, !41, !43, !45, !46, !47, !49, !50, !52, !54, !56, !58, !60, !61, !62, !64, !66, !68, !69, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !91, !92, !94, !95, !96, !98, !100, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !120, !121, !122, !124, !125, !126, !128, !129, !130, !131, !133}
!llvm.module.flags = !{!134, !135, !136, !137, !138, !139, !140, !141}
!llvm.ident = !{!142}

!0 = !{ptr @__initcall__kmod_xilinx_can__471_1866_xcan_driver_init6, !1, !"__initcall__kmod_xilinx_can__471_1866_xcan_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/can/xilinx_can.c", i32 1866, i32 1}
!2 = !{ptr @__exitcall_xcan_driver_exit, !1, !"__exitcall_xcan_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file472, !4, !"__UNIQUE_ID_file472", i1 false, i1 false}
!4 = !{!"../drivers/net/can/xilinx_can.c", i32 1868, i32 1}
!5 = !{ptr @__UNIQUE_ID_license473, !4, !"__UNIQUE_ID_license473", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_author474, !7, !"__UNIQUE_ID_author474", i1 false, i1 false}
!7 = !{!"../drivers/net/can/xilinx_can.c", i32 1869, i32 1}
!8 = !{ptr @__UNIQUE_ID_description475, !9, !"__UNIQUE_ID_description475", i1 false, i1 false}
!9 = !{!"../drivers/net/can/xilinx_can.c", i32 1870, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/can/xilinx_can.c", i32 1860, i32 11}
!12 = !{ptr @xcan_driver, !13, !"xcan_driver", i1 false, i1 false}
!13 = !{!"../drivers/net/can/xilinx_can.c", i32 1856, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/can/xilinx_can.c", i32 1686, i32 9}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/can/xilinx_can.c", i32 1686, i32 30}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/can/xilinx_can.c", i32 1691, i32 3}
!20 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @xcan_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @xcan_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/can/xilinx_can.c", i32 1696, i32 48}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/can/xilinx_can.c", i32 1699, i32 3}
!30 = !{ptr @xcan_probe._entry.9, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @xcan_probe._entry_ptr.11, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @xcan_probe.__key, !33, !"__key", i1 false, i1 false}
!33 = !{!"../drivers/net/can/xilinx_can.c", i32 1758, i32 2}
!34 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/can/xilinx_can.c", i32 1774, i32 43}
!37 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/can/xilinx_can.c", i32 1777, i32 9}
!39 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/can/xilinx_can.c", i32 1784, i32 9}
!41 = !{ptr @.str.16, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/can/xilinx_can.c", i32 1794, i32 20}
!43 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/can/xilinx_can.c", i32 1810, i32 3}
!45 = !{ptr @xcan_probe._entry.17, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @xcan_probe._entry_ptr.19, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.20, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/can/xilinx_can.c", i32 1823, i32 2}
!49 = !{ptr @xcan_probe.__UNIQUE_ID_ddebug470, !48, !"__UNIQUE_ID_ddebug470", i1 false, i1 false}
!50 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/can/xilinx_can.c", i32 1615, i32 18}
!52 = !{ptr @xcan_axi_data, !53, !"xcan_axi_data", i1 false, i1 false}
!53 = !{!"../drivers/net/can/xilinx_can.c", i32 1610, i32 39}
!54 = !{ptr @xcan_bittiming_const, !55, !"xcan_bittiming_const", i1 false, i1 false}
!55 = !{!"../drivers/net/can/xilinx_can.c", i32 216, i32 41}
!56 = !{ptr @.str.22, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/can/xilinx_can.c", i32 531, i32 21}
!58 = !{ptr @.str.23, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/can/xilinx_can.c", i32 507, i32 2}
!60 = !{ptr @.str.24, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @xcan_chip_start.__UNIQUE_ID_ddebug461, !59, !"__UNIQUE_ID_ddebug461", i1 false, i1 false}
!62 = !{ptr @.str.25, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/can/xilinx_can.c", i32 370, i32 22}
!64 = !{ptr @.str.26, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/can/xilinx_can.c", i32 405, i32 9}
!66 = !{ptr @.str.27, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/can/xilinx_can.c", i32 442, i32 2}
!68 = !{ptr @.str.28, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @xcan_set_bittiming.__UNIQUE_ID_ddebug460, !67, !"__UNIQUE_ID_ddebug460", i1 false, i1 false}
!70 = !{ptr @__func__.xcan_get_berr_counter, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/can/xilinx_can.c", i32 1477, i32 7}
!72 = !{ptr @xcan_data_bittiming_const_canfd, !73, !"xcan_data_bittiming_const_canfd", i1 false, i1 false}
!73 = !{!"../drivers/net/can/xilinx_can.c", i32 242, i32 35}
!74 = !{ptr @xcan_data_bittiming_const_canfd2, !75, !"xcan_data_bittiming_const_canfd2", i1 false, i1 false}
!75 = !{!"../drivers/net/can/xilinx_can.c", i32 268, i32 35}
!76 = !{ptr @xcan_netdev_ops, !77, !"xcan_netdev_ops", i1 false, i1 false}
!77 = !{!"../drivers/net/can/xilinx_can.c", i32 1491, i32 36}
!78 = !{ptr @__func__.xcan_open, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/can/xilinx_can.c", i32 1393, i32 7}
!80 = !{ptr @.str.29, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/can/xilinx_can.c", i32 1400, i32 20}
!82 = !{ptr @.str.30, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/can/xilinx_can.c", i32 1407, i32 20}
!84 = distinct !{null, !85, !"__already_done", i1 false, i1 false}
!85 = !{!"../drivers/net/can/xilinx_can.c", i32 1250, i32 6}
!86 = !{ptr @.str.31, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/can/xilinx_can.c", i32 1029, i32 20}
!88 = !{ptr @.str.32, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/can/xilinx_can.c", i32 1101, i32 2}
!90 = !{ptr @.str.33, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @xcan_err_interrupt.__UNIQUE_ID_ddebug466, !89, !"__UNIQUE_ID_ddebug466", i1 false, i1 false}
!92 = !{ptr @.str.34, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/can/xilinx_can.c", i32 1373, i32 3}
!94 = !{ptr @.str.35, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @xcan_chip_stop.__UNIQUE_ID_ddebug467, !93, !"__UNIQUE_ID_ddebug467", i1 false, i1 false}
!96 = !{ptr @.str.36, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/can/xilinx_can.c", i32 722, i32 20}
!98 = distinct !{null, !99, !"__already_done", i1 false, i1 false}
!99 = !{!"../include/linux/can/skb.h", i32 104, i32 6}
!100 = !{ptr @.str.37, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @xcan_of_match, !102, !"xcan_of_match", i1 false, i1 false}
!102 = !{!"../drivers/net/can/xilinx_can.c", i32 1644, i32 34}
!103 = !{ptr @.str.38, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/net/can/xilinx_can.c", i32 1607, i32 18}
!105 = !{ptr @xcan_zynq_data, !106, !"xcan_zynq_data", i1 false, i1 false}
!106 = !{!"../drivers/net/can/xilinx_can.c", i32 1601, i32 39}
!107 = !{ptr @xcan_canfd_data, !108, !"xcan_canfd_data", i1 false, i1 false}
!108 = !{!"../drivers/net/can/xilinx_can.c", i32 1618, i32 39}
!109 = !{ptr @xcan_bittiming_const_canfd, !110, !"xcan_bittiming_const_canfd", i1 false, i1 false}
!110 = !{!"../drivers/net/can/xilinx_can.c", i32 229, i32 41}
!111 = !{ptr @xcan_canfd2_data, !112, !"xcan_canfd2_data", i1 false, i1 false}
!112 = !{!"../drivers/net/can/xilinx_can.c", i32 1630, i32 39}
!113 = !{ptr @xcan_bittiming_const_canfd2, !114, !"xcan_bittiming_const_canfd2", i1 false, i1 false}
!114 = !{!"../drivers/net/can/xilinx_can.c", i32 255, i32 41}
!115 = !{ptr @xcan_dev_pm_ops, !116, !"xcan_dev_pm_ops", i1 false, i1 false}
!116 = !{!"../drivers/net/can/xilinx_can.c", i32 1596, i32 32}
!117 = !{ptr @.str.39, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/net/can/xilinx_can.c", i32 1532, i32 3}
!119 = !{ptr @.str.40, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @xcan_resume._entry, !118, !"_entry", i1 false, i1 false}
!121 = !{ptr @xcan_resume._entry_ptr, !118, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.42, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/net/can/xilinx_can.c", i32 1539, i32 4}
!124 = !{ptr @xcan_resume._entry.41, !123, !"_entry", i1 false, i1 false}
!125 = !{ptr @xcan_resume._entry_ptr.43, !123, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.44, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/net/can/xilinx_can.c", i32 1583, i32 3}
!128 = !{ptr @.str.45, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @xcan_runtime_resume._entry, !127, !"_entry", i1 false, i1 false}
!130 = !{ptr @xcan_runtime_resume._entry_ptr, !127, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @xcan_runtime_resume._entry.46, !132, !"_entry", i1 false, i1 false}
!132 = !{!"../drivers/net/can/xilinx_can.c", i32 1588, i32 3}
!133 = !{ptr @xcan_runtime_resume._entry_ptr.47, !132, !"_entry_ptr", i1 false, i1 false}
!134 = !{i32 1, !"wchar_size", i32 2}
!135 = !{i32 1, !"min_enum_size", i32 4}
!136 = !{i32 8, !"branch-target-enforcement", i32 0}
!137 = !{i32 8, !"sign-return-address", i32 0}
!138 = !{i32 8, !"sign-return-address-all", i32 0}
!139 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!140 = !{i32 7, !"uwtable", i32 1}
!141 = !{i32 7, !"frame-pointer", i32 2}
!142 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!143 = !{i64 2148773296, i64 2148773301, i64 2148773314, i64 2148773358, i64 2148773392, i64 2148773413}
!144 = !{i64 2151823131}
!145 = !{i64 4281009}
!146 = !{i64 4281427}
!147 = !{i64 2151821776}
!148 = !{i64 2157155498}
!149 = !{i64 2157155864}
!150 = !{!"auto-init"}
!151 = !{!"branch_weights", i32 1, i32 2000}
!152 = !{!"branch_weights", i32 2000, i32 1}
