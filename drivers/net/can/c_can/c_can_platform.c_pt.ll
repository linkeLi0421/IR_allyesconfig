; ModuleID = '/llk/IR_all_yes/drivers/net/can/c_can/c_can_platform.c_pt.bc'
source_filename = "../drivers/net/can/c_can/c_can_platform.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.platform_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.c_can_driver_data = type { i32, i32, ptr, i8, i8 }
%struct.raminit_bits = type { i8, i8 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
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
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.c_can_priv = type { %struct.can_priv, %struct.napi_struct, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, i32, %struct.c_can_tx_ring, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.c_can_raminit, ptr, i32 }
%struct.can_priv = type { ptr, %struct.can_device_stats, ptr, ptr, %struct.can_bittiming, %struct.can_bittiming, ptr, %struct.can_tdc, i32, ptr, ptr, i32, i32, %struct.can_clock, i32, ptr, i16, ptr, [2 x i16], i32, ptr, i32, i32, i32, i32, %struct.delayed_work, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.can_device_stats = type { i32, i32, i32, i32, i32, i32 }
%struct.can_bittiming = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.can_tdc = type { i32, i32, i32 }
%struct.can_clock = type { i32 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.c_can_tx_ring = type { i32, i32, i32 }
%struct.c_can_raminit = type { ptr, i32, %struct.raminit_bits, i8 }

@__initcall__kmod_c_can_platform__460_497_c_can_plat_driver_init6 = internal global ptr @c_can_plat_driver_init, section ".initcall6.init", align 4
@c_can_plat_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @c_can_plat_probe, ptr @c_can_plat_remove, ptr null, ptr @c_can_suspend, ptr @c_can_resume, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @c_can_of_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @c_can_id_table, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_c_can_plat_driver_exit = internal global ptr @c_can_plat_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author461 = internal constant [61 x i8] c"c_can_platform.author=Bhupesh Sharma <bhupesh.sharma@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file462 = internal constant [57 x i8] c"c_can_platform.file=drivers/net/can/c_can/c_can_platform\00", section ".modinfo", align 1
@__UNIQUE_ID_license463 = internal constant [30 x i8] c"c_can_platform.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description464 = internal constant [78 x i8] c"c_can_platform.description=Platform CAN bus driver for Bosch C_CAN controller\00", section ".modinfo", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"c_can_platform\00", [17 x i8] zeroinitializer }, align 32
@c_can_of_table = internal constant { [6 x %struct.of_device_id], [296 x i8] } { [6 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"bosch,c_can\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @c_can_drvdata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"bosch,d_can\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @d_can_drvdata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,dra7-d_can\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @dra7_dcan_drvdata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,am3352-d_can\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @am3352_dcan_drvdata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,am4372-d_can\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @am3352_dcan_drvdata }, %struct.of_device_id zeroinitializer], [296 x i8] zeroinitializer }, align 32
@c_can_id_table = internal constant { [4 x %struct.platform_device_id], [32 x i8] } { [4 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"c_can_platform\00\00\00\00\00\00", i32 ptrtoint (ptr @c_can_drvdata to i32) }, %struct.platform_device_id { [20 x i8] c"c_can\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @c_can_drvdata to i32) }, %struct.platform_device_id { [20 x i8] c"d_can\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @d_can_drvdata to i32) }, %struct.platform_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@reg_map_c_can = internal constant { [39 x i16], [50 x i8] } { [39 x i16] [i16 0, i16 0, i16 2, i16 4, i16 6, i16 8, i16 10, i16 12, i16 16, i16 18, i16 20, i16 22, i16 24, i16 26, i16 28, i16 30, i16 32, i16 34, i16 36, i16 64, i16 66, i16 68, i16 70, i16 72, i16 74, i16 76, i16 78, i16 80, i16 82, i16 84, i16 128, i16 130, i16 144, i16 146, i16 160, i16 162, i16 0, i16 176, i16 178], [50 x i8] zeroinitializer }, align 32
@reg_map_d_can = internal constant { [40 x i16], [48 x i8] } { [40 x i16] [i16 0, i16 2, i16 4, i16 8, i16 12, i16 16, i16 20, i16 14, i16 256, i16 258, i16 260, i16 262, i16 264, i16 266, i16 268, i16 272, i16 274, i16 276, i16 278, i16 288, i16 290, i16 292, i16 294, i16 296, i16 298, i16 300, i16 304, i16 306, i16 308, i16 310, i16 136, i16 138, i16 156, i16 158, i16 176, i16 178, i16 180, i16 196, i16 198, i16 24], [48 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"syscon-raminit\00", [17 x i8] zeroinitializer }, align 32
@c_can_plat_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 354, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"couldn't get the RAMINIT reg. offset!\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"c_can_plat_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/net/can/c_can/c_can_platform.c\00", [57 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@c_can_plat_probe._entry_ptr = internal global ptr @c_can_plat_probe._entry, section ".printk_index", align 4
@c_can_plat_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 361, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"couldn't get the CAN instance ID\0A\00", [62 x i8] zeroinitializer }, align 32
@c_can_plat_probe._entry_ptr.9 = internal global ptr @c_can_plat_probe._entry.7, section ".printk_index", align 4
@c_can_plat_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 367, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Invalid CAN instance ID\0A\00", [39 x i8] zeroinitializer }, align 32
@c_can_plat_probe._entry_ptr.12 = internal global ptr @c_can_plat_probe._entry.10, section ".printk_index", align 4
@c_can_plat_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.3, ptr @.str.4, i32 397, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"registering %s failed (err=%d)\0A\00", [32 x i8] zeroinitializer }, align 32
@c_can_plat_probe._entry_ptr.15 = internal global ptr @c_can_plat_probe._entry.13, section ".printk_index", align 4
@c_can_plat_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.3, ptr @.str.4, i32 402, ptr @.str.18, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s device registered (regs=%p, irq=%d)\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@c_can_plat_probe._entry_ptr.19 = internal global ptr @c_can_plat_probe._entry.16, section ".printk_index", align 4
@c_can_plat_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.3, ptr @.str.4, i32 409, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"probe failed\0A\00", [18 x i8] zeroinitializer }, align 32
@c_can_plat_probe._entry_ptr.22 = internal global ptr @c_can_plat_probe._entry.20, section ".printk_index", align 4
@raminit_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.23, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"raminit_lock\00", [19 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@c_can_hw_raminit_wait_syscon._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.4, i32 91, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s: time out\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"c_can_hw_raminit_wait_syscon\00", [35 x i8] zeroinitializer }, align 32
@c_can_hw_raminit_wait_syscon._entry_ptr = internal global ptr @c_can_hw_raminit_wait_syscon._entry, section ".printk_index", align 4
@c_can_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.4, i32 434, ptr @.str.28, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Not supported\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"c_can_suspend\00", [18 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@c_can_suspend._entry_ptr = internal global ptr @c_can_suspend._entry, section ".printk_index", align 4
@.str.29 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to enter power down mode\0A\00", [63 x i8] zeroinitializer }, align 32
@c_can_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.30, ptr @.str.4, i32 461, ptr @.str.28, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"c_can_resume\00", [19 x i8] zeroinitializer }, align 32
@c_can_resume._entry_ptr = internal global ptr @c_can_resume._entry, section ".printk_index", align 4
@.str.31 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Still in power down mode\0A\00", [38 x i8] zeroinitializer }, align 32
@c_can_drvdata = internal constant { %struct.c_can_driver_data, [16 x i8] } { %struct.c_can_driver_data { i32 0, i32 32, ptr null, i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@d_can_drvdata = internal constant { %struct.c_can_driver_data, [16 x i8] } { %struct.c_can_driver_data { i32 1, i32 32, ptr null, i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@dra7_dcan_drvdata = internal constant { %struct.c_can_driver_data, [16 x i8] } { %struct.c_can_driver_data { i32 1, i32 64, ptr @dra7_raminit_bits, i8 2, i8 1 }, [16 x i8] zeroinitializer }, align 32
@am3352_dcan_drvdata = internal constant { %struct.c_can_driver_data, [16 x i8] } { %struct.c_can_driver_data { i32 1, i32 64, ptr @am3352_raminit_bits, i8 2, i8 0 }, [16 x i8] zeroinitializer }, align 32
@dra7_raminit_bits = internal constant { [2 x %struct.raminit_bits], [28 x i8] } { [2 x %struct.raminit_bits] [%struct.raminit_bits { i8 3, i8 1 }, %struct.raminit_bits { i8 5, i8 2 }], [28 x i8] zeroinitializer }, align 32
@am3352_raminit_bits = internal constant { [2 x %struct.raminit_bits], [28 x i8] } { [2 x %struct.raminit_bits] [%struct.raminit_bits { i8 0, i8 8 }, %struct.raminit_bits { i8 1, i8 9 }], [28 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.32 = private unnamed_addr constant [18 x i8] c"c_can_plat_driver\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 485, i32 31 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 487, i32 11 }
@___asan_gen_.38 = private unnamed_addr constant [15 x i8] c"c_can_of_table\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 246, i32 34 }
@___asan_gen_.41 = private unnamed_addr constant [15 x i8] c"c_can_id_table\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 229, i32 40 }
@___asan_gen_.44 = private unnamed_addr constant [14 x i8] c"reg_map_c_can\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 68, i32 33 }
@___asan_gen_.47 = private unnamed_addr constant [14 x i8] c"reg_map_d_can\00", align 1
@___asan_gen_.48 = private unnamed_addr constant [33 x i8] c"../drivers/net/can/c_can/c_can.h\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 108, i32 33 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 337, i32 39 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 353, i32 5 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 360, i32 5 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 366, i32 5 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 396, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 401, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 409, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant [13 x i8] c"raminit_lock\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 45, i32 8 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 91, i32 4 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 434, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 445, i32 20 }
@___asan_gen_.134 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 461, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 467, i32 20 }
@___asan_gen_.143 = private unnamed_addr constant [14 x i8] c"c_can_drvdata\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 194, i32 39 }
@___asan_gen_.146 = private unnamed_addr constant [14 x i8] c"d_can_drvdata\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 199, i32 39 }
@___asan_gen_.149 = private unnamed_addr constant [18 x i8] c"dra7_dcan_drvdata\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 209, i32 39 }
@___asan_gen_.152 = private unnamed_addr constant [20 x i8] c"am3352_dcan_drvdata\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 222, i32 39 }
@___asan_gen_.155 = private unnamed_addr constant [18 x i8] c"dra7_raminit_bits\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 204, i32 34 }
@___asan_gen_.158 = private unnamed_addr constant [20 x i8] c"am3352_raminit_bits\00", align 1
@___asan_gen_.159 = private constant [42 x i8] c"../drivers/net/can/c_can/c_can_platform.c\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 217, i32 34 }
@llvm.compiler.used = appending global [59 x ptr] [ptr @__UNIQUE_ID_author461, ptr @__UNIQUE_ID_description464, ptr @__UNIQUE_ID_file462, ptr @__UNIQUE_ID_license463, ptr @__exitcall_c_can_plat_driver_exit, ptr @__initcall__kmod_c_can_platform__460_497_c_can_plat_driver_init6, ptr @c_can_hw_raminit_wait_syscon._entry, ptr @c_can_hw_raminit_wait_syscon._entry_ptr, ptr @c_can_plat_driver_exit, ptr @c_can_plat_probe._entry, ptr @c_can_plat_probe._entry.10, ptr @c_can_plat_probe._entry.13, ptr @c_can_plat_probe._entry.16, ptr @c_can_plat_probe._entry.20, ptr @c_can_plat_probe._entry.7, ptr @c_can_plat_probe._entry_ptr, ptr @c_can_plat_probe._entry_ptr.12, ptr @c_can_plat_probe._entry_ptr.15, ptr @c_can_plat_probe._entry_ptr.19, ptr @c_can_plat_probe._entry_ptr.22, ptr @c_can_plat_probe._entry_ptr.9, ptr @c_can_resume._entry, ptr @c_can_resume._entry_ptr, ptr @c_can_suspend._entry, ptr @c_can_suspend._entry_ptr, ptr @c_can_plat_driver, ptr @.str, ptr @c_can_of_table, ptr @c_can_id_table, ptr @reg_map_c_can, ptr @reg_map_d_can, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @.str.18, ptr @.str.21, ptr @raminit_lock, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @c_can_drvdata, ptr @d_can_drvdata, ptr @dra7_dcan_drvdata, ptr @am3352_dcan_drvdata, ptr @dra7_raminit_bits, ptr @am3352_raminit_bits], section "llvm.metadata"
@0 = internal global [43 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c_can_plat_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c_can_of_table to i32), i32 1176, i32 1472, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c_can_id_table to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_map_c_can to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_map_d_can to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c_can_plat_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c_can_plat_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c_can_plat_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c_can_plat_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c_can_plat_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c_can_plat_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @raminit_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c_can_hw_raminit_wait_syscon._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c_can_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c_can_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c_can_drvdata to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @d_can_drvdata to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dra7_dcan_drvdata to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @am3352_dcan_drvdata to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dra7_raminit_bits to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @am3352_raminit_bits to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @c_can_plat_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @c_can_plat_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @c_can_plat_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @c_can_plat_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @c_can_plat_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %id46 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @of_match_device(ptr noundef nonnull @c_can_of_table, ptr noundef %dev1) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %data = getelementptr inbounds %struct.of_device_id, ptr %call, i32 0, i32 3
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  br label %if.end8

if.else:                                          ; preds = %entry
  %id_entry = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 8
  %4 = ptrtoint ptr %id_entry to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %id_entry, align 4
  %driver_data = getelementptr inbounds %struct.platform_device_id, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %driver_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool3.not = icmp eq i32 %7, 0
  br i1 %tobool3.not, label %if.else.cleanup109_crit_edge, label %if.then4

if.else.cleanup109_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup109

if.then4:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %8 = inttoptr i32 %7 to ptr
  br label %if.end8

if.end8:                                          ; preds = %if.then4, %if.then
  %drvdata.0 = phi ptr [ %3, %if.then ], [ %8, %if.then4 ]
  %call10 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef null) #6
  %cmp.i = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %call10 to i32
  br label %do.end107

if.end14:                                         ; preds = %if.end8
  %call15 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call15)
  %cmp = icmp slt i32 %call15, 1
  br i1 %cmp, label %if.end14.do.end107_crit_edge, label %if.end17

if.end14.do.end107_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end107

if.end17:                                         ; preds = %if.end14
  %call18 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #6
  %call20 = tail call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef %call18) #6
  %cmp.i192 = icmp ugt ptr %call20, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i192, label %if.then22, label %if.end24

if.then22:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %call20 to i32
  br label %do.end107

if.end24:                                         ; preds = %if.end17
  %msg_obj_num = getelementptr inbounds %struct.c_can_driver_data, ptr %drvdata.0, i32 0, i32 1
  %11 = ptrtoint ptr %msg_obj_num to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %msg_obj_num, align 4
  %call25 = tail call ptr @alloc_c_can_dev(i32 noundef %12) #6
  %tobool26.not = icmp eq ptr %call25, null
  br i1 %tobool26.not, label %if.end24.do.end107_crit_edge, label %if.end28

if.end24.do.end107_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end107

if.end28:                                         ; preds = %if.end24
  %13 = ptrtoint ptr %drvdata.0 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %drvdata.0, align 4
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values)
  switch i32 %14, label %if.end28.exit_free_device_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb37
  ]

