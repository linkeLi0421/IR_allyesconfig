; ModuleID = '/llk/IR_all_yes/drivers/net/can/spi/mcp251x.c_pt.bc'
source_filename = "../drivers/net/can/spi/mcp251x.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spi_device_id = type { [32 x i8], i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.can_bittiming_const = type { [16 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.130, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.144, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.130 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.144 = type { ptr }
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
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.mcp251x_priv = type { %struct.can_priv, ptr, ptr, i32, %struct.mutex, ptr, ptr, ptr, ptr, %struct.work_struct, %struct.work_struct, i32, i32, i32, i8, ptr, ptr, ptr, %struct.gpio_chip, i8 }
%struct.can_priv = type { ptr, %struct.can_device_stats, ptr, ptr, %struct.can_bittiming, %struct.can_bittiming, ptr, %struct.can_tdc, i32, ptr, ptr, i32, i32, %struct.can_clock, i32, ptr, i16, ptr, [2 x i16], i32, ptr, i32, i32, i32, i32, %struct.delayed_work, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.can_device_stats = type { i32, i32, i32, i32, i32, i32 }
%struct.can_bittiming = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.can_tdc = type { i32, i32, i32 }
%struct.can_clock = type { i32 }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.147, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.147 = type { ptr }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
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
%struct.can_frame = type { i32, %union.anon.148, i8, i8, i8, [8 x i8] }
%union.anon.148 = type { i8 }
%struct.canfd_frame = type { i32, i8, i8, i8, i8, [64 x i8] }
%struct.can_skb_priv = type { i32, i32, i32, [4 x i8], [0 x %struct.can_frame] }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.spi_controller = type { %struct.device, %struct.list_head, i16, i16, i16, i32, i32, i32, i32, i32, i16, i8, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.mutex, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, %struct.kthread_work, %struct.spinlock, %struct.list_head, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.completion, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.spi_statistics, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }

@__initcall__kmod_mcp251x__509_1509_mcp251x_can_driver_init6 = internal global ptr @mcp251x_can_driver_init, section ".initcall6.init", align 4
@mcp251x_can_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr @mcp251x_id_table, ptr @mcp251x_can_probe, ptr @mcp251x_can_remove, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mcp251x_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mcp251x_can_pm_ops, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_mcp251x_can_driver_exit = internal global ptr @mcp251x_can_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author510 = internal constant [95 x i8] c"mcp251x.author=Chris Elston <celston@katalix.com>, Christian Pellegrin <chripell@evolware.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description511 = internal constant [52 x i8] c"mcp251x.description=Microchip 251x/25625 CAN driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file512 = internal constant [41 x i8] c"mcp251x.file=drivers/net/can/spi/mcp251x\00", section ".modinfo", align 1
@__UNIQUE_ID_license513 = internal constant [23 x i8] c"mcp251x.license=GPL v2\00", section ".modinfo", align 1
@mcp251x_id_table = internal constant { [4 x %struct.spi_device_id], [48 x i8] } { [4 x %struct.spi_device_id] [%struct.spi_device_id { [32 x i8] c"mcp2510\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 9488 }, %struct.spi_device_id { [32 x i8] c"mcp2515\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 9493 }, %struct.spi_device_id { [32 x i8] c"mcp25625\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 153125 }, %struct.spi_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mcp251x\00", [24 x i8] zeroinitializer }, align 32
@mcp251x_of_match = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"microchip,mcp2510\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 9488 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"microchip,mcp2515\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 9493 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"microchip,mcp25625\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 153125 to ptr) }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@mcp251x_can_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @mcp251x_can_suspend, ptr @mcp251x_can_resume, ptr @mcp251x_can_suspend, ptr @mcp251x_can_resume, ptr @mcp251x_can_suspend, ptr @mcp251x_can_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clock-frequency\00", [16 x i8] zeroinitializer }, align 32
@mcp251x_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @mcp251x_open, ptr @mcp251x_stop, ptr @mcp251x_hard_start_xmit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @can_change_mtu, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@mcp251x_bittiming_const = internal constant { %struct.can_bittiming_const, [48 x i8] } { %struct.can_bittiming_const { [16 x i8] c"mcp251x\00\00\00\00\00\00\00\00\00", i32 3, i32 16, i32 2, i32 8, i32 4, i32 1, i32 64, i32 1 }, [48 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vdd\00", [28 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"xceiver\00", [24 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mcp251x_wq\00", [21 x i8] zeroinitializer }, align 32
@mcp251x_can_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"(work_completion)(&priv->tx_work)\00", [62 x i8] zeroinitializer }, align 32
@mcp251x_can_probe.__key.6 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"(work_completion)(&priv->restart_work)\00", [57 x i8] zeroinitializer }, align 32
@mcp251x_can_probe.__key.8 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&priv->mcp_lock\00", [16 x i8] zeroinitializer }, align 32
@mcp251x_can_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.12, i32 1396, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Cannot initialize MCP%x. Wrong wiring?\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mcp251x_can_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/net/can/spi/mcp251x.c\00", [34 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mcp251x_can_probe._entry_ptr = internal global ptr @mcp251x_can_probe._entry, section ".printk_index", align 4
@.str.15 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"MCP%x successfully initialized.\0A\00", [63 x i8] zeroinitializer }, align 32
@mcp251x_can_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.11, ptr @.str.12, i32 1426, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Probe failed, err=%d\0A\00", [42 x i8] zeroinitializer }, align 32
@mcp251x_can_probe._entry_ptr.18 = internal global ptr @mcp251x_can_probe._entry.16, section ".printk_index", align 4
@mcp251x_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.12, i32 1203, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"unable to set initial baudrate!\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mcp251x_open\00", [19 x i8] zeroinitializer }, align 32
@mcp251x_open._entry_ptr = internal global ptr @mcp251x_open._entry, section ".printk_index", align 4
@mcp251x_open._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str.12, i32 1221, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to acquire irq %d\0A\00", [38 x i8] zeroinitializer }, align 32
@mcp251x_open._entry_ptr.23 = internal global ptr @mcp251x_open._entry.21, section ".printk_index", align 4
@mcp251x_spi_trans._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.12, i32 314, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"spi transfer failed: ret = %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mcp251x_spi_trans\00", [46 x i8] zeroinitializer }, align 32
@mcp251x_spi_trans._entry_ptr = internal global ptr @mcp251x_spi_trans._entry, section ".printk_index", align 4
@mcp251x_hw_rx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.12, i32 704, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cannot allocate RX skb\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mcp251x_hw_rx\00", [18 x i8] zeroinitializer }, align 32
@mcp251x_hw_rx._entry_ptr = internal global ptr @mcp251x_hw_rx._entry, section ".printk_index", align 4
@mcp251x_spi_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.12, i32 325, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"spi write failed: ret = %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mcp251x_spi_write\00", [46 x i8] zeroinitializer }, align 32
@mcp251x_spi_write._entry_ptr = internal global ptr @mcp251x_spi_write._entry, section ".printk_index", align 4
@.str.30 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"cannot allocate error skb\0A\00", [37 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@mcp251x_hw_wake._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.12, i32 772, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"MCP251x didn't enter in config mode\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mcp251x_hw_wake\00", [16 x i8] zeroinitializer }, align 32
@mcp251x_hw_wake._entry_ptr = internal global ptr @mcp251x_hw_wake._entry, section ".printk_index", align 4
@mcp251x_do_set_bittiming.__UNIQUE_ID_ddebug507 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.33, ptr @.str.12, ptr @.str.34, i8 0, i8 -37, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mcp251x_do_set_bittiming\00", [39 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"CNF: 0x%02x 0x%02x 0x%02x\0A\00", [37 x i8] zeroinitializer }, align 32
@mcp251x_set_normal_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.12, i32 851, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"MCP251x didn't enter in normal mode\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mcp251x_set_normal_mode\00", [40 x i8] zeroinitializer }, align 32
@mcp251x_set_normal_mode._entry_ptr = internal global ptr @mcp251x_set_normal_mode._entry, section ".printk_index", align 4
@mcp251x_hard_start_xmit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.12, i32 790, ptr @.str.39, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"hard_xmit called while tx busy\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mcp251x_hard_start_xmit\00", [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@mcp251x_hard_start_xmit._entry_ptr = internal global ptr @mcp251x_hard_start_xmit._entry, section ".printk_index", align 4
@can_skb_headroom_valid.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.40 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/can/skb.h\00", [40 x i8] zeroinitializer }, align 32
@mcp251x_hw_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.12, i32 915, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"MCP251x didn't enter in conf mode after reset\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mcp251x_hw_reset\00", [47 x i8] zeroinitializer }, align 32
@mcp251x_hw_reset._entry_ptr = internal global ptr @mcp251x_hw_reset._entry, section ".printk_index", align 4
@mcp251x_hw_probe.__UNIQUE_ID_ddebug508 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.43, ptr @.str.12, ptr @.str.44, i8 0, i8 -24, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mcp251x_hw_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"CANCTRL 0x%02x\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"gpio-controller\00", [16 x i8] zeroinitializer }, align 32
@mcp251x_gpio_names = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50], [44 x i8] zeroinitializer }, align 32
@mcp251x_gpio_setup.lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@mcp251x_gpio_setup.request_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.46 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"TX0RTS\00", [25 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"TX1RTS\00", [25 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"TX2RTS\00", [25 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"RX0BF\00", [26 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"RX1BF\00", [26 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967277]
@__sancov_gen_cov_switch_values.51 = internal global [4 x i64] [i64 2, i64 16, i64 12, i64 13]
@__sancov_gen_cov_switch_values.52 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.53 = private unnamed_addr constant [19 x i8] c"mcp251x_can_driver\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1499, i32 26 }
@___asan_gen_.56 = private unnamed_addr constant [17 x i8] c"mcp251x_id_table\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1276, i32 35 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1501, i32 11 }
@___asan_gen_.62 = private unnamed_addr constant [17 x i8] c"mcp251x_of_match\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1259, i32 34 }
@___asan_gen_.65 = private unnamed_addr constant [19 x i8] c"mcp251x_can_pm_ops\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1496, i32 8 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1308, i32 39 }
@___asan_gen_.71 = private unnamed_addr constant [19 x i8] c"mcp251x_netdev_ops\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1252, i32 36 }
@___asan_gen_.74 = private unnamed_addr constant [24 x i8] c"mcp251x_bittiming_const\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 210, i32 41 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1351, i32 55 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1352, i32 61 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1363, i32 29 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1369, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1370, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1373, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1395, i32 4 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1412, i32 19 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1426, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1203, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1221, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 314, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 704, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 325, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 992, i32 19 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 772, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 874, i32 2 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 851, i32 4 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 790, i32 3 }
@___asan_gen_.213 = private unnamed_addr constant [27 x i8] c"../include/linux/can/skb.h\00", align 1
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 104, i32 6 }
@___asan_gen_.215 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 915, i32 3 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 930, i32 2 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 586, i32 48 }
@___asan_gen_.233 = private unnamed_addr constant [19 x i8] c"mcp251x_gpio_names\00", align 1
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 428, i32 27 }
@___asan_gen_.236 = private unnamed_addr constant [9 x i8] c"lock_key\00", align 1
@___asan_gen_.239 = private unnamed_addr constant [12 x i8] c"request_key\00", align 1
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 605, i32 9 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 429, i32 26 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 430, i32 26 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 431, i32 26 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 432, i32 25 }
@___asan_gen_.254 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.255 = private constant [33 x i8] c"../drivers/net/can/spi/mcp251x.c\00", align 1
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 433, i32 25 }
@llvm.compiler.used = appending global [86 x ptr] [ptr @__UNIQUE_ID_author510, ptr @__UNIQUE_ID_description511, ptr @__UNIQUE_ID_file512, ptr @__UNIQUE_ID_license513, ptr @__exitcall_mcp251x_can_driver_exit, ptr @__initcall__kmod_mcp251x__509_1509_mcp251x_can_driver_init6, ptr @mcp251x_can_driver_exit, ptr @mcp251x_can_probe._entry, ptr @mcp251x_can_probe._entry.16, ptr @mcp251x_can_probe._entry_ptr, ptr @mcp251x_can_probe._entry_ptr.18, ptr @mcp251x_hard_start_xmit._entry, ptr @mcp251x_hard_start_xmit._entry_ptr, ptr @mcp251x_hw_reset._entry, ptr @mcp251x_hw_reset._entry_ptr, ptr @mcp251x_hw_rx._entry, ptr @mcp251x_hw_rx._entry_ptr, ptr @mcp251x_hw_wake._entry, ptr @mcp251x_hw_wake._entry_ptr, ptr @mcp251x_open._entry, ptr @mcp251x_open._entry.21, ptr @mcp251x_open._entry_ptr, ptr @mcp251x_open._entry_ptr.23, ptr @mcp251x_set_normal_mode._entry, ptr @mcp251x_set_normal_mode._entry_ptr, ptr @mcp251x_spi_trans._entry, ptr @mcp251x_spi_trans._entry_ptr, ptr @mcp251x_spi_write._entry, ptr @mcp251x_spi_write._entry_ptr, ptr @mcp251x_can_driver, ptr @mcp251x_id_table, ptr @.str, ptr @mcp251x_of_match, ptr @mcp251x_can_pm_ops, ptr @.str.1, ptr @mcp251x_netdev_ops, ptr @mcp251x_bittiming_const, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @mcp251x_can_probe.__key, ptr @.str.5, ptr @mcp251x_can_probe.__key.6, ptr @.str.7, ptr @mcp251x_can_probe.__key.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @mcp251x_gpio_names, ptr @mcp251x_gpio_setup.lock_key, ptr @mcp251x_gpio_setup.request_key, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50], section "llvm.metadata"
@0 = internal global [68 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp251x_can_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp251x_id_table to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp251x_of_match to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp251x_can_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp251x_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp251x_bittiming_const to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp251x_can_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp251x_can_probe.__key.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp251x_can_probe.__key.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp251x_can_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp251x_can_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp251x_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp251x_open._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp251x_spi_trans._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp251x_hw_rx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp251x_spi_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp251x_hw_wake._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp251x_set_normal_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp251x_hard_start_xmit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp251x_hw_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp251x_gpio_names to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp251x_gpio_setup.lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp251x_gpio_setup.request_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mcp251x_can_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @mcp251x_can_driver) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mcp251x_can_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @mcp251x_can_driver, i32 0, i32 4)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mcp251x_can_probe(ptr noundef %spi) #2 align 64 {
entry:
  %freq = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @device_get_match_data(ptr noundef %spi) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %freq) #8
  %call2 = tail call ptr @devm_clk_get_optional(ptr noundef %spi, ptr noundef null) #8
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call5 = tail call i32 @clk_get_rate(ptr noundef %call2) #8
  %1 = ptrtoint ptr %freq to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %call5, ptr %freq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp = icmp eq i32 %call5, 0
  br i1 %cmp, label %if.then6, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = call i32 @device_property_read_u32_array(ptr noundef %spi, ptr noundef nonnull @.str.1, ptr noundef nonnull %freq, i32 noundef 1) #8
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.end.if.end9_crit_edge
  %2 = ptrtoint ptr %freq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %freq, align 4
  %4 = add i32 %3, -25000001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -24000001, i32 %4)
  %5 = icmp ult i32 %4, -24000001
  br i1 %5, label %if.end9.cleanup_crit_edge, label %if.end13

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  %call14 = call ptr @alloc_candev_mqs(i32 noundef 900, i32 noundef 1, i32 noundef 1, i32 noundef 1) #8
  %tobool.not = icmp eq ptr %call14, null
  br i1 %tobool.not, label %if.end13.cleanup_crit_edge, label %if.end16

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end16:                                         ; preds = %if.end13
  %call17 = call fastcc i32 @clk_prepare_enable(ptr noundef %call2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %if.end16.out_free_crit_edge

if.end16.out_free_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free

if.end20:                                         ; preds = %if.end16
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %call14, i32 0, i32 16
  %6 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @mcp251x_netdev_ops, ptr %netdev_ops, align 8
  %flags = getelementptr inbounds %struct.net_device, ptr %call14, i32 0, i32 14
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags, align 8
  %or = or i32 %8, 262144
  store i32 %or, ptr %flags, align 8
  %add.ptr.i = getelementptr i8, ptr %call14, i32 2304
  %bittiming_const = getelementptr i8, ptr %call14, i32 2332
  %9 = ptrtoint ptr %bittiming_const to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @mcp251x_bittiming_const, ptr %bittiming_const, align 4
  %do_set_mode = getelementptr i8, ptr %call14, i32 2596
  %10 = ptrtoint ptr %do_set_mode to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @mcp251x_do_set_mode, ptr %do_set_mode, align 4
  %11 = ptrtoint ptr %freq to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %freq, align 4
  %div226 = lshr i32 %12, 1
  %clock = getelementptr i8, ptr %call14, i32 2440
  %13 = ptrtoint ptr %clock to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %div226, ptr %clock, align 4
  %ctrlmode_supported = getelementptr i8, ptr %call14, i32 2480
  %14 = ptrtoint ptr %ctrlmode_supported to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 7, ptr %ctrlmode_supported, align 4
  %tobool26.not = icmp eq ptr %call, null
  br i1 %tobool26.not, label %if.else, label %if.then27

if.then27:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %call to i32
  br label %if.end30

if.else:                                          ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  %call28 = call ptr @spi_get_device_id(ptr noundef %spi) #8
  %driver_data = getelementptr inbounds %struct.spi_device_id, ptr %call28, i32 0, i32 1
  %16 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %driver_data, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.else, %if.then27
  %.sink = phi i32 [ %17, %if.else ], [ %15, %if.then27 ]
  %18 = getelementptr i8, ptr %call14, i32 2624
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %.sink, ptr %18, align 4
  %net31 = getelementptr i8, ptr %call14, i32 2616
  %20 = ptrtoint ptr %net31 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call14, ptr %net31, align 4
  %clk32 = getelementptr i8, ptr %call14, i32 2848
  %21 = ptrtoint ptr %clk32 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call2, ptr %clk32, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %22 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %add.ptr.i, ptr %driver_data.i.i, align 4
  %bits_per_word = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 5
  %23 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 8, ptr %bits_per_word, align 1
  %24 = load i32, ptr %18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9488, i32 %24)
  %cmp.i227.not = icmp eq i32 %24, 9488
  %max_speed_hz = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 3
  %25 = ptrtoint ptr %max_speed_hz to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %max_speed_hz, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool36.not = icmp eq i32 %26, 0
  %. = select i1 %cmp.i227.not, i32 5000000, i32 10000000
  %.144 = select i1 %tobool36.not, i32 %., i32 %26
  %27 = ptrtoint ptr %max_speed_hz to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %.144, ptr %max_speed_hz, align 8
  %call47 = call i32 @spi_setup(ptr noundef %spi) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.end50, label %if.end30.out_clk_crit_edge

if.end30.out_clk_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_clk

if.end50:                                         ; preds = %if.end30
  %call52 = call ptr @devm_regulator_get_optional(ptr noundef %spi, ptr noundef nonnull @.str.2) #8
  %power = getelementptr i8, ptr %call14, i32 2840
  %28 = ptrtoint ptr %power to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call52, ptr %power, align 4
  %call54 = call ptr @devm_regulator_get_optional(ptr noundef %spi, ptr noundef nonnull @.str.3) #8
  %transceiver = getelementptr i8, ptr %call14, i32 2844
  %29 = ptrtoint ptr %transceiver to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call54, ptr %transceiver, align 4
  %30 = ptrtoint ptr %power to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %power, align 4
  %cmp57 = icmp eq ptr %31, inttoptr (i32 -517 to ptr)
  %cmp61 = icmp eq ptr %call54, inttoptr (i32 -517 to ptr)
  %or.cond239 = select i1 %cmp57, i1 true, i1 %cmp61
  br i1 %or.cond239, label %if.end50.out_clk_crit_edge, label %if.end63

if.end50.out_clk_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_clk

if.end63:                                         ; preds = %if.end50
  %tobool.not.i.i = icmp eq ptr %31, null
  %cmp.i.i = icmp ugt ptr %31, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i, %cmp.i.i
  br i1 %spec.select.i.i, label %if.end63.if.end68_crit_edge, label %mcp251x_power_enable.exit

if.end63.if.end68_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end68

mcp251x_power_enable.exit:                        ; preds = %if.end63
  %call2.i = call i32 @regulator_enable(ptr noundef nonnull %31) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool66.not = icmp eq i32 %call2.i, 0
  br i1 %tobool66.not, label %mcp251x_power_enable.exit.if.end68_crit_edge, label %mcp251x_power_enable.exit.out_clk_crit_edge

mcp251x_power_enable.exit.out_clk_crit_edge:      ; preds = %mcp251x_power_enable.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_clk

mcp251x_power_enable.exit.if.end68_crit_edge:     ; preds = %mcp251x_power_enable.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end68

if.end68:                                         ; preds = %mcp251x_power_enable.exit.if.end68_crit_edge, %if.end63.if.end68_crit_edge
  %call69 = call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.4, i32 noundef 12, i32 noundef 0) #8
  %wq = getelementptr i8, ptr %call14, i32 2732
  %32 = ptrtoint ptr %wq to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call69, ptr %wq, align 4
  %tobool71.not = icmp eq ptr %call69, null
  br i1 %tobool71.not, label %if.end68.out_clk_crit_edge, label %do.body

if.end68.out_clk_crit_edge:                       ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_clk

do.body:                                          ; preds = %if.end68
  %tx_work = getelementptr i8, ptr %call14, i32 2736
  call void @__init_work(ptr noundef %tx_work, i32 noundef 0) #8
  %33 = ptrtoint ptr %tx_work to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 -64, ptr %tx_work, align 4
  %lockdep_map = getelementptr i8, ptr %call14, i32 2752
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.5, ptr noundef nonnull @mcp251x_can_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry77 = getelementptr i8, ptr %call14, i32 2740
  %34 = ptrtoint ptr %entry77 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %entry77, ptr %entry77, align 4
  %prev.i = getelementptr i8, ptr %call14, i32 2744
  %35 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %entry77, ptr %prev.i, align 4
  %func = getelementptr i8, ptr %call14, i32 2748
  %36 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @mcp251x_tx_work_handler, ptr %func, align 4
  %restart_work = getelementptr i8, ptr %call14, i32 2780
  call void @__init_work(ptr noundef %restart_work, i32 noundef 0) #8
  %37 = ptrtoint ptr %restart_work to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 -64, ptr %restart_work, align 4
  %lockdep_map85 = getelementptr i8, ptr %call14, i32 2796
  call void @lockdep_init_map_type(ptr noundef %lockdep_map85, ptr noundef nonnull @.str.7, ptr noundef nonnull @mcp251x_can_probe.__key.6, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry87 = getelementptr i8, ptr %call14, i32 2784
  %38 = ptrtoint ptr %entry87 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %entry87, ptr %entry87, align 4
  %prev.i228 = getelementptr i8, ptr %call14, i32 2788
  %39 = ptrtoint ptr %prev.i228 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %entry87, ptr %prev.i228, align 4
  %func89 = getelementptr i8, ptr %call14, i32 2792
  %40 = ptrtoint ptr %func89 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @mcp251x_restart_work_handler, ptr %func89, align 4
  %spi92 = getelementptr i8, ptr %call14, i32 2620
  %41 = ptrtoint ptr %spi92 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %spi, ptr %spi92, align 4
  %mcp_lock = getelementptr i8, ptr %call14, i32 2628
  call void @__mutex_init(ptr noundef %mcp_lock, ptr noundef nonnull @.str.9, ptr noundef nonnull @mcp251x_can_probe.__key.8) #8
  %call.i229 = call noalias ptr @devm_kmalloc(ptr noundef %spi, i32 noundef 14, i32 noundef 3520) #8
  %spi_tx_buf = getelementptr i8, ptr %call14, i32 2720
  %42 = ptrtoint ptr %spi_tx_buf to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call.i229, ptr %spi_tx_buf, align 4
  %tobool99.not = icmp eq ptr %call.i229, null
  br i1 %tobool99.not, label %do.body.error_probe_crit_edge, label %if.end101

do.body.error_probe_crit_edge:                    ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_probe

if.end101:                                        ; preds = %do.body
  %call.i230 = call noalias ptr @devm_kmalloc(ptr noundef %spi, i32 noundef 14, i32 noundef 3520) #8
  %spi_rx_buf = getelementptr i8, ptr %call14, i32 2724
  %43 = ptrtoint ptr %spi_rx_buf to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call.i230, ptr %spi_rx_buf, align 4
  %tobool105.not = icmp eq ptr %call.i230, null
  br i1 %tobool105.not, label %if.end101.error_probe_crit_edge, label %if.end107

if.end101.error_probe_crit_edge:                  ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_probe

if.end107:                                        ; preds = %if.end101
  %parent = getelementptr inbounds %struct.net_device, ptr %call14, i32 0, i32 133, i32 1
  %44 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %spi, ptr %parent, align 8
  %call110 = call fastcc i32 @mcp251x_hw_probe(ptr noundef %spi)
  %45 = zext i32 %call110 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call110, label %if.end107.error_probe_crit_edge [
    i32 0, label %if.end121
    i32 -19, label %do.end117
  ]

if.end107.error_probe_crit_edge:                  ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_probe

do.end117:                                        ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #10
  %46 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %18, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.10, i32 noundef %47) #11
  br label %error_probe

if.end121:                                        ; preds = %if.end107
  call fastcc void @mcp251x_hw_sleep(ptr noundef %spi)
  %call122 = call i32 @register_candev(ptr noundef nonnull %call14) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call122)
  %tobool123.not = icmp eq i32 %call122, 0
  br i1 %tobool123.not, label %if.end125, label %if.end121.error_probe_crit_edge

if.end121.error_probe_crit_edge:                  ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_probe

if.end125:                                        ; preds = %if.end121
  %call126 = call fastcc i32 @mcp251x_gpio_setup(ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call126)
  %tobool127.not = icmp eq i32 %call126, 0
  br i1 %tobool127.not, label %if.end129, label %if.end125.error_probe_crit_edge

if.end125.error_probe_crit_edge:                  ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_probe

if.end129:                                        ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #10
  %48 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %18, align 4
  call void (ptr, ptr, ...) @netdev_info(ptr noundef nonnull %call14, ptr noundef nonnull @.str.15, i32 noundef %49) #11
  br label %cleanup

error_probe:                                      ; preds = %if.end125.error_probe_crit_edge, %if.end121.error_probe_crit_edge, %do.end117, %if.end107.error_probe_crit_edge, %if.end101.error_probe_crit_edge, %do.body.error_probe_crit_edge
  %ret.0 = phi i32 [ -19, %do.end117 ], [ %call122, %if.end121.error_probe_crit_edge ], [ %call126, %if.end125.error_probe_crit_edge ], [ -12, %do.body.error_probe_crit_edge ], [ -12, %if.end101.error_probe_crit_edge ], [ %call110, %if.end107.error_probe_crit_edge ]
  %50 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %wq, align 4
  call void @destroy_workqueue(ptr noundef %51) #8
  %52 = ptrtoint ptr %wq to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr null, ptr %wq, align 4
  %53 = ptrtoint ptr %power to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %power, align 4
  %tobool.not.i.i231 = icmp eq ptr %54, null
  %cmp.i.i232 = icmp ugt ptr %54, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i233 = or i1 %tobool.not.i.i231, %cmp.i.i232
  br i1 %spec.select.i.i233, label %error_probe.out_clk_crit_edge, label %if.end.i234

error_probe.out_clk_crit_edge:                    ; preds = %error_probe
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_clk

if.end.i234:                                      ; preds = %error_probe
  call void @__sanitizer_cov_trace_pc() #10
  %call3.i = call i32 @regulator_disable(ptr noundef nonnull %54) #8
  br label %out_clk

out_clk:                                          ; preds = %if.end.i234, %error_probe.out_clk_crit_edge, %if.end68.out_clk_crit_edge, %mcp251x_power_enable.exit.out_clk_crit_edge, %if.end50.out_clk_crit_edge, %if.end30.out_clk_crit_edge
  %ret.1 = phi i32 [ %call47, %if.end30.out_clk_crit_edge ], [ %call2.i, %mcp251x_power_enable.exit.out_clk_crit_edge ], [ -517, %if.end50.out_clk_crit_edge ], [ -12, %if.end68.out_clk_crit_edge ], [ %ret.0, %error_probe.out_clk_crit_edge ], [ %ret.0, %if.end.i234 ]
  call void @clk_disable(ptr noundef %call2) #8
  call void @clk_unprepare(ptr noundef %call2) #8
  br label %out_free

out_free:                                         ; preds = %out_clk, %if.end16.out_free_crit_edge
  %ret.2 = phi i32 [ %call17, %if.end16.out_free_crit_edge ], [ %ret.1, %out_clk ]
  call void @free_candev(ptr noundef nonnull %call14) #8
  %sub = sub i32 0, %ret.2
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.17, i32 noundef %sub) #11
  br label %cleanup

cleanup:                                          ; preds = %out_free, %if.end129, %if.end13.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %ret.2, %out_free ], [ 0, %if.end129 ], [ -34, %if.end9.cleanup_crit_edge ], [ -12, %if.end13.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %freq) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mcp251x_can_remove(ptr nocapture noundef readonly %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %net1 = getelementptr inbounds %struct.mcp251x_priv, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %net1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net1, align 4
  tail call void @unregister_candev(ptr noundef %3) #8
  %power = getelementptr inbounds %struct.mcp251x_priv, ptr %1, i32 0, i32 15
  %4 = ptrtoint ptr %power to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %power, align 4
  %tobool.not.i.i = icmp eq ptr %5, null
  %cmp.i.i = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i, %cmp.i.i
  br i1 %spec.select.i.i, label %entry.mcp251x_power_enable.exit_crit_edge, label %if.end.i

entry.mcp251x_power_enable.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %mcp251x_power_enable.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call3.i = tail call i32 @regulator_disable(ptr noundef nonnull %5) #8
  br label %mcp251x_power_enable.exit

mcp251x_power_enable.exit:                        ; preds = %if.end.i, %entry.mcp251x_power_enable.exit_crit_edge
  %wq = getelementptr inbounds %struct.mcp251x_priv, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wq, align 4
  tail call void @destroy_workqueue(ptr noundef %7) #8
  %8 = ptrtoint ptr %wq to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %wq, align 4
  %clk = getelementptr inbounds %struct.mcp251x_priv, ptr %1, i32 0, i32 17
  %9 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %10) #8
  tail call void @clk_unprepare(ptr noundef %10) #8
  tail call void @free_candev(ptr noundef %3) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_candev_mqs(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @clk_prepare_enable(ptr noundef %clk) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 @clk_prepare(ptr noundef %clk) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @clk_enable(ptr noundef %clk) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %clk) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mcp251x_do_set_mode(ptr noundef %net, i32 noundef %mode) #2 align 64 {
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
  %tx_skb.i = getelementptr i8, ptr %net, i32 2728
  %0 = ptrtoint ptr %tx_skb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx_skb.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %sw.bb.if.then.i_crit_edge

sw.bb.if.then.i_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %sw.bb
  %tx_busy.i = getelementptr i8, ptr %net, i32 2836
  %2 = ptrtoint ptr %tx_busy.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %tx_busy.i, align 4, !range !139
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not.i = icmp eq i8 %3, 0
  br i1 %tobool1.not.i, label %lor.lhs.false.i.if.end.i_crit_edge, label %lor.lhs.false.i.if.then.i_crit_edge

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

lor.lhs.false.i.if.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %sw.bb.if.then.i_crit_edge
  %tx_errors.i = getelementptr inbounds %struct.net_device, ptr %net, i32 0, i32 36, i32 5
  %4 = ptrtoint ptr %tx_errors.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_errors.i, align 4
  %inc.i = add i32 %5, 1
  store i32 %inc.i, ptr %tx_errors.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %lor.lhs.false.i.if.end.i_crit_edge
  tail call void @consume_skb(ptr noundef %1) #8
  %tx_busy3.i = getelementptr i8, ptr %net, i32 2836
  %6 = ptrtoint ptr %tx_busy3.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %tx_busy3.i, align 4, !range !139
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool4.not.i = icmp eq i8 %7, 0
  br i1 %tobool4.not.i, label %if.end.i.mcp251x_clean.exit_crit_edge, label %if.then5.i

if.end.i.mcp251x_clean.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mcp251x_clean.exit

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %net6.i = getelementptr i8, ptr %net, i32 2616
  %8 = ptrtoint ptr %net6.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %net6.i, align 4
  tail call void @can_free_echo_skb(ptr noundef %9, i32 noundef 0, ptr noundef null) #8
  br label %mcp251x_clean.exit

mcp251x_clean.exit:                               ; preds = %if.then5.i, %if.end.i.mcp251x_clean.exit_crit_edge
  %10 = ptrtoint ptr %tx_skb.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %tx_skb.i, align 4
  %11 = ptrtoint ptr %tx_busy3.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %tx_busy3.i, align 4
  %state = getelementptr i8, ptr %net, i32 2472
  %12 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %state, align 4
  %restart_tx = getelementptr i8, ptr %net, i32 2832
  %13 = ptrtoint ptr %restart_tx to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %restart_tx, align 4
  %restart_ms = getelementptr i8, ptr %net, i32 2484
  %14 = ptrtoint ptr %restart_ms to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %restart_ms, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp = icmp eq i32 %15, 0
  br i1 %cmp, label %if.then, label %mcp251x_clean.exit.if.end_crit_edge

