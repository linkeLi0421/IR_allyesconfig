; ModuleID = '/llk/IR_all_yes/drivers/net/can/flexcan/flexcan-core.c_pt.bc'
source_filename = "../drivers/net/can/flexcan/flexcan-core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.can_bittiming_const = type { [16 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.flexcan_devtype_data = type { i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.flexcan_platform_data = type { i32, i8 }
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
%struct.flexcan_regs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.anon.147, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], %union.anon.148, i32, i32, i32, i32, i32, i32, i32, i32, [64 x i32], i32, i32, i32, [199 x i32], %union.anon.151 }
%union.anon.147 = type { i32 }
%union.anon.148 = type { %struct.anon.149 }
%struct.anon.149 = type { [2 x [512 x i8]], [256 x i32], [64 x i32], [24 x i32], i32, [39 x i32], [6 x i32], [2 x i32], i32, i32, i32, i32, [4 x i32], [4 x i32], [4 x i32] }
%union.anon.151 = type { %struct.anon.152 }
%struct.anon.152 = type { [18 x i32], [18 x i32], [18 x i32] }
%struct.can_berr_counter = type { i16, i16 }
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
%struct.canfd_frame = type { i32, i8, i8, i8, i8, [64 x i8] }
%struct.can_skb_priv = type { i32, i32, i32, [4 x i8], [0 x %struct.can_frame] }
%struct.can_frame = type { i32, %union.anon.154, i8, i8, i8, [8 x i8] }
%union.anon.154 = type { i8 }
%struct.flexcan_mb = type { i32, i32, [0 x i32] }
%struct.flexcan_priv = type { %struct.can_priv, %struct.can_rx_offload, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i64, i64, i32, ptr, ptr, %struct.flexcan_devtype_data, ptr, %struct.flexcan_stop_mode, i32, i32, ptr, ptr, ptr }
%struct.can_priv = type { ptr, %struct.can_device_stats, ptr, ptr, %struct.can_bittiming, %struct.can_bittiming, ptr, %struct.can_tdc, i32, ptr, ptr, i32, i32, %struct.can_clock, i32, ptr, i16, ptr, [2 x i16], i32, ptr, i32, i32, i32, i32, %struct.delayed_work, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.can_device_stats = type { i32, i32, i32, i32, i32, i32 }
%struct.can_bittiming = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.can_tdc = type { i32, i32, i32 }
%struct.can_clock = type { i32 }
%struct.can_rx_offload = type { ptr, ptr, %struct.sk_buff_head, %struct.sk_buff_head, i32, i32, i32, %struct.napi_struct, i8 }
%struct.sk_buff_head = type { %union.anon.78, i32, %struct.spinlock }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { ptr, ptr }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.flexcan_stop_mode = type { ptr, i8, i8 }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }

@__initcall__kmod_flexcan__604_2361_flexcan_driver_init6 = internal global ptr @flexcan_driver_init, section ".initcall6.init", align 4
@flexcan_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @flexcan_probe, ptr @flexcan_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @flexcan_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @flexcan_pm_ops, ptr null, ptr null }, ptr @flexcan_id_table, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_flexcan_driver_exit = internal global ptr @flexcan_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author605 = internal constant [95 x i8] c"flexcan.author=Sascha Hauer <kernel@pengutronix.de>, Marc Kleine-Budde <kernel@pengutronix.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_file606 = internal constant [45 x i8] c"flexcan.file=drivers/net/can/flexcan/flexcan\00", section ".modinfo", align 1
@__UNIQUE_ID_license607 = internal constant [23 x i8] c"flexcan.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description608 = internal constant [59 x i8] c"flexcan.description=CAN port driver for flexcan based chip\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"flexcan\00", [24 x i8] zeroinitializer }, align 32
@flexcan_of_match = internal constant { [12 x %struct.of_device_id], [592 x i8] } { [12 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx8qm-flexcan\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @fsl_imx8qm_devtype_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx8mp-flexcan\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @fsl_imx8mp_devtype_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx6q-flexcan\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @fsl_imx6q_devtype_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx28-flexcan\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @fsl_imx28_devtype_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx53-flexcan\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @fsl_imx25_devtype_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx35-flexcan\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @fsl_imx25_devtype_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx25-flexcan\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @fsl_imx25_devtype_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,p1010-flexcan\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @fsl_p1010_devtype_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,vf610-flexcan\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @fsl_vf610_devtype_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,ls1021ar2-flexcan\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @fsl_ls1021a_r2_devtype_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,lx2160ar1-flexcan\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @fsl_lx2160a_r1_devtype_data }, %struct.of_device_id zeroinitializer], [592 x i8] zeroinitializer }, align 32
@flexcan_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @flexcan_suspend, ptr @flexcan_resume, ptr @flexcan_suspend, ptr @flexcan_resume, ptr @flexcan_suspend, ptr @flexcan_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @flexcan_noirq_suspend, ptr @flexcan_noirq_resume, ptr @flexcan_noirq_suspend, ptr @flexcan_noirq_resume, ptr @flexcan_noirq_suspend, ptr @flexcan_noirq_resume, ptr @flexcan_runtime_suspend, ptr @flexcan_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@flexcan_id_table = internal constant { [2 x %struct.platform_device_id], [48 x i8] } { [2 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"flexcan-mcf5441x\00\00\00\00", i32 ptrtoint (ptr @fsl_mcf5441x_devtype_data to i32) }, %struct.platform_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"xceiver\00", [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clock-frequency\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fsl,clk-source\00", [17 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ipg\00", [28 x i8] zeroinitializer }, align 32
@flexcan_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 2066, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"no ipg clock defined\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"flexcan_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/net/can/flexcan/flexcan-core.c\00", [57 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@flexcan_probe._entry_ptr = internal global ptr @flexcan_probe._entry, section ".printk_index", align 4
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"per\00", [28 x i8] zeroinitializer }, align 32
@flexcan_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.6, ptr @.str.7, i32 2072, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"no per clock defined\0A\00", [42 x i8] zeroinitializer }, align 32
@flexcan_probe._entry_ptr.13 = internal global ptr @flexcan_probe._entry.11, section ".printk_index", align 4
@flexcan_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.6, ptr @.str.7, i32 2104, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"CAN-FD mode doesn't work in RX-FIFO mode!\0A\00", [53 x i8] zeroinitializer }, align 32
@flexcan_probe._entry_ptr.16 = internal global ptr @flexcan_probe._entry.14, section ".printk_index", align 4
@flexcan_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.6, ptr @.str.7, i32 2114, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"Quirks (0x%08x) inconsistent: RX_MAILBOX_RX supported but not RX_MAILBOX\0A\00", [54 x i8] zeroinitializer }, align 32
@flexcan_probe._entry_ptr.19 = internal global ptr @flexcan_probe._entry.17, section ".printk_index", align 4
@flexcan_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @flexcan_open, ptr @flexcan_close, ptr @flexcan_start_xmit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @can_change_mtu, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"big-endian\00", [21 x i8] zeroinitializer }, align 32
@flexcan_fd_bittiming_const = internal constant { %struct.can_bittiming_const, [48 x i8] } { %struct.can_bittiming_const { [16 x i8] c"flexcan\00\00\00\00\00\00\00\00\00", i32 2, i32 96, i32 2, i32 32, i32 16, i32 1, i32 1024, i32 1 }, [48 x i8] zeroinitializer }, align 32
@flexcan_fd_data_bittiming_const = internal constant { %struct.can_bittiming_const, [48 x i8] } { %struct.can_bittiming_const { [16 x i8] c"flexcan\00\00\00\00\00\00\00\00\00", i32 2, i32 39, i32 2, i32 8, i32 4, i32 1, i32 1024, i32 1 }, [48 x i8] zeroinitializer }, align 32
@flexcan_bittiming_const = internal constant { %struct.can_bittiming_const, [48 x i8] } { %struct.can_bittiming_const { [16 x i8] c"flexcan\00\00\00\00\00\00\00\00\00", i32 4, i32 16, i32 2, i32 8, i32 4, i32 1, i32 256, i32 1 }, [48 x i8] zeroinitializer }, align 32
@flexcan_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.6, ptr @.str.7, i32 2184, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"registering netdev failed\0A\00", [37 x i8] zeroinitializer }, align 32
@flexcan_probe._entry_ptr.23 = internal global ptr @flexcan_probe._entry.21, section ".printk_index", align 4
@flexcan_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.6, ptr @.str.7, i32 2191, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"setup stop mode failed\0A\00", [40 x i8] zeroinitializer }, align 32
@flexcan_probe._entry_ptr.26 = internal global ptr @flexcan_probe._entry.24, section ".printk_index", align 4
@.str.27 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"Three Samples mode and CAN-FD mode can't be used together\0A\00", [37 x i8] zeroinitializer }, align 32
@flexcan_chip_start.__UNIQUE_ID_ddebug565 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.7, ptr @.str.29, i8 1, i8 117, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"flexcan_chip_start\00", [45 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: writing mcr=0x%08x\00", [41 x i8] zeroinitializer }, align 32
@flexcan_chip_start.__UNIQUE_ID_ddebug566 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.7, ptr @.str.30, i8 1, i8 126, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: writing ctrl=0x%08x\00", [40 x i8] zeroinitializer }, align 32
@flexcan_chip_start.__UNIQUE_ID_ddebug597 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.7, ptr @.str.31, i8 1, i8 -123, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: writing fdctrl=0x%08x\00", [38 x i8] zeroinitializer }, align 32
@flexcan_chip_start.__UNIQUE_ID_ddebug598 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.7, ptr @.str.32, i8 1, i8 -101, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: reading mcr=0x%08x ctrl=0x%08x\0A\00", [60 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@flexcan_set_bittiming.__UNIQUE_ID_ddebug564 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.33, ptr @.str.7, ptr @.str.34, i8 1, i8 71, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"flexcan_set_bittiming\00", [42 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"writing ctrl=0x%08x\0A\00", [43 x i8] zeroinitializer }, align 32
@flexcan_set_bittiming_cbt.__UNIQUE_ID_ddebug499 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.35, ptr @.str.7, ptr @.str.36, i8 1, i8 47, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"flexcan_set_bittiming_cbt\00", [38 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"writing cbt=0x%08x\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [125 x i8], [35 x i8] } { [125 x i8] c"Data brp=%d and brp=%d don't match, this may result in a phase error. Consider using different bitrate and/or data bitrate.\0A\00", [35 x i8] zeroinitializer }, align 32
@flexcan_set_bittiming_cbt.__UNIQUE_ID_ddebug550 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.35, ptr @.str.7, ptr @.str.38, i8 1, i8 56, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"writing fdcbt=0x%08x\0A\00", [42 x i8] zeroinitializer }, align 32
@flexcan_set_bittiming_cbt.__UNIQUE_ID_ddebug551 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.35, ptr @.str.7, ptr @.str.39, i8 1, i8 58, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"writing ctrl2=0x%08x\0A\00", [42 x i8] zeroinitializer }, align 32
@flexcan_set_bittiming_cbt.__UNIQUE_ID_ddebug562 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.35, ptr @.str.7, ptr @.str.40, i8 1, i8 64, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"writing fdctrl=0x%08x\0A\00", [41 x i8] zeroinitializer }, align 32
@flexcan_set_bittiming_cbt.__UNIQUE_ID_ddebug563 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.35, ptr @.str.7, ptr @.str.41, i8 1, i8 66, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"%s: mcr=0x%08x ctrl=0x%08x ctrl2=0x%08x fdctrl=0x%08x cbt=0x%08x fdcbt=0x%08x\0A\00", [49 x i8] zeroinitializer }, align 32
@flexcan_set_bittiming_ctrl.__UNIQUE_ID_ddebug472 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.42, ptr @.str.7, ptr @.str.34, i8 1, i8 38, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"flexcan_set_bittiming_ctrl\00", [37 x i8] zeroinitializer }, align 32
@flexcan_set_bittiming_ctrl.__UNIQUE_ID_ddebug473 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.42, ptr @.str.7, ptr @.str.43, i8 1, i8 39, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: mcr=0x%08x ctrl=0x%08x\0A\00", [36 x i8] zeroinitializer }, align 32
@flexcan_irq_bus_err.__UNIQUE_ID_ddebug462 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.44, ptr @.str.7, ptr @.str.45, i8 0, i8 -54, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"flexcan_irq_bus_err\00", [44 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"BIT1_ERR irq\0A\00", [18 x i8] zeroinitializer }, align 32
@flexcan_irq_bus_err.__UNIQUE_ID_ddebug463 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.44, ptr @.str.7, ptr @.str.46, i8 0, i8 -53, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"BIT0_ERR irq\0A\00", [18 x i8] zeroinitializer }, align 32
@flexcan_irq_bus_err.__UNIQUE_ID_ddebug464 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.44, ptr @.str.7, ptr @.str.47, i8 0, i8 -51, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ACK_ERR irq\0A\00", [19 x i8] zeroinitializer }, align 32
@flexcan_irq_bus_err.__UNIQUE_ID_ddebug465 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.44, ptr @.str.7, ptr @.str.48, i8 0, i8 -50, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"CRC_ERR irq\0A\00", [19 x i8] zeroinitializer }, align 32
@flexcan_irq_bus_err.__UNIQUE_ID_ddebug466 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.44, ptr @.str.7, ptr @.str.49, i8 0, i8 -48, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"FRM_ERR irq\0A\00", [19 x i8] zeroinitializer }, align 32
@flexcan_irq_bus_err.__UNIQUE_ID_ddebug467 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.44, ptr @.str.7, ptr @.str.50, i8 0, i8 -47, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"STF_ERR irq\0A\00", [19 x i8] zeroinitializer }, align 32
@can_skb_headroom_valid.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.51 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/can/skb.h\00", [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Could not enable RX FIFO, unsupported core\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"wakeup-source\00", [18 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fsl,scu-index\00", [18 x i8] zeroinitializer }, align 32
@flexcan_setup_stop_mode_scfw.__UNIQUE_ID_ddebug603 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.55, ptr @.str.7, ptr @.str.56, i8 1, i8 -23, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"flexcan_setup_stop_mode_scfw\00", [35 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to get scu index\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fsl,stop-mode\00", [18 x i8] zeroinitializer }, align 32
@flexcan_setup_stop_mode_gpr.__UNIQUE_ID_ddebug599 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.58, ptr @.str.7, ptr @.str.59, i8 1, i8 -33, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"flexcan_setup_stop_mode_gpr\00", [36 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"no stop-mode property\0A\00", [41 x i8] zeroinitializer }, align 32
@flexcan_setup_stop_mode_gpr.__UNIQUE_ID_ddebug600 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.58, ptr @.str.7, ptr @.str.60, i8 1, i8 -31, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"could not find gpr node by phandle\0A\00", [60 x i8] zeroinitializer }, align 32
@flexcan_setup_stop_mode_gpr.__UNIQUE_ID_ddebug601 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.58, ptr @.str.7, ptr @.str.61, i8 1, i8 -30, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"could not find gpr regmap\0A\00", [37 x i8] zeroinitializer }, align 32
@flexcan_setup_stop_mode_gpr.__UNIQUE_ID_ddebug602 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.58, ptr @.str.7, ptr @.str.62, i8 1, i8 -27, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"gpr %s req_gpr=0x02%x req_bit=%u\0A\00", [62 x i8] zeroinitializer }, align 32
@fsl_imx8qm_devtype_data = internal constant { %struct.flexcan_devtype_data, [28 x i8] } { %struct.flexcan_devtype_data { i32 51820 }, [28 x i8] zeroinitializer }, align 32
@fsl_imx8mp_devtype_data = internal global { %struct.flexcan_devtype_data, [28 x i8] } { %struct.flexcan_devtype_data { i32 51068 }, [28 x i8] zeroinitializer }, align 32
@fsl_imx6q_devtype_data = internal constant { %struct.flexcan_devtype_data, [28 x i8] } { %struct.flexcan_devtype_data { i32 49516 }, [28 x i8] zeroinitializer }, align 32
@fsl_imx28_devtype_data = internal constant { %struct.flexcan_devtype_data, [28 x i8] } { %struct.flexcan_devtype_data { i32 81984 }, [28 x i8] zeroinitializer }, align 32
@fsl_imx25_devtype_data = internal constant { %struct.flexcan_devtype_data, [28 x i8] } { %struct.flexcan_devtype_data { i32 81986 }, [28 x i8] zeroinitializer }, align 32
@fsl_p1010_devtype_data = internal constant { %struct.flexcan_devtype_data, [28 x i8] } { %struct.flexcan_devtype_data { i32 82114 }, [28 x i8] zeroinitializer }, align 32
@fsl_vf610_devtype_data = internal constant { %struct.flexcan_devtype_data, [28 x i8] } { %struct.flexcan_devtype_data { i32 50300 }, [28 x i8] zeroinitializer }, align 32
@fsl_ls1021a_r2_devtype_data = internal constant { %struct.flexcan_devtype_data, [28 x i8] } { %struct.flexcan_devtype_data { i32 49260 }, [28 x i8] zeroinitializer }, align 32
@fsl_lx2160a_r1_devtype_data = internal constant { %struct.flexcan_devtype_data, [28 x i8] } { %struct.flexcan_devtype_data { i32 50812 }, [28 x i8] zeroinitializer }, align 32
@fsl_mcf5441x_devtype_data = internal constant { %struct.flexcan_devtype_data, [28 x i8] } { %struct.flexcan_devtype_data { i32 94272 }, [28 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4294966779, i64 4294967277]
@__sancov_gen_cov_switch_values.63 = internal global [4 x i64] [i64 2, i64 16, i64 12, i64 13]
@__sancov_gen_cov_switch_values.64 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.65 = internal global [4 x i64] [i64 2, i64 32, i64 33554432, i64 100663296]
@___asan_gen_.66 = private unnamed_addr constant [15 x i8] c"flexcan_driver\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 2350, i32 31 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 2352, i32 11 }
@___asan_gen_.72 = private unnamed_addr constant [17 x i8] c"flexcan_of_match\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 2002, i32 34 }
@___asan_gen_.75 = private unnamed_addr constant [15 x i8] c"flexcan_pm_ops\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 2344, i32 32 }
@___asan_gen_.78 = private unnamed_addr constant [17 x i8] c"flexcan_id_table\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 2018, i32 40 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 2042, i32 56 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 2052, i32 10 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 2054, i32 9 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 2064, i32 38 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 2066, i32 4 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 2070, i32 38 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 2072, i32 4 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 2104, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 2112, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant [19 x i8] c"flexcan_netdev_ops\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 1819, i32 36 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 2133, i32 47 }
@___asan_gen_.138 = private unnamed_addr constant [27 x i8] c"flexcan_fd_bittiming_const\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 385, i32 41 }
@___asan_gen_.141 = private unnamed_addr constant [32 x i8] c"flexcan_fd_data_bittiming_const\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 397, i32 41 }
@___asan_gen_.144 = private unnamed_addr constant [24 x i8] c"flexcan_bittiming_const\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 373, i32 41 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 2184, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 2191, i32 4 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 1699, i32 19 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 1495, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 1528, i32 2 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 1558, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 1645, i32 2 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 1309, i32 2 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 1213, i32 2 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 1220, i32 21 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 1249, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 1258, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 1282, i32 2 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 1285, i32 2 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 1178, i32 2 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 1182, i32 2 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 810, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 815, i32 3 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 820, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 826, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 832, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 837, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant [27 x i8] c"../include/linux/can/skb.h\00", align 1
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 104, i32 6 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 1869, i32 19 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 1996, i32 47 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 1957, i32 47 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 1959, i32 3 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 1914, i32 39 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 1917, i32 3 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 1924, i32 3 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 1931, i32 3 }
@___asan_gen_.264 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 1939, i32 2 }
@___asan_gen_.267 = private unnamed_addr constant [24 x i8] c"fsl_imx8qm_devtype_data\00", align 1
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 332, i32 42 }
@___asan_gen_.270 = private unnamed_addr constant [24 x i8] c"fsl_imx8mp_devtype_data\00", align 1
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 340, i32 36 }
@___asan_gen_.273 = private unnamed_addr constant [23 x i8] c"fsl_imx6q_devtype_data\00", align 1
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 324, i32 42 }
@___asan_gen_.276 = private unnamed_addr constant [23 x i8] c"fsl_imx28_devtype_data\00", align 1
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 318, i32 42 }
@___asan_gen_.279 = private unnamed_addr constant [23 x i8] c"fsl_imx25_devtype_data\00", align 1
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 311, i32 42 }
@___asan_gen_.282 = private unnamed_addr constant [23 x i8] c"fsl_p1010_devtype_data\00", align 1
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 303, i32 42 }
@___asan_gen_.285 = private unnamed_addr constant [23 x i8] c"fsl_vf610_devtype_data\00", align 1
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 349, i32 42 }
@___asan_gen_.288 = private unnamed_addr constant [28 x i8] c"fsl_ls1021a_r2_devtype_data\00", align 1
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 357, i32 42 }
@___asan_gen_.291 = private unnamed_addr constant [28 x i8] c"fsl_lx2160a_r1_devtype_data\00", align 1
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 364, i32 42 }
@___asan_gen_.294 = private unnamed_addr constant [26 x i8] c"fsl_mcf5441x_devtype_data\00", align 1
@___asan_gen_.295 = private constant [42 x i8] c"../drivers/net/can/flexcan/flexcan-core.c\00", align 1
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 296, i32 42 }
@llvm.compiler.used = appending global [90 x ptr] [ptr @__UNIQUE_ID_author605, ptr @__UNIQUE_ID_description608, ptr @__UNIQUE_ID_file606, ptr @__UNIQUE_ID_license607, ptr @__exitcall_flexcan_driver_exit, ptr @__initcall__kmod_flexcan__604_2361_flexcan_driver_init6, ptr @flexcan_driver_exit, ptr @flexcan_probe._entry, ptr @flexcan_probe._entry.11, ptr @flexcan_probe._entry.14, ptr @flexcan_probe._entry.17, ptr @flexcan_probe._entry.21, ptr @flexcan_probe._entry.24, ptr @flexcan_probe._entry_ptr, ptr @flexcan_probe._entry_ptr.13, ptr @flexcan_probe._entry_ptr.16, ptr @flexcan_probe._entry_ptr.19, ptr @flexcan_probe._entry_ptr.23, ptr @flexcan_probe._entry_ptr.26, ptr @flexcan_driver, ptr @.str, ptr @flexcan_of_match, ptr @flexcan_pm_ops, ptr @flexcan_id_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @flexcan_netdev_ops, ptr @.str.20, ptr @flexcan_fd_bittiming_const, ptr @flexcan_fd_data_bittiming_const, ptr @flexcan_bittiming_const, ptr @.str.22, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @fsl_imx8qm_devtype_data, ptr @fsl_imx8mp_devtype_data, ptr @fsl_imx6q_devtype_data, ptr @fsl_imx28_devtype_data, ptr @fsl_imx25_devtype_data, ptr @fsl_p1010_devtype_data, ptr @fsl_vf610_devtype_data, ptr @fsl_ls1021a_r2_devtype_data, ptr @fsl_lx2160a_r1_devtype_data, ptr @fsl_mcf5441x_devtype_data], section "llvm.metadata"
@0 = internal global [77 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flexcan_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flexcan_of_match to i32), i32 2352, i32 2944, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flexcan_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flexcan_id_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flexcan_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flexcan_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flexcan_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flexcan_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flexcan_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flexcan_fd_bittiming_const to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flexcan_fd_data_bittiming_const to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flexcan_bittiming_const to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flexcan_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flexcan_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 125, i32 160, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_imx8qm_devtype_data to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_imx8mp_devtype_data to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_imx6q_devtype_data to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_imx28_devtype_data to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_imx25_devtype_data to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_p1010_devtype_data to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_vf610_devtype_data to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_ls1021a_r2_devtype_data to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_lx2160a_r1_devtype_data to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_mcf5441x_devtype_data to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @flexcan_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @flexcan_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @flexcan_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @flexcan_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @flexcan_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %clk_src = alloca i8, align 1
  %clock_freq = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %clk_src) #8
  %0 = ptrtoint ptr %clk_src to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %clk_src, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %clock_freq) #8
  %1 = ptrtoint ptr %clock_freq to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %clock_freq, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @devm_regulator_get_optional(ptr noundef %dev1, ptr noundef nonnull @.str.1) #8
  %magicptr = ptrtoint ptr %call to i32
  %2 = zext i32 %magicptr to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %magicptr, label %if.else6 [
    i32 -517, label %entry.cleanup_crit_edge
    i32 -19, label %entry.if.end11_crit_edge
  ]

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else6:                                         ; preds = %entry
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.else6.cleanup_crit_edge, label %if.else6.if.end11_crit_edge

if.else6.if.end11_crit_edge:                      ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.else6.cleanup_crit_edge:                       ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end11:                                         ; preds = %if.else6.if.end11_crit_edge, %entry.if.end11_crit_edge
  %reg_xceiver.0 = phi ptr [ %call, %if.else6.if.end11_crit_edge ], [ null, %entry.if.end11_crit_edge ]
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %3 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %if.else20, label %if.then13

if.then13:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %4, ptr noundef nonnull @.str.2, ptr noundef nonnull %clock_freq, i32 noundef 1, i32 noundef 0) #8
  %5 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %of_node, align 8
  %call.i.i277 = call i32 @of_property_read_variable_u8_array(ptr noundef %6, ptr noundef nonnull @.str.3, ptr noundef nonnull %clk_src, i32 noundef 1, i32 noundef 0) #8
  br label %if.end27thread-pre-split

if.else20:                                        ; preds = %if.end11
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %7 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %platform_data.i, align 8
  %tobool23.not = icmp eq ptr %8, null
  br i1 %tobool23.not, label %if.else20.if.end27thread-pre-split_crit_edge, label %if.then24

if.else20.if.end27thread-pre-split_crit_edge:     ; preds = %if.else20
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27thread-pre-split

if.then24:                                        ; preds = %if.else20
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  %11 = ptrtoint ptr %clock_freq to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %clock_freq, align 4
  %clk_src25 = getelementptr inbounds %struct.flexcan_platform_data, ptr %8, i32 0, i32 1
  %12 = ptrtoint ptr %clk_src25 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %clk_src25, align 4
  %14 = ptrtoint ptr %clk_src to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %clk_src, align 1
  br label %if.end27

if.end27thread-pre-split:                         ; preds = %if.else20.if.end27thread-pre-split_crit_edge, %if.then13
  %15 = ptrtoint ptr %clock_freq to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pr = load i32, ptr %clock_freq, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.end27thread-pre-split, %if.then24
  %16 = phi i32 [ %.pr, %if.end27thread-pre-split ], [ %10, %if.then24 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool28.not = icmp eq i32 %16, 0
  br i1 %tobool28.not, label %if.then29, label %if.end27.if.end48_crit_edge

if.end27.if.end48_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48

if.then29:                                        ; preds = %if.end27
  %call31 = call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.4) #8
  %cmp.i278 = icmp ugt ptr %call31, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i278, label %do.end, label %if.end36

do.end:                                           ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.5) #11
  %17 = ptrtoint ptr %call31 to i32
  br label %cleanup

if.end36:                                         ; preds = %if.then29
  %call38 = call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.10) #8
  %cmp.i279 = icmp ugt ptr %call38, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i279, label %do.end43, label %if.end46

do.end43:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.12) #11
  %18 = ptrtoint ptr %call38 to i32
  br label %cleanup

if.end46:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  %call47 = call i32 @clk_get_rate(ptr noundef %call38) #8
  %19 = ptrtoint ptr %clock_freq to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call47, ptr %clock_freq, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.end46, %if.end27.if.end48_crit_edge
  %clk_ipg.0 = phi ptr [ null, %if.end27.if.end48_crit_edge ], [ %call31, %if.end46 ]
  %clk_per.0 = phi ptr [ null, %if.end27.if.end48_crit_edge ], [ %call38, %if.end46 ]
  %call49 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call49)
  %cmp50 = icmp slt i32 %call49, 1
  br i1 %cmp50, label %if.end48.cleanup_crit_edge, label %if.end52

if.end48.cleanup_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end52:                                         ; preds = %if.end48
  %call53 = call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #8
  %cmp.i280 = icmp ugt ptr %call53, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i280, label %if.then55, label %if.end57

if.then55:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %call53 to i32
  br label %cleanup

if.end57:                                         ; preds = %if.end52
  %call59 = call ptr @of_match_device(ptr noundef nonnull @flexcan_of_match, ptr noundef %dev1) #8
  %tobool60.not = icmp eq ptr %call59, null
  br i1 %tobool60.not, label %if.else62, label %if.then61

if.then61:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  %data = getelementptr inbounds %struct.of_device_id, ptr %call59, i32 0, i32 3
  %21 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data, align 4
  br label %if.end69

if.else62:                                        ; preds = %if.end57
  %id_entry = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 8
  %23 = ptrtoint ptr %id_entry to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %id_entry, align 4
  %driver_data = getelementptr inbounds %struct.platform_device_id, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %driver_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool63.not = icmp eq i32 %26, 0
  br i1 %tobool63.not, label %if.else62.cleanup_crit_edge, label %if.then64

if.else62.cleanup_crit_edge:                      ; preds = %if.else62
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then64:                                        ; preds = %if.else62
  call void @__sanitizer_cov_trace_pc() #10
  %27 = inttoptr i32 %26 to ptr
  br label %if.end69

if.end69:                                         ; preds = %if.then64, %if.then61
  %devtype_data.0 = phi ptr [ %22, %if.then61 ], [ %27, %if.then64 ]
  %28 = ptrtoint ptr %devtype_data.0 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %devtype_data.0, align 4
  %and = and i32 %29, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool70.not = icmp eq i32 %and, 0
  %and72 = and i32 %29, 114720
  call void @__sanitizer_cov_trace_const_cmp4(i32 49184, i32 %and72)
  %cmp73 = icmp eq i32 %and72, 49184
  %or.cond = or i1 %tobool70.not, %cmp73
  br i1 %or.cond, label %if.end79, label %do.end77

do.end77:                                         ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.15) #11
  br label %cleanup

if.end79:                                         ; preds = %if.end69
  %and81 = and i32 %29, 49152
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %and81)
  %cmp82 = icmp eq i32 %and81, 32768
  br i1 %cmp82, label %do.end86, label %if.end89

do.end86:                                         ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.18, i32 noundef %29) #11
  br label %cleanup

if.end89:                                         ; preds = %if.end79
  %call90 = call ptr @alloc_candev_mqs(i32 noundef 768, i32 noundef 1, i32 noundef 1, i32 noundef 1) #8
  %tobool91.not = icmp eq ptr %call90, null
  br i1 %tobool91.not, label %if.end89.cleanup_crit_edge, label %if.end93

if.end89.cleanup_crit_edge:                       ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end93:                                         ; preds = %if.end89
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %30 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call90, ptr %driver_data.i.i, align 4
  %parent = getelementptr inbounds %struct.net_device, ptr %call90, i32 0, i32 133, i32 1
  %31 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %dev1, ptr %parent, align 8
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %call90, i32 0, i32 16
  %32 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @flexcan_netdev_ops, ptr %netdev_ops, align 8
  call void @flexcan_set_ethtool_ops(ptr noundef nonnull %call90) #8
  %irq96 = getelementptr inbounds %struct.net_device, ptr %call90, i32 0, i32 64
  %33 = ptrtoint ptr %irq96 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %call49, ptr %irq96, align 4
  %flags = getelementptr inbounds %struct.net_device, ptr %call90, i32 0, i32 14
  %34 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %flags, align 8
  %or = or i32 %35, 262144
  store i32 %or, ptr %flags, align 8
  %add.ptr.i = getelementptr i8, ptr %call90, i32 2304
  %devtype_data98 = getelementptr i8, ptr %call90, i32 3036
  %36 = ptrtoint ptr %devtype_data.0 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %devtype_data.0, align 4
  %38 = ptrtoint ptr %devtype_data98 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %devtype_data98, align 4
  %39 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %of_node, align 8
  %call.i = call ptr @of_find_property(ptr noundef %40, ptr noundef nonnull @.str.20, ptr noundef null) #8
  %tobool.i.not = icmp eq ptr %call.i, null
  br i1 %tobool.i.not, label %lor.lhs.false, label %if.end93.if.end110_crit_edge

if.end93.if.end110_crit_edge:                     ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end110

lor.lhs.false:                                    ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #10
  %41 = ptrtoint ptr %devtype_data98 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %devtype_data98, align 4
  %and104 = and i32 %42, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and104)
  %tobool105.not = icmp eq i32 %and104, 0
  %spec.select = select i1 %tobool105.not, ptr @flexcan_read_le, ptr @flexcan_read_be
  %spec.select290 = select i1 %tobool105.not, ptr @flexcan_write_le, ptr @flexcan_write_be
  br label %if.end110