if.end28.exit_free_device_crit_edge:              ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit_free_device

sw.bb:                                            ; preds = %if.end28
  %regs = getelementptr i8, ptr %call25, i32 2924
  %16 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @reg_map_c_can, ptr %regs, align 4
  %flags = getelementptr inbounds %struct.resource, ptr %call18, i32 0, i32 3
  %17 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags, align 4
  %and = and i32 %18, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %and)
  %cond = icmp eq i32 %and, 24
  %read_reg = getelementptr i8, ptr %call25, i32 2904
  br i1 %cond, label %sw.bb30, label %sw.default

sw.bb30:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %read_reg to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @c_can_plat_read_reg_aligned_to_32bit, ptr %read_reg, align 8
  %write_reg = getelementptr i8, ptr %call25, i32 2908
  %20 = ptrtoint ptr %write_reg to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @c_can_plat_write_reg_aligned_to_32bit, ptr %write_reg, align 4
  %read_reg32 = getelementptr i8, ptr %call25, i32 2912
  %21 = ptrtoint ptr %read_reg32 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @c_can_plat_read_reg32, ptr %read_reg32, align 8
  %write_reg32 = getelementptr i8, ptr %call25, i32 2916
  %22 = ptrtoint ptr %write_reg32 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @c_can_plat_write_reg32, ptr %write_reg32, align 4
  br label %sw.epilog82