mcp251x_clean.exit.if.end_crit_edge:              ; preds = %mcp251x_clean.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %mcp251x_clean.exit
  call void @__sanitizer_cov_trace_pc() #10
  %after_suspend = getelementptr i8, ptr %net, i32 2828
  %16 = ptrtoint ptr %after_suspend to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 8, ptr %after_suspend, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %mcp251x_clean.exit.if.end_crit_edge
  %wq = getelementptr i8, ptr %net, i32 2732
  %17 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %wq, align 4
  %restart_work = getelementptr i8, ptr %net, i32 2780
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %18, ptr noundef %restart_work) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @spi_get_device_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mcp251x_tx_work_handler(ptr noundef %ws) #2 align 64 {
entry:
  %msg.i.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i.i = alloca %struct.spi_transfer, align 4
  %msg.i.i.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i.i.i = alloca %struct.spi_transfer, align 4
  %msg.i.i.i.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i.i.i.i = alloca %struct.spi_transfer, align 4
  %buf.i = alloca [14 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %spi1 = getelementptr i8, ptr %ws, i32 -116
  %0 = ptrtoint ptr %spi1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spi1, align 4
  %net2 = getelementptr i8, ptr %ws, i32 -120
  %2 = ptrtoint ptr %net2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net2, align 4
  %mcp_lock = getelementptr i8, ptr %ws, i32 -108
  tail call void @mutex_lock_nested(ptr noundef %mcp_lock, i32 noundef 0) #8
  %tx_skb = getelementptr i8, ptr %ws, i32 -8
  %4 = ptrtoint ptr %tx_skb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tx_skb, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end11_crit_edge, label %if.then

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then:                                          ; preds = %entry
  %state = getelementptr i8, ptr %ws, i32 -264
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %cmp = icmp eq i32 %7, 3
  br i1 %cmp, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.then
  %tx_skb.i = getelementptr i8, ptr %3, i32 2728
  %8 = ptrtoint ptr %tx_skb.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tx_skb.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %if.then3.if.then.i_crit_edge

if.then3.if.then.i_crit_edge:                     ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %if.then3
  %tx_busy.i = getelementptr i8, ptr %3, i32 2836
  %10 = ptrtoint ptr %tx_busy.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %tx_busy.i, align 4, !range !139
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool1.not.i = icmp eq i8 %11, 0
  br i1 %tobool1.not.i, label %lor.lhs.false.i.if.end.i_crit_edge, label %lor.lhs.false.i.if.then.i_crit_edge

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

lor.lhs.false.i.if.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %if.then3.if.then.i_crit_edge
  %tx_errors.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 36, i32 5
  %12 = ptrtoint ptr %tx_errors.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tx_errors.i, align 4
  %inc.i = add i32 %13, 1
  store i32 %inc.i, ptr %tx_errors.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %lor.lhs.false.i.if.end.i_crit_edge
  tail call void @consume_skb(ptr noundef %9) #8
  %tx_busy3.i = getelementptr i8, ptr %3, i32 2836
  %14 = ptrtoint ptr %tx_busy3.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %tx_busy3.i, align 4, !range !139
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool4.not.i = icmp eq i8 %15, 0
  br i1 %tobool4.not.i, label %if.end.i.mcp251x_clean.exit_crit_edge, label %if.then5.i

if.end.i.mcp251x_clean.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mcp251x_clean.exit

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %net6.i = getelementptr i8, ptr %3, i32 2616
  %16 = ptrtoint ptr %net6.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %net6.i, align 4
  tail call void @can_free_echo_skb(ptr noundef %17, i32 noundef 0, ptr noundef null) #8
  br label %mcp251x_clean.exit

mcp251x_clean.exit:                               ; preds = %if.then5.i, %if.end.i.mcp251x_clean.exit_crit_edge
  %18 = ptrtoint ptr %tx_skb.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %tx_skb.i, align 4
  %19 = ptrtoint ptr %tx_busy3.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %tx_busy3.i, align 4
  br label %if.end11

if.else:                                          ; preds = %if.then
  %data = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 19
  %20 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data, align 4
  %22 = getelementptr inbounds %struct.can_frame, ptr %21, i32 0, i32 1
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %22, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %24)
  %cmp5 = icmp ugt i8 %24, 8
  br i1 %cmp5, label %if.then7, label %if.else.if.end_crit_edge

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then7:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 8, ptr %22, align 4
  br label %if.end

if.end:                                           ; preds = %if.then7, %if.else.if.end_crit_edge
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %26 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %buf.i) #8
  %28 = getelementptr inbounds [14 x i8], ptr %buf.i, i32 0, i32 1
  %29 = getelementptr inbounds [14 x i8], ptr %buf.i, i32 0, i32 2
  %30 = getelementptr inbounds [14 x i8], ptr %buf.i, i32 0, i32 3
  %31 = getelementptr inbounds [14 x i8], ptr %buf.i, i32 0, i32 4
  %32 = getelementptr inbounds [14 x i8], ptr %buf.i, i32 0, i32 5
  %33 = getelementptr inbounds [14 x i8], ptr %buf.i, i32 0, i32 6
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_storeN_noabort(i32 %34, i32 8)
  store i64 -1, ptr %33, align 1
  %35 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %21, align 8
  %and3.i = lshr i32 %36, 18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.not3.i = icmp slt i32 %36, 0
  %sid.0.in.i = select i1 %tobool.not3.i, i32 %and3.i, i32 %36
  %37 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 64, ptr %buf.i, align 1
  %shr12.i = lshr i32 %sid.0.in.i, 3
  %conv13.i = trunc i32 %shr12.i to i8
  %38 = ptrtoint ptr %28 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv13.i, ptr %28, align 1
  %sid.0.i = shl i32 %sid.0.in.i, 5
  %39 = lshr i32 %36, 28
  %40 = and i32 %39, 8
  %or.i = or i32 %sid.0.i, %40
  %shr17.i = lshr i32 %36, 16
  %and18.i = and i32 %shr17.i, 3
  %or19.i = or i32 %or.i, %and18.i
  %conv20.i = trunc i32 %or19.i to i8
  %41 = ptrtoint ptr %29 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv20.i, ptr %29, align 1
  %shr22.i = lshr i32 %36, 8
  %conv24.i = trunc i32 %shr22.i to i8
  %42 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %conv24.i, ptr %30, align 1
  %conv28.i = trunc i32 %36 to i8
  %43 = ptrtoint ptr %31 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %conv28.i, ptr %31, align 1
  %44 = lshr i32 %36, 24
  %45 = ptrtoint ptr %22 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %22, align 4
  %47 = trunc i32 %44 to i8
  %48 = and i8 %47, 64
  %conv33.i = or i8 %46, %48
  %49 = ptrtoint ptr %32 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %conv33.i, ptr %32, align 1
  %data.i = getelementptr inbounds %struct.can_frame, ptr %21, i32 0, i32 5
  %conv36.i = zext i8 %46 to i32
  %50 = call ptr @memcpy(ptr %33, ptr %data.i, i32 %conv36.i)
  %model.i.i.i = getelementptr inbounds %struct.mcp251x_priv, ptr %27, i32 0, i32 3
  %51 = ptrtoint ptr %model.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %model.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9488, i32 %52)
  %cmp.i.not.i.i = icmp eq i32 %52, 9488
  br i1 %cmp.i.not.i.i, label %for.body.lr.ph.i.i, label %if.else.i.i

for.body.lr.ph.i.i:                               ; preds = %if.end
  %53 = getelementptr inbounds i8, ptr %t.i.i.i.i.i, i32 4
  %len1.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i.i.i, i32 0, i32 2
  %54 = getelementptr inbounds i8, ptr %msg.i.i.i.i.i.i, i32 8
  %prev.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i.i.i.i, i32 0, i32 1
  %resources.i.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i.i.i, i32 0, i32 10
  %prev.i2.i.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i.i.i, i32 0, i32 10, i32 1
  %transfer_list.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i.i.i, i32 0, i32 18
  %prev3.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i.i.i, i32 0, i32 18, i32 1
  %55 = add nuw nsw i32 %conv36.i, 5
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %mcp251x_write_reg.exit.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.05.i.i = phi i32 [ 1, %for.body.lr.ph.i.i ], [ %inc.i.i, %mcp251x_write_reg.exit.i.i.for.body.i.i_crit_edge ]
  %56 = trunc i32 %i.05.i.i to i8
  %conv.i.i = add i8 %56, 48
  %arrayidx.i.i = getelementptr i8, ptr %buf.i, i32 %i.05.i.i
  %57 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx.i.i, align 1
  %59 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %driver_data.i.i.i, align 4
  %spi_tx_buf.i.i.i = getelementptr inbounds %struct.mcp251x_priv, ptr %60, i32 0, i32 5
  %61 = ptrtoint ptr %spi_tx_buf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %spi_tx_buf.i.i.i, align 4
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 2, ptr %62, align 1
  %64 = load ptr, ptr %spi_tx_buf.i.i.i, align 4
  %arrayidx2.i.i.i = getelementptr i8, ptr %64, i32 1
  %65 = ptrtoint ptr %arrayidx2.i.i.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %conv.i.i, ptr %arrayidx2.i.i.i, align 1
  %66 = load ptr, ptr %spi_tx_buf.i.i.i, align 4
  %arrayidx4.i.i.i = getelementptr i8, ptr %66, i32 2
  %67 = ptrtoint ptr %arrayidx4.i.i.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %58, ptr %arrayidx4.i.i.i, align 1
  %68 = load ptr, ptr %driver_data.i.i.i, align 4
  %spi_tx_buf.i.i.i.i = getelementptr inbounds %struct.mcp251x_priv, ptr %68, i32 0, i32 5
  %69 = ptrtoint ptr %spi_tx_buf.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %spi_tx_buf.i.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i.i.i.i) #8
  %71 = call ptr @memset(ptr %53, i32 0, i32 92)
  %72 = ptrtoint ptr %t.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %70, ptr %t.i.i.i.i.i, align 4
  %73 = ptrtoint ptr %len1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 3, ptr %len1.i.i.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i.i.i.i) #8
  %74 = call ptr @memset(ptr %54, i32 0, i32 40)
  %75 = ptrtoint ptr %msg.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store volatile ptr %msg.i.i.i.i.i.i, ptr %msg.i.i.i.i.i.i, align 4
  %76 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %msg.i.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i.i.i.i, align 4
  %77 = ptrtoint ptr %resources.i.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store volatile ptr %resources.i.i.i.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i.i.i.i, align 4
  %78 = ptrtoint ptr %prev.i2.i.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %resources.i.i.i.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i.i.i.i, align 4
  %call.i.i.i.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i.i.i.i) #8
  br i1 %call.i.i.i.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i.i.i.i, label %for.body.i.i.spi_write.exit.i.i.i.i_crit_edge

for.body.i.i.spi_write.exit.i.i.i.i_crit_edge:    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_write.exit.i.i.i.i

if.end.i.i.i.i.i.i.i.i.i.i:                       ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %79 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %transfer_list.i.i.i.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i.i.i.i, align 4
  %80 = ptrtoint ptr %transfer_list.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %msg.i.i.i.i.i.i, ptr %transfer_list.i.i.i.i.i.i.i.i, align 4
  %81 = ptrtoint ptr %prev3.i.i.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %msg.i.i.i.i.i.i, ptr %prev3.i.i.i.i.i.i.i.i.i.i, align 4
  %82 = ptrtoint ptr %msg.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store volatile ptr %transfer_list.i.i.i.i.i.i.i.i, ptr %msg.i.i.i.i.i.i, align 4
  br label %spi_write.exit.i.i.i.i

spi_write.exit.i.i.i.i:                           ; preds = %if.end.i.i.i.i.i.i.i.i.i.i, %for.body.i.i.spi_write.exit.i.i.i.i_crit_edge
  %call.i.i.i.i.i.i = call i32 @spi_sync(ptr noundef %1, ptr noundef nonnull %msg.i.i.i.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %call.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %spi_write.exit.i.i.i.i.mcp251x_write_reg.exit.i.i_crit_edge, label %do.end.i.i.i.i

spi_write.exit.i.i.i.i.mcp251x_write_reg.exit.i.i_crit_edge: ; preds = %spi_write.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mcp251x_write_reg.exit.i.i

do.end.i.i.i.i:                                   ; preds = %spi_write.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.28, i32 noundef %call.i.i.i.i.i.i) #11
  br label %mcp251x_write_reg.exit.i.i

mcp251x_write_reg.exit.i.i:                       ; preds = %do.end.i.i.i.i, %spi_write.exit.i.i.i.i.mcp251x_write_reg.exit.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %i.05.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %i.05.i.i, %55
  br i1 %exitcond.not.i.i, label %mcp251x_write_reg.exit.i.i.mcp251x_hw_tx_frame.exit.i_crit_edge, label %mcp251x_write_reg.exit.i.i.for.body.i.i_crit_edge

mcp251x_write_reg.exit.i.i.for.body.i.i_crit_edge: ; preds = %mcp251x_write_reg.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

mcp251x_write_reg.exit.i.i.mcp251x_hw_tx_frame.exit.i_crit_edge: ; preds = %mcp251x_write_reg.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mcp251x_hw_tx_frame.exit.i

if.else.i.i:                                      ; preds = %if.end
  %spi_tx_buf.i.i = getelementptr inbounds %struct.mcp251x_priv, ptr %27, i32 0, i32 5
  %83 = ptrtoint ptr %spi_tx_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %spi_tx_buf.i.i, align 4
  %add5.i.i = add nuw nsw i32 %conv36.i, 6
  %85 = call ptr @memcpy(ptr %84, ptr %buf.i, i32 %add5.i.i)
  %86 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %driver_data.i.i.i, align 4
  %spi_tx_buf.i3.i.i = getelementptr inbounds %struct.mcp251x_priv, ptr %87, i32 0, i32 5
  %88 = ptrtoint ptr %spi_tx_buf.i3.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %spi_tx_buf.i3.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i.i.i) #8
  %90 = getelementptr inbounds i8, ptr %t.i.i.i.i, i32 4
  %91 = call ptr @memset(ptr %90, i32 0, i32 92)
  %92 = ptrtoint ptr %t.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %89, ptr %t.i.i.i.i, align 4
  %len1.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i.i, i32 0, i32 2
  %93 = ptrtoint ptr %len1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %add5.i.i, ptr %len1.i.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i.i.i) #8
  %94 = getelementptr inbounds i8, ptr %msg.i.i.i.i.i, i32 8
  %95 = call ptr @memset(ptr %94, i32 0, i32 40)
  %96 = ptrtoint ptr %msg.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store volatile ptr %msg.i.i.i.i.i, ptr %msg.i.i.i.i.i, align 4
  %prev.i.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i.i.i, i32 0, i32 1
  %97 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %msg.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i.i, i32 0, i32 10
  %98 = ptrtoint ptr %resources.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store volatile ptr %resources.i.i.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i.i, i32 0, i32 10, i32 1
  %99 = ptrtoint ptr %prev.i2.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %resources.i.i.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i.i.i) #8
  br i1 %call.i.i.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i.i.i, label %if.else.i.i.spi_write.exit.i.i.i_crit_edge

if.else.i.i.spi_write.exit.i.i.i_crit_edge:       ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_write.exit.i.i.i

if.end.i.i.i.i.i.i.i.i.i:                         ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %100 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %transfer_list.i.i.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i.i.i, align 4
  %101 = ptrtoint ptr %transfer_list.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %msg.i.i.i.i.i, ptr %transfer_list.i.i.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i.i, i32 0, i32 18, i32 1
  %102 = ptrtoint ptr %prev3.i.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %msg.i.i.i.i.i, ptr %prev3.i.i.i.i.i.i.i.i.i, align 4
  %103 = ptrtoint ptr %msg.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store volatile ptr %transfer_list.i.i.i.i.i.i.i, ptr %msg.i.i.i.i.i, align 4
  br label %spi_write.exit.i.i.i

spi_write.exit.i.i.i:                             ; preds = %if.end.i.i.i.i.i.i.i.i.i, %if.else.i.i.spi_write.exit.i.i.i_crit_edge
  %call.i.i.i.i.i = call i32 @spi_sync(ptr noundef %1, ptr noundef nonnull %msg.i.i.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %spi_write.exit.i.i.i.mcp251x_hw_tx_frame.exit.i_crit_edge, label %do.end.i.i.i

spi_write.exit.i.i.i.mcp251x_hw_tx_frame.exit.i_crit_edge: ; preds = %spi_write.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mcp251x_hw_tx_frame.exit.i

do.end.i.i.i:                                     ; preds = %spi_write.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.28, i32 noundef %call.i.i.i.i.i) #11
  br label %mcp251x_hw_tx_frame.exit.i

mcp251x_hw_tx_frame.exit.i:                       ; preds = %do.end.i.i.i, %spi_write.exit.i.i.i.mcp251x_hw_tx_frame.exit.i_crit_edge, %mcp251x_write_reg.exit.i.i.mcp251x_hw_tx_frame.exit.i_crit_edge
  %spi_tx_buf.i = getelementptr inbounds %struct.mcp251x_priv, ptr %27, i32 0, i32 5
  %104 = ptrtoint ptr %spi_tx_buf.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %spi_tx_buf.i, align 4
  %106 = ptrtoint ptr %105 to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 -127, ptr %105, align 1
  %spi44.i = getelementptr inbounds %struct.mcp251x_priv, ptr %27, i32 0, i32 2
  %107 = ptrtoint ptr %spi44.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %spi44.i, align 4
  %driver_data.i.i.i1.i = getelementptr inbounds %struct.device, ptr %108, i32 0, i32 8
  %109 = ptrtoint ptr %driver_data.i.i.i1.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %driver_data.i.i.i1.i, align 4
  %spi_tx_buf.i2.i = getelementptr inbounds %struct.mcp251x_priv, ptr %110, i32 0, i32 5
  %111 = ptrtoint ptr %spi_tx_buf.i2.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %spi_tx_buf.i2.i, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i.i) #8
  %113 = getelementptr inbounds i8, ptr %t.i.i.i, i32 4
  %114 = call ptr @memset(ptr %113, i32 0, i32 92)
  %115 = ptrtoint ptr %t.i.i.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %112, ptr %t.i.i.i, align 4
  %len1.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 2
  %116 = ptrtoint ptr %len1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 1, ptr %len1.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i.i) #8
  %117 = getelementptr inbounds i8, ptr %msg.i.i.i.i, i32 8
  %118 = call ptr @memset(ptr %117, i32 0, i32 40)
  %119 = ptrtoint ptr %msg.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store volatile ptr %msg.i.i.i.i, ptr %msg.i.i.i.i, align 4
  %prev.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i.i, i32 0, i32 1
  %120 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %msg.i.i.i.i, ptr %prev.i.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i, i32 0, i32 10
  %121 = ptrtoint ptr %resources.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store volatile ptr %resources.i.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i, i32 0, i32 10, i32 1
  %122 = ptrtoint ptr %prev.i2.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr %resources.i.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i.i, ptr noundef nonnull %msg.i.i.i.i) #8
  br i1 %call.i.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i.i, label %mcp251x_hw_tx_frame.exit.i.spi_write.exit.i.i_crit_edge

mcp251x_hw_tx_frame.exit.i.spi_write.exit.i.i_crit_edge: ; preds = %mcp251x_hw_tx_frame.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_write.exit.i.i

if.end.i.i.i.i.i.i.i.i:                           ; preds = %mcp251x_hw_tx_frame.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %123 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr %transfer_list.i.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i.i, align 4
  %124 = ptrtoint ptr %transfer_list.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr %msg.i.i.i.i, ptr %transfer_list.i.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 18, i32 1
  %125 = ptrtoint ptr %prev3.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr %msg.i.i.i.i, ptr %prev3.i.i.i.i.i.i.i.i, align 4
  %126 = ptrtoint ptr %msg.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store volatile ptr %transfer_list.i.i.i.i.i.i, ptr %msg.i.i.i.i, align 4
  br label %spi_write.exit.i.i

spi_write.exit.i.i:                               ; preds = %if.end.i.i.i.i.i.i.i.i, %mcp251x_hw_tx_frame.exit.i.spi_write.exit.i.i_crit_edge
  %call.i.i.i.i = call i32 @spi_sync(ptr noundef %108, ptr noundef nonnull %msg.i.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i, label %spi_write.exit.i.i.mcp251x_hw_tx.exit_crit_edge, label %do.end.i.i

spi_write.exit.i.i.mcp251x_hw_tx.exit_crit_edge:  ; preds = %spi_write.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mcp251x_hw_tx.exit

do.end.i.i:                                       ; preds = %spi_write.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %108, ptr noundef nonnull @.str.28, i32 noundef %call.i.i.i.i) #11
  br label %mcp251x_hw_tx.exit

mcp251x_hw_tx.exit:                               ; preds = %do.end.i.i, %spi_write.exit.i.i.mcp251x_hw_tx.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %buf.i) #8
  %tx_busy = getelementptr i8, ptr %ws, i32 100
  %127 = ptrtoint ptr %tx_busy to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 1, ptr %tx_busy, align 4
  %128 = ptrtoint ptr %tx_skb to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %tx_skb, align 4
  %call = call i32 @can_put_echo_skb(ptr noundef %129, ptr noundef %3, i32 noundef 0, i32 noundef 0) #8
  %130 = ptrtoint ptr %tx_skb to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr null, ptr %tx_skb, align 4
  br label %if.end11

if.end11:                                         ; preds = %mcp251x_hw_tx.exit, %mcp251x_clean.exit, %entry.if.end11_crit_edge
  call void @mutex_unlock(ptr noundef %mcp_lock) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mcp251x_restart_work_handler(ptr noundef %ws) #2 align 64 {
entry:
  %frame.i = alloca ptr, align 4
  %msg.i.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i.i = alloca %struct.spi_transfer, align 4
  %msg.i.i.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i.i.i = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %spi1 = getelementptr i8, ptr %ws, i32 -160
  %0 = ptrtoint ptr %spi1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spi1, align 4
  %net2 = getelementptr i8, ptr %ws, i32 -164
  %2 = ptrtoint ptr %net2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net2, align 4
  %mcp_lock = getelementptr i8, ptr %ws, i32 -152
  tail call void @mutex_lock_nested(ptr noundef %mcp_lock, i32 noundef 0) #8
  %after_suspend = getelementptr i8, ptr %ws, i32 48
  %4 = ptrtoint ptr %after_suspend to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %after_suspend, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.if.end23_crit_edge, label %if.then

entry.if.end23_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

if.then:                                          ; preds = %entry
  %and = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.then
  %call = tail call fastcc i32 @mcp251x_hw_reset(ptr noundef %1)
  tail call fastcc void @mcp251x_setup(ptr noundef %3, ptr noundef %1)
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i.i.i, align 4
  %reg_bfpctrl.i = getelementptr inbounds %struct.mcp251x_priv, ptr %7, i32 0, i32 19
  %8 = ptrtoint ptr %reg_bfpctrl.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %reg_bfpctrl.i, align 4
  %spi_tx_buf.i.i = getelementptr inbounds %struct.mcp251x_priv, ptr %7, i32 0, i32 5
  %10 = ptrtoint ptr %spi_tx_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %spi_tx_buf.i.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 2, ptr %11, align 1
  %13 = load ptr, ptr %spi_tx_buf.i.i, align 4
  %arrayidx2.i.i = getelementptr i8, ptr %13, i32 1
  %14 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 12, ptr %arrayidx2.i.i, align 1
  %15 = load ptr, ptr %spi_tx_buf.i.i, align 4
  %arrayidx4.i.i = getelementptr i8, ptr %15, i32 2
  %16 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %9, ptr %arrayidx4.i.i, align 1
  %17 = load ptr, ptr %driver_data.i.i.i, align 4
  %spi_tx_buf.i.i.i = getelementptr inbounds %struct.mcp251x_priv, ptr %17, i32 0, i32 5
  %18 = ptrtoint ptr %spi_tx_buf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %spi_tx_buf.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i.i.i) #8
  %20 = getelementptr inbounds i8, ptr %t.i.i.i.i, i32 4
  %21 = call ptr @memset(ptr %20, i32 0, i32 92)
  %22 = ptrtoint ptr %t.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %t.i.i.i.i, align 4
  %len1.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i.i, i32 0, i32 2
  %23 = ptrtoint ptr %len1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 3, ptr %len1.i.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i.i.i) #8
  %24 = getelementptr inbounds i8, ptr %msg.i.i.i.i.i, i32 8
  %25 = call ptr @memset(ptr %24, i32 0, i32 40)
  %26 = ptrtoint ptr %msg.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %msg.i.i.i.i.i, ptr %msg.i.i.i.i.i, align 4
  %prev.i.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i.i.i, i32 0, i32 1
  %27 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %msg.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i.i, i32 0, i32 10
  %28 = ptrtoint ptr %resources.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %resources.i.i.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i.i, i32 0, i32 10, i32 1
  %29 = ptrtoint ptr %prev.i2.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %resources.i.i.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i.i.i) #8
  br i1 %call.i.i.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i.i.i, label %if.then5.spi_write.exit.i.i.i_crit_edge

if.then5.spi_write.exit.i.i.i_crit_edge:          ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_write.exit.i.i.i

if.end.i.i.i.i.i.i.i.i.i:                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %transfer_list.i.i.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i.i.i, align 4
  %31 = ptrtoint ptr %transfer_list.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %msg.i.i.i.i.i, ptr %transfer_list.i.i.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i.i, i32 0, i32 18, i32 1
  %32 = ptrtoint ptr %prev3.i.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %msg.i.i.i.i.i, ptr %prev3.i.i.i.i.i.i.i.i.i, align 4
  %33 = ptrtoint ptr %msg.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %transfer_list.i.i.i.i.i.i.i, ptr %msg.i.i.i.i.i, align 4
  br label %spi_write.exit.i.i.i

spi_write.exit.i.i.i:                             ; preds = %if.end.i.i.i.i.i.i.i.i.i, %if.then5.spi_write.exit.i.i.i_crit_edge
  %call.i.i.i.i.i = call i32 @spi_sync(ptr noundef %1, ptr noundef nonnull %msg.i.i.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %spi_write.exit.i.i.i.if.end_crit_edge, label %do.end.i.i.i

spi_write.exit.i.i.i.if.end_crit_edge:            ; preds = %spi_write.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end.i.i.i:                                     ; preds = %spi_write.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.28, i32 noundef %call.i.i.i.i.i) #11
  br label %if.end

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %call7 = tail call fastcc i32 @mcp251x_hw_wake(ptr noundef %1)
  br label %if.end

if.end:                                           ; preds = %if.else, %do.end.i.i.i, %spi_write.exit.i.i.i.if.end_crit_edge
  %force_quit = getelementptr i8, ptr %ws, i32 44
  %34 = ptrtoint ptr %force_quit to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %force_quit, align 4
  %35 = ptrtoint ptr %after_suspend to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %after_suspend, align 4
  %and9 = and i32 %36, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.else13, label %if.then11

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call12 = call fastcc i32 @mcp251x_set_normal_mode(ptr noundef %1)
  br label %if.end21

if.else13:                                        ; preds = %if.end
  %and15 = and i32 %36, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.else19, label %if.then17

if.then17:                                        ; preds = %if.else13
  call void @netif_device_attach(ptr noundef %3) #8
  %tx_skb.i = getelementptr i8, ptr %3, i32 2728
  %37 = ptrtoint ptr %tx_skb.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %tx_skb.i, align 4
  %tobool.not.i = icmp eq ptr %38, null
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %if.then17.if.then.i_crit_edge

if.then17.if.then.i_crit_edge:                    ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %if.then17
  %tx_busy.i = getelementptr i8, ptr %3, i32 2836
  %39 = ptrtoint ptr %tx_busy.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %tx_busy.i, align 4, !range !139
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool1.not.i = icmp eq i8 %40, 0
  br i1 %tobool1.not.i, label %lor.lhs.false.i.if.end.i_crit_edge, label %lor.lhs.false.i.if.then.i_crit_edge

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

lor.lhs.false.i.if.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %if.then17.if.then.i_crit_edge
  %tx_errors.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 36, i32 5
  %41 = ptrtoint ptr %tx_errors.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %tx_errors.i, align 4
  %inc.i = add i32 %42, 1
  store i32 %inc.i, ptr %tx_errors.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %lor.lhs.false.i.if.end.i_crit_edge
  call void @consume_skb(ptr noundef %38) #8
  %tx_busy3.i = getelementptr i8, ptr %3, i32 2836
  %43 = ptrtoint ptr %tx_busy3.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %tx_busy3.i, align 4, !range !139
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool4.not.i = icmp eq i8 %44, 0
  br i1 %tobool4.not.i, label %if.end.i.mcp251x_clean.exit_crit_edge, label %if.then5.i

if.end.i.mcp251x_clean.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mcp251x_clean.exit

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %net6.i = getelementptr i8, ptr %3, i32 2616
  %45 = ptrtoint ptr %net6.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %net6.i, align 4
  call void @can_free_echo_skb(ptr noundef %46, i32 noundef 0, ptr noundef null) #8
  br label %mcp251x_clean.exit

mcp251x_clean.exit:                               ; preds = %if.then5.i, %if.end.i.mcp251x_clean.exit_crit_edge
  %47 = ptrtoint ptr %tx_skb.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr null, ptr %tx_skb.i, align 4
  %48 = ptrtoint ptr %tx_busy3.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 0, ptr %tx_busy3.i, align 4
  %call18 = call fastcc i32 @mcp251x_set_normal_mode(ptr noundef %1)
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 103
  %49 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %_tx.i.i, align 128
  call void @netif_tx_wake_queue(ptr noundef %50) #8
  br label %if.end21

if.else19:                                        ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @mcp251x_hw_sleep(ptr noundef %1)
  br label %if.end21

if.end21:                                         ; preds = %if.else19, %mcp251x_clean.exit, %if.then11
  %51 = ptrtoint ptr %after_suspend to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %after_suspend, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.end21, %entry.if.end23_crit_edge
  %restart_tx = getelementptr i8, ptr %ws, i32 52
  %52 = ptrtoint ptr %restart_tx to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %restart_tx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool24.not = icmp eq i32 %53, 0
  br i1 %tobool24.not, label %if.end23.if.end27_crit_edge, label %if.then25

if.end23.if.end27_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

if.then25:                                        ; preds = %if.end23
  %54 = ptrtoint ptr %restart_tx to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %restart_tx, align 4
  %driver_data.i.i.i53 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %55 = ptrtoint ptr %driver_data.i.i.i53 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %driver_data.i.i.i53, align 4
  %spi_tx_buf.i = getelementptr inbounds %struct.mcp251x_priv, ptr %56, i32 0, i32 5
  %57 = ptrtoint ptr %spi_tx_buf.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %spi_tx_buf.i, align 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 2, ptr %58, align 1
  %60 = load ptr, ptr %spi_tx_buf.i, align 4
  %arrayidx2.i = getelementptr i8, ptr %60, i32 1
  %61 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 48, ptr %arrayidx2.i, align 1
  %62 = load ptr, ptr %spi_tx_buf.i, align 4
  %arrayidx4.i = getelementptr i8, ptr %62, i32 2
  %63 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 0, ptr %arrayidx4.i, align 1
  %64 = load ptr, ptr %driver_data.i.i.i53, align 4
  %spi_tx_buf.i.i54 = getelementptr inbounds %struct.mcp251x_priv, ptr %64, i32 0, i32 5
  %65 = ptrtoint ptr %spi_tx_buf.i.i54 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %spi_tx_buf.i.i54, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i.i) #8
  %67 = getelementptr inbounds i8, ptr %t.i.i.i, i32 4
  %68 = call ptr @memset(ptr %67, i32 0, i32 92)
  %69 = ptrtoint ptr %t.i.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %66, ptr %t.i.i.i, align 4
  %len1.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 2
  %70 = ptrtoint ptr %len1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 3, ptr %len1.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i.i) #8
  %71 = getelementptr inbounds i8, ptr %msg.i.i.i.i, i32 8
  %72 = call ptr @memset(ptr %71, i32 0, i32 40)
  %73 = ptrtoint ptr %msg.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store volatile ptr %msg.i.i.i.i, ptr %msg.i.i.i.i, align 4
  %prev.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i.i, i32 0, i32 1
  %74 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %msg.i.i.i.i, ptr %prev.i.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i, i32 0, i32 10
  %75 = ptrtoint ptr %resources.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store volatile ptr %resources.i.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i, i32 0, i32 10, i32 1
  %76 = ptrtoint ptr %prev.i2.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %resources.i.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i.i, ptr noundef nonnull %msg.i.i.i.i) #8
  br i1 %call.i.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i.i, label %if.then25.spi_write.exit.i.i_crit_edge

if.then25.spi_write.exit.i.i_crit_edge:           ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_write.exit.i.i

if.end.i.i.i.i.i.i.i.i:                           ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #10
  %77 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %transfer_list.i.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i.i, align 4
  %78 = ptrtoint ptr %transfer_list.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %msg.i.i.i.i, ptr %transfer_list.i.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 18, i32 1
  %79 = ptrtoint ptr %prev3.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %msg.i.i.i.i, ptr %prev3.i.i.i.i.i.i.i.i, align 4
  %80 = ptrtoint ptr %msg.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store volatile ptr %transfer_list.i.i.i.i.i.i, ptr %msg.i.i.i.i, align 4
  br label %spi_write.exit.i.i

spi_write.exit.i.i:                               ; preds = %if.end.i.i.i.i.i.i.i.i, %if.then25.spi_write.exit.i.i_crit_edge
  %call.i.i.i.i = call i32 @spi_sync(ptr noundef %1, ptr noundef nonnull %msg.i.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i, label %spi_write.exit.i.i.mcp251x_write_reg.exit_crit_edge, label %do.end.i.i

spi_write.exit.i.i.mcp251x_write_reg.exit_crit_edge: ; preds = %spi_write.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mcp251x_write_reg.exit

do.end.i.i:                                       ; preds = %spi_write.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.28, i32 noundef %call.i.i.i.i) #11
  br label %mcp251x_write_reg.exit

mcp251x_write_reg.exit:                           ; preds = %do.end.i.i, %spi_write.exit.i.i.mcp251x_write_reg.exit_crit_edge
  %tx_skb.i55 = getelementptr i8, ptr %3, i32 2728
  %81 = ptrtoint ptr %tx_skb.i55 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %tx_skb.i55, align 4
  %tobool.not.i56 = icmp eq ptr %82, null
  br i1 %tobool.not.i56, label %lor.lhs.false.i59, label %mcp251x_write_reg.exit.if.then.i62_crit_edge