if.end110:                                        ; preds = %lor.lhs.false, %if.end93.if.end110_crit_edge
  %flexcan_read_le.sink = phi ptr [ @flexcan_read_be, %if.end93.if.end110_crit_edge ], [ %spec.select, %lor.lhs.false ]
  %flexcan_write_le.sink = phi ptr [ @flexcan_write_be, %if.end93.if.end110_crit_edge ], [ %spec.select290, %lor.lhs.false ]
  %read108 = getelementptr i8, ptr %call90, i32 3064
  %43 = ptrtoint ptr %read108 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %flexcan_read_le.sink, ptr %read108, align 8
  %write109 = getelementptr i8, ptr %call90, i32 3068
  %44 = ptrtoint ptr %write109 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %flexcan_write_le.sink, ptr %write109, align 4
  %dev112 = getelementptr i8, ptr %call90, i32 2984
  %45 = ptrtoint ptr %dev112 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %dev1, ptr %dev112, align 8
  %46 = ptrtoint ptr %clock_freq to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %clock_freq, align 4
  %clock = getelementptr i8, ptr %call90, i32 2440
  %48 = ptrtoint ptr %clock to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %clock, align 8
  %do_set_mode = getelementptr i8, ptr %call90, i32 2596
  %49 = ptrtoint ptr %do_set_mode to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @flexcan_set_mode, ptr %do_set_mode, align 4
  %do_get_berr_counter = getelementptr i8, ptr %call90, i32 2608
  %50 = ptrtoint ptr %do_get_berr_counter to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @flexcan_get_berr_counter, ptr %do_get_berr_counter, align 8
  %ctrlmode_supported = getelementptr i8, ptr %call90, i32 2480
  %51 = ptrtoint ptr %ctrlmode_supported to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 23, ptr %ctrlmode_supported, align 8
  %regs116 = getelementptr i8, ptr %call90, i32 2988
  %52 = ptrtoint ptr %regs116 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call53, ptr %regs116, align 4
  %clk_ipg117 = getelementptr i8, ptr %call90, i32 3028
  %53 = ptrtoint ptr %clk_ipg117 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %clk_ipg.0, ptr %clk_ipg117, align 4
  %clk_per118 = getelementptr i8, ptr %call90, i32 3032
  %54 = ptrtoint ptr %clk_per118 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %clk_per.0, ptr %clk_per118, align 8
  %55 = ptrtoint ptr %clk_src to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %clk_src, align 1
  %clk_src119 = getelementptr i8, ptr %call90, i32 3003
  %57 = ptrtoint ptr %clk_src119 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %56, ptr %clk_src119, align 1
  %reg_xceiver120 = getelementptr i8, ptr %call90, i32 3040
  %58 = ptrtoint ptr %reg_xceiver120 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %reg_xceiver.0, ptr %reg_xceiver120, align 8
  %59 = ptrtoint ptr %devtype_data98 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %devtype_data98, align 4
  %and123 = and i32 %60, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and123)
  %tobool124.not = icmp eq i32 %and123, 0
  br i1 %tobool124.not, label %if.end110.if.end136_crit_edge, label %if.then125

if.end110.if.end136_crit_edge:                    ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end136

if.then125:                                       ; preds = %if.end110
  %call126 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 1) #8
  %irq_boff = getelementptr i8, ptr %call90, i32 3052
  %61 = ptrtoint ptr %irq_boff to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %call126, ptr %irq_boff, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call126)
  %cmp128 = icmp slt i32 %call126, 1
  br i1 %cmp128, label %if.then125.failed_platform_get_irq_crit_edge, label %if.end130

if.then125.failed_platform_get_irq_crit_edge:     ; preds = %if.then125
  call void @__sanitizer_cov_trace_pc() #10
  br label %failed_platform_get_irq

if.end130:                                        ; preds = %if.then125
  %call131 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 2) #8
  %irq_err = getelementptr i8, ptr %call90, i32 3056
  %62 = ptrtoint ptr %irq_err to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %call131, ptr %irq_err, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call131)
  %cmp133 = icmp slt i32 %call131, 1
  br i1 %cmp133, label %if.end130.failed_platform_get_irq_crit_edge, label %if.end130.if.end136_crit_edge

if.end130.if.end136_crit_edge:                    ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end136

if.end130.failed_platform_get_irq_crit_edge:      ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #10
  br label %failed_platform_get_irq

if.end136:                                        ; preds = %if.end130.if.end136_crit_edge, %if.end110.if.end136_crit_edge
  %63 = ptrtoint ptr %devtype_data98 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %devtype_data98, align 4
  %and139 = and i32 %64, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and139)
  %tobool140.not = icmp eq i32 %and139, 0
  br i1 %tobool140.not, label %if.end136.if.end150_crit_edge, label %if.then141

if.end136.if.end150_crit_edge:                    ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end150

if.then141:                                       ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #10
  %65 = ptrtoint ptr %ctrlmode_supported to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %ctrlmode_supported, align 8
  %or144 = or i32 %66, 160
  store i32 %or144, ptr %ctrlmode_supported, align 8
  %data_bittiming_const = getelementptr i8, ptr %call90, i32 2336
  %67 = ptrtoint ptr %data_bittiming_const to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr @flexcan_fd_data_bittiming_const, ptr %data_bittiming_const, align 8
  br label %if.end150

if.end150:                                        ; preds = %if.then141, %if.end136.if.end150_crit_edge
  %flexcan_fd_bittiming_const.sink = phi ptr [ @flexcan_fd_bittiming_const, %if.then141 ], [ @flexcan_bittiming_const, %if.end136.if.end150_crit_edge ]
  %68 = getelementptr i8, ptr %call90, i32 2332
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %flexcan_fd_bittiming_const.sink, ptr %68, align 4
  %usage_count.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 13
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #8
  %70 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 1, ptr elementtype(i32) %usage_count.i) #8, !srcloc !187
  %call.i281 = call i32 @__pm_runtime_set_status(ptr noundef %dev1, i32 noundef 0) #8
  call void @pm_runtime_enable(ptr noundef %dev1) #8
  %71 = ptrtoint ptr %regs116 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %regs116, align 4
  %call2.i = call fastcc i32 @flexcan_clks_enable(ptr noundef %add.ptr.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end150.do.end160_crit_edge

if.end150.do.end160_crit_edge:                    ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end160

if.end.i:                                         ; preds = %if.end150
  %73 = ptrtoint ptr %regs116 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %regs116, align 4
  %read.i.i = getelementptr i8, ptr %call90, i32 3064
  %75 = ptrtoint ptr %read.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %read.i.i, align 8
  %call.i.i282 = call i32 %76(ptr noundef %74) #8
  %or.i.i = or i32 %call.i.i282, -2147483648
  %write.i.i = getelementptr i8, ptr %call90, i32 3068
  %77 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %write.i.i, align 4
  call void %78(i32 noundef %or.i.i, ptr noundef %74) #8
  %79 = ptrtoint ptr %regs116 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %regs116, align 4
  br label %land.rhs.i.i.i

land.rhs.i.i.i:                                   ; preds = %while.body.i.i.i.land.rhs.i.i.i_crit_edge, %if.end.i
  %dec12.i.i.i = phi i32 [ 24, %if.end.i ], [ %dec.i.i.i, %while.body.i.i.i.land.rhs.i.i.i_crit_edge ]
  %81 = ptrtoint ptr %read.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %read.i.i, align 8
  %call.i.i.i283 = call i32 %82(ptr noundef %80) #8
  %and.i.i.i = and i32 %call.i.i.i283, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool2.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool2.not.i.i.i, label %while.body.i.i.i, label %land.rhs.i.i.i.flexcan_chip_disable.exit.i_crit_edge

land.rhs.i.i.i.flexcan_chip_disable.exit.i_crit_edge: ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %flexcan_chip_disable.exit.i

while.body.i.i.i:                                 ; preds = %land.rhs.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %83 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %83(i32 noundef 2147480) #8
  %dec.i.i.i = add nsw i32 %dec12.i.i.i, -1
  %tobool.not.i.i.i = icmp eq i32 %dec12.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %while.body.i.i.i.flexcan_chip_disable.exit.i_crit_edge, label %while.body.i.i.i.land.rhs.i.i.i_crit_edge

while.body.i.i.i.land.rhs.i.i.i_crit_edge:        ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs.i.i.i

while.body.i.i.i.flexcan_chip_disable.exit.i_crit_edge: ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %flexcan_chip_disable.exit.i

flexcan_chip_disable.exit.i:                      ; preds = %while.body.i.i.i.flexcan_chip_disable.exit.i_crit_edge, %land.rhs.i.i.i.flexcan_chip_disable.exit.i_crit_edge
  %84 = ptrtoint ptr %read.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %read.i.i, align 8
  %call5.i.i.i = call i32 %85(ptr noundef %80) #8
  %and6.i.i.i = and i32 %call5.i.i.i, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i.i)
  %tobool7.not.i.i.not.i = icmp eq i32 %and6.i.i.i, 0
  br i1 %tobool7.not.i.i.not.i, label %flexcan_chip_disable.exit.i.register_flexcandev.exit_crit_edge, label %if.end6.i

flexcan_chip_disable.exit.i.register_flexcandev.exit_crit_edge: ; preds = %flexcan_chip_disable.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %register_flexcandev.exit

if.end6.i:                                        ; preds = %flexcan_chip_disable.exit.i
  %86 = ptrtoint ptr %read.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %read.i.i, align 8
  %ctrl.i = getelementptr inbounds %struct.flexcan_regs, ptr %72, i32 0, i32 1
  %call7.i = call i32 %87(ptr noundef %ctrl.i) #8
  %88 = ptrtoint ptr %clk_src119 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %clk_src119, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %89)
  %tobool8.not.i = icmp eq i8 %89, 0
  %and.i = and i32 %call7.i, -8193
  %masksel.i = select i1 %tobool8.not.i, i32 0, i32 8192
  %reg.0.i = or i32 %masksel.i, %and.i
  %90 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %write.i.i, align 4
  call void %91(i32 noundef %reg.0.i, ptr noundef %ctrl.i) #8
  %92 = ptrtoint ptr %regs116 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %regs116, align 4
  %94 = ptrtoint ptr %read.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %read.i.i, align 8
  %call.i76.i = call i32 %95(ptr noundef %93) #8
  %and.i.i = and i32 %call.i76.i, 2147483647
  %96 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %write.i.i, align 4
  call void %97(i32 noundef %and.i.i, ptr noundef %93) #8
  %98 = ptrtoint ptr %regs116 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %regs116, align 4
  br label %land.rhs.i.i82.i

land.rhs.i.i82.i:                                 ; preds = %while.body.i.i85.i.land.rhs.i.i82.i_crit_edge, %if.end6.i
  %dec12.i.i78.i = phi i32 [ 24, %if.end6.i ], [ %dec.i.i83.i, %while.body.i.i85.i.land.rhs.i.i82.i_crit_edge ]
  %100 = ptrtoint ptr %read.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %read.i.i, align 8
  %call.i.i79.i = call i32 %101(ptr noundef %99) #8
  %and.i.i80.i = and i32 %call.i.i79.i, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i80.i)
  %tobool2.not.i.i81.i = icmp eq i32 %and.i.i80.i, 0
  br i1 %tobool2.not.i.i81.i, label %land.rhs.i.i82.i.flexcan_chip_enable.exit.i_crit_edge, label %while.body.i.i85.i

land.rhs.i.i82.i.flexcan_chip_enable.exit.i_crit_edge: ; preds = %land.rhs.i.i82.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %flexcan_chip_enable.exit.i

while.body.i.i85.i:                               ; preds = %land.rhs.i.i82.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %102 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %102(i32 noundef 2147480) #8
  %dec.i.i83.i = add nsw i32 %dec12.i.i78.i, -1
  %tobool.not.i.i84.i = icmp eq i32 %dec12.i.i78.i, 0
  br i1 %tobool.not.i.i84.i, label %while.body.i.i85.i.flexcan_chip_enable.exit.i_crit_edge, label %while.body.i.i85.i.land.rhs.i.i82.i_crit_edge

while.body.i.i85.i.land.rhs.i.i82.i_crit_edge:    ; preds = %while.body.i.i85.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs.i.i82.i

while.body.i.i85.i.flexcan_chip_enable.exit.i_crit_edge: ; preds = %while.body.i.i85.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %flexcan_chip_enable.exit.i

flexcan_chip_enable.exit.i:                       ; preds = %while.body.i.i85.i.flexcan_chip_enable.exit.i_crit_edge, %land.rhs.i.i82.i.flexcan_chip_enable.exit.i_crit_edge
  %103 = ptrtoint ptr %read.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %read.i.i, align 8
  %call5.i.i86.i = call i32 %104(ptr noundef %99) #8
  %and6.i.i87.i = and i32 %call5.i.i86.i, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i87.i)
  %tobool7.not.i.i88.i = icmp eq i32 %and6.i.i87.i, 0
  br i1 %tobool7.not.i.i88.i, label %if.end15.i, label %flexcan_chip_enable.exit.i.out_chip_disable.i_crit_edge

flexcan_chip_enable.exit.i.out_chip_disable.i_crit_edge: ; preds = %flexcan_chip_enable.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_chip_disable.i

if.end15.i:                                       ; preds = %flexcan_chip_enable.exit.i
  %105 = ptrtoint ptr %regs116 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %regs116, align 4
  %bittiming.i.i = getelementptr i8, ptr %call90, i32 2340
  %107 = ptrtoint ptr %bittiming.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %bittiming.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %tobool.not.i.i = icmp eq i32 %108, 0
  br i1 %tobool.not.i.i, label %if.end15.i.if.end.i.i_crit_edge, label %if.then.i.i

if.end15.i.if.end.i.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #10
  %div.i.i = udiv i32 10000000, %108
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.end15.i.if.end.i.i_crit_edge
  %timeout.0.i.i = phi i32 [ %div.i.i, %if.then.i.i ], [ 25, %if.end15.i.if.end.i.i_crit_edge ]
  %109 = ptrtoint ptr %read.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %read.i.i, align 8
  %call.i92.i = call i32 %110(ptr noundef %106) #8
  %or.i93.i = or i32 %call.i92.i, 1342177280
  %111 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %write.i.i, align 4
  call void %112(i32 noundef %or.i93.i, ptr noundef %106) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout.0.i.i)
  %tobool4.not30.i.i = icmp eq i32 %timeout.0.i.i, 0
  br i1 %tobool4.not30.i.i, label %if.end.i.i.flexcan_chip_freeze.exit.i_crit_edge, label %if.end.i.i.land.rhs.i.i_crit_edge

if.end.i.i.land.rhs.i.i_crit_edge:                ; preds = %if.end.i.i
  br label %land.rhs.i.i

if.end.i.i.flexcan_chip_freeze.exit.i_crit_edge:  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %flexcan_chip_freeze.exit.i

land.rhs.i.i:                                     ; preds = %while.body.i.i.land.rhs.i.i_crit_edge, %if.end.i.i.land.rhs.i.i_crit_edge
  %dec31.in.i.i = phi i32 [ %dec31.i.i, %while.body.i.i.land.rhs.i.i_crit_edge ], [ %timeout.0.i.i, %if.end.i.i.land.rhs.i.i_crit_edge ]
  %113 = ptrtoint ptr %read.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %read.i.i, align 8
  %call7.i.i = call i32 %114(ptr noundef %106) #8
  %and.i95.i = and i32 %call7.i.i, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i95.i)
  %tobool8.not.i.i = icmp eq i32 %and.i95.i, 0
  br i1 %tobool8.not.i.i, label %while.body.i.i, label %land.rhs.i.i.flexcan_chip_freeze.exit.i_crit_edge

land.rhs.i.i.flexcan_chip_freeze.exit.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %flexcan_chip_freeze.exit.i

while.body.i.i:                                   ; preds = %land.rhs.i.i
  %dec31.i.i = add nsw i32 %dec31.in.i.i, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %115 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %115(i32 noundef 21474800) #8
  %tobool4.not.i.i = icmp eq i32 %dec31.i.i, 0
  br i1 %tobool4.not.i.i, label %while.body.i.i.flexcan_chip_freeze.exit.i_crit_edge, label %while.body.i.i.land.rhs.i.i_crit_edge

while.body.i.i.land.rhs.i.i_crit_edge:            ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs.i.i

while.body.i.i.flexcan_chip_freeze.exit.i_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %flexcan_chip_freeze.exit.i

flexcan_chip_freeze.exit.i:                       ; preds = %while.body.i.i.flexcan_chip_freeze.exit.i_crit_edge, %land.rhs.i.i.flexcan_chip_freeze.exit.i_crit_edge, %if.end.i.i.flexcan_chip_freeze.exit.i_crit_edge
  %116 = ptrtoint ptr %read.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %read.i.i, align 8
  %call11.i.i = call i32 %117(ptr noundef %106) #8
  %and12.i.i = and i32 %call11.i.i, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i.i)
  %tobool13.not.i.not.i = icmp eq i32 %and12.i.i, 0
  br i1 %tobool13.not.i.not.i, label %flexcan_chip_freeze.exit.i.out_chip_disable.i_crit_edge, label %if.end19.i

flexcan_chip_freeze.exit.i.out_chip_disable.i_crit_edge: ; preds = %flexcan_chip_freeze.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_chip_disable.i

if.end19.i:                                       ; preds = %flexcan_chip_freeze.exit.i
  %118 = ptrtoint ptr %read.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %read.i.i, align 8
  %call21.i = call i32 %119(ptr noundef %72) #8
  %or22.i = or i32 %call21.i, 545259520
  %120 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %write.i.i, align 4
  call void %121(i32 noundef %or22.i, ptr noundef %72) #8
  %122 = ptrtoint ptr %read.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %read.i.i, align 8
  %call27.i = call i32 %123(ptr noundef %72) #8
  %and28.i = and i32 %call27.i, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28.i)
  %tobool29.not.i = icmp eq i32 %and28.i, 0
  br i1 %tobool29.not.i, label %if.then30.i, label %if.end31.i

if.then30.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %call90, ptr noundef nonnull @.str.52) #11
  br label %out_chip_disable.i

if.end31.i:                                       ; preds = %if.end19.i
  %call32.i = call i32 @register_candev(ptr noundef %call90) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32.i)
  %tobool33.not.i = icmp eq i32 %call32.i, 0
  br i1 %tobool33.not.i, label %register_flexcandev.exit.thread, label %if.end31.i.out_chip_disable.i_crit_edge

if.end31.i.out_chip_disable.i_crit_edge:          ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_chip_disable.i

register_flexcandev.exit.thread:                  ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #10
  %call36.i = call fastcc i32 @flexcan_chip_disable(ptr noundef %add.ptr.i) #8
  %124 = ptrtoint ptr %dev112 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %dev112, align 8
  %call.i96.i = call i32 @__pm_runtime_idle(ptr noundef %125, i32 noundef 5) #8
  br label %if.end162

out_chip_disable.i:                               ; preds = %if.end31.i.out_chip_disable.i_crit_edge, %if.then30.i, %flexcan_chip_freeze.exit.i.out_chip_disable.i_crit_edge, %flexcan_chip_enable.exit.i.out_chip_disable.i_crit_edge
  %err.0.i = phi i32 [ -110, %flexcan_chip_enable.exit.i.out_chip_disable.i_crit_edge ], [ -110, %flexcan_chip_freeze.exit.i.out_chip_disable.i_crit_edge ], [ %call32.i, %if.end31.i.out_chip_disable.i_crit_edge ], [ -19, %if.then30.i ]
  %126 = ptrtoint ptr %regs116 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %regs116, align 4
  %128 = ptrtoint ptr %read.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %read.i.i, align 8
  %call.i99.i = call i32 %129(ptr noundef %127) #8
  %or.i100.i = or i32 %call.i99.i, -2147483648
  %130 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %write.i.i, align 4
  call void %131(i32 noundef %or.i100.i, ptr noundef %127) #8
  %132 = ptrtoint ptr %regs116 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %regs116, align 4
  br label %land.rhs.i.i106.i

land.rhs.i.i106.i:                                ; preds = %while.body.i.i109.i.land.rhs.i.i106.i_crit_edge, %out_chip_disable.i
  %dec12.i.i102.i = phi i32 [ 24, %out_chip_disable.i ], [ %dec.i.i107.i, %while.body.i.i109.i.land.rhs.i.i106.i_crit_edge ]
  %134 = ptrtoint ptr %read.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %read.i.i, align 8
  %call.i.i103.i = call i32 %135(ptr noundef %133) #8
  %and.i.i104.i = and i32 %call.i.i103.i, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i104.i)
  %tobool2.not.i.i105.i = icmp eq i32 %and.i.i104.i, 0
  br i1 %tobool2.not.i.i105.i, label %while.body.i.i109.i, label %land.rhs.i.i106.i.flexcan_chip_disable.exit114.i_crit_edge

land.rhs.i.i106.i.flexcan_chip_disable.exit114.i_crit_edge: ; preds = %land.rhs.i.i106.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %flexcan_chip_disable.exit114.i

while.body.i.i109.i:                              ; preds = %land.rhs.i.i106.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %136 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %136(i32 noundef 2147480) #8
  %dec.i.i107.i = add nsw i32 %dec12.i.i102.i, -1
  %tobool.not.i.i108.i = icmp eq i32 %dec12.i.i102.i, 0
  br i1 %tobool.not.i.i108.i, label %while.body.i.i109.i.flexcan_chip_disable.exit114.i_crit_edge, label %while.body.i.i109.i.land.rhs.i.i106.i_crit_edge

while.body.i.i109.i.land.rhs.i.i106.i_crit_edge:  ; preds = %while.body.i.i109.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs.i.i106.i

while.body.i.i109.i.flexcan_chip_disable.exit114.i_crit_edge: ; preds = %while.body.i.i109.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %flexcan_chip_disable.exit114.i

flexcan_chip_disable.exit114.i:                   ; preds = %while.body.i.i109.i.flexcan_chip_disable.exit114.i_crit_edge, %land.rhs.i.i106.i.flexcan_chip_disable.exit114.i_crit_edge
  %137 = ptrtoint ptr %read.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %read.i.i, align 8
  %call5.i.i110.i = call i32 %138(ptr noundef %133) #8
  br label %register_flexcandev.exit

register_flexcandev.exit:                         ; preds = %flexcan_chip_disable.exit114.i, %flexcan_chip_disable.exit.i.register_flexcandev.exit_crit_edge
  %err.1.i = phi i32 [ -110, %flexcan_chip_disable.exit.i.register_flexcandev.exit_crit_edge ], [ %err.0.i, %flexcan_chip_disable.exit114.i ]
  %139 = ptrtoint ptr %clk_per118 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %clk_per118, align 8
  call void @clk_disable(ptr noundef %140) #8
  call void @clk_unprepare(ptr noundef %140) #8
  %141 = ptrtoint ptr %clk_ipg117 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %clk_ipg117, align 4
  call void @clk_disable(ptr noundef %142) #8
  call void @clk_unprepare(ptr noundef %142) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1.i)
  %tobool156.not = icmp eq i32 %err.1.i, 0
  br i1 %tobool156.not, label %register_flexcandev.exit.if.end162_crit_edge, label %register_flexcandev.exit.do.end160_crit_edge

register_flexcandev.exit.do.end160_crit_edge:     ; preds = %register_flexcandev.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end160

register_flexcandev.exit.if.end162_crit_edge:     ; preds = %register_flexcandev.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end162

do.end160:                                        ; preds = %register_flexcandev.exit.do.end160_crit_edge, %if.end150.do.end160_crit_edge
  %retval.0.i289 = phi i32 [ %err.1.i, %register_flexcandev.exit.do.end160_crit_edge ], [ %call2.i, %if.end150.do.end160_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.22) #11
  br label %failed_register

if.end162:                                        ; preds = %register_flexcandev.exit.if.end162_crit_edge, %register_flexcandev.exit.thread
  %call163 = call fastcc i32 @flexcan_setup_stop_mode(ptr noundef %pdev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call163)
  %cmp164 = icmp slt i32 %call163, 0
  br i1 %cmp164, label %if.then165, label %if.end173

if.then165:                                       ; preds = %if.end162
  call void @__sanitizer_cov_trace_const_cmp4(i32 -517, i32 %call163)
  %cmp166.not = icmp eq i32 %call163, -517
  br i1 %cmp166.not, label %if.then165.failed_setup_stop_mode_crit_edge, label %do.end170

if.then165.failed_setup_stop_mode_crit_edge:      ; preds = %if.then165
  call void @__sanitizer_cov_trace_pc() #10
  br label %failed_setup_stop_mode

do.end170:                                        ; preds = %if.then165
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.25) #11
  br label %failed_setup_stop_mode

if.end173:                                        ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #10
  call void @of_can_transceiver(ptr noundef nonnull %call90) #8
  br label %cleanup

failed_setup_stop_mode:                           ; preds = %do.end170, %if.then165.failed_setup_stop_mode_crit_edge
  call void @unregister_candev(ptr noundef %call90) #8
  br label %failed_register

failed_register:                                  ; preds = %failed_setup_stop_mode, %do.end160
  %err.0 = phi i32 [ %retval.0.i289, %do.end160 ], [ %call163, %failed_setup_stop_mode ]
  call fastcc void @pm_runtime_put_noidle(ptr noundef %dev1)
  call void @__pm_runtime_disable(ptr noundef %dev1, i1 noundef zeroext true) #8
  br label %failed_platform_get_irq

failed_platform_get_irq:                          ; preds = %failed_register, %if.end130.failed_platform_get_irq_crit_edge, %if.then125.failed_platform_get_irq_crit_edge
  %err.1 = phi i32 [ %err.0, %failed_register ], [ -19, %if.then125.failed_platform_get_irq_crit_edge ], [ -19, %if.end130.failed_platform_get_irq_crit_edge ]
  call void @free_candev(ptr noundef nonnull %call90) #8
  br label %cleanup

cleanup:                                          ; preds = %failed_platform_get_irq, %if.end173, %if.end89.cleanup_crit_edge, %do.end86, %do.end77, %if.else62.cleanup_crit_edge, %if.then55, %if.end48.cleanup_crit_edge, %do.end43, %do.end, %if.else6.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %20, %if.then55 ], [ -22, %do.end86 ], [ %err.1, %failed_platform_get_irq ], [ 0, %if.end173 ], [ -22, %do.end77 ], [ %17, %do.end ], [ %18, %do.end43 ], [ %magicptr, %entry.cleanup_crit_edge ], [ -19, %if.end48.cleanup_crit_edge ], [ -19, %if.else62.cleanup_crit_edge ], [ -12, %if.end89.cleanup_crit_edge ], [ %magicptr, %if.else6.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clock_freq) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %clk_src) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @flexcan_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call2 = tail call i32 @device_set_wakeup_enable(ptr noundef %dev1, i1 noundef zeroext false) #8
  tail call void @device_set_wakeup_capable(ptr noundef %dev1, i1 noundef zeroext false) #8
  tail call void @unregister_candev(ptr noundef %1) #8
  tail call void @__pm_runtime_disable(ptr noundef %dev1, i1 noundef zeroext true) #8
  tail call void @free_candev(ptr noundef %1) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_candev_mqs(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @flexcan_set_ethtool_ops(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @flexcan_read_be(ptr noundef %addr) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %addr) #8, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !189
  ret i32 %0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @flexcan_write_be(i32 noundef %val, ptr noundef %addr) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !190
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %addr, i32 %val) #8, !srcloc !191
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @flexcan_read_le(ptr noundef %addr) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %addr) #8, !srcloc !188
  %1 = tail call i32 @llvm.bswap.i32(i32 %0) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !192
  ret i32 %1
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @flexcan_write_le(i32 noundef %val, ptr noundef %addr) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !193
  tail call void @arm_heavy_mb() #8
  %0 = tail call i32 @llvm.bswap.i32(i32 %val) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %addr, i32 %0) #8, !srcloc !191
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @flexcan_set_mode(ptr noundef %dev, i32 noundef %mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %mode)
  %cond = icmp eq i32 %mode, 1
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %call = tail call fastcc i32 @flexcan_chip_start(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %regs1.i = getelementptr i8, ptr %dev, i32 2988
  %0 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs1.i, align 4
  %irq.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 64
  %2 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq.i, align 4
  tail call void @disable_irq(i32 noundef %3) #8
  %write.i = getelementptr i8, ptr %dev, i32 3068
  %4 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write.i, align 4
  %reg_ctrl_default.i = getelementptr i8, ptr %dev, i32 3024
  %6 = ptrtoint ptr %reg_ctrl_default.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %reg_ctrl_default.i, align 8
  %ctrl.i = getelementptr inbounds %struct.flexcan_regs, ptr %1, i32 0, i32 1
  tail call void %5(i32 noundef %7, ptr noundef %ctrl.i) #8
  %rx_mask.i = getelementptr i8, ptr %dev, i32 3008
  %8 = ptrtoint ptr %rx_mask.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %rx_mask.i, align 8
  %tx_mask.i = getelementptr i8, ptr %dev, i32 3016
  %10 = ptrtoint ptr %tx_mask.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %tx_mask.i, align 8
  %or.i = or i64 %11, %9
  %12 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write.i, align 4
  %shr.i = lshr i64 %or.i, 32
  %conv.i = trunc i64 %shr.i to i32
  %imask2.i = getelementptr inbounds %struct.flexcan_regs, ptr %1, i32 0, i32 9
  tail call void %13(i32 noundef %conv.i, ptr noundef %imask2.i) #8
  %14 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write.i, align 4
  %conv5.i = trunc i64 %or.i to i32
  %imask1.i = getelementptr inbounds %struct.flexcan_regs, ptr %1, i32 0, i32 10
  tail call void %15(i32 noundef %conv5.i, ptr noundef %imask1.i) #8
  %16 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %irq.i, align 4
  tail call void @enable_irq(i32 noundef %17) #8
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %18 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %19) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call, %sw.bb.cleanup_crit_edge ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @flexcan_get_berr_counter(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %bec) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr i8, ptr %dev, i32 2984
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 8
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 8
  %usage_count.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !194
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #8
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #8, !srcloc !195
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.then.cleanup_crit_edge, label %do.end11.i.i.i.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end11.i.i.i.i:                                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !196
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %regs1.i = getelementptr i8, ptr %dev, i32 2988
  %5 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs1.i, align 4
  %read.i = getelementptr i8, ptr %dev, i32 3064
  %7 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %read.i, align 8
  %ecr.i = getelementptr inbounds %struct.flexcan_regs, ptr %6, i32 0, i32 7
  %call2.i = tail call i32 %8(ptr noundef %ecr.i) #8
  %9 = trunc i32 %call2.i to i16
  %conv.i = and i16 %9, 255
  %10 = ptrtoint ptr %bec to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv.i, ptr %bec, align 2
  %11 = lshr i16 %9, 8
  %rxerr.i = getelementptr inbounds %struct.can_berr_counter, ptr %bec, i32 0, i32 1
  %12 = ptrtoint ptr %rxerr.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %rxerr.i, align 2
  %13 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev1, align 8
  %call.i13 = tail call i32 @__pm_runtime_idle(ptr noundef %14, i32 noundef 5) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end11.i.i.i.i, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call.i, %if.then.cleanup_crit_edge ], [ %call.i, %do.end11.i.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @flexcan_setup_stop_mode(ptr noundef %pdev) unnamed_addr #2 align 64 {
entry:
  %scu_idx.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %devtype_data = getelementptr i8, ptr %1, i32 3036
  %2 = ptrtoint ptr %devtype_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %devtype_data, align 4
  %and = and i32 %3, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %scu_idx.i) #8
  %4 = ptrtoint ptr %scu_idx.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %scu_idx.i, align 1, !annotation !197
  %dev1.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %5 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %of_node.i, align 8
  %call.i.i.i = call i32 @of_property_read_variable_u8_array(ptr noundef %6, ptr noundef nonnull @.str.54, ptr noundef nonnull %scu_idx.i, i32 noundef 1, i32 noundef 0) #8
  %7 = call i32 @llvm.smin.i32(i32 %call.i.i.i, i32 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i, label %do.body.i, label %if.end9.i

do.body.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @flexcan_setup_stop_mode_scfw.__UNIQUE_ID_ddebug603, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@flexcan_setup_stop_mode, %flexcan_setup_stop_mode_scfw.exit)) #8
          to label %if.then7.i [label %flexcan_setup_stop_mode_scfw.exit], !srcloc !198

if.then7.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @flexcan_setup_stop_mode_scfw.__UNIQUE_ID_ddebug603, ptr noundef %dev1.i, ptr noundef nonnull @.str.56) #8
  br label %flexcan_setup_stop_mode_scfw.exit

if.end9.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %scu_idx.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %scu_idx.i, align 1
  %scu_idx11.i = getelementptr i8, ptr %1, i32 3004
  %10 = ptrtoint ptr %scu_idx11.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %scu_idx11.i, align 4
  %sc_ipc_handle.i = getelementptr i8, ptr %1, i32 3060
  %call12.i = call i32 @imx_scu_get_handle(ptr noundef %sc_ipc_handle.i) #8
  br label %flexcan_setup_stop_mode_scfw.exit

flexcan_setup_stop_mode_scfw.exit:                ; preds = %if.end9.i, %if.then7.i, %do.body.i
  %retval.0.i = phi i32 [ %call12.i, %if.end9.i ], [ %7, %if.then7.i ], [ %7, %do.body.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %scu_idx.i) #8
  br label %if.end10