sw.default:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %read_reg to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @c_can_plat_read_reg_aligned_to_16bit, ptr %read_reg, align 8
  %write_reg34 = getelementptr i8, ptr %call25, i32 2908
  %24 = ptrtoint ptr %write_reg34 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @c_can_plat_write_reg_aligned_to_16bit, ptr %write_reg34, align 4
  %read_reg3235 = getelementptr i8, ptr %call25, i32 2912
  %25 = ptrtoint ptr %read_reg3235 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @c_can_plat_read_reg32, ptr %read_reg3235, align 8
  %write_reg3236 = getelementptr i8, ptr %call25, i32 2916
  %26 = ptrtoint ptr %write_reg3236 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @c_can_plat_write_reg32, ptr %write_reg3236, align 4
  br label %sw.epilog82

sw.bb37:                                          ; preds = %if.end28
  %regs38 = getelementptr i8, ptr %call25, i32 2924
  %27 = ptrtoint ptr %regs38 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @reg_map_d_can, ptr %regs38, align 4
  %read_reg39 = getelementptr i8, ptr %call25, i32 2904
  %28 = ptrtoint ptr %read_reg39 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @c_can_plat_read_reg_aligned_to_16bit, ptr %read_reg39, align 8
  %write_reg40 = getelementptr i8, ptr %call25, i32 2908
  %29 = ptrtoint ptr %write_reg40 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @c_can_plat_write_reg_aligned_to_16bit, ptr %write_reg40, align 4
  %read_reg3241 = getelementptr i8, ptr %call25, i32 2912
  %30 = ptrtoint ptr %read_reg3241 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @d_can_plat_read_reg32, ptr %read_reg3241, align 8
  %write_reg3242 = getelementptr i8, ptr %call25, i32 2916
  %31 = ptrtoint ptr %write_reg3242 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @d_can_plat_write_reg32, ptr %write_reg3242, align 4
  %tobool43.not = icmp eq ptr %1, null
  br i1 %tobool43.not, label %sw.bb37.if.else78_crit_edge, label %land.lhs.true

sw.bb37.if.else78_crit_edge:                      ; preds = %sw.bb37
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else78

land.lhs.true:                                    ; preds = %sw.bb37
  %call.i = tail call ptr @of_find_property(ptr noundef nonnull %1, ptr noundef nonnull @.str.1, ptr noundef null) #6
  %tobool.i.not = icmp eq ptr %call.i, null
  br i1 %tobool.i.not, label %land.lhs.true.if.else78_crit_edge, label %if.then45

land.lhs.true.if.else78_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else78

if.then45:                                        ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id46) #6
  %32 = ptrtoint ptr %id46 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -1, ptr %id46, align 4, !annotation !96
  %raminit_sys = getelementptr i8, ptr %call25, i32 2932
  %call47 = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef nonnull %1, ptr noundef nonnull @.str.1) #6
  %33 = ptrtoint ptr %raminit_sys to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call47, ptr %raminit_sys, align 4
  %cmp.i193 = icmp ugt ptr %call47, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i193, label %cleanup.thread197, label %if.end53