mcp251x_write_reg.exit.if.then.i62_crit_edge:     ; preds = %mcp251x_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i62

lor.lhs.false.i59:                                ; preds = %mcp251x_write_reg.exit
  %tx_busy.i57 = getelementptr i8, ptr %3, i32 2836
  %83 = ptrtoint ptr %tx_busy.i57 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %tx_busy.i57, align 4, !range !139
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %84)
  %tobool1.not.i58 = icmp eq i8 %84, 0
  br i1 %tobool1.not.i58, label %lor.lhs.false.i59.if.end.i65_crit_edge, label %lor.lhs.false.i59.if.then.i62_crit_edge

lor.lhs.false.i59.if.then.i62_crit_edge:          ; preds = %lor.lhs.false.i59
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i62

lor.lhs.false.i59.if.end.i65_crit_edge:           ; preds = %lor.lhs.false.i59
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i65

if.then.i62:                                      ; preds = %lor.lhs.false.i59.if.then.i62_crit_edge, %mcp251x_write_reg.exit.if.then.i62_crit_edge
  %tx_errors.i60 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 36, i32 5
  %85 = ptrtoint ptr %tx_errors.i60 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %tx_errors.i60, align 4
  %inc.i61 = add i32 %86, 1
  store i32 %inc.i61, ptr %tx_errors.i60, align 4
  br label %if.end.i65

if.end.i65:                                       ; preds = %if.then.i62, %lor.lhs.false.i59.if.end.i65_crit_edge
  call void @consume_skb(ptr noundef %82) #8
  %tx_busy3.i63 = getelementptr i8, ptr %3, i32 2836
  %87 = ptrtoint ptr %tx_busy3.i63 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %tx_busy3.i63, align 4, !range !139
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %88)
  %tobool4.not.i64 = icmp eq i8 %88, 0
  br i1 %tobool4.not.i64, label %if.end.i65.mcp251x_clean.exit68_crit_edge, label %if.then5.i67

if.end.i65.mcp251x_clean.exit68_crit_edge:        ; preds = %if.end.i65
  call void @__sanitizer_cov_trace_pc() #10
  br label %mcp251x_clean.exit68

if.then5.i67:                                     ; preds = %if.end.i65
  call void @__sanitizer_cov_trace_pc() #10
  %net6.i66 = getelementptr i8, ptr %3, i32 2616
  %89 = ptrtoint ptr %net6.i66 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %net6.i66, align 4
  call void @can_free_echo_skb(ptr noundef %90, i32 noundef 0, ptr noundef null) #8
  br label %mcp251x_clean.exit68

mcp251x_clean.exit68:                             ; preds = %if.then5.i67, %if.end.i65.mcp251x_clean.exit68_crit_edge
  %91 = ptrtoint ptr %tx_skb.i55 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr null, ptr %tx_skb.i55, align 4
  %92 = ptrtoint ptr %tx_busy3.i63 to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 0, ptr %tx_busy3.i63, align 4
  %_tx.i.i69 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 103
  %93 = ptrtoint ptr %_tx.i.i69 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %_tx.i.i69, align 128
  call void @netif_tx_wake_queue(ptr noundef %94) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %frame.i) #8
  %95 = ptrtoint ptr %frame.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr inttoptr (i32 -1 to ptr), ptr %frame.i, align 4, !annotation !140
  %call.i = call ptr @alloc_can_err_skb(ptr noundef %3, ptr noundef nonnull %frame.i) #8
  %tobool.not.i70 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i70, label %if.else.i, label %if.then.i71

if.then.i71:                                      ; preds = %mcp251x_clean.exit68
  call void @__sanitizer_cov_trace_pc() #10
  %96 = ptrtoint ptr %frame.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %frame.i, align 4
  %98 = ptrtoint ptr %97 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %97, align 8
  %or.i = or i32 %99, 256
  store i32 %or.i, ptr %97, align 8
  %100 = load ptr, ptr %frame.i, align 4
  %arrayidx.i = getelementptr %struct.can_frame, ptr %100, i32 0, i32 5, i32 1
  %101 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 0, ptr %arrayidx.i, align 1
  %call2.i = call i32 @netif_rx_ni(ptr noundef nonnull %call.i) #8
  br label %mcp251x_error_skb.exit

if.else.i:                                        ; preds = %mcp251x_clean.exit68
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %3, ptr noundef nonnull @.str.30) #11
  br label %mcp251x_error_skb.exit

mcp251x_error_skb.exit:                           ; preds = %if.else.i, %if.then.i71
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %frame.i) #8
  br label %if.end27

if.end27:                                         ; preds = %mcp251x_error_skb.exit, %if.end23.if.end27_crit_edge
  call void @mutex_unlock(ptr noundef %mcp_lock) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mcp251x_hw_probe(ptr noundef %spi) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @mcp251x_hw_reset(ptr noundef %spi)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc zeroext i8 @mcp251x_read_reg(ptr noundef %spi, i8 noundef zeroext 15)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mcp251x_hw_probe.__UNIQUE_ID_ddebug508, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mcp251x_hw_probe, %do.end)) #8
          to label %if.then7 [label %do.end], !srcloc !141

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %conv = zext i8 %call1 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mcp251x_hw_probe.__UNIQUE_ID_ddebug508, ptr noundef %spi, ptr noundef nonnull @.str.44, i32 noundef %conv) #8
  br label %do.end

do.end:                                           ; preds = %if.then7, %if.end
  %0 = and i8 %call1, 23
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %0)
  %cmp.not = icmp eq i8 %0, 7
  %. = select i1 %cmp.not, i32 0, i32 -19
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %., %do.end ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mcp251x_hw_sleep(ptr noundef %spi) unnamed_addr #2 align 64 {
entry:
  %msg.i.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i.i = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %spi_tx_buf.i = getelementptr inbounds %struct.mcp251x_priv, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %spi_tx_buf.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %spi_tx_buf.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 2, ptr %3, align 1
  %5 = load ptr, ptr %spi_tx_buf.i, align 4
  %arrayidx2.i = getelementptr i8, ptr %5, i32 1
  %6 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 15, ptr %arrayidx2.i, align 1
  %7 = load ptr, ptr %spi_tx_buf.i, align 4
  %arrayidx4.i = getelementptr i8, ptr %7, i32 2
  %8 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 32, ptr %arrayidx4.i, align 1
  %9 = load ptr, ptr %driver_data.i.i.i, align 4
  %spi_tx_buf.i.i = getelementptr inbounds %struct.mcp251x_priv, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %spi_tx_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %spi_tx_buf.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i.i) #8
  %12 = getelementptr inbounds i8, ptr %t.i.i.i, i32 4
  %13 = call ptr @memset(ptr %12, i32 0, i32 92)
  %14 = ptrtoint ptr %t.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %t.i.i.i, align 4
  %len1.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 2
  %15 = ptrtoint ptr %len1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 3, ptr %len1.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i.i) #8
  %16 = getelementptr inbounds i8, ptr %msg.i.i.i.i, i32 8
  %17 = call ptr @memset(ptr %16, i32 0, i32 40)
  %18 = ptrtoint ptr %msg.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %msg.i.i.i.i, ptr %msg.i.i.i.i, align 4
  %prev.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i.i, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %msg.i.i.i.i, ptr %prev.i.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i, i32 0, i32 10
  %20 = ptrtoint ptr %resources.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %resources.i.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i, i32 0, i32 10, i32 1
  %21 = ptrtoint ptr %prev.i2.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %resources.i.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i.i, ptr noundef nonnull %msg.i.i.i.i) #8
  br i1 %call.i.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i.i, label %entry.spi_write.exit.i.i_crit_edge

entry.spi_write.exit.i.i_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_write.exit.i.i

if.end.i.i.i.i.i.i.i.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %transfer_list.i.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i.i, align 4
  %23 = ptrtoint ptr %transfer_list.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %msg.i.i.i.i, ptr %transfer_list.i.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 18, i32 1
  %24 = ptrtoint ptr %prev3.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %msg.i.i.i.i, ptr %prev3.i.i.i.i.i.i.i.i, align 4
  %25 = ptrtoint ptr %msg.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %transfer_list.i.i.i.i.i.i, ptr %msg.i.i.i.i, align 4
  br label %spi_write.exit.i.i

spi_write.exit.i.i:                               ; preds = %if.end.i.i.i.i.i.i.i.i, %entry.spi_write.exit.i.i_crit_edge
  %call.i.i.i.i = call i32 @spi_sync(ptr noundef %spi, ptr noundef nonnull %msg.i.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i, label %spi_write.exit.i.i.mcp251x_write_reg.exit_crit_edge, label %do.end.i.i

spi_write.exit.i.i.mcp251x_write_reg.exit_crit_edge: ; preds = %spi_write.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mcp251x_write_reg.exit

do.end.i.i:                                       ; preds = %spi_write.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.28, i32 noundef %call.i.i.i.i) #11
  br label %mcp251x_write_reg.exit

mcp251x_write_reg.exit:                           ; preds = %do.end.i.i, %spi_write.exit.i.i.mcp251x_write_reg.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_candev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mcp251x_gpio_setup(ptr noundef %priv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %spi = getelementptr inbounds %struct.mcp251x_priv, ptr %priv, i32 0, i32 2
  %0 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spi, align 4
  %call = tail call zeroext i1 @device_property_present(ptr noundef %1, ptr noundef nonnull @.str.45) #8
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %gpio1 = getelementptr inbounds %struct.mcp251x_priv, ptr %priv, i32 0, i32 18
  %2 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %spi, align 4
  %modalias = getelementptr inbounds %struct.spi_device, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %gpio1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %modalias, ptr %gpio1, align 4
  %parent = getelementptr inbounds %struct.mcp251x_priv, ptr %priv, i32 0, i32 18, i32 2
  %5 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %3, ptr %parent, align 4
  %owner = getelementptr inbounds %struct.mcp251x_priv, ptr %priv, i32 0, i32 18, i32 4
  %6 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %owner, align 4
  %request = getelementptr inbounds %struct.mcp251x_priv, ptr %priv, i32 0, i32 18, i32 5
  %7 = ptrtoint ptr %request to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @mcp251x_gpio_request, ptr %request, align 4
  %free = getelementptr inbounds %struct.mcp251x_priv, ptr %priv, i32 0, i32 18, i32 6
  %8 = ptrtoint ptr %free to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @mcp251x_gpio_free, ptr %free, align 4
  %get_direction = getelementptr inbounds %struct.mcp251x_priv, ptr %priv, i32 0, i32 18, i32 7
  %9 = ptrtoint ptr %get_direction to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @mcp251x_gpio_get_direction, ptr %get_direction, align 4
  %get = getelementptr inbounds %struct.mcp251x_priv, ptr %priv, i32 0, i32 18, i32 10
  %10 = ptrtoint ptr %get to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @mcp251x_gpio_get, ptr %get, align 4
  %get_multiple = getelementptr inbounds %struct.mcp251x_priv, ptr %priv, i32 0, i32 18, i32 11
  %11 = ptrtoint ptr %get_multiple to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @mcp251x_gpio_get_multiple, ptr %get_multiple, align 4
  %set = getelementptr inbounds %struct.mcp251x_priv, ptr %priv, i32 0, i32 18, i32 12
  %12 = ptrtoint ptr %set to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @mcp251x_gpio_set, ptr %set, align 4
  %set_multiple = getelementptr inbounds %struct.mcp251x_priv, ptr %priv, i32 0, i32 18, i32 13
  %13 = ptrtoint ptr %set_multiple to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @mcp251x_gpio_set_multiple, ptr %set_multiple, align 4
  %base = getelementptr inbounds %struct.mcp251x_priv, ptr %priv, i32 0, i32 18, i32 19
  %14 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %base, align 4
  %ngpio = getelementptr inbounds %struct.mcp251x_priv, ptr %priv, i32 0, i32 18, i32 20
  %15 = ptrtoint ptr %ngpio to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 5, ptr %ngpio, align 4
  %names = getelementptr inbounds %struct.mcp251x_priv, ptr %priv, i32 0, i32 18, i32 22
  %16 = ptrtoint ptr %names to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @mcp251x_gpio_names, ptr %names, align 4
  %can_sleep = getelementptr inbounds %struct.mcp251x_priv, ptr %priv, i32 0, i32 18, i32 23
  %17 = ptrtoint ptr %can_sleep to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %can_sleep, align 4
  %call7 = tail call i32 @devm_gpiochip_add_data_with_key(ptr noundef %3, ptr noundef %gpio1, ptr noundef %priv, ptr noundef nonnull @mcp251x_gpio_setup.lock_key, ptr noundef nonnull @mcp251x_gpio_setup.request_key) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_candev(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mcp251x_open(ptr noundef %net) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %net, i32 2304
  %spi1 = getelementptr i8, ptr %net, i32 2620
  %0 = ptrtoint ptr %spi1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spi1, align 4
  %call2 = tail call i32 @open_candev(ptr noundef %net) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.19) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %mcp_lock = getelementptr i8, ptr %net, i32 2628
  tail call void @mutex_lock_nested(ptr noundef %mcp_lock, i32 noundef 0) #8
  %transceiver = getelementptr i8, ptr %net, i32 2844
  %2 = ptrtoint ptr %transceiver to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %transceiver, align 4
  %tobool.not.i.i = icmp eq ptr %3, null
  %cmp.i.i = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i, %cmp.i.i
  br i1 %spec.select.i.i, label %if.end.mcp251x_power_enable.exit_crit_edge, label %if.end.i

if.end.mcp251x_power_enable.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %mcp251x_power_enable.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i = tail call i32 @regulator_enable(ptr noundef nonnull %3) #8
  br label %mcp251x_power_enable.exit

mcp251x_power_enable.exit:                        ; preds = %if.end.i, %if.end.mcp251x_power_enable.exit_crit_edge
  %force_quit = getelementptr i8, ptr %net, i32 2824
  %4 = ptrtoint ptr %force_quit to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %force_quit, align 4
  %tx_skb = getelementptr i8, ptr %net, i32 2728
  %5 = ptrtoint ptr %tx_skb to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %tx_skb, align 4
  %tx_busy = getelementptr i8, ptr %net, i32 2836
  %6 = ptrtoint ptr %tx_busy to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %tx_busy, align 4
  %call5 = tail call ptr @dev_fwnode(ptr noundef %1) #8
  %tobool6.not = icmp eq ptr %call5, null
  %spec.select = select i1 %tobool6.not, i32 8194, i32 8192
  %irq = getelementptr inbounds %struct.spi_device, ptr %1, i32 0, i32 8
  %7 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %irq, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %if.end.i72, label %mcp251x_power_enable.exit.dev_name.exit_crit_edge

mcp251x_power_enable.exit.dev_name.exit_crit_edge: ; preds = %mcp251x_power_enable.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit

if.end.i72:                                       ; preds = %mcp251x_power_enable.exit
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i72, %mcp251x_power_enable.exit.dev_name.exit_crit_edge
  %retval.0.i73 = phi ptr [ %12, %if.end.i72 ], [ %10, %mcp251x_power_enable.exit.dev_name.exit_crit_edge ]
  %call11 = tail call i32 @request_threaded_irq(i32 noundef %8, ptr noundef null, ptr noundef nonnull @mcp251x_can_ist, i32 noundef %spec.select, ptr noundef %retval.0.i73, ptr noundef %add.ptr.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end19, label %do.end16

do.end16:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %irq, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.22, i32 noundef %14) #11
  br label %out_close

if.end19:                                         ; preds = %dev_name.exit
  %call20 = tail call fastcc i32 @mcp251x_hw_wake(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %if.end19.out_free_irq_crit_edge

if.end19.out_free_irq_crit_edge:                  ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free_irq

if.end23:                                         ; preds = %if.end19
  tail call fastcc void @mcp251x_setup(ptr noundef %net, ptr noundef %1)
  %call28 = tail call fastcc i32 @mcp251x_set_normal_mode(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end31, label %if.end23.out_free_irq_crit_edge

if.end23.out_free_irq_crit_edge:                  ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free_irq

if.end31:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %net, i32 0, i32 103
  %15 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %16) #8
  tail call void @mutex_unlock(ptr noundef %mcp_lock) #8
  br label %cleanup

out_free_irq:                                     ; preds = %if.end23.out_free_irq_crit_edge, %if.end19.out_free_irq_crit_edge
  %ret.0 = phi i32 [ %call20, %if.end19.out_free_irq_crit_edge ], [ %call28, %if.end23.out_free_irq_crit_edge ]
  %17 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %irq, align 4
  %call34 = tail call ptr @free_irq(i32 noundef %18, ptr noundef %add.ptr.i) #8
  tail call fastcc void @mcp251x_hw_sleep(ptr noundef %1)
  br label %out_close

out_close:                                        ; preds = %out_free_irq, %do.end16
  %ret.1 = phi i32 [ %call11, %do.end16 ], [ %ret.0, %out_free_irq ]
  %19 = ptrtoint ptr %transceiver to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %transceiver, align 4
  %tobool.not.i.i74 = icmp eq ptr %20, null
  %cmp.i.i75 = icmp ugt ptr %20, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i76 = or i1 %tobool.not.i.i74, %cmp.i.i75
  br i1 %spec.select.i.i76, label %out_close.mcp251x_power_enable.exit79_crit_edge, label %if.end.i77

out_close.mcp251x_power_enable.exit79_crit_edge:  ; preds = %out_close
  call void @__sanitizer_cov_trace_pc() #10
  br label %mcp251x_power_enable.exit79

if.end.i77:                                       ; preds = %out_close
  call void @__sanitizer_cov_trace_pc() #10
  %call3.i = tail call i32 @regulator_disable(ptr noundef nonnull %20) #8
  br label %mcp251x_power_enable.exit79

mcp251x_power_enable.exit79:                      ; preds = %if.end.i77, %out_close.mcp251x_power_enable.exit79_crit_edge
  tail call void @close_candev(ptr noundef %net) #8
  tail call void @mutex_unlock(ptr noundef %mcp_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %mcp251x_power_enable.exit79, %if.end31, %do.end
  %retval.0 = phi i32 [ %call2, %do.end ], [ %ret.1, %mcp251x_power_enable.exit79 ], [ 0, %if.end31 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mcp251x_stop(ptr noundef %net) #2 align 64 {
entry:
  %msg.i.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i.i = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %net, i32 2304
  %spi1 = getelementptr i8, ptr %net, i32 2620
  %0 = ptrtoint ptr %spi1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spi1, align 4
  tail call void @close_candev(ptr noundef %net) #8
  %force_quit = getelementptr i8, ptr %net, i32 2824
  %2 = ptrtoint ptr %force_quit to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %force_quit, align 4
  %irq = getelementptr inbounds %struct.spi_device, ptr %1, i32 0, i32 8
  %3 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %irq, align 4
  %call2 = tail call ptr @free_irq(i32 noundef %4, ptr noundef %add.ptr.i) #8
  %mcp_lock = getelementptr i8, ptr %net, i32 2628
  tail call void @mutex_lock_nested(ptr noundef %mcp_lock, i32 noundef 0) #8
  tail call fastcc void @mcp251x_write_2regs(ptr noundef %1, i8 noundef zeroext 0, i8 noundef zeroext 0)
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %5 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %driver_data.i.i.i, align 4
  %spi_tx_buf.i = getelementptr inbounds %struct.mcp251x_priv, ptr %6, i32 0, i32 5
  %7 = ptrtoint ptr %spi_tx_buf.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %spi_tx_buf.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 2, ptr %8, align 1
  %10 = load ptr, ptr %spi_tx_buf.i, align 4
  %arrayidx2.i = getelementptr i8, ptr %10, i32 1
  %11 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 48, ptr %arrayidx2.i, align 1
  %12 = load ptr, ptr %spi_tx_buf.i, align 4
  %arrayidx4.i = getelementptr i8, ptr %12, i32 2
  %13 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %arrayidx4.i, align 1
  %14 = load ptr, ptr %driver_data.i.i.i, align 4
  %spi_tx_buf.i.i = getelementptr inbounds %struct.mcp251x_priv, ptr %14, i32 0, i32 5
  %15 = ptrtoint ptr %spi_tx_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %spi_tx_buf.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i.i) #8
  %17 = getelementptr inbounds i8, ptr %t.i.i.i, i32 4
  %18 = call ptr @memset(ptr %17, i32 0, i32 92)
  %19 = ptrtoint ptr %t.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %t.i.i.i, align 4
  %len1.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 2
  %20 = ptrtoint ptr %len1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 3, ptr %len1.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i.i) #8
  %21 = getelementptr inbounds i8, ptr %msg.i.i.i.i, i32 8
  %22 = call ptr @memset(ptr %21, i32 0, i32 40)
  %23 = ptrtoint ptr %msg.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %msg.i.i.i.i, ptr %msg.i.i.i.i, align 4
  %prev.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i.i, i32 0, i32 1
  %24 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %msg.i.i.i.i, ptr %prev.i.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i, i32 0, i32 10
  %25 = ptrtoint ptr %resources.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %resources.i.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i, i32 0, i32 10, i32 1
  %26 = ptrtoint ptr %prev.i2.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %resources.i.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i.i, ptr noundef nonnull %msg.i.i.i.i) #8
  br i1 %call.i.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i.i, label %entry.spi_write.exit.i.i_crit_edge

entry.spi_write.exit.i.i_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_write.exit.i.i

if.end.i.i.i.i.i.i.i.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %transfer_list.i.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i.i, align 4
  %28 = ptrtoint ptr %transfer_list.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %msg.i.i.i.i, ptr %transfer_list.i.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 18, i32 1
  %29 = ptrtoint ptr %prev3.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %msg.i.i.i.i, ptr %prev3.i.i.i.i.i.i.i.i, align 4
  %30 = ptrtoint ptr %msg.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %transfer_list.i.i.i.i.i.i, ptr %msg.i.i.i.i, align 4
  br label %spi_write.exit.i.i

spi_write.exit.i.i:                               ; preds = %if.end.i.i.i.i.i.i.i.i, %entry.spi_write.exit.i.i_crit_edge
  %call.i.i.i.i = call i32 @spi_sync(ptr noundef %1, ptr noundef nonnull %msg.i.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i, label %spi_write.exit.i.i.mcp251x_write_reg.exit_crit_edge, label %do.end.i.i

spi_write.exit.i.i.mcp251x_write_reg.exit_crit_edge: ; preds = %spi_write.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mcp251x_write_reg.exit

do.end.i.i:                                       ; preds = %spi_write.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.28, i32 noundef %call.i.i.i.i) #11
  br label %mcp251x_write_reg.exit

mcp251x_write_reg.exit:                           ; preds = %do.end.i.i, %spi_write.exit.i.i.mcp251x_write_reg.exit_crit_edge
  %tx_skb.i = getelementptr i8, ptr %net, i32 2728
  %31 = ptrtoint ptr %tx_skb.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %tx_skb.i, align 4
  %tobool.not.i = icmp eq ptr %32, null
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %mcp251x_write_reg.exit.if.then.i_crit_edge

mcp251x_write_reg.exit.if.then.i_crit_edge:       ; preds = %mcp251x_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %mcp251x_write_reg.exit
  %tx_busy.i = getelementptr i8, ptr %net, i32 2836
  %33 = ptrtoint ptr %tx_busy.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %tx_busy.i, align 4, !range !139
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool1.not.i = icmp eq i8 %34, 0
  br i1 %tobool1.not.i, label %lor.lhs.false.i.if.end.i_crit_edge, label %lor.lhs.false.i.if.then.i_crit_edge

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

lor.lhs.false.i.if.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %mcp251x_write_reg.exit.if.then.i_crit_edge
  %tx_errors.i = getelementptr inbounds %struct.net_device, ptr %net, i32 0, i32 36, i32 5
  %35 = ptrtoint ptr %tx_errors.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %tx_errors.i, align 4
  %inc.i = add i32 %36, 1
  store i32 %inc.i, ptr %tx_errors.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %lor.lhs.false.i.if.end.i_crit_edge
  call void @consume_skb(ptr noundef %32) #8
  %tx_busy3.i = getelementptr i8, ptr %net, i32 2836
  %37 = ptrtoint ptr %tx_busy3.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %tx_busy3.i, align 4, !range !139
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool4.not.i = icmp eq i8 %38, 0
  br i1 %tobool4.not.i, label %if.end.i.mcp251x_clean.exit_crit_edge, label %if.then5.i

if.end.i.mcp251x_clean.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mcp251x_clean.exit

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %net6.i = getelementptr i8, ptr %net, i32 2616
  %39 = ptrtoint ptr %net6.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %net6.i, align 4
  call void @can_free_echo_skb(ptr noundef %40, i32 noundef 0, ptr noundef null) #8
  br label %mcp251x_clean.exit

mcp251x_clean.exit:                               ; preds = %if.then5.i, %if.end.i.mcp251x_clean.exit_crit_edge
  %41 = ptrtoint ptr %tx_skb.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %tx_skb.i, align 4
  %42 = ptrtoint ptr %tx_busy3.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %tx_busy3.i, align 4
  call fastcc void @mcp251x_hw_sleep(ptr noundef %1)
  %transceiver = getelementptr i8, ptr %net, i32 2844
  %43 = ptrtoint ptr %transceiver to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %transceiver, align 4
  %tobool.not.i.i17 = icmp eq ptr %44, null
  %cmp.i.i = icmp ugt ptr %44, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i17, %cmp.i.i
  br i1 %spec.select.i.i, label %mcp251x_clean.exit.mcp251x_power_enable.exit_crit_edge, label %if.end.i18

mcp251x_clean.exit.mcp251x_power_enable.exit_crit_edge: ; preds = %mcp251x_clean.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %mcp251x_power_enable.exit

if.end.i18:                                       ; preds = %mcp251x_clean.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call3.i = call i32 @regulator_disable(ptr noundef nonnull %44) #8
  br label %mcp251x_power_enable.exit

mcp251x_power_enable.exit:                        ; preds = %if.end.i18, %mcp251x_clean.exit.mcp251x_power_enable.exit_crit_edge
  %state = getelementptr i8, ptr %net, i32 2472
  %45 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 4, ptr %state, align 4
  call void @mutex_unlock(ptr noundef %mcp_lock) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mcp251x_hard_start_xmit(ptr noundef %skb, ptr noundef %net) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %spi1 = getelementptr i8, ptr %net, i32 2620
  %0 = ptrtoint ptr %spi1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spi1, align 4
  %tx_skb = getelementptr i8, ptr %net, i32 2728
  %2 = ptrtoint ptr %tx_skb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tx_skb, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %lor.lhs.false, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %tx_busy = getelementptr i8, ptr %net, i32 2836
  %4 = ptrtoint ptr %tx_busy to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %tx_busy, align 4, !range !139
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool2.not = icmp eq i8 %5, 0
  br i1 %tobool2.not, label %if.end, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1, ptr noundef nonnull @.str.37) #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %6 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data.i, align 4
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %8 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %protocol.i, align 8
  %10 = zext i16 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.51)
  switch i16 %9, label %if.end.can_dropped_invalid_skb.exit_crit_edge [
    i16 12, label %if.then.i
    i16 13, label %if.then14.i
  ]

if.end.can_dropped_invalid_skb.exit_crit_edge:    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %can_dropped_invalid_skb.exit

if.then.i:                                        ; preds = %if.end
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %11 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %12)
  %cmp2.not.i = icmp eq i32 %12, 16
  br i1 %cmp2.not.i, label %lor.rhs.i, label %if.then.i.can_dropped_invalid_skb.exit_crit_edge, !prof !142

if.then.i.can_dropped_invalid_skb.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %can_dropped_invalid_skb.exit

lor.rhs.i:                                        ; preds = %if.then.i
  %len4.i = getelementptr inbounds %struct.canfd_frame, ptr %7, i32 0, i32 1
  %13 = ptrtoint ptr %len4.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %len4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %14)
  %cmp6.i = icmp ugt i8 %14, 8
  br i1 %cmp6.i, label %lor.rhs.i.can_dropped_invalid_skb.exit_crit_edge, label %lor.rhs.i.if.end34.i_crit_edge, !prof !143

lor.rhs.i.if.end34.i_crit_edge:                   ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34.i

lor.rhs.i.can_dropped_invalid_skb.exit_crit_edge: ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %can_dropped_invalid_skb.exit

if.then14.i:                                      ; preds = %if.end
  %len15.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %15 = ptrtoint ptr %len15.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %len15.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 72, i32 %16)
  %cmp16.not.i = icmp eq i32 %16, 72
  br i1 %cmp16.not.i, label %lor.rhs18.i, label %if.then14.i.can_dropped_invalid_skb.exit_crit_edge, !prof !142

if.then14.i.can_dropped_invalid_skb.exit_crit_edge: ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %can_dropped_invalid_skb.exit

lor.rhs18.i:                                      ; preds = %if.then14.i
  %len19.i = getelementptr inbounds %struct.canfd_frame, ptr %7, i32 0, i32 1
  %17 = ptrtoint ptr %len19.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %len19.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %18)
  %cmp21.i = icmp ugt i8 %18, 64
  br i1 %cmp21.i, label %lor.rhs18.i.can_dropped_invalid_skb.exit_crit_edge, label %lor.rhs18.i.if.end34.i_crit_edge, !prof !143

lor.rhs18.i.if.end34.i_crit_edge:                 ; preds = %lor.rhs18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34.i

lor.rhs18.i.can_dropped_invalid_skb.exit_crit_edge: ; preds = %lor.rhs18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %can_dropped_invalid_skb.exit

if.end34.i:                                       ; preds = %lor.rhs18.i.if.end34.i_crit_edge, %lor.rhs.i.if.end34.i_crit_edge
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %19 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %head.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %7 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %20 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %sub.ptr.sub.i.i.i)
  %cmp.i.i = icmp ult i32 %sub.ptr.sub.i.i.i, 16
  br i1 %cmp.i.i, label %land.rhs.i.i, label %if.end37.i.i

land.rhs.i.i:                                     ; preds = %if.end34.i
  %.b70.i.i = load i1, ptr @can_skb_headroom_valid.__already_done, align 1
  br i1 %.b70.i.i, label %land.rhs.i.i.can_dropped_invalid_skb.exit_crit_edge, label %if.then.i.i, !prof !142

land.rhs.i.i.can_dropped_invalid_skb.exit_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %can_dropped_invalid_skb.exit

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @can_skb_headroom_valid.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.40, i32 noundef 104, i32 noundef 9, ptr noundef null) #8
  br label %can_dropped_invalid_skb.exit

if.end37.i.i:                                     ; preds = %if.end34.i
  %ip_summed.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %21 = ptrtoint ptr %ip_summed.i.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %bf.load.i.i = load i16, ptr %ip_summed.i.i, align 8
  %22 = and i16 %bf.load.i.i, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %cmp38.i.i = icmp eq i16 %22, 0
  br i1 %cmp38.i.i, label %if.then40.i.i, label %if.end37.i.i.if.end5_crit_edge

if.end37.i.i.if.end5_crit_edge:                   ; preds = %if.end37.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.then40.i.i:                                    ; preds = %if.end37.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %ifindex.i.i = getelementptr inbounds %struct.net_device, ptr %net, i32 0, i32 17
  %23 = ptrtoint ptr %ifindex.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ifindex.i.i, align 4
  %25 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %20, align 8
  %26 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %head.i.i.i, align 8
  %skbcnt.i.i = getelementptr inbounds %struct.can_skb_priv, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %skbcnt.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %skbcnt.i.i, align 4
  %29 = ptrtoint ptr %ip_summed.i.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %bf.load45.i.i = load i16, ptr %ip_summed.i.i, align 8
  %bf.clear46.i.i = and i16 %bf.load45.i.i, -1537
  %bf.set.i.i = or i16 %bf.clear46.i.i, 512
  store i16 %bf.set.i.i, ptr %ip_summed.i.i, align 8
  %flags.i.i = getelementptr inbounds %struct.net_device, ptr %net, i32 0, i32 14
  %30 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %flags.i.i, align 8
  %and.i.i = and i32 %31, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool47.not.i.i = icmp eq i32 %and.i.i, 0
  %bf.clear54.i.i = and i16 %bf.set.i.i, 7167
  %bf.set51.i.i = or i16 %bf.clear54.i.i, -24576
  %storemerge.i.i = select i1 %tobool47.not.i.i, i16 %bf.clear54.i.i, i16 %bf.set51.i.i
  %32 = ptrtoint ptr %ip_summed.i.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %storemerge.i.i, ptr %ip_summed.i.i, align 8
  %33 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %data.i, align 4
  %35 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %head.i.i.i, align 8
  %sub.ptr.lhs.cast.i76.i.i = ptrtoint ptr %34 to i32
  %sub.ptr.rhs.cast.i77.i.i = ptrtoint ptr %36 to i32
  %sub.ptr.sub.i78.i.i = sub i32 %sub.ptr.lhs.cast.i76.i.i, %sub.ptr.rhs.cast.i77.i.i
  %conv.i.i.i = trunc i32 %sub.ptr.sub.i78.i.i to i16
  %mac_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %37 = ptrtoint ptr %mac_header.i.i.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %conv.i.i.i, ptr %mac_header.i.i.i, align 2
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %38 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %conv.i.i.i, ptr %network_header.i.i.i, align 4
  %transport_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %39 = ptrtoint ptr %transport_header.i.i.i to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %conv.i.i.i, ptr %transport_header.i.i.i, align 2
  br label %if.end5