if.else:                                          ; preds = %entry
  %and5 = and i32 %3, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.else.cleanup_crit_edge, label %if.then7

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then7:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %call8 = tail call fastcc i32 @flexcan_setup_stop_mode_gpr(ptr noundef %pdev)
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %flexcan_setup_stop_mode_scfw.exit
  %ret.0 = phi i32 [ %retval.0.i, %flexcan_setup_stop_mode_scfw.exit ], [ %call8, %if.then7 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool11.not = icmp eq i32 %ret.0, 0
  br i1 %tobool11.not, label %if.end13, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end13:                                         ; preds = %if.end10
  %dev14 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  call void @device_set_wakeup_capable(ptr noundef %dev14, i1 noundef zeroext true) #8
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %11 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %of_node, align 8
  %call.i = call ptr @of_find_property(ptr noundef %12, ptr noundef nonnull @.str.53, ptr noundef null) #8
  %tobool.i.not = icmp eq ptr %call.i, null
  br i1 %tobool.i.not, label %if.end13.cleanup_crit_edge, label %if.then17

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then17:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %call19 = call i32 @device_set_wakeup_enable(ptr noundef %dev14, i1 noundef zeroext true) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then17, %if.end13.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.else.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.else.cleanup_crit_edge ], [ %ret.0, %if.end10.cleanup_crit_edge ], [ 0, %if.then17 ], [ 0, %if.end13.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_can_transceiver(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pm_runtime_put_noidle(ptr noundef %dev) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %usage_count = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 13
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !194
  tail call void @llvm.prefetch.p0(ptr %usage_count, i32 1, i32 3, i32 1) #8
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count, ptr %usage_count, i32 0, i32 -1, ptr elementtype(i32) %usage_count) #8, !srcloc !195
  %asmresult.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %entry.atomic_add_unless.exit_crit_edge, label %do.end11.i.i.i

entry.atomic_add_unless.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %atomic_add_unless.exit

do.end11.i.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !196
  br label %atomic_add_unless.exit

atomic_add_unless.exit:                           ; preds = %do.end11.i.i.i, %entry.atomic_add_unless.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_candev(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u8_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @flexcan_open(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrlmode = getelementptr i8, ptr %dev, i32 2476
  %0 = ptrtoint ptr %ctrlmode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ctrlmode, align 4
  %2 = and i32 %1, 36
  call void @__sanitizer_cov_trace_const_cmp4(i32 36, i32 %2)
  %.not = icmp eq i32 %2, 36
  br i1 %.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.27) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev5 = getelementptr i8, ptr %dev, i32 2984
  %3 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev5, align 8
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %4, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end
  %5 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev5, align 8
  %usage_count.i = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !194
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #8
  %7 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #8, !srcloc !195
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.then7.cleanup_crit_edge, label %do.end11.i.i.i.i

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end11.i.i.i.i:                                 ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !196
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %call10 = tail call i32 @open_candev(ptr noundef %dev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end9.out_runtime_put_crit_edge

if.end9.out_runtime_put_crit_edge:                ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_runtime_put

if.end13:                                         ; preds = %if.end9
  %reg_xceiver.i = getelementptr i8, ptr %dev, i32 3040
  %8 = ptrtoint ptr %reg_xceiver.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg_xceiver.i, align 8
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.end13.if.end17_crit_edge, label %flexcan_transceiver_enable.exit

if.end13.if.end17_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

flexcan_transceiver_enable.exit:                  ; preds = %if.end13
  %call.i98 = tail call i32 @regulator_enable(ptr noundef nonnull %9) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i98)
  %tobool15.not = icmp eq i32 %call.i98, 0
  br i1 %tobool15.not, label %flexcan_transceiver_enable.exit.if.end17_crit_edge, label %flexcan_transceiver_enable.exit.out_close_crit_edge

flexcan_transceiver_enable.exit.out_close_crit_edge: ; preds = %flexcan_transceiver_enable.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_close

flexcan_transceiver_enable.exit.if.end17_crit_edge: ; preds = %flexcan_transceiver_enable.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

if.end17:                                         ; preds = %flexcan_transceiver_enable.exit.if.end17_crit_edge, %if.end13.if.end17_crit_edge
  %10 = ptrtoint ptr %ctrlmode to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ctrlmode, align 4
  %and.i = and i32 %11, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i99 = icmp eq i32 %and.i, 0
  %spec.select.i = select i1 %tobool.not.i99, i8 16, i8 72
  %12 = getelementptr i8, ptr %dev, i32 3002
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %spec.select.i, ptr %12, align 2
  %devtype_data.i = getelementptr i8, ptr %dev, i32 3036
  %14 = ptrtoint ptr %devtype_data.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %devtype_data.i, align 4
  %and2.i = and i32 %15, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool3.not.i, label %if.else5.i, label %if.end17.if.end12.i_crit_edge

if.end17.if.end12.i_crit_edge:                    ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12.i

if.else5.i:                                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i = zext i8 %spec.select.i to i16
  %div.i = udiv i16 512, %conv.i
  %div.tr.i = trunc i16 %div.i to i8
  %conv10.i = shl nuw nsw i8 %div.tr.i, 1
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.else5.i, %if.end17.if.end12.i_crit_edge
  %.sink128.i = phi i8 [ %conv10.i, %if.else5.i ], [ 16, %if.end17.if.end12.i_crit_edge ]
  %16 = getelementptr i8, ptr %dev, i32 3001
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %.sink128.i, ptr %16, align 1
  %and15.i = and i32 %15, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i)
  %tobool16.not.i = icmp eq i32 %and15.i, 0
  br i1 %tobool16.not.i, label %if.end23.i106.i, label %if.end23.i.i

if.end23.i.i:                                     ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  %regs.i.i = getelementptr i8, ptr %dev, i32 2988
  %18 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs.i.i, align 4
  %20 = getelementptr inbounds %struct.flexcan_regs, ptr %19, i32 0, i32 25
  br label %if.end22.i

if.end23.i106.i:                                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv24.i95.i = zext i8 %spec.select.i to i16
  %div.i96.i = udiv i16 512, %conv24.i95.i
  %not.tobool.not.i99 = xor i1 %tobool.not.i99, true
  %regs.i100.i = getelementptr i8, ptr %dev, i32 2988
  %21 = ptrtoint ptr %regs.i100.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs.i100.i, align 4
  %23 = getelementptr inbounds %struct.flexcan_regs, ptr %22, i32 0, i32 25
  %idxprom.i101.i = zext i1 %not.tobool.not.i99 to i32
  %conv38.i102.i = zext i8 %spec.select.i to i32
  %24 = sub nsw i16 8, %div.i96.i
  %25 = and i16 %24, 255
  %26 = zext i16 %25 to i32
  %conv39.i103.i = select i1 %tobool.not.i99, i32 8, i32 %26
  %mul.i104.i = mul nuw nsw i32 %conv39.i103.i, %conv38.i102.i
  %arrayidx40.i105.i = getelementptr [2 x [512 x i8]], ptr %23, i32 0, i32 %idxprom.i101.i, i32 %mul.i104.i
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.end23.i106.i, %if.end23.i.i
  %retval.0.i107.sink.i = phi ptr [ %20, %if.end23.i.i ], [ %arrayidx40.i105.i, %if.end23.i106.i ]
  %tx_mb_reserved21.i = getelementptr i8, ptr %dev, i32 2996
  %27 = ptrtoint ptr %tx_mb_reserved21.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %retval.0.i107.sink.i, ptr %tx_mb_reserved21.i, align 4
  %28 = ptrtoint ptr %16 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %16, align 1
  %sub.i = add i8 %29, -1
  %tx_mb_idx.i = getelementptr i8, ptr %dev, i32 3000
  %30 = ptrtoint ptr %tx_mb_idx.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %sub.i, ptr %tx_mb_idx.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %cmp.not.i110.not.i = icmp eq i8 %29, 0
  br i1 %cmp.not.i110.not.i, label %do.end.i111.i, label %if.end23.i124.i, !prof !199

do.end.i111.i:                                    ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 448, i32 noundef 9, ptr noundef null) #8
  br label %flexcan_get_mb.exit126.i

if.end23.i124.i:                                  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #10
  %31 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %12, align 2
  %conv24.i113.i = zext i8 %32 to i16
  %div.i114.i = udiv i16 512, %conv24.i113.i
  %33 = and i16 %div.i114.i, 255
  %34 = zext i8 %sub.i to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %33, i16 %34)
  %cmp28.i115.i = icmp ule i16 %33, %34
  %35 = trunc i16 %div.i114.i to i8
  %conv34.i116.i = select i1 %cmp28.i115.i, i8 %35, i8 0
  %mb_index.addr.0.i117.i = sub i8 %sub.i, %conv34.i116.i
  %regs.i118.i = getelementptr i8, ptr %dev, i32 2988
  %36 = ptrtoint ptr %regs.i118.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regs.i118.i, align 4
  %38 = getelementptr inbounds %struct.flexcan_regs, ptr %37, i32 0, i32 25
  %idxprom.i119.i = zext i1 %cmp28.i115.i to i32
  %conv38.i120.i = zext i8 %32 to i32
  %conv39.i121.i = zext i8 %mb_index.addr.0.i117.i to i32
  %mul.i122.i = mul nuw nsw i32 %conv39.i121.i, %conv38.i120.i
  %arrayidx40.i123.i = getelementptr [2 x [512 x i8]], ptr %38, i32 0, i32 %idxprom.i119.i, i32 %mul.i122.i
  br label %flexcan_get_mb.exit126.i

flexcan_get_mb.exit126.i:                         ; preds = %if.end23.i124.i, %do.end.i111.i
  %retval.0.i125.i = phi ptr [ null, %do.end.i111.i ], [ %arrayidx40.i123.i, %if.end23.i124.i ]
  %tx_mb.i = getelementptr i8, ptr %dev, i32 2992
  %39 = ptrtoint ptr %tx_mb.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %retval.0.i125.i, ptr %tx_mb.i, align 8
  %40 = ptrtoint ptr %tx_mb_idx.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %tx_mb_idx.i, align 8
  %sh_prom.i = zext i8 %41 to i64
  %shl.i = shl nuw i64 1, %sh_prom.i
  %tx_mask.i = getelementptr i8, ptr %dev, i32 3016
  %42 = ptrtoint ptr %tx_mask.i to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %shl.i, ptr %tx_mask.i, align 8
  %offload.i = getelementptr i8, ptr %dev, i32 2616
  %mailbox_read.i = getelementptr i8, ptr %dev, i32 2620
  %43 = ptrtoint ptr %mailbox_read.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @flexcan_mailbox_read, ptr %mailbox_read.i, align 4
  %44 = ptrtoint ptr %devtype_data.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %devtype_data.i, align 4
  %and32.i = and i32 %45, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32.i)
  %tobool33.not.i = icmp eq i32 %and32.i, 0
  br i1 %tobool33.not.i, label %if.else54.i, label %if.then34.i

if.then34.i:                                      ; preds = %flexcan_get_mb.exit126.i
  call void @__sanitizer_cov_trace_pc() #10
  %mb_first.i = getelementptr i8, ptr %dev, i32 2740
  %46 = ptrtoint ptr %mb_first.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 1, ptr %mb_first.i, align 4
  %47 = ptrtoint ptr %16 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %16, align 1
  %conv37.i = zext i8 %48 to i32
  %sub38.i = add nsw i32 %conv37.i, -2
  %mb_last.i = getelementptr i8, ptr %dev, i32 2744
  %49 = ptrtoint ptr %mb_last.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %sub38.i, ptr %mb_last.i, align 8
  %sub48.i = sub nsw i32 65, %conv37.i
  %sh_prom49.i = zext i32 %sub48.i to i64
  %shr.i = lshr i64 -1, %sh_prom49.i
  %and50.i = and i64 %shr.i, -2
  %rx_mask.i = getelementptr i8, ptr %dev, i32 3008
  %50 = ptrtoint ptr %rx_mask.i to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 %and50.i, ptr %rx_mask.i, align 8
  %call53.i = tail call i32 @can_rx_offload_add_timestamp(ptr noundef %dev, ptr noundef %offload.i) #8
  br label %flexcan_rx_offload_setup.exit

if.else54.i:                                      ; preds = %flexcan_get_mb.exit126.i
  call void @__sanitizer_cov_trace_pc() #10
  %rx_mask55.i = getelementptr i8, ptr %dev, i32 3008
  %51 = ptrtoint ptr %rx_mask55.i to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 160, ptr %rx_mask55.i, align 8
  %call57.i = tail call i32 @can_rx_offload_add_fifo(ptr noundef %dev, ptr noundef %offload.i, i32 noundef 10) #8
  br label %flexcan_rx_offload_setup.exit

flexcan_rx_offload_setup.exit:                    ; preds = %if.else54.i, %if.then34.i
  %err.0.i = phi i32 [ %call53.i, %if.then34.i ], [ %call57.i, %if.else54.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i)
  %tobool19.not = icmp eq i32 %err.0.i, 0
  br i1 %tobool19.not, label %if.end21, label %flexcan_rx_offload_setup.exit.out_transceiver_disable_crit_edge

flexcan_rx_offload_setup.exit.out_transceiver_disable_crit_edge: ; preds = %flexcan_rx_offload_setup.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_transceiver_disable

if.end21:                                         ; preds = %flexcan_rx_offload_setup.exit
  %call22 = tail call fastcc i32 @flexcan_chip_start(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %if.end21.out_can_rx_offload_del_crit_edge

if.end21.out_can_rx_offload_del_crit_edge:        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_can_rx_offload_del

if.end25:                                         ; preds = %if.end21
  tail call void @can_rx_offload_enable(ptr noundef %offload.i) #8
  %irq = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 64
  %52 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %irq, align 4
  %call.i100 = tail call i32 @request_threaded_irq(i32 noundef %53, ptr noundef nonnull @flexcan_irq, ptr noundef null, i32 noundef 128, ptr noundef %dev, ptr noundef %dev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i100)
  %tobool27.not = icmp eq i32 %call.i100, 0
  br i1 %tobool27.not, label %if.end29, label %if.end25.out_can_rx_offload_disable_crit_edge

if.end25.out_can_rx_offload_disable_crit_edge:    ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_can_rx_offload_disable

if.end29:                                         ; preds = %if.end25
  %54 = ptrtoint ptr %devtype_data.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %devtype_data.i, align 4
  %and30 = and i32 %55, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %if.end29.if.end45_crit_edge, label %if.then32

if.end29.if.end45_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45

if.then32:                                        ; preds = %if.end29
  %irq_boff = getelementptr i8, ptr %dev, i32 3052
  %56 = ptrtoint ptr %irq_boff to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %irq_boff, align 4
  %call.i101 = tail call i32 @request_threaded_irq(i32 noundef %57, ptr noundef nonnull @flexcan_irq, ptr noundef null, i32 noundef 128, ptr noundef %dev, ptr noundef %dev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i101)
  %tobool36.not = icmp eq i32 %call.i101, 0
  br i1 %tobool36.not, label %if.end38, label %if.then32.out_free_irq_crit_edge

if.then32.out_free_irq_crit_edge:                 ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free_irq

if.end38:                                         ; preds = %if.then32
  %irq_err = getelementptr i8, ptr %dev, i32 3056
  %58 = ptrtoint ptr %irq_err to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %irq_err, align 8
  %call.i102 = tail call i32 @request_threaded_irq(i32 noundef %59, ptr noundef nonnull @flexcan_irq, ptr noundef null, i32 noundef 128, ptr noundef %dev, ptr noundef %dev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i102)
  %tobool42.not = icmp eq i32 %call.i102, 0
  br i1 %tobool42.not, label %if.end38.if.end45_crit_edge, label %out_free_irq_boff

if.end38.if.end45_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45

if.end45:                                         ; preds = %if.end38.if.end45_crit_edge, %if.end29.if.end45_crit_edge
  tail call fastcc void @flexcan_chip_interrupts_enable(ptr noundef %dev)
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %60 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %61, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #8
  br label %cleanup

out_free_irq_boff:                                ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  %62 = ptrtoint ptr %irq_boff to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %irq_boff, align 4
  %call47 = tail call ptr @free_irq(i32 noundef %63, ptr noundef %dev) #8
  br label %out_free_irq

out_free_irq:                                     ; preds = %out_free_irq_boff, %if.then32.out_free_irq_crit_edge
  %err.0 = phi i32 [ %call.i101, %if.then32.out_free_irq_crit_edge ], [ %call.i102, %out_free_irq_boff ]
  %64 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %irq, align 4
  %call49 = tail call ptr @free_irq(i32 noundef %65, ptr noundef %dev) #8
  br label %out_can_rx_offload_disable

out_can_rx_offload_disable:                       ; preds = %out_free_irq, %if.end25.out_can_rx_offload_disable_crit_edge
  %err.1 = phi i32 [ %call.i100, %if.end25.out_can_rx_offload_disable_crit_edge ], [ %err.0, %out_free_irq ]
  %napi.i = getelementptr i8, ptr %dev, i32 2752
  tail call void @napi_disable(ptr noundef %napi.i) #8
  %call.i103 = tail call fastcc i32 @__flexcan_chip_stop(ptr noundef %dev, i1 noundef zeroext false) #8
  br label %out_can_rx_offload_del

out_can_rx_offload_del:                           ; preds = %out_can_rx_offload_disable, %if.end21.out_can_rx_offload_del_crit_edge
  %err.2 = phi i32 [ %call22, %if.end21.out_can_rx_offload_del_crit_edge ], [ %err.1, %out_can_rx_offload_disable ]
  tail call void @can_rx_offload_del(ptr noundef %offload.i) #8
  br label %out_transceiver_disable

out_transceiver_disable:                          ; preds = %out_can_rx_offload_del, %flexcan_rx_offload_setup.exit.out_transceiver_disable_crit_edge
  %err.3 = phi i32 [ %err.0.i, %flexcan_rx_offload_setup.exit.out_transceiver_disable_crit_edge ], [ %err.2, %out_can_rx_offload_del ]
  %66 = ptrtoint ptr %reg_xceiver.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %reg_xceiver.i, align 8
  %tobool.not.i105 = icmp eq ptr %67, null
  br i1 %tobool.not.i105, label %out_transceiver_disable.out_close_crit_edge, label %if.end.i107

out_transceiver_disable.out_close_crit_edge:      ; preds = %out_transceiver_disable
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_close

if.end.i107:                                      ; preds = %out_transceiver_disable
  call void @__sanitizer_cov_trace_pc() #10
  %call.i106 = tail call i32 @regulator_disable(ptr noundef nonnull %67) #8
  br label %out_close

out_close:                                        ; preds = %if.end.i107, %out_transceiver_disable.out_close_crit_edge, %flexcan_transceiver_enable.exit.out_close_crit_edge
  %err.4 = phi i32 [ %call.i98, %flexcan_transceiver_enable.exit.out_close_crit_edge ], [ %err.3, %out_transceiver_disable.out_close_crit_edge ], [ %err.3, %if.end.i107 ]
  tail call void @close_candev(ptr noundef %dev) #8
  br label %out_runtime_put

out_runtime_put:                                  ; preds = %out_close, %if.end9.out_runtime_put_crit_edge
  %err.5 = phi i32 [ %call10, %if.end9.out_runtime_put_crit_edge ], [ %err.4, %out_close ]
  %68 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev5, align 8
  %call.i108 = tail call i32 @__pm_runtime_idle(ptr noundef %69, i32 noundef 5) #8
  br label %cleanup

cleanup:                                          ; preds = %out_runtime_put, %if.end45, %do.end11.i.i.i.i, %if.then7.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ %err.5, %out_runtime_put ], [ 0, %if.end45 ], [ %call.i, %if.then7.cleanup_crit_edge ], [ %call.i, %do.end11.i.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @flexcan_close(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %0 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %1, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #8
  %regs1.i = getelementptr i8, ptr %dev, i32 2988
  %2 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs1.i, align 4
  %write.i = getelementptr i8, ptr %dev, i32 3068
  %4 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write.i, align 4
  %imask2.i = getelementptr inbounds %struct.flexcan_regs, ptr %3, i32 0, i32 9
  tail call void %5(i32 noundef 0, ptr noundef %imask2.i) #8
  %6 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write.i, align 4
  %imask1.i = getelementptr inbounds %struct.flexcan_regs, ptr %3, i32 0, i32 10
  tail call void %7(i32 noundef 0, ptr noundef %imask1.i) #8
  %8 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write.i, align 4
  %reg_ctrl_default.i = getelementptr i8, ptr %dev, i32 3024
  %10 = ptrtoint ptr %reg_ctrl_default.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %reg_ctrl_default.i, align 8
  %and.i = and i32 %11, -52225
  %ctrl.i = getelementptr inbounds %struct.flexcan_regs, ptr %3, i32 0, i32 1
  tail call void %9(i32 noundef %and.i, ptr noundef %ctrl.i) #8
  %devtype_data = getelementptr i8, ptr %dev, i32 3036
  %12 = ptrtoint ptr %devtype_data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %devtype_data, align 4
  %and = and i32 %13, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %irq_err = getelementptr i8, ptr %dev, i32 3056
  %14 = ptrtoint ptr %irq_err to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %irq_err, align 8
  %call1 = tail call ptr @free_irq(i32 noundef %15, ptr noundef %dev) #8
  %irq_boff = getelementptr i8, ptr %dev, i32 3052
  %16 = ptrtoint ptr %irq_boff to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %irq_boff, align 4
  %call2 = tail call ptr @free_irq(i32 noundef %17, ptr noundef %dev) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %irq = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 64
  %18 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %irq, align 4
  %call3 = tail call ptr @free_irq(i32 noundef %19, ptr noundef %dev) #8
  %offload = getelementptr i8, ptr %dev, i32 2616
  %napi.i = getelementptr i8, ptr %dev, i32 2752
  tail call void @napi_disable(ptr noundef %napi.i) #8
  %call.i = tail call fastcc i32 @__flexcan_chip_stop(ptr noundef %dev, i1 noundef zeroext true) #8
  tail call void @can_rx_offload_del(ptr noundef %offload) #8
  %reg_xceiver.i = getelementptr i8, ptr %dev, i32 3040
  %20 = ptrtoint ptr %reg_xceiver.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %reg_xceiver.i, align 8
  %tobool.not.i = icmp eq ptr %21, null
  br i1 %tobool.not.i, label %if.end.flexcan_transceiver_disable.exit_crit_edge, label %if.end.i

if.end.flexcan_transceiver_disable.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %flexcan_transceiver_disable.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call.i24 = tail call i32 @regulator_disable(ptr noundef nonnull %21) #8
  br label %flexcan_transceiver_disable.exit

flexcan_transceiver_disable.exit:                 ; preds = %if.end.i, %if.end.flexcan_transceiver_disable.exit_crit_edge
  tail call void @close_candev(ptr noundef %dev) #8
  %dev7 = getelementptr i8, ptr %dev, i32 2984
  %22 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev7, align 8
  %call.i25 = tail call i32 @__pm_runtime_idle(ptr noundef %23, i32 noundef 5) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @flexcan_start_xmit(ptr noundef %skb, ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %len = getelementptr inbounds %struct.canfd_frame, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %len, align 4
  %call2 = tail call zeroext i8 @can_fd_len2dlc(i8 noundef zeroext %3) #8
  %conv = zext i8 %call2 to i32
  %shl = shl nuw nsw i32 %conv, 16
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %6 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %protocol.i, align 8
  %8 = zext i16 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.63)
  switch i16 %7, label %entry.can_dropped_invalid_skb.exit_crit_edge [
    i16 12, label %if.then.i
    i16 13, label %if.then14.i
  ]

entry.can_dropped_invalid_skb.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %can_dropped_invalid_skb.exit

if.then.i:                                        ; preds = %entry
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %9 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %10)
  %cmp2.not.i = icmp eq i32 %10, 16
  br i1 %cmp2.not.i, label %lor.rhs.i, label %if.then.i.can_dropped_invalid_skb.exit_crit_edge, !prof !200

if.then.i.can_dropped_invalid_skb.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %can_dropped_invalid_skb.exit

lor.rhs.i:                                        ; preds = %if.then.i
  %len4.i = getelementptr inbounds %struct.canfd_frame, ptr %5, i32 0, i32 1
  %11 = ptrtoint ptr %len4.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %len4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %12)
  %cmp6.i = icmp ugt i8 %12, 8
  br i1 %cmp6.i, label %lor.rhs.i.can_dropped_invalid_skb.exit_crit_edge, label %lor.rhs.i.if.end34.i_crit_edge, !prof !199

lor.rhs.i.if.end34.i_crit_edge:                   ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34.i

lor.rhs.i.can_dropped_invalid_skb.exit_crit_edge: ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %can_dropped_invalid_skb.exit

if.then14.i:                                      ; preds = %entry
  %len15.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %13 = ptrtoint ptr %len15.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %len15.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 72, i32 %14)
  %cmp16.not.i = icmp eq i32 %14, 72
  br i1 %cmp16.not.i, label %lor.rhs18.i, label %if.then14.i.can_dropped_invalid_skb.exit_crit_edge, !prof !200

if.then14.i.can_dropped_invalid_skb.exit_crit_edge: ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %can_dropped_invalid_skb.exit

lor.rhs18.i:                                      ; preds = %if.then14.i
  %len19.i = getelementptr inbounds %struct.canfd_frame, ptr %5, i32 0, i32 1
  %15 = ptrtoint ptr %len19.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %len19.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %16)
  %cmp21.i = icmp ugt i8 %16, 64
  br i1 %cmp21.i, label %lor.rhs18.i.can_dropped_invalid_skb.exit_crit_edge, label %lor.rhs18.i.if.end34.i_crit_edge, !prof !199

lor.rhs18.i.if.end34.i_crit_edge:                 ; preds = %lor.rhs18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34.i

lor.rhs18.i.can_dropped_invalid_skb.exit_crit_edge: ; preds = %lor.rhs18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %can_dropped_invalid_skb.exit

if.end34.i:                                       ; preds = %lor.rhs18.i.if.end34.i_crit_edge, %lor.rhs.i.if.end34.i_crit_edge
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %17 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %head.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %5 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %18 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %sub.ptr.sub.i.i.i)
  %cmp.i.i = icmp ult i32 %sub.ptr.sub.i.i.i, 16
  br i1 %cmp.i.i, label %land.rhs.i.i, label %if.end37.i.i

land.rhs.i.i:                                     ; preds = %if.end34.i
  %.b70.i.i = load i1, ptr @can_skb_headroom_valid.__already_done, align 1
  br i1 %.b70.i.i, label %land.rhs.i.i.can_dropped_invalid_skb.exit_crit_edge, label %if.then.i.i, !prof !200

land.rhs.i.i.can_dropped_invalid_skb.exit_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %can_dropped_invalid_skb.exit

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @can_skb_headroom_valid.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.51, i32 noundef 104, i32 noundef 9, ptr noundef null) #8
  br label %can_dropped_invalid_skb.exit

if.end37.i.i:                                     ; preds = %if.end34.i
  %ip_summed.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %19 = ptrtoint ptr %ip_summed.i.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %bf.load.i.i = load i16, ptr %ip_summed.i.i, align 8
  %20 = and i16 %bf.load.i.i, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %cmp38.i.i = icmp eq i16 %20, 0
  br i1 %cmp38.i.i, label %if.then40.i.i, label %if.end37.i.i.if.end_crit_edge

if.end37.i.i.if.end_crit_edge:                    ; preds = %if.end37.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then40.i.i:                                    ; preds = %if.end37.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %ifindex.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 17
  %21 = ptrtoint ptr %ifindex.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ifindex.i.i, align 4
  %23 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %18, align 8
  %24 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %head.i.i.i, align 8
  %skbcnt.i.i = getelementptr inbounds %struct.can_skb_priv, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %skbcnt.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %skbcnt.i.i, align 4
  %27 = ptrtoint ptr %ip_summed.i.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %bf.load45.i.i = load i16, ptr %ip_summed.i.i, align 8
  %bf.clear46.i.i = and i16 %bf.load45.i.i, -1537
  %bf.set.i.i = or i16 %bf.clear46.i.i, 512
  store i16 %bf.set.i.i, ptr %ip_summed.i.i, align 8
  %flags.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %28 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %flags.i.i, align 8
  %and.i.i = and i32 %29, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool47.not.i.i = icmp eq i32 %and.i.i, 0
  %bf.clear54.i.i = and i16 %bf.set.i.i, 7167
  %bf.set51.i.i = or i16 %bf.clear54.i.i, -24576
  %storemerge.i.i = select i1 %tobool47.not.i.i, i16 %bf.clear54.i.i, i16 %bf.set51.i.i
  %30 = ptrtoint ptr %ip_summed.i.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %storemerge.i.i, ptr %ip_summed.i.i, align 8
  %31 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %data, align 4
  %33 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %head.i.i.i, align 8
  %sub.ptr.lhs.cast.i76.i.i = ptrtoint ptr %32 to i32
  %sub.ptr.rhs.cast.i77.i.i = ptrtoint ptr %34 to i32
  %sub.ptr.sub.i78.i.i = sub i32 %sub.ptr.lhs.cast.i76.i.i, %sub.ptr.rhs.cast.i77.i.i
  %conv.i.i.i = trunc i32 %sub.ptr.sub.i78.i.i to i16
  %mac_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %35 = ptrtoint ptr %mac_header.i.i.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %conv.i.i.i, ptr %mac_header.i.i.i, align 2
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %36 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %conv.i.i.i, ptr %network_header.i.i.i, align 4
  %transport_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %37 = ptrtoint ptr %transport_header.i.i.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %conv.i.i.i, ptr %transport_header.i.i.i, align 2
  br label %if.end

can_dropped_invalid_skb.exit:                     ; preds = %if.then.i.i, %land.rhs.i.i.can_dropped_invalid_skb.exit_crit_edge, %lor.rhs18.i.can_dropped_invalid_skb.exit_crit_edge, %if.then14.i.can_dropped_invalid_skb.exit_crit_edge, %lor.rhs.i.can_dropped_invalid_skb.exit_crit_edge, %if.then.i.can_dropped_invalid_skb.exit_crit_edge, %entry.can_dropped_invalid_skb.exit_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #8
  %tx_dropped.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 7
  %38 = ptrtoint ptr %tx_dropped.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %tx_dropped.i, align 4
  %inc.i = add i32 %39, 1
  store i32 %inc.i, ptr %tx_dropped.i, align 4
  br label %cleanup

if.end:                                           ; preds = %if.then40.i.i, %if.end37.i.i.if.end_crit_edge
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %40 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %41, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #8
  %42 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %43)
  %tobool.not = icmp sgt i32 %43, -1
  %and7 = and i32 %43, 536870911
  %and10 = shl i32 %43, 18
  %shl11 = and i32 %and10, 536608768
  %can_id.0 = select i1 %tobool.not, i32 %shl11, i32 %and7
  %ctrl.0.v = select i1 %tobool.not, i32 201326592, i32 207618048
  %ctrl.0 = or i32 %ctrl.0.v, %shl
  %and14 = lshr i32 %43, 10
  %44 = and i32 %and14, 1048576
  %45 = or i32 %ctrl.0, %44
  %len.i82 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %46 = ptrtoint ptr %len.i82 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %len.i82, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 72, i32 %47)
  %cmp.i = icmp eq i32 %47, 72
  br i1 %cmp.i, label %if.then20, label %if.end.if.end28_crit_edge

if.end.if.end28_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

if.then20:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %flags = getelementptr inbounds %struct.canfd_frame, ptr %1, i32 0, i32 2
  %48 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %flags, align 1
  %50 = and i8 %49, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool24.not = icmp eq i8 %50, 0
  %spec.select.v = select i1 %tobool24.not, i32 -2147483648, i32 -1073741824
  %spec.select = or i32 %spec.select.v, %45
  br label %if.end28

if.end28:                                         ; preds = %if.then20, %if.end.if.end28_crit_edge
  %ctrl.2 = phi i32 [ %45, %if.end.if.end28_crit_edge ], [ %spec.select, %if.then20 ]
  %51 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %cmp85.not = icmp eq i8 %52, 0
  br i1 %cmp85.not, label %if.end28.for.end_crit_edge, label %for.body.lr.ph

if.end28.for.end_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end28
  %write = getelementptr i8, ptr %dev, i32 3068
  %tx_mb = getelementptr i8, ptr %dev, i32 2992
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.086 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.canfd_frame, ptr %1, i32 0, i32 5, i32 %i.086
  %53 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx, align 4
  %55 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %write, align 4
  %57 = ptrtoint ptr %tx_mb to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %tx_mb, align 8
  %div81 = lshr exact i32 %i.086, 2
  %arrayidx35 = getelementptr %struct.flexcan_mb, ptr %58, i32 0, i32 2, i32 %div81
  tail call void %56(i32 noundef %54, ptr noundef %arrayidx35) #8
  %add = add nuw nsw i32 %i.086, 4
  %59 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %len, align 4
  %conv30 = zext i8 %60 to i32
  %cmp = icmp ult i32 %add, %conv30
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end28.for.end_crit_edge
  %call36 = tail call i32 @can_put_echo_skb(ptr noundef %skb, ptr noundef %dev, i32 noundef 0, i32 noundef 0) #8
  %write37 = getelementptr i8, ptr %dev, i32 3068
  %61 = ptrtoint ptr %write37 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %write37, align 4
  %tx_mb38 = getelementptr i8, ptr %dev, i32 2992
  %63 = ptrtoint ptr %tx_mb38 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %tx_mb38, align 8
  %can_id39 = getelementptr inbounds %struct.flexcan_mb, ptr %64, i32 0, i32 1
  tail call void %62(i32 noundef %can_id.0, ptr noundef %can_id39) #8
  %65 = ptrtoint ptr %write37 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %write37, align 4
  %67 = ptrtoint ptr %tx_mb38 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %tx_mb38, align 8
  tail call void %66(i32 noundef %ctrl.2, ptr noundef %68) #8
  %69 = ptrtoint ptr %write37 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %write37, align 4
  %tx_mb_reserved = getelementptr i8, ptr %dev, i32 2996
  %71 = ptrtoint ptr %tx_mb_reserved to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %tx_mb_reserved, align 4
  tail call void %70(i32 noundef 134217728, ptr noundef %72) #8
  %73 = ptrtoint ptr %write37 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %write37, align 4
  %75 = ptrtoint ptr %tx_mb_reserved to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %tx_mb_reserved, align 4
  tail call void %74(i32 noundef 134217728, ptr noundef %76) #8
  br label %cleanup