cleanup.thread197:                                ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #8
  %34 = ptrtoint ptr %call47 to i32
  tail call void @free_c_can_dev(ptr noundef nonnull %call25) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id46) #6
  br label %cleanup109

if.end53:                                         ; preds = %if.then45
  %reg = getelementptr i8, ptr %call25, i32 2936
  %call54 = tail call i32 @of_property_read_u32_index(ptr noundef nonnull %1, ptr noundef nonnull @.str.1, i32 noundef 1, ptr noundef %reg) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %if.end58, label %do.end

do.end:                                           ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2) #9
  br label %cleanup.thread

if.end58:                                         ; preds = %if.end53
  %call59 = call i32 @of_property_read_u32_index(ptr noundef nonnull %1, ptr noundef nonnull @.str.1, i32 noundef 2, ptr noundef nonnull %id46) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %if.end66, label %do.end64

do.end64:                                         ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8) #9
  br label %cleanup.thread

if.end66:                                         ; preds = %if.end58
  %35 = ptrtoint ptr %id46 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %id46, align 4
  %raminit_num = getelementptr inbounds %struct.c_can_driver_data, ptr %drvdata.0, i32 0, i32 3
  %37 = ptrtoint ptr %raminit_num to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %raminit_num, align 4
  %conv = zext i8 %38 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %conv)
  %cmp67.not = icmp ult i32 %36, %conv
  br i1 %cmp67.not, label %cleanup, label %do.end72

do.end72:                                         ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.11) #9
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %do.end72, %do.end64, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id46) #6
  br label %exit_free_device

cleanup:                                          ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #8
  %bits = getelementptr i8, ptr %call25, i32 2940
  %raminit_bits = getelementptr inbounds %struct.c_can_driver_data, ptr %drvdata.0, i32 0, i32 2
  %39 = ptrtoint ptr %raminit_bits to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %raminit_bits, align 4
  %arrayidx = getelementptr %struct.raminit_bits, ptr %40, i32 %36
  %41 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %41, i32 2)
  %42 = load i16, ptr %arrayidx, align 1
  %43 = ptrtoint ptr %bits to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %42, ptr %bits, align 4
  %raminit_pulse = getelementptr inbounds %struct.c_can_driver_data, ptr %drvdata.0, i32 0, i32 4
  %44 = ptrtoint ptr %raminit_pulse to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %raminit_pulse, align 1, !range !97
  %needs_pulse = getelementptr i8, ptr %call25, i32 2942
  %46 = ptrtoint ptr %needs_pulse to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %45, ptr %needs_pulse, align 2
  %raminit76 = getelementptr i8, ptr %call25, i32 2944
  %47 = ptrtoint ptr %raminit76 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @c_can_hw_raminit_syscon, ptr %raminit76, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id46) #6
  br label %sw.epilog82

if.else78:                                        ; preds = %land.lhs.true.if.else78_crit_edge, %sw.bb37.if.else78_crit_edge
  %raminit79 = getelementptr i8, ptr %call25, i32 2944
  %48 = ptrtoint ptr %raminit79 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @c_can_hw_raminit, ptr %raminit79, align 8
  br label %sw.epilog82

sw.epilog82:                                      ; preds = %if.else78, %cleanup, %sw.default, %sw.bb30
  %irq83 = getelementptr inbounds %struct.net_device, ptr %call25, i32 0, i32 64
  %49 = ptrtoint ptr %irq83 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %call15, ptr %irq83, align 4
  %base = getelementptr i8, ptr %call25, i32 2920
  %50 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call20, ptr %base, align 8
  %device = getelementptr i8, ptr %call25, i32 2844
  %51 = ptrtoint ptr %device to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %dev1, ptr %device, align 4
  %call85 = call i32 @clk_get_rate(ptr noundef %call10) #6
  %clock = getelementptr i8, ptr %call25, i32 2440
  %52 = ptrtoint ptr %clock to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %call85, ptr %clock, align 8
  %53 = ptrtoint ptr %drvdata.0 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %drvdata.0, align 4
  %type = getelementptr i8, ptr %call25, i32 2928
  %55 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %type, align 8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %56 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %call25, ptr %driver_data.i.i, align 4
  %parent = getelementptr inbounds %struct.net_device, ptr %call25, i32 0, i32 133, i32 1
  %57 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %dev1, ptr %parent, align 8
  %58 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %device, align 4
  call void @pm_runtime_enable(ptr noundef %59) #6
  %call90 = call i32 @register_c_can_dev(ptr noundef nonnull %call25) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %tobool91.not = icmp eq i32 %call90, 0
  br i1 %tobool91.not, label %do.end100, label %do.end95

do.end95:                                         ; preds = %sw.epilog82
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str, i32 noundef %call90) #9
  br label %exit_free_device

do.end100:                                        ; preds = %sw.epilog82
  call void @__sanitizer_cov_trace_pc() #8
  %60 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %base, align 8
  %62 = ptrtoint ptr %irq83 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %irq83, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str, ptr noundef %61, i32 noundef %63) #9
  br label %cleanup109

exit_free_device:                                 ; preds = %do.end95, %cleanup.thread, %if.end28.exit_free_device_crit_edge
  %ret.1 = phi i32 [ %call90, %do.end95 ], [ -22, %if.end28.exit_free_device_crit_edge ], [ -22, %cleanup.thread ]
  %device104 = getelementptr i8, ptr %call25, i32 2844
  %64 = ptrtoint ptr %device104 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %device104, align 4
  call void @__pm_runtime_disable(ptr noundef %65, i1 noundef zeroext true) #6
  call void @free_c_can_dev(ptr noundef nonnull %call25) #6
  br label %do.end107

do.end107:                                        ; preds = %exit_free_device, %if.end24.do.end107_crit_edge, %if.then22, %if.end14.do.end107_crit_edge, %if.then12
  %ret.2 = phi i32 [ %9, %if.then12 ], [ %10, %if.then22 ], [ %ret.1, %exit_free_device ], [ -19, %if.end14.do.end107_crit_edge ], [ -12, %if.end24.do.end107_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.21) #9
  br label %cleanup109

cleanup109:                                       ; preds = %do.end107, %do.end100, %cleanup.thread197, %if.else.cleanup109_crit_edge
  %retval.1 = phi i32 [ %ret.2, %do.end107 ], [ 0, %do.end100 ], [ -19, %if.else.cleanup109_crit_edge ], [ %34, %cleanup.thread197 ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @c_can_plat_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @unregister_c_can_dev(ptr noundef %1) #6
  %device = getelementptr i8, ptr %1, i32 2844
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device, align 4
  tail call void @__pm_runtime_disable(ptr noundef %3, i1 noundef zeroext true) #6
  tail call void @free_c_can_dev(ptr noundef %1) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @c_can_suspend(ptr noundef %pdev, [1 x i32] %state.coerce) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %type = getelementptr i8, ptr %1, i32 2928
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.not = icmp eq i32 %3, 1
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.26) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 103
  %6 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %7, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #6
  tail call void @netif_device_detach(ptr noundef %1) #6
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  %call5 = tail call i32 @c_can_power_down(ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.end7, label %if.then6

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.29) #9
  br label %cleanup