can_dropped_invalid_skb.exit:                     ; preds = %if.then.i.i, %land.rhs.i.i.can_dropped_invalid_skb.exit_crit_edge, %lor.rhs18.i.can_dropped_invalid_skb.exit_crit_edge, %if.then14.i.can_dropped_invalid_skb.exit_crit_edge, %lor.rhs.i.can_dropped_invalid_skb.exit_crit_edge, %if.then.i.can_dropped_invalid_skb.exit_crit_edge, %if.end.can_dropped_invalid_skb.exit_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #8
  %tx_dropped.i = getelementptr inbounds %struct.net_device, ptr %net, i32 0, i32 36, i32 7
  %40 = ptrtoint ptr %tx_dropped.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %tx_dropped.i, align 4
  %inc.i = add i32 %41, 1
  store i32 %inc.i, ptr %tx_dropped.i, align 4
  br label %cleanup

if.end5:                                          ; preds = %if.then40.i.i, %if.end37.i.i.if.end5_crit_edge
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %net, i32 0, i32 103
  %42 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %43, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #8
  %44 = ptrtoint ptr %tx_skb to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %skb, ptr %tx_skb, align 4
  %wq = getelementptr i8, ptr %net, i32 2732
  %45 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %wq, align 4
  %tx_work = getelementptr i8, ptr %net, i32 2736
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %46, ptr noundef %tx_work) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %can_dropped_invalid_skb.exit, %do.end
  %retval.0 = phi i32 [ 16, %do.end ], [ 0, %if.end5 ], [ 0, %can_dropped_invalid_skb.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @can_change_mtu(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @open_candev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_fwnode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mcp251x_can_ist(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  %frame.i = alloca ptr, align 4
  %msg.i.i.i.i256 = alloca %struct.spi_message, align 4
  %t.i.i.i257 = alloca %struct.spi_transfer, align 4
  %msg.i.i.i.i235 = alloca %struct.spi_message, align 4
  %t.i.i.i236 = alloca %struct.spi_transfer, align 4
  %msg.i.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i.i = alloca %struct.spi_transfer, align 4
  %t.i.i = alloca %struct.spi_transfer, align 4
  %m.i.i = alloca %struct.spi_message, align 4
  %val.i = alloca [2 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %spi1 = getelementptr inbounds %struct.mcp251x_priv, ptr %dev_id, i32 0, i32 2
  %0 = ptrtoint ptr %spi1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spi1, align 4
  %net2 = getelementptr inbounds %struct.mcp251x_priv, ptr %dev_id, i32 0, i32 1
  %2 = ptrtoint ptr %net2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net2, align 4
  %mcp_lock = getelementptr inbounds %struct.mcp251x_priv, ptr %dev_id, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %mcp_lock, i32 noundef 0) #8
  %force_quit = getelementptr inbounds %struct.mcp251x_priv, ptr %dev_id, i32 0, i32 11
  %4 = ptrtoint ptr %force_quit to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %force_quit, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not292 = icmp eq i32 %5, 0
  br i1 %tobool.not292, label %while.body.lr.ph, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %controller.i = getelementptr inbounds %struct.spi_device, ptr %1, i32 0, i32 1
  %arrayidx6.i = getelementptr inbounds [2 x i8], ptr %val.i, i32 0, i32 1
  %6 = getelementptr inbounds i8, ptr %t.i.i, i32 12
  %rx_buf.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 1
  %len1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 2
  %7 = getelementptr inbounds i8, ptr %m.i.i, i32 8
  %prev.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %m.i.i, i32 0, i32 1
  %resources.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %m.i.i, i32 0, i32 10
  %prev.i2.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %m.i.i, i32 0, i32 10, i32 1
  %transfer_list.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18
  %prev3.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18, i32 1
  %8 = getelementptr inbounds i8, ptr %t.i.i.i, i32 4
  %len1.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 2
  %9 = getelementptr inbounds i8, ptr %msg.i.i.i.i, i32 8
  %prev.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i.i, i32 0, i32 1
  %resources.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i, i32 0, i32 10
  %prev.i2.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i, i32 0, i32 10, i32 1
  %transfer_list.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 18
  %prev3.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 18, i32 1
  %10 = getelementptr inbounds i8, ptr %t.i.i.i236, i32 4
  %len1.i.i.i243 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i236, i32 0, i32 2
  %11 = getelementptr inbounds i8, ptr %msg.i.i.i.i235, i32 8
  %prev.i.i.i.i.i.i.i.i244 = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i.i235, i32 0, i32 1
  %resources.i.i.i.i.i.i.i245 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i235, i32 0, i32 10
  %prev.i2.i.i.i.i.i.i.i246 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i235, i32 0, i32 10, i32 1
  %transfer_list.i.i.i.i.i.i247 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i236, i32 0, i32 18
  %prev3.i.i.i.i.i.i.i.i249 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i236, i32 0, i32 18, i32 1
  %12 = getelementptr inbounds i8, ptr %t.i.i.i257, i32 4
  %len1.i.i.i264 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i257, i32 0, i32 2
  %13 = getelementptr inbounds i8, ptr %msg.i.i.i.i256, i32 8
  %prev.i.i.i.i.i.i.i.i265 = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i.i256, i32 0, i32 1
  %resources.i.i.i.i.i.i.i266 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i256, i32 0, i32 10
  %prev.i2.i.i.i.i.i.i.i267 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i256, i32 0, i32 10, i32 1
  %transfer_list.i.i.i.i.i.i268 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i257, i32 0, i32 18
  %prev3.i.i.i.i.i.i.i.i270 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i257, i32 0, i32 18, i32 1
  %state = getelementptr inbounds %struct.can_priv, ptr %dev_id, i32 0, i32 21
  %error_warning = getelementptr inbounds %struct.can_priv, ptr %dev_id, i32 0, i32 1, i32 1
  %error_passive = getelementptr inbounds %struct.can_priv, ptr %dev_id, i32 0, i32 1, i32 2
  %rx_over_errors = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 36, i32 11
  %rx_errors = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 36, i32 4
  %restart_ms = getelementptr inbounds %struct.can_priv, ptr %dev_id, i32 0, i32 24
  %tx_busy = getelementptr inbounds %struct.mcp251x_priv, ptr %dev_id, i32 0, i32 14
  %tx_packets = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 36, i32 1
  %tx_bytes = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 36, i32 3
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 103
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %14 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %driver_data.i.i.i, align 4
  %spi_tx_buf.i = getelementptr inbounds %struct.mcp251x_priv, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %spi_tx_buf.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %spi_tx_buf.i, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 3, ptr %17, align 1
  %19 = load ptr, ptr %spi_tx_buf.i, align 4
  %arrayidx2.i = getelementptr i8, ptr %19, i32 1
  %20 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 44, ptr %arrayidx2.i, align 1
  %21 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %controller.i, align 8
  %flags.i = getelementptr inbounds %struct.spi_controller, ptr %22, i32 0, i32 10
  %23 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %flags.i, align 4
  %25 = and i16 %24, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %tobool.not.i = icmp eq i16 %25, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i) #8
  %26 = ptrtoint ptr %val.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 0, ptr %val.i, align 2
  %27 = ptrtoint ptr %spi_tx_buf.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %spi_tx_buf.i, align 4
  %call4.i = call i32 @spi_write_then_read(ptr noundef %1, ptr noundef %28, i32 noundef 2, ptr noundef nonnull %val.i, i32 noundef 2) #8
  %29 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %val.i, align 2
  %31 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx6.i, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i) #8
  br label %mcp251x_read_2regs.exit

if.else.i:                                        ; preds = %while.body
  %33 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i) #8
  %35 = call ptr @memset(ptr %6, i32 0, i32 84)
  %spi_tx_buf.i.i = getelementptr inbounds %struct.mcp251x_priv, ptr %34, i32 0, i32 5
  %36 = ptrtoint ptr %spi_tx_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %spi_tx_buf.i.i, align 4
  %38 = ptrtoint ptr %t.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %37, ptr %t.i.i, align 4
  %spi_rx_buf.i.i = getelementptr inbounds %struct.mcp251x_priv, ptr %34, i32 0, i32 6
  %39 = ptrtoint ptr %spi_rx_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %spi_rx_buf.i.i, align 4
  %41 = ptrtoint ptr %rx_buf.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %40, ptr %rx_buf.i.i, align 4
  %42 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 4, ptr %len1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %m.i.i) #8
  %43 = call ptr @memset(ptr %7, i32 0, i32 40)
  %44 = ptrtoint ptr %m.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %m.i.i, ptr %m.i.i, align 4
  %45 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %m.i.i, ptr %prev.i.i.i.i.i, align 4
  %46 = ptrtoint ptr %resources.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %resources.i.i.i.i, ptr %resources.i.i.i.i, align 4
  %47 = ptrtoint ptr %prev.i2.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %resources.i.i.i.i, ptr %prev.i2.i.i.i.i, align 4
  %call.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i, ptr noundef nonnull %m.i.i, ptr noundef nonnull %m.i.i) #8
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %if.else.i.spi_message_add_tail.exit.i.i_crit_edge

if.else.i.spi_message_add_tail.exit.i.i_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_message_add_tail.exit.i.i

if.end.i.i.i.i.i:                                 ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %48 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %transfer_list.i.i.i, ptr %prev.i.i.i.i.i, align 4
  %49 = ptrtoint ptr %transfer_list.i.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %m.i.i, ptr %transfer_list.i.i.i, align 4
  %50 = ptrtoint ptr %prev3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %m.i.i, ptr %prev3.i.i.i.i.i, align 4
  %51 = ptrtoint ptr %m.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %transfer_list.i.i.i, ptr %m.i.i, align 4
  br label %spi_message_add_tail.exit.i.i

spi_message_add_tail.exit.i.i:                    ; preds = %if.end.i.i.i.i.i, %if.else.i.spi_message_add_tail.exit.i.i_crit_edge
  %call2.i.i = call i32 @spi_sync(ptr noundef %1, ptr noundef nonnull %m.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool.not.i.i, label %spi_message_add_tail.exit.i.i.mcp251x_spi_trans.exit.i_crit_edge, label %do.end.i.i

spi_message_add_tail.exit.i.i.mcp251x_spi_trans.exit.i_crit_edge: ; preds = %spi_message_add_tail.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mcp251x_spi_trans.exit.i

do.end.i.i:                                       ; preds = %spi_message_add_tail.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.24, i32 noundef %call2.i.i) #11
  br label %mcp251x_spi_trans.exit.i

mcp251x_spi_trans.exit.i:                         ; preds = %do.end.i.i, %spi_message_add_tail.exit.i.i.mcp251x_spi_trans.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %m.i.i) #8
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i) #8
  %spi_rx_buf.i = getelementptr inbounds %struct.mcp251x_priv, ptr %15, i32 0, i32 6
  %52 = ptrtoint ptr %spi_rx_buf.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %spi_rx_buf.i, align 4
  %arrayidx8.i = getelementptr i8, ptr %53, i32 2
  %54 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx8.i, align 1
  %arrayidx10.i = getelementptr i8, ptr %53, i32 3
  %56 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx10.i, align 1
  br label %mcp251x_read_2regs.exit

mcp251x_read_2regs.exit:                          ; preds = %mcp251x_spi_trans.exit.i, %if.then.i
  %intf.0 = phi i8 [ %55, %mcp251x_spi_trans.exit.i ], [ %30, %if.then.i ]
  %eflag.0 = phi i8 [ %57, %mcp251x_spi_trans.exit.i ], [ %32, %if.then.i ]
  %58 = and i8 %intf.0, 63
  %59 = and i8 %intf.0, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool6.not = icmp eq i8 %59, 0
  br i1 %tobool6.not, label %mcp251x_read_2regs.exit.if.end9_crit_edge, label %if.then

mcp251x_read_2regs.exit.if.end9_crit_edge:        ; preds = %mcp251x_read_2regs.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.then:                                          ; preds = %mcp251x_read_2regs.exit
  call fastcc void @mcp251x_hw_rx(ptr noundef %1, i32 noundef 0)
  %60 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %driver_data.i.i.i, align 4
  %model.i = getelementptr inbounds %struct.mcp251x_priv, ptr %61, i32 0, i32 3
  %62 = ptrtoint ptr %model.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %model.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9488, i32 %63)
  %cmp.i.not = icmp eq i32 %63, 9488
  br i1 %cmp.i.not, label %if.then8, label %if.then.if.end9_crit_edge

if.then.if.end9_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.then8:                                         ; preds = %if.then
  %spi_tx_buf.i225 = getelementptr inbounds %struct.mcp251x_priv, ptr %61, i32 0, i32 5
  %64 = ptrtoint ptr %spi_tx_buf.i225 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %spi_tx_buf.i225, align 4
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 5, ptr %65, align 1
  %67 = load ptr, ptr %spi_tx_buf.i225, align 4
  %arrayidx2.i226 = getelementptr i8, ptr %67, i32 1
  %68 = ptrtoint ptr %arrayidx2.i226 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 44, ptr %arrayidx2.i226, align 1
  %69 = load ptr, ptr %spi_tx_buf.i225, align 4
  %arrayidx4.i = getelementptr i8, ptr %69, i32 2
  %70 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 1, ptr %arrayidx4.i, align 1
  %71 = load ptr, ptr %spi_tx_buf.i225, align 4
  %arrayidx6.i227 = getelementptr i8, ptr %71, i32 3
  %72 = ptrtoint ptr %arrayidx6.i227 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 0, ptr %arrayidx6.i227, align 1
  %73 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %driver_data.i.i.i, align 4
  %spi_tx_buf.i.i228 = getelementptr inbounds %struct.mcp251x_priv, ptr %74, i32 0, i32 5
  %75 = ptrtoint ptr %spi_tx_buf.i.i228 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %spi_tx_buf.i.i228, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i.i) #8
  %77 = call ptr @memset(ptr %8, i32 0, i32 92)
  %78 = ptrtoint ptr %t.i.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %76, ptr %t.i.i.i, align 4
  %79 = ptrtoint ptr %len1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 4, ptr %len1.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i.i) #8
  %80 = call ptr @memset(ptr %9, i32 0, i32 40)
  %81 = ptrtoint ptr %msg.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store volatile ptr %msg.i.i.i.i, ptr %msg.i.i.i.i, align 4
  %82 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %msg.i.i.i.i, ptr %prev.i.i.i.i.i.i.i.i, align 4
  %83 = ptrtoint ptr %resources.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store volatile ptr %resources.i.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i.i, align 4
  %84 = ptrtoint ptr %prev.i2.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %resources.i.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i.i, align 4
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i.i, ptr noundef nonnull %msg.i.i.i.i) #8
  br i1 %call.i.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i.i, label %if.then8.spi_write.exit.i.i_crit_edge

if.then8.spi_write.exit.i.i_crit_edge:            ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_write.exit.i.i

if.end.i.i.i.i.i.i.i.i:                           ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  %85 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %transfer_list.i.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i.i, align 4
  %86 = ptrtoint ptr %transfer_list.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %msg.i.i.i.i, ptr %transfer_list.i.i.i.i.i.i, align 4
  %87 = ptrtoint ptr %prev3.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %msg.i.i.i.i, ptr %prev3.i.i.i.i.i.i.i.i, align 4
  %88 = ptrtoint ptr %msg.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store volatile ptr %transfer_list.i.i.i.i.i.i, ptr %msg.i.i.i.i, align 4
  br label %spi_write.exit.i.i

spi_write.exit.i.i:                               ; preds = %if.end.i.i.i.i.i.i.i.i, %if.then8.spi_write.exit.i.i_crit_edge
  %call.i.i.i.i = call i32 @spi_sync(ptr noundef %1, ptr noundef nonnull %msg.i.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i229 = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i229, label %spi_write.exit.i.i.if.end9_crit_edge, label %do.end.i.i230

spi_write.exit.i.i.if.end9_crit_edge:             ; preds = %spi_write.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

do.end.i.i230:                                    ; preds = %spi_write.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.28, i32 noundef %call.i.i.i.i) #11
  br label %if.end9

if.end9:                                          ; preds = %do.end.i.i230, %spi_write.exit.i.i.if.end9_crit_edge, %if.then.if.end9_crit_edge, %mcp251x_read_2regs.exit.if.end9_crit_edge
  %89 = and i8 %intf.0, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %89)
  %tobool12.not = icmp eq i8 %89, 0
  br i1 %tobool12.not, label %if.end9.if.end20_crit_edge, label %if.then13

if.end9.if.end20_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @mcp251x_hw_rx(ptr noundef %1, i32 noundef 1)
  %90 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %driver_data.i.i.i, align 4
  %model.i232 = getelementptr inbounds %struct.mcp251x_priv, ptr %91, i32 0, i32 3
  %92 = ptrtoint ptr %model.i232 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %model.i232, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9488, i32 %93)
  %cmp.i233.not = icmp eq i32 %93, 9488
  %spec.select = select i1 %cmp.i233.not, i8 2, i8 0
  br label %if.end20

if.end20:                                         ; preds = %if.then13, %if.end9.if.end20_crit_edge
  %clear_intf.0 = phi i8 [ 0, %if.end9.if.end20_crit_edge ], [ %spec.select, %if.then13 ]
  %94 = and i8 %intf.0, 60
  %or28219 = or i8 %clear_intf.0, %94
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %or28219)
  %tobool31.not = icmp eq i8 %or28219, 0
  br i1 %tobool31.not, label %if.end20.if.end33_crit_edge, label %if.then32

if.end20.if.end33_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33

if.then32:                                        ; preds = %if.end20
  %95 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %driver_data.i.i.i, align 4
  %spi_tx_buf.i238 = getelementptr inbounds %struct.mcp251x_priv, ptr %96, i32 0, i32 5
  %97 = ptrtoint ptr %spi_tx_buf.i238 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %spi_tx_buf.i238, align 4
  %99 = ptrtoint ptr %98 to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 5, ptr %98, align 1
  %100 = load ptr, ptr %spi_tx_buf.i238, align 4
  %arrayidx2.i239 = getelementptr i8, ptr %100, i32 1
  %101 = ptrtoint ptr %arrayidx2.i239 to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 44, ptr %arrayidx2.i239, align 1
  %102 = load ptr, ptr %spi_tx_buf.i238, align 4
  %arrayidx4.i240 = getelementptr i8, ptr %102, i32 2
  %103 = ptrtoint ptr %arrayidx4.i240 to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 %or28219, ptr %arrayidx4.i240, align 1
  %104 = load ptr, ptr %spi_tx_buf.i238, align 4
  %arrayidx6.i241 = getelementptr i8, ptr %104, i32 3
  %105 = ptrtoint ptr %arrayidx6.i241 to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 0, ptr %arrayidx6.i241, align 1
  %106 = load ptr, ptr %driver_data.i.i.i, align 4
  %spi_tx_buf.i.i242 = getelementptr inbounds %struct.mcp251x_priv, ptr %106, i32 0, i32 5
  %107 = ptrtoint ptr %spi_tx_buf.i.i242 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %spi_tx_buf.i.i242, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i.i236) #8
  %109 = call ptr @memset(ptr %10, i32 0, i32 92)
  %110 = ptrtoint ptr %t.i.i.i236 to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %108, ptr %t.i.i.i236, align 4
  %111 = ptrtoint ptr %len1.i.i.i243 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 4, ptr %len1.i.i.i243, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i.i235) #8
  %112 = call ptr @memset(ptr %11, i32 0, i32 40)
  %113 = ptrtoint ptr %msg.i.i.i.i235 to i32
  call void @__asan_store4_noabort(i32 %113)
  store volatile ptr %msg.i.i.i.i235, ptr %msg.i.i.i.i235, align 4
  %114 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i244 to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %msg.i.i.i.i235, ptr %prev.i.i.i.i.i.i.i.i244, align 4
  %115 = ptrtoint ptr %resources.i.i.i.i.i.i.i245 to i32
  call void @__asan_store4_noabort(i32 %115)
  store volatile ptr %resources.i.i.i.i.i.i.i245, ptr %resources.i.i.i.i.i.i.i245, align 4
  %116 = ptrtoint ptr %prev.i2.i.i.i.i.i.i.i246 to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %resources.i.i.i.i.i.i.i245, ptr %prev.i2.i.i.i.i.i.i.i246, align 4
  %call.i.i.i.i.i.i.i.i248 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i.i247, ptr noundef nonnull %msg.i.i.i.i235, ptr noundef nonnull %msg.i.i.i.i235) #8
  br i1 %call.i.i.i.i.i.i.i.i248, label %if.end.i.i.i.i.i.i.i.i250, label %if.then32.spi_write.exit.i.i253_crit_edge

if.then32.spi_write.exit.i.i253_crit_edge:        ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_write.exit.i.i253

if.end.i.i.i.i.i.i.i.i250:                        ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #10
  %117 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i244 to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %transfer_list.i.i.i.i.i.i247, ptr %prev.i.i.i.i.i.i.i.i244, align 4
  %118 = ptrtoint ptr %transfer_list.i.i.i.i.i.i247 to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %msg.i.i.i.i235, ptr %transfer_list.i.i.i.i.i.i247, align 4
  %119 = ptrtoint ptr %prev3.i.i.i.i.i.i.i.i249 to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %msg.i.i.i.i235, ptr %prev3.i.i.i.i.i.i.i.i249, align 4
  %120 = ptrtoint ptr %msg.i.i.i.i235 to i32
  call void @__asan_store4_noabort(i32 %120)
  store volatile ptr %transfer_list.i.i.i.i.i.i247, ptr %msg.i.i.i.i235, align 4
  br label %spi_write.exit.i.i253

spi_write.exit.i.i253:                            ; preds = %if.end.i.i.i.i.i.i.i.i250, %if.then32.spi_write.exit.i.i253_crit_edge
  %call.i.i.i.i251 = call i32 @spi_sync(ptr noundef %1, ptr noundef nonnull %msg.i.i.i.i235) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i.i235) #8
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i.i236) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i251)
  %tobool.not.i.i252 = icmp eq i32 %call.i.i.i.i251, 0
  br i1 %tobool.not.i.i252, label %spi_write.exit.i.i253.if.end33_crit_edge, label %do.end.i.i254

spi_write.exit.i.i253.if.end33_crit_edge:         ; preds = %spi_write.exit.i.i253
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33

do.end.i.i254:                                    ; preds = %spi_write.exit.i.i253
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.28, i32 noundef %call.i.i.i.i251) #11
  br label %if.end33

if.end33:                                         ; preds = %do.end.i.i254, %spi_write.exit.i.i253.if.end33_crit_edge, %if.end20.if.end33_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %eflag.0)
  %tobool36.not = icmp ult i8 %eflag.0, 64
  br i1 %tobool36.not, label %if.end33.if.end38_crit_edge, label %if.then37

if.end33.if.end38_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

if.then37:                                        ; preds = %if.end33
  %121 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %driver_data.i.i.i, align 4
  %spi_tx_buf.i259 = getelementptr inbounds %struct.mcp251x_priv, ptr %122, i32 0, i32 5
  %123 = ptrtoint ptr %spi_tx_buf.i259 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %spi_tx_buf.i259, align 4
  %125 = ptrtoint ptr %124 to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 5, ptr %124, align 1
  %126 = load ptr, ptr %spi_tx_buf.i259, align 4
  %arrayidx2.i260 = getelementptr i8, ptr %126, i32 1
  %127 = ptrtoint ptr %arrayidx2.i260 to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 45, ptr %arrayidx2.i260, align 1
  %128 = load ptr, ptr %spi_tx_buf.i259, align 4
  %arrayidx4.i261 = getelementptr i8, ptr %128, i32 2
  %129 = ptrtoint ptr %arrayidx4.i261 to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 %eflag.0, ptr %arrayidx4.i261, align 1
  %130 = load ptr, ptr %spi_tx_buf.i259, align 4
  %arrayidx6.i262 = getelementptr i8, ptr %130, i32 3
  %131 = ptrtoint ptr %arrayidx6.i262 to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 0, ptr %arrayidx6.i262, align 1
  %132 = load ptr, ptr %driver_data.i.i.i, align 4
  %spi_tx_buf.i.i263 = getelementptr inbounds %struct.mcp251x_priv, ptr %132, i32 0, i32 5
  %133 = ptrtoint ptr %spi_tx_buf.i.i263 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %spi_tx_buf.i.i263, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i.i257) #8
  %135 = call ptr @memset(ptr %12, i32 0, i32 92)
  %136 = ptrtoint ptr %t.i.i.i257 to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr %134, ptr %t.i.i.i257, align 4
  %137 = ptrtoint ptr %len1.i.i.i264 to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 4, ptr %len1.i.i.i264, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i.i256) #8
  %138 = call ptr @memset(ptr %13, i32 0, i32 40)
  %139 = ptrtoint ptr %msg.i.i.i.i256 to i32
  call void @__asan_store4_noabort(i32 %139)
  store volatile ptr %msg.i.i.i.i256, ptr %msg.i.i.i.i256, align 4
  %140 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i265 to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr %msg.i.i.i.i256, ptr %prev.i.i.i.i.i.i.i.i265, align 4
  %141 = ptrtoint ptr %resources.i.i.i.i.i.i.i266 to i32
  call void @__asan_store4_noabort(i32 %141)
  store volatile ptr %resources.i.i.i.i.i.i.i266, ptr %resources.i.i.i.i.i.i.i266, align 4
  %142 = ptrtoint ptr %prev.i2.i.i.i.i.i.i.i267 to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr %resources.i.i.i.i.i.i.i266, ptr %prev.i2.i.i.i.i.i.i.i267, align 4
  %call.i.i.i.i.i.i.i.i269 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i.i268, ptr noundef nonnull %msg.i.i.i.i256, ptr noundef nonnull %msg.i.i.i.i256) #8
  br i1 %call.i.i.i.i.i.i.i.i269, label %if.end.i.i.i.i.i.i.i.i271, label %if.then37.spi_write.exit.i.i274_crit_edge

if.then37.spi_write.exit.i.i274_crit_edge:        ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_write.exit.i.i274

if.end.i.i.i.i.i.i.i.i271:                        ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #10
  %143 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i265 to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr %transfer_list.i.i.i.i.i.i268, ptr %prev.i.i.i.i.i.i.i.i265, align 4
  %144 = ptrtoint ptr %transfer_list.i.i.i.i.i.i268 to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr %msg.i.i.i.i256, ptr %transfer_list.i.i.i.i.i.i268, align 4
  %145 = ptrtoint ptr %prev3.i.i.i.i.i.i.i.i270 to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr %msg.i.i.i.i256, ptr %prev3.i.i.i.i.i.i.i.i270, align 4
  %146 = ptrtoint ptr %msg.i.i.i.i256 to i32
  call void @__asan_store4_noabort(i32 %146)
  store volatile ptr %transfer_list.i.i.i.i.i.i268, ptr %msg.i.i.i.i256, align 4
  br label %spi_write.exit.i.i274

spi_write.exit.i.i274:                            ; preds = %if.end.i.i.i.i.i.i.i.i271, %if.then37.spi_write.exit.i.i274_crit_edge
  %call.i.i.i.i272 = call i32 @spi_sync(ptr noundef %1, ptr noundef nonnull %msg.i.i.i.i256) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i.i256) #8
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i.i257) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i272)
  %tobool.not.i.i273 = icmp eq i32 %call.i.i.i.i272, 0
  br i1 %tobool.not.i.i273, label %spi_write.exit.i.i274.if.end38_crit_edge, label %do.end.i.i275

spi_write.exit.i.i274.if.end38_crit_edge:         ; preds = %spi_write.exit.i.i274
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

do.end.i.i275:                                    ; preds = %spi_write.exit.i.i274
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.28, i32 noundef %call.i.i.i.i272) #11
  br label %if.end38

if.end38:                                         ; preds = %do.end.i.i275, %spi_write.exit.i.i274.if.end38_crit_edge, %if.end33.if.end38_crit_edge
  %conv39 = zext i8 %eflag.0 to i32
  %and40 = and i32 %conv39, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %if.else, label %if.end38.if.end76_crit_edge

if.end38.if.end76_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end76

if.else:                                          ; preds = %if.end38
  %and45 = and i32 %conv39, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  br i1 %tobool46.not, label %if.else50, label %if.else.if.end76_crit_edge

if.else.if.end76_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end76

if.else50:                                        ; preds = %if.else
  %and52 = and i32 %conv39, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  br i1 %tobool53.not, label %if.else57, label %if.else50.if.end76_crit_edge

if.else50.if.end76_crit_edge:                     ; preds = %if.else50
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end76

if.else57:                                        ; preds = %if.else50
  %and59 = and i32 %conv39, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59)
  %tobool60.not = icmp eq i32 %and59, 0
  br i1 %tobool60.not, label %if.else64, label %if.else57.if.end76_crit_edge

if.else57.if.end76_crit_edge:                     ; preds = %if.else57
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end76

if.else64:                                        ; preds = %if.else57
  call void @__sanitizer_cov_trace_pc() #10
  %and66 = and i32 %conv39, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66)
  %tobool67.not = icmp ne i32 %and66, 0
  %and66.lobit = lshr exact i32 %and66, 1
  %147 = shl nuw nsw i32 %and66, 1
  br label %if.end76

if.end76:                                         ; preds = %if.else64, %if.else57.if.end76_crit_edge, %if.else50.if.end76_crit_edge, %if.else.if.end76_crit_edge, %if.end38.if.end76_crit_edge
  %cmp84 = phi i1 [ true, %if.end38.if.end76_crit_edge ], [ true, %if.else.if.end76_crit_edge ], [ true, %if.else50.if.end76_crit_edge ], [ false, %if.else57.if.end76_crit_edge ], [ false, %if.else64 ]
  %cmp = phi i1 [ true, %if.end38.if.end76_crit_edge ], [ true, %if.else.if.end76_crit_edge ], [ true, %if.else50.if.end76_crit_edge ], [ true, %if.else57.if.end76_crit_edge ], [ %tobool67.not, %if.else64 ]
  %new_state.0 = phi i32 [ 3, %if.end38.if.end76_crit_edge ], [ 2, %if.else.if.end76_crit_edge ], [ 2, %if.else50.if.end76_crit_edge ], [ 1, %if.else57.if.end76_crit_edge ], [ %and66.lobit, %if.else64 ]
  %can_id.0 = phi i32 [ 64, %if.end38.if.end76_crit_edge ], [ 4, %if.else.if.end76_crit_edge ], [ 4, %if.else50.if.end76_crit_edge ], [ 4, %if.else57.if.end76_crit_edge ], [ %147, %if.else64 ]
  %data1.0 = phi i32 [ 0, %if.end38.if.end76_crit_edge ], [ 32, %if.else.if.end76_crit_edge ], [ 16, %if.else50.if.end76_crit_edge ], [ 8, %if.else57.if.end76_crit_edge ], [ %147, %if.else64 ]
  %148 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %state, align 4
  %150 = zext i32 %149 to i64
  call void @__sanitizer_cov_trace_switch(i64 %150, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %149, label %if.end76.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %if.end76.sw.bb83_crit_edge
  ]

if.end76.sw.bb83_crit_edge:                       ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb83

if.end76.sw.epilog_crit_edge:                     ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end76
  br i1 %cmp, label %if.then80, label %sw.bb.sw.bb83_crit_edge

sw.bb.sw.bb83_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb83

if.then80:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %151 = ptrtoint ptr %error_warning to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %error_warning, align 4
  %inc = add i32 %152, 1
  store i32 %inc, ptr %error_warning, align 4
  br label %sw.bb83

sw.bb83:                                          ; preds = %if.then80, %sw.bb.sw.bb83_crit_edge, %if.end76.sw.bb83_crit_edge
  br i1 %cmp84, label %if.then89, label %sw.bb83.sw.epilog_crit_edge

sw.bb83.sw.epilog_crit_edge:                      ; preds = %sw.bb83
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then89:                                        ; preds = %sw.bb83
  call void @__sanitizer_cov_trace_pc() #10
  %153 = ptrtoint ptr %error_passive to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %error_passive, align 4
  %inc92 = add i32 %154, 1
  store i32 %inc92, ptr %error_passive, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then89, %sw.bb83.sw.epilog_crit_edge, %if.end76.sw.epilog_crit_edge
  %155 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 %new_state.0, ptr %state, align 4
  %156 = and i8 %intf.0, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %156)
  %tobool98.not = icmp eq i8 %156, 0
  br i1 %tobool98.not, label %sw.epilog.if.end126_crit_edge, label %if.then99

sw.epilog.if.end126_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end126

if.then99:                                        ; preds = %sw.epilog
  %and101 = and i32 %conv39, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and101)
  %tobool102.not = icmp eq i32 %and101, 0
  br i1 %tobool102.not, label %if.then99.if.end125_crit_edge, label %if.then103

if.then99.if.end125_crit_edge:                    ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end125

if.then103:                                       ; preds = %if.then99
  %and105 = and i32 %conv39, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and105)
  %tobool106.not = icmp eq i32 %and105, 0
  br i1 %tobool106.not, label %if.then103.if.end111_crit_edge, label %if.then107

if.then103.if.end111_crit_edge:                   ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end111

if.then107:                                       ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #10
  %157 = ptrtoint ptr %rx_over_errors to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %rx_over_errors, align 4
  %inc108 = add i32 %158, 1
  store i32 %inc108, ptr %rx_over_errors, align 4
  %159 = ptrtoint ptr %rx_errors to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %rx_errors, align 8
  %inc110 = add i32 %160, 1
  store i32 %inc110, ptr %rx_errors, align 8
  br label %if.end111

if.end111:                                        ; preds = %if.then107, %if.then103.if.end111_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %eflag.0)
  %tobool114.not = icmp sgt i8 %eflag.0, -1
  br i1 %tobool114.not, label %if.end111.if.end122_crit_edge, label %if.then115

if.end111.if.end122_crit_edge:                    ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end122

if.then115:                                       ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #10
  %161 = ptrtoint ptr %rx_over_errors to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %rx_over_errors, align 4
  %inc118 = add i32 %162, 1
  store i32 %inc118, ptr %rx_over_errors, align 4
  %163 = ptrtoint ptr %rx_errors to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %rx_errors, align 8
  %inc121 = add i32 %164, 1
  store i32 %inc121, ptr %rx_errors, align 8
  br label %if.end122

if.end122:                                        ; preds = %if.then115, %if.end111.if.end122_crit_edge
  %or123 = or i32 %can_id.0, 4
  %or124 = or i32 %data1.0, 1
  br label %if.end125