cleanup:                                          ; preds = %for.end, %can_dropped_invalid_skb.exit
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @can_change_mtu(ptr noundef, i32 noundef) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @open_candev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @flexcan_chip_start(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %regs1 = getelementptr i8, ptr %dev, i32 2988
  %0 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs1, align 4
  %read.i = getelementptr i8, ptr %dev, i32 3064
  %2 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read.i, align 8
  %call.i = tail call i32 %3(ptr noundef %1) #8
  %and.i = and i32 %call.i, 2147483647
  %write.i = getelementptr i8, ptr %dev, i32 3068
  %4 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write.i, align 4
  tail call void %5(i32 noundef %and.i, ptr noundef %1) #8
  %6 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs1, align 4
  br label %land.rhs.i.i

land.rhs.i.i:                                     ; preds = %while.body.i.i.land.rhs.i.i_crit_edge, %entry
  %dec12.i.i = phi i32 [ 24, %entry ], [ %dec.i.i, %while.body.i.i.land.rhs.i.i_crit_edge ]
  %8 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read.i, align 8
  %call.i.i = tail call i32 %9(ptr noundef %7) #8
  %and.i.i = and i32 %call.i.i, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool2.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool2.not.i.i, label %land.rhs.i.i.flexcan_chip_enable.exit_crit_edge, label %while.body.i.i

land.rhs.i.i.flexcan_chip_enable.exit_crit_edge:  ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %flexcan_chip_enable.exit

while.body.i.i:                                   ; preds = %land.rhs.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 2147480) #8
  %dec.i.i = add nsw i32 %dec12.i.i, -1
  %tobool.not.i.i = icmp eq i32 %dec12.i.i, 0
  br i1 %tobool.not.i.i, label %while.body.i.i.flexcan_chip_enable.exit_crit_edge, label %while.body.i.i.land.rhs.i.i_crit_edge

while.body.i.i.land.rhs.i.i_crit_edge:            ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs.i.i

while.body.i.i.flexcan_chip_enable.exit_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %flexcan_chip_enable.exit

flexcan_chip_enable.exit:                         ; preds = %while.body.i.i.flexcan_chip_enable.exit_crit_edge, %land.rhs.i.i.flexcan_chip_enable.exit_crit_edge
  %11 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %read.i, align 8
  %call5.i.i = tail call i32 %12(ptr noundef %7) #8
  %and6.i.i = and i32 %call5.i.i, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i)
  %tobool7.not.i.i = icmp eq i32 %and6.i.i, 0
  br i1 %tobool7.not.i.i, label %if.end, label %flexcan_chip_enable.exit.cleanup_crit_edge

flexcan_chip_enable.exit.cleanup_crit_edge:       ; preds = %flexcan_chip_enable.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %flexcan_chip_enable.exit
  %13 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs1, align 4
  %15 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %write.i, align 4
  tail call void %16(i32 noundef 33554432, ptr noundef %14) #8
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %while.body.i.land.rhs.i_crit_edge, %if.end
  %dec15.i = phi i32 [ 24, %if.end ], [ %dec.i, %while.body.i.land.rhs.i_crit_edge ]
  %17 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %read.i, align 8
  %call.i492 = tail call i32 %18(ptr noundef %14) #8
  %and.i493 = and i32 %call.i492, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i493)
  %tobool3.not.i = icmp eq i32 %and.i493, 0
  br i1 %tobool3.not.i, label %land.rhs.i.flexcan_chip_softreset.exit_crit_edge, label %while.body.i

land.rhs.i.flexcan_chip_softreset.exit_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %flexcan_chip_softreset.exit

while.body.i:                                     ; preds = %land.rhs.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 2147480) #8
  %dec.i = add nsw i32 %dec15.i, -1
  %tobool.not.i = icmp eq i32 %dec15.i, 0
  br i1 %tobool.not.i, label %while.body.i.flexcan_chip_softreset.exit_crit_edge, label %while.body.i.land.rhs.i_crit_edge

while.body.i.land.rhs.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs.i

while.body.i.flexcan_chip_softreset.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %flexcan_chip_softreset.exit

flexcan_chip_softreset.exit:                      ; preds = %while.body.i.flexcan_chip_softreset.exit_crit_edge, %land.rhs.i.flexcan_chip_softreset.exit_crit_edge
  %20 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %read.i, align 8
  %call6.i = tail call i32 %21(ptr noundef %14) #8
  %and7.i = and i32 %call6.i, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i = icmp eq i32 %and7.i, 0
  br i1 %tobool8.not.i, label %if.end6, label %flexcan_chip_softreset.exit.out_chip_disable_crit_edge

flexcan_chip_softreset.exit.out_chip_disable_crit_edge: ; preds = %flexcan_chip_softreset.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_chip_disable

if.end6:                                          ; preds = %flexcan_chip_softreset.exit
  %devtype_data = getelementptr i8, ptr %dev, i32 3036
  %22 = ptrtoint ptr %devtype_data to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %devtype_data, align 4
  %and = and i32 %23, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %if.end6.if.end9_crit_edge, label %if.then8

if.end6.if.end9_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.then8:                                         ; preds = %if.end6
  %24 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs1, align 4
  %26 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %read.i, align 8
  %28 = getelementptr inbounds %struct.flexcan_regs, ptr %25, i32 0, i32 13
  %call2.i = tail call i32 %27(ptr noundef %28) #8
  %or.i = or i32 %call2.i, 268435456
  %29 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %write.i, align 4
  tail call void %30(i32 noundef %or.i, ptr noundef %28) #8
  %31 = getelementptr inbounds %struct.flexcan_regs, ptr %25, i32 0, i32 25
  tail call void @mmioset(ptr noundef %31, i32 noundef 0, i32 noundef 2656) #8
  %ctrlmode.i = getelementptr i8, ptr %dev, i32 2476
  %32 = ptrtoint ptr %ctrlmode.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %ctrlmode.i, align 4
  %and.i497 = and i32 %33, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i497)
  %tobool.not.i498 = icmp eq i32 %and.i497, 0
  br i1 %tobool.not.i498, label %if.then8.flexcan_ram_init.exit_crit_edge, label %if.then.i

if.then8.flexcan_ram_init.exit_crit_edge:         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  br label %flexcan_ram_init.exit

if.then.i:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  %34 = getelementptr inbounds %struct.flexcan_regs, ptr %25, i32 0, i32 39
  tail call void @mmioset(ptr noundef %34, i32 noundef 0, i32 noundef 216) #8
  br label %flexcan_ram_init.exit

flexcan_ram_init.exit:                            ; preds = %if.then.i, %if.then8.flexcan_ram_init.exit_crit_edge
  %and3.i = and i32 %call2.i, -268435457
  %35 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %write.i, align 4
  tail call void %36(i32 noundef %and3.i, ptr noundef %28) #8
  br label %if.end9

if.end9:                                          ; preds = %flexcan_ram_init.exit, %if.end6.if.end9_crit_edge
  %37 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regs1, align 4
  %39 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %read.i, align 8
  %ctrl.i = getelementptr inbounds %struct.flexcan_regs, ptr %38, i32 0, i32 1
  %call2.i501 = tail call i32 %40(ptr noundef %ctrl.i) #8
  %and.i502 = and i32 %call2.i501, -4233
  %ctrlmode.i503 = getelementptr i8, ptr %dev, i32 2476
  %41 = ptrtoint ptr %ctrlmode.i503 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %ctrlmode.i503, align 4
  %and3.i504 = shl i32 %42, 12
  %43 = and i32 %and3.i504, 4096
  %44 = or i32 %43, %and.i502
  %and6.i = shl i32 %42, 2
  %45 = and i32 %and6.i, 8
  %46 = or i32 %44, %45
  %and13.i = shl i32 %42, 5
  %47 = and i32 %and13.i, 128
  %48 = or i32 %46, %47
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @flexcan_set_bittiming.__UNIQUE_ID_ddebug564, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@flexcan_chip_start, %do.end27.i)) #8
          to label %if.then24.i [label %do.end27.i], !srcloc !198

if.then24.i:                                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @flexcan_set_bittiming.__UNIQUE_ID_ddebug564, ptr noundef %dev, ptr noundef nonnull @.str.34, i32 noundef %48) #8
  br label %do.end27.i

do.end27.i:                                       ; preds = %if.then24.i, %if.end9
  %49 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %write.i, align 4
  tail call void %50(i32 noundef %48, ptr noundef %ctrl.i) #8
  %ctrlmode_supported.i = getelementptr i8, ptr %dev, i32 2480
  %51 = ptrtoint ptr %ctrlmode_supported.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %ctrlmode_supported.i, align 8
  %and30.i = and i32 %52, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30.i)
  %tobool31.not.i = icmp eq i32 %and30.i, 0
  br i1 %tobool31.not.i, label %if.else.i, label %if.then32.i

if.then32.i:                                      ; preds = %do.end27.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @flexcan_set_bittiming_cbt(ptr noundef %dev) #8
  br label %flexcan_set_bittiming.exit

if.else.i:                                        ; preds = %do.end27.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @flexcan_set_bittiming_ctrl(ptr noundef %dev) #8
  br label %flexcan_set_bittiming.exit

flexcan_set_bittiming.exit:                       ; preds = %if.else.i, %if.then32.i
  %53 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %regs1, align 4
  %bittiming.i = getelementptr i8, ptr %dev, i32 2340
  %55 = ptrtoint ptr %bittiming.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %bittiming.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool.not.i507 = icmp eq i32 %56, 0
  br i1 %tobool.not.i507, label %flexcan_set_bittiming.exit.if.end.i_crit_edge, label %if.then.i508

flexcan_set_bittiming.exit.if.end.i_crit_edge:    ; preds = %flexcan_set_bittiming.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i508:                                     ; preds = %flexcan_set_bittiming.exit
  call void @__sanitizer_cov_trace_pc() #10
  %div.i = udiv i32 10000000, %56
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i508, %flexcan_set_bittiming.exit.if.end.i_crit_edge
  %timeout.0.i = phi i32 [ %div.i, %if.then.i508 ], [ 25, %flexcan_set_bittiming.exit.if.end.i_crit_edge ]
  %57 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %read.i, align 8
  %call.i510 = tail call i32 %58(ptr noundef %54) #8
  %or.i511 = or i32 %call.i510, 1342177280
  %59 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %write.i, align 4
  tail call void %60(i32 noundef %or.i511, ptr noundef %54) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout.0.i)
  %tobool4.not30.i = icmp eq i32 %timeout.0.i, 0
  br i1 %tobool4.not30.i, label %if.end.i.flexcan_chip_freeze.exit_crit_edge, label %if.end.i.land.rhs.i515_crit_edge

if.end.i.land.rhs.i515_crit_edge:                 ; preds = %if.end.i
  br label %land.rhs.i515

if.end.i.flexcan_chip_freeze.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %flexcan_chip_freeze.exit

land.rhs.i515:                                    ; preds = %while.body.i516.land.rhs.i515_crit_edge, %if.end.i.land.rhs.i515_crit_edge
  %dec31.in.i = phi i32 [ %dec31.i, %while.body.i516.land.rhs.i515_crit_edge ], [ %timeout.0.i, %if.end.i.land.rhs.i515_crit_edge ]
  %61 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %read.i, align 8
  %call7.i = tail call i32 %62(ptr noundef %54) #8
  %and.i513 = and i32 %call7.i, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i513)
  %tobool8.not.i514 = icmp eq i32 %and.i513, 0
  br i1 %tobool8.not.i514, label %while.body.i516, label %land.rhs.i515.flexcan_chip_freeze.exit_crit_edge

land.rhs.i515.flexcan_chip_freeze.exit_crit_edge: ; preds = %land.rhs.i515
  call void @__sanitizer_cov_trace_pc() #10
  br label %flexcan_chip_freeze.exit

while.body.i516:                                  ; preds = %land.rhs.i515
  %dec31.i = add nsw i32 %dec31.in.i, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %63 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %63(i32 noundef 21474800) #8
  %tobool4.not.i = icmp eq i32 %dec31.i, 0
  br i1 %tobool4.not.i, label %while.body.i516.flexcan_chip_freeze.exit_crit_edge, label %while.body.i516.land.rhs.i515_crit_edge

while.body.i516.land.rhs.i515_crit_edge:          ; preds = %while.body.i516
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs.i515

while.body.i516.flexcan_chip_freeze.exit_crit_edge: ; preds = %while.body.i516
  call void @__sanitizer_cov_trace_pc() #10
  br label %flexcan_chip_freeze.exit

flexcan_chip_freeze.exit:                         ; preds = %while.body.i516.flexcan_chip_freeze.exit_crit_edge, %land.rhs.i515.flexcan_chip_freeze.exit_crit_edge, %if.end.i.flexcan_chip_freeze.exit_crit_edge
  %64 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %read.i, align 8
  %call11.i = tail call i32 %65(ptr noundef %54) #8
  %and12.i = and i32 %call11.i, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i)
  %tobool13.not.i.not = icmp eq i32 %and12.i, 0
  br i1 %tobool13.not.i.not, label %flexcan_chip_freeze.exit.out_chip_disable_crit_edge, label %if.end13

flexcan_chip_freeze.exit.out_chip_disable_crit_edge: ; preds = %flexcan_chip_freeze.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_chip_disable

if.end13:                                         ; preds = %flexcan_chip_freeze.exit
  %66 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %read.i, align 8
  %call14 = tail call i32 %67(ptr noundef %1) #8
  %and15 = and i32 %call14, -547555968
  %tx_mb_idx = getelementptr i8, ptr %dev, i32 3000
  %68 = ptrtoint ptr %tx_mb_idx to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %tx_mb_idx, align 8
  %70 = and i8 %69, 127
  %and16 = zext i8 %70 to i32
  %71 = ptrtoint ptr %devtype_data to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %devtype_data, align 4
  %and20 = shl i32 %72, 24
  %73 = and i32 %and20, 536870912
  %74 = ptrtoint ptr %ctrlmode.i503 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %ctrlmode.i503, align 4
  %and26 = shl i32 %75, 17
  %76 = and i32 %and26, 131072
  %and35 = shl i32 %75, 6
  %77 = and i32 %and35, 2048
  %or = or i32 %and15, %and16
  %or17 = or i32 %or, %73
  %78 = or i32 %or17, %76
  %79 = or i32 %78, %77
  %reg_mcr.2 = xor i32 %79, 547553792
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @flexcan_chip_start.__UNIQUE_ID_ddebug565, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@flexcan_chip_start, %do.end51)) #8
          to label %if.then48 [label %do.end51], !srcloc !198

if.then48:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @flexcan_chip_start.__UNIQUE_ID_ddebug565, ptr noundef %dev, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.28, i32 noundef %reg_mcr.2) #8
  br label %do.end51

do.end51:                                         ; preds = %if.then48, %if.end13
  %80 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %write.i, align 4
  tail call void %81(i32 noundef %reg_mcr.2, ptr noundef %1) #8
  %82 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %read.i, align 8
  %ctrl = getelementptr inbounds %struct.flexcan_regs, ptr %1, i32 0, i32 1
  %call54 = tail call i32 %83(ptr noundef %ctrl) #8
  %and55 = and i32 %call54, -52337
  %84 = ptrtoint ptr %devtype_data to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %devtype_data, align 4
  %and59 = and i32 %85, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59)
  %tobool60.not = icmp eq i32 %and59, 0
  br i1 %tobool60.not, label %lor.lhs.false, label %do.end51.if.end69_crit_edge

do.end51.if.end69_crit_edge:                      ; preds = %do.end51
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

lor.lhs.false:                                    ; preds = %do.end51
  call void @__sanitizer_cov_trace_pc() #10
  %86 = ptrtoint ptr %ctrlmode.i503 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %ctrlmode.i503, align 4
  %and63 = and i32 %87, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63)
  %tobool64.not = icmp eq i32 %and63, 0
  %spec.select = select i1 %tobool64.not, i32 35920, i32 52304
  br label %if.end69

if.end69:                                         ; preds = %lor.lhs.false, %do.end51.if.end69_crit_edge
  %.sink = phi i32 [ 52304, %do.end51.if.end69_crit_edge ], [ %spec.select, %lor.lhs.false ]
  %and68 = or i32 %and55, %.sink
  %reg_ctrl_default = getelementptr i8, ptr %dev, i32 3024
  %88 = ptrtoint ptr %reg_ctrl_default to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %and68, ptr %reg_ctrl_default, align 8
  %and70 = or i32 %and55, 80
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @flexcan_chip_start.__UNIQUE_ID_ddebug566, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@flexcan_chip_start, %do.end91)) #8
          to label %if.then86 [label %do.end91], !srcloc !198

if.then86:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @flexcan_chip_start.__UNIQUE_ID_ddebug566, ptr noundef %dev, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.28, i32 noundef %and70) #8
  br label %do.end91

do.end91:                                         ; preds = %if.then86, %if.end69
  %89 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %write.i, align 4
  tail call void %90(i32 noundef %and70, ptr noundef %ctrl) #8
  %91 = ptrtoint ptr %devtype_data to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %devtype_data, align 4
  %and96 = and i32 %92, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and96)
  %tobool97.not = icmp eq i32 %and96, 0
  br i1 %tobool97.not, label %do.end91.if.end103_crit_edge, label %if.then98

do.end91.if.end103_crit_edge:                     ; preds = %do.end91
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end103

if.then98:                                        ; preds = %do.end91
  call void @__sanitizer_cov_trace_pc() #10
  %93 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %read.i, align 8
  %95 = getelementptr inbounds %struct.flexcan_regs, ptr %1, i32 0, i32 13
  %call100 = tail call i32 %94(ptr noundef %95) #8
  %or101 = or i32 %call100, 196608
  %96 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %write.i, align 4
  tail call void %97(i32 noundef %or101, ptr noundef %95) #8
  br label %if.end103

if.end103:                                        ; preds = %if.then98, %do.end91.if.end103_crit_edge
  %98 = ptrtoint ptr %ctrlmode_supported.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %ctrlmode_supported.i, align 8
  %and105 = and i32 %99, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and105)
  %tobool106.not = icmp eq i32 %and105, 0
  br i1 %tobool106.not, label %if.end103.if.end242_crit_edge, label %if.then107

if.end103.if.end242_crit_edge:                    ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end242

if.then107:                                       ; preds = %if.end103
  %100 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %read.i, align 8
  %fdctrl = getelementptr inbounds %struct.flexcan_regs, ptr %1, i32 0, i32 35
  %call109 = tail call i32 %101(ptr noundef %fdctrl) #8
  %102 = ptrtoint ptr %ctrlmode.i503 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %ctrlmode.i503, align 4
  %and146 = and i32 %103, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and146)
  %tobool147.not = icmp eq i32 %and146, 0
  %and143 = and i32 %call109, -1769473
  %masksel = select i1 %tobool147.not, i32 0, i32 1769472
  %reg_fdctrl.0 = or i32 %masksel, %and143
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @flexcan_chip_start.__UNIQUE_ID_ddebug597, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@flexcan_chip_start, %do.end239)) #8
          to label %if.then234 [label %do.end239], !srcloc !198

if.then234:                                       ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @flexcan_chip_start.__UNIQUE_ID_ddebug597, ptr noundef %dev, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.28, i32 noundef %reg_fdctrl.0) #8
  br label %do.end239

do.end239:                                        ; preds = %if.then234, %if.then107
  %104 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %write.i, align 4
  tail call void %105(i32 noundef %reg_fdctrl.0, ptr noundef %fdctrl) #8
  br label %if.end242

if.end242:                                        ; preds = %do.end239, %if.end103.if.end242_crit_edge
  %106 = ptrtoint ptr %devtype_data to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %devtype_data, align 4
  %and245 = and i32 %107, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and245)
  %tobool246.not = icmp eq i32 %and245, 0
  br i1 %tobool246.not, label %for.cond254.preheader, label %if.then247

for.cond254.preheader:                            ; preds = %if.end242
  %mb_count = getelementptr i8, ptr %dev, i32 3001
  %108 = ptrtoint ptr %mb_count to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %mb_count, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %109)
  %cmp256576 = icmp ugt i8 %109, 8
  br i1 %cmp256576, label %for.body258.lr.ph, label %for.cond254.preheader.if.end266_crit_edge

for.cond254.preheader.if.end266_crit_edge:        ; preds = %for.cond254.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end266

for.body258.lr.ph:                                ; preds = %for.cond254.preheader
  %mb_size.i523 = getelementptr i8, ptr %dev, i32 3002
  br label %for.body258

if.then247:                                       ; preds = %if.end242
  %mb_first = getelementptr i8, ptr %dev, i32 2740
  %110 = ptrtoint ptr %mb_first to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %mb_first, align 4
  %mb_last = getelementptr i8, ptr %dev, i32 2744
  %112 = ptrtoint ptr %mb_last to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %mb_last, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %111, i32 %113)
  %cmp.not572 = icmp ugt i32 %111, %113
  br i1 %cmp.not572, label %if.then247.if.end266_crit_edge, label %for.body.lr.ph

if.then247.if.end266_crit_edge:                   ; preds = %if.then247
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end266

for.body.lr.ph:                                   ; preds = %if.then247
  %mb_count.i = getelementptr i8, ptr %dev, i32 3001
  %mb_size.i = getelementptr i8, ptr %dev, i32 3002
  br label %for.body

for.body:                                         ; preds = %flexcan_get_mb.exit.for.body_crit_edge, %for.body.lr.ph
  %i.0573 = phi i32 [ %111, %for.body.lr.ph ], [ %inc, %flexcan_get_mb.exit.for.body_crit_edge ]
  %conv250 = trunc i32 %i.0573 to i8
  %114 = ptrtoint ptr %mb_count.i to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %mb_count.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %115, i8 %conv250)
  %cmp.not.i = icmp ugt i8 %115, %conv250
  br i1 %cmp.not.i, label %if.end23.i, label %do.end.i, !prof !200

do.end.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 448, i32 noundef 9, ptr noundef null) #8
  br label %flexcan_get_mb.exit

if.end23.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %116 = ptrtoint ptr %mb_size.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %mb_size.i, align 2
  %conv24.i = zext i8 %117 to i16
  %div.i518 = udiv i16 512, %conv24.i
  %118 = and i16 %div.i518, 255
  %119 = trunc i32 %i.0573 to i16
  %120 = and i16 %119, 255
  call void @__sanitizer_cov_trace_cmp2(i16 %118, i16 %120)
  %cmp28.i = icmp ule i16 %118, %120
  %narrow = select i1 %cmp28.i, i16 %div.i518, i16 0
  %conv34.i = zext i16 %narrow to i32
  %mb_index.addr.0.i = sub i32 %i.0573, %conv34.i
  %121 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %regs1, align 4
  %123 = getelementptr inbounds %struct.flexcan_regs, ptr %122, i32 0, i32 25
  %idxprom.i = zext i1 %cmp28.i to i32
  %conv38.i = zext i8 %117 to i32
  %conv39.i = and i32 %mb_index.addr.0.i, 255
  %mul.i = mul nuw nsw i32 %conv39.i, %conv38.i
  %arrayidx40.i = getelementptr [2 x [512 x i8]], ptr %123, i32 0, i32 %idxprom.i, i32 %mul.i
  br label %flexcan_get_mb.exit

flexcan_get_mb.exit:                              ; preds = %if.end23.i, %do.end.i
  %retval.0.i519 = phi ptr [ null, %do.end.i ], [ %arrayidx40.i, %if.end23.i ]
  %124 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %write.i, align 4
  tail call void %125(i32 noundef 67108864, ptr noundef %retval.0.i519) #8
  %inc = add i32 %i.0573, 1
  %126 = ptrtoint ptr %mb_last to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %mb_last, align 8
  %cmp.not = icmp ugt i32 %inc, %127
  br i1 %cmp.not, label %flexcan_get_mb.exit.if.end266_crit_edge, label %flexcan_get_mb.exit.for.body_crit_edge

flexcan_get_mb.exit.for.body_crit_edge:           ; preds = %flexcan_get_mb.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

flexcan_get_mb.exit.if.end266_crit_edge:          ; preds = %flexcan_get_mb.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end266

for.body258:                                      ; preds = %flexcan_get_mb.exit537.for.body258_crit_edge, %for.body258.lr.ph
  %128 = phi i8 [ %109, %for.body258.lr.ph ], [ %140, %flexcan_get_mb.exit537.for.body258_crit_edge ]
  %i.1577 = phi i32 [ 8, %for.body258.lr.ph ], [ %inc264, %flexcan_get_mb.exit537.for.body258_crit_edge ]
  %conv259 = trunc i32 %i.1577 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %128, i8 %conv259)
  %cmp.not.i521 = icmp ugt i8 %128, %conv259
  br i1 %cmp.not.i521, label %if.end23.i535, label %do.end.i522, !prof !200

do.end.i522:                                      ; preds = %for.body258
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 448, i32 noundef 9, ptr noundef null) #8
  br label %flexcan_get_mb.exit537

if.end23.i535:                                    ; preds = %for.body258
  call void @__sanitizer_cov_trace_pc() #10
  %129 = ptrtoint ptr %mb_size.i523 to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %mb_size.i523, align 2
  %conv24.i524 = zext i8 %130 to i16
  %div.i525 = udiv i16 512, %conv24.i524
  %131 = and i16 %div.i525, 255
  %132 = trunc i32 %i.1577 to i16
  %133 = and i16 %132, 255
  call void @__sanitizer_cov_trace_cmp2(i16 %131, i16 %133)
  %cmp28.i526 = icmp ule i16 %131, %133
  %narrow570 = select i1 %cmp28.i526, i16 %div.i525, i16 0
  %conv34.i527 = zext i16 %narrow570 to i32
  %mb_index.addr.0.i528 = sub nsw i32 %i.1577, %conv34.i527
  %134 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %regs1, align 4
  %136 = getelementptr inbounds %struct.flexcan_regs, ptr %135, i32 0, i32 25
  %idxprom.i530 = zext i1 %cmp28.i526 to i32
  %conv38.i531 = zext i8 %130 to i32
  %conv39.i532 = and i32 %mb_index.addr.0.i528, 255
  %mul.i533 = mul nuw nsw i32 %conv39.i532, %conv38.i531
  %arrayidx40.i534 = getelementptr [2 x [512 x i8]], ptr %136, i32 0, i32 %idxprom.i530, i32 %mul.i533
  br label %flexcan_get_mb.exit537

flexcan_get_mb.exit537:                           ; preds = %if.end23.i535, %do.end.i522
  %retval.0.i536 = phi ptr [ null, %do.end.i522 ], [ %arrayidx40.i534, %if.end23.i535 ]
  %137 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %write.i, align 4
  tail call void %138(i32 noundef 0, ptr noundef %retval.0.i536) #8
  %inc264 = add nuw nsw i32 %i.1577, 1
  %139 = ptrtoint ptr %mb_count to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %mb_count, align 1
  %conv255 = zext i8 %140 to i32
  %cmp256 = icmp ult i32 %inc264, %conv255
  br i1 %cmp256, label %flexcan_get_mb.exit537.for.body258_crit_edge, label %flexcan_get_mb.exit537.if.end266_crit_edge

flexcan_get_mb.exit537.if.end266_crit_edge:       ; preds = %flexcan_get_mb.exit537
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end266

flexcan_get_mb.exit537.for.body258_crit_edge:     ; preds = %flexcan_get_mb.exit537
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body258

if.end266:                                        ; preds = %flexcan_get_mb.exit537.if.end266_crit_edge, %flexcan_get_mb.exit.if.end266_crit_edge, %if.then247.if.end266_crit_edge, %for.cond254.preheader.if.end266_crit_edge
  %141 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %write.i, align 4
  %tx_mb_reserved = getelementptr i8, ptr %dev, i32 2996
  %143 = ptrtoint ptr %tx_mb_reserved to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %tx_mb_reserved, align 4
  tail call void %142(i32 noundef 134217728, ptr noundef %144) #8
  %145 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %write.i, align 4
  %tx_mb = getelementptr i8, ptr %dev, i32 2992
  %147 = ptrtoint ptr %tx_mb to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %tx_mb, align 8
  tail call void %146(i32 noundef 134217728, ptr noundef %148) #8
  %149 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %write.i, align 4
  %rxgmask = getelementptr inbounds %struct.flexcan_regs, ptr %1, i32 0, i32 4
  tail call void %150(i32 noundef 0, ptr noundef %rxgmask) #8
  %151 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %write.i, align 4
  %rx14mask = getelementptr inbounds %struct.flexcan_regs, ptr %1, i32 0, i32 5
  tail call void %152(i32 noundef 0, ptr noundef %rx14mask) #8
  %153 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %write.i, align 4
  %rx15mask = getelementptr inbounds %struct.flexcan_regs, ptr %1, i32 0, i32 6
  tail call void %154(i32 noundef 0, ptr noundef %rx15mask) #8
  %155 = ptrtoint ptr %devtype_data to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %devtype_data, align 4
  %and276 = and i32 %156, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and276)
  %tobool277.not = icmp eq i32 %and276, 0
  br i1 %tobool277.not, label %if.end266.if.end280_crit_edge, label %if.then278

if.end266.if.end280_crit_edge:                    ; preds = %if.end266
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end280

if.then278:                                       ; preds = %if.end266
  call void @__sanitizer_cov_trace_pc() #10
  %157 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %write.i, align 4
  %rxfgmask = getelementptr inbounds %struct.flexcan_regs, ptr %1, i32 0, i32 18
  tail call void %158(i32 noundef 0, ptr noundef %rxfgmask) #8
  br label %if.end280

if.end280:                                        ; preds = %if.then278, %if.end266.if.end280_crit_edge
  %mb_count282 = getelementptr i8, ptr %dev, i32 3001
  %159 = ptrtoint ptr %mb_count282 to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %mb_count282, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %160)
  %cmp284580.not = icmp eq i8 %160, 0
  br i1 %cmp284580.not, label %if.end280.for.end290_crit_edge, label %if.end280.for.body286_crit_edge

if.end280.for.body286_crit_edge:                  ; preds = %if.end280
  br label %for.body286

if.end280.for.end290_crit_edge:                   ; preds = %if.end280
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end290

for.body286:                                      ; preds = %for.body286.for.body286_crit_edge, %if.end280.for.body286_crit_edge
  %i.2581 = phi i32 [ %inc289, %for.body286.for.body286_crit_edge ], [ 0, %if.end280.for.body286_crit_edge ]
  %161 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %write.i, align 4
  %arrayidx = getelementptr %struct.flexcan_regs, ptr %1, i32 0, i32 25, i32 0, i32 2, i32 %i.2581
  tail call void %162(i32 noundef 0, ptr noundef %arrayidx) #8
  %inc289 = add nuw nsw i32 %i.2581, 1
  %163 = ptrtoint ptr %mb_count282 to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %mb_count282, align 1
  %conv283 = zext i8 %164 to i32
  %cmp284 = icmp ult i32 %inc289, %conv283
  br i1 %cmp284, label %for.body286.for.body286_crit_edge, label %for.body286.for.end290_crit_edge

for.body286.for.end290_crit_edge:                 ; preds = %for.body286
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end290

for.body286.for.body286_crit_edge:                ; preds = %for.body286
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body286

for.end290:                                       ; preds = %for.body286.for.end290_crit_edge, %if.end280.for.end290_crit_edge
  %165 = ptrtoint ptr %devtype_data to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %devtype_data, align 4
  %and293 = and i32 %166, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and293)
  %tobool294.not = icmp eq i32 %and293, 0
  br i1 %tobool294.not, label %for.end290.if.end313_crit_edge, label %if.then295

for.end290.if.end313_crit_edge:                   ; preds = %for.end290
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end313

if.then295:                                       ; preds = %for.end290
  call void @__sanitizer_cov_trace_pc() #10
  %167 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %read.i, align 8
  %169 = getelementptr inbounds %struct.flexcan_regs, ptr %1, i32 0, i32 13
  %call297 = tail call i32 %168(ptr noundef %169) #8
  %or298 = or i32 %call297, 536870912
  %170 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %write.i, align 4
  tail call void %171(i32 noundef %or298, ptr noundef %169) #8
  %172 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %read.i, align 8
  %mecr = getelementptr inbounds %struct.flexcan_regs, ptr %1, i32 0, i32 26
  %call301 = tail call i32 %173(ptr noundef %mecr) #8
  %and302 = and i32 %call301, 2147483647
  %174 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %write.i, align 4
  tail call void %175(i32 noundef %and302, ptr noundef %mecr) #8
  %and305 = and i32 %call301, 2146697087
  %176 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %write.i, align 4
  tail call void %177(i32 noundef %and305, ptr noundef %mecr) #8
  %or308 = or i32 %and305, -2147483648
  %178 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %write.i, align 4
  tail call void %179(i32 noundef %or308, ptr noundef %mecr) #8
  %and311 = and i32 %call297, -536870913
  %180 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %write.i, align 4
  tail call void %181(i32 noundef %and311, ptr noundef %169) #8
  br label %if.end313

if.end313:                                        ; preds = %if.then295, %for.end290.if.end313_crit_edge
  %182 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %regs1, align 4
  %184 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %read.i, align 8
  %call.i540 = tail call i32 %185(ptr noundef %183) #8
  %and.i541 = and i32 %call.i540, -268435457
  %186 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %write.i, align 4
  tail call void %187(i32 noundef %and.i541, ptr noundef %183) #8
  br label %land.rhs.i544

land.rhs.i544:                                    ; preds = %while.body.i547.land.rhs.i544_crit_edge, %if.end313
  %dec23.i = phi i32 [ 24, %if.end313 ], [ %dec.i545, %while.body.i547.land.rhs.i544_crit_edge ]
  %188 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %read.i, align 8
  %call5.i = tail call i32 %189(ptr noundef %183) #8
  %and6.i543 = and i32 %call5.i, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i543)
  %tobool7.not.i = icmp eq i32 %and6.i543, 0
  br i1 %tobool7.not.i, label %land.rhs.i544.flexcan_chip_unfreeze.exit_crit_edge, label %while.body.i547