if.end7:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  %state8 = getelementptr i8, ptr %1, i32 2472
  %8 = ptrtoint ptr %state8 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 5, ptr %state8, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then6, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ %call5, %if.then6 ], [ 0, %if.end7 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @c_can_resume(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %type = getelementptr i8, ptr %1, i32 2928
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.not = icmp eq i32 %3, 1
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.26) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @c_can_power_up(ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.31) #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %state = getelementptr i8, ptr %1, i32 2472
  %4 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %state, align 8
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %5 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end4.cleanup_crit_edge, label %if.then6

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @netif_device_attach(ptr noundef %1) #6
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 103
  %7 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %8, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %if.end4.cleanup_crit_edge, %if.then3, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ %call2, %if.then3 ], [ 0, %if.then6 ], [ 0, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_c_can_dev(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i16 @c_can_plat_read_reg_aligned_to_32bit(ptr nocapture noundef readonly %priv, i32 noundef %index) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.c_can_priv, ptr %priv, i32 0, i32 20
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 8
  %regs = getelementptr inbounds %struct.c_can_priv, ptr %priv, i32 0, i32 21
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %arrayidx = getelementptr i16, ptr %3, i32 %index
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %5 to i32
  %mul = shl nuw nsw i32 %conv, 1
  %add.ptr = getelementptr i8, ptr %1, i32 %mul
  %6 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #6, !srcloc !98
  %7 = tail call i16 @llvm.bswap.i16(i16 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !99
  ret i16 %7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @c_can_plat_write_reg_aligned_to_32bit(ptr nocapture noundef readonly %priv, i32 noundef %index, i16 noundef zeroext %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !100
  tail call void @arm_heavy_mb() #6
  %0 = tail call i16 @llvm.bswap.i16(i16 %val)
  %base = getelementptr inbounds %struct.c_can_priv, ptr %priv, i32 0, i32 20
  %1 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %base, align 8
  %regs = getelementptr inbounds %struct.c_can_priv, ptr %priv, i32 0, i32 21
  %3 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs, align 4
  %arrayidx = getelementptr i16, ptr %4, i32 %index
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %6 to i32
  %mul = shl nuw nsw i32 %conv, 1
  %add.ptr = getelementptr i8, ptr %2, i32 %mul
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 %0) #6, !srcloc !101
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @c_can_plat_read_reg32(ptr noundef %priv, i32 noundef %index) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %read_reg = getelementptr inbounds %struct.c_can_priv, ptr %priv, i32 0, i32 16
  %0 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %read_reg, align 8
  %call = tail call zeroext i16 %1(ptr noundef %priv, i32 noundef %index) #6
  %conv = zext i16 %call to i32
  %2 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read_reg, align 8
  %add = add i32 %index, 1
  %call2 = tail call zeroext i16 %3(ptr noundef %priv, i32 noundef %add) #6
  %conv3 = zext i16 %call2 to i32
  %shl = shl nuw i32 %conv3, 16
  %or = or i32 %shl, %conv
  ret i32 %or
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @c_can_plat_write_reg32(ptr noundef %priv, i32 noundef %index, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %write_reg = getelementptr inbounds %struct.c_can_priv, ptr %priv, i32 0, i32 17
  %0 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %write_reg, align 4
  %add = add i32 %index, 1
  %shr = lshr i32 %val, 16
  %conv = trunc i32 %shr to i16
  tail call void %1(ptr noundef %priv, i32 noundef %add, i16 noundef zeroext %conv) #6
  %2 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write_reg, align 4
  %conv2 = trunc i32 %val to i16
  tail call void %3(ptr noundef %priv, i32 noundef %index, i16 noundef zeroext %conv2) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i16 @c_can_plat_read_reg_aligned_to_16bit(ptr nocapture noundef readonly %priv, i32 noundef %index) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.c_can_priv, ptr %priv, i32 0, i32 20
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 8
  %regs = getelementptr inbounds %struct.c_can_priv, ptr %priv, i32 0, i32 21
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %arrayidx = getelementptr i16, ptr %3, i32 %index
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %5 to i32
  %add.ptr = getelementptr i8, ptr %1, i32 %conv
  %6 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #6, !srcloc !98
  %7 = tail call i16 @llvm.bswap.i16(i16 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !102
  ret i16 %7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @c_can_plat_write_reg_aligned_to_16bit(ptr nocapture noundef readonly %priv, i32 noundef %index, i16 noundef zeroext %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !103
  tail call void @arm_heavy_mb() #6
  %0 = tail call i16 @llvm.bswap.i16(i16 %val)
  %base = getelementptr inbounds %struct.c_can_priv, ptr %priv, i32 0, i32 20
  %1 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %base, align 8
  %regs = getelementptr inbounds %struct.c_can_priv, ptr %priv, i32 0, i32 21
  %3 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs, align 4
  %arrayidx = getelementptr i16, ptr %4, i32 %index
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %6 to i32
  %add.ptr = getelementptr i8, ptr %2, i32 %conv
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 %0) #6, !srcloc !101
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @d_can_plat_read_reg32(ptr nocapture noundef readonly %priv, i32 noundef %index) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.c_can_priv, ptr %priv, i32 0, i32 20
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 8
  %regs = getelementptr inbounds %struct.c_can_priv, ptr %priv, i32 0, i32 21
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %arrayidx = getelementptr i16, ptr %3, i32 %index
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %5 to i32
  %add.ptr = getelementptr i8, ptr %1, i32 %conv
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !104
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !105
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @d_can_plat_write_reg32(ptr nocapture noundef readonly %priv, i32 noundef %index, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !106
  tail call void @arm_heavy_mb() #6
  %0 = tail call i32 @llvm.bswap.i32(i32 %val)
  %base = getelementptr inbounds %struct.c_can_priv, ptr %priv, i32 0, i32 20
  %1 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %base, align 8
  %regs = getelementptr inbounds %struct.c_can_priv, ptr %priv, i32 0, i32 21
  %3 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs, align 4
  %arrayidx = getelementptr i16, ptr %4, i32 %index
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %6 to i32
  %add.ptr = getelementptr i8, ptr %2, i32 %conv
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %0) #6, !srcloc !107
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_c_can_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_u32_index(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @c_can_hw_raminit_syscon(ptr nocapture noundef readonly %priv, i1 noundef zeroext %enable) #2 align 64 {
entry:
  %ctrl.i72 = alloca i32, align 4
  %ctrl.i = alloca i32, align 4
  %ctrl = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %raminit_sys = getelementptr inbounds %struct.c_can_priv, ptr %priv, i32 0, i32 23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ctrl) #6
  %0 = ptrtoint ptr %ctrl to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %ctrl, align 4
  tail call void @_raw_spin_lock(ptr noundef nonnull @raminit_lock) #6
  %bits = getelementptr inbounds %struct.c_can_priv, ptr %priv, i32 0, i32 23, i32 2
  %1 = ptrtoint ptr %bits to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %bits, align 4
  %conv = zext i8 %2 to i32
  %shl = shl nuw i32 1, %conv
  %done = getelementptr inbounds %struct.c_can_priv, ptr %priv, i32 0, i32 23, i32 2, i32 1
  %3 = ptrtoint ptr %done to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %done, align 1
  %conv2 = zext i8 %4 to i32
  %shl3 = shl nuw i32 1, %conv2
  %or = or i32 %shl3, %shl
  %5 = ptrtoint ptr %raminit_sys to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %raminit_sys, align 4
  %reg = getelementptr inbounds %struct.c_can_priv, ptr %priv, i32 0, i32 23, i32 1
  %7 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %reg, align 4
  %call = call i32 @regmap_read(ptr noundef %6, i32 noundef %8, ptr noundef nonnull %ctrl) #6
  %neg = xor i32 %or, -1
  %9 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ctrl, align 4
  %and = and i32 %10, %neg
  store i32 %and, ptr %ctrl, align 4
  %11 = ptrtoint ptr %raminit_sys to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %raminit_sys, align 4
  %13 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %reg, align 4
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %12, i32 noundef %14, i32 noundef %or, i32 noundef %and, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %15 = ptrtoint ptr %bits to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %bits, align 4
  %conv9 = zext i8 %16 to i32
  %shl10 = shl nuw i32 1, %conv9
  %17 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ctrl, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ctrl.i) #6
  %19 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %ctrl.i, align 4
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond3.i.do.body.i_crit_edge, %entry
  %timeout.0.i = phi i32 [ 0, %entry ], [ %inc.i, %do.cond3.i.do.body.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %20(i32 noundef 214748) #6
  %inc.i = add nuw nsw i32 %timeout.0.i, 1
  %21 = ptrtoint ptr %raminit_sys to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %raminit_sys, align 4
  %23 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %reg, align 4
  %call.i69 = call i32 @regmap_read(ptr noundef %22, i32 noundef %24, ptr noundef nonnull %ctrl.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %inc.i)
  %cmp.i = icmp eq i32 %inc.i, 1000
  br i1 %cmp.i, label %do.end.i, label %do.cond3.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.c_can_priv, ptr %priv, i32 0, i32 2
  %25 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev.i, align 8
  %dev2.i = getelementptr inbounds %struct.net_device, ptr %26, i32 0, i32 133
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25) #9
  br label %c_can_hw_raminit_wait_syscon.exit

do.cond3.i:                                       ; preds = %do.body.i
  %27 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ctrl.i, align 4
  %29 = xor i32 %28, %18
  %30 = and i32 %29, %shl10
  %cmp5.not.i = icmp eq i32 %30, 0
  br i1 %cmp5.not.i, label %do.cond3.i.c_can_hw_raminit_wait_syscon.exit_crit_edge, label %do.cond3.i.do.body.i_crit_edge

do.cond3.i.do.body.i_crit_edge:                   ; preds = %do.cond3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

do.cond3.i.c_can_hw_raminit_wait_syscon.exit_crit_edge: ; preds = %do.cond3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %c_can_hw_raminit_wait_syscon.exit

c_can_hw_raminit_wait_syscon.exit:                ; preds = %do.cond3.i.c_can_hw_raminit_wait_syscon.exit_crit_edge, %do.end.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ctrl.i) #6
  br i1 %enable, label %if.then, label %c_can_hw_raminit_wait_syscon.exit.if.end46_crit_edge

c_can_hw_raminit_wait_syscon.exit.if.end46_crit_edge: ; preds = %c_can_hw_raminit_wait_syscon.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end46

if.then:                                          ; preds = %c_can_hw_raminit_wait_syscon.exit
  %31 = ptrtoint ptr %bits to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %bits, align 4
  %conv13 = zext i8 %32 to i32
  %shl14 = shl nuw i32 1, %conv13
  %33 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %ctrl, align 4
  %or15 = or i32 %shl14, %34
  %35 = ptrtoint ptr %done to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %done, align 1
  %conv18 = zext i8 %36 to i32
  %shl19 = shl nuw i32 1, %conv18
  %or20 = or i32 %shl19, %or15
  store i32 %or20, ptr %ctrl, align 4
  %37 = ptrtoint ptr %raminit_sys to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %raminit_sys, align 4
  %39 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %reg, align 4
  %call.i70 = call i32 @regmap_update_bits_base(ptr noundef %38, i32 noundef %40, i32 noundef %or, i32 noundef %or20, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %41 = ptrtoint ptr %done to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %done, align 1
  %conv26 = zext i8 %42 to i32
  %shl27 = shl nuw i32 1, %conv26
  %neg28 = xor i32 %shl27, -1
  %43 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %ctrl, align 4
  %and29 = and i32 %44, %neg28
  store i32 %and29, ptr %ctrl, align 4
  %needs_pulse = getelementptr inbounds %struct.c_can_priv, ptr %priv, i32 0, i32 23, i32 3
  %45 = ptrtoint ptr %needs_pulse to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %needs_pulse, align 2, !range !97
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool30.not = icmp eq i8 %46, 0
  br i1 %tobool30.not, label %if.then.if.end_crit_edge, label %if.then31

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then31:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %47 = ptrtoint ptr %bits to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %bits, align 4
  %conv34 = zext i8 %48 to i32
  %shl35 = shl nuw i32 1, %conv34
  %neg36 = xor i32 %shl35, -1
  %and37 = and i32 %and29, %neg36
  %49 = ptrtoint ptr %ctrl to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %and37, ptr %ctrl, align 4
  %50 = ptrtoint ptr %raminit_sys to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %raminit_sys, align 4
  %52 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %reg, align 4
  %call.i71 = call i32 @regmap_update_bits_base(ptr noundef %51, i32 noundef %53, i32 noundef %or, i32 noundef %and37, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %if.end

if.end:                                           ; preds = %if.then31, %if.then.if.end_crit_edge
  %54 = ptrtoint ptr %done to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %done, align 1
  %conv43 = zext i8 %55 to i32
  %shl44 = shl nuw i32 1, %conv43
  %56 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %ctrl, align 4
  %or45 = or i32 %shl44, %57
  store i32 %or45, ptr %ctrl, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ctrl.i72) #6
  %58 = ptrtoint ptr %ctrl.i72 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %ctrl.i72, align 4
  br label %do.body.i79

do.body.i79:                                      ; preds = %do.cond3.i84.do.body.i79_crit_edge, %if.end
  %timeout.0.i75 = phi i32 [ 0, %if.end ], [ %inc.i76, %do.cond3.i84.do.body.i79_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %59 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %59(i32 noundef 214748) #6
  %inc.i76 = add nuw nsw i32 %timeout.0.i75, 1
  %60 = ptrtoint ptr %raminit_sys to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %raminit_sys, align 4
  %62 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %reg, align 4
  %call.i77 = call i32 @regmap_read(ptr noundef %61, i32 noundef %63, ptr noundef nonnull %ctrl.i72) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %inc.i76)
  %cmp.i78 = icmp eq i32 %inc.i76, 1000
  br i1 %cmp.i78, label %do.end.i82, label %do.cond3.i84

do.end.i82:                                       ; preds = %do.body.i79
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i80 = getelementptr inbounds %struct.c_can_priv, ptr %priv, i32 0, i32 2
  %64 = ptrtoint ptr %dev.i80 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dev.i80, align 8
  %dev2.i81 = getelementptr inbounds %struct.net_device, ptr %65, i32 0, i32 133
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i81, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25) #9
  br label %c_can_hw_raminit_wait_syscon.exit85

do.cond3.i84:                                     ; preds = %do.body.i79
  %66 = ptrtoint ptr %ctrl.i72 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %ctrl.i72, align 4
  %68 = xor i32 %67, %or45
  %69 = and i32 %68, %or
  %cmp5.not.i83 = icmp eq i32 %69, 0
  br i1 %cmp5.not.i83, label %do.cond3.i84.c_can_hw_raminit_wait_syscon.exit85_crit_edge, label %do.cond3.i84.do.body.i79_crit_edge

do.cond3.i84.do.body.i79_crit_edge:               ; preds = %do.cond3.i84
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i79

do.cond3.i84.c_can_hw_raminit_wait_syscon.exit85_crit_edge: ; preds = %do.cond3.i84
  call void @__sanitizer_cov_trace_pc() #8
  br label %c_can_hw_raminit_wait_syscon.exit85

c_can_hw_raminit_wait_syscon.exit85:              ; preds = %do.cond3.i84.c_can_hw_raminit_wait_syscon.exit85_crit_edge, %do.end.i82
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ctrl.i72) #6
  br label %if.end46

if.end46:                                         ; preds = %c_can_hw_raminit_wait_syscon.exit85, %c_can_hw_raminit_wait_syscon.exit.if.end46_crit_edge
  call void @_raw_spin_unlock(ptr noundef nonnull @raminit_lock) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ctrl) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @c_can_hw_raminit(ptr noundef %priv, i1 noundef zeroext %enable) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %read_reg32 = getelementptr inbounds %struct.c_can_priv, ptr %priv, i32 0, i32 18
  %0 = ptrtoint ptr %read_reg32 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %read_reg32, align 8
  %call = tail call i32 %1(ptr noundef %priv, i32 noundef 39) #6
  %and = and i32 %call, -9
  %write_reg32 = getelementptr inbounds %struct.c_can_priv, ptr %priv, i32 0, i32 19
  %2 = ptrtoint ptr %write_reg32 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write_reg32, align 4
  tail call void %3(ptr noundef %priv, i32 noundef 39, i32 noundef %and) #6
  %4 = ptrtoint ptr %read_reg32 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read_reg32, align 8
  %call2.i = tail call i32 %5(ptr noundef %priv, i32 noundef 39) #6
  %and3.i = and i32 %call2.i, %and
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool.not4.i = icmp eq i32 %and3.i, 0
  br i1 %tobool.not4.i, label %entry.c_can_hw_raminit_wait.exit_crit_edge, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

entry.c_can_hw_raminit_wait.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %c_can_hw_raminit_wait.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 214748) #6
  %7 = ptrtoint ptr %read_reg32 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %read_reg32, align 8
  %call.i = tail call i32 %8(ptr noundef %priv, i32 noundef 39) #6
  %and.i = and i32 %call.i, %and
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %while.body.i.c_can_hw_raminit_wait.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