if.end125:                                        ; preds = %if.end122, %if.then99.if.end125_crit_edge
  %can_id.1 = phi i32 [ %or123, %if.end122 ], [ %can_id.0, %if.then99.if.end125_crit_edge ]
  %data1.1 = phi i32 [ %or124, %if.end122 ], [ %data1.0, %if.then99.if.end125_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %frame.i) #8
  %165 = ptrtoint ptr %frame.i to i32
  call void @__asan_store4_noabort(i32 %165)
  store ptr inttoptr (i32 -1 to ptr), ptr %frame.i, align 4, !annotation !140
  %call.i = call ptr @alloc_can_err_skb(ptr noundef %3, ptr noundef nonnull %frame.i) #8
  %tobool.not.i277 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i277, label %if.else.i280, label %if.then.i279

if.then.i279:                                     ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #10
  %166 = ptrtoint ptr %frame.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %frame.i, align 4
  %168 = ptrtoint ptr %167 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %167, align 8
  %or.i = or i32 %169, %can_id.1
  store i32 %or.i, ptr %167, align 8
  %conv.i278 = trunc i32 %data1.1 to i8
  %170 = load ptr, ptr %frame.i, align 4
  %arrayidx.i = getelementptr %struct.can_frame, ptr %170, i32 0, i32 5, i32 1
  %171 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %171)
  store i8 %conv.i278, ptr %arrayidx.i, align 1
  %call2.i = call i32 @netif_rx_ni(ptr noundef nonnull %call.i) #8
  br label %mcp251x_error_skb.exit

if.else.i280:                                     ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %3, ptr noundef nonnull @.str.30) #11
  br label %mcp251x_error_skb.exit

mcp251x_error_skb.exit:                           ; preds = %if.else.i280, %if.then.i279
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %frame.i) #8
  %172 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %172)
  %.pr = load i32, ptr %state, align 4
  br label %if.end126

if.end126:                                        ; preds = %mcp251x_error_skb.exit, %sw.epilog.if.end126_crit_edge
  %173 = phi i32 [ %.pr, %mcp251x_error_skb.exit ], [ %new_state.0, %sw.epilog.if.end126_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %173)
  %cmp129 = icmp eq i32 %173, 3
  br i1 %cmp129, label %if.then131, label %if.end126.if.end141_crit_edge

if.end126.if.end141_crit_edge:                    ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end141

if.then131:                                       ; preds = %if.end126
  %174 = ptrtoint ptr %restart_ms to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %restart_ms, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %175)
  %cmp133 = icmp eq i32 %175, 0
  br i1 %cmp133, label %if.then135, label %if.then131.if.end141_crit_edge

if.then131.if.end141_crit_edge:                   ; preds = %if.then131
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end141

if.then135:                                       ; preds = %if.then131
  call void @__sanitizer_cov_trace_pc() #10
  %176 = ptrtoint ptr %force_quit to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 1, ptr %force_quit, align 4
  %bus_off = getelementptr inbounds %struct.can_priv, ptr %dev_id, i32 0, i32 1, i32 3
  %177 = ptrtoint ptr %bus_off to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %bus_off, align 4
  %inc139 = add i32 %178, 1
  store i32 %inc139, ptr %bus_off, align 4
  call void @can_bus_off(ptr noundef %3) #8
  call fastcc void @mcp251x_hw_sleep(ptr noundef %1)
  br label %while.end

if.end141:                                        ; preds = %if.then131.if.end141_crit_edge, %if.end126.if.end141_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %cmp143 = icmp eq i8 %58, 0
  br i1 %cmp143, label %if.end141.while.end_crit_edge, label %if.end146

if.end141.while.end_crit_edge:                    ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

if.end146:                                        ; preds = %if.end141
  %179 = and i8 %intf.0, 28
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %179)
  %tobool149.not = icmp eq i8 %179, 0
  br i1 %tobool149.not, label %if.end146.cleanup_crit_edge, label %if.then150

if.end146.cleanup_crit_edge:                      ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then150:                                       ; preds = %if.end146
  %180 = ptrtoint ptr %tx_busy to i32
  call void @__asan_load1_noabort(i32 %180)
  %181 = load i8, ptr %tx_busy, align 4, !range !139
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %181)
  %tobool151.not = icmp eq i8 %181, 0
  br i1 %tobool151.not, label %if.then150.if.end158_crit_edge, label %if.then152

if.then150.if.end158_crit_edge:                   ; preds = %if.then150
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end158

if.then152:                                       ; preds = %if.then150
  call void @__sanitizer_cov_trace_pc() #10
  %182 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %tx_packets, align 4
  %inc154 = add i32 %183, 1
  store i32 %inc154, ptr %tx_packets, align 4
  %call155 = call i32 @can_get_echo_skb(ptr noundef %3, i32 noundef 0, ptr noundef null) #8
  %184 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %tx_bytes, align 4
  %add = add i32 %185, %call155
  store i32 %add, ptr %tx_bytes, align 4
  %186 = ptrtoint ptr %tx_busy to i32
  call void @__asan_store1_noabort(i32 %186)
  store i8 0, ptr %tx_busy, align 4
  br label %if.end158

if.end158:                                        ; preds = %if.then152, %if.then150.if.end158_crit_edge
  %187 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %_tx.i.i, align 128
  call void @netif_tx_wake_queue(ptr noundef %188) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end158, %if.end146.cleanup_crit_edge
  %189 = ptrtoint ptr %force_quit to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %force_quit, align 4
  %tobool.not = icmp eq i32 %190, 0
  br i1 %tobool.not, label %cleanup.while.body_crit_edge, label %cleanup.while.end_crit_edge

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %if.end141.while.end_crit_edge, %if.then135, %entry.while.end_crit_edge
  call void @mutex_unlock(ptr noundef %mcp_lock) #8
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mcp251x_hw_wake(ptr noundef %spi) unnamed_addr #2 align 64 {
entry:
  %msg.i.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i.i = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %irq = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 8
  %0 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq, align 4
  tail call void @disable_irq(i32 noundef %1) #8
  tail call fastcc void @mcp251x_write_2regs(ptr noundef %spi, i8 noundef zeroext 64, i8 noundef zeroext 64)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 214748000) #8
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %7 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %driver_data.i.i.i, align 4
  %spi_tx_buf.i = getelementptr inbounds %struct.mcp251x_priv, ptr %8, i32 0, i32 5
  %9 = ptrtoint ptr %spi_tx_buf.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %spi_tx_buf.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 2, ptr %10, align 1
  %12 = load ptr, ptr %spi_tx_buf.i, align 4
  %arrayidx2.i = getelementptr i8, ptr %12, i32 1
  %13 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 15, ptr %arrayidx2.i, align 1
  %14 = load ptr, ptr %spi_tx_buf.i, align 4
  %arrayidx4.i = getelementptr i8, ptr %14, i32 2
  %15 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 -128, ptr %arrayidx4.i, align 1
  %16 = load ptr, ptr %driver_data.i.i.i, align 4
  %spi_tx_buf.i.i = getelementptr inbounds %struct.mcp251x_priv, ptr %16, i32 0, i32 5
  %17 = ptrtoint ptr %spi_tx_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %spi_tx_buf.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i.i) #8
  %19 = getelementptr inbounds i8, ptr %t.i.i.i, i32 4
  %20 = call ptr @memset(ptr %19, i32 0, i32 92)
  %21 = ptrtoint ptr %t.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %t.i.i.i, align 4
  %len1.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 2
  %22 = ptrtoint ptr %len1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 3, ptr %len1.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i.i) #8
  %23 = getelementptr inbounds i8, ptr %msg.i.i.i.i, i32 8
  %24 = call ptr @memset(ptr %23, i32 0, i32 40)
  %25 = ptrtoint ptr %msg.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %msg.i.i.i.i, ptr %msg.i.i.i.i, align 4
  %prev.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i.i, i32 0, i32 1
  %26 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %msg.i.i.i.i, ptr %prev.i.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i, i32 0, i32 10
  %27 = ptrtoint ptr %resources.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %resources.i.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i, i32 0, i32 10, i32 1
  %28 = ptrtoint ptr %prev.i2.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %resources.i.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i.i, ptr noundef nonnull %msg.i.i.i.i) #8
  br i1 %call.i.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i.i, label %entry.spi_write.exit.i.i_crit_edge

entry.spi_write.exit.i.i_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_write.exit.i.i

if.end.i.i.i.i.i.i.i.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %transfer_list.i.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i.i, align 4
  %30 = ptrtoint ptr %transfer_list.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %msg.i.i.i.i, ptr %transfer_list.i.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 18, i32 1
  %31 = ptrtoint ptr %prev3.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %msg.i.i.i.i, ptr %prev3.i.i.i.i.i.i.i.i, align 4
  %32 = ptrtoint ptr %msg.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %transfer_list.i.i.i.i.i.i, ptr %msg.i.i.i.i, align 4
  br label %spi_write.exit.i.i

spi_write.exit.i.i:                               ; preds = %if.end.i.i.i.i.i.i.i.i, %entry.spi_write.exit.i.i_crit_edge
  %call.i.i.i.i = call i32 @spi_sync(ptr noundef %spi, ptr noundef nonnull %msg.i.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i, label %spi_write.exit.i.i.mcp251x_write_reg.exit_crit_edge, label %do.end.i.i

spi_write.exit.i.i.mcp251x_write_reg.exit_crit_edge: ; preds = %spi_write.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mcp251x_write_reg.exit

do.end.i.i:                                       ; preds = %spi_write.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.28, i32 noundef %call.i.i.i.i) #11
  br label %mcp251x_write_reg.exit

mcp251x_write_reg.exit:                           ; preds = %do.end.i.i, %spi_write.exit.i.i.mcp251x_write_reg.exit_crit_edge
  %call = call i64 @ktime_get() #8
  %add.i = add i64 %call, 1000000000
  call void @__might_sleep(ptr noundef nonnull @.str.12, i32 noundef 770) #8
  %call.i52 = call fastcc zeroext i8 @mcp251x_read_reg(ptr noundef %spi, i8 noundef zeroext 14) #8
  %33 = and i8 %call.i52, -32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %33)
  %cmp953 = icmp eq i8 %33, -128
  br i1 %cmp953, label %mcp251x_write_reg.exit.if.end32_crit_edge, label %mcp251x_write_reg.exit.land.lhs.true_crit_edge

mcp251x_write_reg.exit.land.lhs.true_crit_edge:   ; preds = %mcp251x_write_reg.exit
  br label %land.lhs.true

mcp251x_write_reg.exit.if.end32_crit_edge:        ; preds = %mcp251x_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

land.lhs.true:                                    ; preds = %if.then22.land.lhs.true_crit_edge, %mcp251x_write_reg.exit.land.lhs.true_crit_edge
  %call14 = call i64 @ktime_get() #8
  call void @__sanitizer_cov_trace_cmp8(i64 %call14, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call14, %add.i
  br i1 %cmp3.i, label %for.end, label %if.then22

if.then22:                                        ; preds = %land.lhs.true
  call void @usleep_range_state(i32 noundef 1251, i32 noundef 5000, i32 noundef 2) #8
  %call.i = call fastcc zeroext i8 @mcp251x_read_reg(ptr noundef %spi, i8 noundef zeroext 14) #8
  %34 = and i8 %call.i, -32
  %cmp9 = icmp eq i8 %34, -128
  br i1 %cmp9, label %if.then22.if.end32_crit_edge, label %if.then22.land.lhs.true_crit_edge

if.then22.land.lhs.true_crit_edge:                ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

if.then22.if.end32_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

for.end:                                          ; preds = %land.lhs.true
  %call.i48 = call fastcc zeroext i8 @mcp251x_read_reg(ptr noundef %spi, i8 noundef zeroext 14) #8
  %35 = and i8 %call.i48, -32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %35)
  %cmp25 = icmp eq i8 %35, -128
  br i1 %cmp25, label %for.end.if.end32_crit_edge, label %do.end31

for.end.if.end32_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

do.end31:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.31) #11
  br label %cleanup

if.end32:                                         ; preds = %for.end.if.end32_crit_edge, %if.then22.if.end32_crit_edge, %mcp251x_write_reg.exit.if.end32_crit_edge
  call fastcc void @mcp251x_write_2regs(ptr noundef %spi, i8 noundef zeroext 0, i8 noundef zeroext 0)
  %36 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %irq, align 4
  call void @enable_irq(i32 noundef %37) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %do.end31
  %retval.0 = phi i32 [ -110, %do.end31 ], [ 0, %if.end32 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mcp251x_setup(ptr nocapture noundef readonly %net, ptr noundef %spi) unnamed_addr #2 align 64 {
entry:
  %msg.i.i.i.i1 = alloca %struct.spi_message, align 4
  %t.i.i.i2 = alloca %struct.spi_transfer, align 4
  %msg.i.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i.i = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @mcp251x_do_set_bittiming(ptr noundef %net)
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %spi_tx_buf.i = getelementptr inbounds %struct.mcp251x_priv, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %spi_tx_buf.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %spi_tx_buf.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 2, ptr %3, align 1
  %5 = load ptr, ptr %spi_tx_buf.i, align 4
  %arrayidx2.i = getelementptr i8, ptr %5, i32 1
  %6 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 96, ptr %arrayidx2.i, align 1
  %7 = load ptr, ptr %spi_tx_buf.i, align 4
  %arrayidx4.i = getelementptr i8, ptr %7, i32 2
  %8 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 100, ptr %arrayidx4.i, align 1
  %9 = load ptr, ptr %driver_data.i.i.i, align 4
  %spi_tx_buf.i.i = getelementptr inbounds %struct.mcp251x_priv, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %spi_tx_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %spi_tx_buf.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i.i) #8
  %12 = getelementptr inbounds i8, ptr %t.i.i.i, i32 4
  %13 = call ptr @memset(ptr %12, i32 0, i32 92)
  %14 = ptrtoint ptr %t.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %t.i.i.i, align 4
  %len1.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 2
  %15 = ptrtoint ptr %len1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 3, ptr %len1.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i.i) #8
  %16 = getelementptr inbounds i8, ptr %msg.i.i.i.i, i32 8
  %17 = call ptr @memset(ptr %16, i32 0, i32 40)
  %18 = ptrtoint ptr %msg.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %msg.i.i.i.i, ptr %msg.i.i.i.i, align 4
  %prev.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i.i, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %msg.i.i.i.i, ptr %prev.i.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i, i32 0, i32 10
  %20 = ptrtoint ptr %resources.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %resources.i.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i, i32 0, i32 10, i32 1
  %21 = ptrtoint ptr %prev.i2.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %resources.i.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i.i, ptr noundef nonnull %msg.i.i.i.i) #8
  br i1 %call.i.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i.i, label %entry.spi_write.exit.i.i_crit_edge

entry.spi_write.exit.i.i_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_write.exit.i.i

if.end.i.i.i.i.i.i.i.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %transfer_list.i.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i.i, align 4
  %23 = ptrtoint ptr %transfer_list.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %msg.i.i.i.i, ptr %transfer_list.i.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 18, i32 1
  %24 = ptrtoint ptr %prev3.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %msg.i.i.i.i, ptr %prev3.i.i.i.i.i.i.i.i, align 4
  %25 = ptrtoint ptr %msg.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %transfer_list.i.i.i.i.i.i, ptr %msg.i.i.i.i, align 4
  br label %spi_write.exit.i.i

spi_write.exit.i.i:                               ; preds = %if.end.i.i.i.i.i.i.i.i, %entry.spi_write.exit.i.i_crit_edge
  %call.i.i.i.i = call i32 @spi_sync(ptr noundef %spi, ptr noundef nonnull %msg.i.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i, label %spi_write.exit.i.i.mcp251x_write_reg.exit_crit_edge, label %do.end.i.i

spi_write.exit.i.i.mcp251x_write_reg.exit_crit_edge: ; preds = %spi_write.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mcp251x_write_reg.exit

do.end.i.i:                                       ; preds = %spi_write.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.28, i32 noundef %call.i.i.i.i) #11
  br label %mcp251x_write_reg.exit

mcp251x_write_reg.exit:                           ; preds = %do.end.i.i, %spi_write.exit.i.i.mcp251x_write_reg.exit_crit_edge
  %26 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %driver_data.i.i.i, align 4
  %spi_tx_buf.i4 = getelementptr inbounds %struct.mcp251x_priv, ptr %27, i32 0, i32 5
  %28 = ptrtoint ptr %spi_tx_buf.i4 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %spi_tx_buf.i4, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 2, ptr %29, align 1
  %31 = load ptr, ptr %spi_tx_buf.i4, align 4
  %arrayidx2.i5 = getelementptr i8, ptr %31, i32 1
  %32 = ptrtoint ptr %arrayidx2.i5 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 112, ptr %arrayidx2.i5, align 1
  %33 = load ptr, ptr %spi_tx_buf.i4, align 4
  %arrayidx4.i6 = getelementptr i8, ptr %33, i32 2
  %34 = ptrtoint ptr %arrayidx4.i6 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 96, ptr %arrayidx4.i6, align 1
  %35 = load ptr, ptr %driver_data.i.i.i, align 4
  %spi_tx_buf.i.i7 = getelementptr inbounds %struct.mcp251x_priv, ptr %35, i32 0, i32 5
  %36 = ptrtoint ptr %spi_tx_buf.i.i7 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %spi_tx_buf.i.i7, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i.i2) #8
  %38 = getelementptr inbounds i8, ptr %t.i.i.i2, i32 4
  %39 = call ptr @memset(ptr %38, i32 0, i32 92)
  %40 = ptrtoint ptr %t.i.i.i2 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %37, ptr %t.i.i.i2, align 4
  %len1.i.i.i8 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i2, i32 0, i32 2
  %41 = ptrtoint ptr %len1.i.i.i8 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 3, ptr %len1.i.i.i8, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i.i1) #8
  %42 = getelementptr inbounds i8, ptr %msg.i.i.i.i1, i32 8
  %43 = call ptr @memset(ptr %42, i32 0, i32 40)
  %44 = ptrtoint ptr %msg.i.i.i.i1 to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %msg.i.i.i.i1, ptr %msg.i.i.i.i1, align 4
  %prev.i.i.i.i.i.i.i.i9 = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i.i1, i32 0, i32 1
  %45 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i9 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %msg.i.i.i.i1, ptr %prev.i.i.i.i.i.i.i.i9, align 4
  %resources.i.i.i.i.i.i.i10 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i1, i32 0, i32 10
  %46 = ptrtoint ptr %resources.i.i.i.i.i.i.i10 to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %resources.i.i.i.i.i.i.i10, ptr %resources.i.i.i.i.i.i.i10, align 4
  %prev.i2.i.i.i.i.i.i.i11 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i1, i32 0, i32 10, i32 1
  %47 = ptrtoint ptr %prev.i2.i.i.i.i.i.i.i11 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %resources.i.i.i.i.i.i.i10, ptr %prev.i2.i.i.i.i.i.i.i11, align 4
  %transfer_list.i.i.i.i.i.i12 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i2, i32 0, i32 18
  %call.i.i.i.i.i.i.i.i13 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i.i12, ptr noundef nonnull %msg.i.i.i.i1, ptr noundef nonnull %msg.i.i.i.i1) #8
  br i1 %call.i.i.i.i.i.i.i.i13, label %if.end.i.i.i.i.i.i.i.i15, label %mcp251x_write_reg.exit.spi_write.exit.i.i18_crit_edge

mcp251x_write_reg.exit.spi_write.exit.i.i18_crit_edge: ; preds = %mcp251x_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_write.exit.i.i18

if.end.i.i.i.i.i.i.i.i15:                         ; preds = %mcp251x_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #10
  %48 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i9 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %transfer_list.i.i.i.i.i.i12, ptr %prev.i.i.i.i.i.i.i.i9, align 4
  %49 = ptrtoint ptr %transfer_list.i.i.i.i.i.i12 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %msg.i.i.i.i1, ptr %transfer_list.i.i.i.i.i.i12, align 4
  %prev3.i.i.i.i.i.i.i.i14 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i2, i32 0, i32 18, i32 1
  %50 = ptrtoint ptr %prev3.i.i.i.i.i.i.i.i14 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %msg.i.i.i.i1, ptr %prev3.i.i.i.i.i.i.i.i14, align 4
  %51 = ptrtoint ptr %msg.i.i.i.i1 to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %transfer_list.i.i.i.i.i.i12, ptr %msg.i.i.i.i1, align 4
  br label %spi_write.exit.i.i18

spi_write.exit.i.i18:                             ; preds = %if.end.i.i.i.i.i.i.i.i15, %mcp251x_write_reg.exit.spi_write.exit.i.i18_crit_edge
  %call.i.i.i.i16 = call i32 @spi_sync(ptr noundef %spi, ptr noundef nonnull %msg.i.i.i.i1) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i.i1) #8
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i.i2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i16)
  %tobool.not.i.i17 = icmp eq i32 %call.i.i.i.i16, 0
  br i1 %tobool.not.i.i17, label %spi_write.exit.i.i18.mcp251x_write_reg.exit20_crit_edge, label %do.end.i.i19

spi_write.exit.i.i18.mcp251x_write_reg.exit20_crit_edge: ; preds = %spi_write.exit.i.i18
  call void @__sanitizer_cov_trace_pc() #10
  br label %mcp251x_write_reg.exit20

do.end.i.i19:                                     ; preds = %spi_write.exit.i.i18
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.28, i32 noundef %call.i.i.i.i16) #11
  br label %mcp251x_write_reg.exit20

mcp251x_write_reg.exit20:                         ; preds = %do.end.i.i19, %spi_write.exit.i.i18.mcp251x_write_reg.exit20_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mcp251x_set_normal_mode(ptr noundef %spi) unnamed_addr #2 align 64 {
entry:
  %msg.i.i.i.i101 = alloca %struct.spi_message, align 4
  %t.i.i.i102 = alloca %struct.spi_transfer, align 4
  %msg.i.i.i.i81 = alloca %struct.spi_message, align 4
  %t.i.i.i82 = alloca %struct.spi_transfer, align 4
  %msg.i.i.i.i61 = alloca %struct.spi_message, align 4
  %t.i.i.i62 = alloca %struct.spi_transfer, align 4
  %msg.i.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i.i = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %spi_tx_buf.i = getelementptr inbounds %struct.mcp251x_priv, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %spi_tx_buf.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %spi_tx_buf.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 2, ptr %3, align 1
  %5 = load ptr, ptr %spi_tx_buf.i, align 4
  %arrayidx2.i = getelementptr i8, ptr %5, i32 1
  %6 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 43, ptr %arrayidx2.i, align 1
  %7 = load ptr, ptr %spi_tx_buf.i, align 4
  %arrayidx4.i = getelementptr i8, ptr %7, i32 2
  %8 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 63, ptr %arrayidx4.i, align 1
  %9 = load ptr, ptr %driver_data.i.i, align 4
  %spi_tx_buf.i.i = getelementptr inbounds %struct.mcp251x_priv, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %spi_tx_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %spi_tx_buf.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i.i) #8
  %12 = getelementptr inbounds i8, ptr %t.i.i.i, i32 4
  %13 = call ptr @memset(ptr %12, i32 0, i32 92)
  %14 = ptrtoint ptr %t.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %t.i.i.i, align 4
  %len1.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 2
  %15 = ptrtoint ptr %len1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 3, ptr %len1.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i.i) #8
  %16 = getelementptr inbounds i8, ptr %msg.i.i.i.i, i32 8
  %17 = call ptr @memset(ptr %16, i32 0, i32 40)
  %18 = ptrtoint ptr %msg.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %msg.i.i.i.i, ptr %msg.i.i.i.i, align 4
  %prev.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i.i, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %msg.i.i.i.i, ptr %prev.i.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i, i32 0, i32 10
  %20 = ptrtoint ptr %resources.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %resources.i.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i, i32 0, i32 10, i32 1
  %21 = ptrtoint ptr %prev.i2.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %resources.i.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i.i, ptr noundef nonnull %msg.i.i.i.i) #8
  br i1 %call.i.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i.i, label %entry.spi_write.exit.i.i_crit_edge

entry.spi_write.exit.i.i_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_write.exit.i.i

if.end.i.i.i.i.i.i.i.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %transfer_list.i.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i.i, align 4
  %23 = ptrtoint ptr %transfer_list.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %msg.i.i.i.i, ptr %transfer_list.i.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 18, i32 1
  %24 = ptrtoint ptr %prev3.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %msg.i.i.i.i, ptr %prev3.i.i.i.i.i.i.i.i, align 4
  %25 = ptrtoint ptr %msg.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %transfer_list.i.i.i.i.i.i, ptr %msg.i.i.i.i, align 4
  br label %spi_write.exit.i.i

spi_write.exit.i.i:                               ; preds = %if.end.i.i.i.i.i.i.i.i, %entry.spi_write.exit.i.i_crit_edge
  %call.i.i.i.i = call i32 @spi_sync(ptr noundef %spi, ptr noundef nonnull %msg.i.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i, label %spi_write.exit.i.i.mcp251x_write_reg.exit_crit_edge, label %do.end.i.i

spi_write.exit.i.i.mcp251x_write_reg.exit_crit_edge: ; preds = %spi_write.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mcp251x_write_reg.exit

do.end.i.i:                                       ; preds = %spi_write.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.28, i32 noundef %call.i.i.i.i) #11
  br label %mcp251x_write_reg.exit

mcp251x_write_reg.exit:                           ; preds = %do.end.i.i, %spi_write.exit.i.i.mcp251x_write_reg.exit_crit_edge
  %ctrlmode = getelementptr inbounds %struct.can_priv, ptr %1, i32 0, i32 22
  %26 = ptrtoint ptr %ctrlmode to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ctrlmode, align 4
  %and = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %mcp251x_write_reg.exit
  %28 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %driver_data.i.i, align 4
  %spi_tx_buf.i64 = getelementptr inbounds %struct.mcp251x_priv, ptr %29, i32 0, i32 5
  %30 = ptrtoint ptr %spi_tx_buf.i64 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %spi_tx_buf.i64, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 2, ptr %31, align 1
  %33 = load ptr, ptr %spi_tx_buf.i64, align 4
  %arrayidx2.i65 = getelementptr i8, ptr %33, i32 1
  %34 = ptrtoint ptr %arrayidx2.i65 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 15, ptr %arrayidx2.i65, align 1
  %35 = load ptr, ptr %spi_tx_buf.i64, align 4
  %arrayidx4.i66 = getelementptr i8, ptr %35, i32 2
  %36 = ptrtoint ptr %arrayidx4.i66 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 64, ptr %arrayidx4.i66, align 1
  %37 = load ptr, ptr %driver_data.i.i, align 4
  %spi_tx_buf.i.i67 = getelementptr inbounds %struct.mcp251x_priv, ptr %37, i32 0, i32 5
  %38 = ptrtoint ptr %spi_tx_buf.i.i67 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %spi_tx_buf.i.i67, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i.i62) #8
  %40 = getelementptr inbounds i8, ptr %t.i.i.i62, i32 4
  %41 = call ptr @memset(ptr %40, i32 0, i32 92)
  %42 = ptrtoint ptr %t.i.i.i62 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %39, ptr %t.i.i.i62, align 4
  %len1.i.i.i68 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i62, i32 0, i32 2
  %43 = ptrtoint ptr %len1.i.i.i68 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 3, ptr %len1.i.i.i68, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i.i61) #8
  %44 = getelementptr inbounds i8, ptr %msg.i.i.i.i61, i32 8
  %45 = call ptr @memset(ptr %44, i32 0, i32 40)
  %46 = ptrtoint ptr %msg.i.i.i.i61 to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %msg.i.i.i.i61, ptr %msg.i.i.i.i61, align 4
  %prev.i.i.i.i.i.i.i.i69 = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i.i61, i32 0, i32 1
  %47 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i69 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %msg.i.i.i.i61, ptr %prev.i.i.i.i.i.i.i.i69, align 4
  %resources.i.i.i.i.i.i.i70 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i61, i32 0, i32 10
  %48 = ptrtoint ptr %resources.i.i.i.i.i.i.i70 to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %resources.i.i.i.i.i.i.i70, ptr %resources.i.i.i.i.i.i.i70, align 4
  %prev.i2.i.i.i.i.i.i.i71 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i61, i32 0, i32 10, i32 1
  %49 = ptrtoint ptr %prev.i2.i.i.i.i.i.i.i71 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %resources.i.i.i.i.i.i.i70, ptr %prev.i2.i.i.i.i.i.i.i71, align 4
  %transfer_list.i.i.i.i.i.i72 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i62, i32 0, i32 18
  %call.i.i.i.i.i.i.i.i73 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i.i72, ptr noundef nonnull %msg.i.i.i.i61, ptr noundef nonnull %msg.i.i.i.i61) #8
  br i1 %call.i.i.i.i.i.i.i.i73, label %if.end.i.i.i.i.i.i.i.i75, label %if.then.spi_write.exit.i.i78_crit_edge

if.then.spi_write.exit.i.i78_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_write.exit.i.i78

if.end.i.i.i.i.i.i.i.i75:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %50 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i69 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %transfer_list.i.i.i.i.i.i72, ptr %prev.i.i.i.i.i.i.i.i69, align 4
  %51 = ptrtoint ptr %transfer_list.i.i.i.i.i.i72 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %msg.i.i.i.i61, ptr %transfer_list.i.i.i.i.i.i72, align 4
  %prev3.i.i.i.i.i.i.i.i74 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i62, i32 0, i32 18, i32 1
  %52 = ptrtoint ptr %prev3.i.i.i.i.i.i.i.i74 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %msg.i.i.i.i61, ptr %prev3.i.i.i.i.i.i.i.i74, align 4
  %53 = ptrtoint ptr %msg.i.i.i.i61 to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %transfer_list.i.i.i.i.i.i72, ptr %msg.i.i.i.i61, align 4
  br label %spi_write.exit.i.i78

spi_write.exit.i.i78:                             ; preds = %if.end.i.i.i.i.i.i.i.i75, %if.then.spi_write.exit.i.i78_crit_edge
  %call.i.i.i.i76 = call i32 @spi_sync(ptr noundef %spi, ptr noundef nonnull %msg.i.i.i.i61) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i.i61) #8
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i.i62) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i76)
  %tobool.not.i.i77 = icmp eq i32 %call.i.i.i.i76, 0
  br i1 %tobool.not.i.i77, label %spi_write.exit.i.i78.if.end42_crit_edge, label %spi_write.exit.i.i78.if.end42.sink.split_crit_edge

spi_write.exit.i.i78.if.end42.sink.split_crit_edge: ; preds = %spi_write.exit.i.i78
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42.sink.split

spi_write.exit.i.i78.if.end42_crit_edge:          ; preds = %spi_write.exit.i.i78
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42

if.else:                                          ; preds = %mcp251x_write_reg.exit
  %and3 = and i32 %27, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  %54 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %driver_data.i.i, align 4
  %spi_tx_buf.i104 = getelementptr inbounds %struct.mcp251x_priv, ptr %55, i32 0, i32 5
  %56 = ptrtoint ptr %spi_tx_buf.i104 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %spi_tx_buf.i104, align 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 2, ptr %57, align 1
  %59 = load ptr, ptr %spi_tx_buf.i104, align 4
  %arrayidx2.i105 = getelementptr i8, ptr %59, i32 1
  %60 = ptrtoint ptr %arrayidx2.i105 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 15, ptr %arrayidx2.i105, align 1
  %61 = load ptr, ptr %spi_tx_buf.i104, align 4
  %arrayidx4.i106 = getelementptr i8, ptr %61, i32 2
  br i1 %tobool4.not, label %if.else6, label %if.then5

if.then5:                                         ; preds = %if.else
  %62 = ptrtoint ptr %arrayidx4.i106 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 96, ptr %arrayidx4.i106, align 1
  %63 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %driver_data.i.i, align 4
  %spi_tx_buf.i.i87 = getelementptr inbounds %struct.mcp251x_priv, ptr %64, i32 0, i32 5
  %65 = ptrtoint ptr %spi_tx_buf.i.i87 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %spi_tx_buf.i.i87, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i.i82) #8
  %67 = getelementptr inbounds i8, ptr %t.i.i.i82, i32 4
  %68 = call ptr @memset(ptr %67, i32 0, i32 92)
  %69 = ptrtoint ptr %t.i.i.i82 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %66, ptr %t.i.i.i82, align 4
  %len1.i.i.i88 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i82, i32 0, i32 2
  %70 = ptrtoint ptr %len1.i.i.i88 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 3, ptr %len1.i.i.i88, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i.i81) #8
  %71 = getelementptr inbounds i8, ptr %msg.i.i.i.i81, i32 8
  %72 = call ptr @memset(ptr %71, i32 0, i32 40)
  %73 = ptrtoint ptr %msg.i.i.i.i81 to i32
  call void @__asan_store4_noabort(i32 %73)
  store volatile ptr %msg.i.i.i.i81, ptr %msg.i.i.i.i81, align 4
  %prev.i.i.i.i.i.i.i.i89 = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i.i81, i32 0, i32 1
  %74 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i89 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %msg.i.i.i.i81, ptr %prev.i.i.i.i.i.i.i.i89, align 4
  %resources.i.i.i.i.i.i.i90 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i81, i32 0, i32 10
  %75 = ptrtoint ptr %resources.i.i.i.i.i.i.i90 to i32
  call void @__asan_store4_noabort(i32 %75)
  store volatile ptr %resources.i.i.i.i.i.i.i90, ptr %resources.i.i.i.i.i.i.i90, align 4
  %prev.i2.i.i.i.i.i.i.i91 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i81, i32 0, i32 10, i32 1
  %76 = ptrtoint ptr %prev.i2.i.i.i.i.i.i.i91 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %resources.i.i.i.i.i.i.i90, ptr %prev.i2.i.i.i.i.i.i.i91, align 4
  %transfer_list.i.i.i.i.i.i92 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i82, i32 0, i32 18
  %call.i.i.i.i.i.i.i.i93 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i.i92, ptr noundef nonnull %msg.i.i.i.i81, ptr noundef nonnull %msg.i.i.i.i81) #8
  br i1 %call.i.i.i.i.i.i.i.i93, label %if.end.i.i.i.i.i.i.i.i95, label %if.then5.spi_write.exit.i.i98_crit_edge