land.rhs.i544.flexcan_chip_unfreeze.exit_crit_edge: ; preds = %land.rhs.i544
  call void @__sanitizer_cov_trace_pc() #10
  br label %flexcan_chip_unfreeze.exit

while.body.i547:                                  ; preds = %land.rhs.i544
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %190 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %190(i32 noundef 2147480) #8
  %dec.i545 = add nsw i32 %dec23.i, -1
  %tobool.not.i546 = icmp eq i32 %dec23.i, 0
  br i1 %tobool.not.i546, label %while.body.i547.flexcan_chip_unfreeze.exit_crit_edge, label %while.body.i547.land.rhs.i544_crit_edge

while.body.i547.land.rhs.i544_crit_edge:          ; preds = %while.body.i547
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs.i544

while.body.i547.flexcan_chip_unfreeze.exit_crit_edge: ; preds = %while.body.i547
  call void @__sanitizer_cov_trace_pc() #10
  br label %flexcan_chip_unfreeze.exit

flexcan_chip_unfreeze.exit:                       ; preds = %while.body.i547.flexcan_chip_unfreeze.exit_crit_edge, %land.rhs.i544.flexcan_chip_unfreeze.exit_crit_edge
  %191 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %read.i, align 8
  %call10.i = tail call i32 %192(ptr noundef %183) #8
  %and11.i = and i32 %call10.i, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool12.not.i = icmp eq i32 %and11.i, 0
  br i1 %tobool12.not.i, label %if.end317, label %flexcan_chip_unfreeze.exit.out_chip_disable_crit_edge

flexcan_chip_unfreeze.exit.out_chip_disable_crit_edge: ; preds = %flexcan_chip_unfreeze.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_chip_disable

if.end317:                                        ; preds = %flexcan_chip_unfreeze.exit
  call void @__sanitizer_cov_trace_pc() #10
  %state = getelementptr i8, ptr %dev, i32 2472
  %193 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %193)
  store i32 0, ptr %state, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @flexcan_chip_start.__UNIQUE_ID_ddebug598, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@flexcan_chip_start, %cleanup)) #8
          to label %if.then334 [label %cleanup], !srcloc !198

if.then334:                                       ; preds = %if.end317
  call void @__sanitizer_cov_trace_pc() #10
  %194 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %read.i, align 8
  %call337 = tail call i32 %195(ptr noundef %1) #8
  %196 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %read.i, align 8
  %call340 = tail call i32 %197(ptr noundef %ctrl) #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @flexcan_chip_start.__UNIQUE_ID_ddebug598, ptr noundef %dev, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.28, i32 noundef %call337, i32 noundef %call340) #8
  br label %cleanup

out_chip_disable:                                 ; preds = %flexcan_chip_unfreeze.exit.out_chip_disable_crit_edge, %flexcan_chip_freeze.exit.out_chip_disable_crit_edge, %flexcan_chip_softreset.exit.out_chip_disable_crit_edge
  %198 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %regs1, align 4
  %200 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %read.i, align 8
  %call.i551 = tail call i32 %201(ptr noundef %199) #8
  %or.i552 = or i32 %call.i551, -2147483648
  %202 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %write.i, align 4
  tail call void %203(i32 noundef %or.i552, ptr noundef %199) #8
  %204 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %regs1, align 4
  br label %land.rhs.i.i558

land.rhs.i.i558:                                  ; preds = %while.body.i.i561.land.rhs.i.i558_crit_edge, %out_chip_disable
  %dec12.i.i554 = phi i32 [ 24, %out_chip_disable ], [ %dec.i.i559, %while.body.i.i561.land.rhs.i.i558_crit_edge ]
  %206 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %read.i, align 8
  %call.i.i555 = tail call i32 %207(ptr noundef %205) #8
  %and.i.i556 = and i32 %call.i.i555, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i556)
  %tobool2.not.i.i557 = icmp eq i32 %and.i.i556, 0
  br i1 %tobool2.not.i.i557, label %while.body.i.i561, label %land.rhs.i.i558.flexcan_chip_disable.exit_crit_edge

land.rhs.i.i558.flexcan_chip_disable.exit_crit_edge: ; preds = %land.rhs.i.i558
  call void @__sanitizer_cov_trace_pc() #10
  br label %flexcan_chip_disable.exit

while.body.i.i561:                                ; preds = %land.rhs.i.i558
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %208 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %208(i32 noundef 2147480) #8
  %dec.i.i559 = add nsw i32 %dec12.i.i554, -1
  %tobool.not.i.i560 = icmp eq i32 %dec12.i.i554, 0
  br i1 %tobool.not.i.i560, label %while.body.i.i561.flexcan_chip_disable.exit_crit_edge, label %while.body.i.i561.land.rhs.i.i558_crit_edge

while.body.i.i561.land.rhs.i.i558_crit_edge:      ; preds = %while.body.i.i561
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs.i.i558

while.body.i.i561.flexcan_chip_disable.exit_crit_edge: ; preds = %while.body.i.i561
  call void @__sanitizer_cov_trace_pc() #10
  br label %flexcan_chip_disable.exit

flexcan_chip_disable.exit:                        ; preds = %while.body.i.i561.flexcan_chip_disable.exit_crit_edge, %land.rhs.i.i558.flexcan_chip_disable.exit_crit_edge
  %209 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %read.i, align 8
  %call5.i.i562 = tail call i32 %210(ptr noundef %205) #8
  br label %cleanup

cleanup:                                          ; preds = %flexcan_chip_disable.exit, %if.then334, %if.end317, %flexcan_chip_enable.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -110, %flexcan_chip_disable.exit ], [ -110, %flexcan_chip_enable.exit.cleanup_crit_edge ], [ 0, %if.then334 ], [ 0, %if.end317 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @can_rx_offload_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @flexcan_irq(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  %cf.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %regs2 = getelementptr i8, ptr %dev_id, i32 2988
  %0 = ptrtoint ptr %regs2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs2, align 4
  %state = getelementptr i8, ptr %dev_id, i32 2472
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 8
  %devtype_data = getelementptr i8, ptr %dev_id, i32 3036
  %4 = ptrtoint ptr %devtype_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %devtype_data, align 4
  %and = and i32 %5, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %while.cond.preheader

while.cond.preheader:                             ; preds = %entry
  %offload = getelementptr i8, ptr %dev_id, i32 2616
  %rx_mask.i = getelementptr i8, ptr %dev_id, i32 3008
  %read.i.i = getelementptr i8, ptr %dev_id, i32 3064
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %while.cond.preheader
  %handled.0 = phi i32 [ 1, %while.body.while.cond_crit_edge ], [ 0, %while.cond.preheader ]
  %6 = ptrtoint ptr %regs2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs2, align 4
  %iflag1.i = getelementptr inbounds %struct.flexcan_regs, ptr %7, i32 0, i32 12
  %8 = ptrtoint ptr %rx_mask.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %rx_mask.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %9)
  %tobool.not.i.i = icmp ult i64 %9, 4294967296
  br i1 %tobool.not.i.i, label %while.cond.if.end.i.i_crit_edge, label %if.then.i.i

while.cond.if.end.i.i_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %read.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %read.i.i, align 8
  %add.ptr.i.i = getelementptr %struct.flexcan_regs, ptr %7, i32 0, i32 11
  %call.i.i = tail call i32 %11(ptr noundef %add.ptr.i.i) #8
  %conv2.i.i = zext i32 %call.i.i to i64
  %shl.i.i = shl nuw i64 %conv2.i.i, 32
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %while.cond.if.end.i.i_crit_edge
  %reg.0.i.i = phi i64 [ %shl.i.i, %if.then.i.i ], [ 0, %while.cond.if.end.i.i_crit_edge ]
  %conv3.i.i = trunc i64 %9 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv3.i.i)
  %tobool4.not.i.i = icmp eq i32 %conv3.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end.i.i.flexcan_read_reg_iflag_rx.exit_crit_edge, label %if.then5.i.i

if.end.i.i.flexcan_read_reg_iflag_rx.exit_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %flexcan_read_reg_iflag_rx.exit

if.then5.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %read.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %read.i.i, align 8
  %call7.i.i = tail call i32 %13(ptr noundef %iflag1.i) #8
  %conv8.i.i = zext i32 %call7.i.i to i64
  %or.i.i = or i64 %reg.0.i.i, %conv8.i.i
  br label %flexcan_read_reg_iflag_rx.exit

flexcan_read_reg_iflag_rx.exit:                   ; preds = %if.then5.i.i, %if.end.i.i.flexcan_read_reg_iflag_rx.exit_crit_edge
  %reg.1.i.i = phi i64 [ %or.i.i, %if.then5.i.i ], [ %reg.0.i.i, %if.end.i.i.flexcan_read_reg_iflag_rx.exit_crit_edge ]
  %and10.i.i = and i64 %reg.1.i.i, %9
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and10.i.i)
  %tobool4.not = icmp eq i64 %and10.i.i, 0
  br i1 %tobool4.not, label %flexcan_read_reg_iflag_rx.exit.if.end23_crit_edge, label %while.body

flexcan_read_reg_iflag_rx.exit.if.end23_crit_edge: ; preds = %flexcan_read_reg_iflag_rx.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

while.body:                                       ; preds = %flexcan_read_reg_iflag_rx.exit
  %call5 = tail call i32 @can_rx_offload_irq_offload_timestamp(ptr noundef %offload, i64 noundef %and10.i.i) #8
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %while.body.if.end23_crit_edge, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond

while.body.if.end23_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

if.else:                                          ; preds = %entry
  %read = getelementptr i8, ptr %dev_id, i32 3064
  %14 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %read, align 8
  %iflag1 = getelementptr inbounds %struct.flexcan_regs, ptr %1, i32 0, i32 12
  %call8 = tail call i32 %15(ptr noundef %iflag1) #8
  %and9 = and i32 %call8, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.else.if.end14_crit_edge, label %if.then11

if.else.if.end14_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.then11:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %offload12 = getelementptr i8, ptr %dev_id, i32 2616
  %call13 = tail call i32 @can_rx_offload_irq_offload_fifo(ptr noundef %offload12) #8
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.else.if.end14_crit_edge
  %handled.2 = phi i32 [ 1, %if.then11 ], [ 0, %if.else.if.end14_crit_edge ]
  %and15 = and i32 %call8, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.end14.if.end23_crit_edge, label %if.then17

if.end14.if.end23_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

if.then17:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  %write = getelementptr i8, ptr %dev_id, i32 3068
  %16 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %write, align 4
  tail call void %17(i32 noundef 128, ptr noundef %iflag1) #8
  %rx_over_errors = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 36, i32 11
  %18 = ptrtoint ptr %rx_over_errors to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rx_over_errors, align 4
  %inc = add i32 %19, 1
  store i32 %inc, ptr %rx_over_errors, align 4
  %rx_errors = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 36, i32 4
  %20 = ptrtoint ptr %rx_errors to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rx_errors, align 8
  %inc21 = add i32 %21, 1
  store i32 %inc21, ptr %rx_errors, align 8
  br label %if.end23

if.end23:                                         ; preds = %if.then17, %if.end14.if.end23_crit_edge, %while.body.if.end23_crit_edge, %flexcan_read_reg_iflag_rx.exit.if.end23_crit_edge
  %handled.4 = phi i32 [ 1, %if.then17 ], [ %handled.2, %if.end14.if.end23_crit_edge ], [ %handled.0, %flexcan_read_reg_iflag_rx.exit.if.end23_crit_edge ], [ 1, %while.body.if.end23_crit_edge ]
  %22 = ptrtoint ptr %regs2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs2, align 4
  %iflag1.i142 = getelementptr inbounds %struct.flexcan_regs, ptr %23, i32 0, i32 12
  %tx_mask.i = getelementptr i8, ptr %dev_id, i32 3016
  %24 = ptrtoint ptr %tx_mask.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %tx_mask.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %25)
  %tobool.not.i.i143 = icmp ult i64 %25, 4294967296
  br i1 %tobool.not.i.i143, label %if.end23.if.end.i.i153_crit_edge, label %if.then.i.i149

if.end23.if.end.i.i153_crit_edge:                 ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i153

if.then.i.i149:                                   ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  %read.i.i144 = getelementptr i8, ptr %dev_id, i32 3064
  %26 = ptrtoint ptr %read.i.i144 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %read.i.i144, align 8
  %add.ptr.i.i145 = getelementptr %struct.flexcan_regs, ptr %23, i32 0, i32 11
  %call.i.i146 = tail call i32 %27(ptr noundef %add.ptr.i.i145) #8
  %conv2.i.i147 = zext i32 %call.i.i146 to i64
  %shl.i.i148 = shl nuw i64 %conv2.i.i147, 32
  br label %if.end.i.i153

if.end.i.i153:                                    ; preds = %if.then.i.i149, %if.end23.if.end.i.i153_crit_edge
  %reg.0.i.i150 = phi i64 [ %shl.i.i148, %if.then.i.i149 ], [ 0, %if.end23.if.end.i.i153_crit_edge ]
  %conv3.i.i151 = trunc i64 %25 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv3.i.i151)
  %tobool4.not.i.i152 = icmp eq i32 %conv3.i.i151, 0
  br i1 %tobool4.not.i.i152, label %if.end.i.i153.flexcan_read_reg_iflag_tx.exit_crit_edge, label %if.then5.i.i158

if.end.i.i153.flexcan_read_reg_iflag_tx.exit_crit_edge: ; preds = %if.end.i.i153
  call void @__sanitizer_cov_trace_pc() #10
  br label %flexcan_read_reg_iflag_tx.exit

if.then5.i.i158:                                  ; preds = %if.end.i.i153
  call void @__sanitizer_cov_trace_pc() #10
  %read6.i.i154 = getelementptr i8, ptr %dev_id, i32 3064
  %28 = ptrtoint ptr %read6.i.i154 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %read6.i.i154, align 8
  %call7.i.i155 = tail call i32 %29(ptr noundef %iflag1.i142) #8
  %conv8.i.i156 = zext i32 %call7.i.i155 to i64
  %or.i.i157 = or i64 %reg.0.i.i150, %conv8.i.i156
  br label %flexcan_read_reg_iflag_tx.exit

flexcan_read_reg_iflag_tx.exit:                   ; preds = %if.then5.i.i158, %if.end.i.i153.flexcan_read_reg_iflag_tx.exit_crit_edge
  %reg.1.i.i159 = phi i64 [ %or.i.i157, %if.then5.i.i158 ], [ %reg.0.i.i150, %if.end.i.i153.flexcan_read_reg_iflag_tx.exit_crit_edge ]
  %and10.i.i160 = and i64 %reg.1.i.i159, %25
  %30 = ptrtoint ptr %tx_mask.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %tx_mask.i, align 8
  %and25 = and i64 %and10.i.i160, %31
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and25)
  %tobool26.not = icmp eq i64 %and25, 0
  br i1 %tobool26.not, label %flexcan_read_reg_iflag_tx.exit.if.end38_crit_edge, label %if.then27

flexcan_read_reg_iflag_tx.exit.if.end38_crit_edge: ; preds = %flexcan_read_reg_iflag_tx.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

if.then27:                                        ; preds = %flexcan_read_reg_iflag_tx.exit
  %read28 = getelementptr i8, ptr %dev_id, i32 3064
  %32 = ptrtoint ptr %read28 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %read28, align 8
  %tx_mb = getelementptr i8, ptr %dev_id, i32 2992
  %34 = ptrtoint ptr %tx_mb to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %tx_mb, align 8
  %call29 = tail call i32 %33(ptr noundef %35) #8
  %offload30 = getelementptr i8, ptr %dev_id, i32 2616
  %shl = shl i32 %call29, 16
  %call31 = tail call i32 @can_rx_offload_get_echo_skb(ptr noundef %offload30, i32 noundef 0, i32 noundef %shl, ptr noundef null) #8
  %tx_bytes = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 36, i32 3
  %36 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %tx_bytes, align 4
  %add = add i32 %37, %call31
  store i32 %add, ptr %tx_bytes, align 4
  %tx_packets = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 36, i32 1
  %38 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %tx_packets, align 4
  %inc32 = add i32 %39, 1
  store i32 %inc32, ptr %tx_packets, align 4
  %write33 = getelementptr i8, ptr %dev_id, i32 3068
  %40 = ptrtoint ptr %write33 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %write33, align 4
  %42 = ptrtoint ptr %tx_mb to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %tx_mb, align 8
  tail call void %41(i32 noundef 134217728, ptr noundef %43) #8
  %44 = ptrtoint ptr %tx_mask.i to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %tx_mask.i, align 8
  %iflag137 = getelementptr inbounds %struct.flexcan_regs, ptr %1, i32 0, i32 12
  %shr.i = lshr i64 %45, 32
  %conv.i = trunc i64 %shr.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i)
  %tobool.not.i = icmp eq i32 %conv.i, 0
  br i1 %tobool.not.i, label %if.then27.if.end.i_crit_edge, label %if.then.i

if.then27.if.end.i_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #10
  %46 = ptrtoint ptr %write33 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %write33, align 4
  %add.ptr.i161 = getelementptr %struct.flexcan_regs, ptr %1, i32 0, i32 11
  tail call void %47(i32 noundef %conv.i, ptr noundef %add.ptr.i161) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then27.if.end.i_crit_edge
  %conv5.i = trunc i64 %45 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv5.i)
  %tobool6.not.i = icmp eq i32 %conv5.i, 0
  br i1 %tobool6.not.i, label %if.end.i.flexcan_write64.exit_crit_edge, label %if.then7.i

if.end.i.flexcan_write64.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %flexcan_write64.exit

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %48 = ptrtoint ptr %write33 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %write33, align 4
  tail call void %49(i32 noundef %conv5.i, ptr noundef %iflag137) #8
  br label %flexcan_write64.exit

flexcan_write64.exit:                             ; preds = %if.then7.i, %if.end.i.flexcan_write64.exit_crit_edge
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 103
  %50 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %51) #8
  br label %if.end38

if.end38:                                         ; preds = %flexcan_write64.exit, %flexcan_read_reg_iflag_tx.exit.if.end38_crit_edge
  %handled.5 = phi i32 [ 1, %flexcan_write64.exit ], [ %handled.4, %flexcan_read_reg_iflag_tx.exit.if.end38_crit_edge ]
  %read39 = getelementptr i8, ptr %dev_id, i32 3064
  %52 = ptrtoint ptr %read39 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %read39, align 8
  %esr = getelementptr inbounds %struct.flexcan_regs, ptr %1, i32 0, i32 8
  %call40 = tail call i32 %53(ptr noundef %esr) #8
  %and41 = and i32 %call40, 196615
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %if.end38.if.end47_crit_edge, label %if.then43

if.end38.if.end47_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47

if.then43:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  %write44 = getelementptr i8, ptr %dev_id, i32 3068
  %54 = ptrtoint ptr %write44 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %write44, align 4
  tail call void %55(i32 noundef %and41, ptr noundef %esr) #8
  br label %if.end47

if.end47:                                         ; preds = %if.then43, %if.end38.if.end47_crit_edge
  %handled.6 = phi i32 [ 1, %if.then43 ], [ %handled.5, %if.end38.if.end47_crit_edge ]
  %and48 = and i32 %call40, 196612
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  br i1 %tobool49.not, label %lor.lhs.false, label %if.end47.if.then54_crit_edge

if.end47.if.then54_crit_edge:                     ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then54

lor.lhs.false:                                    ; preds = %if.end47
  %56 = ptrtoint ptr %devtype_data to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %devtype_data, align 4
  %and52 = and i32 %57, 66
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  br i1 %tobool53.not, label %lor.lhs.false.if.end55_crit_edge, label %lor.lhs.false.if.then54_crit_edge

lor.lhs.false.if.then54_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then54

lor.lhs.false.if.end55_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55

if.then54:                                        ; preds = %lor.lhs.false.if.then54_crit_edge, %if.end47.if.then54_crit_edge
  %58 = ptrtoint ptr %regs2 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %regs2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cf.i) #8
  %60 = ptrtoint ptr %cf.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr inttoptr (i32 -1 to ptr), ptr %cf.i, align 4, !annotation !197
  %and.i = and i32 %call40, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 0
  br i1 %cmp.i, label %if.then.i162, label %if.else.i, !prof !200

if.then.i162:                                     ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #10
  %and3.i = lshr i32 %call40, 9
  %and3.lobit.i = and i32 %and3.i, 1
  %and11.i = lshr i32 %call40, 8
  %and11.lobit.i = and i32 %and11.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %and3.lobit.i, i32 %and11.lobit.i)
  %cmp20.i = icmp ugt i32 %and3.lobit.i, %and11.lobit.i
  %.and11.lobit.i = select i1 %cmp20.i, i32 1, i32 %and11.lobit.i
  br label %if.end.i164

if.else.i:                                        ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #10
  %61 = ptrtoint ptr %read39 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %read39, align 8
  %ecr.i.i = getelementptr inbounds %struct.flexcan_regs, ptr %59, i32 0, i32 7
  %call2.i.i = tail call i32 %62(ptr noundef %ecr.i.i) #8
  %63 = trunc i32 %call2.i.i to i16
  %conv.i.i = and i16 %63, 255
  %64 = lshr i16 %63, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %and.i)
  %cmp23.i = icmp eq i32 %and.i, 16
  %cond24.i = select i1 %cmp23.i, i32 2, i32 3
  call void @__sanitizer_cov_trace_cmp2(i16 %64, i16 %conv.i.i)
  %cmp26.not.i = icmp ult i16 %64, %conv.i.i
  %spec.select.i = select i1 %cmp26.not.i, i32 0, i32 %cond24.i
  call void @__sanitizer_cov_trace_cmp2(i16 %64, i16 %conv.i.i)
  %cmp36.not.i = icmp ugt i16 %64, %conv.i.i
  %cond41.i = select i1 %cmp36.not.i, i32 0, i32 %cond24.i
  br label %if.end.i164

if.end.i164:                                      ; preds = %if.else.i, %if.then.i162
  %new_state.0.i = phi i32 [ %.and11.lobit.i, %if.then.i162 ], [ %cond24.i, %if.else.i ]
  %rx_state.0.i = phi i32 [ %and11.lobit.i, %if.then.i162 ], [ %spec.select.i, %if.else.i ]
  %tx_state.0.i = phi i32 [ %and3.lobit.i, %if.then.i162 ], [ %cond41.i, %if.else.i ]
  %65 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %new_state.0.i, i32 %66)
  %cmp42.i = icmp eq i32 %new_state.0.i, %66
  br i1 %cmp42.i, label %if.end.i164.flexcan_irq_state.exit_crit_edge, label %if.end51.i, !prof !200

if.end.i164.flexcan_irq_state.exit_crit_edge:     ; preds = %if.end.i164
  call void @__sanitizer_cov_trace_pc() #10
  br label %flexcan_irq_state.exit

if.end51.i:                                       ; preds = %if.end.i164
  %67 = ptrtoint ptr %read39 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %read39, align 8
  %timer.i = getelementptr inbounds %struct.flexcan_regs, ptr %59, i32 0, i32 2
  %call52.i = tail call i32 %68(ptr noundef %timer.i) #8
  %shl.i = shl i32 %call52.i, 16
  %call53.i = call ptr @alloc_can_err_skb(ptr noundef %dev_id, ptr noundef nonnull %cf.i) #8
  %tobool54.not.i = icmp eq ptr %call53.i, null
  br i1 %tobool54.not.i, label %if.end51.i.flexcan_irq_state.exit_crit_edge, label %if.end64.i, !prof !199

if.end51.i.flexcan_irq_state.exit_crit_edge:      ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %flexcan_irq_state.exit

if.end64.i:                                       ; preds = %if.end51.i
  %69 = ptrtoint ptr %cf.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %cf.i, align 4
  call void @can_change_state(ptr noundef %dev_id, ptr noundef %70, i32 noundef %tx_state.0.i, i32 noundef %rx_state.0.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %new_state.0.i)
  %cmp65.i = icmp eq i32 %new_state.0.i, 3
  br i1 %cmp65.i, label %if.then73.i, label %if.end64.i.if.end74.i_crit_edge, !prof !199

if.end64.i.if.end74.i_crit_edge:                  ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end74.i

if.then73.i:                                      ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @can_bus_off(ptr noundef %dev_id) #8
  br label %if.end74.i

if.end74.i:                                       ; preds = %if.then73.i, %if.end64.i.if.end74.i_crit_edge
  %offload.i = getelementptr i8, ptr %dev_id, i32 2616
  %call75.i = call i32 @can_rx_offload_queue_sorted(ptr noundef %offload.i, ptr noundef nonnull %call53.i, i32 noundef %shl.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75.i)
  %tobool76.not.i = icmp eq i32 %call75.i, 0
  br i1 %tobool76.not.i, label %if.end74.i.flexcan_irq_state.exit_crit_edge, label %if.then77.i

if.end74.i.flexcan_irq_state.exit_crit_edge:      ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %flexcan_irq_state.exit

if.then77.i:                                      ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #10
  %rx_fifo_errors.i = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 36, i32 14
  %71 = ptrtoint ptr %rx_fifo_errors.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %rx_fifo_errors.i, align 8
  %inc.i = add i32 %72, 1
  store i32 %inc.i, ptr %rx_fifo_errors.i, align 8
  br label %flexcan_irq_state.exit

flexcan_irq_state.exit:                           ; preds = %if.then77.i, %if.end74.i.flexcan_irq_state.exit_crit_edge, %if.end51.i.flexcan_irq_state.exit_crit_edge, %if.end.i164.flexcan_irq_state.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cf.i) #8
  br label %if.end55

if.end55:                                         ; preds = %flexcan_irq_state.exit, %lor.lhs.false.if.end55_crit_edge
  %and56 = and i32 %call40, 64512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56)
  %tobool57.not = icmp eq i32 %and56, 0
  br i1 %tobool57.not, label %if.end55.if.end62_crit_edge, label %land.lhs.true

if.end55.if.end62_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end62

land.lhs.true:                                    ; preds = %if.end55
  %ctrlmode = getelementptr i8, ptr %dev_id, i32 2476
  %73 = ptrtoint ptr %ctrlmode to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %ctrlmode, align 4
  %and59 = and i32 %74, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59)
  %tobool60.not = icmp eq i32 %and59, 0
  br i1 %tobool60.not, label %land.lhs.true.if.end62_crit_edge, label %if.then61

land.lhs.true.if.end62_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end62

if.then61:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @flexcan_irq_bus_err(ptr noundef %dev_id, i32 noundef %call40)
  br label %if.end62

if.end62:                                         ; preds = %if.then61, %land.lhs.true.if.end62_crit_edge, %if.end55.if.end62_crit_edge
  %75 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %76)
  %cmp.not = icmp eq i32 %3, %76
  br i1 %cmp.not, label %if.end62.if.end87_crit_edge, label %land.lhs.true65

if.end62.if.end87_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end87

land.lhs.true65:                                  ; preds = %if.end62
  %77 = ptrtoint ptr %devtype_data to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %devtype_data, align 4
  %and68 = and i32 %78, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68)
  %tobool69.not = icmp eq i32 %and68, 0
  br i1 %tobool69.not, label %land.lhs.true65.if.end87_crit_edge, label %land.lhs.true70

land.lhs.true65.if.end87_crit_edge:               ; preds = %land.lhs.true65
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end87

land.lhs.true70:                                  ; preds = %land.lhs.true65
  %ctrlmode72 = getelementptr i8, ptr %dev_id, i32 2476
  %79 = ptrtoint ptr %ctrlmode72 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %ctrlmode72, align 4
  %and73 = and i32 %80, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and73)
  %tobool74.not = icmp eq i32 %and73, 0
  br i1 %tobool74.not, label %if.then75, label %land.lhs.true70.if.end87_crit_edge

land.lhs.true70.if.end87_crit_edge:               ; preds = %land.lhs.true70
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end87

if.then75:                                        ; preds = %land.lhs.true70
  %81 = zext i32 %76 to i64
  call void @__sanitizer_cov_trace_switch(i64 %81, ptr @__sancov_gen_cov_switch_values.64)
  switch i32 %76, label %if.then75.if.end87_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb85
    i32 2, label %if.then75.sw.bb86_crit_edge
    i32 3, label %if.then75.sw.bb86_crit_edge183
  ]

if.then75.sw.bb86_crit_edge183:                   ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb86

if.then75.sw.bb86_crit_edge:                      ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb86

if.then75.if.end87_crit_edge:                     ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end87

sw.bb:                                            ; preds = %if.then75
  %and80 = and i32 %78, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80)
  %tobool81.not = icmp eq i32 %and80, 0
  %82 = ptrtoint ptr %regs2 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %regs2, align 4
  %reg_ctrl_default.i168 = getelementptr i8, ptr %dev_id, i32 3024
  %84 = ptrtoint ptr %reg_ctrl_default.i168 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %reg_ctrl_default.i168, align 8
  br i1 %tobool81.not, label %if.else83, label %if.then82

if.then82:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %or.i = or i32 %85, 16384
  br label %if.end87.sink.split

if.else83:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %and.i169 = and i32 %85, -16385
  br label %if.end87.sink.split

sw.bb85:                                          ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #10
  %86 = ptrtoint ptr %regs2 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %regs2, align 4
  %reg_ctrl_default.i173 = getelementptr i8, ptr %dev_id, i32 3024
  %88 = ptrtoint ptr %reg_ctrl_default.i173 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %reg_ctrl_default.i173, align 8
  %or.i174 = or i32 %89, 16384
  br label %if.end87.sink.split

sw.bb86:                                          ; preds = %if.then75.sw.bb86_crit_edge, %if.then75.sw.bb86_crit_edge183
  %90 = ptrtoint ptr %regs2 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %regs2, align 4
  %reg_ctrl_default.i178 = getelementptr i8, ptr %dev_id, i32 3024
  %92 = ptrtoint ptr %reg_ctrl_default.i178 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %reg_ctrl_default.i178, align 8
  %and.i179 = and i32 %93, -16385
  br label %if.end87.sink.split

if.end87.sink.split:                              ; preds = %sw.bb86, %sw.bb85, %if.else83, %if.then82
  %.sink182 = phi ptr [ %87, %sw.bb85 ], [ %91, %sw.bb86 ], [ %83, %if.else83 ], [ %83, %if.then82 ]
  %or.i174.sink = phi i32 [ %or.i174, %sw.bb85 ], [ %and.i179, %sw.bb86 ], [ %and.i169, %if.else83 ], [ %or.i, %if.then82 ]
  %write.i175 = getelementptr i8, ptr %dev_id, i32 3068
  %94 = ptrtoint ptr %write.i175 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %write.i175, align 4
  %ctrl.i176 = getelementptr inbounds %struct.flexcan_regs, ptr %.sink182, i32 0, i32 1
  call void %95(i32 noundef %or.i174.sink, ptr noundef %ctrl.i176) #8
  br label %if.end87

if.end87:                                         ; preds = %if.end87.sink.split, %if.then75.if.end87_crit_edge, %land.lhs.true70.if.end87_crit_edge, %land.lhs.true65.if.end87_crit_edge, %if.end62.if.end87_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %handled.6)
  %tobool88.not = icmp eq i32 %handled.6, 0
  br i1 %tobool88.not, label %if.end87.if.end91_crit_edge, label %if.then89

if.end87.if.end91_crit_edge:                      ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end91

if.then89:                                        ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #10
  %offload90 = getelementptr i8, ptr %dev_id, i32 2616
  call void @can_rx_offload_irq_finish(ptr noundef %offload90) #8
  br label %if.end91

if.end91:                                         ; preds = %if.then89, %if.end87.if.end91_crit_edge
  ret i32 %handled.6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @flexcan_chip_interrupts_enable(ptr nocapture noundef readonly %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %regs1 = getelementptr i8, ptr %dev, i32 2988
  %0 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs1, align 4
  %irq = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 64
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  tail call void @disable_irq(i32 noundef %3) #8
  %write = getelementptr i8, ptr %dev, i32 3068
  %4 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write, align 4
  %reg_ctrl_default = getelementptr i8, ptr %dev, i32 3024
  %6 = ptrtoint ptr %reg_ctrl_default to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %reg_ctrl_default, align 8
  %ctrl = getelementptr inbounds %struct.flexcan_regs, ptr %1, i32 0, i32 1
  tail call void %5(i32 noundef %7, ptr noundef %ctrl) #8
  %rx_mask = getelementptr i8, ptr %dev, i32 3008
  %8 = ptrtoint ptr %rx_mask to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %rx_mask, align 8
  %tx_mask = getelementptr i8, ptr %dev, i32 3016
  %10 = ptrtoint ptr %tx_mask to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %tx_mask, align 8
  %or = or i64 %11, %9
  %12 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write, align 4
  %shr = lshr i64 %or, 32
  %conv = trunc i64 %shr to i32
  %imask2 = getelementptr inbounds %struct.flexcan_regs, ptr %1, i32 0, i32 9
  tail call void %13(i32 noundef %conv, ptr noundef %imask2) #8
  %14 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write, align 4
  %conv5 = trunc i64 %or to i32
  %imask1 = getelementptr inbounds %struct.flexcan_regs, ptr %1, i32 0, i32 10
  tail call void %15(i32 noundef %conv5, ptr noundef %imask1) #8
  %16 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %irq, align 4
  tail call void @enable_irq(i32 noundef %17) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @can_rx_offload_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @close_candev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @flexcan_mailbox_read(ptr nocapture noundef readonly %offload, i32 noundef %n, ptr nocapture noundef writeonly %timestamp, i1 noundef zeroext %drop) #2 align 64 {
entry:
  %cfd = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %regs1 = getelementptr i8, ptr %offload, i32 372
  %0 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cfd) #8
  %2 = ptrtoint ptr %cfd to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %cfd, align 4, !annotation !197
  br i1 %drop, label %entry.mark_as_read_crit_edge, label %if.end, !prof !199