while.body.i.c_can_hw_raminit_wait.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %c_can_hw_raminit_wait.exit

c_can_hw_raminit_wait.exit:                       ; preds = %while.body.i.c_can_hw_raminit_wait.exit_crit_edge, %entry.c_can_hw_raminit_wait.exit_crit_edge
  br i1 %enable, label %if.then, label %c_can_hw_raminit_wait.exit.if.end_crit_edge

c_can_hw_raminit_wait.exit.if.end_crit_edge:      ; preds = %c_can_hw_raminit_wait.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %c_can_hw_raminit_wait.exit
  %or = or i32 %call, 8
  %9 = ptrtoint ptr %write_reg32 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %write_reg32, align 4
  tail call void %10(ptr noundef %priv, i32 noundef 39, i32 noundef %or) #6
  %11 = ptrtoint ptr %read_reg32 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %read_reg32, align 8
  %call2.i15 = tail call i32 %12(ptr noundef %priv, i32 noundef 39) #6
  %and3.i16 = and i32 %call2.i15, %or
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i16)
  %tobool.not4.i17 = icmp eq i32 %and3.i16, 0
  br i1 %tobool.not4.i17, label %if.then.if.end_crit_edge, label %if.then.while.body.i21_crit_edge

if.then.while.body.i21_crit_edge:                 ; preds = %if.then
  br label %while.body.i21

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