if.then5.spi_write.exit.i.i98_crit_edge:          ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_write.exit.i.i98

if.end.i.i.i.i.i.i.i.i95:                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  %77 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i89 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %transfer_list.i.i.i.i.i.i92, ptr %prev.i.i.i.i.i.i.i.i89, align 4
  %78 = ptrtoint ptr %transfer_list.i.i.i.i.i.i92 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %msg.i.i.i.i81, ptr %transfer_list.i.i.i.i.i.i92, align 4
  %prev3.i.i.i.i.i.i.i.i94 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i82, i32 0, i32 18, i32 1
  %79 = ptrtoint ptr %prev3.i.i.i.i.i.i.i.i94 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %msg.i.i.i.i81, ptr %prev3.i.i.i.i.i.i.i.i94, align 4
  %80 = ptrtoint ptr %msg.i.i.i.i81 to i32
  call void @__asan_store4_noabort(i32 %80)
  store volatile ptr %transfer_list.i.i.i.i.i.i92, ptr %msg.i.i.i.i81, align 4
  br label %spi_write.exit.i.i98

spi_write.exit.i.i98:                             ; preds = %if.end.i.i.i.i.i.i.i.i95, %if.then5.spi_write.exit.i.i98_crit_edge
  %call.i.i.i.i96 = call i32 @spi_sync(ptr noundef %spi, ptr noundef nonnull %msg.i.i.i.i81) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i.i81) #8
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i.i82) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i96)
  %tobool.not.i.i97 = icmp eq i32 %call.i.i.i.i96, 0
  br i1 %tobool.not.i.i97, label %spi_write.exit.i.i98.if.end42_crit_edge, label %spi_write.exit.i.i98.if.end42.sink.split_crit_edge

spi_write.exit.i.i98.if.end42.sink.split_crit_edge: ; preds = %spi_write.exit.i.i98
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42.sink.split

spi_write.exit.i.i98.if.end42_crit_edge:          ; preds = %spi_write.exit.i.i98
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42

if.else6:                                         ; preds = %if.else
  %81 = ptrtoint ptr %arrayidx4.i106 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 0, ptr %arrayidx4.i106, align 1
  %82 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %driver_data.i.i, align 4
  %spi_tx_buf.i.i107 = getelementptr inbounds %struct.mcp251x_priv, ptr %83, i32 0, i32 5
  %84 = ptrtoint ptr %spi_tx_buf.i.i107 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %spi_tx_buf.i.i107, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i.i102) #8
  %86 = getelementptr inbounds i8, ptr %t.i.i.i102, i32 4
  %87 = call ptr @memset(ptr %86, i32 0, i32 92)
  %88 = ptrtoint ptr %t.i.i.i102 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %85, ptr %t.i.i.i102, align 4
  %len1.i.i.i108 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i102, i32 0, i32 2
  %89 = ptrtoint ptr %len1.i.i.i108 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 3, ptr %len1.i.i.i108, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i.i101) #8
  %90 = getelementptr inbounds i8, ptr %msg.i.i.i.i101, i32 8
  %91 = call ptr @memset(ptr %90, i32 0, i32 40)
  %92 = ptrtoint ptr %msg.i.i.i.i101 to i32
  call void @__asan_store4_noabort(i32 %92)
  store volatile ptr %msg.i.i.i.i101, ptr %msg.i.i.i.i101, align 4
  %prev.i.i.i.i.i.i.i.i109 = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i.i101, i32 0, i32 1
  %93 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i109 to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %msg.i.i.i.i101, ptr %prev.i.i.i.i.i.i.i.i109, align 4
  %resources.i.i.i.i.i.i.i110 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i101, i32 0, i32 10
  %94 = ptrtoint ptr %resources.i.i.i.i.i.i.i110 to i32
  call void @__asan_store4_noabort(i32 %94)
  store volatile ptr %resources.i.i.i.i.i.i.i110, ptr %resources.i.i.i.i.i.i.i110, align 4
  %prev.i2.i.i.i.i.i.i.i111 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i101, i32 0, i32 10, i32 1
  %95 = ptrtoint ptr %prev.i2.i.i.i.i.i.i.i111 to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %resources.i.i.i.i.i.i.i110, ptr %prev.i2.i.i.i.i.i.i.i111, align 4
  %transfer_list.i.i.i.i.i.i112 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i102, i32 0, i32 18
  %call.i.i.i.i.i.i.i.i113 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i.i112, ptr noundef nonnull %msg.i.i.i.i101, ptr noundef nonnull %msg.i.i.i.i101) #8
  br i1 %call.i.i.i.i.i.i.i.i113, label %if.end.i.i.i.i.i.i.i.i115, label %if.else6.spi_write.exit.i.i118_crit_edge

if.else6.spi_write.exit.i.i118_crit_edge:         ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_write.exit.i.i118

if.end.i.i.i.i.i.i.i.i115:                        ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #10
  %96 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i109 to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %transfer_list.i.i.i.i.i.i112, ptr %prev.i.i.i.i.i.i.i.i109, align 4
  %97 = ptrtoint ptr %transfer_list.i.i.i.i.i.i112 to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %msg.i.i.i.i101, ptr %transfer_list.i.i.i.i.i.i112, align 4
  %prev3.i.i.i.i.i.i.i.i114 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i102, i32 0, i32 18, i32 1
  %98 = ptrtoint ptr %prev3.i.i.i.i.i.i.i.i114 to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %msg.i.i.i.i101, ptr %prev3.i.i.i.i.i.i.i.i114, align 4
  %99 = ptrtoint ptr %msg.i.i.i.i101 to i32
  call void @__asan_store4_noabort(i32 %99)
  store volatile ptr %transfer_list.i.i.i.i.i.i112, ptr %msg.i.i.i.i101, align 4
  br label %spi_write.exit.i.i118

spi_write.exit.i.i118:                            ; preds = %if.end.i.i.i.i.i.i.i.i115, %if.else6.spi_write.exit.i.i118_crit_edge
  %call.i.i.i.i116 = call i32 @spi_sync(ptr noundef %spi, ptr noundef nonnull %msg.i.i.i.i101) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i.i101) #8
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i.i102) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i116)
  %tobool.not.i.i117 = icmp eq i32 %call.i.i.i.i116, 0
  br i1 %tobool.not.i.i117, label %spi_write.exit.i.i118.mcp251x_write_reg.exit120_crit_edge, label %do.end.i.i119

spi_write.exit.i.i118.mcp251x_write_reg.exit120_crit_edge: ; preds = %spi_write.exit.i.i118
  call void @__sanitizer_cov_trace_pc() #10
  br label %mcp251x_write_reg.exit120

do.end.i.i119:                                    ; preds = %spi_write.exit.i.i118
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.28, i32 noundef %call.i.i.i.i116) #11
  br label %mcp251x_write_reg.exit120

mcp251x_write_reg.exit120:                        ; preds = %do.end.i.i119, %spi_write.exit.i.i118.mcp251x_write_reg.exit120_crit_edge
  %call7 = call i64 @ktime_get() #8
  %add.i = add i64 %call7, 1000000000
  call void @__might_sleep(ptr noundef nonnull @.str.12, i32 noundef 849) #8
  %call.i124 = call fastcc zeroext i8 @mcp251x_read_reg(ptr noundef %spi, i8 noundef zeroext 14) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %call.i124)
  %cmp17125 = icmp ult i8 %call.i124, 32
  br i1 %cmp17125, label %mcp251x_write_reg.exit120.if.end42_crit_edge, label %mcp251x_write_reg.exit120.land.lhs.true_crit_edge

mcp251x_write_reg.exit120.land.lhs.true_crit_edge: ; preds = %mcp251x_write_reg.exit120
  br label %land.lhs.true

mcp251x_write_reg.exit120.if.end42_crit_edge:     ; preds = %mcp251x_write_reg.exit120
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42

land.lhs.true:                                    ; preds = %if.then30.land.lhs.true_crit_edge, %mcp251x_write_reg.exit120.land.lhs.true_crit_edge
  %call22 = call i64 @ktime_get() #8
  call void @__sanitizer_cov_trace_cmp8(i64 %call22, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call22, %add.i
  br i1 %cmp3.i, label %for.end, label %if.then30

if.then30:                                        ; preds = %land.lhs.true
  call void @usleep_range_state(i32 noundef 1251, i32 noundef 5000, i32 noundef 2) #8
  %call.i = call fastcc zeroext i8 @mcp251x_read_reg(ptr noundef %spi, i8 noundef zeroext 14) #8
  %cmp17 = icmp ult i8 %call.i, 32
  br i1 %cmp17, label %if.then30.if.end42_crit_edge, label %if.then30.land.lhs.true_crit_edge

if.then30.land.lhs.true_crit_edge:                ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

if.then30.if.end42_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42

for.end:                                          ; preds = %land.lhs.true
  %call.i121 = call fastcc zeroext i8 @mcp251x_read_reg(ptr noundef %spi, i8 noundef zeroext 14) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %call.i121)
  %cmp33 = icmp ult i8 %call.i121, 32
  br i1 %cmp33, label %for.end.if.end42_crit_edge, label %do.end39

for.end.if.end42_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42

do.end39:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.35) #11
  br label %cleanup

if.end42.sink.split:                              ; preds = %spi_write.exit.i.i98.if.end42.sink.split_crit_edge, %spi_write.exit.i.i78.if.end42.sink.split_crit_edge
  %call.i.i.i.i96.sink = phi i32 [ %call.i.i.i.i76, %spi_write.exit.i.i78.if.end42.sink.split_crit_edge ], [ %call.i.i.i.i96, %spi_write.exit.i.i98.if.end42.sink.split_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.28, i32 noundef %call.i.i.i.i96.sink) #11
  br label %if.end42

if.end42:                                         ; preds = %if.end42.sink.split, %for.end.if.end42_crit_edge, %if.then30.if.end42_crit_edge, %mcp251x_write_reg.exit120.if.end42_crit_edge, %spi_write.exit.i.i98.if.end42_crit_edge, %spi_write.exit.i.i78.if.end42_crit_edge
  %state = getelementptr inbounds %struct.can_priv, ptr %1, i32 0, i32 21
  %100 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 0, ptr %state, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end42, %do.end39
  %retval.0 = phi i32 [ 0, %if.end42 ], [ -110, %do.end39 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @close_candev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mcp251x_hw_rx(ptr noundef %spi, i32 noundef %buf_idx) unnamed_addr #2 align 64 {
entry:
  %t.i.i = alloca %struct.spi_transfer, align 4
  %m.i.i = alloca %struct.spi_message, align 4
  %frame = alloca ptr, align 4
  %buf = alloca [14 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %frame) #8
  %2 = ptrtoint ptr %frame to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %frame, align 4, !annotation !140
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %buf) #8
  %3 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i32 1
  %4 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i32 2
  %5 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i32 3
  %6 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i32 4
  %7 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i32 5
  %8 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i32 6
  %net = getelementptr inbounds %struct.mcp251x_priv, ptr %1, i32 0, i32 1
  %9 = call ptr @memset(ptr %buf, i32 255, i32 14)
  %10 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %net, align 4
  %call1 = call ptr @alloc_can_skb(ptr noundef %11, ptr noundef nonnull %frame) #8
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.26) #11
  %12 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %net, align 4
  %rx_dropped = getelementptr inbounds %struct.net_device, ptr %13, i32 0, i32 36, i32 6
  %14 = ptrtoint ptr %rx_dropped to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rx_dropped, align 8
  %inc = add i32 %15, 1
  store i32 %inc, ptr %rx_dropped, align 8
  br label %cleanup

if.end:                                           ; preds = %entry
  %16 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %driver_data.i.i, align 4
  %model.i.i = getelementptr inbounds %struct.mcp251x_priv, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %model.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %model.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9488, i32 %19)
  %cmp.i.not.i = icmp eq i32 %19, 9488
  br i1 %cmp.i.not.i, label %for.cond.preheader.i, label %if.else.i

for.cond.preheader.i:                             ; preds = %if.end
  %mul.i = shl i32 %buf_idx, 4
  %20 = trunc i32 %mul.i to i8
  %conv.i = add i8 %20, 97
  %call4.i = call fastcc zeroext i8 @mcp251x_read_reg(ptr noundef %spi, i8 noundef zeroext %conv.i) #8
  %21 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %call4.i, ptr %3, align 1
  %conv.1.i = add i8 %20, 98
  %call4.1.i = call fastcc zeroext i8 @mcp251x_read_reg(ptr noundef %spi, i8 noundef zeroext %conv.1.i) #8
  %22 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %call4.1.i, ptr %4, align 1
  %conv.2.i = add i8 %20, 99
  %call4.2.i = call fastcc zeroext i8 @mcp251x_read_reg(ptr noundef %spi, i8 noundef zeroext %conv.2.i) #8
  %23 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %call4.2.i, ptr %5, align 1
  %conv.3.i = add i8 %20, 100
  %call4.3.i = call fastcc zeroext i8 @mcp251x_read_reg(ptr noundef %spi, i8 noundef zeroext %conv.3.i) #8
  %24 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %call4.3.i, ptr %6, align 1
  %conv.4.i = add i8 %20, 101
  %call4.4.i = call fastcc zeroext i8 @mcp251x_read_reg(ptr noundef %spi, i8 noundef zeroext %conv.4.i) #8
  %25 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %call4.4.i, ptr %7, align 1
  %26 = and i8 %call4.4.i, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %26)
  %cmp10.i = icmp ult i8 %26, 8
  %narrow.i = add nuw nsw i8 %26, 6
  %narrow71.i = select i1 %cmp10.i, i8 %narrow.i, i8 14
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %narrow71.i)
  %cmp1673.i = icmp ugt i8 %narrow71.i, 6
  br i1 %cmp1673.i, label %for.body18.i, label %for.cond.preheader.i.mcp251x_hw_rx_frame.exit_crit_edge

for.cond.preheader.i.mcp251x_hw_rx_frame.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mcp251x_hw_rx_frame.exit

for.body18.i:                                     ; preds = %for.cond.preheader.i
  %27 = trunc i32 %mul.i to i8
  %conv23.i = add i8 %27, 102
  %call24.i = call fastcc zeroext i8 @mcp251x_read_reg(ptr noundef %spi, i8 noundef zeroext %conv23.i) #8
  %arrayidx25.i = getelementptr inbounds i8, ptr %buf, i32 6
  %28 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %call24.i, ptr %arrayidx25.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %narrow71.i)
  %exitcond.not.i = icmp eq i8 %narrow71.i, 7
  br i1 %exitcond.not.i, label %for.body18.i.mcp251x_hw_rx_frame.exit_crit_edge, label %for.body18.i.1

for.body18.i.mcp251x_hw_rx_frame.exit_crit_edge:  ; preds = %for.body18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mcp251x_hw_rx_frame.exit

for.body18.i.1:                                   ; preds = %for.body18.i
  %29 = trunc i32 %mul.i to i8
  %conv23.i.1 = add i8 %29, 103
  %call24.i.1 = call fastcc zeroext i8 @mcp251x_read_reg(ptr noundef %spi, i8 noundef zeroext %conv23.i.1) #8
  %arrayidx25.i.1 = getelementptr inbounds i8, ptr %buf, i32 7
  %30 = ptrtoint ptr %arrayidx25.i.1 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %call24.i.1, ptr %arrayidx25.i.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %narrow71.i)
  %exitcond.not.i.1 = icmp eq i8 %narrow71.i, 8
  br i1 %exitcond.not.i.1, label %for.body18.i.1.mcp251x_hw_rx_frame.exit_crit_edge, label %for.body18.i.2

for.body18.i.1.mcp251x_hw_rx_frame.exit_crit_edge: ; preds = %for.body18.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %mcp251x_hw_rx_frame.exit

for.body18.i.2:                                   ; preds = %for.body18.i.1
  %31 = trunc i32 %mul.i to i8
  %conv23.i.2 = add i8 %31, 104
  %call24.i.2 = call fastcc zeroext i8 @mcp251x_read_reg(ptr noundef %spi, i8 noundef zeroext %conv23.i.2) #8
  %arrayidx25.i.2 = getelementptr inbounds i8, ptr %buf, i32 8
  %32 = ptrtoint ptr %arrayidx25.i.2 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %call24.i.2, ptr %arrayidx25.i.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %narrow71.i)
  %exitcond.not.i.2 = icmp eq i8 %narrow71.i, 9
  br i1 %exitcond.not.i.2, label %for.body18.i.2.mcp251x_hw_rx_frame.exit_crit_edge, label %for.body18.i.3

for.body18.i.2.mcp251x_hw_rx_frame.exit_crit_edge: ; preds = %for.body18.i.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %mcp251x_hw_rx_frame.exit

for.body18.i.3:                                   ; preds = %for.body18.i.2
  %33 = trunc i32 %mul.i to i8
  %conv23.i.3 = add i8 %33, 105
  %call24.i.3 = call fastcc zeroext i8 @mcp251x_read_reg(ptr noundef %spi, i8 noundef zeroext %conv23.i.3) #8
  %arrayidx25.i.3 = getelementptr inbounds i8, ptr %buf, i32 9
  %34 = ptrtoint ptr %arrayidx25.i.3 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %call24.i.3, ptr %arrayidx25.i.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %narrow71.i)
  %exitcond.not.i.3 = icmp eq i8 %narrow71.i, 10
  br i1 %exitcond.not.i.3, label %for.body18.i.3.mcp251x_hw_rx_frame.exit_crit_edge, label %for.body18.i.4

for.body18.i.3.mcp251x_hw_rx_frame.exit_crit_edge: ; preds = %for.body18.i.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %mcp251x_hw_rx_frame.exit

for.body18.i.4:                                   ; preds = %for.body18.i.3
  %35 = trunc i32 %mul.i to i8
  %conv23.i.4 = add i8 %35, 106
  %call24.i.4 = call fastcc zeroext i8 @mcp251x_read_reg(ptr noundef %spi, i8 noundef zeroext %conv23.i.4) #8
  %arrayidx25.i.4 = getelementptr inbounds i8, ptr %buf, i32 10
  %36 = ptrtoint ptr %arrayidx25.i.4 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %call24.i.4, ptr %arrayidx25.i.4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %narrow71.i)
  %exitcond.not.i.4 = icmp eq i8 %narrow71.i, 11
  br i1 %exitcond.not.i.4, label %for.body18.i.4.mcp251x_hw_rx_frame.exit_crit_edge, label %for.body18.i.5

for.body18.i.4.mcp251x_hw_rx_frame.exit_crit_edge: ; preds = %for.body18.i.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %mcp251x_hw_rx_frame.exit

for.body18.i.5:                                   ; preds = %for.body18.i.4
  %37 = trunc i32 %mul.i to i8
  %conv23.i.5 = add i8 %37, 107
  %call24.i.5 = call fastcc zeroext i8 @mcp251x_read_reg(ptr noundef %spi, i8 noundef zeroext %conv23.i.5) #8
  %arrayidx25.i.5 = getelementptr inbounds i8, ptr %buf, i32 11
  %38 = ptrtoint ptr %arrayidx25.i.5 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %call24.i.5, ptr %arrayidx25.i.5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %narrow71.i)
  %exitcond.not.i.5 = icmp eq i8 %narrow71.i, 12
  br i1 %exitcond.not.i.5, label %for.body18.i.5.mcp251x_hw_rx_frame.exit_crit_edge, label %for.body18.i.6

for.body18.i.5.mcp251x_hw_rx_frame.exit_crit_edge: ; preds = %for.body18.i.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %mcp251x_hw_rx_frame.exit

for.body18.i.6:                                   ; preds = %for.body18.i.5
  %39 = trunc i32 %mul.i to i8
  %conv23.i.6 = add i8 %39, 108
  %call24.i.6 = call fastcc zeroext i8 @mcp251x_read_reg(ptr noundef %spi, i8 noundef zeroext %conv23.i.6) #8
  %arrayidx25.i.6 = getelementptr inbounds i8, ptr %buf, i32 12
  %40 = ptrtoint ptr %arrayidx25.i.6 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %call24.i.6, ptr %arrayidx25.i.6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 13, i8 %narrow71.i)
  %exitcond.not.i.6 = icmp eq i8 %narrow71.i, 13
  br i1 %exitcond.not.i.6, label %for.body18.i.6.mcp251x_hw_rx_frame.exit_crit_edge, label %for.body18.i.7

for.body18.i.6.mcp251x_hw_rx_frame.exit_crit_edge: ; preds = %for.body18.i.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %mcp251x_hw_rx_frame.exit

for.body18.i.7:                                   ; preds = %for.body18.i.6
  call void @__sanitizer_cov_trace_pc() #10
  %41 = trunc i32 %mul.i to i8
  %conv23.i.7 = add i8 %41, 109
  %call24.i.7 = call fastcc zeroext i8 @mcp251x_read_reg(ptr noundef %spi, i8 noundef zeroext %conv23.i.7) #8
  %arrayidx25.i.7 = getelementptr inbounds i8, ptr %buf, i32 13
  %42 = ptrtoint ptr %arrayidx25.i.7 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %call24.i.7, ptr %arrayidx25.i.7, align 1
  br label %mcp251x_hw_rx_frame.exit

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %buf_idx)
  %cmp29.i = icmp eq i32 %buf_idx, 0
  %conv32.i = select i1 %cmp29.i, i8 -112, i8 -108
  %spi_tx_buf.i = getelementptr inbounds %struct.mcp251x_priv, ptr %17, i32 0, i32 5
  %43 = ptrtoint ptr %spi_tx_buf.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %spi_tx_buf.i, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %conv32.i, ptr %44, align 1
  %controller.i = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 1
  %46 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %controller.i, align 8
  %flags.i = getelementptr inbounds %struct.spi_controller, ptr %47, i32 0, i32 10
  %48 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %flags.i, align 4
  %50 = and i16 %49, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %50)
  %tobool36.not.i = icmp eq i16 %50, 0
  br i1 %tobool36.not.i, label %if.else41.i, label %if.then37.i

if.then37.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %51 = ptrtoint ptr %spi_tx_buf.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %spi_tx_buf.i, align 4
  %spi_rx_buf.i = getelementptr inbounds %struct.mcp251x_priv, ptr %17, i32 0, i32 6
  %53 = ptrtoint ptr %spi_rx_buf.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %spi_rx_buf.i, align 4
  %call39.i = call i32 @spi_write_then_read(ptr noundef %spi, ptr noundef %52, i32 noundef 1, ptr noundef %54, i32 noundef 14) #8
  %55 = ptrtoint ptr %spi_rx_buf.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %spi_rx_buf.i, align 4
  %57 = call ptr @memcpy(ptr %3, ptr %56, i32 13)
  br label %mcp251x_hw_rx_frame.exit

if.else41.i:                                      ; preds = %if.else.i
  %58 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i) #8
  %60 = getelementptr inbounds i8, ptr %t.i.i, i32 12
  %61 = call ptr @memset(ptr %60, i32 0, i32 84)
  %spi_tx_buf.i.i = getelementptr inbounds %struct.mcp251x_priv, ptr %59, i32 0, i32 5
  %62 = ptrtoint ptr %spi_tx_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %spi_tx_buf.i.i, align 4
  %64 = ptrtoint ptr %t.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %63, ptr %t.i.i, align 4
  %rx_buf.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 1
  %spi_rx_buf.i.i = getelementptr inbounds %struct.mcp251x_priv, ptr %59, i32 0, i32 6
  %65 = ptrtoint ptr %spi_rx_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %spi_rx_buf.i.i, align 4
  %67 = ptrtoint ptr %rx_buf.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %66, ptr %rx_buf.i.i, align 4
  %len1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 2
  %68 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 14, ptr %len1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %m.i.i) #8
  %69 = getelementptr inbounds i8, ptr %m.i.i, i32 8
  %70 = call ptr @memset(ptr %69, i32 0, i32 40)
  %71 = ptrtoint ptr %m.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store volatile ptr %m.i.i, ptr %m.i.i, align 4
  %prev.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %m.i.i, i32 0, i32 1
  %72 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %m.i.i, ptr %prev.i.i.i.i.i, align 4
  %resources.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %m.i.i, i32 0, i32 10
  %73 = ptrtoint ptr %resources.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store volatile ptr %resources.i.i.i.i, ptr %resources.i.i.i.i, align 4
  %prev.i2.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %m.i.i, i32 0, i32 10, i32 1
  %74 = ptrtoint ptr %prev.i2.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %resources.i.i.i.i, ptr %prev.i2.i.i.i.i, align 4
  %transfer_list.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18
  %call.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i, ptr noundef nonnull %m.i.i, ptr noundef nonnull %m.i.i) #8
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %if.else41.i.spi_message_add_tail.exit.i.i_crit_edge

if.else41.i.spi_message_add_tail.exit.i.i_crit_edge: ; preds = %if.else41.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_message_add_tail.exit.i.i

if.end.i.i.i.i.i:                                 ; preds = %if.else41.i
  call void @__sanitizer_cov_trace_pc() #10
  %75 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %transfer_list.i.i.i, ptr %prev.i.i.i.i.i, align 4
  %76 = ptrtoint ptr %transfer_list.i.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %m.i.i, ptr %transfer_list.i.i.i, align 4
  %prev3.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18, i32 1
  %77 = ptrtoint ptr %prev3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %m.i.i, ptr %prev3.i.i.i.i.i, align 4
  %78 = ptrtoint ptr %m.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store volatile ptr %transfer_list.i.i.i, ptr %m.i.i, align 4
  br label %spi_message_add_tail.exit.i.i

spi_message_add_tail.exit.i.i:                    ; preds = %if.end.i.i.i.i.i, %if.else41.i.spi_message_add_tail.exit.i.i_crit_edge
  %call2.i.i = call i32 @spi_sync(ptr noundef %spi, ptr noundef nonnull %m.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool.not.i.i, label %spi_message_add_tail.exit.i.i.mcp251x_spi_trans.exit.i_crit_edge, label %do.end.i.i

spi_message_add_tail.exit.i.i.mcp251x_spi_trans.exit.i_crit_edge: ; preds = %spi_message_add_tail.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mcp251x_spi_trans.exit.i

do.end.i.i:                                       ; preds = %spi_message_add_tail.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.24, i32 noundef %call2.i.i) #11
  br label %mcp251x_spi_trans.exit.i

mcp251x_spi_trans.exit.i:                         ; preds = %do.end.i.i, %spi_message_add_tail.exit.i.i.mcp251x_spi_trans.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %m.i.i) #8
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i) #8
  %spi_rx_buf43.i = getelementptr inbounds %struct.mcp251x_priv, ptr %17, i32 0, i32 6
  %79 = ptrtoint ptr %spi_rx_buf43.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %spi_rx_buf43.i, align 4
  %81 = call ptr @memcpy(ptr %buf, ptr %80, i32 14)
  br label %mcp251x_hw_rx_frame.exit

mcp251x_hw_rx_frame.exit:                         ; preds = %mcp251x_spi_trans.exit.i, %if.then37.i, %for.body18.i.7, %for.body18.i.6.mcp251x_hw_rx_frame.exit_crit_edge, %for.body18.i.5.mcp251x_hw_rx_frame.exit_crit_edge, %for.body18.i.4.mcp251x_hw_rx_frame.exit_crit_edge, %for.body18.i.3.mcp251x_hw_rx_frame.exit_crit_edge, %for.body18.i.2.mcp251x_hw_rx_frame.exit_crit_edge, %for.body18.i.1.mcp251x_hw_rx_frame.exit_crit_edge, %for.body18.i.mcp251x_hw_rx_frame.exit_crit_edge, %for.cond.preheader.i.mcp251x_hw_rx_frame.exit_crit_edge
  %82 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %4, align 1
  %conv = zext i8 %83 to i32
  %and = and i32 %conv, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %mcp251x_hw_rx_frame.exit
  %84 = ptrtoint ptr %frame to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %frame, align 4
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 -2147483648, ptr %85, align 8
  %87 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %4, align 1
  %conv6 = zext i8 %88 to i32
  %and7 = shl nuw nsw i32 %conv6, 16
  %shl = and i32 %and7, 196608
  %89 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %5, align 1
  %conv10 = zext i8 %90 to i32
  %shl12 = shl nuw nsw i32 %conv10, 8
  %or = or i32 %shl, %shl12
  %91 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %6, align 1
  %conv14 = zext i8 %92 to i32
  %or17 = or i32 %or, %conv14
  %93 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %3, align 1
  %conv19 = zext i8 %94 to i32
  %95 = shl nuw nsw i32 %conv19, 21
  %96 = shl nuw nsw i32 %conv6, 13
  %97 = and i32 %96, 1835008
  %shl24 = or i32 %95, %97
  %or25 = or i32 %shl24, %or17
  %98 = load ptr, ptr %frame, align 4
  %99 = ptrtoint ptr %98 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %98, align 8
  %or27 = or i32 %or25, %100
  store i32 %or27, ptr %98, align 8
  %101 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %7, align 1
  %103 = and i8 %102, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %103)
  %tobool31.not = icmp eq i8 %103, 0
  br i1 %tobool31.not, label %if.then4.if.end52_crit_edge, label %if.then4.if.end52.sink.split_crit_edge

if.then4.if.end52.sink.split_crit_edge:           ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end52.sink.split

if.then4.if.end52_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end52

if.else:                                          ; preds = %mcp251x_hw_rx_frame.exit
  %104 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %3, align 1
  %conv37 = zext i8 %105 to i32
  %shl38 = shl nuw nsw i32 %conv37, 3
  %106 = lshr i32 %conv, 5
  %or42 = or i32 %shl38, %106
  %107 = ptrtoint ptr %frame to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %frame, align 4
  %109 = ptrtoint ptr %108 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %or42, ptr %108, align 8
  %110 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %4, align 1
  %112 = and i8 %111, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %112)
  %tobool47.not = icmp eq i8 %112, 0
  br i1 %tobool47.not, label %if.else.if.end52_crit_edge, label %if.else.if.end52.sink.split_crit_edge

if.else.if.end52.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end52.sink.split

if.else.if.end52_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end52

if.end52.sink.split:                              ; preds = %if.else.if.end52.sink.split_crit_edge, %if.then4.if.end52.sink.split_crit_edge
  %113 = ptrtoint ptr %frame to i32
  call void @__asan_load4_noabort(i32 %113)
  %.sink92 = load ptr, ptr %frame, align 4
  %114 = ptrtoint ptr %.sink92 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %.sink92, align 8
  %or50 = or i32 %115, 1073741824
  store i32 %or50, ptr %.sink92, align 8
  br label %if.end52

if.end52:                                         ; preds = %if.end52.sink.split, %if.else.if.end52_crit_edge, %if.then4.if.end52_crit_edge
  %116 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %7, align 1
  %118 = and i8 %117, 15
  %119 = call i8 @llvm.umin.i8(i8 %118, i8 8)
  %120 = ptrtoint ptr %frame to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %frame, align 4
  %122 = getelementptr inbounds %struct.can_frame, ptr %121, i32 0, i32 1
  %123 = ptrtoint ptr %122 to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 %119, ptr %122, align 4
  %124 = ptrtoint ptr %121 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %121, align 8
  %and64 = and i32 %125, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64)
  %tobool65.not = icmp eq i32 %and64, 0
  br i1 %tobool65.not, label %if.then66, label %if.end52.if.end73_crit_edge

if.end52.if.end73_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end73

if.then66:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  %data = getelementptr inbounds %struct.can_frame, ptr %121, i32 0, i32 5
  %conv69 = zext i8 %119 to i32
  %126 = call ptr @memcpy(ptr %data, ptr %8, i32 %conv69)
  %127 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %net, align 4
  %rx_bytes = getelementptr inbounds %struct.net_device, ptr %128, i32 0, i32 36, i32 2
  %129 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %rx_bytes, align 8
  %add = add i32 %130, %conv69
  store i32 %add, ptr %rx_bytes, align 8
  br label %if.end73