entry.mark_as_read_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %mark_as_read

if.end:                                           ; preds = %entry
  %conv = trunc i32 %n to i8
  %mb_count.i = getelementptr i8, ptr %offload, i32 385
  %3 = ptrtoint ptr %mb_count.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %mb_count.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %4, i8 %conv)
  %cmp.not.i = icmp ugt i8 %4, %conv
  br i1 %cmp.not.i, label %if.end23.i, label %do.end.i, !prof !200

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 448, i32 noundef 9, ptr noundef null) #8
  br label %flexcan_get_mb.exit

if.end23.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %mb_size.i = getelementptr i8, ptr %offload, i32 386
  %5 = ptrtoint ptr %mb_size.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %mb_size.i, align 2
  %conv24.i = zext i8 %6 to i16
  %div.i = udiv i16 512, %conv24.i
  %7 = and i16 %div.i, 255
  %8 = trunc i32 %n to i16
  %9 = and i16 %8, 255
  call void @__sanitizer_cov_trace_cmp2(i16 %7, i16 %9)
  %cmp28.i = icmp ule i16 %7, %9
  %narrow = select i1 %cmp28.i, i16 %div.i, i16 0
  %conv34.i = zext i16 %narrow to i32
  %mb_index.addr.0.i = sub i32 %n, %conv34.i
  %10 = getelementptr inbounds %struct.flexcan_regs, ptr %1, i32 0, i32 25
  %idxprom.i = zext i1 %cmp28.i to i32
  %conv38.i = zext i8 %6 to i32
  %conv39.i = and i32 %mb_index.addr.0.i, 255
  %mul.i = mul nuw nsw i32 %conv39.i, %conv38.i
  %arrayidx40.i = getelementptr [2 x [512 x i8]], ptr %10, i32 0, i32 %idxprom.i, i32 %mul.i
  br label %flexcan_get_mb.exit

flexcan_get_mb.exit:                              ; preds = %if.end23.i, %do.end.i
  %retval.0.i = phi ptr [ null, %do.end.i ], [ %arrayidx40.i, %if.end23.i ]
  %devtype_data = getelementptr i8, ptr %offload, i32 420
  %11 = ptrtoint ptr %devtype_data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %devtype_data, align 4
  %and = and i32 %12, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  %read24 = getelementptr i8, ptr %offload, i32 448
  br i1 %tobool6.not, label %if.else, label %flexcan_get_mb.exit.do.body_crit_edge

flexcan_get_mb.exit.do.body_crit_edge:            ; preds = %flexcan_get_mb.exit
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %flexcan_get_mb.exit.do.body_crit_edge
  %13 = ptrtoint ptr %read24 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %read24, align 8
  %call8 = tail call i32 %14(ptr noundef %retval.0.i) #8
  %and9 = and i32 %call8, 16777216
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %do.end, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.end:                                           ; preds = %do.body
  %and11 = and i32 %call8, 251658240
  %15 = zext i32 %and11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.65)
  switch i32 %and11, label %do.end.cleanup128_crit_edge [
    i32 100663296, label %if.then19
    i32 33554432, label %do.end.if.end33_crit_edge
  ]

do.end.if.end33_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33

do.end.cleanup128_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup128

if.then19:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %offload to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %offload, align 8
  %rx_over_errors = getelementptr inbounds %struct.net_device, ptr %17, i32 0, i32 36, i32 11
  %18 = ptrtoint ptr %rx_over_errors to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rx_over_errors, align 4
  %inc = add i32 %19, 1
  store i32 %inc, ptr %rx_over_errors, align 4
  %20 = load ptr, ptr %offload, align 8
  %rx_errors = getelementptr inbounds %struct.net_device, ptr %20, i32 0, i32 36, i32 4
  %21 = ptrtoint ptr %rx_errors to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %rx_errors, align 8
  %inc22 = add i32 %22, 1
  store i32 %inc22, ptr %rx_errors, align 8
  br label %if.end33

if.else:                                          ; preds = %flexcan_get_mb.exit
  %23 = ptrtoint ptr %read24 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %read24, align 8
  %iflag1 = getelementptr inbounds %struct.flexcan_regs, ptr %1, i32 0, i32 12
  %call25 = tail call i32 %24(ptr noundef %iflag1) #8
  %and26 = and i32 %call25, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %if.else.cleanup128_crit_edge, label %if.end29

if.else.cleanup128_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup128

if.end29:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %read24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %read24, align 8
  %call32 = tail call i32 %26(ptr noundef %retval.0.i) #8
  br label %if.end33

if.end33:                                         ; preds = %if.end29, %if.then19, %do.end.if.end33_crit_edge
  %reg_ctrl.0 = phi i32 [ %call32, %if.end29 ], [ %call8, %do.end.if.end33_crit_edge ], [ %call8, %if.then19 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %reg_ctrl.0)
  %tobool35.not = icmp sgt i32 %reg_ctrl.0, -1
  %27 = ptrtoint ptr %offload to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %offload, align 8
  br i1 %tobool35.not, label %if.else39, label %if.then36

if.then36:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  %call38 = call ptr @alloc_canfd_skb(ptr noundef %28, ptr noundef nonnull %cfd) #8
  br label %if.end42

if.else39:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  %call41 = call ptr @alloc_can_skb(ptr noundef %28, ptr noundef nonnull %cfd) #8
  br label %if.end42

if.end42:                                         ; preds = %if.else39, %if.then36
  %skb.0 = phi ptr [ %call38, %if.then36 ], [ %call41, %if.else39 ]
  %tobool43.not = icmp eq ptr %skb.0, null
  br i1 %tobool43.not, label %if.end42.mark_as_read_crit_edge, label %if.end54, !prof !199

if.end42.mark_as_read_crit_edge:                  ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  br label %mark_as_read

if.end54:                                         ; preds = %if.end42
  %shl = shl i32 %reg_ctrl.0, 16
  %29 = ptrtoint ptr %timestamp to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %shl, ptr %timestamp, align 4
  %read55 = getelementptr i8, ptr %offload, i32 448
  %30 = ptrtoint ptr %read55 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %read55, align 8
  %can_id = getelementptr inbounds %struct.flexcan_mb, ptr %retval.0.i, i32 0, i32 1
  %call56 = call i32 %31(ptr noundef %can_id) #8
  %and57 = and i32 %reg_ctrl.0, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool58.not = icmp eq i32 %and57, 0
  br i1 %tobool58.not, label %if.else62, label %if.then59

if.then59:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #10
  %and60 = and i32 %call56, 536870911
  %or = or i32 %and60, -2147483648
  %32 = ptrtoint ptr %cfd to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %cfd, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %or, ptr %33, align 8
  br label %if.end66

if.else62:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #10
  %shr63 = lshr i32 %call56, 18
  %and64 = and i32 %shr63, 2047
  %35 = ptrtoint ptr %cfd to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %cfd, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %and64, ptr %36, align 8
  br label %if.end66

if.end66:                                         ; preds = %if.else62, %if.then59
  %shr82 = lshr i32 %reg_ctrl.0, 16
  br i1 %tobool35.not, label %if.else81, label %if.then69

if.then69:                                        ; preds = %if.end66
  %38 = trunc i32 %shr82 to i8
  %conv72 = and i8 %38, 15
  %call73 = call zeroext i8 @can_fd_dlc2len(i8 noundef zeroext %conv72) #8
  %39 = ptrtoint ptr %cfd to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %cfd, align 4
  %len = getelementptr inbounds %struct.canfd_frame, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %len to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %call73, ptr %len, align 4
  %and74 = and i32 %reg_ctrl.0, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and74)
  %tobool75.not = icmp eq i32 %and74, 0
  br i1 %tobool75.not, label %if.then69.if.end99_crit_edge, label %if.then76

if.then69.if.end99_crit_edge:                     ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end99

if.then76:                                        ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #10
  %flags = getelementptr inbounds %struct.canfd_frame, ptr %40, i32 0, i32 2
  %42 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %flags, align 1
  %44 = or i8 %43, 1
  store i8 %44, ptr %flags, align 1
  br label %if.end99

if.else81:                                        ; preds = %if.end66
  %conv84 = and i32 %shr82, 15
  %45 = call i32 @llvm.umin.i32(i32 %conv84, i32 8)
  %46 = trunc i32 %45 to i8
  %47 = ptrtoint ptr %cfd to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %cfd, align 4
  %len92 = getelementptr inbounds %struct.canfd_frame, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %len92 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %46, ptr %len92, align 4
  %and93 = and i32 %reg_ctrl.0, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and93)
  %tobool94.not = icmp eq i32 %and93, 0
  br i1 %tobool94.not, label %if.else81.if.end99_crit_edge, label %if.then95

if.else81.if.end99_crit_edge:                     ; preds = %if.else81
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end99

if.then95:                                        ; preds = %if.else81
  call void @__sanitizer_cov_trace_pc() #10
  %50 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %48, align 8
  %or97 = or i32 %51, 1073741824
  store i32 %or97, ptr %48, align 8
  br label %if.end99

if.end99:                                         ; preds = %if.then95, %if.else81.if.end99_crit_edge, %if.then76, %if.then69.if.end99_crit_edge
  %and100 = and i32 %reg_ctrl.0, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and100)
  %tobool101.not = icmp eq i32 %and100, 0
  br i1 %tobool101.not, label %if.end99.if.end107_crit_edge, label %if.then102

if.end99.if.end107_crit_edge:                     ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end107

if.then102:                                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #10
  %52 = ptrtoint ptr %cfd to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %cfd, align 4
  %flags103 = getelementptr inbounds %struct.canfd_frame, ptr %53, i32 0, i32 2
  %54 = ptrtoint ptr %flags103 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %flags103, align 1
  %56 = or i8 %55, 2
  store i8 %56, ptr %flags103, align 1
  br label %if.end107

if.end107:                                        ; preds = %if.then102, %if.end99.if.end107_crit_edge
  %57 = ptrtoint ptr %cfd to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %cfd, align 4
  %len108182 = getelementptr inbounds %struct.canfd_frame, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %len108182 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %len108182, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %cmp110184.not = icmp eq i8 %60, 0
  br i1 %cmp110184.not, label %if.end107.mark_as_read_crit_edge, label %if.end107.for.body_crit_edge

if.end107.for.body_crit_edge:                     ; preds = %if.end107
  br label %for.body

if.end107.mark_as_read_crit_edge:                 ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #10
  br label %mark_as_read

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end107.for.body_crit_edge
  %i.0185 = phi i32 [ %add, %for.body.for.body_crit_edge ], [ 0, %if.end107.for.body_crit_edge ]
  %61 = ptrtoint ptr %read55 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %read55, align 8
  %div179 = lshr exact i32 %i.0185, 2
  %arrayidx = getelementptr %struct.flexcan_mb, ptr %retval.0.i, i32 0, i32 2, i32 %div179
  %call114 = call i32 %62(ptr noundef %arrayidx) #8
  %63 = ptrtoint ptr %cfd to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %cfd, align 4
  %data115 = getelementptr inbounds %struct.canfd_frame, ptr %64, i32 0, i32 5
  %add.ptr = getelementptr i8, ptr %data115, i32 %i.0185
  %65 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %call114, ptr %add.ptr, align 4
  %add = add nuw nsw i32 %i.0185, 4
  %66 = load ptr, ptr %cfd, align 4
  %len108 = getelementptr inbounds %struct.canfd_frame, ptr %66, i32 0, i32 1
  %67 = ptrtoint ptr %len108 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %len108, align 4
  %conv109 = zext i8 %68 to i32
  %cmp110 = icmp ult i32 %add, %conv109
  br i1 %cmp110, label %for.body.for.body_crit_edge, label %for.body.mark_as_read_crit_edge

for.body.mark_as_read_crit_edge:                  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %mark_as_read

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

mark_as_read:                                     ; preds = %for.body.mark_as_read_crit_edge, %if.end107.mark_as_read_crit_edge, %if.end42.mark_as_read_crit_edge, %entry.mark_as_read_crit_edge
  %skb.1 = phi ptr [ inttoptr (i32 -105 to ptr), %entry.mark_as_read_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end42.mark_as_read_crit_edge ], [ %skb.0, %if.end107.mark_as_read_crit_edge ], [ %skb.0, %for.body.mark_as_read_crit_edge ]
  %devtype_data116 = getelementptr i8, ptr %offload, i32 420
  %69 = ptrtoint ptr %devtype_data116 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %devtype_data116, align 4
  %and118 = and i32 %70, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and118)
  %tobool119.not = icmp eq i32 %and118, 0
  br i1 %tobool119.not, label %if.else123, label %if.then120

if.then120:                                       ; preds = %mark_as_read
  %sh_prom = zext i32 %n to i64
  %shl121 = shl nuw i64 1, %sh_prom
  %iflag1122 = getelementptr inbounds %struct.flexcan_regs, ptr %1, i32 0, i32 12
  %shr.i = lshr i64 %shl121, 32
  %conv.i = trunc i64 %shr.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i)
  %tobool.not.i = icmp eq i32 %conv.i, 0
  br i1 %tobool.not.i, label %if.then120.if.end.i_crit_edge, label %if.then.i

if.then120.if.end.i_crit_edge:                    ; preds = %if.then120
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %if.then120
  call void @__sanitizer_cov_trace_pc() #10
  %write.i = getelementptr i8, ptr %offload, i32 452
  %71 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %write.i, align 4
  %add.ptr.i180 = getelementptr %struct.flexcan_regs, ptr %1, i32 0, i32 11
  call void %72(i32 noundef %conv.i, ptr noundef %add.ptr.i180) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then120.if.end.i_crit_edge
  %conv5.i = trunc i64 %shl121 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv5.i)
  %tobool6.not.i = icmp eq i32 %conv5.i, 0
  br i1 %tobool6.not.i, label %if.end.i.if.end125_crit_edge, label %if.then7.i

if.end.i.if.end125_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end125

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %write8.i = getelementptr i8, ptr %offload, i32 452
  %73 = ptrtoint ptr %write8.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %write8.i, align 4
  call void %74(i32 noundef %conv5.i, ptr noundef %iflag1122) #8
  br label %if.end125

if.else123:                                       ; preds = %mark_as_read
  call void @__sanitizer_cov_trace_pc() #10
  %write = getelementptr i8, ptr %offload, i32 452
  %75 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %write, align 4
  %iflag1124 = getelementptr inbounds %struct.flexcan_regs, ptr %1, i32 0, i32 12
  call void %76(i32 noundef 32, ptr noundef %iflag1124) #8
  br label %if.end125

if.end125:                                        ; preds = %if.else123, %if.then7.i, %if.end.i.if.end125_crit_edge
  %read126 = getelementptr i8, ptr %offload, i32 448
  %77 = ptrtoint ptr %read126 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %read126, align 8
  %timer = getelementptr inbounds %struct.flexcan_regs, ptr %1, i32 0, i32 2
  %call127 = call i32 %78(ptr noundef %timer) #8
  br label %cleanup128

cleanup128:                                       ; preds = %if.end125, %if.else.cleanup128_crit_edge, %do.end.cleanup128_crit_edge
  %retval.1 = phi ptr [ %skb.1, %if.end125 ], [ null, %do.end.cleanup128_crit_edge ], [ null, %if.else.cleanup128_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cfd) #8
  ret ptr %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @can_rx_offload_add_timestamp(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @can_rx_offload_add_fifo(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_canfd_skb(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_can_skb(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @can_fd_dlc2len(i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @flexcan_chip_disable(ptr nocapture noundef readonly %priv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %regs1 = getelementptr inbounds %struct.flexcan_priv, ptr %priv, i32 0, i32 3
  %0 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs1, align 4
  %read = getelementptr inbounds %struct.flexcan_priv, ptr %priv, i32 0, i32 22
  %2 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read, align 8
  %call = tail call i32 %3(ptr noundef %1) #8
  %or = or i32 %call, -2147483648
  %write = getelementptr inbounds %struct.flexcan_priv, ptr %priv, i32 0, i32 23
  %4 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write, align 4
  tail call void %5(i32 noundef %or, ptr noundef %1) #8
  %6 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs1, align 4
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %while.body.i.land.rhs.i_crit_edge, %entry
  %dec12.i = phi i32 [ 24, %entry ], [ %dec.i, %while.body.i.land.rhs.i_crit_edge ]
  %8 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read, align 8
  %call.i = tail call i32 %9(ptr noundef %7) #8
  %and.i = and i32 %call.i, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool2.not.i, label %while.body.i, label %land.rhs.i.flexcan_low_power_enter_ack.exit_crit_edge

land.rhs.i.flexcan_low_power_enter_ack.exit_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %flexcan_low_power_enter_ack.exit

while.body.i:                                     ; preds = %land.rhs.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 2147480) #8
  %dec.i = add nsw i32 %dec12.i, -1
  %tobool.not.i = icmp eq i32 %dec12.i, 0
  br i1 %tobool.not.i, label %while.body.i.flexcan_low_power_enter_ack.exit_crit_edge, label %while.body.i.land.rhs.i_crit_edge

while.body.i.land.rhs.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs.i

while.body.i.flexcan_low_power_enter_ack.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %flexcan_low_power_enter_ack.exit

flexcan_low_power_enter_ack.exit:                 ; preds = %while.body.i.flexcan_low_power_enter_ack.exit_crit_edge, %land.rhs.i.flexcan_low_power_enter_ack.exit_crit_edge
  %11 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %read, align 8
  %call5.i = tail call i32 %12(ptr noundef %7) #8
  %and6.i = and i32 %call5.i, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp eq i32 %and6.i, 0
  %..i = select i1 %tobool7.not.i, i32 -110, i32 0
  ret i32 %..i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmioset(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @flexcan_set_bittiming_cbt(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %regs2 = getelementptr i8, ptr %dev, i32 2988
  %0 = ptrtoint ptr %regs2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs2, align 4
  %phase_seg1 = getelementptr i8, ptr %dev, i32 2356
  %2 = ptrtoint ptr %phase_seg1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %phase_seg1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %3)
  %cmp = icmp ugt i32 %3, 32
  br i1 %cmp, label %if.then, label %entry.do.body8_crit_edge

entry.do.body8_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body8

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %sub = add i32 %3, -32
  %prop_seg = getelementptr i8, ptr %dev, i32 2352
  %4 = ptrtoint ptr %prop_seg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %prop_seg, align 4
  %add = add i32 %sub, %5
  store i32 %add, ptr %prop_seg, align 4
  %6 = ptrtoint ptr %phase_seg1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 32, ptr %phase_seg1, align 4
  br label %do.body8

do.body8:                                         ; preds = %if.then, %entry.do.body8_crit_edge
  %brp = getelementptr i8, ptr %dev, i32 2368
  %7 = ptrtoint ptr %brp to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %brp, align 4
  %sjw = getelementptr i8, ptr %dev, i32 2364
  %9 = ptrtoint ptr %sjw to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sjw, align 4
  %prop_seg62 = getelementptr i8, ptr %dev, i32 2352
  %11 = ptrtoint ptr %prop_seg62 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %prop_seg62, align 4
  %13 = ptrtoint ptr %phase_seg1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %phase_seg1, align 4
  %phase_seg2 = getelementptr i8, ptr %dev, i32 2360
  %15 = ptrtoint ptr %phase_seg2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %phase_seg2, align 4
  %sub23 = shl i32 %8, 21
  %shl = add i32 %sub23, 2145386496
  %sub51 = shl i32 %10, 16
  %shl52 = add i32 %sub51, 2031616
  %and53 = and i32 %shl52, 2031616
  %or = or i32 %and53, %shl
  %sub82 = shl i32 %12, 10
  %shl83 = add i32 %sub82, 64512
  %and84 = and i32 %shl83, 64512
  %or54 = or i32 %and84, %or
  %sub113 = shl i32 %14, 5
  %shl114 = add i32 %sub113, 992
  %and115 = and i32 %shl114, 992
  %or85 = or i32 %and115, %or54
  %sub143 = add i32 %16, 31
  %and145 = and i32 %sub143, 31
  %or116 = or i32 %and145, %or85
  %or146 = or i32 %or116, -2147483648
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @flexcan_set_bittiming_cbt.__UNIQUE_ID_ddebug499, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@flexcan_set_bittiming_cbt, %do.end160)) #8
          to label %if.then155 [label %do.end160], !srcloc !198

if.then155:                                       ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @flexcan_set_bittiming_cbt.__UNIQUE_ID_ddebug499, ptr noundef %dev, ptr noundef nonnull @.str.36, i32 noundef %or146) #8
  br label %do.end160

do.end160:                                        ; preds = %if.then155, %do.body8
  %write = getelementptr i8, ptr %dev, i32 3068
  %17 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %write, align 4
  %cbt = getelementptr inbounds %struct.flexcan_regs, ptr %1, i32 0, i32 20
  tail call void %18(i32 noundef %or146, ptr noundef %cbt) #8
  %ctrlmode = getelementptr i8, ptr %dev, i32 2476
  %19 = ptrtoint ptr %ctrlmode to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ctrlmode, align 4
  %and162 = and i32 %20, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and162)
  %tobool163.not = icmp eq i32 %and162, 0
  br i1 %tobool163.not, label %do.end160.if.end474_crit_edge, label %if.then164

do.end160.if.end474_crit_edge:                    ; preds = %do.end160
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end474

if.then164:                                       ; preds = %do.end160
  %21 = ptrtoint ptr %brp to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %brp, align 4
  %brp166 = getelementptr i8, ptr %dev, i32 2400
  %23 = ptrtoint ptr %brp166 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %brp166, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %24)
  %cmp167.not = icmp eq i32 %22, %24
  br i1 %cmp167.not, label %if.then164.if.end171_crit_edge, label %if.then168

if.then164.if.end171_crit_edge:                   ; preds = %if.then164
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end171

if.then168:                                       ; preds = %if.then164
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %dev, ptr noundef nonnull @.str.37, i32 noundef %24, i32 noundef %22) #11
  br label %if.end171

if.end171:                                        ; preds = %if.then168, %if.then164.if.end171_crit_edge
  %phase_seg1172 = getelementptr i8, ptr %dev, i32 2388
  %25 = ptrtoint ptr %phase_seg1172 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %phase_seg1172, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %26)
  %cmp173 = icmp ugt i32 %26, 8
  br i1 %cmp173, label %if.then174, label %if.end171.if.end180_crit_edge

if.end171.if.end180_crit_edge:                    ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end180

if.then174:                                       ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #10
  %sub176 = add i32 %26, -8
  %prop_seg177 = getelementptr i8, ptr %dev, i32 2384
  %27 = ptrtoint ptr %prop_seg177 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %prop_seg177, align 4
  %add178 = add i32 %sub176, %28
  store i32 %add178, ptr %prop_seg177, align 4
  %29 = ptrtoint ptr %phase_seg1172 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 8, ptr %phase_seg1172, align 4
  br label %if.end180

if.end180:                                        ; preds = %if.then174, %if.end171.if.end180_crit_edge
  %read = getelementptr i8, ptr %dev, i32 3064
  %30 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %read, align 8
  %fdcbt = getelementptr inbounds %struct.flexcan_regs, ptr %1, i32 0, i32 36
  %call181 = tail call i32 %31(ptr noundef %fdcbt) #8
  %and266 = and i32 %call181, -1073183976
  %32 = ptrtoint ptr %brp166 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %brp166, align 4
  %sjw304 = getelementptr i8, ptr %dev, i32 2396
  %34 = ptrtoint ptr %sjw304 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %sjw304, align 4
  %prop_seg335 = getelementptr i8, ptr %dev, i32 2384
  %36 = ptrtoint ptr %prop_seg335 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %prop_seg335, align 4
  %38 = ptrtoint ptr %phase_seg1172 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %phase_seg1172, align 4
  %phase_seg2394 = getelementptr i8, ptr %dev, i32 2392
  %40 = ptrtoint ptr %phase_seg2394 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %phase_seg2394, align 4
  %sub294 = shl i32 %33, 20
  %shl295 = add i32 %sub294, 1072693248
  %and296 = and i32 %shl295, 1072693248
  %sub324 = shl i32 %35, 16
  %shl325 = add i32 %sub324, 458752
  %and326 = and i32 %shl325, 458752
  %shl353 = shl i32 %37, 10
  %and354 = and i32 %shl353, 31744
  %sub383 = shl i32 %39, 5
  %shl384 = add i32 %sub383, 224
  %and385 = and i32 %shl384, 224
  %sub414 = add i32 %41, 7
  %and416 = and i32 %sub414, 7
  %or327 = or i32 %and296, %and266
  %or355 = or i32 %or327, %and326
  %or386 = or i32 %or355, %and354
  %or417 = or i32 %or386, %and385
  %or418 = or i32 %or417, %and416
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @flexcan_set_bittiming_cbt.__UNIQUE_ID_ddebug550, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@flexcan_set_bittiming_cbt, %do.end439)) #8
          to label %if.then434 [label %do.end439], !srcloc !198

if.then434:                                       ; preds = %if.end180
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @flexcan_set_bittiming_cbt.__UNIQUE_ID_ddebug550, ptr noundef %dev, ptr noundef nonnull @.str.38, i32 noundef %or418) #8
  br label %do.end439

do.end439:                                        ; preds = %if.then434, %if.end180
  %42 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %write, align 4
  tail call void %43(i32 noundef %or418, ptr noundef %fdcbt) #8
  %44 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %read, align 8
  %46 = getelementptr inbounds %struct.flexcan_regs, ptr %1, i32 0, i32 13
  %call443 = tail call i32 %45(ptr noundef %46) #8
  %and444 = and i32 %call443, -4097
  %47 = ptrtoint ptr %ctrlmode to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %ctrlmode, align 4
  %and447 = shl i32 %48, 5
  %49 = and i32 %and447, 4096
  %50 = or i32 %49, %and444
  %spec.select = xor i32 %50, 4096
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @flexcan_set_bittiming_cbt.__UNIQUE_ID_ddebug551, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@flexcan_set_bittiming_cbt, %do.end472)) #8
          to label %if.then467 [label %do.end472], !srcloc !198

if.then467:                                       ; preds = %do.end439
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @flexcan_set_bittiming_cbt.__UNIQUE_ID_ddebug551, ptr noundef %dev, ptr noundef nonnull @.str.39, i32 noundef %spec.select) #8
  br label %do.end472

do.end472:                                        ; preds = %if.then467, %do.end439
  %51 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %write, align 4
  tail call void %52(i32 noundef %spec.select, ptr noundef %46) #8
  br label %if.end474

if.end474:                                        ; preds = %do.end472, %do.end160.if.end474_crit_edge
  %read475 = getelementptr i8, ptr %dev, i32 3064
  %53 = ptrtoint ptr %read475 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %read475, align 8
  %fdctrl = getelementptr inbounds %struct.flexcan_regs, ptr %1, i32 0, i32 35
  %call476 = tail call i32 %54(ptr noundef %fdctrl) #8
  %and495 = and i32 %call476, 2147475711
  %55 = ptrtoint ptr %ctrlmode to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %ctrlmode, align 4
  %and498 = and i32 %56, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and498)
  %tobool499.not = icmp eq i32 %and498, 0
  br i1 %tobool499.not, label %if.end474.do.body563_crit_edge, label %if.then500

if.end474.do.body563_crit_edge:                   ; preds = %if.end474
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body563

if.then500:                                       ; preds = %if.end474
  %and504 = and i32 %56, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and504)
  %tobool505.not = icmp eq i32 %and504, 0
  br i1 %tobool505.not, label %do.end545, label %if.then506

if.then506:                                       ; preds = %if.then500
  call void @__sanitizer_cov_trace_pc() #10
  %or501 = and i32 %call476, 2147442943
  %and507 = or i32 %or501, -2147483648
  br label %do.body563

do.end545:                                        ; preds = %if.then500
  call void @__sanitizer_cov_trace_pc() #10
  %brp520 = getelementptr i8, ptr %dev, i32 2400
  %57 = ptrtoint ptr %brp520 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %brp520, align 4
  %prop_seg517 = getelementptr i8, ptr %dev, i32 2384
  %59 = ptrtoint ptr %prop_seg517 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %prop_seg517, align 4
  %phase_seg1515 = getelementptr i8, ptr %dev, i32 2388
  %61 = ptrtoint ptr %phase_seg1515 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %phase_seg1515, align 4
  %add518 = add i32 %60, %62
  %add551 = add i32 %add518, 33
  %mul555 = shl i32 %58, 8
  %shl556 = mul i32 %mul555, %add551
  %and557 = and i32 %shl556, 7936
  %or558 = or i32 %and495, %and557
  %or559 = or i32 %or558, -2147450880
  br label %do.body563

do.body563:                                       ; preds = %do.end545, %if.then506, %if.end474.do.body563_crit_edge
  %reg_fdctrl.0 = phi i32 [ %and507, %if.then506 ], [ %or559, %do.end545 ], [ %and495, %if.end474.do.body563_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @flexcan_set_bittiming_cbt.__UNIQUE_ID_ddebug562, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@flexcan_set_bittiming_cbt, %do.end582)) #8
          to label %if.then577 [label %do.end582], !srcloc !198

if.then577:                                       ; preds = %do.body563
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @flexcan_set_bittiming_cbt.__UNIQUE_ID_ddebug562, ptr noundef %dev, ptr noundef nonnull @.str.40, i32 noundef %reg_fdctrl.0) #8
  br label %do.end582

do.end582:                                        ; preds = %if.then577, %do.body563
  %63 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %write, align 4
  tail call void %64(i32 noundef %reg_fdctrl.0, ptr noundef %fdctrl) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @flexcan_set_bittiming_cbt.__UNIQUE_ID_ddebug563, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@flexcan_set_bittiming_cbt, %do.end620)) #8
          to label %if.then600 [label %do.end620], !srcloc !198

if.then600:                                       ; preds = %do.end582
  call void @__sanitizer_cov_trace_pc() #10
  %65 = ptrtoint ptr %read475 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %read475, align 8
  %call602 = tail call i32 %66(ptr noundef %1) #8
  %67 = ptrtoint ptr %read475 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %read475, align 8
  %ctrl = getelementptr inbounds %struct.flexcan_regs, ptr %1, i32 0, i32 1
  %call604 = tail call i32 %68(ptr noundef %ctrl) #8
  %69 = ptrtoint ptr %read475 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %read475, align 8
  %71 = getelementptr inbounds %struct.flexcan_regs, ptr %1, i32 0, i32 13
  %call606 = tail call i32 %70(ptr noundef %71) #8
  %72 = ptrtoint ptr %read475 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %read475, align 8
  %call609 = tail call i32 %73(ptr noundef %fdctrl) #8
  %74 = ptrtoint ptr %read475 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %read475, align 8
  %call612 = tail call i32 %75(ptr noundef %cbt) #8
  %76 = ptrtoint ptr %read475 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %read475, align 8
  %fdcbt614 = getelementptr inbounds %struct.flexcan_regs, ptr %1, i32 0, i32 36
  %call615 = tail call i32 %77(ptr noundef %fdcbt614) #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @flexcan_set_bittiming_cbt.__UNIQUE_ID_ddebug563, ptr noundef %dev, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.35, i32 noundef %call602, i32 noundef %call604, i32 noundef %call606, i32 noundef %call609, i32 noundef %call612, i32 noundef %call615) #8
  br label %do.end620

do.end620:                                        ; preds = %if.then600, %do.end582
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @flexcan_set_bittiming_ctrl(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %regs1 = getelementptr i8, ptr %dev, i32 2988
  %0 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs1, align 4
  %read = getelementptr i8, ptr %dev, i32 3064
  %2 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read, align 8
  %ctrl = getelementptr inbounds %struct.flexcan_regs, ptr %1, i32 0, i32 1
  %call2 = tail call i32 %3(ptr noundef %ctrl) #8
  %and = and i32 %call2, 65528
  %brp = getelementptr i8, ptr %dev, i32 2368
  %4 = ptrtoint ptr %brp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %brp, align 4
  %sub = shl i32 %5, 24
  %shl = add i32 %sub, -16777216
  %phase_seg1 = getelementptr i8, ptr %dev, i32 2356
  %6 = ptrtoint ptr %phase_seg1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %phase_seg1, align 4
  %sub4 = shl i32 %7, 19
  %and5 = add i32 %sub4, 3670016
  %shl6 = and i32 %and5, 3670016
  %or = or i32 %shl6, %shl
  %phase_seg2 = getelementptr i8, ptr %dev, i32 2360
  %8 = ptrtoint ptr %phase_seg2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %phase_seg2, align 4
  %sub7 = shl i32 %9, 16
  %and8 = add i32 %sub7, 458752
  %shl9 = and i32 %and8, 458752
  %or10 = or i32 %or, %shl9
  %sjw = getelementptr i8, ptr %dev, i32 2364
  %10 = ptrtoint ptr %sjw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sjw, align 4
  %sub11 = shl i32 %11, 22
  %and12 = add i32 %sub11, 12582912
  %shl13 = and i32 %and12, 12582912
  %or14 = or i32 %or10, %shl13
  %prop_seg = getelementptr i8, ptr %dev, i32 2352
  %12 = ptrtoint ptr %prop_seg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %prop_seg, align 4
  %sub15 = add i32 %13, 7
  %and16 = and i32 %sub15, 7
  %or17 = or i32 %or14, %and16
  %or18 = or i32 %or17, %and
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @flexcan_set_bittiming_ctrl.__UNIQUE_ID_ddebug472, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@flexcan_set_bittiming_ctrl, %do.end25)) #8
          to label %if.then [label %do.end25], !srcloc !198

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @flexcan_set_bittiming_ctrl.__UNIQUE_ID_ddebug472, ptr noundef %dev, ptr noundef nonnull @.str.34, i32 noundef %or18) #8
  br label %do.end25