while.body.i21:                                   ; preds = %while.body.i21.while.body.i21_crit_edge, %if.then.while.body.i21_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 214748) #6
  %14 = ptrtoint ptr %read_reg32 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %read_reg32, align 8
  %call.i18 = tail call i32 %15(ptr noundef %priv, i32 noundef 39) #6
  %and.i19 = and i32 %call.i18, %or
  %tobool.not.i20 = icmp eq i32 %and.i19, 0
  br i1 %tobool.not.i20, label %while.body.i21.if.end_crit_edge, label %while.body.i21.while.body.i21_crit_edge

while.body.i21.while.body.i21_crit_edge:          ; preds = %while.body.i21
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i21

while.body.i21.if.end_crit_edge:                  ; preds = %while.body.i21
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end:                                           ; preds = %while.body.i21.if.end_crit_edge, %if.then.if.end_crit_edge, %c_can_hw_raminit_wait.exit.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_c_can_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_c_can_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @c_can_power_down(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @c_can_power_up(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_attach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !41, !43, !44, !45, !47, !49, !51, !52, !54, !55, !56, !57, !59, !60, !61, !62, !63, !65, !67, !68, !69, !71, !73, !75, !77, !79, !81, !83, !85}
!llvm.module.flags = !{!87, !88, !89, !90, !91, !92, !93, !94}
!llvm.ident = !{!95}

!0 = !{ptr @__initcall__kmod_c_can_platform__460_497_c_can_plat_driver_init6, !1, !"__initcall__kmod_c_can_platform__460_497_c_can_plat_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/can/c_can/c_can_platform.c", i32 497, i32 1}
!2 = !{ptr @__exitcall_c_can_plat_driver_exit, !1, !"__exitcall_c_can_plat_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author461, !4, !"__UNIQUE_ID_author461", i1 false, i1 false}
!4 = !{!"../drivers/net/can/c_can/c_can_platform.c", i32 499, i32 1}
!5 = !{ptr @__UNIQUE_ID_file462, !6, !"__UNIQUE_ID_file462", i1 false, i1 false}
!6 = !{!"../drivers/net/can/c_can/c_can_platform.c", i32 500, i32 1}
!7 = !{ptr @__UNIQUE_ID_license463, !6, !"__UNIQUE_ID_license463", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_description464, !9, !"__UNIQUE_ID_description464", i1 false, i1 false}
!9 = !{!"../drivers/net/can/c_can/c_can_platform.c", i32 501, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/can/c_can/c_can_platform.c", i32 487, i32 11}
!12 = !{ptr @c_can_plat_driver, !13, !"c_can_plat_driver", i1 false, i1 false}
!13 = !{!"../drivers/net/can/c_can/c_can_platform.c", i32 485, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/can/c_can/c_can_platform.c", i32 337, i32 39}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/can/c_can/c_can_platform.c", i32 353, i32 5}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @c_can_plat_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @c_can_plat_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/can/c_can/c_can_platform.c", i32 360, i32 5}
!26 = !{ptr @c_can_plat_probe._entry.7, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @c_can_plat_probe._entry_ptr.9, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/can/c_can/c_can_platform.c", i32 366, i32 5}
!30 = !{ptr @c_can_plat_probe._entry.10, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @c_can_plat_probe._entry_ptr.12, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/can/c_can/c_can_platform.c", i32 396, i32 3}
!34 = !{ptr @c_can_plat_probe._entry.13, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @c_can_plat_probe._entry_ptr.15, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/can/c_can/c_can_platform.c", i32 401, i32 2}
!38 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @c_can_plat_probe._entry.16, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @c_can_plat_probe._entry_ptr.19, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.21, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/can/c_can/c_can_platform.c", i32 409, i32 2}
!43 = !{ptr @c_can_plat_probe._entry.20, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @c_can_plat_probe._entry_ptr.22, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @reg_map_c_can, !46, !"reg_map_c_can", i1 false, i1 false}
!46 = !{!"../drivers/net/can/c_can/c_can.h", i32 68, i32 33}
!47 = !{ptr @reg_map_d_can, !48, !"reg_map_d_can", i1 false, i1 false}
!48 = !{!"../drivers/net/can/c_can/c_can.h", i32 108, i32 33}
!49 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/can/c_can/c_can_platform.c", i32 45, i32 8}
!51 = !{ptr @raminit_lock, !50, !"raminit_lock", i1 false, i1 false}
!52 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/can/c_can/c_can_platform.c", i32 91, i32 4}
!54 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @c_can_hw_raminit_wait_syscon._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @c_can_hw_raminit_wait_syscon._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.26, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/can/c_can/c_can_platform.c", i32 434, i32 3}
!59 = !{ptr @.str.27, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.28, !58, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @c_can_suspend._entry, !58, !"_entry", i1 false, i1 false}
!62 = !{ptr @c_can_suspend._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.29, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/can/c_can/c_can_platform.c", i32 445, i32 20}
!65 = !{ptr @.str.30, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/can/c_can/c_can_platform.c", i32 461, i32 3}
!67 = !{ptr @c_can_resume._entry, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @c_can_resume._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.31, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/can/c_can/c_can_platform.c", i32 467, i32 20}
!71 = !{ptr @c_can_of_table, !72, !"c_can_of_table", i1 false, i1 false}
!72 = !{!"../drivers/net/can/c_can/c_can_platform.c", i32 246, i32 34}
!73 = !{ptr @c_can_drvdata, !74, !"c_can_drvdata", i1 false, i1 false}
!74 = !{!"../drivers/net/can/c_can/c_can_platform.c", i32 194, i32 39}
!75 = !{ptr @d_can_drvdata, !76, !"d_can_drvdata", i1 false, i1 false}
!76 = !{!"../drivers/net/can/c_can/c_can_platform.c", i32 199, i32 39}
!77 = !{ptr @dra7_dcan_drvdata, !78, !"dra7_dcan_drvdata", i1 false, i1 false}
!78 = !{!"../drivers/net/can/c_can/c_can_platform.c", i32 209, i32 39}
!79 = !{ptr @dra7_raminit_bits, !80, !"dra7_raminit_bits", i1 false, i1 false}
!80 = !{!"../drivers/net/can/c_can/c_can_platform.c", i32 204, i32 34}
!81 = !{ptr @am3352_dcan_drvdata, !82, !"am3352_dcan_drvdata", i1 false, i1 false}
!82 = !{!"../drivers/net/can/c_can/c_can_platform.c", i32 222, i32 39}
!83 = !{ptr @am3352_raminit_bits, !84, !"am3352_raminit_bits", i1 false, i1 false}
!84 = !{!"../drivers/net/can/c_can/c_can_platform.c", i32 217, i32 34}
!85 = !{ptr @c_can_id_table, !86, !"c_can_id_table", i1 false, i1 false}
!86 = !{!"../drivers/net/can/c_can/c_can_platform.c", i32 229, i32 40}
!87 = !{i32 1, !"wchar_size", i32 2}
!88 = !{i32 1, !"min_enum_size", i32 4}
!89 = !{i32 8, !"branch-target-enforcement", i32 0}
!90 = !{i32 8, !"sign-return-address", i32 0}
!91 = !{i32 8, !"sign-return-address-all", i32 0}
!92 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!93 = !{i32 7, !"uwtable", i32 1}
!94 = !{i32 7, !"frame-pointer", i32 2}
!95 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!96 = !{!"auto-init"}
!97 = !{i8 0, i8 2}
!98 = !{i64 4626600}
!99 = !{i64 2157210833}
!100 = !{i64 2157211064}
!101 = !{i64 4626400}
!102 = !{i64 2157209864}
!103 = !{i64 2157210091}
!104 = !{i64 4627438}
!105 = !{i64 2157213873}
!106 = !{i64 2157214100}
!107 = !{i64 4627020}