if.end73:                                         ; preds = %if.then66, %if.end52.if.end73_crit_edge
  %131 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %net, align 4
  %stats75 = getelementptr inbounds %struct.net_device, ptr %132, i32 0, i32 36
  %133 = ptrtoint ptr %stats75 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %stats75, align 8
  %inc76 = add i32 %134, 1
  store i32 %inc76, ptr %stats75, align 8
  %call78 = call i32 @netif_rx_ni(ptr noundef nonnull %call1) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end73, %do.end
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %buf) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %frame) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @can_bus_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @can_get_echo_skb(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_write_then_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_can_skb(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx_ni(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i8 @mcp251x_read_reg(ptr noundef %spi, i8 noundef zeroext %reg) unnamed_addr #2 align 64 {
entry:
  %t.i = alloca %struct.spi_transfer, align 4
  %m.i = alloca %struct.spi_message, align 4
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #8
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %val, align 1
  %spi_tx_buf = getelementptr inbounds %struct.mcp251x_priv, ptr %1, i32 0, i32 5
  %3 = ptrtoint ptr %spi_tx_buf to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %spi_tx_buf, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 3, ptr %4, align 1
  %6 = load ptr, ptr %spi_tx_buf, align 4
  %arrayidx2 = getelementptr i8, ptr %6, i32 1
  %7 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %reg, ptr %arrayidx2, align 1
  %controller = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 1
  %8 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %controller, align 8
  %flags = getelementptr inbounds %struct.spi_controller, ptr %9, i32 0, i32 10
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %flags, align 4
  %12 = and i16 %11, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool.not = icmp eq i16 %12, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %spi_tx_buf to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %spi_tx_buf, align 4
  %call4 = call i32 @spi_write_then_read(ptr noundef %spi, ptr noundef %14, i32 noundef 2, ptr noundef nonnull %val, i32 noundef 1) #8
  br label %if.end

if.else:                                          ; preds = %entry
  %15 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i) #8
  %17 = getelementptr inbounds i8, ptr %t.i, i32 12
  %18 = call ptr @memset(ptr %17, i32 0, i32 84)
  %spi_tx_buf.i = getelementptr inbounds %struct.mcp251x_priv, ptr %16, i32 0, i32 5
  %19 = ptrtoint ptr %spi_tx_buf.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %spi_tx_buf.i, align 4
  %21 = ptrtoint ptr %t.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %20, ptr %t.i, align 4
  %rx_buf.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 1
  %spi_rx_buf.i = getelementptr inbounds %struct.mcp251x_priv, ptr %16, i32 0, i32 6
  %22 = ptrtoint ptr %spi_rx_buf.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %spi_rx_buf.i, align 4
  %24 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %23, ptr %rx_buf.i, align 4
  %len1.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 2
  %25 = ptrtoint ptr %len1.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 3, ptr %len1.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %m.i) #8
  %26 = getelementptr inbounds i8, ptr %m.i, i32 8
  %27 = call ptr @memset(ptr %26, i32 0, i32 40)
  %28 = ptrtoint ptr %m.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %m.i, ptr %m.i, align 4
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %m.i, i32 0, i32 1
  %29 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %m.i, ptr %prev.i.i.i.i, align 4
  %resources.i.i.i = getelementptr inbounds %struct.spi_message, ptr %m.i, i32 0, i32 10
  %30 = ptrtoint ptr %resources.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %resources.i.i.i, ptr %resources.i.i.i, align 4
  %prev.i2.i.i.i = getelementptr inbounds %struct.spi_message, ptr %m.i, i32 0, i32 10, i32 1
  %31 = ptrtoint ptr %prev.i2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %resources.i.i.i, ptr %prev.i2.i.i.i, align 4
  %transfer_list.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i, ptr noundef nonnull %m.i, ptr noundef nonnull %m.i) #8
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.else.spi_message_add_tail.exit.i_crit_edge

if.else.spi_message_add_tail.exit.i_crit_edge:    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_message_add_tail.exit.i

if.end.i.i.i.i:                                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %32 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %transfer_list.i.i, ptr %prev.i.i.i.i, align 4
  %33 = ptrtoint ptr %transfer_list.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %m.i, ptr %transfer_list.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18, i32 1
  %34 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %m.i, ptr %prev3.i.i.i.i, align 4
  %35 = ptrtoint ptr %m.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %transfer_list.i.i, ptr %m.i, align 4
  br label %spi_message_add_tail.exit.i

spi_message_add_tail.exit.i:                      ; preds = %if.end.i.i.i.i, %if.else.spi_message_add_tail.exit.i_crit_edge
  %call2.i = call i32 @spi_sync(ptr noundef %spi, ptr noundef nonnull %m.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %spi_message_add_tail.exit.i.mcp251x_spi_trans.exit_crit_edge, label %do.end.i

spi_message_add_tail.exit.i.mcp251x_spi_trans.exit_crit_edge: ; preds = %spi_message_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mcp251x_spi_trans.exit

do.end.i:                                         ; preds = %spi_message_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.24, i32 noundef %call2.i) #11
  br label %mcp251x_spi_trans.exit

mcp251x_spi_trans.exit:                           ; preds = %do.end.i, %spi_message_add_tail.exit.i.mcp251x_spi_trans.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %m.i) #8
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i) #8
  %spi_rx_buf = getelementptr inbounds %struct.mcp251x_priv, ptr %1, i32 0, i32 6
  %36 = ptrtoint ptr %spi_rx_buf to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %spi_rx_buf, align 4
  %arrayidx6 = getelementptr i8, ptr %37, i32 2
  %38 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx6, align 1
  %40 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %39, ptr %val, align 1
  br label %if.end

if.end:                                           ; preds = %mcp251x_spi_trans.exit, %if.then
  %41 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %val, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #8
  ret i8 %42
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_can_err_skb(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mcp251x_write_2regs(ptr noundef %spi, i8 noundef zeroext %v1, i8 noundef zeroext %v2) unnamed_addr #2 align 64 {
entry:
  %msg.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %spi_tx_buf = getelementptr inbounds %struct.mcp251x_priv, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %spi_tx_buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %spi_tx_buf, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 2, ptr %3, align 1
  %5 = load ptr, ptr %spi_tx_buf, align 4
  %arrayidx2 = getelementptr i8, ptr %5, i32 1
  %6 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 43, ptr %arrayidx2, align 1
  %7 = load ptr, ptr %spi_tx_buf, align 4
  %arrayidx4 = getelementptr i8, ptr %7, i32 2
  %8 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %v1, ptr %arrayidx4, align 1
  %9 = load ptr, ptr %spi_tx_buf, align 4
  %arrayidx6 = getelementptr i8, ptr %9, i32 3
  %10 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %v2, ptr %arrayidx6, align 1
  %11 = load ptr, ptr %driver_data.i.i, align 4
  %spi_tx_buf.i = getelementptr inbounds %struct.mcp251x_priv, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %spi_tx_buf.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %spi_tx_buf.i, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i) #8
  %14 = getelementptr inbounds i8, ptr %t.i.i, i32 4
  %15 = call ptr @memset(ptr %14, i32 0, i32 92)
  %16 = ptrtoint ptr %t.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %t.i.i, align 4
  %len1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 2
  %17 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 4, ptr %len1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i) #8
  %18 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 8
  %19 = call ptr @memset(ptr %18, i32 0, i32 40)
  %20 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %msg.i.i.i, ptr %msg.i.i.i, align 4
  %prev.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i, i32 0, i32 1
  %21 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %msg.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10
  %22 = ptrtoint ptr %resources.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %resources.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10, i32 1
  %23 = ptrtoint ptr %prev.i2.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %resources.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i, ptr noundef nonnull %msg.i.i.i) #8
  br i1 %call.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i, label %entry.spi_write.exit.i_crit_edge

entry.spi_write.exit.i_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_write.exit.i

if.end.i.i.i.i.i.i.i:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %transfer_list.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %25 = ptrtoint ptr %transfer_list.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %msg.i.i.i, ptr %transfer_list.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18, i32 1
  %26 = ptrtoint ptr %prev3.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %msg.i.i.i, ptr %prev3.i.i.i.i.i.i.i, align 4
  %27 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %transfer_list.i.i.i.i.i, ptr %msg.i.i.i, align 4
  br label %spi_write.exit.i

spi_write.exit.i:                                 ; preds = %if.end.i.i.i.i.i.i.i, %entry.spi_write.exit.i_crit_edge
  %call.i.i.i = call i32 @spi_sync(ptr noundef %spi, ptr noundef nonnull %msg.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i, label %spi_write.exit.i.mcp251x_spi_write.exit_crit_edge, label %do.end.i

spi_write.exit.i.mcp251x_spi_write.exit_crit_edge: ; preds = %spi_write.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mcp251x_spi_write.exit

do.end.i:                                         ; preds = %spi_write.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.28, i32 noundef %call.i.i.i) #11
  br label %mcp251x_spi_write.exit

mcp251x_spi_write.exit:                           ; preds = %do.end.i, %spi_write.exit.i.mcp251x_spi_write.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mcp251x_do_set_bittiming(ptr nocapture noundef readonly %net) unnamed_addr #2 align 64 {
entry:
  %msg.i.i.i.i21 = alloca %struct.spi_message, align 4
  %t.i.i.i22 = alloca %struct.spi_transfer, align 4
  %msg.i.i.i.i1 = alloca %struct.spi_message, align 4
  %t.i.i.i2 = alloca %struct.spi_transfer, align 4
  %msg.i.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i.i = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %spi1 = getelementptr i8, ptr %net, i32 2620
  %0 = ptrtoint ptr %spi1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spi1, align 4
  %sjw = getelementptr i8, ptr %net, i32 2364
  %2 = ptrtoint ptr %sjw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sjw, align 4
  %sub = shl i32 %3, 6
  %shl = add i32 %sub, 192
  %brp = getelementptr i8, ptr %net, i32 2368
  %4 = ptrtoint ptr %brp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %brp, align 4
  %sub2 = add i32 %5, 255
  %or = or i32 %shl, %sub2
  %conv = trunc i32 %or to i8
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i.i.i, align 4
  %spi_tx_buf.i = getelementptr inbounds %struct.mcp251x_priv, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %spi_tx_buf.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %spi_tx_buf.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 2, ptr %9, align 1
  %11 = load ptr, ptr %spi_tx_buf.i, align 4
  %arrayidx2.i = getelementptr i8, ptr %11, i32 1
  %12 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 42, ptr %arrayidx2.i, align 1
  %13 = load ptr, ptr %spi_tx_buf.i, align 4
  %arrayidx4.i = getelementptr i8, ptr %13, i32 2
  %14 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv, ptr %arrayidx4.i, align 1
  %15 = load ptr, ptr %driver_data.i.i.i, align 4
  %spi_tx_buf.i.i = getelementptr inbounds %struct.mcp251x_priv, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %spi_tx_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %spi_tx_buf.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i.i) #8
  %18 = getelementptr inbounds i8, ptr %t.i.i.i, i32 4
  %19 = call ptr @memset(ptr %18, i32 0, i32 92)
  %20 = ptrtoint ptr %t.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %t.i.i.i, align 4
  %len1.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 2
  %21 = ptrtoint ptr %len1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 3, ptr %len1.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i.i) #8
  %22 = getelementptr inbounds i8, ptr %msg.i.i.i.i, i32 8
  %23 = call ptr @memset(ptr %22, i32 0, i32 40)
  %24 = ptrtoint ptr %msg.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %msg.i.i.i.i, ptr %msg.i.i.i.i, align 4
  %prev.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i.i, i32 0, i32 1
  %25 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %msg.i.i.i.i, ptr %prev.i.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i, i32 0, i32 10
  %26 = ptrtoint ptr %resources.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %resources.i.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i, i32 0, i32 10, i32 1
  %27 = ptrtoint ptr %prev.i2.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %resources.i.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i.i, ptr noundef nonnull %msg.i.i.i.i) #8
  br i1 %call.i.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i.i, label %entry.spi_write.exit.i.i_crit_edge

entry.spi_write.exit.i.i_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_write.exit.i.i

if.end.i.i.i.i.i.i.i.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %transfer_list.i.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i.i, align 4
  %29 = ptrtoint ptr %transfer_list.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %msg.i.i.i.i, ptr %transfer_list.i.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 18, i32 1
  %30 = ptrtoint ptr %prev3.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %msg.i.i.i.i, ptr %prev3.i.i.i.i.i.i.i.i, align 4
  %31 = ptrtoint ptr %msg.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %transfer_list.i.i.i.i.i.i, ptr %msg.i.i.i.i, align 4
  br label %spi_write.exit.i.i

spi_write.exit.i.i:                               ; preds = %if.end.i.i.i.i.i.i.i.i, %entry.spi_write.exit.i.i_crit_edge
  %call.i.i.i.i = call i32 @spi_sync(ptr noundef %1, ptr noundef nonnull %msg.i.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i, label %spi_write.exit.i.i.mcp251x_write_reg.exit_crit_edge, label %do.end.i.i

spi_write.exit.i.i.mcp251x_write_reg.exit_crit_edge: ; preds = %spi_write.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mcp251x_write_reg.exit

do.end.i.i:                                       ; preds = %spi_write.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.28, i32 noundef %call.i.i.i.i) #11
  br label %mcp251x_write_reg.exit

mcp251x_write_reg.exit:                           ; preds = %do.end.i.i, %spi_write.exit.i.i.mcp251x_write_reg.exit_crit_edge
  %ctrlmode = getelementptr i8, ptr %net, i32 2476
  %32 = ptrtoint ptr %ctrlmode to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %ctrlmode, align 4
  %and = shl i32 %33, 4
  %34 = and i32 %and, 64
  %phase_seg1 = getelementptr i8, ptr %net, i32 2356
  %35 = ptrtoint ptr %phase_seg1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %phase_seg1, align 4
  %sub5 = shl i32 %36, 3
  %shl6 = add i32 %sub5, 120
  %or4 = or i32 %shl6, %34
  %prop_seg = getelementptr i8, ptr %net, i32 2352
  %37 = ptrtoint ptr %prop_seg to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %prop_seg, align 4
  %sub8 = add i32 %38, 127
  %or7 = or i32 %or4, %sub8
  %39 = trunc i32 %or7 to i8
  %conv10 = or i8 %39, -128
  %40 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %driver_data.i.i.i, align 4
  %spi_tx_buf.i4 = getelementptr inbounds %struct.mcp251x_priv, ptr %41, i32 0, i32 5
  %42 = ptrtoint ptr %spi_tx_buf.i4 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %spi_tx_buf.i4, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 2, ptr %43, align 1
  %45 = load ptr, ptr %spi_tx_buf.i4, align 4
  %arrayidx2.i5 = getelementptr i8, ptr %45, i32 1
  %46 = ptrtoint ptr %arrayidx2.i5 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 41, ptr %arrayidx2.i5, align 1
  %47 = load ptr, ptr %spi_tx_buf.i4, align 4
  %arrayidx4.i6 = getelementptr i8, ptr %47, i32 2
  %48 = ptrtoint ptr %arrayidx4.i6 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %conv10, ptr %arrayidx4.i6, align 1
  %49 = load ptr, ptr %driver_data.i.i.i, align 4
  %spi_tx_buf.i.i7 = getelementptr inbounds %struct.mcp251x_priv, ptr %49, i32 0, i32 5
  %50 = ptrtoint ptr %spi_tx_buf.i.i7 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %spi_tx_buf.i.i7, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i.i2) #8
  %52 = getelementptr inbounds i8, ptr %t.i.i.i2, i32 4
  %53 = call ptr @memset(ptr %52, i32 0, i32 92)
  %54 = ptrtoint ptr %t.i.i.i2 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %51, ptr %t.i.i.i2, align 4
  %len1.i.i.i8 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i2, i32 0, i32 2
  %55 = ptrtoint ptr %len1.i.i.i8 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 3, ptr %len1.i.i.i8, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i.i1) #8
  %56 = getelementptr inbounds i8, ptr %msg.i.i.i.i1, i32 8
  %57 = call ptr @memset(ptr %56, i32 0, i32 40)
  %58 = ptrtoint ptr %msg.i.i.i.i1 to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile ptr %msg.i.i.i.i1, ptr %msg.i.i.i.i1, align 4
  %prev.i.i.i.i.i.i.i.i9 = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i.i1, i32 0, i32 1
  %59 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i9 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %msg.i.i.i.i1, ptr %prev.i.i.i.i.i.i.i.i9, align 4
  %resources.i.i.i.i.i.i.i10 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i1, i32 0, i32 10
  %60 = ptrtoint ptr %resources.i.i.i.i.i.i.i10 to i32
  call void @__asan_store4_noabort(i32 %60)
  store volatile ptr %resources.i.i.i.i.i.i.i10, ptr %resources.i.i.i.i.i.i.i10, align 4
  %prev.i2.i.i.i.i.i.i.i11 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i1, i32 0, i32 10, i32 1
  %61 = ptrtoint ptr %prev.i2.i.i.i.i.i.i.i11 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %resources.i.i.i.i.i.i.i10, ptr %prev.i2.i.i.i.i.i.i.i11, align 4
  %transfer_list.i.i.i.i.i.i12 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i2, i32 0, i32 18
  %call.i.i.i.i.i.i.i.i13 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i.i12, ptr noundef nonnull %msg.i.i.i.i1, ptr noundef nonnull %msg.i.i.i.i1) #8
  br i1 %call.i.i.i.i.i.i.i.i13, label %if.end.i.i.i.i.i.i.i.i15, label %mcp251x_write_reg.exit.spi_write.exit.i.i18_crit_edge

mcp251x_write_reg.exit.spi_write.exit.i.i18_crit_edge: ; preds = %mcp251x_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_write.exit.i.i18

if.end.i.i.i.i.i.i.i.i15:                         ; preds = %mcp251x_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #10
  %62 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i9 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %transfer_list.i.i.i.i.i.i12, ptr %prev.i.i.i.i.i.i.i.i9, align 4
  %63 = ptrtoint ptr %transfer_list.i.i.i.i.i.i12 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %msg.i.i.i.i1, ptr %transfer_list.i.i.i.i.i.i12, align 4
  %prev3.i.i.i.i.i.i.i.i14 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i2, i32 0, i32 18, i32 1
  %64 = ptrtoint ptr %prev3.i.i.i.i.i.i.i.i14 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %msg.i.i.i.i1, ptr %prev3.i.i.i.i.i.i.i.i14, align 4
  %65 = ptrtoint ptr %msg.i.i.i.i1 to i32
  call void @__asan_store4_noabort(i32 %65)
  store volatile ptr %transfer_list.i.i.i.i.i.i12, ptr %msg.i.i.i.i1, align 4
  br label %spi_write.exit.i.i18

spi_write.exit.i.i18:                             ; preds = %if.end.i.i.i.i.i.i.i.i15, %mcp251x_write_reg.exit.spi_write.exit.i.i18_crit_edge
  %call.i.i.i.i16 = call i32 @spi_sync(ptr noundef %1, ptr noundef nonnull %msg.i.i.i.i1) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i.i1) #8
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i.i2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i16)
  %tobool.not.i.i17 = icmp eq i32 %call.i.i.i.i16, 0
  br i1 %tobool.not.i.i17, label %spi_write.exit.i.i18.mcp251x_write_reg.exit20_crit_edge, label %do.end.i.i19

spi_write.exit.i.i18.mcp251x_write_reg.exit20_crit_edge: ; preds = %spi_write.exit.i.i18
  call void @__sanitizer_cov_trace_pc() #10
  br label %mcp251x_write_reg.exit20

do.end.i.i19:                                     ; preds = %spi_write.exit.i.i18
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.28, i32 noundef %call.i.i.i.i16) #11
  br label %mcp251x_write_reg.exit20

mcp251x_write_reg.exit20:                         ; preds = %do.end.i.i19, %spi_write.exit.i.i18.mcp251x_write_reg.exit20_crit_edge
  %phase_seg2 = getelementptr i8, ptr %net, i32 2360
  %66 = ptrtoint ptr %phase_seg2 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %phase_seg2, align 4
  %68 = trunc i32 %67 to i8
  %conv12 = add i8 %68, -1
  %69 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %driver_data.i.i.i, align 4
  %spi_tx_buf.i24 = getelementptr inbounds %struct.mcp251x_priv, ptr %70, i32 0, i32 5
  %71 = ptrtoint ptr %spi_tx_buf.i24 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %spi_tx_buf.i24, align 4
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 5, ptr %72, align 1
  %74 = load ptr, ptr %spi_tx_buf.i24, align 4
  %arrayidx2.i25 = getelementptr i8, ptr %74, i32 1
  %75 = ptrtoint ptr %arrayidx2.i25 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 40, ptr %arrayidx2.i25, align 1
  %76 = load ptr, ptr %spi_tx_buf.i24, align 4
  %arrayidx4.i26 = getelementptr i8, ptr %76, i32 2
  %77 = ptrtoint ptr %arrayidx4.i26 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 7, ptr %arrayidx4.i26, align 1
  %78 = load ptr, ptr %spi_tx_buf.i24, align 4
  %arrayidx6.i = getelementptr i8, ptr %78, i32 3
  %79 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %conv12, ptr %arrayidx6.i, align 1
  %80 = load ptr, ptr %driver_data.i.i.i, align 4
  %spi_tx_buf.i.i27 = getelementptr inbounds %struct.mcp251x_priv, ptr %80, i32 0, i32 5
  %81 = ptrtoint ptr %spi_tx_buf.i.i27 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %spi_tx_buf.i.i27, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i.i22) #8
  %83 = getelementptr inbounds i8, ptr %t.i.i.i22, i32 4
  %84 = call ptr @memset(ptr %83, i32 0, i32 92)
  %85 = ptrtoint ptr %t.i.i.i22 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %82, ptr %t.i.i.i22, align 4
  %len1.i.i.i28 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i22, i32 0, i32 2
  %86 = ptrtoint ptr %len1.i.i.i28 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 4, ptr %len1.i.i.i28, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i.i21) #8
  %87 = getelementptr inbounds i8, ptr %msg.i.i.i.i21, i32 8
  %88 = call ptr @memset(ptr %87, i32 0, i32 40)
  %89 = ptrtoint ptr %msg.i.i.i.i21 to i32
  call void @__asan_store4_noabort(i32 %89)
  store volatile ptr %msg.i.i.i.i21, ptr %msg.i.i.i.i21, align 4
  %prev.i.i.i.i.i.i.i.i29 = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i.i21, i32 0, i32 1
  %90 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i29 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %msg.i.i.i.i21, ptr %prev.i.i.i.i.i.i.i.i29, align 4
  %resources.i.i.i.i.i.i.i30 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i21, i32 0, i32 10
  %91 = ptrtoint ptr %resources.i.i.i.i.i.i.i30 to i32
  call void @__asan_store4_noabort(i32 %91)
  store volatile ptr %resources.i.i.i.i.i.i.i30, ptr %resources.i.i.i.i.i.i.i30, align 4
  %prev.i2.i.i.i.i.i.i.i31 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i21, i32 0, i32 10, i32 1
  %92 = ptrtoint ptr %prev.i2.i.i.i.i.i.i.i31 to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %resources.i.i.i.i.i.i.i30, ptr %prev.i2.i.i.i.i.i.i.i31, align 4
  %transfer_list.i.i.i.i.i.i32 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i22, i32 0, i32 18
  %call.i.i.i.i.i.i.i.i33 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i.i32, ptr noundef nonnull %msg.i.i.i.i21, ptr noundef nonnull %msg.i.i.i.i21) #8
  br i1 %call.i.i.i.i.i.i.i.i33, label %if.end.i.i.i.i.i.i.i.i35, label %mcp251x_write_reg.exit20.spi_write.exit.i.i38_crit_edge

mcp251x_write_reg.exit20.spi_write.exit.i.i38_crit_edge: ; preds = %mcp251x_write_reg.exit20
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_write.exit.i.i38

if.end.i.i.i.i.i.i.i.i35:                         ; preds = %mcp251x_write_reg.exit20
  call void @__sanitizer_cov_trace_pc() #10
  %93 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i29 to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %transfer_list.i.i.i.i.i.i32, ptr %prev.i.i.i.i.i.i.i.i29, align 4
  %94 = ptrtoint ptr %transfer_list.i.i.i.i.i.i32 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %msg.i.i.i.i21, ptr %transfer_list.i.i.i.i.i.i32, align 4
  %prev3.i.i.i.i.i.i.i.i34 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i22, i32 0, i32 18, i32 1
  %95 = ptrtoint ptr %prev3.i.i.i.i.i.i.i.i34 to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %msg.i.i.i.i21, ptr %prev3.i.i.i.i.i.i.i.i34, align 4
  %96 = ptrtoint ptr %msg.i.i.i.i21 to i32
  call void @__asan_store4_noabort(i32 %96)
  store volatile ptr %transfer_list.i.i.i.i.i.i32, ptr %msg.i.i.i.i21, align 4
  br label %spi_write.exit.i.i38

spi_write.exit.i.i38:                             ; preds = %if.end.i.i.i.i.i.i.i.i35, %mcp251x_write_reg.exit20.spi_write.exit.i.i38_crit_edge
  %call.i.i.i.i36 = call i32 @spi_sync(ptr noundef %1, ptr noundef nonnull %msg.i.i.i.i21) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i.i21) #8
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i.i22) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i36)
  %tobool.not.i.i37 = icmp eq i32 %call.i.i.i.i36, 0
  br i1 %tobool.not.i.i37, label %spi_write.exit.i.i38.mcp251x_write_bits.exit_crit_edge, label %do.end.i.i39

spi_write.exit.i.i38.mcp251x_write_bits.exit_crit_edge: ; preds = %spi_write.exit.i.i38
  call void @__sanitizer_cov_trace_pc() #10
  br label %mcp251x_write_bits.exit

do.end.i.i39:                                     ; preds = %spi_write.exit.i.i38
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.28, i32 noundef %call.i.i.i.i36) #11
  br label %mcp251x_write_bits.exit

mcp251x_write_bits.exit:                          ; preds = %do.end.i.i39, %spi_write.exit.i.i38.mcp251x_write_bits.exit_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mcp251x_do_set_bittiming.__UNIQUE_ID_ddebug507, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mcp251x_do_set_bittiming, %do.end)) #8
          to label %if.then [label %do.end], !srcloc !141

if.then:                                          ; preds = %mcp251x_write_bits.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call18 = call fastcc zeroext i8 @mcp251x_read_reg(ptr noundef %1, i8 noundef zeroext 42)
  %conv19 = zext i8 %call18 to i32
  %call20 = call fastcc zeroext i8 @mcp251x_read_reg(ptr noundef %1, i8 noundef zeroext 41)
  %conv21 = zext i8 %call20 to i32
  %call22 = call fastcc zeroext i8 @mcp251x_read_reg(ptr noundef %1, i8 noundef zeroext 40)
  %conv23 = zext i8 %call22 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mcp251x_do_set_bittiming.__UNIQUE_ID_ddebug507, ptr noundef %1, ptr noundef nonnull @.str.34, i32 noundef %conv19, i32 noundef %conv21, i32 noundef %conv23) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %mcp251x_write_bits.exit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @can_free_echo_skb(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @can_put_echo_skb(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mcp251x_hw_reset(ptr noundef %spi) unnamed_addr #2 align 64 {
entry:
  %msg.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 214748000) #8
  %spi_tx_buf = getelementptr inbounds %struct.mcp251x_priv, ptr %1, i32 0, i32 5
  %7 = ptrtoint ptr %spi_tx_buf to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %spi_tx_buf, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -64, ptr %8, align 1
  %10 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %driver_data.i.i, align 4
  %spi_tx_buf.i = getelementptr inbounds %struct.mcp251x_priv, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %spi_tx_buf.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %spi_tx_buf.i, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i) #8
  %14 = getelementptr inbounds i8, ptr %t.i.i, i32 4
  %15 = call ptr @memset(ptr %14, i32 0, i32 92)
  %16 = ptrtoint ptr %t.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %t.i.i, align 4
  %len1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 2
  %17 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %len1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i) #8
  %18 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 8
  %19 = call ptr @memset(ptr %18, i32 0, i32 40)
  %20 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %msg.i.i.i, ptr %msg.i.i.i, align 4
  %prev.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i, i32 0, i32 1
  %21 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %msg.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10
  %22 = ptrtoint ptr %resources.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %resources.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10, i32 1
  %23 = ptrtoint ptr %prev.i2.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %resources.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i, ptr noundef nonnull %msg.i.i.i) #8
  br i1 %call.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i, label %entry.spi_write.exit.i_crit_edge

entry.spi_write.exit.i_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_write.exit.i

if.end.i.i.i.i.i.i.i:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %transfer_list.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %25 = ptrtoint ptr %transfer_list.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %msg.i.i.i, ptr %transfer_list.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18, i32 1
  %26 = ptrtoint ptr %prev3.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %msg.i.i.i, ptr %prev3.i.i.i.i.i.i.i, align 4
  %27 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %transfer_list.i.i.i.i.i, ptr %msg.i.i.i, align 4
  br label %spi_write.exit.i

spi_write.exit.i:                                 ; preds = %if.end.i.i.i.i.i.i.i, %entry.spi_write.exit.i_crit_edge
  %call.i.i.i = call i32 @spi_sync(ptr noundef %spi, ptr noundef nonnull %msg.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i, label %while.body7.preheader, label %mcp251x_spi_write.exit.thread

while.body7.preheader:                            ; preds = %spi_write.exit.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %28(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %29(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %30(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %31(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %32(i32 noundef 214748000) #8
  %call9 = call i64 @ktime_get() #8
  %add.i = add i64 %call9, 1000000000
  call void @__might_sleep(ptr noundef nonnull @.str.12, i32 noundef 913) #8
  %call.i64 = call fastcc zeroext i8 @mcp251x_read_reg(ptr noundef %spi, i8 noundef zeroext 14) #8
  %33 = and i8 %call.i64, -32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %33)
  %cmp2065 = icmp eq i8 %33, -128
  br i1 %cmp2065, label %while.body7.preheader.cleanup_crit_edge, label %while.body7.preheader.land.lhs.true_crit_edge

while.body7.preheader.land.lhs.true_crit_edge:    ; preds = %while.body7.preheader
  br label %land.lhs.true

while.body7.preheader.cleanup_crit_edge:          ; preds = %while.body7.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

mcp251x_spi_write.exit.thread:                    ; preds = %spi_write.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.28, i32 noundef %call.i.i.i) #11
  br label %cleanup

land.lhs.true:                                    ; preds = %if.then33.land.lhs.true_crit_edge, %while.body7.preheader.land.lhs.true_crit_edge
  %call25 = call i64 @ktime_get() #8
  call void @__sanitizer_cov_trace_cmp8(i64 %call25, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call25, %add.i
  br i1 %cmp3.i, label %for.end, label %if.then33

if.then33:                                        ; preds = %land.lhs.true
  call void @usleep_range_state(i32 noundef 1251, i32 noundef 5000, i32 noundef 2) #8
  %call.i = call fastcc zeroext i8 @mcp251x_read_reg(ptr noundef %spi, i8 noundef zeroext 14) #8
  %34 = and i8 %call.i, -32
  %cmp20 = icmp eq i8 %34, -128
  br i1 %cmp20, label %if.then33.cleanup_crit_edge, label %if.then33.land.lhs.true_crit_edge

if.then33.land.lhs.true_crit_edge:                ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

if.then33.cleanup_crit_edge:                      ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end:                                          ; preds = %land.lhs.true
  %call.i58 = call fastcc zeroext i8 @mcp251x_read_reg(ptr noundef %spi, i8 noundef zeroext 14) #8
  %35 = and i8 %call.i58, -32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %35)
  %cmp36 = icmp eq i8 %35, -128
  br i1 %cmp36, label %for.end.cleanup_crit_edge, label %do.end42

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end42:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.41) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end42, %for.end.cleanup_crit_edge, %if.then33.cleanup_crit_edge, %mcp251x_spi_write.exit.thread, %while.body7.preheader.cleanup_crit_edge
  %retval.0 = phi i32 [ -110, %do.end42 ], [ 0, %for.end.cleanup_crit_edge ], [ %call.i.i.i, %mcp251x_spi_write.exit.thread ], [ 0, %while.body7.preheader.cleanup_crit_edge ], [ 0, %if.then33.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_attach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mcp251x_gpio_request(ptr noundef %chip, i32 noundef %offset) #2 align 64 {
entry:
  %msg.i.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i.i = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %offset)
  %cmp.i = icmp ult i32 %offset, 3
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %sub = add i32 %offset, -3
  %shl = shl i32 4, %sub
  %conv = trunc i32 %shl to i8
  %mcp_lock = getelementptr inbounds %struct.mcp251x_priv, ptr %call, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %mcp_lock, i32 noundef 0) #8
  %spi = getelementptr inbounds %struct.mcp251x_priv, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spi, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  %spi_tx_buf.i = getelementptr inbounds %struct.mcp251x_priv, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %spi_tx_buf.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %spi_tx_buf.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 5, ptr %5, align 1
  %7 = load ptr, ptr %spi_tx_buf.i, align 4
  %arrayidx2.i = getelementptr i8, ptr %7, i32 1
  %8 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 12, ptr %arrayidx2.i, align 1
  %9 = load ptr, ptr %spi_tx_buf.i, align 4
  %arrayidx4.i = getelementptr i8, ptr %9, i32 2
  %10 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv, ptr %arrayidx4.i, align 1
  %11 = load ptr, ptr %spi_tx_buf.i, align 4
  %arrayidx6.i = getelementptr i8, ptr %11, i32 3
  %12 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv, ptr %arrayidx6.i, align 1
  %13 = load ptr, ptr %driver_data.i.i.i, align 4
  %spi_tx_buf.i.i = getelementptr inbounds %struct.mcp251x_priv, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %spi_tx_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %spi_tx_buf.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i.i) #8
  %16 = getelementptr inbounds i8, ptr %t.i.i.i, i32 4
  %17 = call ptr @memset(ptr %16, i32 0, i32 92)
  %18 = ptrtoint ptr %t.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %t.i.i.i, align 4
  %len1.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 2
  %19 = ptrtoint ptr %len1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 4, ptr %len1.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i.i) #8
  %20 = getelementptr inbounds i8, ptr %msg.i.i.i.i, i32 8
  %21 = call ptr @memset(ptr %20, i32 0, i32 40)
  %22 = ptrtoint ptr %msg.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %msg.i.i.i.i, ptr %msg.i.i.i.i, align 4
  %prev.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i.i, i32 0, i32 1
  %23 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %msg.i.i.i.i, ptr %prev.i.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i, i32 0, i32 10
  %24 = ptrtoint ptr %resources.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %resources.i.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i, i32 0, i32 10, i32 1
  %25 = ptrtoint ptr %prev.i2.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %resources.i.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i.i, ptr noundef nonnull %msg.i.i.i.i) #8
  br i1 %call.i.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i.i, label %if.end.spi_write.exit.i.i_crit_edge

if.end.spi_write.exit.i.i_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_write.exit.i.i

if.end.i.i.i.i.i.i.i.i:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %transfer_list.i.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i.i, align 4
  %27 = ptrtoint ptr %transfer_list.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %msg.i.i.i.i, ptr %transfer_list.i.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 18, i32 1
  %28 = ptrtoint ptr %prev3.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %msg.i.i.i.i, ptr %prev3.i.i.i.i.i.i.i.i, align 4
  %29 = ptrtoint ptr %msg.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %transfer_list.i.i.i.i.i.i, ptr %msg.i.i.i.i, align 4
  br label %spi_write.exit.i.i