do.end25:                                         ; preds = %if.then, %entry
  %write = getelementptr i8, ptr %dev, i32 3068
  %14 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write, align 4
  tail call void %15(i32 noundef %or18, ptr noundef %ctrl) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @flexcan_set_bittiming_ctrl.__UNIQUE_ID_ddebug473, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@flexcan_set_bittiming_ctrl, %do.end52)) #8
          to label %if.then42 [label %do.end52], !srcloc !198

if.then42:                                        ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %read, align 8
  %call44 = tail call i32 %17(ptr noundef %1) #8
  %18 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %read, align 8
  %call47 = tail call i32 %19(ptr noundef %ctrl) #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @flexcan_set_bittiming_ctrl.__UNIQUE_ID_ddebug473, ptr noundef %dev, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.42, i32 noundef %call44, i32 noundef %call47) #8
  br label %do.end52

do.end52:                                         ; preds = %if.then42, %do.end25
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @can_rx_offload_irq_offload_timestamp(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @can_rx_offload_irq_offload_fifo(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @can_rx_offload_get_echo_skb(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @flexcan_irq_bus_err(ptr noundef %dev, i32 noundef %reg_esr) unnamed_addr #2 align 64 {
entry:
  %cf = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %regs1 = getelementptr i8, ptr %dev, i32 2988
  %0 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cf) #8
  %2 = ptrtoint ptr %cf to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %cf, align 4, !annotation !197
  %read = getelementptr i8, ptr %dev, i32 3064
  %3 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %read, align 8
  %timer = getelementptr inbounds %struct.flexcan_regs, ptr %1, i32 0, i32 2
  %call2 = tail call i32 %4(ptr noundef %timer) #8
  %shl = shl i32 %call2, 16
  %call3 = call ptr @alloc_can_err_skb(ptr noundef %dev, ptr noundef nonnull %cf) #8
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !199

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cf, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 8
  %or = or i32 %8, 136
  store i32 %or, ptr %6, align 8
  %and = and i32 %reg_esr, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %if.end.if.end26_crit_edge, label %do.body9

if.end.if.end26_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

do.body9:                                         ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @flexcan_irq_bus_err.__UNIQUE_ID_ddebug462, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@flexcan_irq_bus_err, %do.end23)) #8
          to label %if.then20 [label %do.end23], !srcloc !198

if.then20:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @flexcan_irq_bus_err.__UNIQUE_ID_ddebug462, ptr noundef %dev, ptr noundef nonnull @.str.45) #8
  br label %do.end23

do.end23:                                         ; preds = %if.then20, %do.body9
  %9 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cf, align 4
  %arrayidx = getelementptr %struct.can_frame, ptr %10, i32 0, i32 5, i32 2
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx, align 2
  %13 = or i8 %12, 16
  store i8 %13, ptr %arrayidx, align 2
  br label %if.end26

if.end26:                                         ; preds = %do.end23, %if.end.if.end26_crit_edge
  %14 = xor i1 %tobool7.not, true
  %and27 = and i32 %reg_esr, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %if.end26.if.end56_crit_edge, label %do.body31

if.end26.if.end56_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end56

do.body31:                                        ; preds = %if.end26
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @flexcan_irq_bus_err.__UNIQUE_ID_ddebug463, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@flexcan_irq_bus_err, %do.end50)) #8
          to label %if.then45 [label %do.end50], !srcloc !198

if.then45:                                        ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @flexcan_irq_bus_err.__UNIQUE_ID_ddebug463, ptr noundef %dev, ptr noundef nonnull @.str.46) #8
  br label %do.end50

do.end50:                                         ; preds = %if.then45, %do.body31
  %15 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cf, align 4
  %arrayidx52 = getelementptr %struct.can_frame, ptr %16, i32 0, i32 5, i32 2
  %17 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx52, align 2
  %19 = or i8 %18, 8
  store i8 %19, ptr %arrayidx52, align 2
  br label %if.end56

if.end56:                                         ; preds = %do.end50, %if.end26.if.end56_crit_edge
  %tx_errors.1.off0 = phi i1 [ true, %do.end50 ], [ %14, %if.end26.if.end56_crit_edge ]
  %and57 = and i32 %reg_esr, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool58.not = icmp eq i32 %and57, 0
  br i1 %tobool58.not, label %if.end56.if.end85_crit_edge, label %do.body61

if.end56.if.end85_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end85

do.body61:                                        ; preds = %if.end56
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @flexcan_irq_bus_err.__UNIQUE_ID_ddebug464, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@flexcan_irq_bus_err, %do.end80)) #8
          to label %if.then75 [label %do.end80], !srcloc !198

if.then75:                                        ; preds = %do.body61
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @flexcan_irq_bus_err.__UNIQUE_ID_ddebug464, ptr noundef %dev, ptr noundef nonnull @.str.47) #8
  br label %do.end80

do.end80:                                         ; preds = %if.then75, %do.body61
  %20 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cf, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 8
  %or82 = or i32 %23, 32
  store i32 %or82, ptr %21, align 8
  %24 = load ptr, ptr %cf, align 4
  %arrayidx84 = getelementptr %struct.can_frame, ptr %24, i32 0, i32 5, i32 3
  %25 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 25, ptr %arrayidx84, align 1
  br label %if.end85

if.end85:                                         ; preds = %do.end80, %if.end56.if.end85_crit_edge
  %tx_errors.2.off0 = phi i1 [ true, %do.end80 ], [ %tx_errors.1.off0, %if.end56.if.end85_crit_edge ]
  %and86 = and i32 %reg_esr, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and86)
  %tobool87.not = icmp eq i32 %and86, 0
  br i1 %tobool87.not, label %if.end85.if.end117_crit_edge, label %do.body90

if.end85.if.end117_crit_edge:                     ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end117

do.body90:                                        ; preds = %if.end85
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @flexcan_irq_bus_err.__UNIQUE_ID_ddebug465, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@flexcan_irq_bus_err, %do.end109)) #8
          to label %if.then104 [label %do.end109], !srcloc !198

if.then104:                                       ; preds = %do.body90
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @flexcan_irq_bus_err.__UNIQUE_ID_ddebug465, ptr noundef %dev, ptr noundef nonnull @.str.48) #8
  br label %do.end109

do.end109:                                        ; preds = %if.then104, %do.body90
  %26 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cf, align 4
  %arrayidx111 = getelementptr %struct.can_frame, ptr %27, i32 0, i32 5, i32 2
  %28 = ptrtoint ptr %arrayidx111 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx111, align 2
  %30 = or i8 %29, 1
  store i8 %30, ptr %arrayidx111, align 2
  %31 = load ptr, ptr %cf, align 4
  %arrayidx116 = getelementptr %struct.can_frame, ptr %31, i32 0, i32 5, i32 3
  %32 = ptrtoint ptr %arrayidx116 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 8, ptr %arrayidx116, align 1
  br label %if.end117

if.end117:                                        ; preds = %do.end109, %if.end85.if.end117_crit_edge
  %and118 = and i32 %reg_esr, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and118)
  %tobool119.not = icmp eq i32 %and118, 0
  br i1 %tobool119.not, label %if.end147, label %do.body122

do.body122:                                       ; preds = %if.end117
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @flexcan_irq_bus_err.__UNIQUE_ID_ddebug466, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@flexcan_irq_bus_err, %if.end147.thread)) #8
          to label %if.then136 [label %if.end147.thread], !srcloc !198

if.then136:                                       ; preds = %do.body122
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @flexcan_irq_bus_err.__UNIQUE_ID_ddebug466, ptr noundef %dev, ptr noundef nonnull @.str.49) #8
  br label %if.end147.thread

if.end147:                                        ; preds = %if.end117
  %and148 = and i32 %reg_esr, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and148)
  %tobool149.not = icmp eq i32 %and148, 0
  br i1 %tobool149.not, label %if.end177, label %if.end147.do.body152_crit_edge

if.end147.do.body152_crit_edge:                   ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body152

if.end147.thread:                                 ; preds = %if.then136, %do.body122
  %33 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cf, align 4
  %arrayidx143 = getelementptr %struct.can_frame, ptr %34, i32 0, i32 5, i32 2
  %35 = ptrtoint ptr %arrayidx143 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx143, align 2
  %37 = or i8 %36, 2
  store i8 %37, ptr %arrayidx143, align 2
  %and148245 = and i32 %reg_esr, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and148245)
  %tobool149.not246 = icmp eq i32 %and148245, 0
  br i1 %tobool149.not246, label %if.end147.thread.if.then179.sink.split_crit_edge, label %if.end147.thread.do.body152_crit_edge

if.end147.thread.do.body152_crit_edge:            ; preds = %if.end147.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body152

if.end147.thread.if.then179.sink.split_crit_edge: ; preds = %if.end147.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then179.sink.split

do.body152:                                       ; preds = %if.end147.thread.do.body152_crit_edge, %if.end147.do.body152_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @flexcan_irq_bus_err.__UNIQUE_ID_ddebug467, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@flexcan_irq_bus_err, %do.end171)) #8
          to label %if.then166 [label %do.end171], !srcloc !198

if.then166:                                       ; preds = %do.body152
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @flexcan_irq_bus_err.__UNIQUE_ID_ddebug467, ptr noundef %dev, ptr noundef nonnull @.str.50) #8
  br label %do.end171

do.end171:                                        ; preds = %if.then166, %do.body152
  %38 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %cf, align 4
  %arrayidx173 = getelementptr %struct.can_frame, ptr %39, i32 0, i32 5, i32 2
  %40 = ptrtoint ptr %arrayidx173 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx173, align 2
  %42 = or i8 %41, 4
  store i8 %42, ptr %arrayidx173, align 2
  br label %if.then179.sink.split

if.end177:                                        ; preds = %if.end147
  %can_stats = getelementptr i8, ptr %dev, i32 2308
  %43 = ptrtoint ptr %can_stats to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %can_stats, align 4
  %inc = add i32 %44, 1
  store i32 %inc, ptr %can_stats, align 4
  br i1 %tobool87.not, label %if.end177.if.end182_crit_edge, label %if.end177.if.then179_crit_edge

if.end177.if.then179_crit_edge:                   ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then179

if.end177.if.end182_crit_edge:                    ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end182

if.then179.sink.split:                            ; preds = %do.end171, %if.end147.thread.if.then179.sink.split_crit_edge
  %can_stats.c = getelementptr i8, ptr %dev, i32 2308
  %45 = ptrtoint ptr %can_stats.c to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %can_stats.c, align 4
  %inc250 = add i32 %46, 1
  store i32 %inc250, ptr %can_stats.c, align 4
  br label %if.then179

if.then179:                                       ; preds = %if.then179.sink.split, %if.end177.if.then179_crit_edge
  %rx_errors180 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 4
  %47 = ptrtoint ptr %rx_errors180 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %rx_errors180, align 8
  %inc181 = add i32 %48, 1
  store i32 %inc181, ptr %rx_errors180, align 8
  br label %if.end182

if.end182:                                        ; preds = %if.then179, %if.end177.if.end182_crit_edge
  br i1 %tx_errors.2.off0, label %if.then184, label %if.end182.if.end188_crit_edge

if.end182.if.end188_crit_edge:                    ; preds = %if.end182
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end188

if.then184:                                       ; preds = %if.end182
  call void @__sanitizer_cov_trace_pc() #10
  %tx_errors186 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 5
  %49 = ptrtoint ptr %tx_errors186 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %tx_errors186, align 4
  %inc187 = add i32 %50, 1
  store i32 %inc187, ptr %tx_errors186, align 4
  br label %if.end188

if.end188:                                        ; preds = %if.then184, %if.end182.if.end188_crit_edge
  %offload = getelementptr i8, ptr %dev, i32 2616
  %call189 = call i32 @can_rx_offload_queue_sorted(ptr noundef %offload, ptr noundef nonnull %call3, i32 noundef %shl) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call189)
  %tobool190.not = icmp eq i32 %call189, 0
  br i1 %tobool190.not, label %if.end188.cleanup_crit_edge, label %if.then191

if.end188.cleanup_crit_edge:                      ; preds = %if.end188
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then191:                                       ; preds = %if.end188
  call void @__sanitizer_cov_trace_pc() #10
  %rx_fifo_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 14
  %51 = ptrtoint ptr %rx_fifo_errors to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %rx_fifo_errors, align 8
  %inc193 = add i32 %52, 1
  store i32 %inc193, ptr %rx_fifo_errors, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then191, %if.end188.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cf) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @can_rx_offload_irq_finish(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_can_err_skb(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @can_change_state(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @can_bus_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @can_rx_offload_queue_sorted(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__flexcan_chip_stop(ptr nocapture noundef %dev, i1 noundef zeroext %disable_on_error) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %regs1.i = getelementptr i8, ptr %dev, i32 2988
  %0 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs1.i, align 4
  %bittiming.i = getelementptr i8, ptr %dev, i32 2340
  %2 = ptrtoint ptr %bittiming.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bittiming.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %div.i = udiv i32 10000000, %3
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %timeout.0.i = phi i32 [ %div.i, %if.then.i ], [ 25, %entry.if.end.i_crit_edge ]
  %read.i = getelementptr i8, ptr %dev, i32 3064
  %4 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read.i, align 8
  %call.i = tail call i32 %5(ptr noundef %1) #8
  %or.i = or i32 %call.i, 1342177280
  %write.i = getelementptr i8, ptr %dev, i32 3068
  %6 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write.i, align 4
  tail call void %7(i32 noundef %or.i, ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout.0.i)
  %tobool4.not30.i = icmp eq i32 %timeout.0.i, 0
  br i1 %tobool4.not30.i, label %if.end.i.flexcan_chip_freeze.exit_crit_edge, label %if.end.i.land.rhs.i_crit_edge

if.end.i.land.rhs.i_crit_edge:                    ; preds = %if.end.i
  br label %land.rhs.i

if.end.i.flexcan_chip_freeze.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %flexcan_chip_freeze.exit

land.rhs.i:                                       ; preds = %while.body.i.land.rhs.i_crit_edge, %if.end.i.land.rhs.i_crit_edge
  %dec31.in.i = phi i32 [ %dec31.i, %while.body.i.land.rhs.i_crit_edge ], [ %timeout.0.i, %if.end.i.land.rhs.i_crit_edge ]
  %8 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read.i, align 8
  %call7.i = tail call i32 %9(ptr noundef %1) #8
  %and.i = and i32 %call7.i, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool8.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool8.not.i, label %while.body.i, label %land.rhs.i.flexcan_chip_freeze.exit_crit_edge

land.rhs.i.flexcan_chip_freeze.exit_crit_edge:    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %flexcan_chip_freeze.exit

while.body.i:                                     ; preds = %land.rhs.i
  %dec31.i = add nsw i32 %dec31.in.i, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 21474800) #8
  %tobool4.not.i = icmp eq i32 %dec31.i, 0
  br i1 %tobool4.not.i, label %while.body.i.flexcan_chip_freeze.exit_crit_edge, label %while.body.i.land.rhs.i_crit_edge

while.body.i.land.rhs.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs.i

while.body.i.flexcan_chip_freeze.exit_crit_edge:  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %flexcan_chip_freeze.exit

flexcan_chip_freeze.exit:                         ; preds = %while.body.i.flexcan_chip_freeze.exit_crit_edge, %land.rhs.i.flexcan_chip_freeze.exit_crit_edge, %if.end.i.flexcan_chip_freeze.exit_crit_edge
  %11 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %read.i, align 8
  %call11.i = tail call i32 %12(ptr noundef %1) #8
  %and12.i = and i32 %call11.i, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i)
  %tobool13.not.i = icmp ne i32 %and12.i, 0
  %brmerge = or i1 %tobool13.not.i, %disable_on_error
  br i1 %brmerge, label %if.end, label %flexcan_chip_freeze.exit.cleanup_crit_edge

flexcan_chip_freeze.exit.cleanup_crit_edge:       ; preds = %flexcan_chip_freeze.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %flexcan_chip_freeze.exit
  %13 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs1.i, align 4
  %15 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %read.i, align 8
  %call.i21 = tail call i32 %16(ptr noundef %14) #8
  %or.i22 = or i32 %call.i21, -2147483648
  %17 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %write.i, align 4
  tail call void %18(i32 noundef %or.i22, ptr noundef %14) #8
  %19 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs1.i, align 4
  br label %land.rhs.i.i

land.rhs.i.i:                                     ; preds = %while.body.i.i.land.rhs.i.i_crit_edge, %if.end
  %dec12.i.i = phi i32 [ 24, %if.end ], [ %dec.i.i, %while.body.i.i.land.rhs.i.i_crit_edge ]
  %21 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %read.i, align 8
  %call.i.i = tail call i32 %22(ptr noundef %20) #8
  %and.i.i = and i32 %call.i.i, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool2.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool2.not.i.i, label %while.body.i.i, label %land.rhs.i.i.flexcan_chip_disable.exit_crit_edge

land.rhs.i.i.flexcan_chip_disable.exit_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %flexcan_chip_disable.exit

while.body.i.i:                                   ; preds = %land.rhs.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 2147480) #8
  %dec.i.i = add nsw i32 %dec12.i.i, -1
  %tobool.not.i.i = icmp eq i32 %dec12.i.i, 0
  br i1 %tobool.not.i.i, label %while.body.i.i.flexcan_chip_disable.exit_crit_edge, label %while.body.i.i.land.rhs.i.i_crit_edge

while.body.i.i.land.rhs.i.i_crit_edge:            ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs.i.i

while.body.i.i.flexcan_chip_disable.exit_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %flexcan_chip_disable.exit

flexcan_chip_disable.exit:                        ; preds = %while.body.i.i.flexcan_chip_disable.exit_crit_edge, %land.rhs.i.i.flexcan_chip_disable.exit_crit_edge
  %24 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %read.i, align 8
  %call5.i.i = tail call i32 %25(ptr noundef %20) #8
  %and6.i.i = and i32 %call5.i.i, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i)
  %tobool7.not.i.i = icmp eq i32 %and6.i.i, 0
  %..i.i = select i1 %tobool7.not.i.i, i32 -110, i32 0
  %not.tobool7.not.i.i = xor i1 %tobool7.not.i.i, true
  %brmerge18 = or i1 %not.tobool7.not.i.i, %disable_on_error
  br i1 %brmerge18, label %if.end8, label %out_chip_unfreeze

if.end8:                                          ; preds = %flexcan_chip_disable.exit
  call void @__sanitizer_cov_trace_pc() #10
  %state = getelementptr i8, ptr %dev, i32 2472
  %26 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 4, ptr %state, align 8
  br label %cleanup

out_chip_unfreeze:                                ; preds = %flexcan_chip_disable.exit
  %27 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regs1.i, align 4
  %29 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %read.i, align 8
  %call.i26 = tail call i32 %30(ptr noundef %28) #8
  %and.i27 = and i32 %call.i26, -268435457
  %31 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %write.i, align 4
  tail call void %32(i32 noundef %and.i27, ptr noundef %28) #8
  br label %land.rhs.i29

land.rhs.i29:                                     ; preds = %while.body.i31.land.rhs.i29_crit_edge, %out_chip_unfreeze
  %dec23.i = phi i32 [ 24, %out_chip_unfreeze ], [ %dec.i, %while.body.i31.land.rhs.i29_crit_edge ]
  %33 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %read.i, align 8
  %call5.i = tail call i32 %34(ptr noundef %28) #8
  %and6.i = and i32 %call5.i, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp eq i32 %and6.i, 0
  br i1 %tobool7.not.i, label %land.rhs.i29.flexcan_chip_unfreeze.exit_crit_edge, label %while.body.i31

land.rhs.i29.flexcan_chip_unfreeze.exit_crit_edge: ; preds = %land.rhs.i29
  call void @__sanitizer_cov_trace_pc() #10
  br label %flexcan_chip_unfreeze.exit

while.body.i31:                                   ; preds = %land.rhs.i29
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %35(i32 noundef 2147480) #8
  %dec.i = add nsw i32 %dec23.i, -1
  %tobool.not.i30 = icmp eq i32 %dec23.i, 0
  br i1 %tobool.not.i30, label %while.body.i31.flexcan_chip_unfreeze.exit_crit_edge, label %while.body.i31.land.rhs.i29_crit_edge

while.body.i31.land.rhs.i29_crit_edge:            ; preds = %while.body.i31
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs.i29

while.body.i31.flexcan_chip_unfreeze.exit_crit_edge: ; preds = %while.body.i31
  call void @__sanitizer_cov_trace_pc() #10
  br label %flexcan_chip_unfreeze.exit

flexcan_chip_unfreeze.exit:                       ; preds = %while.body.i31.flexcan_chip_unfreeze.exit_crit_edge, %land.rhs.i29.flexcan_chip_unfreeze.exit_crit_edge
  %36 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %read.i, align 8
  %call10.i = tail call i32 %37(ptr noundef %28) #8
  br label %cleanup

cleanup:                                          ; preds = %flexcan_chip_unfreeze.exit, %if.end8, %flexcan_chip_freeze.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end8 ], [ %..i.i, %flexcan_chip_unfreeze.exit ], [ -110, %flexcan_chip_freeze.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @can_fd_len2dlc(i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @can_put_echo_skb(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @flexcan_clks_enable(ptr nocapture noundef readonly %priv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %clk_ipg = getelementptr inbounds %struct.flexcan_priv, ptr %priv, i32 0, i32 14
  %0 = ptrtoint ptr %clk_ipg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk_ipg, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.then:                                          ; preds = %entry
  %call.i = tail call i32 @clk_prepare(ptr noundef nonnull %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %if.then
  %call1.i = tail call i32 @clk_enable(ptr noundef nonnull %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end4_crit_edge, label %if.then3.i

if.end.i.if.end4_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef nonnull %1) #8
  br label %cleanup

if.end4:                                          ; preds = %if.end.i.if.end4_crit_edge, %entry.if.end4_crit_edge
  %clk_per = getelementptr inbounds %struct.flexcan_priv, ptr %priv, i32 0, i32 15
  %2 = ptrtoint ptr %clk_per to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk_per, align 8
  %tobool5.not = icmp eq ptr %3, null
  br i1 %tobool5.not, label %if.end4.cleanup_crit_edge, label %if.then6

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then6:                                         ; preds = %if.end4
  %call.i22 = tail call i32 @clk_prepare(ptr noundef nonnull %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i22)
  %tobool.not.i23 = icmp eq i32 %call.i22, 0
  br i1 %tobool.not.i23, label %if.end.i26, label %if.then6.if.then10_crit_edge

if.then6.if.then10_crit_edge:                     ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then10

if.end.i26:                                       ; preds = %if.then6
  %call1.i24 = tail call i32 @clk_enable(ptr noundef nonnull %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i24)
  %tobool2.not.i25 = icmp eq i32 %call1.i24, 0
  br i1 %tobool2.not.i25, label %if.end.i26.cleanup_crit_edge, label %if.then3.i27

if.end.i26.cleanup_crit_edge:                     ; preds = %if.end.i26
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then3.i27:                                     ; preds = %if.end.i26
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef nonnull %3) #8
  br label %if.then10

if.then10:                                        ; preds = %if.then3.i27, %if.then6.if.then10_crit_edge
  %retval.0.i28.ph = phi i32 [ %call1.i24, %if.then3.i27 ], [ %call.i22, %if.then6.if.then10_crit_edge ]
  %4 = ptrtoint ptr %clk_ipg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk_ipg, align 4
  tail call void @clk_disable(ptr noundef %5) #8
  tail call void @clk_unprepare(ptr noundef %5) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then10, %if.end.i26.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.then3.i, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i28.ph, %if.then10 ], [ 0, %if.end4.cleanup_crit_edge ], [ 0, %if.end.i26.cleanup_crit_edge ], [ %call1.i, %if.then3.i ], [ %call.i, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_candev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @flexcan_setup_stop_mode_gpr(ptr noundef %pdev) unnamed_addr #2 align 64 {
entry:
  %out_val = alloca [3 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %out_val) #8
  %4 = ptrtoint ptr %out_val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %out_val, align 4, !annotation !197
  %5 = getelementptr inbounds [3 x i32], ptr %out_val, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %5, align 4, !annotation !197
  %7 = getelementptr inbounds [3 x i32], ptr %out_val, i32 0, i32 2
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %7, align 4, !annotation !197
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %3, ptr noundef nonnull @.str.57, ptr noundef nonnull %out_val, i32 noundef 3, i32 noundef 0) #8
  %9 = call i32 @llvm.smin.i32(i32 %call.i, i32 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %tobool3.not = icmp sgt i32 %call.i, -1
  br i1 %tobool3.not, label %if.end13, label %do.body

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @flexcan_setup_stop_mode_gpr.__UNIQUE_ID_ddebug599, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@flexcan_setup_stop_mode_gpr, %cleanup)) #8
          to label %if.then10 [label %cleanup], !srcloc !198

if.then10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @flexcan_setup_stop_mode_gpr.__UNIQUE_ID_ddebug599, ptr noundef %dev1, ptr noundef nonnull @.str.59) #8
  br label %cleanup

if.end13:                                         ; preds = %if.end
  %10 = ptrtoint ptr %out_val to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %out_val, align 4
  %call15 = call ptr @of_find_node_by_phandle(i32 noundef %11) #8
  %tobool16.not = icmp eq ptr %call15, null
  br i1 %tobool16.not, label %do.body18, label %if.end37

do.body18:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @flexcan_setup_stop_mode_gpr.__UNIQUE_ID_ddebug600, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@flexcan_setup_stop_mode_gpr, %cleanup)) #8
          to label %if.then32 [label %cleanup], !srcloc !198

if.then32:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @flexcan_setup_stop_mode_gpr.__UNIQUE_ID_ddebug600, ptr noundef %dev1, ptr noundef nonnull @.str.60) #8
  br label %cleanup

if.end37:                                         ; preds = %if.end13
  %call39 = call ptr @syscon_node_to_regmap(ptr noundef nonnull %call15) #8
  %stm = getelementptr i8, ptr %1, i32 3044
  %12 = ptrtoint ptr %stm to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call39, ptr %stm, align 4
  %cmp.i = icmp ugt ptr %call39, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.body44, label %if.end66

do.body44:                                        ; preds = %if.end37
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @flexcan_setup_stop_mode_gpr.__UNIQUE_ID_ddebug601, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@flexcan_setup_stop_mode_gpr, %do.end62)) #8
          to label %if.then58 [label %do.end62], !srcloc !198

if.then58:                                        ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @flexcan_setup_stop_mode_gpr.__UNIQUE_ID_ddebug601, ptr noundef %dev1, ptr noundef nonnull @.str.61) #8
  br label %do.end62

do.end62:                                         ; preds = %if.then58, %do.body44
  %13 = ptrtoint ptr %stm to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %stm, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @of_node_put(ptr noundef nonnull %call15) #8
  br label %cleanup

if.end66:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %5, align 4
  %conv = trunc i32 %17 to i8
  %req_gpr = getelementptr i8, ptr %1, i32 3048
  %18 = ptrtoint ptr %req_gpr to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv, ptr %req_gpr, align 4
  %19 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %7, align 4
  %conv69 = trunc i32 %20 to i8
  %req_bit = getelementptr i8, ptr %1, i32 3049
  %21 = ptrtoint ptr %req_bit to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv69, ptr %req_bit, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @flexcan_setup_stop_mode_gpr.__UNIQUE_ID_ddebug602, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@flexcan_setup_stop_mode_gpr, %cleanup)) #8
          to label %if.then85 [label %cleanup], !srcloc !198