spi_write.exit.i.i:                               ; preds = %if.end.i.i.i.i.i.i.i.i, %if.end.spi_write.exit.i.i_crit_edge
  %call.i.i.i.i = call i32 @spi_sync(ptr noundef %1, ptr noundef nonnull %msg.i.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i, label %spi_write.exit.i.i.mcp251x_write_bits.exit_crit_edge, label %do.end.i.i

spi_write.exit.i.i.mcp251x_write_bits.exit_crit_edge: ; preds = %spi_write.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mcp251x_write_bits.exit

do.end.i.i:                                       ; preds = %spi_write.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.28, i32 noundef %call.i.i.i.i) #11
  br label %mcp251x_write_bits.exit

mcp251x_write_bits.exit:                          ; preds = %do.end.i.i, %spi_write.exit.i.i.mcp251x_write_bits.exit_crit_edge
  call void @mutex_unlock(ptr noundef %mcp_lock) #8
  %reg_bfpctrl = getelementptr inbounds %struct.mcp251x_priv, ptr %call, i32 0, i32 19
  %30 = ptrtoint ptr %reg_bfpctrl to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %reg_bfpctrl, align 4
  %conv5 = or i8 %31, %conv
  store i8 %conv5, ptr %reg_bfpctrl, align 4
  br label %cleanup

cleanup:                                          ; preds = %mcp251x_write_bits.exit, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mcp251x_gpio_free(ptr noundef %chip, i32 noundef %offset) #2 align 64 {
entry:
  %msg.i.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i.i = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %offset)
  %cmp.i = icmp ult i32 %offset, 3
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %sub = add i32 %offset, -3
  %shl = shl i32 4, %sub
  %conv = trunc i32 %shl to i8
  %mcp_lock = getelementptr inbounds %struct.mcp251x_priv, ptr %call, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %mcp_lock, i32 noundef 0) #8
  %spi = getelementptr inbounds %struct.mcp251x_priv, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spi, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  %spi_tx_buf.i = getelementptr inbounds %struct.mcp251x_priv, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %spi_tx_buf.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %spi_tx_buf.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 5, ptr %5, align 1
  %7 = load ptr, ptr %spi_tx_buf.i, align 4
  %arrayidx2.i = getelementptr i8, ptr %7, i32 1
  %8 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 12, ptr %arrayidx2.i, align 1
  %9 = load ptr, ptr %spi_tx_buf.i, align 4
  %arrayidx4.i = getelementptr i8, ptr %9, i32 2
  %10 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv, ptr %arrayidx4.i, align 1
  %11 = load ptr, ptr %spi_tx_buf.i, align 4
  %arrayidx6.i = getelementptr i8, ptr %11, i32 3
  %12 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %arrayidx6.i, align 1
  %13 = load ptr, ptr %driver_data.i.i.i, align 4
  %spi_tx_buf.i.i = getelementptr inbounds %struct.mcp251x_priv, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %spi_tx_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %spi_tx_buf.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i.i) #8
  %16 = getelementptr inbounds i8, ptr %t.i.i.i, i32 4
  %17 = call ptr @memset(ptr %16, i32 0, i32 92)
  %18 = ptrtoint ptr %t.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %t.i.i.i, align 4
  %len1.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 2
  %19 = ptrtoint ptr %len1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 4, ptr %len1.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i.i) #8
  %20 = getelementptr inbounds i8, ptr %msg.i.i.i.i, i32 8
  %21 = call ptr @memset(ptr %20, i32 0, i32 40)
  %22 = ptrtoint ptr %msg.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %msg.i.i.i.i, ptr %msg.i.i.i.i, align 4
  %prev.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i.i, i32 0, i32 1
  %23 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %msg.i.i.i.i, ptr %prev.i.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i, i32 0, i32 10
  %24 = ptrtoint ptr %resources.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %resources.i.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i, i32 0, i32 10, i32 1
  %25 = ptrtoint ptr %prev.i2.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %resources.i.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i.i, ptr noundef nonnull %msg.i.i.i.i) #8
  br i1 %call.i.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i.i, label %if.end.spi_write.exit.i.i_crit_edge

if.end.spi_write.exit.i.i_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_write.exit.i.i

if.end.i.i.i.i.i.i.i.i:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %transfer_list.i.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i.i, align 4
  %27 = ptrtoint ptr %transfer_list.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %msg.i.i.i.i, ptr %transfer_list.i.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 18, i32 1
  %28 = ptrtoint ptr %prev3.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %msg.i.i.i.i, ptr %prev3.i.i.i.i.i.i.i.i, align 4
  %29 = ptrtoint ptr %msg.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %transfer_list.i.i.i.i.i.i, ptr %msg.i.i.i.i, align 4
  br label %spi_write.exit.i.i

spi_write.exit.i.i:                               ; preds = %if.end.i.i.i.i.i.i.i.i, %if.end.spi_write.exit.i.i_crit_edge
  %call.i.i.i.i = call i32 @spi_sync(ptr noundef %1, ptr noundef nonnull %msg.i.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i, label %spi_write.exit.i.i.mcp251x_write_bits.exit_crit_edge, label %do.end.i.i

spi_write.exit.i.i.mcp251x_write_bits.exit_crit_edge: ; preds = %spi_write.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mcp251x_write_bits.exit

do.end.i.i:                                       ; preds = %spi_write.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.28, i32 noundef %call.i.i.i.i) #11
  br label %mcp251x_write_bits.exit

mcp251x_write_bits.exit:                          ; preds = %do.end.i.i, %spi_write.exit.i.i.mcp251x_write_bits.exit_crit_edge
  call void @mutex_unlock(ptr noundef %mcp_lock) #8
  %reg_bfpctrl = getelementptr inbounds %struct.mcp251x_priv, ptr %call, i32 0, i32 19
  %30 = ptrtoint ptr %reg_bfpctrl to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %reg_bfpctrl, align 4
  %32 = xor i8 %conv, -1
  %conv5 = and i8 %31, %32
  store i8 %conv5, ptr %reg_bfpctrl, align 4
  br label %cleanup

cleanup:                                          ; preds = %mcp251x_write_bits.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mcp251x_gpio_get_direction(ptr nocapture noundef readnone %chip, i32 noundef %offset) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %offset)
  %cmp.i = icmp ult i32 %offset, 3
  %. = zext i1 %cmp.i to i32
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mcp251x_gpio_get(ptr noundef %chip, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %offset)
  %cmp.i = icmp ult i32 %offset, 3
  %shl = shl i32 8, %offset
  %sub = add i32 %offset, -3
  %shl2 = shl i32 16, %sub
  %reg.0 = select i1 %cmp.i, i8 13, i8 12
  %mask.0.in = select i1 %cmp.i, i32 %shl, i32 %shl2
  %mcp_lock = getelementptr inbounds %struct.mcp251x_priv, ptr %call, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %mcp_lock, i32 noundef 0) #8
  %spi = getelementptr inbounds %struct.mcp251x_priv, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spi, align 4
  %call4 = tail call fastcc zeroext i8 @mcp251x_read_reg(ptr noundef %1, i8 noundef zeroext %reg.0)
  tail call void @mutex_unlock(ptr noundef %mcp_lock) #8
  %conv6 = zext i8 %call4 to i32
  %and = and i32 %mask.0.in, %conv6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  %lnot.ext = zext i1 %tobool to i32
  ret i32 %lnot.ext
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mcp251x_gpio_get_multiple(ptr noundef %chip, ptr nocapture noundef readonly %maskp, ptr nocapture noundef writeonly %bitsp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #8
  %mcp_lock = getelementptr inbounds %struct.mcp251x_priv, ptr %call, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %mcp_lock, i32 noundef 0) #8
  %0 = ptrtoint ptr %maskp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %maskp, align 4
  %and = and i32 %1, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end38_crit_edge, label %if.then

entry.if.end38_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %spi = getelementptr inbounds %struct.mcp251x_priv, ptr %call, i32 0, i32 2
  %2 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %spi, align 4
  %call1 = tail call fastcc zeroext i8 @mcp251x_read_reg(ptr noundef %3, i8 noundef zeroext 13)
  %4 = lshr i8 %call1, 3
  %5 = and i8 %4, 7
  %and37 = zext i8 %5 to i32
  br label %if.end38

if.end38:                                         ; preds = %if.then, %entry.if.end38_crit_edge
  %bits.0 = phi i32 [ %and37, %if.then ], [ 0, %entry.if.end38_crit_edge ]
  %6 = ptrtoint ptr %maskp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %maskp, align 4
  %and40 = and i32 %7, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %if.end38.if.end92_crit_edge, label %if.then42

if.end38.if.end92_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end92

if.then42:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  %spi43 = getelementptr inbounds %struct.mcp251x_priv, ptr %call, i32 0, i32 2
  %8 = ptrtoint ptr %spi43 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %spi43, align 4
  %call44 = tail call fastcc zeroext i8 @mcp251x_read_reg(ptr noundef %9, i8 noundef zeroext 12)
  %10 = lshr i8 %call44, 1
  %11 = and i8 %10, 24
  %and90 = zext i8 %11 to i32
  %or91 = or i32 %bits.0, %and90
  br label %if.end92

if.end92:                                         ; preds = %if.then42, %if.end38.if.end92_crit_edge
  %bits.1 = phi i32 [ %or91, %if.then42 ], [ %bits.0, %if.end38.if.end92_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mcp_lock) #8
  %12 = ptrtoint ptr %bitsp to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %bits.1, ptr %bitsp, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mcp251x_gpio_set(ptr noundef %chip, i32 noundef %offset, i32 noundef %value) #2 align 64 {
entry:
  %msg.i.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i.i = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #8
  %sub = add i32 %offset, -3
  %shl = shl i32 16, %sub
  %conv = trunc i32 %shl to i8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool.not = icmp eq i32 %value, 0
  %spec.select = select i1 %tobool.not, i8 0, i8 %conv
  %mcp_lock = getelementptr inbounds %struct.mcp251x_priv, ptr %call, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %mcp_lock, i32 noundef 0) #8
  %spi = getelementptr inbounds %struct.mcp251x_priv, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spi, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  %spi_tx_buf.i = getelementptr inbounds %struct.mcp251x_priv, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %spi_tx_buf.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %spi_tx_buf.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 5, ptr %5, align 1
  %7 = load ptr, ptr %spi_tx_buf.i, align 4
  %arrayidx2.i = getelementptr i8, ptr %7, i32 1
  %8 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 12, ptr %arrayidx2.i, align 1
  %9 = load ptr, ptr %spi_tx_buf.i, align 4
  %arrayidx4.i = getelementptr i8, ptr %9, i32 2
  %10 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv, ptr %arrayidx4.i, align 1
  %11 = load ptr, ptr %spi_tx_buf.i, align 4
  %arrayidx6.i = getelementptr i8, ptr %11, i32 3
  %12 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %spec.select, ptr %arrayidx6.i, align 1
  %13 = load ptr, ptr %driver_data.i.i.i, align 4
  %spi_tx_buf.i.i = getelementptr inbounds %struct.mcp251x_priv, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %spi_tx_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %spi_tx_buf.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i.i) #8
  %16 = getelementptr inbounds i8, ptr %t.i.i.i, i32 4
  %17 = call ptr @memset(ptr %16, i32 0, i32 92)
  %18 = ptrtoint ptr %t.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %t.i.i.i, align 4
  %len1.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 2
  %19 = ptrtoint ptr %len1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 4, ptr %len1.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i.i) #8
  %20 = getelementptr inbounds i8, ptr %msg.i.i.i.i, i32 8
  %21 = call ptr @memset(ptr %20, i32 0, i32 40)
  %22 = ptrtoint ptr %msg.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %msg.i.i.i.i, ptr %msg.i.i.i.i, align 4
  %prev.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i.i, i32 0, i32 1
  %23 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %msg.i.i.i.i, ptr %prev.i.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i, i32 0, i32 10
  %24 = ptrtoint ptr %resources.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %resources.i.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i, i32 0, i32 10, i32 1
  %25 = ptrtoint ptr %prev.i2.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %resources.i.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i.i, ptr noundef nonnull %msg.i.i.i.i) #8
  br i1 %call.i.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i.i, label %entry.spi_write.exit.i.i_crit_edge

entry.spi_write.exit.i.i_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_write.exit.i.i

if.end.i.i.i.i.i.i.i.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %transfer_list.i.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i.i, align 4
  %27 = ptrtoint ptr %transfer_list.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %msg.i.i.i.i, ptr %transfer_list.i.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 18, i32 1
  %28 = ptrtoint ptr %prev3.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %msg.i.i.i.i, ptr %prev3.i.i.i.i.i.i.i.i, align 4
  %29 = ptrtoint ptr %msg.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %transfer_list.i.i.i.i.i.i, ptr %msg.i.i.i.i, align 4
  br label %spi_write.exit.i.i

spi_write.exit.i.i:                               ; preds = %if.end.i.i.i.i.i.i.i.i, %entry.spi_write.exit.i.i_crit_edge
  %call.i.i.i.i = call i32 @spi_sync(ptr noundef %1, ptr noundef nonnull %msg.i.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i, label %spi_write.exit.i.i.mcp251x_write_bits.exit_crit_edge, label %do.end.i.i

spi_write.exit.i.i.mcp251x_write_bits.exit_crit_edge: ; preds = %spi_write.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mcp251x_write_bits.exit

do.end.i.i:                                       ; preds = %spi_write.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.28, i32 noundef %call.i.i.i.i) #11
  br label %mcp251x_write_bits.exit

mcp251x_write_bits.exit:                          ; preds = %do.end.i.i, %spi_write.exit.i.i.mcp251x_write_bits.exit_crit_edge
  call void @mutex_unlock(ptr noundef %mcp_lock) #8
  %reg_bfpctrl = getelementptr inbounds %struct.mcp251x_priv, ptr %call, i32 0, i32 19
  %30 = ptrtoint ptr %reg_bfpctrl to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %reg_bfpctrl, align 4
  %32 = xor i8 %conv, -1
  %conv6 = and i8 %31, %32
  %or18 = or i8 %conv6, %spec.select
  store i8 %or18, ptr %reg_bfpctrl, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mcp251x_gpio_set_multiple(ptr noundef %chip, ptr nocapture noundef readonly %maskp, ptr nocapture noundef readonly %bitsp) #2 align 64 {
entry:
  %msg.i.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i.i = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #8
  %0 = ptrtoint ptr %maskp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %maskp, align 4
  %2 = trunc i32 %1 to i8
  %3 = lshr i8 %2, 3
  %conv = and i8 %3, 3
  %4 = shl nuw nsw i8 %conv, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv)
  %tobool81.not = icmp eq i8 %conv, 0
  br i1 %tobool81.not, label %entry.cleanup_crit_edge, label %if.end83

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end83:                                         ; preds = %entry
  %5 = ptrtoint ptr %bitsp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %bitsp, align 4
  %7 = trunc i32 %6 to i8
  %8 = shl i8 %7, 1
  %9 = and i8 %8, 48
  %mcp_lock = getelementptr inbounds %struct.mcp251x_priv, ptr %call, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %mcp_lock, i32 noundef 0) #8
  %spi = getelementptr inbounds %struct.mcp251x_priv, ptr %call, i32 0, i32 2
  %10 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %spi, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 8
  %12 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %driver_data.i.i.i, align 4
  %spi_tx_buf.i = getelementptr inbounds %struct.mcp251x_priv, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %spi_tx_buf.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %spi_tx_buf.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 5, ptr %15, align 1
  %17 = load ptr, ptr %spi_tx_buf.i, align 4
  %arrayidx2.i = getelementptr i8, ptr %17, i32 1
  %18 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 12, ptr %arrayidx2.i, align 1
  %19 = load ptr, ptr %spi_tx_buf.i, align 4
  %arrayidx4.i = getelementptr i8, ptr %19, i32 2
  %20 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %4, ptr %arrayidx4.i, align 1
  %21 = load ptr, ptr %spi_tx_buf.i, align 4
  %arrayidx6.i = getelementptr i8, ptr %21, i32 3
  %22 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %9, ptr %arrayidx6.i, align 1
  %23 = load ptr, ptr %driver_data.i.i.i, align 4
  %spi_tx_buf.i.i = getelementptr inbounds %struct.mcp251x_priv, ptr %23, i32 0, i32 5
  %24 = ptrtoint ptr %spi_tx_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %spi_tx_buf.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i.i) #8
  %26 = getelementptr inbounds i8, ptr %t.i.i.i, i32 4
  %27 = call ptr @memset(ptr %26, i32 0, i32 92)
  %28 = ptrtoint ptr %t.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %25, ptr %t.i.i.i, align 4
  %len1.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 2
  %29 = ptrtoint ptr %len1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 4, ptr %len1.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i.i) #8
  %30 = getelementptr inbounds i8, ptr %msg.i.i.i.i, i32 8
  %31 = call ptr @memset(ptr %30, i32 0, i32 40)
  %32 = ptrtoint ptr %msg.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %msg.i.i.i.i, ptr %msg.i.i.i.i, align 4
  %prev.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i.i, i32 0, i32 1
  %33 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %msg.i.i.i.i, ptr %prev.i.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i, i32 0, i32 10
  %34 = ptrtoint ptr %resources.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %resources.i.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i, i32 0, i32 10, i32 1
  %35 = ptrtoint ptr %prev.i2.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %resources.i.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i.i, ptr noundef nonnull %msg.i.i.i.i) #8
  br i1 %call.i.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i.i, label %if.end83.spi_write.exit.i.i_crit_edge

if.end83.spi_write.exit.i.i_crit_edge:            ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_write.exit.i.i

if.end.i.i.i.i.i.i.i.i:                           ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #10
  %36 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %transfer_list.i.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i.i, align 4
  %37 = ptrtoint ptr %transfer_list.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %msg.i.i.i.i, ptr %transfer_list.i.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 18, i32 1
  %38 = ptrtoint ptr %prev3.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %msg.i.i.i.i, ptr %prev3.i.i.i.i.i.i.i.i, align 4
  %39 = ptrtoint ptr %msg.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %transfer_list.i.i.i.i.i.i, ptr %msg.i.i.i.i, align 4
  br label %spi_write.exit.i.i

spi_write.exit.i.i:                               ; preds = %if.end.i.i.i.i.i.i.i.i, %if.end83.spi_write.exit.i.i_crit_edge
  %call.i.i.i.i = call i32 @spi_sync(ptr noundef %11, ptr noundef nonnull %msg.i.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i, label %spi_write.exit.i.i.mcp251x_write_bits.exit_crit_edge, label %do.end.i.i

spi_write.exit.i.i.mcp251x_write_bits.exit_crit_edge: ; preds = %spi_write.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mcp251x_write_bits.exit

do.end.i.i:                                       ; preds = %spi_write.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.28, i32 noundef %call.i.i.i.i) #11
  br label %mcp251x_write_bits.exit

mcp251x_write_bits.exit:                          ; preds = %do.end.i.i, %spi_write.exit.i.i.mcp251x_write_bits.exit_crit_edge
  call void @mutex_unlock(ptr noundef %mcp_lock) #8
  %neg = xor i8 %4, -1
  %reg_bfpctrl = getelementptr inbounds %struct.mcp251x_priv, ptr %call, i32 0, i32 19
  %40 = ptrtoint ptr %reg_bfpctrl to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %reg_bfpctrl, align 4
  %and87 = and i8 %41, %neg
  %or108 = or i8 %and87, %9
  store i8 %or108, ptr %reg_bfpctrl, align 4
  br label %cleanup

cleanup:                                          ; preds = %mcp251x_write_bits.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_candev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mcp251x_can_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %net2 = getelementptr inbounds %struct.mcp251x_priv, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %net2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net2, align 4
  %force_quit = getelementptr inbounds %struct.mcp251x_priv, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %force_quit to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %force_quit, align 4
  %irq = getelementptr inbounds %struct.spi_device, ptr %dev, i32 0, i32 8
  %5 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %irq, align 4
  tail call void @disable_irq(i32 noundef %6) #8
  %state.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 6
  %7 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  tail call void @netif_device_detach(ptr noundef %3) #8
  tail call fastcc void @mcp251x_hw_sleep(ptr noundef %dev)
  %transceiver = getelementptr inbounds %struct.mcp251x_priv, ptr %1, i32 0, i32 16
  %9 = ptrtoint ptr %transceiver to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %transceiver, align 4
  %tobool.not.i.i = icmp eq ptr %10, null
  %cmp.i.i = icmp ugt ptr %10, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i, %cmp.i.i
  br i1 %spec.select.i.i, label %if.then.if.end_crit_edge, label %if.end.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %call3.i = tail call i32 @regulator_disable(ptr noundef nonnull %10) #8
  br label %if.end

if.end:                                           ; preds = %if.end.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %.sink = phi i32 [ 1, %if.then.if.end_crit_edge ], [ 1, %if.end.i ], [ 2, %entry.if.end_crit_edge ]
  %after_suspend5 = getelementptr inbounds %struct.mcp251x_priv, ptr %1, i32 0, i32 12
  %11 = ptrtoint ptr %after_suspend5 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %.sink, ptr %after_suspend5, align 4
  %power = getelementptr inbounds %struct.mcp251x_priv, ptr %1, i32 0, i32 15
  %12 = ptrtoint ptr %power to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %power, align 4
  %tobool.not.i.i17 = icmp eq ptr %13, null
  %cmp.i.i18 = icmp ugt ptr %13, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i19 = or i1 %tobool.not.i.i17, %cmp.i.i18
  br i1 %spec.select.i.i19, label %if.end.mcp251x_power_enable.exit23_crit_edge, label %if.end.i20

if.end.mcp251x_power_enable.exit23_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %mcp251x_power_enable.exit23

if.end.i20:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call3.i21 = tail call i32 @regulator_disable(ptr noundef nonnull %13) #8
  br label %mcp251x_power_enable.exit23

mcp251x_power_enable.exit23:                      ; preds = %if.end.i20, %if.end.mcp251x_power_enable.exit23_crit_edge
  %after_suspend7 = getelementptr inbounds %struct.mcp251x_priv, ptr %1, i32 0, i32 12
  %14 = ptrtoint ptr %after_suspend7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %after_suspend7, align 4
  %or = or i32 %15, 4
  store i32 %or, ptr %after_suspend7, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mcp251x_can_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %after_suspend = getelementptr inbounds %struct.mcp251x_priv, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %after_suspend to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %after_suspend, align 4
  %and = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %power = getelementptr inbounds %struct.mcp251x_priv, ptr %1, i32 0, i32 15
  %4 = ptrtoint ptr %power to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %power, align 4
  %tobool.not.i.i = icmp eq ptr %5, null
  %cmp.i.i = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i, %cmp.i.i
  br i1 %spec.select.i.i, label %if.then.if.end_crit_edge, label %if.end.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i = tail call i32 @regulator_enable(ptr noundef nonnull %5) #8
  br label %if.end

if.end:                                           ; preds = %if.end.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %6 = ptrtoint ptr %after_suspend to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %after_suspend, align 4
  %and4 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.end.if.end8_crit_edge, label %if.then6

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then6:                                         ; preds = %if.end
  %transceiver = getelementptr inbounds %struct.mcp251x_priv, ptr %1, i32 0, i32 16
  %8 = ptrtoint ptr %transceiver to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %transceiver, align 4
  %tobool.not.i.i25 = icmp eq ptr %9, null
  %cmp.i.i26 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i27 = or i1 %tobool.not.i.i25, %cmp.i.i26
  br i1 %spec.select.i.i27, label %if.then6.if.end8_crit_edge, label %if.end.i28

if.then6.if.end8_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.end.i28:                                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i29 = tail call i32 @regulator_enable(ptr noundef nonnull %9) #8
  br label %if.end8

if.end8:                                          ; preds = %if.end.i28, %if.then6.if.end8_crit_edge, %if.end.if.end8_crit_edge
  %10 = ptrtoint ptr %after_suspend to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %after_suspend, align 4
  %and10 = and i32 %11, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.else, label %if.then12

if.then12:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %wq = getelementptr inbounds %struct.mcp251x_priv, ptr %1, i32 0, i32 8
  %12 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %wq, align 4
  %restart_work = getelementptr inbounds %struct.mcp251x_priv, ptr %1, i32 0, i32 10
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %13, ptr noundef %restart_work) #8
  br label %if.end15

if.else:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %after_suspend to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %after_suspend, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.then12
  %force_quit = getelementptr inbounds %struct.mcp251x_priv, ptr %1, i32 0, i32 11
  %15 = ptrtoint ptr %force_quit to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %force_quit, align 4
  %irq = getelementptr inbounds %struct.spi_device, ptr %dev, i32 0, i32 8
  %16 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %irq, align 4
  tail call void @enable_irq(i32 noundef %17) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 68)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 68)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !27, !29, !30, !32, !33, !35, !36, !37, !38, !39, !40, !41, !43, !45, !46, !47, !49, !51, !52, !53, !54, !56, !57, !58, !60, !61, !62, !63, !65, !66, !67, !68, !70, !71, !72, !73, !75, !77, !78, !79, !80, !82, !83, !84, !86, !87, !88, !89, !91, !92, !93, !94, !95, !97, !98, !100, !102, !103, !104, !105, !107, !108, !109, !111, !113, !114, !116, !118, !120, !122, !124, !126, !128}
!llvm.module.flags = !{!130, !131, !132, !133, !134, !135, !136, !137}
!llvm.ident = !{!138}

!0 = !{ptr @__initcall__kmod_mcp251x__509_1509_mcp251x_can_driver_init6, !1, !"__initcall__kmod_mcp251x__509_1509_mcp251x_can_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/can/spi/mcp251x.c", i32 1509, i32 1}
!2 = !{ptr @__exitcall_mcp251x_can_driver_exit, !1, !"__exitcall_mcp251x_can_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author510, !4, !"__UNIQUE_ID_author510", i1 false, i1 false}
!4 = !{!"../drivers/net/can/spi/mcp251x.c", i32 1511, i32 1}
!5 = !{ptr @__UNIQUE_ID_description511, !6, !"__UNIQUE_ID_description511", i1 false, i1 false}
!6 = !{!"../drivers/net/can/spi/mcp251x.c", i32 1513, i32 1}
!7 = !{ptr @__UNIQUE_ID_file512, !8, !"__UNIQUE_ID_file512", i1 false, i1 false}
!8 = !{!"../drivers/net/can/spi/mcp251x.c", i32 1514, i32 1}
!9 = !{ptr @__UNIQUE_ID_license513, !8, !"__UNIQUE_ID_license513", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/can/spi/mcp251x.c", i32 1501, i32 11}
!12 = !{ptr @mcp251x_can_driver, !13, !"mcp251x_can_driver", i1 false, i1 false}
!13 = !{!"../drivers/net/can/spi/mcp251x.c", i32 1499, i32 26}
!14 = !{ptr @mcp251x_id_table, !15, !"mcp251x_id_table", i1 false, i1 false}
!15 = !{!"../drivers/net/can/spi/mcp251x.c", i32 1276, i32 35}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/can/spi/mcp251x.c", i32 1308, i32 39}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/can/spi/mcp251x.c", i32 1351, i32 55}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/can/spi/mcp251x.c", i32 1352, i32 61}
!22 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/can/spi/mcp251x.c", i32 1363, i32 29}
!24 = !{ptr @mcp251x_can_probe.__key, !25, !"__key", i1 false, i1 false}
!25 = !{!"../drivers/net/can/spi/mcp251x.c", i32 1369, i32 2}
!26 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @mcp251x_can_probe.__key.6, !28, !"__key", i1 false, i1 false}
!28 = !{!"../drivers/net/can/spi/mcp251x.c", i32 1370, i32 2}
!29 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @mcp251x_can_probe.__key.8, !31, !"__key", i1 false, i1 false}
!31 = !{!"../drivers/net/can/spi/mcp251x.c", i32 1373, i32 2}
!32 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/can/spi/mcp251x.c", i32 1395, i32 4}
!35 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @mcp251x_can_probe._entry, !34, !"_entry", i1 false, i1 false}
!40 = !{ptr @mcp251x_can_probe._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.15, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/can/spi/mcp251x.c", i32 1412, i32 19}
!43 = !{ptr @.str.17, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/can/spi/mcp251x.c", i32 1426, i32 2}
!45 = !{ptr @mcp251x_can_probe._entry.16, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @mcp251x_can_probe._entry_ptr.18, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @mcp251x_netdev_ops, !48, !"mcp251x_netdev_ops", i1 false, i1 false}
!48 = !{!"../drivers/net/can/spi/mcp251x.c", i32 1252, i32 36}
!49 = !{ptr @.str.19, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/can/spi/mcp251x.c", i32 1203, i32 3}
!51 = !{ptr @.str.20, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @mcp251x_open._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @mcp251x_open._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.22, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/can/spi/mcp251x.c", i32 1221, i32 3}
!56 = !{ptr @mcp251x_open._entry.21, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @mcp251x_open._entry_ptr.23, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.24, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/can/spi/mcp251x.c", i32 314, i32 3}
!60 = !{ptr @.str.25, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @mcp251x_spi_trans._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @mcp251x_spi_trans._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.26, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/can/spi/mcp251x.c", i32 704, i32 3}
!65 = !{ptr @.str.27, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @mcp251x_hw_rx._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @mcp251x_hw_rx._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.28, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/can/spi/mcp251x.c", i32 325, i32 3}
!70 = !{ptr @.str.29, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @mcp251x_spi_write._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @mcp251x_spi_write._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.30, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/can/spi/mcp251x.c", i32 992, i32 19}
!75 = !{ptr @.str.31, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/can/spi/mcp251x.c", i32 772, i32 3}
!77 = !{ptr @.str.32, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @mcp251x_hw_wake._entry, !76, !"_entry", i1 false, i1 false}
!79 = !{ptr @mcp251x_hw_wake._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.33, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/can/spi/mcp251x.c", i32 874, i32 2}
!82 = !{ptr @.str.34, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @mcp251x_do_set_bittiming.__UNIQUE_ID_ddebug507, !81, !"__UNIQUE_ID_ddebug507", i1 false, i1 false}
!84 = !{ptr @.str.35, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/can/spi/mcp251x.c", i32 851, i32 4}
!86 = !{ptr @.str.36, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @mcp251x_set_normal_mode._entry, !85, !"_entry", i1 false, i1 false}
!88 = !{ptr @mcp251x_set_normal_mode._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.37, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/net/can/spi/mcp251x.c", i32 790, i32 3}
!91 = !{ptr @.str.38, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @.str.39, !90, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @mcp251x_hard_start_xmit._entry, !90, !"_entry", i1 false, i1 false}
!94 = !{ptr @mcp251x_hard_start_xmit._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!95 = distinct !{null, !96, !"__already_done", i1 false, i1 false}
!96 = !{!"../include/linux/can/skb.h", i32 104, i32 6}
!97 = !{ptr @.str.40, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @mcp251x_bittiming_const, !99, !"mcp251x_bittiming_const", i1 false, i1 false}
!99 = !{!"../drivers/net/can/spi/mcp251x.c", i32 210, i32 41}
!100 = !{ptr @.str.41, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/can/spi/mcp251x.c", i32 915, i32 3}
!102 = !{ptr @.str.42, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @mcp251x_hw_reset._entry, !101, !"_entry", i1 false, i1 false}
!104 = !{ptr @mcp251x_hw_reset._entry_ptr, !101, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.43, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/net/can/spi/mcp251x.c", i32 930, i32 2}
!107 = !{ptr @.str.44, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @mcp251x_hw_probe.__UNIQUE_ID_ddebug508, !106, !"__UNIQUE_ID_ddebug508", i1 false, i1 false}
!109 = !{ptr @.str.45, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/net/can/spi/mcp251x.c", i32 586, i32 48}
!111 = !{ptr @mcp251x_gpio_setup.lock_key, !112, !"lock_key", i1 false, i1 false}
!112 = !{!"../drivers/net/can/spi/mcp251x.c", i32 605, i32 9}
!113 = !{ptr @mcp251x_gpio_setup.request_key, !112, !"request_key", i1 false, i1 false}
!114 = !{ptr @.str.46, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/net/can/spi/mcp251x.c", i32 429, i32 26}
!116 = !{ptr @.str.47, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/net/can/spi/mcp251x.c", i32 430, i32 26}
!118 = !{ptr @.str.48, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/net/can/spi/mcp251x.c", i32 431, i32 26}
!120 = !{ptr @.str.49, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/net/can/spi/mcp251x.c", i32 432, i32 25}
!122 = !{ptr @.str.50, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/net/can/spi/mcp251x.c", i32 433, i32 25}
!124 = !{ptr @mcp251x_gpio_names, !125, !"mcp251x_gpio_names", i1 false, i1 false}
!125 = !{!"../drivers/net/can/spi/mcp251x.c", i32 428, i32 27}
!126 = !{ptr @mcp251x_of_match, !127, !"mcp251x_of_match", i1 false, i1 false}
!127 = !{!"../drivers/net/can/spi/mcp251x.c", i32 1259, i32 34}
!128 = !{ptr @mcp251x_can_pm_ops, !129, !"mcp251x_can_pm_ops", i1 false, i1 false}
!129 = !{!"../drivers/net/can/spi/mcp251x.c", i32 1496, i32 8}
!130 = !{i32 1, !"wchar_size", i32 2}
!131 = !{i32 1, !"min_enum_size", i32 4}
!132 = !{i32 8, !"branch-target-enforcement", i32 0}
!133 = !{i32 8, !"sign-return-address", i32 0}
!134 = !{i32 8, !"sign-return-address-all", i32 0}
!135 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!136 = !{i32 7, !"uwtable", i32 1}
!137 = !{i32 7, !"frame-pointer", i32 2}
!138 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!139 = !{i8 0, i8 2}
!140 = !{!"auto-init"}
!141 = !{i64 2148806880, i64 2148806885, i64 2148806898, i64 2148806942, i64 2148806976, i64 2148806997}
!142 = !{!"branch_weights", i32 2000, i32 1}
!143 = !{!"branch_weights", i32 1, i32 2000}