if.then85:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #10
  %full_name = getelementptr inbounds %struct.device_node, ptr %call15, i32 0, i32 2
  %22 = ptrtoint ptr %full_name to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %full_name, align 4
  %24 = ptrtoint ptr %req_gpr to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %req_gpr, align 4
  %conv89 = zext i8 %25 to i32
  %26 = ptrtoint ptr %req_bit to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %req_bit, align 1
  %conv92 = zext i8 %27 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @flexcan_setup_stop_mode_gpr.__UNIQUE_ID_ddebug602, ptr noundef %dev1, ptr noundef nonnull @.str.62, ptr noundef %23, i32 noundef %conv89, i32 noundef %conv92) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then85, %if.end66, %do.end62, %if.then32, %do.body18, %if.then10, %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %15, %do.end62 ], [ -22, %entry.cleanup_crit_edge ], [ %9, %if.then10 ], [ -19, %if.then32 ], [ 0, %if.then85 ], [ %9, %do.body ], [ -19, %do.body18 ], [ 0, %if.end66 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %out_val) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_set_wakeup_capable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_set_wakeup_enable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @imx_scu_get_handle(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_node_by_phandle(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_node_to_regmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_candev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @flexcan_suspend(ptr noundef %device) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %device, i32 0, i32 8
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
  br i1 %tobool.i.not, label %entry.if.end17_crit_edge, label %if.then

entry.if.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

if.then:                                          ; preds = %entry
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %device, i32 0, i32 12, i32 1
  %4 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %if.then.if.else_crit_edge, label %device_may_wakeup.exit

if.then.if.else_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

device_may_wakeup.exit:                           ; preds = %if.then
  %wakeup.i = getelementptr inbounds %struct.device, ptr %device, i32 0, i32 12, i32 6
  %5 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %6, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.else_crit_edge, label %if.then4

device_may_wakeup.exit.if.else_crit_edge:         ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.then4:                                         ; preds = %device_may_wakeup.exit
  %irq = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 64
  %7 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %8, i32 noundef 1) #8
  %regs1.i = getelementptr i8, ptr %1, i32 2988
  %9 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs1.i, align 4
  %read.i = getelementptr i8, ptr %1, i32 3064
  %11 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %read.i, align 8
  %call.i34 = tail call i32 %12(ptr noundef %10) #8
  %or.i = or i32 %call.i34, 4194304
  %write.i = getelementptr i8, ptr %1, i32 3068
  %13 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %write.i, align 4
  tail call void %14(i32 noundef %or.i, ptr noundef %10) #8
  %devtype_data.i = getelementptr i8, ptr %1, i32 3036
  %15 = ptrtoint ptr %devtype_data.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %devtype_data.i, align 4
  %and.i = and i32 %16, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i35 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i35, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then4
  %scu_idx.i.i = getelementptr i8, ptr %1, i32 3004
  %17 = ptrtoint ptr %scu_idx.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %scu_idx.i.i, align 4
  %conv.i.i = zext i8 %18 to i32
  %add.i.i = add nuw nsw i32 %conv.i.i, 105
  %sc_ipc_handle.i.i = getelementptr i8, ptr %1, i32 3060
  %19 = ptrtoint ptr %sc_ipc_handle.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sc_ipc_handle.i.i, align 4
  %call.i.i = tail call i32 @imx_sc_misc_set_control(ptr noundef %20, i32 noundef %add.i.i, i8 noundef zeroext 52, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %if.then.i.cleanup_crit_edge, label %if.then.i.if.end13.i_crit_edge

if.then.i.if.end13.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else.i:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  %stm.i = getelementptr i8, ptr %1, i32 3044
  %21 = ptrtoint ptr %stm.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %stm.i, align 4
  %req_gpr.i = getelementptr i8, ptr %1, i32 3048
  %23 = ptrtoint ptr %req_gpr.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %req_gpr.i, align 4
  %conv.i = zext i8 %24 to i32
  %req_bit.i = getelementptr i8, ptr %1, i32 3049
  %25 = ptrtoint ptr %req_bit.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %req_bit.i, align 1
  %conv7.i = zext i8 %26 to i32
  %shl.i = shl nuw i32 1, %conv7.i
  %call.i29.i = tail call i32 @regmap_update_bits_base(ptr noundef %22, i32 noundef %conv.i, i32 noundef %shl.i, i32 noundef %shl.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.else.i, %if.then.i.if.end13.i_crit_edge
  %27 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regs1.i, align 4
  br label %land.rhs.i.i

land.rhs.i.i:                                     ; preds = %while.body.i.i.land.rhs.i.i_crit_edge, %if.end13.i
  %dec12.i.i = phi i32 [ 24, %if.end13.i ], [ %dec.i.i, %while.body.i.i.land.rhs.i.i_crit_edge ]
  %29 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %read.i, align 8
  %call.i30.i = tail call i32 %30(ptr noundef %28) #8
  %and.i.i = and i32 %call.i30.i, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool2.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool2.not.i.i, label %while.body.i.i, label %land.rhs.i.i.flexcan_low_power_enter_ack.exit.i_crit_edge

land.rhs.i.i.flexcan_low_power_enter_ack.exit.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %flexcan_low_power_enter_ack.exit.i

while.body.i.i:                                   ; preds = %land.rhs.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %31(i32 noundef 2147480) #8
  %dec.i.i = add nsw i32 %dec12.i.i, -1
  %tobool.not.i.i = icmp eq i32 %dec12.i.i, 0
  br i1 %tobool.not.i.i, label %while.body.i.i.flexcan_low_power_enter_ack.exit.i_crit_edge, label %while.body.i.i.land.rhs.i.i_crit_edge

while.body.i.i.land.rhs.i.i_crit_edge:            ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs.i.i

while.body.i.i.flexcan_low_power_enter_ack.exit.i_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %flexcan_low_power_enter_ack.exit.i

flexcan_low_power_enter_ack.exit.i:               ; preds = %while.body.i.i.flexcan_low_power_enter_ack.exit.i_crit_edge, %land.rhs.i.i.flexcan_low_power_enter_ack.exit.i_crit_edge
  %32 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %read.i, align 8
  %call5.i.i = tail call i32 %33(ptr noundef %28) #8
  %and6.i.i = and i32 %call5.i.i, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i)
  %tobool7.not.i.i = icmp eq i32 %and6.i.i, 0
  br i1 %tobool7.not.i.i, label %flexcan_low_power_enter_ack.exit.i.cleanup_crit_edge, label %flexcan_low_power_enter_ack.exit.i.if.end16_crit_edge

flexcan_low_power_enter_ack.exit.i.if.end16_crit_edge: ; preds = %flexcan_low_power_enter_ack.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

flexcan_low_power_enter_ack.exit.i.cleanup_crit_edge: ; preds = %flexcan_low_power_enter_ack.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else:                                          ; preds = %device_may_wakeup.exit.if.else_crit_edge, %if.then.if.else_crit_edge
  %call.i36 = tail call fastcc i32 @__flexcan_chip_stop(ptr noundef %1, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i36)
  %tobool9.not = icmp eq i32 %call.i36, 0
  br i1 %tobool9.not, label %if.end11, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end11:                                         ; preds = %if.else
  %regs1.i37 = getelementptr i8, ptr %1, i32 2988
  %34 = ptrtoint ptr %regs1.i37 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regs1.i37, align 4
  %write.i38 = getelementptr i8, ptr %1, i32 3068
  %36 = ptrtoint ptr %write.i38 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %write.i38, align 4
  %imask2.i = getelementptr inbounds %struct.flexcan_regs, ptr %35, i32 0, i32 9
  tail call void %37(i32 noundef 0, ptr noundef %imask2.i) #8
  %38 = ptrtoint ptr %write.i38 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %write.i38, align 4
  %imask1.i = getelementptr inbounds %struct.flexcan_regs, ptr %35, i32 0, i32 10
  tail call void %39(i32 noundef 0, ptr noundef %imask1.i) #8
  %40 = ptrtoint ptr %write.i38 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %write.i38, align 4
  %reg_ctrl_default.i = getelementptr i8, ptr %1, i32 3024
  %42 = ptrtoint ptr %reg_ctrl_default.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %reg_ctrl_default.i, align 8
  %and.i39 = and i32 %43, -52225
  %ctrl.i = getelementptr inbounds %struct.flexcan_regs, ptr %35, i32 0, i32 1
  tail call void %41(i32 noundef %and.i39, ptr noundef %ctrl.i) #8
  %call12 = tail call i32 @pinctrl_pm_select_sleep_state(ptr noundef %device) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end11.if.end16_crit_edge, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end11.if.end16_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.end16:                                         ; preds = %if.end11.if.end16_crit_edge, %flexcan_low_power_enter_ack.exit.i.if.end16_crit_edge
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 103
  %44 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %45, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #8
  tail call void @netif_device_detach(ptr noundef %1) #8
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %entry.if.end17_crit_edge
  %state = getelementptr i8, ptr %1, i32 2472
  %46 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 5, ptr %state, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.end11.cleanup_crit_edge, %if.else.cleanup_crit_edge, %flexcan_low_power_enter_ack.exit.i.cleanup_crit_edge, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end17 ], [ %call.i36, %if.else.cleanup_crit_edge ], [ %call12, %if.end11.cleanup_crit_edge ], [ %call.i.i, %if.then.i.cleanup_crit_edge ], [ -110, %flexcan_low_power_enter_ack.exit.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @flexcan_resume(ptr noundef %device) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %device, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %state = getelementptr i8, ptr %1, i32 2472
  %2 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %state, align 8
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %3 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then:                                          ; preds = %entry
  tail call void @netif_device_attach(ptr noundef %1) #8
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 103
  %5 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %6, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #8
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %device, i32 0, i32 12, i32 1
  %7 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %if.then.if.else_crit_edge, label %device_may_wakeup.exit

if.then.if.else_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

device_may_wakeup.exit:                           ; preds = %if.then
  %wakeup.i = getelementptr inbounds %struct.device, ptr %device, i32 0, i32 12, i32 6
  %8 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %9, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.else_crit_edge, label %if.then4

device_may_wakeup.exit.if.else_crit_edge:         ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.then4:                                         ; preds = %device_may_wakeup.exit
  %irq = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 64
  %10 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %11, i32 noundef 0) #8
  %regs1.i = getelementptr i8, ptr %1, i32 2988
  %12 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs1.i, align 4
  %devtype_data.i = getelementptr i8, ptr %1, i32 3036
  %14 = ptrtoint ptr %devtype_data.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %devtype_data.i, align 4
  %and.i = and i32 %15, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i34 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i34, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then4
  %scu_idx.i.i = getelementptr i8, ptr %1, i32 3004
  %16 = ptrtoint ptr %scu_idx.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %scu_idx.i.i, align 4
  %conv.i.i = zext i8 %17 to i32
  %add.i.i = add nuw nsw i32 %conv.i.i, 105
  %sc_ipc_handle.i.i = getelementptr i8, ptr %1, i32 3060
  %18 = ptrtoint ptr %sc_ipc_handle.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sc_ipc_handle.i.i, align 4
  %call.i.i = tail call i32 @imx_sc_misc_set_control(ptr noundef %19, i32 noundef %add.i.i, i8 noundef zeroext 52, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %if.then.i.flexcan_exit_stop_mode.exit.thread_crit_edge, label %if.then.i.if.end7.i_crit_edge

if.then.i.if.end7.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7.i

if.then.i.flexcan_exit_stop_mode.exit.thread_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %flexcan_exit_stop_mode.exit.thread

if.else.i:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  %stm.i = getelementptr i8, ptr %1, i32 3044
  %20 = ptrtoint ptr %stm.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %stm.i, align 4
  %req_gpr.i = getelementptr i8, ptr %1, i32 3048
  %22 = ptrtoint ptr %req_gpr.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %req_gpr.i, align 4
  %conv.i = zext i8 %23 to i32
  %req_bit.i = getelementptr i8, ptr %1, i32 3049
  %24 = ptrtoint ptr %req_bit.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %req_bit.i, align 1
  %conv5.i = zext i8 %25 to i32
  %shl.i = shl nuw i32 1, %conv5.i
  %call.i25.i = tail call i32 @regmap_update_bits_base(ptr noundef %21, i32 noundef %conv.i, i32 noundef %shl.i, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.else.i, %if.then.i.if.end7.i_crit_edge
  %read.i = getelementptr i8, ptr %1, i32 3064
  %26 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %read.i, align 8
  %call8.i = tail call i32 %27(ptr noundef %13) #8
  %and9.i = and i32 %call8.i, -4194305
  %write.i = getelementptr i8, ptr %1, i32 3068
  %28 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %write.i, align 4
  tail call void %29(i32 noundef %and9.i, ptr noundef %13) #8
  %30 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regs1.i, align 4
  br label %land.rhs.i.i

land.rhs.i.i:                                     ; preds = %while.body.i.i.land.rhs.i.i_crit_edge, %if.end7.i
  %dec12.i.i = phi i32 [ 24, %if.end7.i ], [ %dec.i.i, %while.body.i.i.land.rhs.i.i_crit_edge ]
  %32 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %read.i, align 8
  %call.i26.i = tail call i32 %33(ptr noundef %31) #8
  %and.i.i = and i32 %call.i26.i, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool2.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool2.not.i.i, label %land.rhs.i.i.flexcan_low_power_exit_ack.exit.i_crit_edge, label %while.body.i.i

land.rhs.i.i.flexcan_low_power_exit_ack.exit.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %flexcan_low_power_exit_ack.exit.i

while.body.i.i:                                   ; preds = %land.rhs.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %34(i32 noundef 2147480) #8
  %dec.i.i = add nsw i32 %dec12.i.i, -1
  %tobool.not.i.i = icmp eq i32 %dec12.i.i, 0
  br i1 %tobool.not.i.i, label %while.body.i.i.flexcan_low_power_exit_ack.exit.i_crit_edge, label %while.body.i.i.land.rhs.i.i_crit_edge

while.body.i.i.land.rhs.i.i_crit_edge:            ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs.i.i

while.body.i.i.flexcan_low_power_exit_ack.exit.i_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %flexcan_low_power_exit_ack.exit.i

flexcan_low_power_exit_ack.exit.i:                ; preds = %while.body.i.i.flexcan_low_power_exit_ack.exit.i_crit_edge, %land.rhs.i.i.flexcan_low_power_exit_ack.exit.i_crit_edge
  %35 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %read.i, align 8
  %call5.i.i = tail call i32 %36(ptr noundef %31) #8
  %and6.i.i = and i32 %call5.i.i, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i)
  %tobool7.not.i.i = icmp eq i32 %and6.i.i, 0
  br i1 %tobool7.not.i.i, label %flexcan_low_power_exit_ack.exit.i.cleanup_crit_edge, label %flexcan_low_power_exit_ack.exit.i.flexcan_exit_stop_mode.exit.thread_crit_edge

flexcan_low_power_exit_ack.exit.i.flexcan_exit_stop_mode.exit.thread_crit_edge: ; preds = %flexcan_low_power_exit_ack.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %flexcan_exit_stop_mode.exit.thread

flexcan_low_power_exit_ack.exit.i.cleanup_crit_edge: ; preds = %flexcan_low_power_exit_ack.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

flexcan_exit_stop_mode.exit.thread:               ; preds = %flexcan_low_power_exit_ack.exit.i.flexcan_exit_stop_mode.exit.thread_crit_edge, %if.then.i.flexcan_exit_stop_mode.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call.i.i, %if.then.i.flexcan_exit_stop_mode.exit.thread_crit_edge ], [ -110, %flexcan_low_power_exit_ack.exit.i.flexcan_exit_stop_mode.exit.thread_crit_edge ]
  br label %cleanup

if.else:                                          ; preds = %device_may_wakeup.exit.if.else_crit_edge, %if.then.if.else_crit_edge
  %call8 = tail call i32 @pinctrl_pm_select_default_state(ptr noundef %device) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end11:                                         ; preds = %if.else
  %call12 = tail call fastcc i32 @flexcan_chip_start(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end15:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %regs1.i35 = getelementptr i8, ptr %1, i32 2988
  %37 = ptrtoint ptr %regs1.i35 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regs1.i35, align 4
  %irq.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 64
  %39 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %irq.i, align 4
  tail call void @disable_irq(i32 noundef %40) #8
  %write.i36 = getelementptr i8, ptr %1, i32 3068
  %41 = ptrtoint ptr %write.i36 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %write.i36, align 4
  %reg_ctrl_default.i = getelementptr i8, ptr %1, i32 3024
  %43 = ptrtoint ptr %reg_ctrl_default.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %reg_ctrl_default.i, align 8
  %ctrl.i = getelementptr inbounds %struct.flexcan_regs, ptr %38, i32 0, i32 1
  tail call void %42(i32 noundef %44, ptr noundef %ctrl.i) #8
  %rx_mask.i = getelementptr i8, ptr %1, i32 3008
  %45 = ptrtoint ptr %rx_mask.i to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %rx_mask.i, align 8
  %tx_mask.i = getelementptr i8, ptr %1, i32 3016
  %47 = ptrtoint ptr %tx_mask.i to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %tx_mask.i, align 8
  %or.i = or i64 %48, %46
  %49 = ptrtoint ptr %write.i36 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %write.i36, align 4
  %shr.i = lshr i64 %or.i, 32
  %conv.i37 = trunc i64 %shr.i to i32
  %imask2.i = getelementptr inbounds %struct.flexcan_regs, ptr %38, i32 0, i32 9
  tail call void %50(i32 noundef %conv.i37, ptr noundef %imask2.i) #8
  %51 = ptrtoint ptr %write.i36 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %write.i36, align 4
  %conv5.i38 = trunc i64 %or.i to i32
  %imask1.i = getelementptr inbounds %struct.flexcan_regs, ptr %38, i32 0, i32 10
  tail call void %52(i32 noundef %conv5.i38, ptr noundef %imask1.i) #8
  %53 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %irq.i, align 4
  tail call void @enable_irq(i32 noundef %54) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.end11.cleanup_crit_edge, %if.else.cleanup_crit_edge, %flexcan_exit_stop_mode.exit.thread, %flexcan_low_power_exit_ack.exit.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %if.else.cleanup_crit_edge ], [ %call12, %if.end11.cleanup_crit_edge ], [ %retval.0.i.ph, %flexcan_exit_stop_mode.exit.thread ], [ 0, %flexcan_low_power_exit_ack.exit.i.cleanup_crit_edge ], [ 0, %if.end15 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @flexcan_noirq_suspend(ptr noundef %device) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %device, i32 0, i32 8
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
  br i1 %tobool.i.not, label %entry.if.end8_crit_edge, label %if.then

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then:                                          ; preds = %entry
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %device, i32 0, i32 12, i32 1
  %4 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %device_may_wakeup.exit

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

device_may_wakeup.exit:                           ; preds = %if.then
  %wakeup.i = getelementptr inbounds %struct.device, ptr %device, i32 0, i32 12, i32 6
  %5 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %6, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.end_crit_edge, label %if.then4

device_may_wakeup.exit.if.end_crit_edge:          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then4:                                         ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #10
  %regs1.i = getelementptr i8, ptr %1, i32 2988
  %7 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs1.i, align 4
  %read.i = getelementptr i8, ptr %1, i32 3064
  %9 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %read.i, align 8
  %call.i = tail call i32 %10(ptr noundef %8) #8
  %reg_mcr.0.i = or i32 %call.i, 67108864
  %write.i = getelementptr i8, ptr %1, i32 3068
  %11 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %write.i, align 4
  tail call void %12(i32 noundef %reg_mcr.0.i, ptr noundef %8) #8
  br label %if.end

if.end:                                           ; preds = %if.then4, %device_may_wakeup.exit.if.end_crit_edge, %if.then.if.end_crit_edge
  %call5 = tail call i32 @pm_runtime_force_suspend(ptr noundef %device) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.end.if.end8_crit_edge, label %if.end.cleanup9_crit_edge

if.end.cleanup9_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup9

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.end8:                                          ; preds = %if.end.if.end8_crit_edge, %entry.if.end8_crit_edge
  br label %cleanup9

cleanup9:                                         ; preds = %if.end8, %if.end.cleanup9_crit_edge
  %retval.1 = phi i32 [ 0, %if.end8 ], [ %call5, %if.end.cleanup9_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @flexcan_noirq_resume(ptr noundef %device) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %device, i32 0, i32 8
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
  br i1 %tobool.i.not, label %entry.cleanup9_crit_edge, label %if.then

entry.cleanup9_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup9

if.then:                                          ; preds = %entry
  %call3 = tail call i32 @pm_runtime_force_resume(ptr noundef %device) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %if.then.cleanup9_crit_edge

if.then.cleanup9_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup9

if.end:                                           ; preds = %if.then
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %device, i32 0, i32 12, i32 1
  %4 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %if.end.cleanup9_crit_edge, label %device_may_wakeup.exit

if.end.cleanup9_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup9

device_may_wakeup.exit:                           ; preds = %if.end
  %wakeup.i = getelementptr inbounds %struct.device, ptr %device, i32 0, i32 12, i32 6
  %5 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %6, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.cleanup9_crit_edge, label %if.then6

device_may_wakeup.exit.cleanup9_crit_edge:        ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup9

if.then6:                                         ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #10
  %regs1.i = getelementptr i8, ptr %1, i32 2988
  %7 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs1.i, align 4
  %read.i = getelementptr i8, ptr %1, i32 3064
  %9 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %read.i, align 8
  %call.i = tail call i32 %10(ptr noundef %8) #8
  %and.i = and i32 %call.i, -67108865
  %write.i = getelementptr i8, ptr %1, i32 3068
  %11 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %write.i, align 4
  tail call void %12(i32 noundef %and.i, ptr noundef %8) #8
  br label %cleanup9

cleanup9:                                         ; preds = %if.then6, %device_may_wakeup.exit.cleanup9_crit_edge, %if.end.cleanup9_crit_edge, %if.then.cleanup9_crit_edge, %entry.cleanup9_crit_edge
  %retval.1 = phi i32 [ 0, %if.then6 ], [ 0, %entry.cleanup9_crit_edge ], [ %call3, %if.then.cleanup9_crit_edge ], [ 0, %device_may_wakeup.exit.cleanup9_crit_edge ], [ 0, %if.end.cleanup9_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @flexcan_runtime_suspend(ptr nocapture noundef readonly %device) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %device, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %clk_per.i = getelementptr i8, ptr %1, i32 3032
  %2 = ptrtoint ptr %clk_per.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk_per.i, align 8
  tail call void @clk_disable(ptr noundef %3) #8
  tail call void @clk_unprepare(ptr noundef %3) #8
  %clk_ipg.i = getelementptr i8, ptr %1, i32 3028
  %4 = ptrtoint ptr %clk_ipg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk_ipg.i, align 4
  tail call void @clk_disable(ptr noundef %5) #8
  tail call void @clk_unprepare(ptr noundef %5) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @flexcan_runtime_resume(ptr nocapture noundef readonly %device) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %device, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  %call2 = tail call fastcc i32 @flexcan_clks_enable(ptr noundef %add.ptr.i)
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_sleep_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @imx_sc_misc_set_control(ptr noundef, i32 noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_attach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_default_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 77)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 77)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !18, !20, !22, !24, !25, !26, !27, !28, !29, !30, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !48, !49, !50, !52, !53, !54, !56, !58, !60, !61, !62, !64, !65, !67, !68, !70, !71, !73, !74, !75, !77, !78, !79, !81, !83, !84, !86, !87, !89, !90, !92, !93, !95, !96, !98, !99, !101, !102, !103, !105, !106, !108, !109, !111, !112, !114, !115, !117, !118, !120, !121, !123, !125, !127, !129, !131, !133, !135, !136, !137, !139, !141, !142, !143, !145, !146, !148, !149, !151, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176}
!llvm.module.flags = !{!178, !179, !180, !181, !182, !183, !184, !185}
!llvm.ident = !{!186}

!0 = !{ptr @__initcall__kmod_flexcan__604_2361_flexcan_driver_init6, !1, !"__initcall__kmod_flexcan__604_2361_flexcan_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/can/flexcan/flexcan-core.c", i32 2361, i32 1}
!2 = !{ptr @__exitcall_flexcan_driver_exit, !1, !"__exitcall_flexcan_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author605, !4, !"__UNIQUE_ID_author605", i1 false, i1 false}
!4 = !{!"../drivers/net/can/flexcan/flexcan-core.c", i32 2363, i32 1}
!5 = !{ptr @__UNIQUE_ID_file606, !6, !"__UNIQUE_ID_file606", i1 false, i1 false}
!6 = !{!"../drivers/net/can/flexcan/flexcan-core.c", i32 2365, i32 1}
!7 = !{ptr @__UNIQUE_ID_license607, !6, !"__UNIQUE_ID_license607", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_description608, !9, !"__UNIQUE_ID_description608", i1 false, i1 false}
!9 = !{!"../drivers/net/can/flexcan/flexcan-core.c", i32 2366, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/can/flexcan/flexcan-core.c", i32 2352, i32 11}
!12 = !{ptr @flexcan_driver, !13, !"flexcan_driver", i1 false, i1 false}
!13 = !{!"../drivers/net/can/flexcan/flexcan-core.c", i32 2350, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/can/flexcan/flexcan-core.c", i32 2042, i32 56}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/can/flexcan/flexcan-core.c", i32 2052, i32 10}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/can/flexcan/flexcan-core.c", i32 2054, i32 9}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/can/flexcan/flexcan-core.c", i32 2064, i32 38}
!22 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/can/flexcan/flexcan-core.c", i32 2066, i32 4}
!24 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @flexcan_probe._entry, !23, !"_entry", i1 false, i1 false}
!29 = !{ptr @flexcan_probe._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/can/flexcan/flexcan-core.c", i32 2070, i32 38}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/can/flexcan/flexcan-core.c", i32 2072, i32 4}
!34 = !{ptr @flexcan_probe._entry.11, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @flexcan_probe._entry_ptr.13, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/can/flexcan/flexcan-core.c", i32 2104, i32 3}
!38 = !{ptr @flexcan_probe._entry.14, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @flexcan_probe._entry_ptr.16, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/can/flexcan/flexcan-core.c", i32 2112, i32 3}
!42 = !{ptr @flexcan_probe._entry.17, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @flexcan_probe._entry_ptr.19, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/can/flexcan/flexcan-core.c", i32 2133, i32 47}
!46 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/can/flexcan/flexcan-core.c", i32 2184, i32 3}
!48 = !{ptr @flexcan_probe._entry.21, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @flexcan_probe._entry_ptr.23, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/can/flexcan/flexcan-core.c", i32 2191, i32 4}
!52 = !{ptr @flexcan_probe._entry.24, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @flexcan_probe._entry_ptr.26, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @flexcan_netdev_ops, !55, !"flexcan_netdev_ops", i1 false, i1 false}
!55 = !{!"../drivers/net/can/flexcan/flexcan-core.c", i32 1819, i32 36}
!56 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/can/flexcan/flexcan-core.c", i32 1699, i32 19}
!58 = !{ptr @.str.28, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/can/flexcan/flexcan-core.c", i32 1495, i32 2}
!60 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @flexcan_chip_start.__UNIQUE_ID_ddebug565, !59, !"__UNIQUE_ID_ddebug565", i1 false, i1 false}
!62 = !{ptr @.str.30, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/can/flexcan/flexcan-core.c", i32 1528, i32 2}
!64 = !{ptr @flexcan_chip_start.__UNIQUE_ID_ddebug566, !63, !"__UNIQUE_ID_ddebug566", i1 false, i1 false}
!65 = !{ptr @.str.31, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/can/flexcan/flexcan-core.c", i32 1558, i32 3}
!67 = !{ptr @flexcan_chip_start.__UNIQUE_ID_ddebug597, !66, !"__UNIQUE_ID_ddebug597", i1 false, i1 false}
!68 = !{ptr @.str.32, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/can/flexcan/flexcan-core.c", i32 1645, i32 2}
!70 = !{ptr @flexcan_chip_start.__UNIQUE_ID_ddebug598, !69, !"__UNIQUE_ID_ddebug598", i1 false, i1 false}
!71 = !{ptr @.str.33, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/can/flexcan/flexcan-core.c", i32 1309, i32 2}
!73 = !{ptr @.str.34, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @flexcan_set_bittiming.__UNIQUE_ID_ddebug564, !72, !"__UNIQUE_ID_ddebug564", i1 false, i1 false}
!75 = !{ptr @.str.35, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/can/flexcan/flexcan-core.c", i32 1213, i32 2}
!77 = !{ptr @.str.36, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @flexcan_set_bittiming_cbt.__UNIQUE_ID_ddebug499, !76, !"__UNIQUE_ID_ddebug499", i1 false, i1 false}
!79 = !{ptr @.str.37, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/can/flexcan/flexcan-core.c", i32 1220, i32 21}
!81 = !{ptr @.str.38, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/can/flexcan/flexcan-core.c", i32 1249, i32 3}
!83 = !{ptr @flexcan_set_bittiming_cbt.__UNIQUE_ID_ddebug550, !82, !"__UNIQUE_ID_ddebug550", i1 false, i1 false}
!84 = !{ptr @.str.39, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/can/flexcan/flexcan-core.c", i32 1258, i32 3}
!86 = !{ptr @flexcan_set_bittiming_cbt.__UNIQUE_ID_ddebug551, !85, !"__UNIQUE_ID_ddebug551", i1 false, i1 false}
!87 = !{ptr @.str.40, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/can/flexcan/flexcan-core.c", i32 1282, i32 2}
!89 = !{ptr @flexcan_set_bittiming_cbt.__UNIQUE_ID_ddebug562, !88, !"__UNIQUE_ID_ddebug562", i1 false, i1 false}
!90 = !{ptr @.str.41, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/can/flexcan/flexcan-core.c", i32 1285, i32 2}
!92 = !{ptr @flexcan_set_bittiming_cbt.__UNIQUE_ID_ddebug563, !91, !"__UNIQUE_ID_ddebug563", i1 false, i1 false}
!93 = !{ptr @.str.42, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/can/flexcan/flexcan-core.c", i32 1178, i32 2}
!95 = !{ptr @flexcan_set_bittiming_ctrl.__UNIQUE_ID_ddebug472, !94, !"__UNIQUE_ID_ddebug472", i1 false, i1 false}
!96 = !{ptr @.str.43, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/can/flexcan/flexcan-core.c", i32 1182, i32 2}
!98 = !{ptr @flexcan_set_bittiming_ctrl.__UNIQUE_ID_ddebug473, !97, !"__UNIQUE_ID_ddebug473", i1 false, i1 false}
!99 = !{ptr @.str.44, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/net/can/flexcan/flexcan-core.c", i32 810, i32 3}
!101 = !{ptr @.str.45, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @flexcan_irq_bus_err.__UNIQUE_ID_ddebug462, !100, !"__UNIQUE_ID_ddebug462", i1 false, i1 false}
!103 = !{ptr @.str.46, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/net/can/flexcan/flexcan-core.c", i32 815, i32 3}
!105 = !{ptr @flexcan_irq_bus_err.__UNIQUE_ID_ddebug463, !104, !"__UNIQUE_ID_ddebug463", i1 false, i1 false}
!106 = !{ptr @.str.47, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/net/can/flexcan/flexcan-core.c", i32 820, i32 3}
!108 = !{ptr @flexcan_irq_bus_err.__UNIQUE_ID_ddebug464, !107, !"__UNIQUE_ID_ddebug464", i1 false, i1 false}
!109 = !{ptr @.str.48, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/net/can/flexcan/flexcan-core.c", i32 826, i32 3}
!111 = !{ptr @flexcan_irq_bus_err.__UNIQUE_ID_ddebug465, !110, !"__UNIQUE_ID_ddebug465", i1 false, i1 false}
!112 = !{ptr @.str.49, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/net/can/flexcan/flexcan-core.c", i32 832, i32 3}
!114 = !{ptr @flexcan_irq_bus_err.__UNIQUE_ID_ddebug466, !113, !"__UNIQUE_ID_ddebug466", i1 false, i1 false}
!115 = !{ptr @.str.50, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/net/can/flexcan/flexcan-core.c", i32 837, i32 3}
!117 = !{ptr @flexcan_irq_bus_err.__UNIQUE_ID_ddebug467, !116, !"__UNIQUE_ID_ddebug467", i1 false, i1 false}
!118 = distinct !{null, !119, !"__already_done", i1 false, i1 false}
!119 = !{!"../include/linux/can/skb.h", i32 104, i32 6}
!120 = !{ptr @.str.51, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @flexcan_fd_bittiming_const, !122, !"flexcan_fd_bittiming_const", i1 false, i1 false}
!122 = !{!"../drivers/net/can/flexcan/flexcan-core.c", i32 385, i32 41}
!123 = !{ptr @flexcan_fd_data_bittiming_const, !124, !"flexcan_fd_data_bittiming_const", i1 false, i1 false}
!124 = !{!"../drivers/net/can/flexcan/flexcan-core.c", i32 397, i32 41}
!125 = !{ptr @flexcan_bittiming_const, !126, !"flexcan_bittiming_const", i1 false, i1 false}
!126 = !{!"../drivers/net/can/flexcan/flexcan-core.c", i32 373, i32 41}
!127 = !{ptr @.str.52, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/net/can/flexcan/flexcan-core.c", i32 1869, i32 19}
!129 = !{ptr @.str.53, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/net/can/flexcan/flexcan-core.c", i32 1996, i32 47}
!131 = !{ptr @.str.54, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/net/can/flexcan/flexcan-core.c", i32 1957, i32 47}
!133 = !{ptr @.str.55, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/net/can/flexcan/flexcan-core.c", i32 1959, i32 3}
!135 = !{ptr @.str.56, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @flexcan_setup_stop_mode_scfw.__UNIQUE_ID_ddebug603, !134, !"__UNIQUE_ID_ddebug603", i1 false, i1 false}
!137 = !{ptr @.str.57, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/net/can/flexcan/flexcan-core.c", i32 1914, i32 39}
!139 = !{ptr @.str.58, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/net/can/flexcan/flexcan-core.c", i32 1917, i32 3}
!141 = !{ptr @.str.59, !140, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @flexcan_setup_stop_mode_gpr.__UNIQUE_ID_ddebug599, !140, !"__UNIQUE_ID_ddebug599", i1 false, i1 false}
!143 = !{ptr @.str.60, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/net/can/flexcan/flexcan-core.c", i32 1924, i32 3}
!145 = !{ptr @flexcan_setup_stop_mode_gpr.__UNIQUE_ID_ddebug600, !144, !"__UNIQUE_ID_ddebug600", i1 false, i1 false}
!146 = !{ptr @.str.61, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/net/can/flexcan/flexcan-core.c", i32 1931, i32 3}
!148 = !{ptr @flexcan_setup_stop_mode_gpr.__UNIQUE_ID_ddebug601, !147, !"__UNIQUE_ID_ddebug601", i1 false, i1 false}
!149 = !{ptr @.str.62, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/net/can/flexcan/flexcan-core.c", i32 1939, i32 2}
!151 = !{ptr @flexcan_setup_stop_mode_gpr.__UNIQUE_ID_ddebug602, !150, !"__UNIQUE_ID_ddebug602", i1 false, i1 false}
!152 = !{ptr @flexcan_of_match, !153, !"flexcan_of_match", i1 false, i1 false}
!153 = !{!"../drivers/net/can/flexcan/flexcan-core.c", i32 2002, i32 34}
!154 = !{ptr @fsl_imx8qm_devtype_data, !155, !"fsl_imx8qm_devtype_data", i1 false, i1 false}
!155 = !{!"../drivers/net/can/flexcan/flexcan-core.c", i32 332, i32 42}
!156 = !{ptr @fsl_imx8mp_devtype_data, !157, !"fsl_imx8mp_devtype_data", i1 false, i1 false}
!157 = !{!"../drivers/net/can/flexcan/flexcan-core.c", i32 340, i32 36}
!158 = !{ptr @fsl_imx6q_devtype_data, !159, !"fsl_imx6q_devtype_data", i1 false, i1 false}
!159 = !{!"../drivers/net/can/flexcan/flexcan-core.c", i32 324, i32 42}
!160 = !{ptr @fsl_imx28_devtype_data, !161, !"fsl_imx28_devtype_data", i1 false, i1 false}
!161 = !{!"../drivers/net/can/flexcan/flexcan-core.c", i32 318, i32 42}
!162 = !{ptr @fsl_imx25_devtype_data, !163, !"fsl_imx25_devtype_data", i1 false, i1 false}
!163 = !{!"../drivers/net/can/flexcan/flexcan-core.c", i32 311, i32 42}
!164 = !{ptr @fsl_p1010_devtype_data, !165, !"fsl_p1010_devtype_data", i1 false, i1 false}
!165 = !{!"../drivers/net/can/flexcan/flexcan-core.c", i32 303, i32 42}
!166 = !{ptr @fsl_vf610_devtype_data, !167, !"fsl_vf610_devtype_data", i1 false, i1 false}
!167 = !{!"../drivers/net/can/flexcan/flexcan-core.c", i32 349, i32 42}
!168 = !{ptr @fsl_ls1021a_r2_devtype_data, !169, !"fsl_ls1021a_r2_devtype_data", i1 false, i1 false}
!169 = !{!"../drivers/net/can/flexcan/flexcan-core.c", i32 357, i32 42}
!170 = !{ptr @fsl_lx2160a_r1_devtype_data, !171, !"fsl_lx2160a_r1_devtype_data", i1 false, i1 false}
!171 = !{!"../drivers/net/can/flexcan/flexcan-core.c", i32 364, i32 42}
!172 = !{ptr @flexcan_pm_ops, !173, !"flexcan_pm_ops", i1 false, i1 false}
!173 = !{!"../drivers/net/can/flexcan/flexcan-core.c", i32 2344, i32 32}
!174 = !{ptr @flexcan_id_table, !175, !"flexcan_id_table", i1 false, i1 false}
!175 = !{!"../drivers/net/can/flexcan/flexcan-core.c", i32 2018, i32 40}
!176 = !{ptr @fsl_mcf5441x_devtype_data, !177, !"fsl_mcf5441x_devtype_data", i1 false, i1 false}
!177 = !{!"../drivers/net/can/flexcan/flexcan-core.c", i32 296, i32 42}
!178 = !{i32 1, !"wchar_size", i32 2}
!179 = !{i32 1, !"min_enum_size", i32 4}
!180 = !{i32 8, !"branch-target-enforcement", i32 0}
!181 = !{i32 8, !"sign-return-address", i32 0}
!182 = !{i32 8, !"sign-return-address-all", i32 0}
!183 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!184 = !{i32 7, !"uwtable", i32 1}
!185 = !{i32 7, !"frame-pointer", i32 2}
!186 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!187 = !{i64 2148397411, i64 2148397437, i64 2148397466, i64 2148397500, i64 2148397531, i64 2148397554}
!188 = !{i64 6659664}
!189 = !{i64 2157499599}
!190 = !{i64 2157499996}
!191 = !{i64 6659246}
!192 = !{i64 2154200013}
!193 = !{i64 2154201368}
!194 = !{i64 2148396830}
!195 = !{i64 881653, i64 881678, i64 881700, i64 881716, i64 881728, i64 881748, i64 881772, i64 881788, i64 881800}
!196 = !{i64 2148397018}
!197 = !{!"auto-init"}
!198 = !{i64 2148851896, i64 2148851901, i64 2148851914, i64 2148851958, i64 2148851992, i64 2148852013}
!199 = !{!"branch_weights", i32 1, i32 2000}
!200 = !{!"branch_weights", i32 2000, i32 1}
