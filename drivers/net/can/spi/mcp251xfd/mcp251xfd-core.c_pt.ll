; ModuleID = '/llk/IR_all_yes/drivers/net/can/spi/mcp251xfd/mcp251xfd-core.c_pt.bc'
source_filename = "../drivers/net/can/spi/mcp251xfd/mcp251xfd-core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spi_device_id = type { [32 x i8], i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mcp251xfd_devtype_data = type { i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.can_bittiming_const = type { [16 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
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
%struct.spi_delay = type { i16, i8 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
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
%struct.mcp251xfd_priv = type { %struct.can_priv, %struct.can_rx_offload, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, [44 x i8], [1 x %struct.mcp251xfd_tef_ring], [1 x %struct.mcp251xfd_tx_ring], [1 x ptr], i8, %struct.mcp251xfd_ecc, %struct.mcp251xfd_regs_status, %struct.cyclecounter, %struct.timecounter, %struct.delayed_work, ptr, ptr, ptr, ptr, %struct.mcp251xfd_devtype_data, %struct.can_berr_counter, [40 x i8] }
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
%struct.mcp251xfd_tef_ring = type { i32, i32, [120 x i8], %union.mcp251xfd_write_reg_buf, [8 x %struct.spi_transfer] }
%union.mcp251xfd_write_reg_buf = type { %struct.anon.147, [122 x i8] }
%struct.anon.147 = type { %struct.mcp251xfd_buf_cmd, [4 x i8] }
%struct.mcp251xfd_buf_cmd = type { i16 }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.mcp251xfd_tx_ring = type { i32, i32, i16, i8, i8, [116 x i8], [8 x %struct.mcp251xfd_tx_obj], %union.mcp251xfd_write_reg_buf }
%struct.mcp251xfd_tx_obj = type { %struct.spi_message, [2 x %struct.spi_transfer], [8 x i8], %union.mcp251xfd_tx_obj_load_buf }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%union.mcp251xfd_tx_obj_load_buf = type { %struct.anon.150, [51 x i8] }
%struct.anon.150 = type <{ %struct.mcp251xfd_buf_cmd_crc, %struct.mcp251xfd_hw_tx_obj_raw, i16 }>
%struct.mcp251xfd_buf_cmd_crc = type <{ i16, i8 }>
%struct.mcp251xfd_hw_tx_obj_raw = type { i32, i32, [64 x i8] }
%struct.mcp251xfd_ecc = type { i32, i32 }
%struct.mcp251xfd_regs_status = type { i32 }
%struct.cyclecounter = type { ptr, i64, i32, i32 }
%struct.timecounter = type { ptr, i64, i64, i64, i64 }
%struct.can_berr_counter = type { i16, i16 }
%struct.spi_controller = type { %struct.device, %struct.list_head, i16, i16, i16, i32, i32, i32, i32, i32, i16, i8, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.mutex, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, %struct.kthread_work, %struct.spinlock, %struct.list_head, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.completion, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.spi_statistics, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.can_frame = type { i32, %union.anon.152, i8, i8, i8, [8 x i8] }
%union.anon.152 = type { i8 }
%struct.mcp251xfd_rx_ring = type { i32, i32, i16, i8, i8, i8, i8, [114 x i8], %union.mcp251xfd_write_reg_buf, [32 x %struct.spi_transfer], [0 x %struct.mcp251xfd_hw_rx_obj_canfd] }
%struct.mcp251xfd_hw_rx_obj_canfd = type { i32, i32, i32, [64 x i8] }
%struct.mcp251xfd_map_buf_nocrc = type { %struct.mcp251xfd_buf_cmd, [256 x i8], [126 x i8] }

@__initcall__kmod_mcp251xfd__632_2011_mcp251xfd_driver_init6 = internal global ptr @mcp251xfd_driver_init, section ".initcall6.init", align 4
@mcp251xfd_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr @mcp251xfd_id_table, ptr @mcp251xfd_probe, ptr @mcp251xfd_remove, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mcp251xfd_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mcp251xfd_pm_ops, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_mcp251xfd_driver_exit = internal global ptr @mcp251xfd_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author633 = internal constant [56 x i8] c"mcp251xfd.author=Marc Kleine-Budde <mkl@pengutronix.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description634 = internal constant [71 x i8] c"mcp251xfd.description=Microchip MCP251xFD Family CAN controller driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file635 = internal constant [55 x i8] c"mcp251xfd.file=drivers/net/can/spi/mcp251xfd/mcp251xfd\00", section ".modinfo", align 1
@__UNIQUE_ID_license636 = internal constant [25 x i8] c"mcp251xfd.license=GPL v2\00", section ".modinfo", align 1
@mcp251xfd_id_table = internal constant { [4 x %struct.spi_device_id], [48 x i8] } { [4 x %struct.spi_device_id] [%struct.spi_device_id { [32 x i8] c"mcp2517fd\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @mcp251xfd_devtype_data_mcp2517fd to i32) }, %struct.spi_device_id { [32 x i8] c"mcp2518fd\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @mcp251xfd_devtype_data_mcp2518fd to i32) }, %struct.spi_device_id { [32 x i8] c"mcp251xfd\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @mcp251xfd_devtype_data_mcp251xfd to i32) }, %struct.spi_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mcp251xfd\00", [22 x i8] zeroinitializer }, align 32
@mcp251xfd_of_match = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"microchip,mcp2517fd\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mcp251xfd_devtype_data_mcp2517fd }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"microchip,mcp2518fd\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mcp251xfd_devtype_data_mcp2518fd }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"microchip,mcp251xfd\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mcp251xfd_devtype_data_mcp251xfd }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@mcp251xfd_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mcp251xfd_runtime_suspend, ptr @mcp251xfd_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@mcp251xfd_devtype_data_mcp2517fd = internal constant { %struct.mcp251xfd_devtype_data, [24 x i8] } { %struct.mcp251xfd_devtype_data { i32 9495, i32 31 }, [24 x i8] zeroinitializer }, align 32
@mcp251xfd_devtype_data_mcp2518fd = internal constant { %struct.mcp251xfd_devtype_data, [24 x i8] } { %struct.mcp251xfd_devtype_data { i32 9496, i32 30 }, [24 x i8] zeroinitializer }, align 32
@mcp251xfd_devtype_data_mcp251xfd = internal constant { %struct.mcp251xfd_devtype_data, [24 x i8] } { %struct.mcp251xfd_devtype_data { i32 65535, i32 30 }, [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"No IRQ specified (maybe node \22interrupts-extended\22 in DT missing)!\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"microchip,rx-int\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Failed to get RX-INT!\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vdd\00", [28 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to get VDD regulator!\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"xceiver\00", [24 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to get Transceiver regulator!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to get Oscillator (clock)!\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clock-frequency\00", [16 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to get clock-frequency!\0A\00", [32 x i8] zeroinitializer }, align 32
@mcp251xfd_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.13, i32 1863, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Oscillator frequency (%u Hz) is too low or high.\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mcp251xfd_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"drivers/net/can/spi/mcp251xfd/mcp251xfd-core.c\00", [49 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mcp251xfd_probe._entry_ptr = internal global ptr @mcp251xfd_probe._entry, section ".printk_index", align 4
@mcp251xfd_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.12, ptr @.str.13, i32 1870, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"Oscillator frequency (%u Hz) is too low and PLL is not supported.\0A\00", [61 x i8] zeroinitializer }, align 32
@mcp251xfd_probe._entry_ptr.18 = internal global ptr @mcp251xfd_probe._entry.16, section ".printk_index", align 4
@mcp251xfd_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @mcp251xfd_open, ptr @mcp251xfd_stop, ptr @mcp251xfd_start_xmit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @can_change_mtu, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@mcp251xfd_bittiming_const = internal constant { %struct.can_bittiming_const, [48 x i8] } { %struct.can_bittiming_const { [16 x i8] c"mcp251xfd\00\00\00\00\00\00\00", i32 2, i32 256, i32 1, i32 128, i32 128, i32 1, i32 256, i32 1 }, [48 x i8] zeroinitializer }, align 32
@mcp251xfd_data_bittiming_const = internal constant { %struct.can_bittiming_const, [48 x i8] } { %struct.can_bittiming_const { [16 x i8] c"mcp251xfd\00\00\00\00\00\00\00", i32 1, i32 32, i32 1, i32 16, i32 16, i32 1, i32 256, i32 1 }, [48 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Retrying to reset controller.\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to detect %s (osc=0x%08x).\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"Timeout waiting for Oscillator Ready (osc=0x%08x, osc_reference=0x%08x)\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"MCP2517FD\00", [22 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"MCP2518FD\00", [22 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"MCP251xFD\00", [22 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"<unknown>\00", [22 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"Controller failed to enter mode %s Mode (%u) and stays in %s Mode (%u).\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Mixed (CAN FD/CAN 2.0)\00", [41 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Sleep\00", [26 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Internal Loopback\00", [46 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Listen Only\00", [20 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Configuration\00", [18 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"External Loopback\00", [46 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CAN 2.0\00", [24 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Restricted Operation\00", [43 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"Controller not in Config Mode after reset, but in %s Mode (%u).\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"Controller failed to reset. osc=0x%08x, reference value=0x%08x.\0A\00", [63 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.37 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"IRQ handler mcp251xfd_handle_%s() returned %d.\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"rxif\00", [27 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"modif\00", [26 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"tefif\00", [26 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"rxovif\00", [25 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ivmif\00", [26 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"eccif\00", [26 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"spicrcif\00", [23 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"cerrif\00", [25 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"IRQ handler returned %d (intf=0x%08x).\0A\00", [56 x i8] zeroinitializer }, align 32
@mcp251xfd_handle_modif.__UNIQUE_ID_ddebug592 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.49, ptr @.str.13, ptr @.str.50, i8 0, i8 -2, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mcp251xfd_handle_modif\00", [41 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Controller changed into %s Mode (%u).\0A\00", [57 x i8] zeroinitializer }, align 32
@mcp251xfd_handle_modif.__UNIQUE_ID_ddebug593 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.49, ptr @.str.13, ptr @.str.50, i8 1, i8 3, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@mcp251xfd_handle_rxovif.__UNIQUE_ID_ddebug582 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.51, ptr @.str.13, ptr @.str.52, i8 0, i8 -57, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mcp251xfd_handle_rxovif\00", [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"RX-%d: MAB overflow detected.\0A\00", [33 x i8] zeroinitializer }, align 32
@mcp251xfd_handle_rxovif.__UNIQUE_ID_ddebug583 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.51, ptr @.str.13, ptr @.str.53, i8 0, i8 -56, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"RX-%d: FIFO overflow.\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@__func__.mcp251xfd_handle_txatif = private unnamed_addr constant [24 x i8] c"mcp251xfd_handle_txatif\00", align 1
@.str.55 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"recv'd DLC is larger than PLSIZE of FIFO element.\00", [46 x i8] zeroinitializer }, align 32
@mcp251xfd_handle_ivmif.__UNIQUE_ID_ddebug584 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.56, ptr @.str.13, ptr @.str.57, i8 0, i8 -39, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mcp251xfd_handle_ivmif\00", [41 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"CRC error\0A\00", [21 x i8] zeroinitializer }, align 32
@mcp251xfd_handle_ivmif.__UNIQUE_ID_ddebug585 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.56, ptr @.str.13, ptr @.str.58, i8 0, i8 -37, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Stuff error\0A\00", [19 x i8] zeroinitializer }, align 32
@mcp251xfd_handle_ivmif.__UNIQUE_ID_ddebug586 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.56, ptr @.str.13, ptr @.str.59, i8 0, i8 -35, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Format error\0A\00", [18 x i8] zeroinitializer }, align 32
@mcp251xfd_handle_ivmif.__UNIQUE_ID_ddebug587 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.56, ptr @.str.13, ptr @.str.60, i8 0, i8 -33, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"NACK error\0A\00", [20 x i8] zeroinitializer }, align 32
@mcp251xfd_handle_ivmif.__UNIQUE_ID_ddebug588 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.56, ptr @.str.13, ptr @.str.61, i8 0, i8 -30, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Bit1 error\0A\00", [20 x i8] zeroinitializer }, align 32
@mcp251xfd_handle_ivmif.__UNIQUE_ID_ddebug589 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.56, ptr @.str.13, ptr @.str.62, i8 0, i8 -28, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Bit0 error\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"TX MAB underflow due to ECC error detected.\00", [52 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"TX MAB underflow detected.\00", [37 x i8] zeroinitializer }, align 32
@mcp251xfd_handle_serrif.__UNIQUE_ID_ddebug594 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.65, ptr @.str.13, ptr @.str.54, i8 1, i8 19, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mcp251xfd_handle_serrif\00", [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Unhandled System Error Interrupt (intf=0x%08x)!\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Single ECC Error detected at address\00", [59 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Double ECC Error detected at address\00", [59 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%s 0x%04x.\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"%s 0x%04x (in TX-RAM, tx_obj=%d), occurred %d time%s.\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"s\00", [30 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.73 = internal constant { [106 x i8], [54 x i8] } { [106 x i8] c"ECC Error information inconsistent (addr=0x%04x, nr=%d, tx_tail=0x%08x(%d), chip_tx_tail=%d, offset=%d).\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [98 x i8], [62 x i8] } { [98 x i8] c"Recovering %s ECC Error at address 0x%04x (in TX-RAM, tx_obj=%d, tx_tail=0x%08x(%d), offset=%d).\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Single\00", [25 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Double\00", [25 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"CRC write command format error.\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"CRC write error detected. CRC=0x%04lx.\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Detected %s, but firmware specifies a %s. Fixing up.\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"RX_INT active after softreset, disabling RX_INT support.\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [157 x i8], [35 x i8] } { [157 x i8] c"%s rev%lu.%lu (%cRX_INT %cMAB_NO_WARN %cCRC_REG %cCRC_RX %cCRC_TX %cECC %cHD c:%u.%02uMHz m:%u.%02uMHz r:%u.%02uMHz e:%u.%02uMHz) successfully initialized.\0A\00", [35 x i8] zeroinitializer }, align 32
@switch.table.mcp251xfd_chip_softreset = internal constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30], [36 x i8] zeroinitializer }, align 32
@switch.table.__mcp251xfd_chip_set_mode = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34], [32 x i8] zeroinitializer }, align 32
@switch.table.__mcp251xfd_chip_set_mode.82 = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30], [32 x i8] zeroinitializer }, align 32
@switch.table.mcp251xfd_handle_modif = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30], [32 x i8] zeroinitializer }, align 32
@switch.table.mcp251xfd_handle_modif.83 = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.25, ptr @.str.25, ptr @.str.25, ptr @.str.30], [32 x i8] zeroinitializer }, align 32
@switch.table.mcp251xfd_handle_modif.84 = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967277]
@__sancov_gen_cov_switch_values.85 = internal global [5 x i64] [i64 3, i64 32, i64 9495, i64 9496, i64 65535]
@__sancov_gen_cov_switch_values.86 = internal global [5 x i64] [i64 3, i64 32, i64 9495, i64 9496, i64 65535]
@__sancov_gen_cov_switch_values.87 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967186]
@__sancov_gen_cov_switch_values.88 = internal global [4 x i64] [i64 2, i64 3, i64 3, i64 7]
@__sancov_gen_cov_switch_values.89 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.90 = internal global [5 x i64] [i64 3, i64 32, i64 9495, i64 9496, i64 65535]
@___asan_gen_.91 = private unnamed_addr constant [17 x i8] c"mcp251xfd_driver\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 2001, i32 26 }
@___asan_gen_.94 = private unnamed_addr constant [19 x i8] c"mcp251xfd_id_table\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1793, i32 35 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 2003, i32 11 }
@___asan_gen_.100 = private unnamed_addr constant [19 x i8] c"mcp251xfd_of_match\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1777, i32 34 }
@___asan_gen_.103 = private unnamed_addr constant [17 x i8] c"mcp251xfd_pm_ops\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1996, i32 32 }
@___asan_gen_.106 = private unnamed_addr constant [33 x i8] c"mcp251xfd_devtype_data_mcp2517fd\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 27, i32 44 }
@___asan_gen_.109 = private unnamed_addr constant [33 x i8] c"mcp251xfd_devtype_data_mcp2518fd\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 34, i32 44 }
@___asan_gen_.112 = private unnamed_addr constant [33 x i8] c"mcp251xfd_devtype_data_mcp251xfd\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 41, i32 44 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1822, i32 10 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1824, i32 46 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1828, i32 10 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1830, i32 51 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1835, i32 10 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1837, i32 55 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1842, i32 10 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1847, i32 10 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1851, i32 45 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1855, i32 11 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1861, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1868, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant [21 x i8] c"mcp251xfd_netdev_ops\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1534, i32 36 }
@___asan_gen_.172 = private unnamed_addr constant [26 x i8] c"mcp251xfd_bittiming_const\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 47, i32 41 }
@___asan_gen_.175 = private unnamed_addr constant [31 x i8] c"mcp251xfd_data_bittiming_const\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 59, i32 41 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 355, i32 9 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 279, i32 7 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 284, i32 7 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 75, i32 10 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 77, i32 10 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 79, i32 10 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 82, i32 9 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 221, i32 7 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 95, i32 10 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 97, i32 10 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 99, i32 10 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 101, i32 10 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 103, i32 10 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 105, i32 10 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 107, i32 10 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 109, i32 10 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 324, i32 8 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 340, i32 8 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1315, i32 10 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1363, i32 10 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1375, i32 10 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1381, i32 10 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1393, i32 10 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1405, i32 10 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1411, i32 10 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1422, i32 10 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1445, i32 25 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1016, i32 3 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 794, i32 5 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 799, i32 5 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 828, i32 26 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 865, i32 7 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 870, i32 3 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 878, i32 3 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 886, i32 3 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 895, i32 3 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 905, i32 3 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 913, i32 3 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1095, i32 10 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1097, i32 10 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1100, i32 4 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1131, i32 7 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1229, i32 9 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1231, i32 9 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1238, i32 29 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1249, i32 8 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1250, i32 48 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1250, i32 54 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1164, i32 7 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1171, i32 7 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1173, i32 7 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1173, i32 18 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1278, i32 29 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1281, i32 10 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1579, i32 8 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1616, i32 7 }
@___asan_gen_.358 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.359 = private constant [50 x i8] c"../drivers/net/can/spi/mcp251xfd/mcp251xfd-core.c\00", align 1
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1678, i32 7 }
@___asan_gen_.361 = private unnamed_addr constant [38 x i8] c"switch.table.mcp251xfd_chip_softreset\00", align 1
@___asan_gen_.362 = private unnamed_addr constant [39 x i8] c"switch.table.__mcp251xfd_chip_set_mode\00", align 1
@___asan_gen_.363 = private unnamed_addr constant [42 x i8] c"switch.table.__mcp251xfd_chip_set_mode.82\00", align 1
@___asan_gen_.364 = private unnamed_addr constant [36 x i8] c"switch.table.mcp251xfd_handle_modif\00", align 1
@___asan_gen_.365 = private unnamed_addr constant [39 x i8] c"switch.table.mcp251xfd_handle_modif.83\00", align 1
@___asan_gen_.366 = private unnamed_addr constant [39 x i8] c"switch.table.mcp251xfd_handle_modif.84\00", align 1
@llvm.compiler.used = appending global [105 x ptr] [ptr @__UNIQUE_ID_author633, ptr @__UNIQUE_ID_description634, ptr @__UNIQUE_ID_file635, ptr @__UNIQUE_ID_license636, ptr @__exitcall_mcp251xfd_driver_exit, ptr @__initcall__kmod_mcp251xfd__632_2011_mcp251xfd_driver_init6, ptr @mcp251xfd_driver_exit, ptr @mcp251xfd_probe._entry, ptr @mcp251xfd_probe._entry.16, ptr @mcp251xfd_probe._entry_ptr, ptr @mcp251xfd_probe._entry_ptr.18, ptr @mcp251xfd_driver, ptr @mcp251xfd_id_table, ptr @.str, ptr @mcp251xfd_of_match, ptr @mcp251xfd_pm_ops, ptr @mcp251xfd_devtype_data_mcp2517fd, ptr @mcp251xfd_devtype_data_mcp2518fd, ptr @mcp251xfd_devtype_data_mcp251xfd, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @mcp251xfd_netdev_ops, ptr @mcp251xfd_bittiming_const, ptr @mcp251xfd_data_bittiming_const, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.43, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @switch.table.mcp251xfd_chip_softreset, ptr @switch.table.__mcp251xfd_chip_set_mode, ptr @switch.table.__mcp251xfd_chip_set_mode.82, ptr @switch.table.mcp251xfd_handle_modif, ptr @switch.table.mcp251xfd_handle_modif.83, ptr @switch.table.mcp251xfd_handle_modif.84], section "llvm.metadata"
@0 = internal global [96 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp251xfd_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp251xfd_id_table to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp251xfd_of_match to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp251xfd_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp251xfd_devtype_data_mcp2517fd to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp251xfd_devtype_data_mcp2518fd to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp251xfd_devtype_data_mcp251xfd to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp251xfd_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp251xfd_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp251xfd_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp251xfd_bittiming_const to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp251xfd_data_bittiming_const to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 106, i32 160, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 98, i32 160, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 157, i32 192, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mcp251xfd_chip_softreset to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.__mcp251xfd_chip_set_mode to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.__mcp251xfd_chip_set_mode.82 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mcp251xfd_handle_modif to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mcp251xfd_handle_modif.83 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mcp251xfd_handle_modif.84 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mcp251xfd_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @mcp251xfd_driver) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mcp251xfd_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @mcp251xfd_driver, i32 0, i32 4)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mcp251xfd_probe(ptr noundef %spi) #2 align 64 {
entry:
  %freq = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %freq) #9
  %0 = ptrtoint ptr %freq to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %freq, align 4
  %irq = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 8
  %1 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %spi, i32 noundef -6, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @devm_gpiod_get_optional(ptr noundef %spi, ptr noundef nonnull @.str.2, i32 noundef 1) #9
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end8

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %call2 to i32
  %call7 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %spi, i32 noundef %3, ptr noundef nonnull @.str.3) #9
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call10 = tail call ptr @devm_regulator_get_optional(ptr noundef %spi, ptr noundef nonnull @.str.4) #9
  %4 = ptrtoint ptr %call10 to i32
  %cmp = icmp eq ptr %call10, inttoptr (i32 -19 to ptr)
  br i1 %cmp, label %if.end8.if.end19_crit_edge, label %if.else

if.end8.if.end19_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.else:                                          ; preds = %if.end8
  %cmp.i202 = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i202, label %if.then14, label %if.else.if.end19_crit_edge

if.else.if.end19_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.then14:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %call17 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %spi, i32 noundef %4, ptr noundef nonnull @.str.5) #9
  br label %cleanup

if.end19:                                         ; preds = %if.else.if.end19_crit_edge, %if.end8.if.end19_crit_edge
  %reg_vdd.0 = phi ptr [ %call10, %if.else.if.end19_crit_edge ], [ null, %if.end8.if.end19_crit_edge ]
  %call21 = tail call ptr @devm_regulator_get_optional(ptr noundef %spi, ptr noundef nonnull @.str.6) #9
  %5 = ptrtoint ptr %call21 to i32
  %cmp23 = icmp eq ptr %call21, inttoptr (i32 -19 to ptr)
  br i1 %cmp23, label %if.end19.if.end32_crit_edge, label %if.else25

if.end19.if.end32_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

if.else25:                                        ; preds = %if.end19
  %cmp.i203 = icmp ugt ptr %call21, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i203, label %if.then27, label %if.else25.if.end32_crit_edge

if.else25.if.end32_crit_edge:                     ; preds = %if.else25
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

if.then27:                                        ; preds = %if.else25
  call void @__sanitizer_cov_trace_pc() #11
  %call30 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %spi, i32 noundef %5, ptr noundef nonnull @.str.7) #9
  br label %cleanup

if.end32:                                         ; preds = %if.else25.if.end32_crit_edge, %if.end19.if.end32_crit_edge
  %reg_xceiver.0 = phi ptr [ %call21, %if.else25.if.end32_crit_edge ], [ null, %if.end19.if.end32_crit_edge ]
  %call34 = tail call ptr @devm_clk_get_optional(ptr noundef %spi, ptr noundef null) #9
  %cmp.i204 = icmp ugt ptr %call34, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i204, label %if.then36, label %if.end40

if.then36:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %call34 to i32
  %call39 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %spi, i32 noundef %6, ptr noundef nonnull @.str.8) #9
  br label %cleanup

if.end40:                                         ; preds = %if.end32
  %tobool41.not = icmp eq ptr %call34, null
  br i1 %tobool41.not, label %if.else44, label %if.then42

if.then42:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  %call43 = tail call i32 @clk_get_rate(ptr noundef nonnull %call34) #9
  %7 = ptrtoint ptr %freq to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call43, ptr %freq, align 4
  br label %if.end52

if.else44:                                        ; preds = %if.end40
  %call.i = call i32 @device_property_read_u32_array(ptr noundef %spi, ptr noundef nonnull @.str.9, ptr noundef nonnull %freq, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool47.not = icmp eq i32 %call.i, 0
  br i1 %tobool47.not, label %if.end52thread-pre-split, label %if.then48

if.then48:                                        ; preds = %if.else44
  call void @__sanitizer_cov_trace_pc() #11
  %call50 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %spi, i32 noundef %call.i, ptr noundef nonnull @.str.10) #9
  br label %cleanup

if.end52thread-pre-split:                         ; preds = %if.else44
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %freq to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pr = load i32, ptr %freq, align 4
  br label %if.end52

if.end52:                                         ; preds = %if.end52thread-pre-split, %if.then42
  %9 = phi i32 [ %.pr, %if.end52thread-pre-split ], [ %call43, %if.then42 ]
  %10 = add i32 %9, -40000001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -39000001, i32 %10)
  %11 = icmp ult i32 %10, -39000001
  br i1 %11, label %do.end, label %if.end57

do.end:                                           ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.11, i32 noundef %9) #12
  br label %cleanup

if.end57:                                         ; preds = %if.end52
  call void @__sanitizer_cov_trace_const_cmp4(i32 4000001, i32 %9)
  %cmp58 = icmp ult i32 %9, 4000001
  br i1 %cmp58, label %do.end62, label %if.end64

do.end62:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.17, i32 noundef %9) #12
  br label %cleanup

if.end64:                                         ; preds = %if.end57
  %call65 = call ptr @alloc_candev_mqs(i32 noundef 5376, i32 noundef 8, i32 noundef 1, i32 noundef 1) #9
  %tobool66.not = icmp eq ptr %call65, null
  br i1 %tobool66.not, label %if.end64.cleanup_crit_edge, label %if.end68

if.end64.cleanup_crit_edge:                       ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end68:                                         ; preds = %if.end64
  %parent = getelementptr inbounds %struct.net_device, ptr %call65, i32 0, i32 133, i32 1
  %12 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %spi, ptr %parent, align 8
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %call65, i32 0, i32 16
  %13 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @mcp251xfd_netdev_ops, ptr %netdev_ops, align 8
  %14 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %irq, align 4
  %irq72 = getelementptr inbounds %struct.net_device, ptr %call65, i32 0, i32 64
  %16 = ptrtoint ptr %irq72 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %irq72, align 4
  %flags = getelementptr inbounds %struct.net_device, ptr %call65, i32 0, i32 14
  %17 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags, align 8
  %or = or i32 %18, 262144
  store i32 %or, ptr %flags, align 8
  %add.ptr.i = getelementptr i8, ptr %call65, i32 2304
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %19 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %add.ptr.i, ptr %driver_data.i.i, align 4
  %20 = ptrtoint ptr %freq to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %freq, align 4
  %clock = getelementptr i8, ptr %call65, i32 2440
  %22 = ptrtoint ptr %clock to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %clock, align 8
  %do_set_mode = getelementptr i8, ptr %call65, i32 2596
  %23 = ptrtoint ptr %do_set_mode to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @mcp251xfd_set_mode, ptr %do_set_mode, align 4
  %do_get_berr_counter = getelementptr i8, ptr %call65, i32 2608
  %24 = ptrtoint ptr %do_get_berr_counter to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @mcp251xfd_get_berr_counter, ptr %do_get_berr_counter, align 16
  %bittiming_const = getelementptr i8, ptr %call65, i32 2332
  %25 = ptrtoint ptr %bittiming_const to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @mcp251xfd_bittiming_const, ptr %bittiming_const, align 4
  %data_bittiming_const = getelementptr i8, ptr %call65, i32 2336
  %26 = ptrtoint ptr %data_bittiming_const to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @mcp251xfd_data_bittiming_const, ptr %data_bittiming_const, align 32
  %ctrlmode_supported = getelementptr i8, ptr %call65, i32 2480
  %27 = ptrtoint ptr %ctrlmode_supported to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 435, ptr %ctrlmode_supported, align 16
  %ndev80 = getelementptr i8, ptr %call65, i32 2984
  %28 = ptrtoint ptr %ndev80 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call65, ptr %ndev80, align 8
  %spi81 = getelementptr i8, ptr %call65, i32 3020
  %29 = ptrtoint ptr %spi81 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %spi, ptr %spi81, align 4
  %rx_int82 = getelementptr i8, ptr %call65, i32 7612
  %30 = ptrtoint ptr %rx_int82 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call2, ptr %rx_int82, align 4
  %clk83 = getelementptr i8, ptr %call65, i32 7616
  %31 = ptrtoint ptr %clk83 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call34, ptr %clk83, align 64
  %reg_vdd84 = getelementptr i8, ptr %call65, i32 7620
  %32 = ptrtoint ptr %reg_vdd84 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %reg_vdd.0, ptr %reg_vdd84, align 4
  %reg_xceiver85 = getelementptr i8, ptr %call65, i32 7624
  %33 = ptrtoint ptr %reg_xceiver85 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %reg_xceiver.0, ptr %reg_xceiver85, align 8
  %call87 = call ptr @device_get_match_data(ptr noundef %spi) #9
  %tobool88.not = icmp eq ptr %call87, null
  br i1 %tobool88.not, label %if.else90, label %if.end68.if.end93_crit_edge

if.end68.if.end93_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end93

if.else90:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #11
  %call92 = call ptr @spi_get_device_id(ptr noundef %spi) #9
  %driver_data = getelementptr inbounds %struct.spi_device_id, ptr %call92, i32 0, i32 1
  %34 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %driver_data, align 4
  %36 = inttoptr i32 %35 to ptr
  br label %if.end93

if.end93:                                         ; preds = %if.else90, %if.end68.if.end93_crit_edge
  %.sink.in = phi ptr [ %36, %if.else90 ], [ %call87, %if.end68.if.end93_crit_edge ]
  %37 = ptrtoint ptr %.sink.in to i32
  call void @__asan_loadN_noabort(i32 %37, i32 8)
  %.sink = load i64, ptr %.sink.in, align 4
  %38 = getelementptr i8, ptr %call65, i32 7628
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_storeN_noabort(i32 %39, i32 8)
  store i64 %.sink, ptr %38, align 4
  %max_speed_hz = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 3
  %40 = ptrtoint ptr %max_speed_hz to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %max_speed_hz, align 8
  %spi_max_speed_hz_orig = getelementptr i8, ptr %call65, i32 3024
  %42 = ptrtoint ptr %spi_max_speed_hz_orig to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %spi_max_speed_hz_orig, align 16
  %43 = load i32, ptr %max_speed_hz, align 8
  %44 = ptrtoint ptr %freq to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %freq, align 4
  %div95 = udiv i32 %45, 2000
  %mul = mul nuw nsw i32 %div95, 850
  %46 = call i32 @llvm.umin.i32(i32 %43, i32 %mul)
  %47 = ptrtoint ptr %max_speed_hz to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %max_speed_hz, align 8
  %bits_per_word = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 5
  %48 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 8, ptr %bits_per_word, align 1
  %rt = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 6
  %49 = ptrtoint ptr %rt to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 1, ptr %rt, align 2
  %call98 = call i32 @spi_setup(ptr noundef %spi) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98)
  %tobool99.not = icmp eq i32 %call98, 0
  br i1 %tobool99.not, label %if.end101, label %if.end93.out_free_candev_crit_edge

if.end93.out_free_candev_crit_edge:               ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_free_candev

if.end101:                                        ; preds = %if.end93
  %call102 = call i32 @mcp251xfd_regmap_init(ptr noundef %add.ptr.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call102)
  %tobool103.not = icmp eq i32 %call102, 0
  br i1 %tobool103.not, label %if.end105, label %if.end101.out_free_candev_crit_edge

if.end101.out_free_candev_crit_edge:              ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_free_candev

if.end105:                                        ; preds = %if.end101
  %offload = getelementptr i8, ptr %call65, i32 2616
  %call106 = call i32 @can_rx_offload_add_manual(ptr noundef nonnull %call65, ptr noundef %offload, i32 noundef 32) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call106)
  %tobool107.not = icmp eq i32 %call106, 0
  br i1 %tobool107.not, label %if.end109, label %if.end105.out_free_candev_crit_edge

if.end105.out_free_candev_crit_edge:              ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_free_candev

if.end109:                                        ; preds = %if.end105
  %call110 = call fastcc i32 @mcp251xfd_register(ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110)
  %tobool111.not = icmp eq i32 %call110, 0
  br i1 %tobool111.not, label %if.end109.cleanup_crit_edge, label %out_can_rx_offload_del

if.end109.cleanup_crit_edge:                      ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

out_can_rx_offload_del:                           ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #11
  call void @can_rx_offload_del(ptr noundef %offload) #9
  br label %out_free_candev

out_free_candev:                                  ; preds = %out_can_rx_offload_del, %if.end105.out_free_candev_crit_edge, %if.end101.out_free_candev_crit_edge, %if.end93.out_free_candev_crit_edge
  %err.0 = phi i32 [ %call98, %if.end93.out_free_candev_crit_edge ], [ %call102, %if.end101.out_free_candev_crit_edge ], [ %call106, %if.end105.out_free_candev_crit_edge ], [ %call110, %out_can_rx_offload_del ]
  %50 = ptrtoint ptr %spi_max_speed_hz_orig to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %spi_max_speed_hz_orig, align 16
  %52 = ptrtoint ptr %max_speed_hz to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %max_speed_hz, align 8
  call void @free_candev(ptr noundef nonnull %call65) #9
  br label %cleanup

cleanup:                                          ; preds = %out_free_candev, %if.end109.cleanup_crit_edge, %if.end64.cleanup_crit_edge, %do.end62, %do.end, %if.then48, %if.then36, %if.then27, %if.then14, %if.then4, %if.then
  %retval.0 = phi i32 [ %call7, %if.then4 ], [ %call39, %if.then36 ], [ -34, %do.end ], [ -34, %do.end62 ], [ %err.0, %out_free_candev ], [ %call50, %if.then48 ], [ %call30, %if.then27 ], [ %call17, %if.then14 ], [ %call, %if.then ], [ -12, %if.end64.cleanup_crit_edge ], [ 0, %if.end109.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %freq) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mcp251xfd_remove(ptr nocapture noundef %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %ndev1 = getelementptr inbounds %struct.mcp251xfd_priv, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %ndev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ndev1, align 8
  %offload = getelementptr inbounds %struct.mcp251xfd_priv, ptr %1, i32 0, i32 1
  tail call void @can_rx_offload_del(ptr noundef %offload) #9
  %4 = ptrtoint ptr %ndev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ndev1, align 8
  tail call void @unregister_candev(ptr noundef %5) #9
  %parent.i = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 133, i32 1
  %6 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent.i, align 8
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %7, i32 noundef 4) #9
  %8 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent.i, align 8
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !209
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #9
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #9, !srcloc !210
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %entry.pm_runtime_put_noidle.exit.i_crit_edge, label %do.end11.i.i.i.i.i

entry.pm_runtime_put_noidle.exit.i_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %pm_runtime_put_noidle.exit.i

do.end11.i.i.i.i.i:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !211
  br label %pm_runtime_put_noidle.exit.i

pm_runtime_put_noidle.exit.i:                     ; preds = %do.end11.i.i.i.i.i, %entry.pm_runtime_put_noidle.exit.i_crit_edge
  %reg_vdd.i.i.i = getelementptr inbounds %struct.mcp251xfd_priv, ptr %1, i32 0, i32 25
  %11 = ptrtoint ptr %reg_vdd.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %reg_vdd.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %12, null
  br i1 %tobool.not.i.i.i, label %pm_runtime_put_noidle.exit.i.if.end.i.i_crit_edge, label %mcp251xfd_vdd_disable.exit.i.i

pm_runtime_put_noidle.exit.i.if.end.i.i_crit_edge: ; preds = %pm_runtime_put_noidle.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

mcp251xfd_vdd_disable.exit.i.i:                   ; preds = %pm_runtime_put_noidle.exit.i
  %call.i.i.i = tail call i32 @regulator_disable(ptr noundef nonnull %12) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %mcp251xfd_vdd_disable.exit.i.i.if.end.i.i_crit_edge, label %mcp251xfd_vdd_disable.exit.i.i.mcp251xfd_unregister.exit_crit_edge

mcp251xfd_vdd_disable.exit.i.i.mcp251xfd_unregister.exit_crit_edge: ; preds = %mcp251xfd_vdd_disable.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mcp251xfd_unregister.exit

mcp251xfd_vdd_disable.exit.i.i.if.end.i.i_crit_edge: ; preds = %mcp251xfd_vdd_disable.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %mcp251xfd_vdd_disable.exit.i.i.if.end.i.i_crit_edge, %pm_runtime_put_noidle.exit.i.if.end.i.i_crit_edge
  %clk.i.i = getelementptr inbounds %struct.mcp251xfd_priv, ptr %1, i32 0, i32 24
  %13 = ptrtoint ptr %clk.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %clk.i.i, align 64
  tail call void @clk_disable(ptr noundef %14) #9
  tail call void @clk_unprepare(ptr noundef %14) #9
  br label %mcp251xfd_unregister.exit

mcp251xfd_unregister.exit:                        ; preds = %if.end.i.i, %mcp251xfd_vdd_disable.exit.i.i.mcp251xfd_unregister.exit_crit_edge
  %15 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %parent.i, align 8
  tail call void @__pm_runtime_disable(ptr noundef %16, i1 noundef zeroext true) #9
  %spi_max_speed_hz_orig = getelementptr inbounds %struct.mcp251xfd_priv, ptr %1, i32 0, i32 12
  %17 = ptrtoint ptr %spi_max_speed_hz_orig to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %spi_max_speed_hz_orig, align 16
  %max_speed_hz = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 3
  %19 = ptrtoint ptr %max_speed_hz to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %max_speed_hz, align 8
  tail call void @free_candev(ptr noundef %3) #9
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_candev_mqs(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mcp251xfd_set_mode(ptr noundef %ndev, i32 noundef %mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %mode)
  %cond = icmp eq i32 %mode, 1
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %call1 = tail call fastcc i32 @mcp251xfd_chip_start(ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %map_reg.i = getelementptr i8, ptr %ndev, i32 2988
  %0 = ptrtoint ptr %map_reg.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %map_reg.i, align 4
  %call.i = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 3592, i32 noundef 50331648) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.if.then4_crit_edge

if.end.if.then4_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then4

if.end.i:                                         ; preds = %if.end
  %2 = ptrtoint ptr %map_reg.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %map_reg.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 3596, i32 noundef 6, i32 noundef 6, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool3.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool3.not.i, label %mcp251xfd_chip_interrupts_enable.exit, label %if.end.i.if.then4_crit_edge

if.end.i.if.then4_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then4

mcp251xfd_chip_interrupts_enable.exit:            ; preds = %if.end.i
  %ctrlmode.i = getelementptr i8, ptr %ndev, i32 2476
  %4 = ptrtoint ptr %ctrlmode.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ctrlmode.i, align 4
  %and.i = and i32 %5, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool6.not.i = icmp eq i32 %and.i, 0
  %spec.select.i = select i1 %tobool6.not.i, i32 1058668544, i32 -1088815104
  %6 = ptrtoint ptr %map_reg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %map_reg.i, align 4
  %call10.i = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 28, i32 noundef %spec.select.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool3.not = icmp eq i32 %call10.i, 0
  br i1 %tobool3.not, label %if.end6, label %mcp251xfd_chip_interrupts_enable.exit.if.then4_crit_edge

mcp251xfd_chip_interrupts_enable.exit.if.then4_crit_edge: ; preds = %mcp251xfd_chip_interrupts_enable.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then4

if.then4:                                         ; preds = %mcp251xfd_chip_interrupts_enable.exit.if.then4_crit_edge, %if.end.i.if.then4_crit_edge, %if.end.if.then4_crit_edge
  %retval.0.i16 = phi i32 [ %call10.i, %mcp251xfd_chip_interrupts_enable.exit.if.then4_crit_edge ], [ %call.i.i, %if.end.i.if.then4_crit_edge ], [ %call.i, %if.end.if.then4_crit_edge ]
  tail call fastcc void @mcp251xfd_chip_stop(ptr noundef %add.ptr.i, i32 noundef 4)
  br label %cleanup

if.end6:                                          ; preds = %mcp251xfd_chip_interrupts_enable.exit
  call void @__sanitizer_cov_trace_pc() #11
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 103
  %8 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %9) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then4, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i16, %if.then4 ], [ 0, %if.end6 ], [ %call1, %sw.bb.cleanup_crit_edge ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mcp251xfd_get_berr_counter(ptr nocapture noundef readonly %ndev, ptr nocapture noundef writeonly %bec) #2 align 64 {
entry:
  %trec.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 14
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 8
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %state = getelementptr i8, ptr %ndev, i32 2472
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp = icmp eq i32 %3, 3
  br i1 %cmp, label %if.then1, label %if.end3

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %bec2 = getelementptr i8, ptr %ndev, i32 7636
  %4 = ptrtoint ptr %bec2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bec2, align 4
  %6 = ptrtoint ptr %bec to i32
  call void @__asan_storeN_noabort(i32 %6, i32 4)
  store i32 %5, ptr %bec, align 2
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %trec.i) #9
  %7 = ptrtoint ptr %trec.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %trec.i, align 4, !annotation !212
  %map_reg.i = getelementptr i8, ptr %ndev, i32 2988
  %8 = ptrtoint ptr %map_reg.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %map_reg.i, align 4
  %call1.i = call i32 @regmap_read(ptr noundef %9, i32 noundef 52, ptr noundef nonnull %trec.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end3.__mcp251xfd_get_berr_counter.exit_crit_edge

if.end3.__mcp251xfd_get_berr_counter.exit_crit_edge: ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %__mcp251xfd_get_berr_counter.exit

if.end.i:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %trec.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %trec.i, align 4
  %and.i = and i32 %11, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.not.i = icmp eq i32 %and.i, 0
  %12 = trunc i32 %11 to i16
  %13 = lshr i16 %12, 8
  %storemerge.i = select i1 %tobool2.not.i, i16 %13, i16 256
  %14 = ptrtoint ptr %bec to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %storemerge.i, ptr %bec, align 2
  %conv37.i = and i16 %12, 255
  %rxerr.i = getelementptr inbounds %struct.can_berr_counter, ptr %bec, i32 0, i32 1
  %15 = ptrtoint ptr %rxerr.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv37.i, ptr %rxerr.i, align 2
  br label %__mcp251xfd_get_berr_counter.exit

__mcp251xfd_get_berr_counter.exit:                ; preds = %if.end.i, %if.end3.__mcp251xfd_get_berr_counter.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %trec.i) #9
  br label %cleanup

cleanup:                                          ; preds = %__mcp251xfd_get_berr_counter.exit, %if.then1, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then1 ], [ %call1.i, %__mcp251xfd_get_berr_counter.exit ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @spi_get_device_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mcp251xfd_regmap_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @can_rx_offload_add_manual(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mcp251xfd_register(ptr noundef %priv) unnamed_addr #2 align 64 {
entry:
  %osc.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ndev1 = getelementptr inbounds %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 2
  %0 = ptrtoint ptr %ndev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ndev1, align 8
  %call = tail call fastcc i32 @mcp251xfd_clks_and_vdd_enable(ptr noundef %priv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %parent = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 133, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %usage_count.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #9
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 1, ptr elementtype(i32) %usage_count.i) #9, !srcloc !213
  %5 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %parent, align 8
  %call.i = tail call i32 @__pm_runtime_set_status(ptr noundef %6, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool5.not = icmp eq i32 %call.i, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.out_runtime_put_noidle_crit_edge

if.end.out_runtime_put_noidle_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_runtime_put_noidle

if.end7:                                          ; preds = %if.end
  %7 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %parent, align 8
  tail call void @pm_runtime_enable(ptr noundef %8) #9
  %spi1.i = getelementptr inbounds %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 11
  %9 = ptrtoint ptr %spi1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %spi1.i, align 4
  %controller.i = getelementptr inbounds %struct.spi_device, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %controller.i, align 8
  %flags.i = getelementptr inbounds %struct.spi_controller, ptr %12, i32 0, i32 10
  %13 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %flags.i, align 4
  %15 = and i16 %14, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool.not.i = icmp eq i16 %15, 0
  br i1 %tobool.not.i, label %if.end7.mcp251xfd_register_quirks.exit_crit_edge, label %if.then.i

if.end7.mcp251xfd_register_quirks.exit_crit_edge: ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %mcp251xfd_register_quirks.exit

if.then.i:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %quirks.i = getelementptr inbounds %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 27, i32 1
  %16 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %quirks.i, align 4
  %or.i = or i32 %17, 32
  store i32 %or.i, ptr %quirks.i, align 4
  br label %mcp251xfd_register_quirks.exit

mcp251xfd_register_quirks.exit:                   ; preds = %if.then.i, %if.end7.mcp251xfd_register_quirks.exit_crit_edge
  %call10 = tail call fastcc i32 @mcp251xfd_chip_softreset(ptr noundef %priv)
  %18 = zext i32 %call10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call10, label %mcp251xfd_register_quirks.exit.out_chip_set_mode_sleep_crit_edge [
    i32 -19, label %mcp251xfd_register_quirks.exit.out_runtime_disable_crit_edge
    i32 0, label %if.end15
  ]

mcp251xfd_register_quirks.exit.out_runtime_disable_crit_edge: ; preds = %mcp251xfd_register_quirks.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_runtime_disable

mcp251xfd_register_quirks.exit.out_chip_set_mode_sleep_crit_edge: ; preds = %mcp251xfd_register_quirks.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_chip_set_mode_sleep

if.end15:                                         ; preds = %mcp251xfd_register_quirks.exit
  %19 = ptrtoint ptr %ndev1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ndev1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %osc.i) #9
  %21 = ptrtoint ptr %osc.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %osc.i, align 4, !annotation !212
  %map_reg.i = getelementptr inbounds %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 3
  %22 = ptrtoint ptr %map_reg.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %map_reg.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %23, i32 noundef 3584, i32 noundef 8, i32 noundef 8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i72 = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i72, label %if.end.i, label %if.end15.mcp251xfd_register_chip_detect.exit.thread_crit_edge

if.end15.mcp251xfd_register_chip_detect.exit.thread_crit_edge: ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %mcp251xfd_register_chip_detect.exit.thread

if.end.i:                                         ; preds = %if.end15
  %24 = ptrtoint ptr %map_reg.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %map_reg.i, align 4
  %call3.i = call i32 @regmap_read(ptr noundef %25, i32 noundef 3584, ptr noundef nonnull %osc.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %if.end.i.mcp251xfd_register_chip_detect.exit.thread_crit_edge

if.end.i.mcp251xfd_register_chip_detect.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mcp251xfd_register_chip_detect.exit.thread

if.end6.i:                                        ; preds = %if.end.i
  %26 = ptrtoint ptr %osc.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %osc.i, align 4
  %and.i = and i32 %27, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool7.not.i = icmp eq i32 %and.i, 0
  %mcp251xfd_devtype_data_mcp2517fd.mcp251xfd_devtype_data_mcp2518fd.i = select i1 %tobool7.not.i, ptr @mcp251xfd_devtype_data_mcp2517fd, ptr @mcp251xfd_devtype_data_mcp2518fd
  %devtype_data.i.i = getelementptr inbounds %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 27
  %28 = ptrtoint ptr %devtype_data.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %devtype_data.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %29)
  %cmp.i.i = icmp eq i32 %29, 65535
  br i1 %cmp.i.i, label %if.end6.i.if.end17.i_crit_edge, label %land.lhs.true.i

if.end6.i.if.end17.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17.i

land.lhs.true.i:                                  ; preds = %if.end6.i
  %30 = ptrtoint ptr %mcp251xfd_devtype_data_mcp2517fd.mcp251xfd_devtype_data_mcp2518fd.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %mcp251xfd_devtype_data_mcp2517fd.mcp251xfd_devtype_data_mcp2518fd.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %31)
  %cmp.not.i = icmp eq i32 %29, %31
  br i1 %cmp.not.i, label %land.lhs.true.i.if.end17.i_crit_edge, label %if.then13.i

land.lhs.true.i.if.end17.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17.i

if.then13.i:                                      ; preds = %land.lhs.true.i
  %32 = zext i32 %31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.85)
  switch i32 %31, label %sw.epilog.i.i [
    i32 9495, label %if.then13.i.__mcp251xfd_get_model_str.exit.i_crit_edge
    i32 9496, label %sw.bb1.i.i
    i32 65535, label %sw.bb2.i.i
  ]

if.then13.i.__mcp251xfd_get_model_str.exit.i_crit_edge: ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__mcp251xfd_get_model_str.exit.i

sw.bb1.i.i:                                       ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__mcp251xfd_get_model_str.exit.i

sw.bb2.i.i:                                       ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__mcp251xfd_get_model_str.exit.i

sw.epilog.i.i:                                    ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__mcp251xfd_get_model_str.exit.i

__mcp251xfd_get_model_str.exit.i:                 ; preds = %sw.epilog.i.i, %sw.bb2.i.i, %sw.bb1.i.i, %if.then13.i.__mcp251xfd_get_model_str.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ @.str.25, %sw.epilog.i.i ], [ @.str.24, %sw.bb2.i.i ], [ @.str.23, %sw.bb1.i.i ], [ @.str.22, %if.then13.i.__mcp251xfd_get_model_str.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 9496, i32 %29)
  %switch.selectcmp.i = icmp eq i32 %29, 9496
  %switch.select.i = select i1 %switch.selectcmp.i, ptr @.str.23, ptr @.str.25
  call void @__sanitizer_cov_trace_const_cmp4(i32 9495, i32 %29)
  %switch.selectcmp37.i = icmp eq i32 %29, 9495
  %switch.select38.i = select i1 %switch.selectcmp37.i, ptr @.str.22, ptr %switch.select.i
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %20, ptr noundef nonnull @.str.79, ptr noundef nonnull %retval.0.i.i, ptr noundef nonnull %switch.select38.i) #12
  br label %if.end17.i

if.end17.i:                                       ; preds = %__mcp251xfd_get_model_str.exit.i, %land.lhs.true.i.if.end17.i_crit_edge, %if.end6.i.if.end17.i_crit_edge
  %33 = ptrtoint ptr %mcp251xfd_devtype_data_mcp2517fd.mcp251xfd_devtype_data_mcp2518fd.i to i32
  call void @__asan_loadN_noabort(i32 %33, i32 8)
  %34 = load i64, ptr %mcp251xfd_devtype_data_mcp2517fd.mcp251xfd_devtype_data_mcp2518fd.i, align 4
  %35 = ptrtoint ptr %devtype_data.i.i to i32
  call void @__asan_storeN_noabort(i32 %35, i32 8)
  store i64 %34, ptr %devtype_data.i.i, align 4
  %36 = ptrtoint ptr %spi1.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %spi1.i, align 4
  %controller.i.i = getelementptr inbounds %struct.spi_device, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %controller.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %controller.i.i, align 8
  %flags.i.i = getelementptr inbounds %struct.spi_controller, ptr %39, i32 0, i32 10
  %40 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %flags.i.i, align 4
  %42 = and i16 %41, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %42)
  %tobool.not.i.i = icmp eq i16 %42, 0
  br i1 %tobool.not.i.i, label %if.end17.i.mcp251xfd_register_chip_detect.exit_crit_edge, label %if.then.i.i

if.end17.i.mcp251xfd_register_chip_detect.exit_crit_edge: ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mcp251xfd_register_chip_detect.exit

if.then.i.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #11
  %quirks.i.i = getelementptr inbounds %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 27, i32 1
  %43 = ptrtoint ptr %quirks.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %quirks.i.i, align 4
  %or.i.i = or i32 %44, 32
  store i32 %or.i.i, ptr %quirks.i.i, align 4
  br label %mcp251xfd_register_chip_detect.exit

mcp251xfd_register_chip_detect.exit.thread:       ; preds = %if.end.i.mcp251xfd_register_chip_detect.exit.thread_crit_edge, %if.end15.mcp251xfd_register_chip_detect.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call3.i, %if.end.i.mcp251xfd_register_chip_detect.exit.thread_crit_edge ], [ %call.i.i, %if.end15.mcp251xfd_register_chip_detect.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %osc.i) #9
  br label %out_chip_set_mode_sleep

mcp251xfd_register_chip_detect.exit:              ; preds = %if.then.i.i, %if.end17.i.mcp251xfd_register_chip_detect.exit_crit_edge
  %call19.i = call i32 @mcp251xfd_regmap_init(ptr noundef %priv) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %osc.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %tobool17.not = icmp eq i32 %call19.i, 0
  br i1 %tobool17.not, label %if.end19, label %mcp251xfd_register_chip_detect.exit.out_chip_set_mode_sleep_crit_edge

mcp251xfd_register_chip_detect.exit.out_chip_set_mode_sleep_crit_edge: ; preds = %mcp251xfd_register_chip_detect.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_chip_set_mode_sleep

if.end19:                                         ; preds = %mcp251xfd_register_chip_detect.exit
  %call20 = call fastcc i32 @mcp251xfd_register_check_rx_int(ptr noundef %priv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %if.end19.out_chip_set_mode_sleep_crit_edge

if.end19.out_chip_set_mode_sleep_crit_edge:       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_chip_set_mode_sleep

if.end23:                                         ; preds = %if.end19
  %call24 = call i32 @register_candev(ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end27, label %if.end23.out_chip_set_mode_sleep_crit_edge

if.end23.out_chip_set_mode_sleep_crit_edge:       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_chip_set_mode_sleep

if.end27:                                         ; preds = %if.end23
  %call28 = call fastcc i32 @mcp251xfd_register_done(ptr noundef %priv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end31, label %if.end27.out_unregister_candev_crit_edge

if.end27.out_unregister_candev_crit_edge:         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_unregister_candev

if.end31:                                         ; preds = %if.end27
  %call.i73 = call fastcc i32 @__mcp251xfd_chip_set_mode(ptr noundef %priv, i8 noundef zeroext 1, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i73)
  %tobool33.not = icmp eq i32 %call.i73, 0
  br i1 %tobool33.not, label %if.end35, label %if.end31.out_unregister_candev_crit_edge

if.end31.out_unregister_candev_crit_edge:         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_unregister_candev

if.end35:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  %45 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %parent, align 8
  %call.i74 = call i32 @__pm_runtime_idle(ptr noundef %46, i32 noundef 5) #9
  br label %cleanup

out_unregister_candev:                            ; preds = %if.end31.out_unregister_candev_crit_edge, %if.end27.out_unregister_candev_crit_edge
  %err.0 = phi i32 [ %call28, %if.end27.out_unregister_candev_crit_edge ], [ %call.i73, %if.end31.out_unregister_candev_crit_edge ]
  call void @unregister_candev(ptr noundef %1) #9
  br label %out_chip_set_mode_sleep

out_chip_set_mode_sleep:                          ; preds = %out_unregister_candev, %if.end23.out_chip_set_mode_sleep_crit_edge, %if.end19.out_chip_set_mode_sleep_crit_edge, %mcp251xfd_register_chip_detect.exit.out_chip_set_mode_sleep_crit_edge, %mcp251xfd_register_chip_detect.exit.thread, %mcp251xfd_register_quirks.exit.out_chip_set_mode_sleep_crit_edge
  %err.1 = phi i32 [ %call19.i, %mcp251xfd_register_chip_detect.exit.out_chip_set_mode_sleep_crit_edge ], [ %call20, %if.end19.out_chip_set_mode_sleep_crit_edge ], [ %call24, %if.end23.out_chip_set_mode_sleep_crit_edge ], [ %err.0, %out_unregister_candev ], [ %call10, %mcp251xfd_register_quirks.exit.out_chip_set_mode_sleep_crit_edge ], [ %retval.0.i.ph, %mcp251xfd_register_chip_detect.exit.thread ]
  %map_reg.i83 = getelementptr inbounds %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 3
  %47 = ptrtoint ptr %map_reg.i83 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %map_reg.i83, align 4
  %call.i.i84 = call i32 @regmap_update_bits_base(ptr noundef %48, i32 noundef 0, i32 noundef 117440512, i32 noundef 16777216, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %out_runtime_disable

out_runtime_disable:                              ; preds = %out_chip_set_mode_sleep, %mcp251xfd_register_quirks.exit.out_runtime_disable_crit_edge
  %err.2 = phi i32 [ %call10, %mcp251xfd_register_quirks.exit.out_runtime_disable_crit_edge ], [ %err.1, %out_chip_set_mode_sleep ]
  %49 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %parent, align 8
  call void @__pm_runtime_disable(ptr noundef %50, i1 noundef zeroext true) #9
  br label %out_runtime_put_noidle

out_runtime_put_noidle:                           ; preds = %out_runtime_disable, %if.end.out_runtime_put_noidle_crit_edge
  %err.3 = phi i32 [ %call.i, %if.end.out_runtime_put_noidle_crit_edge ], [ %err.2, %out_runtime_disable ]
  %51 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %parent, align 8
  %usage_count.i76 = getelementptr inbounds %struct.device, ptr %52, i32 0, i32 12, i32 13
  %call.i.i.i77 = call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i76, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !209
  call void @llvm.prefetch.p0(ptr %usage_count.i76, i32 1, i32 3, i32 1) #9
  %53 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i76, ptr %usage_count.i76, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i76) #9, !srcloc !210
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %53, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %out_runtime_put_noidle.pm_runtime_put_noidle.exit_crit_edge, label %do.end11.i.i.i.i

out_runtime_put_noidle.pm_runtime_put_noidle.exit_crit_edge: ; preds = %out_runtime_put_noidle
  call void @__sanitizer_cov_trace_pc() #11
  br label %pm_runtime_put_noidle.exit

do.end11.i.i.i.i:                                 ; preds = %out_runtime_put_noidle
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !211
  br label %pm_runtime_put_noidle.exit

pm_runtime_put_noidle.exit:                       ; preds = %do.end11.i.i.i.i, %out_runtime_put_noidle.pm_runtime_put_noidle.exit_crit_edge
  %reg_vdd.i.i = getelementptr inbounds %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 25
  %54 = ptrtoint ptr %reg_vdd.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %reg_vdd.i.i, align 4
  %tobool.not.i.i78 = icmp eq ptr %55, null
  br i1 %tobool.not.i.i78, label %pm_runtime_put_noidle.exit.if.end.i81_crit_edge, label %mcp251xfd_vdd_disable.exit.i

pm_runtime_put_noidle.exit.if.end.i81_crit_edge:  ; preds = %pm_runtime_put_noidle.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i81

mcp251xfd_vdd_disable.exit.i:                     ; preds = %pm_runtime_put_noidle.exit
  %call.i.i79 = call i32 @regulator_disable(ptr noundef nonnull %55) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i79)
  %tobool.not.i80 = icmp eq i32 %call.i.i79, 0
  br i1 %tobool.not.i80, label %mcp251xfd_vdd_disable.exit.i.if.end.i81_crit_edge, label %mcp251xfd_vdd_disable.exit.i.cleanup_crit_edge

mcp251xfd_vdd_disable.exit.i.cleanup_crit_edge:   ; preds = %mcp251xfd_vdd_disable.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

mcp251xfd_vdd_disable.exit.i.if.end.i81_crit_edge: ; preds = %mcp251xfd_vdd_disable.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i81

if.end.i81:                                       ; preds = %mcp251xfd_vdd_disable.exit.i.if.end.i81_crit_edge, %pm_runtime_put_noidle.exit.if.end.i81_crit_edge
  %clk.i = getelementptr inbounds %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 24
  %56 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %clk.i, align 64
  call void @clk_disable(ptr noundef %57) #9
  call void @clk_unprepare(ptr noundef %57) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end.i81, %mcp251xfd_vdd_disable.exit.i.cleanup_crit_edge, %if.end35, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end35 ], [ %call, %entry.cleanup_crit_edge ], [ %err.3, %mcp251xfd_vdd_disable.exit.i.cleanup_crit_edge ], [ %err.3, %if.end.i81 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @can_rx_offload_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_candev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mcp251xfd_open(ptr noundef %ndev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %spi1 = getelementptr i8, ptr %ndev, i32 3020
  %0 = ptrtoint ptr %spi1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spi1, align 4
  %call2 = tail call i32 @open_candev(ptr noundef %ndev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %parent = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 133, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end6

if.then.i:                                        ; preds = %if.end
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !209
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #9
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #9, !srcloc !210
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.out_close_candev_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.out_close_candev_crit_edge:             ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_close_candev

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !211
  br label %out_close_candev

if.end6:                                          ; preds = %if.end
  %call7 = tail call i32 @mcp251xfd_ring_alloc(ptr noundef %add.ptr.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end6.out_pm_runtime_put_crit_edge

if.end6.out_pm_runtime_put_crit_edge:             ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_pm_runtime_put

if.end10:                                         ; preds = %if.end6
  %reg_xceiver.i = getelementptr i8, ptr %ndev, i32 7624
  %5 = ptrtoint ptr %reg_xceiver.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %reg_xceiver.i, align 8
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %if.end10.if.end14_crit_edge, label %mcp251xfd_transceiver_enable.exit

if.end10.if.end14_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

mcp251xfd_transceiver_enable.exit:                ; preds = %if.end10
  %call.i67 = tail call i32 @regulator_enable(ptr noundef nonnull %6) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i67)
  %tobool12.not = icmp eq i32 %call.i67, 0
  br i1 %tobool12.not, label %mcp251xfd_transceiver_enable.exit.if.end14_crit_edge, label %mcp251xfd_transceiver_enable.exit.out_mcp251xfd_ring_free_crit_edge

mcp251xfd_transceiver_enable.exit.out_mcp251xfd_ring_free_crit_edge: ; preds = %mcp251xfd_transceiver_enable.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_mcp251xfd_ring_free

mcp251xfd_transceiver_enable.exit.if.end14_crit_edge: ; preds = %mcp251xfd_transceiver_enable.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.end14:                                         ; preds = %mcp251xfd_transceiver_enable.exit.if.end14_crit_edge, %if.end10.if.end14_crit_edge
  %call15 = tail call fastcc i32 @mcp251xfd_chip_start(ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %if.end14.out_transceiver_disable_crit_edge

if.end14.out_transceiver_disable_crit_edge:       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_transceiver_disable

if.end18:                                         ; preds = %if.end14
  tail call void @mcp251xfd_timestamp_init(ptr noundef %add.ptr.i) #9
  %offload = getelementptr i8, ptr %ndev, i32 2616
  tail call void @can_rx_offload_enable(ptr noundef %offload) #9
  %irq = getelementptr inbounds %struct.spi_device, ptr %1, i32 0, i32 8
  %7 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %irq, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i69 = icmp eq ptr %10, null
  br i1 %tobool.not.i69, label %if.end.i70, label %if.end18.dev_name.exit_crit_edge

if.end18.dev_name.exit_crit_edge:                 ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit

if.end.i70:                                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i70, %if.end18.dev_name.exit_crit_edge
  %retval.0.i71 = phi ptr [ %12, %if.end.i70 ], [ %10, %if.end18.dev_name.exit_crit_edge ]
  %call21 = tail call i32 @request_threaded_irq(i32 noundef %8, ptr noundef null, ptr noundef nonnull @mcp251xfd_irq, i32 noundef 8320, ptr noundef %retval.0.i71, ptr noundef %add.ptr.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %dev_name.exit.out_can_rx_offload_disable_crit_edge

dev_name.exit.out_can_rx_offload_disable_crit_edge: ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_can_rx_offload_disable

if.end24:                                         ; preds = %dev_name.exit
  %call25 = tail call fastcc i32 @mcp251xfd_chip_interrupts_enable(ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end28, label %out_free_irq

if.end28:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 103
  %13 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %14, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #9
  br label %cleanup

out_free_irq:                                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %irq, align 4
  %call30 = tail call ptr @free_irq(i32 noundef %16, ptr noundef %add.ptr.i) #9
  br label %out_can_rx_offload_disable

out_can_rx_offload_disable:                       ; preds = %out_free_irq, %dev_name.exit.out_can_rx_offload_disable_crit_edge
  %err.0 = phi i32 [ %call21, %dev_name.exit.out_can_rx_offload_disable_crit_edge ], [ %call25, %out_free_irq ]
  %napi.i = getelementptr i8, ptr %ndev, i32 2752
  tail call void @napi_disable(ptr noundef %napi.i) #9
  tail call void @mcp251xfd_timestamp_stop(ptr noundef %add.ptr.i) #9
  br label %out_transceiver_disable

out_transceiver_disable:                          ; preds = %out_can_rx_offload_disable, %if.end14.out_transceiver_disable_crit_edge
  %err.1 = phi i32 [ %call15, %if.end14.out_transceiver_disable_crit_edge ], [ %err.0, %out_can_rx_offload_disable ]
  %17 = ptrtoint ptr %reg_xceiver.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %reg_xceiver.i, align 8
  %tobool.not.i73 = icmp eq ptr %18, null
  br i1 %tobool.not.i73, label %out_transceiver_disable.out_mcp251xfd_ring_free_crit_edge, label %if.end.i75

out_transceiver_disable.out_mcp251xfd_ring_free_crit_edge: ; preds = %out_transceiver_disable
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_mcp251xfd_ring_free

if.end.i75:                                       ; preds = %out_transceiver_disable
  call void @__sanitizer_cov_trace_pc() #11
  %call.i74 = tail call i32 @regulator_disable(ptr noundef nonnull %18) #9
  br label %out_mcp251xfd_ring_free

out_mcp251xfd_ring_free:                          ; preds = %if.end.i75, %out_transceiver_disable.out_mcp251xfd_ring_free_crit_edge, %mcp251xfd_transceiver_enable.exit.out_mcp251xfd_ring_free_crit_edge
  %err.2 = phi i32 [ %call.i67, %mcp251xfd_transceiver_enable.exit.out_mcp251xfd_ring_free_crit_edge ], [ %err.1, %out_transceiver_disable.out_mcp251xfd_ring_free_crit_edge ], [ %err.1, %if.end.i75 ]
  tail call void @mcp251xfd_ring_free(ptr noundef %add.ptr.i) #9
  br label %out_pm_runtime_put

out_pm_runtime_put:                               ; preds = %out_mcp251xfd_ring_free, %if.end6.out_pm_runtime_put_crit_edge
  %err.3 = phi i32 [ %call7, %if.end6.out_pm_runtime_put_crit_edge ], [ %err.2, %out_mcp251xfd_ring_free ]
  tail call fastcc void @mcp251xfd_chip_stop(ptr noundef %add.ptr.i, i32 noundef 4)
  %19 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %parent, align 8
  %call.i76 = tail call i32 @__pm_runtime_idle(ptr noundef %20, i32 noundef 5) #9
  br label %out_close_candev

out_close_candev:                                 ; preds = %out_pm_runtime_put, %do.end11.i.i.i.i.i, %if.then.i.out_close_candev_crit_edge
  %err.4 = phi i32 [ %err.3, %out_pm_runtime_put ], [ %call.i, %if.then.i.out_close_candev_crit_edge ], [ %call.i, %do.end11.i.i.i.i.i ]
  tail call void @close_candev(ptr noundef %ndev) #9
  br label %cleanup

cleanup:                                          ; preds = %out_close_candev, %if.end28, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.4, %out_close_candev ], [ 0, %if.end28 ], [ %call2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mcp251xfd_stop(ptr noundef %ndev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 103
  %0 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %1, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #9
  %map_reg.i = getelementptr i8, ptr %ndev, i32 2988
  %2 = ptrtoint ptr %map_reg.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %map_reg.i, align 4
  %call.i = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 28, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.mcp251xfd_chip_interrupts_disable.exit_crit_edge

entry.mcp251xfd_chip_interrupts_disable.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %mcp251xfd_chip_interrupts_disable.exit

if.end.i:                                         ; preds = %entry
  %4 = ptrtoint ptr %map_reg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %map_reg.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 3596, i32 noundef 6, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool3.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %if.end.i.mcp251xfd_chip_interrupts_disable.exit_crit_edge

if.end.i.mcp251xfd_chip_interrupts_disable.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mcp251xfd_chip_interrupts_disable.exit

if.end5.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %map_reg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %map_reg.i, align 4
  %call7.i = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 3592, i32 noundef 0) #9
  br label %mcp251xfd_chip_interrupts_disable.exit

mcp251xfd_chip_interrupts_disable.exit:           ; preds = %if.end5.i, %if.end.i.mcp251xfd_chip_interrupts_disable.exit_crit_edge, %entry.mcp251xfd_chip_interrupts_disable.exit_crit_edge
  %irq = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 64
  %8 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq, align 4
  %call2 = tail call ptr @free_irq(i32 noundef %9, ptr noundef %add.ptr.i) #9
  %napi.i = getelementptr i8, ptr %ndev, i32 2752
  tail call void @napi_disable(ptr noundef %napi.i) #9
  tail call void @mcp251xfd_timestamp_stop(ptr noundef %add.ptr.i) #9
  tail call fastcc void @mcp251xfd_chip_stop(ptr noundef %add.ptr.i, i32 noundef 4)
  %reg_xceiver.i = getelementptr i8, ptr %ndev, i32 7624
  %10 = ptrtoint ptr %reg_xceiver.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reg_xceiver.i, align 8
  %tobool.not.i16 = icmp eq ptr %11, null
  br i1 %tobool.not.i16, label %mcp251xfd_chip_interrupts_disable.exit.mcp251xfd_transceiver_disable.exit_crit_edge, label %if.end.i18

mcp251xfd_chip_interrupts_disable.exit.mcp251xfd_transceiver_disable.exit_crit_edge: ; preds = %mcp251xfd_chip_interrupts_disable.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %mcp251xfd_transceiver_disable.exit

if.end.i18:                                       ; preds = %mcp251xfd_chip_interrupts_disable.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call.i17 = tail call i32 @regulator_disable(ptr noundef nonnull %11) #9
  br label %mcp251xfd_transceiver_disable.exit

mcp251xfd_transceiver_disable.exit:               ; preds = %if.end.i18, %mcp251xfd_chip_interrupts_disable.exit.mcp251xfd_transceiver_disable.exit_crit_edge
  tail call void @mcp251xfd_ring_free(ptr noundef %add.ptr.i) #9
  tail call void @close_candev(ptr noundef %ndev) #9
  %parent = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 133, i32 1
  %12 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %parent, align 8
  %call.i19 = tail call i32 @__pm_runtime_idle(ptr noundef %13, i32 noundef 5) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mcp251xfd_start_xmit(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @can_change_mtu(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @open_candev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mcp251xfd_ring_alloc(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mcp251xfd_chip_start(ptr noundef %priv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @mcp251xfd_chip_softreset(ptr noundef %priv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.out_chip_stop_crit_edge

entry.out_chip_stop_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_chip_stop

if.end:                                           ; preds = %entry
  %map_reg.i = getelementptr inbounds %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 3
  %0 = ptrtoint ptr %map_reg.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %map_reg.i, align 4
  %call.i = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 3584, i32 noundef 104) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %mcp251xfd_chip_clock_init.exit, label %if.end.out_chip_stop_crit_edge

if.end.out_chip_stop_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_chip_stop

mcp251xfd_chip_clock_init.exit:                   ; preds = %if.end
  %2 = ptrtoint ptr %map_reg.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %map_reg.i, align 4
  %call14.i = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 20, i32 noundef 65536) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool2.not = icmp eq i32 %call14.i, 0
  br i1 %tobool2.not, label %if.end4, label %mcp251xfd_chip_clock_init.exit.out_chip_stop_crit_edge

mcp251xfd_chip_clock_init.exit.out_chip_stop_crit_edge: ; preds = %mcp251xfd_chip_clock_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_chip_stop

if.end4:                                          ; preds = %mcp251xfd_chip_clock_init.exit
  %ctrlmode.i = getelementptr inbounds %struct.can_priv, ptr %priv, i32 0, i32 22
  %4 = ptrtoint ptr %ctrlmode.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ctrlmode.i, align 4
  %and.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i43 = icmp eq i32 %and.i, 0
  %spec.select.i = select i1 %tobool.not.i43, i32 67831648, i32 67831616
  %6 = ptrtoint ptr %map_reg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %map_reg.i, align 4
  %call.i45 = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 0, i32 noundef %spec.select.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i45)
  %tobool37.not.i = icmp eq i32 %call.i45, 0
  br i1 %tobool37.not.i, label %do.body46.i, label %if.end4.out_chip_stop_crit_edge

if.end4.out_chip_stop_crit_edge:                  ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_chip_stop

do.body46.i:                                      ; preds = %if.end4
  %brp.i = getelementptr inbounds %struct.can_priv, ptr %priv, i32 0, i32 4, i32 7
  %8 = ptrtoint ptr %brp.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %brp.i, align 4
  %prop_seg.i = getelementptr inbounds %struct.can_priv, ptr %priv, i32 0, i32 4, i32 3
  %10 = ptrtoint ptr %prop_seg.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %prop_seg.i, align 4
  %phase_seg1.i = getelementptr inbounds %struct.can_priv, ptr %priv, i32 0, i32 4, i32 4
  %12 = ptrtoint ptr %phase_seg1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %phase_seg1.i, align 4
  %add.i = add i32 %13, %11
  %phase_seg2.i = getelementptr inbounds %struct.can_priv, ptr %priv, i32 0, i32 4, i32 5
  %14 = ptrtoint ptr %phase_seg2.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %phase_seg2.i, align 4
  %sjw.i = getelementptr inbounds %struct.can_priv, ptr %priv, i32 0, i32 4, i32 6
  %16 = ptrtoint ptr %sjw.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sjw.i, align 4
  %sub63.i = shl i32 %9, 24
  %shl.i = add i32 %sub63.i, -16777216
  %sub95.i = shl i32 %add.i, 16
  %shl96.i = add i32 %sub95.i, 16711680
  %and97.i = and i32 %shl96.i, 16711680
  %or98.i = or i32 %and97.i, %shl.i
  %sub125.i = shl i32 %15, 8
  %shl126.i = add i32 %sub125.i, 32512
  %and127.i = and i32 %shl126.i, 32512
  %or128.i = or i32 %and127.i, %or98.i
  %sub155.i = add i32 %17, 127
  %and157.i = and i32 %sub155.i, 127
  %or158.i = or i32 %and157.i, %or128.i
  %18 = ptrtoint ptr %map_reg.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %map_reg.i, align 4
  %call160.i = tail call i32 @regmap_write(ptr noundef %19, i32 noundef 4, i32 noundef %or158.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call160.i)
  %tobool161.not.i = icmp eq i32 %call160.i, 0
  br i1 %tobool161.not.i, label %if.end163.i, label %do.body46.i.out_chip_stop_crit_edge

do.body46.i.out_chip_stop_crit_edge:              ; preds = %do.body46.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_chip_stop

if.end163.i:                                      ; preds = %do.body46.i
  %20 = ptrtoint ptr %ctrlmode.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ctrlmode.i, align 4
  %and166.i = and i32 %21, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and166.i)
  %tobool167.not.i = icmp eq i32 %and166.i, 0
  br i1 %tobool167.not.i, label %if.end163.i.if.end8_crit_edge, label %do.body176.i

if.end163.i.if.end8_crit_edge:                    ; preds = %if.end163.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

do.body176.i:                                     ; preds = %if.end163.i
  %brp177.i = getelementptr inbounds %struct.can_priv, ptr %priv, i32 0, i32 5, i32 7
  %22 = ptrtoint ptr %brp177.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %brp177.i, align 4
  %prop_seg207.i = getelementptr inbounds %struct.can_priv, ptr %priv, i32 0, i32 5, i32 3
  %24 = ptrtoint ptr %prop_seg207.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %prop_seg207.i, align 4
  %phase_seg1208.i = getelementptr inbounds %struct.can_priv, ptr %priv, i32 0, i32 5, i32 4
  %26 = ptrtoint ptr %phase_seg1208.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %phase_seg1208.i, align 4
  %add209.i = add i32 %27, %25
  %phase_seg2244.i = getelementptr inbounds %struct.can_priv, ptr %priv, i32 0, i32 5, i32 5
  %28 = ptrtoint ptr %phase_seg2244.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %phase_seg2244.i, align 4
  %sjw275.i = getelementptr inbounds %struct.can_priv, ptr %priv, i32 0, i32 5, i32 6
  %30 = ptrtoint ptr %sjw275.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %sjw275.i, align 4
  %sub197.i = shl i32 %23, 24
  %shl198.i = add i32 %sub197.i, -16777216
  %sub233.i = shl i32 %add209.i, 16
  %shl234.i = add i32 %sub233.i, 2031616
  %and235.i = and i32 %shl234.i, 2031616
  %or236.i = or i32 %and235.i, %shl198.i
  %sub264.i = shl i32 %29, 8
  %shl265.i = add i32 %sub264.i, 3840
  %and266.i = and i32 %shl265.i, 3840
  %or267.i = or i32 %and266.i, %or236.i
  %sub295.i = add i32 %31, 15
  %and297.i = and i32 %sub295.i, 15
  %or298.i = or i32 %and297.i, %or267.i
  %32 = ptrtoint ptr %map_reg.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %map_reg.i, align 4
  %call300.i = tail call i32 @regmap_write(ptr noundef %33, i32 noundef 8, i32 noundef %or298.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call300.i)
  %tobool301.not.i = icmp eq i32 %call300.i, 0
  br i1 %tobool301.not.i, label %mcp251xfd_set_bittiming.exit, label %do.body176.i.out_chip_stop_crit_edge

do.body176.i.out_chip_stop_crit_edge:             ; preds = %do.body176.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_chip_stop

mcp251xfd_set_bittiming.exit:                     ; preds = %do.body176.i
  %34 = ptrtoint ptr %phase_seg1208.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %phase_seg1208.i, align 4
  %36 = ptrtoint ptr %prop_seg207.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %prop_seg207.i, align 4
  %add307.i = add i32 %35, %37
  %38 = ptrtoint ptr %brp177.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %brp177.i, align 4
  %mul.i = mul i32 %add307.i, %39
  %40 = tail call i32 @llvm.smax.i32(i32 %mul.i, i32 -64) #9
  %41 = tail call i32 @llvm.smin.i32(i32 %40, i32 63) #9
  %42 = shl nsw i32 %41, 8
  %and358.i = and i32 %42, 32512
  %or359.i = or i32 %and358.i, 131072
  %43 = ptrtoint ptr %map_reg.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %map_reg.i, align 4
  %call361.i = tail call i32 @regmap_write(ptr noundef %44, i32 noundef 12, i32 noundef %or359.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call361.i)
  %tobool6.not = icmp eq i32 %call361.i, 0
  br i1 %tobool6.not, label %mcp251xfd_set_bittiming.exit.if.end8_crit_edge, label %mcp251xfd_set_bittiming.exit.out_chip_stop_crit_edge

mcp251xfd_set_bittiming.exit.out_chip_stop_crit_edge: ; preds = %mcp251xfd_set_bittiming.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_chip_stop

mcp251xfd_set_bittiming.exit.if.end8_crit_edge:   ; preds = %mcp251xfd_set_bittiming.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.end8:                                          ; preds = %mcp251xfd_set_bittiming.exit.if.end8_crit_edge, %if.end163.i.if.end8_crit_edge
  %rx_int.i = getelementptr inbounds %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 23
  %45 = ptrtoint ptr %rx_int.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %rx_int.i, align 4
  %tobool.not.i47 = icmp eq ptr %46, null
  br i1 %tobool.not.i47, label %if.end8.if.end12_crit_edge, label %mcp251xfd_chip_rx_int_enable.exit

if.end8.if.end12_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

mcp251xfd_chip_rx_int_enable.exit:                ; preds = %if.end8
  %47 = ptrtoint ptr %map_reg.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %map_reg.i, align 4
  %call.i49 = tail call i32 @regmap_write(ptr noundef %48, i32 noundef 3588, i32 noundef 16777219) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i49)
  %tobool10.not = icmp eq i32 %call.i49, 0
  br i1 %tobool10.not, label %mcp251xfd_chip_rx_int_enable.exit.if.end12_crit_edge, label %mcp251xfd_chip_rx_int_enable.exit.out_chip_stop_crit_edge

mcp251xfd_chip_rx_int_enable.exit.out_chip_stop_crit_edge: ; preds = %mcp251xfd_chip_rx_int_enable.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_chip_stop

mcp251xfd_chip_rx_int_enable.exit.if.end12_crit_edge: ; preds = %mcp251xfd_chip_rx_int_enable.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.end12:                                         ; preds = %mcp251xfd_chip_rx_int_enable.exit.if.end12_crit_edge, %if.end8.if.end12_crit_edge
  %call13 = tail call fastcc i32 @mcp251xfd_chip_ecc_init(ptr noundef %priv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.end12.out_chip_stop_crit_edge

if.end12.out_chip_stop_crit_edge:                 ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_chip_stop

if.end16:                                         ; preds = %if.end12
  tail call void @mcp251xfd_ring_init(ptr noundef %priv) #9
  %call17 = tail call i32 @mcp251xfd_chip_fifo_init(ptr noundef %priv) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %if.end16.out_chip_stop_crit_edge

if.end16.out_chip_stop_crit_edge:                 ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_chip_stop

if.end20:                                         ; preds = %if.end16
  %state = getelementptr inbounds %struct.can_priv, ptr %priv, i32 0, i32 21
  %49 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %state, align 8
  %call21 = tail call fastcc i32 @mcp251xfd_chip_set_normal_mode(ptr noundef %priv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end20.cleanup_crit_edge, label %if.end20.out_chip_stop_crit_edge

if.end20.out_chip_stop_crit_edge:                 ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_chip_stop

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

out_chip_stop:                                    ; preds = %if.end20.out_chip_stop_crit_edge, %if.end16.out_chip_stop_crit_edge, %if.end12.out_chip_stop_crit_edge, %mcp251xfd_chip_rx_int_enable.exit.out_chip_stop_crit_edge, %mcp251xfd_set_bittiming.exit.out_chip_stop_crit_edge, %do.body176.i.out_chip_stop_crit_edge, %do.body46.i.out_chip_stop_crit_edge, %if.end4.out_chip_stop_crit_edge, %mcp251xfd_chip_clock_init.exit.out_chip_stop_crit_edge, %if.end.out_chip_stop_crit_edge, %entry.out_chip_stop_crit_edge
  %err.0 = phi i32 [ %call, %entry.out_chip_stop_crit_edge ], [ %call14.i, %mcp251xfd_chip_clock_init.exit.out_chip_stop_crit_edge ], [ %call361.i, %mcp251xfd_set_bittiming.exit.out_chip_stop_crit_edge ], [ %call.i49, %mcp251xfd_chip_rx_int_enable.exit.out_chip_stop_crit_edge ], [ %call13, %if.end12.out_chip_stop_crit_edge ], [ %call17, %if.end16.out_chip_stop_crit_edge ], [ %call21, %if.end20.out_chip_stop_crit_edge ], [ %call.i, %if.end.out_chip_stop_crit_edge ], [ %call300.i, %do.body176.i.out_chip_stop_crit_edge ], [ %call160.i, %do.body46.i.out_chip_stop_crit_edge ], [ %call.i45, %if.end4.out_chip_stop_crit_edge ]
  tail call void @mcp251xfd_dump(ptr noundef %priv) #9
  tail call fastcc void @mcp251xfd_chip_stop(ptr noundef %priv, i32 noundef 4)
  br label %cleanup

cleanup:                                          ; preds = %out_chip_stop, %if.end20.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %out_chip_stop ], [ 0, %if.end20.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mcp251xfd_timestamp_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @can_rx_offload_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mcp251xfd_irq(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  %trec.i.i.i = alloca i32, align 4
  %trec.i.i = alloca i32, align 4
  %cf.i = alloca ptr, align 4
  %trec.i = alloca i32, align 4
  %timestamp.i = alloca i32, align 4
  %crc.i = alloca i32, align 4
  %ecc_stat.i = alloca i32, align 4
  %set_normal_mode = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %map_reg = getelementptr inbounds %struct.mcp251xfd_priv, ptr %dev_id, i32 0, i32 3
  %0 = ptrtoint ptr %map_reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %map_reg, align 4
  %call = tail call i32 @regmap_get_val_bytes(ptr noundef %1) #9
  %rx_int = getelementptr inbounds %struct.mcp251xfd_priv, ptr %dev_id, i32 0, i32 23
  %2 = ptrtoint ptr %rx_int to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rx_int, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end13_crit_edge, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  br label %do.body

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

do.body:                                          ; preds = %if.end.do.body_crit_edge, %entry.do.body_crit_edge
  %handled.0 = phi i32 [ 1, %if.end.do.body_crit_edge ], [ 0, %entry.do.body_crit_edge ]
  %4 = ptrtoint ptr %rx_int to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rx_int, align 4
  %call2 = tail call i32 @gpiod_get_value_cansleep(ptr noundef %5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %do.body.if.end13_crit_edge, label %if.end

do.body.if.end13_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.end:                                           ; preds = %do.body
  %call6 = tail call i32 @mcp251xfd_handle_rxif(ptr noundef %dev_id) #9
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end.do.body_crit_edge, label %cleanup.thread363

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

cleanup.thread363:                                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %ndev = getelementptr inbounds %struct.mcp251xfd_priv, ptr %dev_id, i32 0, i32 2
  %6 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ndev, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %7, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38, i32 noundef %call6) #12
  br label %out_fail

if.end13:                                         ; preds = %do.body.if.end13_crit_edge, %entry.if.end13_crit_edge
  %handled.2 = phi i32 [ 0, %entry.if.end13_crit_edge ], [ %handled.0, %do.body.if.end13_crit_edge ]
  %regs_status = getelementptr inbounds %struct.mcp251xfd_priv, ptr %dev_id, i32 0, i32 19
  %div = udiv i32 4, %call
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %set_normal_mode) #9
  %8 = ptrtoint ptr %set_normal_mode to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %set_normal_mode, align 1
  %9 = ptrtoint ptr %map_reg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %map_reg, align 4
  %call16413 = call i32 @regmap_bulk_read(ptr noundef %10, i32 noundef 28, ptr noundef %regs_status, i32 noundef %div) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16413)
  %tobool17.not414 = icmp eq i32 %call16413, 0
  br i1 %tobool17.not414, label %do.end34.lr.ph, label %if.end13.cleanup227.thread_crit_edge

if.end13.cleanup227.thread_crit_edge:             ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup227.thread

do.end34.lr.ph:                                   ; preds = %if.end13
  %ndev.i = getelementptr inbounds %struct.mcp251xfd_priv, ptr %dev_id, i32 0, i32 2
  %ecc1.i = getelementptr inbounds %struct.mcp251xfd_priv, ptr %dev_id, i32 0, i32 18
  %base.i.i.i = getelementptr inbounds %struct.mcp251xfd_priv, ptr %dev_id, i32 0, i32 15, i32 0, i32 2
  %obj_size.i.i.i = getelementptr inbounds %struct.mcp251xfd_priv, ptr %dev_id, i32 0, i32 15, i32 0, i32 4
  %obj_num.i.i = getelementptr inbounds %struct.mcp251xfd_priv, ptr %dev_id, i32 0, i32 15, i32 0, i32 3
  %cnt48.i = getelementptr inbounds %struct.mcp251xfd_priv, ptr %dev_id, i32 0, i32 18, i32 1
  %state = getelementptr inbounds %struct.can_priv, ptr %dev_id, i32 0, i32 21
  %bec.i = getelementptr inbounds %struct.mcp251xfd_priv, ptr %dev_id, i32 0, i32 28
  %rxerr.i.i = getelementptr inbounds %struct.mcp251xfd_priv, ptr %dev_id, i32 0, i32 28, i32 1
  %offload.i = getelementptr inbounds %struct.mcp251xfd_priv, ptr %dev_id, i32 0, i32 1
  br label %do.end34

do.end34:                                         ; preds = %cleanup227.do.end34_crit_edge, %do.end34.lr.ph
  %handled.3415 = phi i32 [ %handled.2, %do.end34.lr.ph ], [ 1, %cleanup227.do.end34_crit_edge ]
  %11 = ptrtoint ptr %regs_status to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %regs_status, align 16
  %shr56 = lshr i32 %12, 16
  %and57 = and i32 %shr56, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool58.not = icmp eq i32 %and57, 0
  br i1 %tobool58.not, label %do.end34.cleanup227.thread382_crit_edge, label %if.end60

do.end34.cleanup227.thread382_crit_edge:          ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup227.thread382

if.end60:                                         ; preds = %do.end34
  %and61 = and i32 %and57, 61448
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %tobool62.not = icmp eq i32 %and61, 0
  br i1 %tobool62.not, label %if.end60.if.end69_crit_edge, label %if.then63

if.end60.if.end69_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then63:                                        ; preds = %if.end60
  %13 = ptrtoint ptr %map_reg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %map_reg, align 4
  %neg = xor i32 %and61, -1
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %14, i32 noundef 28, i32 noundef 65535, i32 noundef %neg, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool66.not = icmp eq i32 %call.i, 0
  br i1 %tobool66.not, label %if.then63.if.end69_crit_edge, label %if.then63.cleanup227.thread_crit_edge

if.then63.cleanup227.thread_crit_edge:            ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup227.thread

if.then63.if.end69_crit_edge:                     ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.end69:                                         ; preds = %if.then63.if.end69_crit_edge, %if.end60.if.end69_crit_edge
  %and70 = and i32 %and57, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70)
  %tobool71.not = icmp eq i32 %and70, 0
  br i1 %tobool71.not, label %if.end69.if.end84_crit_edge, label %if.then72

if.end69.if.end84_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end84

if.then72:                                        ; preds = %if.end69
  %call75 = call fastcc i32 @mcp251xfd_handle_modif(ptr noundef %dev_id, ptr noundef nonnull %set_normal_mode)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %if.then72.if.end84_crit_edge, label %if.then77

if.then72.if.end84_crit_edge:                     ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end84

if.then77:                                        ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ndev.i, align 8
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %16, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.39, i32 noundef %call75) #12
  br label %cleanup227.thread

if.end84:                                         ; preds = %if.then72.if.end84_crit_edge, %if.end69.if.end84_crit_edge
  %and85 = and i32 %and57, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and85)
  %tobool86.not = icmp eq i32 %and85, 0
  br i1 %tobool86.not, label %if.end84.if.end99_crit_edge, label %if.then87

if.end84.if.end99_crit_edge:                      ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end99

if.then87:                                        ; preds = %if.end84
  %call90 = call i32 @mcp251xfd_handle_rxif(ptr noundef %dev_id) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %tobool91.not = icmp eq i32 %call90, 0
  br i1 %tobool91.not, label %if.then87.if.end99_crit_edge, label %if.then92

if.then87.if.end99_crit_edge:                     ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end99

if.then92:                                        ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ndev.i, align 8
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %18, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38, i32 noundef %call90) #12
  br label %cleanup227.thread

if.end99:                                         ; preds = %if.then87.if.end99_crit_edge, %if.end84.if.end99_crit_edge
  %and100 = and i32 %and57, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and100)
  %tobool101.not = icmp eq i32 %and100, 0
  br i1 %tobool101.not, label %if.end99.if.end114_crit_edge, label %if.then102

if.end99.if.end114_crit_edge:                     ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end114

if.then102:                                       ; preds = %if.end99
  %call105 = call i32 @mcp251xfd_handle_tefif(ptr noundef %dev_id) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call105)
  %tobool106.not = icmp eq i32 %call105, 0
  br i1 %tobool106.not, label %if.then102.if.end114_crit_edge, label %if.then107

if.then102.if.end114_crit_edge:                   ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end114

if.then107:                                       ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ndev.i, align 8
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %20, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.40, i32 noundef %call105) #12
  br label %cleanup227.thread

if.end114:                                        ; preds = %if.then102.if.end114_crit_edge, %if.end99.if.end114_crit_edge
  %and115 = and i32 %and57, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and115)
  %tobool116.not = icmp eq i32 %and115, 0
  br i1 %tobool116.not, label %if.end114.if.end129_crit_edge, label %if.then117

if.end114.if.end129_crit_edge:                    ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end129

if.then117:                                       ; preds = %if.end114
  %call120 = call fastcc i32 @mcp251xfd_handle_rxovif(ptr noundef %dev_id)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call120)
  %tobool121.not = icmp eq i32 %call120, 0
  br i1 %tobool121.not, label %if.then117.if.end129_crit_edge, label %if.then122

if.then117.if.end129_crit_edge:                   ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end129

if.then122:                                       ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ndev.i, align 8
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %22, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.41, i32 noundef %call120) #12
  br label %cleanup227.thread

if.end129:                                        ; preds = %if.then117.if.end129_crit_edge, %if.end114.if.end129_crit_edge
  %and130 = and i32 %and57, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and130)
  %tobool131.not = icmp eq i32 %and130, 0
  br i1 %tobool131.not, label %if.end129.if.end144_crit_edge, label %if.then132

if.end129.if.end144_crit_edge:                    ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end144

if.then132:                                       ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ndev.i, align 8
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %24, ptr noundef nonnull @.str.54, ptr noundef nonnull @__func__.mcp251xfd_handle_txatif) #12
  br label %if.end144

if.end144:                                        ; preds = %if.then132, %if.end129.if.end144_crit_edge
  %and145 = and i32 %and57, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and145)
  %tobool146.not = icmp eq i32 %and145, 0
  br i1 %tobool146.not, label %if.end144.if.end159_crit_edge, label %if.then147

if.end144.if.end159_crit_edge:                    ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end159

if.then147:                                       ; preds = %if.end144
  %call150 = call fastcc i32 @mcp251xfd_handle_ivmif(ptr noundef %dev_id)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call150)
  %tobool151.not = icmp eq i32 %call150, 0
  br i1 %tobool151.not, label %if.then147.if.end159_crit_edge, label %if.then152

if.then147.if.end159_crit_edge:                   ; preds = %if.then147
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end159

if.then152:                                       ; preds = %if.then147
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ndev.i, align 8
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %26, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.43, i32 noundef %call150) #12
  br label %cleanup227.thread

if.end159:                                        ; preds = %if.then147.if.end159_crit_edge, %if.end144.if.end159_crit_edge
  %and160 = and i32 %and57, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and160)
  %tobool161.not = icmp eq i32 %and160, 0
  br i1 %tobool161.not, label %if.end159.if.end174_crit_edge, label %if.then162

if.end159.if.end174_crit_edge:                    ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end174

if.then162:                                       ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @mcp251xfd_handle_serrif(ptr noundef %dev_id)
  br label %if.end174

if.end174:                                        ; preds = %if.then162, %if.end159.if.end174_crit_edge
  %and175 = and i32 %and57, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and175)
  %tobool176.not = icmp eq i32 %and175, 0
  br i1 %tobool176.not, label %if.end174.if.end190_crit_edge, label %if.then177

if.end174.if.end190_crit_edge:                    ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end190

if.then177:                                       ; preds = %if.end174
  %27 = ptrtoint ptr %set_normal_mode to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %set_normal_mode, align 1, !range !214
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool180.not = icmp eq i8 %28, 0
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ecc_stat.i) #9
  %29 = ptrtoint ptr %ecc_stat.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 -1, ptr %ecc_stat.i, align 4, !annotation !212
  %30 = ptrtoint ptr %map_reg to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %map_reg, align 4
  %call.i331 = call i32 @regmap_read(ptr noundef %31, i32 noundef 3600, ptr noundef nonnull %ecc_stat.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i331)
  %tobool.not.i = icmp eq i32 %call.i331, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then177.mcp251xfd_handle_eccif.exit.thread_crit_edge

if.then177.mcp251xfd_handle_eccif.exit.thread_crit_edge: ; preds = %if.then177
  call void @__sanitizer_cov_trace_pc() #11
  br label %mcp251xfd_handle_eccif.exit.thread

if.end.i:                                         ; preds = %if.then177
  %32 = ptrtoint ptr %map_reg to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %map_reg, align 4
  %34 = ptrtoint ptr %ecc_stat.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %ecc_stat.i, align 4
  %neg.i = xor i32 %35, -1
  %call.i.i = call i32 @regmap_update_bits_base(ptr noundef %33, i32 noundef 3600, i32 noundef 6, i32 noundef %neg.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool4.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool4.not.i, label %do.end18.i, label %if.end.i.mcp251xfd_handle_eccif.exit.thread_crit_edge

if.end.i.mcp251xfd_handle_eccif.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mcp251xfd_handle_eccif.exit.thread

do.end18.i:                                       ; preds = %if.end.i
  %36 = ptrtoint ptr %ecc_stat.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %ecc_stat.i, align 4
  %and.i = lshr i32 %37, 16
  %38 = trunc i32 %and.i to i16
  %conv.i = and i16 %38, 4095
  %conv.i.i = zext i16 %conv.i to i32
  %39 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %base.i.i.i, align 8
  %41 = ptrtoint ptr %obj_size.i.i.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %obj_size.i.i.i, align 1
  call void @__sanitizer_cov_trace_cmp2(i16 %40, i16 %conv.i)
  %cmp.i.i = icmp ugt i16 %40, %conv.i
  br i1 %cmp.i.i, label %do.end18.i.if.end26.i_crit_edge, label %lor.lhs.false.i.i

do.end18.i.if.end26.i_crit_edge:                  ; preds = %do.end18.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26.i

lor.lhs.false.i.i:                                ; preds = %do.end18.i
  %43 = ptrtoint ptr %obj_num.i.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %obj_num.i.i, align 2
  %conv1.i21.i.i = zext i8 %42 to i16
  %conv2.i.i.i = zext i8 %44 to i16
  %mul.i.i.i = mul nuw i16 %conv2.i.i.i, %conv1.i21.i.i
  %add.i.i.i = add i16 %mul.i.i.i, %40
  call void @__sanitizer_cov_trace_cmp2(i16 %add.i.i.i, i16 %conv.i)
  %cmp6.not.i.i = icmp ugt i16 %add.i.i.i, %conv.i
  br i1 %cmp6.not.i.i, label %if.end.i.i, label %lor.lhs.false.i.i.if.end26.i_crit_edge

lor.lhs.false.i.i.if.end26.i_crit_edge:           ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26.i

if.end.i.i:                                       ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv10.i.i = zext i16 %40 to i32
  %sub.i.i = sub nsw i32 %conv.i.i, %conv10.i.i
  %conv11.i.i = zext i8 %42 to i32
  %div.i.i = sdiv i32 %sub.i.i, %conv11.i.i
  %conv12.i.i = trunc i32 %div.i.i to i8
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.end.i.i, %lor.lhs.false.i.i.if.end26.i_crit_edge, %do.end18.i.if.end26.i_crit_edge
  %nr.0.i = phi i8 [ -1, %do.end18.i.if.end26.i_crit_edge ], [ %conv12.i.i, %if.end.i.i ], [ -1, %lor.lhs.false.i.i.if.end26.i_crit_edge ]
  %tobool20.not.i = phi i1 [ false, %do.end18.i.if.end26.i_crit_edge ], [ true, %if.end.i.i ], [ false, %lor.lhs.false.i.i.if.end26.i_crit_edge ]
  %and27.i = and i32 %37, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.i)
  %tobool28.not.i = icmp eq i32 %and27.i, 0
  br i1 %tobool28.not.i, label %if.else30.i, label %if.end26.i.if.end36.i_crit_edge

if.end26.i.if.end36.i_crit_edge:                  ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36.i

if.else30.i:                                      ; preds = %if.end26.i
  %and31.i = and i32 %37, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31.i)
  %tobool32.not.i = icmp eq i32 %and31.i, 0
  br i1 %tobool32.not.i, label %if.else30.i.mcp251xfd_handle_eccif.exit.thread_crit_edge, label %if.else30.i.if.end36.i_crit_edge

if.else30.i.if.end36.i_crit_edge:                 ; preds = %if.else30.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36.i

if.else30.i.mcp251xfd_handle_eccif.exit.thread_crit_edge: ; preds = %if.else30.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mcp251xfd_handle_eccif.exit.thread

if.end36.i:                                       ; preds = %if.else30.i.if.end36.i_crit_edge, %if.end26.i.if.end36.i_crit_edge
  %msg.0.i = phi ptr [ @.str.67, %if.end26.i.if.end36.i_crit_edge ], [ @.str.68, %if.else30.i.if.end36.i_crit_edge ]
  br i1 %tobool20.not.i, label %if.else41.i, label %if.then38.i

if.then38.i:                                      ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #11
  %45 = ptrtoint ptr %ecc1.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %ecc1.i, align 4
  %46 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ndev.i, align 8
  call void (ptr, ptr, ...) @netdev_notice(ptr noundef %47, ptr noundef nonnull @.str.69, ptr noundef nonnull %msg.0.i, i32 noundef %conv.i.i) #12
  br label %if.end63.i

if.else41.i:                                      ; preds = %if.end36.i
  %48 = ptrtoint ptr %ecc1.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %ecc1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %37)
  %cmp43.i = icmp eq i32 %49, %37
  br i1 %cmp43.i, label %if.end49.i, label %if.end49.i.thread

if.end49.i.thread:                                ; preds = %if.else41.i
  call void @__sanitizer_cov_trace_pc() #11
  %50 = ptrtoint ptr %ecc1.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %37, ptr %ecc1.i, align 4
  %51 = ptrtoint ptr %cnt48.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 1, ptr %cnt48.i, align 4
  br label %54

if.end49.i:                                       ; preds = %if.else41.i
  call void @__sanitizer_cov_trace_pc() #11
  %52 = ptrtoint ptr %cnt48.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %cnt48.i, align 4
  %inc.i = add i32 %53, 1
  store i32 %inc.i, ptr %cnt48.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %inc.i)
  %cmp55.i = icmp sgt i32 %inc.i, 1
  %spec.select = select i1 %cmp55.i, ptr @.str.71, ptr @.str.72
  br label %54

54:                                               ; preds = %if.end49.i, %if.end49.i.thread
  %storemerge442 = phi i32 [ 1, %if.end49.i.thread ], [ %inc.i, %if.end49.i ]
  %55 = phi ptr [ @.str.72, %if.end49.i.thread ], [ %spec.select, %if.end49.i ]
  %56 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ndev.i, align 8
  %conv52.i443 = zext i8 %nr.0.i to i32
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %57, ptr noundef nonnull @.str.70, ptr noundef nonnull %msg.0.i, i32 noundef %conv.i.i, i32 noundef %conv52.i443, i32 noundef %storemerge442, ptr noundef nonnull %55) #12
  %58 = ptrtoint ptr %cnt48.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %cnt48.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %59)
  %cmp58.i = icmp sgt i32 %59, 1
  br i1 %cmp58.i, label %if.then60.i, label %.if.end63.i_crit_edge

.if.end63.i_crit_edge:                            ; preds = %54
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end63.i

if.then60.i:                                      ; preds = %54
  call void @__sanitizer_cov_trace_pc() #11
  %call61.i = call fastcc i32 @mcp251xfd_handle_eccif_recover(ptr noundef %dev_id, i8 noundef zeroext %nr.0.i) #9
  br label %mcp251xfd_handle_eccif.exit

if.end63.i:                                       ; preds = %.if.end63.i_crit_edge, %if.then38.i
  br i1 %tobool180.not, label %mcp251xfd_handle_eccif.exit.thread370, label %if.then65.i

mcp251xfd_handle_eccif.exit.thread370:            ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ecc_stat.i) #9
  br label %if.end190

if.then65.i:                                      ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #11
  %call66.i = call fastcc i32 @mcp251xfd_chip_set_normal_mode_nowait(ptr noundef %dev_id) #9
  br label %mcp251xfd_handle_eccif.exit

mcp251xfd_handle_eccif.exit.thread:               ; preds = %if.else30.i.mcp251xfd_handle_eccif.exit.thread_crit_edge, %if.end.i.mcp251xfd_handle_eccif.exit.thread_crit_edge, %if.then177.mcp251xfd_handle_eccif.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -22, %if.else30.i.mcp251xfd_handle_eccif.exit.thread_crit_edge ], [ %call.i.i, %if.end.i.mcp251xfd_handle_eccif.exit.thread_crit_edge ], [ %call.i331, %if.then177.mcp251xfd_handle_eccif.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ecc_stat.i) #9
  br label %if.then183

mcp251xfd_handle_eccif.exit:                      ; preds = %if.then65.i, %if.then60.i
  %retval.0.i = phi i32 [ %call61.i, %if.then60.i ], [ %call66.i, %if.then65.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ecc_stat.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool182.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool182.not, label %mcp251xfd_handle_eccif.exit.if.end190_crit_edge, label %mcp251xfd_handle_eccif.exit.if.then183_crit_edge

mcp251xfd_handle_eccif.exit.if.then183_crit_edge: ; preds = %mcp251xfd_handle_eccif.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then183

mcp251xfd_handle_eccif.exit.if.end190_crit_edge:  ; preds = %mcp251xfd_handle_eccif.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end190

if.then183:                                       ; preds = %mcp251xfd_handle_eccif.exit.if.then183_crit_edge, %mcp251xfd_handle_eccif.exit.thread
  %retval.0.i369 = phi i32 [ %retval.0.i.ph, %mcp251xfd_handle_eccif.exit.thread ], [ %retval.0.i, %mcp251xfd_handle_eccif.exit.if.then183_crit_edge ]
  %60 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %ndev.i, align 8
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %61, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.45, i32 noundef %retval.0.i369) #12
  br label %cleanup227.thread

if.end190:                                        ; preds = %mcp251xfd_handle_eccif.exit.if.end190_crit_edge, %mcp251xfd_handle_eccif.exit.thread370, %if.end174.if.end190_crit_edge
  %and191 = and i32 %and57, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and191)
  %tobool192.not = icmp eq i32 %and191, 0
  br i1 %tobool192.not, label %if.end190.if.end205_crit_edge, label %if.then193

if.end190.if.end205_crit_edge:                    ; preds = %if.end190
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end205

if.then193:                                       ; preds = %if.end190
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %crc.i) #9
  %62 = ptrtoint ptr %crc.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 -1, ptr %crc.i, align 4, !annotation !212
  %63 = ptrtoint ptr %map_reg to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %map_reg, align 4
  %call.i334 = call i32 @regmap_read(ptr noundef %64, i32 noundef 3592, ptr noundef nonnull %crc.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i334)
  %tobool.not.i335 = icmp eq i32 %call.i334, 0
  br i1 %tobool.not.i335, label %if.end.i338, label %if.then193.if.then198_crit_edge

if.then193.if.then198_crit_edge:                  ; preds = %if.then193
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then198

if.end.i338:                                      ; preds = %if.then193
  %65 = ptrtoint ptr %map_reg to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %map_reg, align 4
  %67 = ptrtoint ptr %crc.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %crc.i, align 4
  %neg.i336 = xor i32 %68, -1
  %call.i.i337 = call i32 @regmap_update_bits_base(ptr noundef %66, i32 noundef 3592, i32 noundef 196608, i32 noundef %neg.i336, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i337)
  %tobool3.not.i = icmp eq i32 %call.i.i337, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %if.end.i338.if.then198_crit_edge

if.end.i338.if.then198_crit_edge:                 ; preds = %if.end.i338
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then198

if.end5.i:                                        ; preds = %if.end.i338
  %69 = ptrtoint ptr %crc.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %crc.i, align 4
  %and.i339 = and i32 %70, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i339)
  %tobool6.not.i = icmp eq i32 %and.i339, 0
  br i1 %tobool6.not.i, label %if.else.i, label %if.then7.i

if.then7.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  %71 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %ndev.i, align 8
  call void (ptr, ptr, ...) @netdev_notice(ptr noundef %72, ptr noundef nonnull @.str.77) #12
  br label %mcp251xfd_handle_spicrcif.exit.thread

if.else.i:                                        ; preds = %if.end5.i
  %and8.i = and i32 %70, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool9.not.i = icmp eq i32 %and8.i, 0
  br i1 %tobool9.not.i, label %if.else.i.mcp251xfd_handle_spicrcif.exit.thread_crit_edge, label %if.then10.i

if.else.i.mcp251xfd_handle_spicrcif.exit.thread_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mcp251xfd_handle_spicrcif.exit.thread

if.then10.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %73 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %ndev.i, align 8
  %and24.i = and i32 %70, 65535
  call void (ptr, ptr, ...) @netdev_notice(ptr noundef %74, ptr noundef nonnull @.str.78, i32 noundef %and24.i) #12
  br label %mcp251xfd_handle_spicrcif.exit.thread

mcp251xfd_handle_spicrcif.exit.thread:            ; preds = %if.then10.i, %if.else.i.mcp251xfd_handle_spicrcif.exit.thread_crit_edge, %if.then7.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %crc.i) #9
  br label %if.end205

if.then198:                                       ; preds = %if.end.i338.if.then198_crit_edge, %if.then193.if.then198_crit_edge
  %retval.0.i341 = phi i32 [ %call.i334, %if.then193.if.then198_crit_edge ], [ %call.i.i337, %if.end.i338.if.then198_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %crc.i) #9
  %75 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %ndev.i, align 8
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %76, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.46, i32 noundef %retval.0.i341) #12
  br label %cleanup227.thread

if.end205:                                        ; preds = %mcp251xfd_handle_spicrcif.exit.thread, %if.end190.if.end205_crit_edge
  %and206 = and i32 %and57, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and206)
  %tobool207.not = icmp eq i32 %and206, 0
  br i1 %tobool207.not, label %lor.lhs.false, label %if.end205.if.then208_crit_edge

if.end205.if.then208_crit_edge:                   ; preds = %if.end205
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then208

lor.lhs.false:                                    ; preds = %if.end205
  %77 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %cmp.not = icmp eq i32 %78, 0
  br i1 %cmp.not, label %lor.lhs.false.cleanup227_crit_edge, label %lor.lhs.false.if.then208_crit_edge

lor.lhs.false.if.then208_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then208

lor.lhs.false.cleanup227_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup227

if.then208:                                       ; preds = %lor.lhs.false.if.then208_crit_edge, %if.end205.if.then208_crit_edge
  %79 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %ndev.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cf.i) #9
  %81 = ptrtoint ptr %cf.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr null, ptr %cf.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %trec.i) #9
  %82 = ptrtoint ptr %trec.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 -1, ptr %trec.i, align 4, !annotation !212
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %timestamp.i) #9
  %83 = ptrtoint ptr %timestamp.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 -1, ptr %timestamp.i, align 4, !annotation !212
  %84 = ptrtoint ptr %map_reg to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %map_reg, align 4
  %call.i344 = call i32 @regmap_read(ptr noundef %85, i32 noundef 52, ptr noundef nonnull %trec.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i344)
  %tobool.not.i345 = icmp eq i32 %call.i344, 0
  br i1 %tobool.not.i345, label %if.end.i347, label %if.then208.if.then213_crit_edge

if.then208.if.then213_crit_edge:                  ; preds = %if.then208
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then213

if.end.i347:                                      ; preds = %if.then208
  %86 = ptrtoint ptr %trec.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %trec.i, align 4
  %and.i346 = and i32 %87, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i346)
  %tobool2.not.i = icmp eq i32 %and.i346, 0
  br i1 %tobool2.not.i, label %if.else.i348, label %if.end.i347.if.end14.i_crit_edge

if.end.i347.if.end14.i_crit_edge:                 ; preds = %if.end.i347
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.i

if.else.i348:                                     ; preds = %if.end.i347
  %and4.i = and i32 %87, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %if.else7.i, label %if.else.i348.if.end14.i_crit_edge

if.else.i348.if.end14.i_crit_edge:                ; preds = %if.else.i348
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.i

if.else7.i:                                       ; preds = %if.else.i348
  call void @__sanitizer_cov_trace_pc() #11
  %and8.i349 = lshr i32 %87, 18
  %and8.lobit.i = and i32 %and8.i349, 1
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.else7.i, %if.else.i348.if.end14.i_crit_edge, %if.end.i347.if.end14.i_crit_edge
  %tx_state.0.i = phi i32 [ 3, %if.end.i347.if.end14.i_crit_edge ], [ 2, %if.else.i348.if.end14.i_crit_edge ], [ %and8.lobit.i, %if.else7.i ]
  %and15.i = and i32 %87, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i)
  %tobool16.not.i = icmp eq i32 %and15.i, 0
  %and19.i = lshr i32 %87, 17
  %and19.lobit.i = and i32 %and19.i, 1
  %rx_state.0.i = select i1 %tobool16.not.i, i32 %and19.lobit.i, i32 2
  %88 = call i32 @llvm.umax.i32(i32 %tx_state.0.i, i32 %rx_state.0.i) #9
  %89 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %88, i32 %90)
  %cmp25.i = icmp eq i32 %88, %90
  br i1 %cmp25.i, label %if.end14.i.if.end219_crit_edge, label %if.end27.i

if.end14.i.if.end219_crit_edge:                   ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end219

if.end27.i:                                       ; preds = %if.end14.i
  %91 = ptrtoint ptr %map_reg to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %map_reg, align 4
  %call.i.i.i = call i32 @regmap_read(ptr noundef %92, i32 noundef 16, ptr noundef nonnull %timestamp.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i350, label %if.end27.i.mcp251xfd_alloc_can_err_skb.exit.i_crit_edge

if.end27.i.mcp251xfd_alloc_can_err_skb.exit.i_crit_edge: ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mcp251xfd_alloc_can_err_skb.exit.i

if.end.i.i350:                                    ; preds = %if.end27.i
  %93 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %ndev.i, align 8
  %call1.i.i = call ptr @alloc_can_err_skb(ptr noundef %94, ptr noundef nonnull %cf.i) #9
  %tobool2.not.i.i = icmp eq ptr %call1.i.i, null
  br i1 %tobool2.not.i.i, label %if.end.i.i350.mcp251xfd_alloc_can_err_skb.exit.i_crit_edge, label %if.then3.i.i

if.end.i.i350.mcp251xfd_alloc_can_err_skb.exit.i_crit_edge: ; preds = %if.end.i.i350
  call void @__sanitizer_cov_trace_pc() #11
  br label %mcp251xfd_alloc_can_err_skb.exit.i

if.then3.i.i:                                     ; preds = %if.end.i.i350
  call void @__sanitizer_cov_trace_pc() #11
  %95 = ptrtoint ptr %timestamp.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %timestamp.i, align 4
  call void @mcp251xfd_skb_set_timestamp(ptr noundef %dev_id, ptr noundef nonnull %call1.i.i, i32 noundef %96) #9
  br label %mcp251xfd_alloc_can_err_skb.exit.i

mcp251xfd_alloc_can_err_skb.exit.i:               ; preds = %if.then3.i.i, %if.end.i.i350.mcp251xfd_alloc_can_err_skb.exit.i_crit_edge, %if.end27.i.mcp251xfd_alloc_can_err_skb.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ null, %if.end27.i.mcp251xfd_alloc_can_err_skb.exit.i_crit_edge ], [ %call1.i.i, %if.then3.i.i ], [ null, %if.end.i.i350.mcp251xfd_alloc_can_err_skb.exit.i_crit_edge ]
  %97 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %ndev.i, align 8
  %99 = ptrtoint ptr %cf.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %cf.i, align 4
  call void @can_change_state(ptr noundef %98, ptr noundef %100, i32 noundef %tx_state.0.i, i32 noundef %rx_state.0.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %88)
  %cmp30.i = icmp eq i32 %88, 3
  br i1 %cmp30.i, label %if.then31.i, label %if.end39.thread.i

if.then31.i:                                      ; preds = %mcp251xfd_alloc_can_err_skb.exit.i
  %101 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %ndev.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %trec.i.i) #9
  %103 = ptrtoint ptr %trec.i.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 -1, ptr %trec.i.i, align 4, !annotation !212
  %map_reg.i.i = getelementptr i8, ptr %102, i32 2988
  %104 = ptrtoint ptr %map_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %map_reg.i.i, align 4
  %call1.i93.i = call i32 @regmap_read(ptr noundef %105, i32 noundef 52, ptr noundef nonnull %trec.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i93.i)
  %tobool.not.i94.i = icmp eq i32 %call1.i93.i, 0
  br i1 %tobool.not.i94.i, label %if.end39.i, label %__mcp251xfd_get_berr_counter.exit.i

__mcp251xfd_get_berr_counter.exit.i:              ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %trec.i.i) #9
  br label %if.then213

if.end39.i:                                       ; preds = %if.then31.i
  %106 = ptrtoint ptr %trec.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %trec.i.i, align 4
  %and.i.i = and i32 %107, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool2.not.i95.i = icmp eq i32 %and.i.i, 0
  %108 = trunc i32 %107 to i16
  %109 = lshr i16 %108, 8
  %storemerge.i.i = select i1 %tobool2.not.i95.i, i16 %109, i16 256
  %110 = ptrtoint ptr %bec.i to i32
  call void @__asan_store2_noabort(i32 %110)
  store i16 %storemerge.i.i, ptr %bec.i, align 2
  %conv37.i.i = and i16 %108, 255
  %111 = ptrtoint ptr %rxerr.i.i to i32
  call void @__asan_store2_noabort(i32 %111)
  store i16 %conv37.i.i, ptr %rxerr.i.i, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %trec.i.i) #9
  call fastcc void @mcp251xfd_chip_stop(ptr noundef %dev_id, i32 noundef 3) #9
  %112 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %ndev.i, align 8
  call void @can_bus_off(ptr noundef %113) #9
  %tobool40.not.i = icmp eq ptr %retval.0.i.i, null
  br i1 %tobool40.not.i, label %if.end39.i.if.end219thread-pre-split_crit_edge, label %if.end39.i.if.end54.i_crit_edge

if.end39.i.if.end54.i_crit_edge:                  ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end54.i

if.end39.i.if.end219thread-pre-split_crit_edge:   ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end219thread-pre-split

if.end39.thread.i:                                ; preds = %mcp251xfd_alloc_can_err_skb.exit.i
  %tobool40.not102.i = icmp eq ptr %retval.0.i.i, null
  br i1 %tobool40.not102.i, label %if.end39.thread.i.if.end219thread-pre-split_crit_edge, label %if.then44.i

if.end39.thread.i.if.end219thread-pre-split_crit_edge: ; preds = %if.end39.thread.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end219thread-pre-split

if.then44.i:                                      ; preds = %if.end39.thread.i
  %114 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %ndev.i, align 8
  %flags.i.i = getelementptr inbounds %struct.net_device, ptr %115, i32 0, i32 14
  %116 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %flags.i.i, align 8
  %and.i97.i = and i32 %117, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i97.i)
  %tobool.not.i98.i = icmp eq i32 %and.i97.i, 0
  br i1 %tobool.not.i98.i, label %if.then44.i.if.end50.i_crit_edge, label %if.end.i99.i

if.then44.i.if.end50.i_crit_edge:                 ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end50.i

if.end.i99.i:                                     ; preds = %if.then44.i
  %state.i.i = getelementptr i8, ptr %115, i32 2472
  %118 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %state.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %119)
  %cmp.i.i351 = icmp eq i32 %119, 3
  br i1 %cmp.i.i351, label %if.then1.i.i, label %if.end3.i.i

if.then1.i.i:                                     ; preds = %if.end.i99.i
  call void @__sanitizer_cov_trace_pc() #11
  %bec2.i.i = getelementptr i8, ptr %115, i32 7636
  %120 = ptrtoint ptr %bec2.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %bec2.i.i, align 4
  %bec45.sroa.0.0.extract.shift.i = lshr i32 %121, 16
  %extract.t113.i = trunc i32 %bec45.sroa.0.0.extract.shift.i to i8
  %extract.t115.i = trunc i32 %121 to i8
  br label %if.end50.i

if.end3.i.i:                                      ; preds = %if.end.i99.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %trec.i.i.i) #9
  %122 = ptrtoint ptr %trec.i.i.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 -1, ptr %trec.i.i.i, align 4, !annotation !212
  %map_reg.i.i100.i = getelementptr i8, ptr %115, i32 2988
  %123 = ptrtoint ptr %map_reg.i.i100.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %map_reg.i.i100.i, align 4
  %call1.i.i.i = call i32 @regmap_read(ptr noundef %124, i32 noundef 52, ptr noundef nonnull %trec.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %mcp251xfd_get_berr_counter.exit.thread109.i, label %cleanup59.critedge.i

mcp251xfd_get_berr_counter.exit.thread109.i:      ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %125 = ptrtoint ptr %trec.i.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %trec.i.i.i, align 4
  %and.i.i.i = and i32 %126, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool2.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  %127 = trunc i32 %126 to i8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %trec.i.i.i) #9
  %128 = lshr i32 %126, 8
  %129 = trunc i32 %128 to i8
  %extract.t.i = select i1 %tobool2.not.i.i.i, i8 %129, i8 0
  br label %if.end50.i

if.end50.i:                                       ; preds = %mcp251xfd_get_berr_counter.exit.thread109.i, %if.then1.i.i, %if.then44.i.if.end50.i_crit_edge
  %bec45.sroa.0.1108.off0.i = phi i8 [ %extract.t.i, %mcp251xfd_get_berr_counter.exit.thread109.i ], [ %extract.t113.i, %if.then1.i.i ], [ -1, %if.then44.i.if.end50.i_crit_edge ]
  %bec45.sroa.7.1107.off0.i = phi i8 [ %127, %mcp251xfd_get_berr_counter.exit.thread109.i ], [ %extract.t115.i, %if.then1.i.i ], [ -1, %if.then44.i.if.end50.i_crit_edge ]
  %130 = ptrtoint ptr %cf.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %cf.i, align 4
  %arrayidx.i = getelementptr %struct.can_frame, ptr %131, i32 0, i32 5, i32 6
  %132 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 %bec45.sroa.0.1108.off0.i, ptr %arrayidx.i, align 2
  %133 = load ptr, ptr %cf.i, align 4
  %arrayidx53.i = getelementptr %struct.can_frame, ptr %133, i32 0, i32 5, i32 7
  %134 = ptrtoint ptr %arrayidx53.i to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 %bec45.sroa.7.1107.off0.i, ptr %arrayidx53.i, align 1
  br label %if.end54.i

if.end54.i:                                       ; preds = %if.end50.i, %if.end39.i.if.end54.i_crit_edge
  %135 = ptrtoint ptr %timestamp.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %timestamp.i, align 4
  %call55.i = call i32 @can_rx_offload_queue_sorted(ptr noundef %offload.i, ptr noundef nonnull %retval.0.i.i, i32 noundef %136) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55.i)
  %tobool56.not.i = icmp eq i32 %call55.i, 0
  br i1 %tobool56.not.i, label %if.end54.i.if.end219thread-pre-split_crit_edge, label %if.then57.i

if.end54.i.if.end219thread-pre-split_crit_edge:   ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end219thread-pre-split

if.then57.i:                                      ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #11
  %rx_fifo_errors.i = getelementptr inbounds %struct.net_device, ptr %80, i32 0, i32 36, i32 14
  %137 = ptrtoint ptr %rx_fifo_errors.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %rx_fifo_errors.i, align 4
  %inc.i352 = add i32 %138, 1
  store i32 %inc.i352, ptr %rx_fifo_errors.i, align 4
  br label %if.end219thread-pre-split

cleanup59.critedge.i:                             ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %trec.i.i.i) #9
  br label %if.then213

if.then213:                                       ; preds = %cleanup59.critedge.i, %__mcp251xfd_get_berr_counter.exit.i, %if.then208.if.then213_crit_edge
  %retval.1.i = phi i32 [ %call1.i93.i, %__mcp251xfd_get_berr_counter.exit.i ], [ %call1.i.i.i, %cleanup59.critedge.i ], [ %call.i344, %if.then208.if.then213_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %timestamp.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %trec.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cf.i) #9
  %139 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %ndev.i, align 8
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %140, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.47, i32 noundef %retval.1.i) #12
  br label %cleanup227.thread

if.end219thread-pre-split:                        ; preds = %if.then57.i, %if.end54.i.if.end219thread-pre-split_crit_edge, %if.end39.thread.i.if.end219thread-pre-split_crit_edge, %if.end39.i.if.end219thread-pre-split_crit_edge
  %141 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %141)
  %.pr = load i32, ptr %state, align 8
  br label %if.end219

if.end219:                                        ; preds = %if.end219thread-pre-split, %if.end14.i.if.end219_crit_edge
  %142 = phi i32 [ %.pr, %if.end219thread-pre-split ], [ %90, %if.end14.i.if.end219_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %timestamp.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %trec.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cf.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %142)
  %cmp222 = icmp eq i32 %142, 3
  br i1 %cmp222, label %if.end219.cleanup227.thread382_crit_edge, label %if.end219.cleanup227_crit_edge

if.end219.cleanup227_crit_edge:                   ; preds = %if.end219
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup227

if.end219.cleanup227.thread382_crit_edge:         ; preds = %if.end219
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup227.thread382

cleanup227.thread:                                ; preds = %cleanup227.cleanup227.thread_crit_edge, %if.then213, %if.then198, %if.then183, %if.then152, %if.then122, %if.then107, %if.then92, %if.then77, %if.then63.cleanup227.thread_crit_edge, %if.end13.cleanup227.thread_crit_edge
  %handled.3402 = phi i32 [ %handled.3415, %if.then213 ], [ %handled.3415, %if.then198 ], [ %handled.3415, %if.then183 ], [ %handled.3415, %if.then152 ], [ %handled.3415, %if.then122 ], [ %handled.3415, %if.then107 ], [ %handled.3415, %if.then92 ], [ %handled.3415, %if.then77 ], [ %handled.2, %if.end13.cleanup227.thread_crit_edge ], [ %handled.3415, %if.then63.cleanup227.thread_crit_edge ], [ 1, %cleanup227.cleanup227.thread_crit_edge ]
  %err.13.ph = phi i32 [ %retval.1.i, %if.then213 ], [ %retval.0.i341, %if.then198 ], [ %retval.0.i369, %if.then183 ], [ %call150, %if.then152 ], [ %call120, %if.then122 ], [ %call105, %if.then107 ], [ %call90, %if.then92 ], [ %call75, %if.then77 ], [ %call16413, %if.end13.cleanup227.thread_crit_edge ], [ %call.i, %if.then63.cleanup227.thread_crit_edge ], [ %call16, %cleanup227.cleanup227.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %set_normal_mode) #9
  br label %out_fail

cleanup227.thread382:                             ; preds = %if.end219.cleanup227.thread382_crit_edge, %do.end34.cleanup227.thread382_crit_edge
  %retval.1.ph = phi i32 [ %handled.3415, %do.end34.cleanup227.thread382_crit_edge ], [ 1, %if.end219.cleanup227.thread382_crit_edge ]
  call void @can_rx_offload_threaded_irq_finish(ptr noundef %offload.i) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %set_normal_mode) #9
  br label %cleanup239

cleanup227:                                       ; preds = %if.end219.cleanup227_crit_edge, %lor.lhs.false.cleanup227_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %set_normal_mode) #9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %set_normal_mode) #9
  %143 = ptrtoint ptr %set_normal_mode to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 0, ptr %set_normal_mode, align 1
  %144 = ptrtoint ptr %map_reg to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %map_reg, align 4
  %call16 = call i32 @regmap_bulk_read(ptr noundef %145, i32 noundef 28, ptr noundef %regs_status, i32 noundef %div) #9
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %cleanup227.do.end34_crit_edge, label %cleanup227.cleanup227.thread_crit_edge

cleanup227.cleanup227.thread_crit_edge:           ; preds = %cleanup227
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup227.thread

cleanup227.do.end34_crit_edge:                    ; preds = %cleanup227
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end34

out_fail:                                         ; preds = %cleanup227.thread, %cleanup.thread363
  %err.14 = phi i32 [ %call6, %cleanup.thread363 ], [ %err.13.ph, %cleanup227.thread ]
  %handled.5 = phi i32 [ %handled.0, %cleanup.thread363 ], [ %handled.3402, %cleanup227.thread ]
  %offload234 = getelementptr inbounds %struct.mcp251xfd_priv, ptr %dev_id, i32 0, i32 1
  call void @can_rx_offload_threaded_irq_finish(ptr noundef %offload234) #9
  %ndev235 = getelementptr inbounds %struct.mcp251xfd_priv, ptr %dev_id, i32 0, i32 2
  %146 = ptrtoint ptr %ndev235 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %ndev235, align 8
  %regs_status236 = getelementptr inbounds %struct.mcp251xfd_priv, ptr %dev_id, i32 0, i32 19
  %148 = ptrtoint ptr %regs_status236 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %regs_status236, align 16
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %147, ptr noundef nonnull @.str.48, i32 noundef %err.14, i32 noundef %149) #12
  call void @mcp251xfd_dump(ptr noundef %dev_id) #9
  %150 = ptrtoint ptr %map_reg to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %map_reg, align 4
  %call.i354 = call i32 @regmap_write(ptr noundef %151, i32 noundef 28, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i354)
  %tobool.not.i355 = icmp eq i32 %call.i354, 0
  br i1 %tobool.not.i355, label %if.end.i358, label %out_fail.mcp251xfd_chip_interrupts_disable.exit_crit_edge

out_fail.mcp251xfd_chip_interrupts_disable.exit_crit_edge: ; preds = %out_fail
  call void @__sanitizer_cov_trace_pc() #11
  br label %mcp251xfd_chip_interrupts_disable.exit

if.end.i358:                                      ; preds = %out_fail
  %152 = ptrtoint ptr %map_reg to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %map_reg, align 4
  %call.i.i356 = call i32 @regmap_update_bits_base(ptr noundef %153, i32 noundef 3596, i32 noundef 6, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i356)
  %tobool3.not.i357 = icmp eq i32 %call.i.i356, 0
  br i1 %tobool3.not.i357, label %if.end5.i359, label %if.end.i358.mcp251xfd_chip_interrupts_disable.exit_crit_edge

if.end.i358.mcp251xfd_chip_interrupts_disable.exit_crit_edge: ; preds = %if.end.i358
  call void @__sanitizer_cov_trace_pc() #11
  br label %mcp251xfd_chip_interrupts_disable.exit

if.end5.i359:                                     ; preds = %if.end.i358
  call void @__sanitizer_cov_trace_pc() #11
  %154 = ptrtoint ptr %map_reg to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %map_reg, align 4
  %call7.i = call i32 @regmap_write(ptr noundef %155, i32 noundef 3592, i32 noundef 0) #9
  br label %mcp251xfd_chip_interrupts_disable.exit

mcp251xfd_chip_interrupts_disable.exit:           ; preds = %if.end5.i359, %if.end.i358.mcp251xfd_chip_interrupts_disable.exit_crit_edge, %out_fail.mcp251xfd_chip_interrupts_disable.exit_crit_edge
  call void @mcp251xfd_timestamp_stop(ptr noundef %dev_id) #9
  br label %cleanup239

cleanup239:                                       ; preds = %mcp251xfd_chip_interrupts_disable.exit, %cleanup227.thread382
  %retval.2 = phi i32 [ %handled.5, %mcp251xfd_chip_interrupts_disable.exit ], [ %retval.1.ph, %cleanup227.thread382 ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mcp251xfd_chip_interrupts_enable(ptr nocapture noundef readonly %priv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %map_reg = getelementptr inbounds %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 3
  %0 = ptrtoint ptr %map_reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %map_reg, align 4
  %call = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 3592, i32 noundef 50331648) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %map_reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %map_reg, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 3596, i32 noundef 6, i32 noundef 6, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not = icmp eq i32 %call.i, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %ctrlmode = getelementptr inbounds %struct.can_priv, ptr %priv, i32 0, i32 22
  %4 = ptrtoint ptr %ctrlmode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ctrlmode, align 4
  %and = and i32 %5, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool6.not, i32 1058668544, i32 -1088815104
  %6 = ptrtoint ptr %map_reg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %map_reg, align 4
  %call10 = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 28, i32 noundef %spec.select) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call10, %if.end5 ], [ %call, %entry.cleanup_crit_edge ], [ %call.i, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mcp251xfd_timestamp_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mcp251xfd_ring_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mcp251xfd_chip_stop(ptr nocapture noundef %priv, i32 noundef %state) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %state1 = getelementptr inbounds %struct.can_priv, ptr %priv, i32 0, i32 21
  %0 = ptrtoint ptr %state1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %state, ptr %state1, align 8
  %map_reg.i = getelementptr inbounds %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 3
  %1 = ptrtoint ptr %map_reg.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %map_reg.i, align 4
  %call.i = tail call i32 @regmap_write(ptr noundef %2, i32 noundef 28, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.mcp251xfd_chip_interrupts_disable.exit_crit_edge

entry.mcp251xfd_chip_interrupts_disable.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %mcp251xfd_chip_interrupts_disable.exit

if.end.i:                                         ; preds = %entry
  %3 = ptrtoint ptr %map_reg.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %map_reg.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %4, i32 noundef 3596, i32 noundef 6, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool3.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %if.end.i.mcp251xfd_chip_interrupts_disable.exit_crit_edge

if.end.i.mcp251xfd_chip_interrupts_disable.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mcp251xfd_chip_interrupts_disable.exit

if.end5.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %map_reg.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %map_reg.i, align 4
  %call7.i = tail call i32 @regmap_write(ptr noundef %6, i32 noundef 3592, i32 noundef 0) #9
  br label %mcp251xfd_chip_interrupts_disable.exit

mcp251xfd_chip_interrupts_disable.exit:           ; preds = %if.end5.i, %if.end.i.mcp251xfd_chip_interrupts_disable.exit_crit_edge, %entry.mcp251xfd_chip_interrupts_disable.exit_crit_edge
  %rx_int.i = getelementptr inbounds %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 23
  %7 = ptrtoint ptr %rx_int.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rx_int.i, align 4
  %tobool.not.i1 = icmp eq ptr %8, null
  br i1 %tobool.not.i1, label %mcp251xfd_chip_interrupts_disable.exit.mcp251xfd_chip_rx_int_disable.exit_crit_edge, label %if.end.i4

mcp251xfd_chip_interrupts_disable.exit.mcp251xfd_chip_rx_int_disable.exit_crit_edge: ; preds = %mcp251xfd_chip_interrupts_disable.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %mcp251xfd_chip_rx_int_disable.exit

if.end.i4:                                        ; preds = %mcp251xfd_chip_interrupts_disable.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %map_reg.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %map_reg.i, align 4
  %call.i3 = tail call i32 @regmap_write(ptr noundef %10, i32 noundef 3588, i32 noundef 50331651) #9
  br label %mcp251xfd_chip_rx_int_disable.exit

mcp251xfd_chip_rx_int_disable.exit:               ; preds = %if.end.i4, %mcp251xfd_chip_interrupts_disable.exit.mcp251xfd_chip_rx_int_disable.exit_crit_edge
  %11 = ptrtoint ptr %map_reg.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %map_reg.i, align 4
  %call.i.i7 = tail call i32 @regmap_update_bits_base(ptr noundef %12, i32 noundef 0, i32 noundef 117440512, i32 noundef 16777216, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @close_candev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mcp251xfd_chip_softreset(ptr nocapture noundef readonly %priv) unnamed_addr #2 align 64 {
entry:
  %val.i.i = alloca i32, align 4
  %osc.i = alloca i32, align 4
  %osc.i.i = alloca i32, align 4
  %cmd.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ndev = getelementptr inbounds %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 2
  %map_reg.i.i = getelementptr inbounds %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 3
  %spi.i = getelementptr inbounds %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 11
  %devtype_data.i.i.i = getelementptr inbounds %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 27
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.034 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.034)
  %tobool.not = icmp eq i32 %i.034, 0
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %if.then

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ndev, align 8
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %1, ptr noundef nonnull @.str.19) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %cmd.i) #9
  %2 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 0, ptr %cmd.i, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %osc.i.i) #9
  %3 = ptrtoint ptr %osc.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 96, ptr %osc.i.i, align 4
  %4 = ptrtoint ptr %map_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %map_reg.i.i, align 4
  %call.i.i = call i32 @regmap_write(ptr noundef %5, i32 noundef 3584, i32 noundef 96) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end.mcp251xfd_chip_clock_enable.exit.thread.i_crit_edge

if.end.mcp251xfd_chip_clock_enable.exit.thread.i_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %mcp251xfd_chip_clock_enable.exit.thread.i

if.end.i.i:                                       ; preds = %if.end
  %call13.i.i = call i64 @ktime_get() #9
  %add.i.i.i = add i64 %call13.i.i, 30000000
  call void @__might_sleep(ptr noundef nonnull @.str.13, i32 noundef 276) #9
  %6 = ptrtoint ptr %map_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %map_reg.i.i, align 4
  %call2789.i.i = call i32 @regmap_read(ptr noundef %7, i32 noundef 3584, ptr noundef nonnull %osc.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2789.i.i)
  %tobool28.not90.i.i = icmp eq i32 %call2789.i.i, 0
  br i1 %tobool28.not90.i.i, label %if.end.i.i.lor.lhs.false.i.i_crit_edge, label %if.end.i.i.lor.end.i.i_crit_edge

if.end.i.i.lor.end.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.end.i.i

if.end.i.i.lor.lhs.false.i.i_crit_edge:           ; preds = %if.end.i.i
  br label %lor.lhs.false.i.i

lor.lhs.false.i.i:                                ; preds = %if.then41.i.i.lor.lhs.false.i.i_crit_edge, %if.end.i.i.lor.lhs.false.i.i_crit_edge
  %8 = ptrtoint ptr %osc.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %osc.i.i, align 4
  %and.i.i = and i32 %9, 1280
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %and.i.i)
  %cmp29.i.i = icmp eq i32 %and.i.i, 1024
  br i1 %cmp29.i.i, label %lor.lhs.false.i.i.lor.rhs.i.i_crit_edge, label %land.lhs.true.i.i

lor.lhs.false.i.i.lor.rhs.i.i_crit_edge:          ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.rhs.i.i

land.lhs.true.i.i:                                ; preds = %lor.lhs.false.i.i
  %call33.i.i = call i64 @ktime_get() #9
  call void @__sanitizer_cov_trace_cmp8(i64 %call33.i.i, i64 %add.i.i.i)
  %cmp3.i.i.i = icmp sgt i64 %call33.i.i, %add.i.i.i
  br i1 %cmp3.i.i.i, label %for.end.i.i, label %if.then41.i.i

if.then41.i.i:                                    ; preds = %land.lhs.true.i.i
  call void @usleep_range_state(i32 noundef 751, i32 noundef 3000, i32 noundef 2) #9
  %10 = ptrtoint ptr %map_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %map_reg.i.i, align 4
  %call27.i.i = call i32 @regmap_read(ptr noundef %11, i32 noundef 3584, ptr noundef nonnull %osc.i.i) #9
  %tobool28.not.i.i = icmp eq i32 %call27.i.i, 0
  br i1 %tobool28.not.i.i, label %if.then41.i.i.lor.lhs.false.i.i_crit_edge, label %if.then41.i.i.lor.end.i.i_crit_edge

if.then41.i.i.lor.end.i.i_crit_edge:              ; preds = %if.then41.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.end.i.i

if.then41.i.i.lor.lhs.false.i.i_crit_edge:        ; preds = %if.then41.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false.i.i

for.end.i.i:                                      ; preds = %land.lhs.true.i.i
  %12 = ptrtoint ptr %map_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %map_reg.i.i, align 4
  %call38.i.i = call i32 @regmap_read(ptr noundef %13, i32 noundef 3584, ptr noundef nonnull %osc.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38.i.i)
  %tobool44.not.i.i = icmp eq i32 %call38.i.i, 0
  br i1 %tobool44.not.i.i, label %for.end.i.i.lor.rhs.i.i_crit_edge, label %for.end.i.i.lor.end.i.i_crit_edge

for.end.i.i.lor.end.i.i_crit_edge:                ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.end.i.i

for.end.i.i.lor.rhs.i.i_crit_edge:                ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.rhs.i.i

lor.rhs.i.i:                                      ; preds = %for.end.i.i.lor.rhs.i.i_crit_edge, %lor.lhs.false.i.i.lor.rhs.i.i_crit_edge
  %14 = ptrtoint ptr %osc.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %osc.i.i, align 4
  %and45.i.i = and i32 %15, 1280
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %and45.i.i)
  %cmp46.i.i = icmp eq i32 %and45.i.i, 1024
  %phi.sel.i.i = select i1 %cmp46.i.i, i32 0, i32 -110
  br label %lor.end.i.i

lor.end.i.i:                                      ; preds = %lor.rhs.i.i, %for.end.i.i.lor.end.i.i_crit_edge, %if.then41.i.i.lor.end.i.i_crit_edge, %if.end.i.i.lor.end.i.i_crit_edge
  %tobool44.not82.i.i = phi i32 [ %call38.i.i, %for.end.i.i.lor.end.i.i_crit_edge ], [ %phi.sel.i.i, %lor.rhs.i.i ], [ %call2789.i.i, %if.end.i.i.lor.end.i.i_crit_edge ], [ %call27.i.i, %if.then41.i.i.lor.end.i.i_crit_edge ]
  %16 = ptrtoint ptr %osc.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %osc.i.i, align 4
  %18 = add i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %18)
  %19 = icmp ult i32 %18, 2
  br i1 %19, label %if.then51.i.i, label %if.else.i.i

if.then51.i.i:                                    ; preds = %lor.end.i.i
  %20 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ndev, align 8
  %22 = ptrtoint ptr %devtype_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %devtype_data.i.i.i, align 4
  %24 = zext i32 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.86)
  switch i32 %23, label %sw.epilog.i.i.i.i [
    i32 9495, label %if.then51.i.i.mcp251xfd_get_model_str.exit.i.i_crit_edge
    i32 9496, label %sw.bb1.i.i.i.i
    i32 65535, label %sw.bb2.i.i.i.i
  ]

if.then51.i.i.mcp251xfd_get_model_str.exit.i.i_crit_edge: ; preds = %if.then51.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mcp251xfd_get_model_str.exit.i.i

sw.bb1.i.i.i.i:                                   ; preds = %if.then51.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mcp251xfd_get_model_str.exit.i.i

sw.bb2.i.i.i.i:                                   ; preds = %if.then51.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mcp251xfd_get_model_str.exit.i.i

sw.epilog.i.i.i.i:                                ; preds = %if.then51.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mcp251xfd_get_model_str.exit.i.i

mcp251xfd_get_model_str.exit.i.i:                 ; preds = %sw.epilog.i.i.i.i, %sw.bb2.i.i.i.i, %sw.bb1.i.i.i.i, %if.then51.i.i.mcp251xfd_get_model_str.exit.i.i_crit_edge
  %retval.0.i.i.i.i = phi ptr [ @.str.25, %sw.epilog.i.i.i.i ], [ @.str.24, %sw.bb2.i.i.i.i ], [ @.str.23, %sw.bb1.i.i.i.i ], [ @.str.22, %if.then51.i.i.mcp251xfd_get_model_str.exit.i.i_crit_edge ]
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %21, ptr noundef nonnull @.str.20, ptr noundef nonnull %retval.0.i.i.i.i, i32 noundef %17) #12
  br label %mcp251xfd_chip_clock_enable.exit.thread.i

if.else.i.i:                                      ; preds = %lor.end.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -110, i32 %tobool44.not82.i.i)
  %cmp53.i.i = icmp eq i32 %tobool44.not82.i.i, -110
  br i1 %cmp53.i.i, label %if.then54.i.i, label %mcp251xfd_chip_clock_enable.exit.i

if.then54.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ndev, align 8
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %26, ptr noundef nonnull @.str.21, i32 noundef %17, i32 noundef 1024) #12
  br label %mcp251xfd_chip_clock_enable.exit.thread.i

mcp251xfd_chip_clock_enable.exit.thread.i:        ; preds = %if.then54.i.i, %mcp251xfd_get_model_str.exit.i.i, %if.end.mcp251xfd_chip_clock_enable.exit.thread.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ %call.i.i, %if.end.mcp251xfd_chip_clock_enable.exit.thread.i_crit_edge ], [ -110, %if.then54.i.i ], [ -19, %mcp251xfd_get_model_str.exit.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %osc.i.i) #9
  br label %mcp251xfd_chip_softreset_do.exit

mcp251xfd_chip_clock_enable.exit.i:               ; preds = %if.else.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %osc.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tobool44.not82.i.i)
  %tobool.not.i = icmp eq i32 %tobool44.not82.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %mcp251xfd_chip_clock_enable.exit.i.mcp251xfd_chip_softreset_do.exit_crit_edge

mcp251xfd_chip_clock_enable.exit.i.mcp251xfd_chip_softreset_do.exit_crit_edge: ; preds = %mcp251xfd_chip_clock_enable.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mcp251xfd_chip_softreset_do.exit

if.end.i:                                         ; preds = %mcp251xfd_chip_clock_enable.exit.i
  %call.i13.i = call fastcc i32 @__mcp251xfd_chip_set_mode(ptr noundef %priv, i8 noundef zeroext 4, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i13.i)
  %tobool3.not.i = icmp eq i32 %call.i13.i, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %if.end.i.mcp251xfd_chip_softreset_do.exit_crit_edge

if.end.i.mcp251xfd_chip_softreset_do.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mcp251xfd_chip_softreset_do.exit

if.end5.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %27 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %spi.i, align 4
  %call6.i = call i32 @spi_write_then_read(ptr noundef %28, ptr noundef nonnull %cmd.i, i32 noundef 2, ptr noundef null, i32 noundef 0) #9
  br label %mcp251xfd_chip_softreset_do.exit

mcp251xfd_chip_softreset_do.exit:                 ; preds = %if.end5.i, %if.end.i.mcp251xfd_chip_softreset_do.exit_crit_edge, %mcp251xfd_chip_clock_enable.exit.i.mcp251xfd_chip_softreset_do.exit_crit_edge, %mcp251xfd_chip_clock_enable.exit.thread.i
  %retval.0.i = phi i32 [ %call6.i, %if.end5.i ], [ %tobool44.not82.i.i, %mcp251xfd_chip_clock_enable.exit.i.mcp251xfd_chip_softreset_do.exit_crit_edge ], [ %call.i13.i, %if.end.i.mcp251xfd_chip_softreset_do.exit_crit_edge ], [ %retval.0.i.ph.i, %mcp251xfd_chip_clock_enable.exit.thread.i ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cmd.i) #9
  %29 = zext i32 %retval.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.87)
  switch i32 %retval.0.i, label %mcp251xfd_chip_softreset_do.exit.cleanup_crit_edge [
    i32 -110, label %mcp251xfd_chip_softreset_do.exit.for.inc_crit_edge
    i32 0, label %if.end6
  ]

mcp251xfd_chip_softreset_do.exit.for.inc_crit_edge: ; preds = %mcp251xfd_chip_softreset_do.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

mcp251xfd_chip_softreset_do.exit.cleanup_crit_edge: ; preds = %mcp251xfd_chip_softreset_do.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %mcp251xfd_chip_softreset_do.exit
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %osc.i) #9
  %30 = ptrtoint ptr %osc.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -1, ptr %osc.i, align 4, !annotation !212
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #9
  %31 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 -1, ptr %val.i.i, align 4, !annotation !212
  %32 = ptrtoint ptr %map_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %map_reg.i.i, align 4
  %call.i.i26 = call i32 @regmap_read(ptr noundef %33, i32 noundef 0, ptr noundef nonnull %val.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i26)
  %tobool.not.i.i27 = icmp eq i32 %call.i.i26, 0
  br i1 %tobool.not.i.i27, label %if.end.i29, label %mcp251xfd_chip_get_mode.exit.i

mcp251xfd_chip_get_mode.exit.i:                   ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #9
  br label %mcp251xfd_chip_softreset_check.exit

if.end.i29:                                       ; preds = %if.end6
  %34 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %val.i.i, align 4
  %and.i.i28 = lshr i32 %35, 21
  %36 = trunc i32 %and.i.i28 to i8
  %conv.i.i = and i8 %36, 7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %conv.i.i)
  %cmp.not.i = icmp eq i8 %conv.i.i, 4
  br i1 %cmp.not.i, label %do.end17.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i29
  %37 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ndev, align 8
  %trunc.i = trunc i32 %and.i.i28 to i3
  %switch.tableidx = add i3 %trunc.i, 3
  %39 = sext i3 %switch.tableidx to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %39)
  %.not = icmp eq i3 %switch.tableidx, -1
  br i1 %.not, label %if.then2.i.mcp251xfd_get_mode_str.exit.i_crit_edge, label %switch.lookup

if.then2.i.mcp251xfd_get_mode_str.exit.i_crit_edge: ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mcp251xfd_get_mode_str.exit.i

switch.lookup:                                    ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #11
  %40 = zext i3 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [7 x ptr], ptr @switch.table.mcp251xfd_chip_softreset, i32 0, i32 %40
  %41 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %41)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %mcp251xfd_get_mode_str.exit.i

mcp251xfd_get_mode_str.exit.i:                    ; preds = %switch.lookup, %if.then2.i.mcp251xfd_get_mode_str.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.25, %if.then2.i.mcp251xfd_get_mode_str.exit.i_crit_edge ]
  %conv4.i = zext i8 %conv.i.i to i32
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %38, ptr noundef nonnull @.str.35, ptr noundef nonnull %retval.0.i.i, i32 noundef %conv4.i) #12
  br label %mcp251xfd_chip_softreset_check.exit.thread

do.end17.i:                                       ; preds = %if.end.i29
  %42 = ptrtoint ptr %map_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %map_reg.i.i, align 4
  %call18.i = call i32 @regmap_read(ptr noundef %43, i32 noundef 3584, ptr noundef nonnull %osc.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %tobool19.not.i = icmp eq i32 %call18.i, 0
  br i1 %tobool19.not.i, label %if.end21.i, label %do.end17.i.mcp251xfd_chip_softreset_check.exit_crit_edge

do.end17.i.mcp251xfd_chip_softreset_check.exit_crit_edge: ; preds = %do.end17.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mcp251xfd_chip_softreset_check.exit

if.end21.i:                                       ; preds = %do.end17.i
  %44 = ptrtoint ptr %osc.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %osc.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1120, i32 %45)
  %cmp22.not.i = icmp eq i32 %45, 1120
  br i1 %cmp22.not.i, label %mcp251xfd_chip_softreset_check.exit.thread32, label %if.then24.i

mcp251xfd_chip_softreset_check.exit.thread32:     ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %osc.i) #9
  br label %cleanup

if.then24.i:                                      ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #11
  %46 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ndev, align 8
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %47, ptr noundef nonnull @.str.36, i32 noundef %45, i32 noundef 1120) #12
  br label %mcp251xfd_chip_softreset_check.exit.thread

mcp251xfd_chip_softreset_check.exit.thread:       ; preds = %if.then24.i, %mcp251xfd_get_mode_str.exit.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %osc.i) #9
  br label %for.inc

mcp251xfd_chip_softreset_check.exit:              ; preds = %do.end17.i.mcp251xfd_chip_softreset_check.exit_crit_edge, %mcp251xfd_chip_get_mode.exit.i
  %retval.0.i30 = phi i32 [ %call.i.i26, %mcp251xfd_chip_get_mode.exit.i ], [ %call18.i, %do.end17.i.mcp251xfd_chip_softreset_check.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %osc.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -110, i32 %retval.0.i30)
  %cond = icmp eq i32 %retval.0.i30, -110
  br i1 %cond, label %mcp251xfd_chip_softreset_check.exit.for.inc_crit_edge, label %mcp251xfd_chip_softreset_check.exit.cleanup_crit_edge

mcp251xfd_chip_softreset_check.exit.cleanup_crit_edge: ; preds = %mcp251xfd_chip_softreset_check.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

mcp251xfd_chip_softreset_check.exit.for.inc_crit_edge: ; preds = %mcp251xfd_chip_softreset_check.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

for.inc:                                          ; preds = %mcp251xfd_chip_softreset_check.exit.for.inc_crit_edge, %mcp251xfd_chip_softreset_check.exit.thread, %mcp251xfd_chip_softreset_do.exit.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.034, 1
  %exitcond.not = icmp eq i32 %inc, 3
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %mcp251xfd_chip_softreset_check.exit.cleanup_crit_edge, %mcp251xfd_chip_softreset_check.exit.thread32, %mcp251xfd_chip_softreset_do.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %mcp251xfd_chip_softreset_check.exit.thread32 ], [ -110, %for.inc.cleanup_crit_edge ], [ %retval.0.i30, %mcp251xfd_chip_softreset_check.exit.cleanup_crit_edge ], [ %retval.0.i, %mcp251xfd_chip_softreset_do.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mcp251xfd_chip_ecc_init(ptr nocapture noundef %priv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ecc1 = getelementptr inbounds %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 18
  %0 = ptrtoint ptr %ecc1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %ecc1, align 4
  %quirks = getelementptr inbounds %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 27, i32 1
  %1 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %quirks, align 4
  %and = lshr i32 %2, 4
  %and.lobit = and i32 %and, 1
  %map_reg = getelementptr inbounds %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 3
  %3 = ptrtoint ptr %map_reg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %map_reg, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %4, i32 noundef 3596, i32 noundef 1, i32 noundef %and.lobit, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not = icmp eq i32 %call.i, 0
  br i1 %tobool2.not, label %if.end4, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 2048) #13
  %tobool6.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool6.not, label %if.end4.cleanup_crit_edge, label %if.end8

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %map_reg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %map_reg, align 4
  %call10 = tail call i32 @regmap_raw_write(ptr noundef %7, i32 noundef 1024, ptr noundef nonnull %call7.i.i, i32 noundef 2048) #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call10, %if.end8 ], [ %call.i, %entry.cleanup_crit_edge ], [ -12, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mcp251xfd_ring_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mcp251xfd_chip_fifo_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mcp251xfd_chip_set_normal_mode(ptr nocapture noundef readonly %priv) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %ctrlmode.i.i = getelementptr inbounds %struct.can_priv, ptr %priv, i32 0, i32 22
  %0 = ptrtoint ptr %ctrlmode.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ctrlmode.i.i, align 4
  %and.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %entry.__mcp251xfd_chip_set_normal_mode.exit_crit_edge

entry.__mcp251xfd_chip_set_normal_mode.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %__mcp251xfd_chip_set_normal_mode.exit

if.else.i.i:                                      ; preds = %entry
  %and3.i.i = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i)
  %tobool4.not.i.i = icmp eq i32 %and3.i.i, 0
  br i1 %tobool4.not.i.i, label %if.else6.i.i, label %if.else.i.i.__mcp251xfd_chip_set_normal_mode.exit_crit_edge

if.else.i.i.__mcp251xfd_chip_set_normal_mode.exit_crit_edge: ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__mcp251xfd_chip_set_normal_mode.exit

if.else6.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %and9.i.i = and i32 %1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i.i)
  %tobool10.not.i.i = icmp eq i32 %and9.i.i, 0
  %..i.i = select i1 %tobool10.not.i.i, i8 6, i8 0
  br label %__mcp251xfd_chip_set_normal_mode.exit

__mcp251xfd_chip_set_normal_mode.exit:            ; preds = %if.else6.i.i, %if.else.i.i.__mcp251xfd_chip_set_normal_mode.exit_crit_edge, %entry.__mcp251xfd_chip_set_normal_mode.exit_crit_edge
  %mode.0.i.i = phi i8 [ 2, %entry.__mcp251xfd_chip_set_normal_mode.exit_crit_edge ], [ 3, %if.else.i.i.__mcp251xfd_chip_set_normal_mode.exit_crit_edge ], [ %..i.i, %if.else6.i.i ]
  %call1.i = tail call fastcc i32 @__mcp251xfd_chip_set_mode(ptr noundef %priv, i8 noundef zeroext %mode.0.i.i, i1 noundef zeroext false) #9
  ret i32 %call1.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mcp251xfd_dump(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_write_then_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__mcp251xfd_chip_set_mode(ptr nocapture noundef readonly %priv, i8 noundef zeroext %mode_req, i1 noundef zeroext %nowait) unnamed_addr #2 align 64 {
entry:
  %con = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %con) #9
  %0 = ptrtoint ptr %con to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %con, align 4, !annotation !212
  %conv13 = zext i8 %mode_req to i32
  %shl = shl nuw i32 %conv13, 24
  %and14 = and i32 %shl, 117440512
  %map_reg = getelementptr inbounds %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 3
  %1 = ptrtoint ptr %map_reg to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %map_reg, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %2, i32 noundef 0, i32 noundef 117440512, i32 noundef %and14, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool15.not = icmp eq i32 %call.i, 0
  br i1 %tobool15.not, label %if.end17, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end17:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %mode_req)
  %cmp = icmp eq i8 %mode_req, 1
  %brmerge = or i1 %cmp, %nowait
  br i1 %brmerge, label %if.end17.cleanup_crit_edge, label %if.end23

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end23:                                         ; preds = %if.end17
  %call24 = tail call i64 @ktime_get() #9
  %add.i = add i64 %call24, 1000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.13, i32 noundef 216) #9
  %3 = ptrtoint ptr %map_reg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %map_reg, align 4
  %call40176 = call i32 @regmap_read(ptr noundef %4, i32 noundef 0, ptr noundef nonnull %con) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40176)
  %tobool41.not177 = icmp eq i32 %call40176, 0
  br i1 %tobool41.not177, label %if.end23.do.end57_crit_edge, label %if.end23.if.then107_crit_edge

if.end23.if.then107_crit_edge:                    ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then107

if.end23.do.end57_crit_edge:                      ; preds = %if.end23
  br label %do.end57

do.end57:                                         ; preds = %if.then75.do.end57_crit_edge, %if.end23.do.end57_crit_edge
  %5 = ptrtoint ptr %con to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %con, align 4
  %and59 = lshr i32 %6, 21
  %shr = and i32 %and59, 7
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %conv13)
  %cmp61 = icmp eq i32 %shr, %conv13
  br i1 %cmp61, label %do.end57.do.end94_crit_edge, label %land.lhs.true

do.end57.do.end94_crit_edge:                      ; preds = %do.end57
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end94

land.lhs.true:                                    ; preds = %do.end57
  %call66 = call i64 @ktime_get() #9
  call void @__sanitizer_cov_trace_cmp8(i64 %call66, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call66, %add.i
  br i1 %cmp3.i, label %for.end, label %if.then75

if.then75:                                        ; preds = %land.lhs.true
  call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #9
  %7 = ptrtoint ptr %map_reg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %map_reg, align 4
  %call40 = call i32 @regmap_read(ptr noundef %8, i32 noundef 0, ptr noundef nonnull %con) #9
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.then75.do.end57_crit_edge, label %if.then75.if.then107_crit_edge

if.then75.if.then107_crit_edge:                   ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then107

if.then75.do.end57_crit_edge:                     ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end57

for.end:                                          ; preds = %land.lhs.true
  %9 = ptrtoint ptr %map_reg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %map_reg, align 4
  %call72 = call i32 @regmap_read(ptr noundef %10, i32 noundef 0, ptr noundef nonnull %con) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %tobool79.not = icmp eq i32 %call72, 0
  br i1 %tobool79.not, label %for.end.do.end94_crit_edge, label %for.end.if.then107_crit_edge

for.end.if.then107_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then107

for.end.do.end94_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end94

do.end94:                                         ; preds = %for.end.do.end94_crit_edge, %do.end57.do.end94_crit_edge
  %11 = ptrtoint ptr %con to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %con, align 4
  %and96 = lshr i32 %12, 21
  %shr97 = and i32 %and96, 7
  call void @__sanitizer_cov_trace_cmp4(i32 %shr97, i32 %conv13)
  %cmp99 = icmp eq i32 %shr97, %conv13
  br i1 %cmp99, label %do.end94.cleanup_crit_edge, label %do.end94.if.then107_crit_edge

do.end94.if.then107_crit_edge:                    ; preds = %do.end94
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then107

do.end94.cleanup_crit_edge:                       ; preds = %do.end94
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then107:                                       ; preds = %do.end94.if.then107_crit_edge, %for.end.if.then107_crit_edge, %if.then75.if.then107_crit_edge, %if.end23.if.then107_crit_edge
  %tobool79.not169.ph = phi i32 [ %call40176, %if.end23.if.then107_crit_edge ], [ -110, %do.end94.if.then107_crit_edge ], [ %call72, %for.end.if.then107_crit_edge ], [ %call40, %if.then75.if.then107_crit_edge ]
  %13 = ptrtoint ptr %con to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %con, align 4
  %and124 = lshr i32 %14, 21
  %conv126 = and i32 %and124, 7
  %ndev = getelementptr inbounds %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 2
  %15 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ndev, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %mode_req)
  %17 = icmp ult i8 %mode_req, 8
  br i1 %17, label %switch.lookup, label %if.then107.mcp251xfd_get_mode_str.exit_crit_edge

if.then107.mcp251xfd_get_mode_str.exit_crit_edge: ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #11
  br label %mcp251xfd_get_mode_str.exit

switch.lookup:                                    ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #11
  %18 = sext i8 %mode_req to i32
  %switch.gep = getelementptr inbounds [8 x ptr], ptr @switch.table.__mcp251xfd_chip_set_mode, i32 0, i32 %18
  %19 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %19)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %mcp251xfd_get_mode_str.exit

mcp251xfd_get_mode_str.exit:                      ; preds = %switch.lookup, %if.then107.mcp251xfd_get_mode_str.exit_crit_edge
  %retval.0.i154 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.25, %if.then107.mcp251xfd_get_mode_str.exit_crit_edge ]
  %switch.tableidx = and i32 %and124, 7
  %20 = xor i32 %switch.tableidx, 4
  %switch.gep182 = getelementptr inbounds [8 x ptr], ptr @switch.table.__mcp251xfd_chip_set_mode.82, i32 0, i32 %20
  %21 = ptrtoint ptr %switch.gep182 to i32
  call void @__asan_load4_noabort(i32 %21)
  %switch.load183 = load ptr, ptr %switch.gep182, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %16, ptr noundef nonnull @.str.26, ptr noundef nonnull %retval.0.i154, i32 noundef %conv13, ptr noundef nonnull %switch.load183, i32 noundef %conv126) #12
  br label %cleanup

cleanup:                                          ; preds = %mcp251xfd_get_mode_str.exit, %do.end94.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %tobool79.not169.ph, %mcp251xfd_get_mode_str.exit ], [ %call.i, %entry.cleanup_crit_edge ], [ 0, %if.end17.cleanup_crit_edge ], [ 0, %do.end94.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %con) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_raw_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_get_val_bytes(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_value_cansleep(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mcp251xfd_handle_rxif(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @can_rx_offload_threaded_irq_finish(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mcp251xfd_handle_modif(ptr nocapture noundef readonly %priv, ptr nocapture noundef writeonly %set_normal_mode) unnamed_addr #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrlmode.i = getelementptr inbounds %struct.can_priv, ptr %priv, i32 0, i32 22
  %0 = ptrtoint ptr %ctrlmode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ctrlmode.i, align 4
  %and.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %entry.mcp251xfd_get_normal_mode.exit_crit_edge

entry.mcp251xfd_get_normal_mode.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %mcp251xfd_get_normal_mode.exit

if.else.i:                                        ; preds = %entry
  %and3.i = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  br i1 %tobool4.not.i, label %if.else6.i, label %if.else.i.mcp251xfd_get_normal_mode.exit_crit_edge

if.else.i.mcp251xfd_get_normal_mode.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mcp251xfd_get_normal_mode.exit

if.else6.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %and9.i = and i32 %1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i = icmp eq i32 %and9.i, 0
  %..i = select i1 %tobool10.not.i, i8 6, i8 0
  br label %mcp251xfd_get_normal_mode.exit

mcp251xfd_get_normal_mode.exit:                   ; preds = %if.else6.i, %if.else.i.mcp251xfd_get_normal_mode.exit_crit_edge, %entry.mcp251xfd_get_normal_mode.exit_crit_edge
  %mode.0.i = phi i8 [ 2, %entry.mcp251xfd_get_normal_mode.exit_crit_edge ], [ 3, %if.else.i.mcp251xfd_get_normal_mode.exit_crit_edge ], [ %..i, %if.else6.i ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #9
  %2 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val.i, align 4, !annotation !212
  %map_reg.i = getelementptr inbounds %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 3
  %3 = ptrtoint ptr %map_reg.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %map_reg.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %4, i32 noundef 0, ptr noundef nonnull %val.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i72 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i72, label %if.end, label %mcp251xfd_chip_get_mode.exit

mcp251xfd_chip_get_mode.exit:                     ; preds = %mcp251xfd_get_normal_mode.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #9
  br label %cleanup

if.end:                                           ; preds = %mcp251xfd_get_normal_mode.exit
  %5 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val.i, align 4
  %and.i73 = lshr i32 %6, 21
  %7 = trunc i32 %and.i73 to i8
  %conv.i = and i8 %7, 7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #9
  call void @__sanitizer_cov_trace_cmp1(i8 %conv.i, i8 %mode.0.i)
  %cmp = icmp eq i8 %conv.i, %mode.0.i
  br i1 %cmp, label %do.body5, label %if.end17

do.body5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mcp251xfd_handle_modif.__UNIQUE_ID_ddebug592, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mcp251xfd_handle_modif, %cleanup)) #9
          to label %if.then11 [label %cleanup], !srcloc !215

if.then11:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #11
  %ndev = getelementptr inbounds %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 2
  %8 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ndev, align 8
  %switch.tableidx = and i32 %and.i73, 7
  %10 = xor i32 %switch.tableidx, 4
  %switch.gep = getelementptr inbounds [8 x ptr], ptr @switch.table.mcp251xfd_handle_modif, i32 0, i32 %10
  %11 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %11)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %conv13 = zext i8 %mode.0.i to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @mcp251xfd_handle_modif.__UNIQUE_ID_ddebug592, ptr noundef %9, ptr noundef nonnull @.str.50, ptr noundef nonnull %switch.load, i32 noundef %conv13) #9
  br label %cleanup

if.end17:                                         ; preds = %if.end
  %quirks = getelementptr inbounds %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 27, i32 1
  %12 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %quirks, align 4
  %and = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool18.not = icmp eq i32 %and, 0
  br i1 %tobool18.not, label %if.end17.if.else_crit_edge, label %land.lhs.true

if.end17.if.else_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true:                                    ; preds = %if.end17
  %.pre = trunc i32 %and.i73 to i3
  %14 = zext i3 %.pre to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.88)
  switch i3 %.pre, label %land.lhs.true.if.else_crit_edge [
    i3 -1, label %land.lhs.true.do.body27_crit_edge
    i3 3, label %land.lhs.true.do.body27_crit_edge117
  ]

land.lhs.true.do.body27_crit_edge117:             ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body27

land.lhs.true.do.body27_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body27

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

do.body27:                                        ; preds = %land.lhs.true.do.body27_crit_edge, %land.lhs.true.do.body27_crit_edge117
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mcp251xfd_handle_modif.__UNIQUE_ID_ddebug593, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mcp251xfd_handle_modif, %if.end53)) #9
          to label %if.then41 [label %if.end53], !srcloc !215

if.then41:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #11
  %ndev42 = getelementptr inbounds %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 2
  %15 = ptrtoint ptr %ndev42 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ndev42, align 8
  %switch.tableidx109 = and i32 %and.i73, 7
  %17 = xor i32 %switch.tableidx109, 4
  %switch.gep111 = getelementptr inbounds [8 x ptr], ptr @switch.table.mcp251xfd_handle_modif.83, i32 0, i32 %17
  %18 = ptrtoint ptr %switch.gep111 to i32
  call void @__asan_load4_noabort(i32 %18)
  %switch.load112 = load ptr, ptr %switch.gep111, align 4
  %conv44 = zext i8 %conv.i to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @mcp251xfd_handle_modif.__UNIQUE_ID_ddebug593, ptr noundef %16, ptr noundef nonnull @.str.50, ptr noundef nonnull %switch.load112, i32 noundef %conv44) #9
  br label %if.end53

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end17.if.else_crit_edge
  %ndev50 = getelementptr inbounds %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 2
  %19 = ptrtoint ptr %ndev50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ndev50, align 8
  %switch.tableidx113 = and i32 %and.i73, 7
  %21 = xor i32 %switch.tableidx113, 4
  %switch.gep115 = getelementptr inbounds [8 x ptr], ptr @switch.table.mcp251xfd_handle_modif.84, i32 0, i32 %21
  %22 = ptrtoint ptr %switch.gep115 to i32
  call void @__asan_load4_noabort(i32 %22)
  %switch.load116 = load ptr, ptr %switch.gep115, align 4
  %conv52 = zext i8 %conv.i to i32
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %20, ptr noundef nonnull @.str.50, ptr noundef nonnull %switch.load116, i32 noundef %conv52) #12
  br label %if.end53

if.end53:                                         ; preds = %if.else, %if.then41, %do.body27
  %regs_status = getelementptr inbounds %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 19
  %23 = ptrtoint ptr %regs_status to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %regs_status, align 16
  %and54 = and i32 %24, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not = icmp eq i32 %and54, 0
  br i1 %tobool55.not, label %if.end57, label %if.then56

if.then56:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %set_normal_mode to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %set_normal_mode, align 1
  br label %cleanup

if.end57:                                         ; preds = %if.end53
  %26 = ptrtoint ptr %ctrlmode.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ctrlmode.i, align 4
  %and.i.i.i = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.else.i.i.i, label %if.end57.mcp251xfd_chip_set_normal_mode_nowait.exit_crit_edge

if.end57.mcp251xfd_chip_set_normal_mode_nowait.exit_crit_edge: ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #11
  br label %mcp251xfd_chip_set_normal_mode_nowait.exit

if.else.i.i.i:                                    ; preds = %if.end57
  %and3.i.i.i = and i32 %27, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %and3.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.else6.i.i.i, label %if.else.i.i.i.mcp251xfd_chip_set_normal_mode_nowait.exit_crit_edge

if.else.i.i.i.mcp251xfd_chip_set_normal_mode_nowait.exit_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mcp251xfd_chip_set_normal_mode_nowait.exit

if.else6.i.i.i:                                   ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %and9.i.i.i = and i32 %27, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i.i.i)
  %tobool10.not.i.i.i = icmp eq i32 %and9.i.i.i, 0
  %phi.cast.i = select i1 %tobool10.not.i.i.i, i32 100663296, i32 0
  br label %mcp251xfd_chip_set_normal_mode_nowait.exit

mcp251xfd_chip_set_normal_mode_nowait.exit:       ; preds = %if.else6.i.i.i, %if.else.i.i.i.mcp251xfd_chip_set_normal_mode_nowait.exit_crit_edge, %if.end57.mcp251xfd_chip_set_normal_mode_nowait.exit_crit_edge
  %mode.0.i.i.i = phi i32 [ 33554432, %if.end57.mcp251xfd_chip_set_normal_mode_nowait.exit_crit_edge ], [ 50331648, %if.else.i.i.i.mcp251xfd_chip_set_normal_mode_nowait.exit_crit_edge ], [ %phi.cast.i, %if.else6.i.i.i ]
  %28 = ptrtoint ptr %map_reg.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %map_reg.i, align 4
  %call.i.i.i = call i32 @regmap_update_bits_base(ptr noundef %29, i32 noundef 0, i32 noundef 117440512, i32 noundef %mode.0.i.i.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %cleanup

cleanup:                                          ; preds = %mcp251xfd_chip_set_normal_mode_nowait.exit, %if.then56, %if.then11, %do.body5, %mcp251xfd_chip_get_mode.exit
  %retval.0 = phi i32 [ 0, %if.then56 ], [ %call.i.i.i, %mcp251xfd_chip_set_normal_mode_nowait.exit ], [ %call.i, %mcp251xfd_chip_get_mode.exit ], [ 0, %if.then11 ], [ 0, %do.body5 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mcp251xfd_handle_tefif(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mcp251xfd_handle_rxovif(ptr noundef %priv) unnamed_addr #2 align 64 {
entry:
  %cf = alloca ptr, align 4
  %timestamp = alloca i32, align 4
  %rxovif = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ndev = getelementptr inbounds %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 2
  %0 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ndev, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cf) #9
  %2 = ptrtoint ptr %cf to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %cf, align 4, !annotation !212
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %timestamp) #9
  %3 = ptrtoint ptr %timestamp to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %timestamp, align 4, !annotation !212
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rxovif) #9
  %4 = ptrtoint ptr %rxovif to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %rxovif, align 4, !annotation !212
  %rx_over_errors = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 11
  %5 = ptrtoint ptr %rx_over_errors to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rx_over_errors, align 4
  %inc = add i32 %6, 1
  store i32 %inc, ptr %rx_over_errors, align 4
  %rx_errors = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 4
  %7 = ptrtoint ptr %rx_errors to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rx_errors, align 4
  %inc2 = add i32 %8, 1
  store i32 %inc2, ptr %rx_errors, align 4
  %map_reg = getelementptr inbounds %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 3
  %9 = ptrtoint ptr %map_reg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %map_reg, align 4
  %call = call i32 @regmap_read(ptr noundef %10, i32 noundef 40, ptr noundef nonnull %rxovif) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %rx = getelementptr inbounds %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 16
  %rx_ring_num = getelementptr inbounds %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 17
  %11 = ptrtoint ptr %rx_ring_num to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %rx_ring_num, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %cmp116.not = icmp eq i8 %12, 0
  br i1 %cmp116.not, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %regs_status = getelementptr inbounds %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 19
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %ring.0118.in = phi ptr [ %rx, %for.body.lr.ph ], [ %add.ptr66, %for.inc.for.body_crit_edge ]
  %i.0117 = phi i32 [ 0, %for.body.lr.ph ], [ %inc63, %for.inc.for.body_crit_edge ]
  %13 = ptrtoint ptr %ring.0118.in to i32
  call void @__asan_load4_noabort(i32 %13)
  %ring.0118 = load ptr, ptr %ring.0118.in, align 4
  %14 = ptrtoint ptr %rxovif to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rxovif, align 4
  %fifo_nr = getelementptr inbounds %struct.mcp251xfd_rx_ring, ptr %ring.0118, i32 0, i32 4
  %16 = ptrtoint ptr %fifo_nr to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %fifo_nr, align 1
  %conv4 = zext i8 %17 to i32
  %shl = shl nuw i32 1, %conv4
  %and = and i32 %shl, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %for.body.for.inc_crit_edge, label %if.end7

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end7:                                          ; preds = %for.body
  %18 = ptrtoint ptr %regs_status to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %regs_status, align 16
  %and8 = and i32 %19, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  %call27 = call i32 @net_ratelimit() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool9.not, label %if.else, label %if.then10

if.then10:                                        ; preds = %if.end7
  br i1 %tobool28.not, label %if.then10.if.end55_crit_edge, label %do.body14

if.then10.if.end55_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end55

do.body14:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mcp251xfd_handle_rxovif.__UNIQUE_ID_ddebug582, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mcp251xfd_handle_rxovif, %if.end55)) #9
          to label %if.then20 [label %if.end55], !srcloc !215

if.then20:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ndev, align 8
  %nr = getelementptr inbounds %struct.mcp251xfd_rx_ring, ptr %ring.0118, i32 0, i32 3
  %22 = ptrtoint ptr %nr to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %nr, align 2
  %conv22 = zext i8 %23 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @mcp251xfd_handle_rxovif.__UNIQUE_ID_ddebug582, ptr noundef %21, ptr noundef nonnull @.str.52, i32 noundef %conv22) #9
  br label %if.end55

if.else:                                          ; preds = %if.end7
  br i1 %tobool28.not, label %if.else.if.end55_crit_edge, label %do.body31

if.else.if.end55_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end55

do.body31:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mcp251xfd_handle_rxovif.__UNIQUE_ID_ddebug583, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mcp251xfd_handle_rxovif, %if.end55)) #9
          to label %if.then45 [label %if.end55], !srcloc !215

if.then45:                                        ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ndev, align 8
  %nr47 = getelementptr inbounds %struct.mcp251xfd_rx_ring, ptr %ring.0118, i32 0, i32 3
  %26 = ptrtoint ptr %nr47 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %nr47, align 2
  %conv48 = zext i8 %27 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @mcp251xfd_handle_rxovif.__UNIQUE_ID_ddebug583, ptr noundef %25, ptr noundef nonnull @.str.53, i32 noundef %conv48) #9
  br label %if.end55

if.end55:                                         ; preds = %if.then45, %do.body31, %if.else.if.end55_crit_edge, %if.then20, %do.body14, %if.then10.if.end55_crit_edge
  %28 = ptrtoint ptr %map_reg to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %map_reg, align 4
  %30 = ptrtoint ptr %fifo_nr to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %fifo_nr, align 1
  %conv58 = zext i8 %31 to i32
  %mul = mul nuw nsw i32 %conv58, 12
  %add = add nuw nsw i32 %mul, 84
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %29, i32 noundef %add, i32 noundef 8, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool60.not = icmp eq i32 %call.i, 0
  br i1 %tobool60.not, label %if.end55.for.inc_crit_edge, label %if.end55.cleanup_crit_edge

if.end55.cleanup_crit_edge:                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end55.for.inc_crit_edge:                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

for.inc:                                          ; preds = %if.end55.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc63 = add nuw nsw i32 %i.0117, 1
  %add.ptr66 = getelementptr ptr, ptr %rx, i32 %inc63
  %32 = ptrtoint ptr %rx_ring_num to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %rx_ring_num, align 4
  %conv = zext i8 %33 to i32
  %cmp = icmp ult i32 %inc63, %conv
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  %34 = ptrtoint ptr %map_reg to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %map_reg, align 4
  %call.i.i = call i32 @regmap_read(ptr noundef %35, i32 noundef 16, ptr noundef nonnull %timestamp) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %for.end
  %36 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ndev, align 8
  %call1.i = call ptr @alloc_can_err_skb(ptr noundef %37, ptr noundef nonnull %cf) #9
  %tobool2.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool2.not.i, label %if.end.i.cleanup_crit_edge, label %if.end70

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end70:                                         ; preds = %if.end.i
  %38 = ptrtoint ptr %timestamp to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %timestamp, align 4
  call void @mcp251xfd_skb_set_timestamp(ptr noundef %priv, ptr noundef nonnull %call1.i, i32 noundef %39) #9
  %40 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %cf, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %41, align 8
  %or = or i32 %43, 4
  store i32 %or, ptr %41, align 8
  %44 = load ptr, ptr %cf, align 4
  %arrayidx = getelementptr %struct.can_frame, ptr %44, i32 0, i32 5, i32 1
  %45 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 1, ptr %arrayidx, align 1
  %offload = getelementptr inbounds %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 1
  %46 = ptrtoint ptr %timestamp to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %timestamp, align 4
  %call71 = call i32 @can_rx_offload_queue_sorted(ptr noundef %offload, ptr noundef nonnull %call1.i, i32 noundef %47) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %if.end70.cleanup_crit_edge, label %if.then73

if.end70.cleanup_crit_edge:                       ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then73:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #11
  %rx_fifo_errors = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 14
  %48 = ptrtoint ptr %rx_fifo_errors to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %rx_fifo_errors, align 4
  %inc74 = add i32 %49, 1
  store i32 %inc74, ptr %rx_fifo_errors, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then73, %if.end70.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %for.end.cleanup_crit_edge, %if.end55.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ 0, %if.then73 ], [ 0, %if.end70.cleanup_crit_edge ], [ 0, %for.end.cleanup_crit_edge ], [ 0, %if.end.i.cleanup_crit_edge ], [ %call.i, %if.end55.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rxovif) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %timestamp) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cf) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mcp251xfd_handle_ivmif(ptr noundef %priv) unnamed_addr #2 align 64 {
entry:
  %bdiag1 = alloca i32, align 4
  %timestamp = alloca i32, align 4
  %cf = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ndev = getelementptr inbounds %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 2
  %0 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ndev, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bdiag1) #9
  %2 = ptrtoint ptr %bdiag1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %bdiag1, align 4, !annotation !212
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %timestamp) #9
  %3 = ptrtoint ptr %timestamp to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %timestamp, align 4, !annotation !212
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cf) #9
  %4 = ptrtoint ptr %cf to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %cf, align 4
  %map_reg.i = getelementptr inbounds %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 3
  %5 = ptrtoint ptr %map_reg.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %map_reg.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %6, i32 noundef 16, ptr noundef nonnull %timestamp) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %map_reg.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %map_reg.i, align 4
  %call2 = call i32 @regmap_read(ptr noundef %8, i32 noundef 60, ptr noundef nonnull %bdiag1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %9 = ptrtoint ptr %map_reg.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %map_reg.i, align 4
  %call7 = call i32 @regmap_write(ptr noundef %10, i32 noundef 60, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  %can_stats = getelementptr inbounds %struct.can_priv, ptr %priv, i32 0, i32 1
  %11 = ptrtoint ptr %can_stats to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %can_stats, align 4
  %inc = add i32 %12, 1
  store i32 %inc, ptr %can_stats, align 4
  %13 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ndev, align 8
  %call12 = call ptr @alloc_can_err_skb(ptr noundef %14, ptr noundef nonnull %cf) #9
  %15 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cf, align 4
  %tobool13.not = icmp eq ptr %16, null
  br i1 %tobool13.not, label %if.end10.if.end15_crit_edge, label %if.then14

if.end10.if.end15_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.then14:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 8
  %or = or i32 %18, 136
  store i32 %or, ptr %16, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.end10.if.end15_crit_edge
  %19 = ptrtoint ptr %bdiag1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %bdiag1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %20)
  %tobool16.not = icmp sgt i32 %20, -1
  br i1 %tobool16.not, label %if.end15.if.end41_crit_edge, label %do.end, !prof !216

if.end15.if.end41_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41

do.end:                                           ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 863, i32 noundef 9, ptr noundef null) #9
  %21 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ndev, align 8
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %22, ptr noundef nonnull @.str.55) #12
  br label %if.end41

if.end41:                                         ; preds = %do.end, %if.end15.if.end41_crit_edge
  %23 = ptrtoint ptr %bdiag1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %bdiag1, align 4
  %and42 = and i32 %24, 538968064
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  br i1 %tobool43.not, label %if.end41.if.end71_crit_edge, label %do.body46

if.end41.if.end71_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end71

do.body46:                                        ; preds = %if.end41
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mcp251xfd_handle_ivmif.__UNIQUE_ID_ddebug584, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mcp251xfd_handle_ivmif, %do.end64)) #9
          to label %if.then58 [label %do.end64], !srcloc !215

if.then58:                                        ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ndev, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @mcp251xfd_handle_ivmif.__UNIQUE_ID_ddebug584, ptr noundef %26, ptr noundef nonnull @.str.57) #9
  br label %do.end64

do.end64:                                         ; preds = %if.then58, %do.body46
  %rx_errors = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 4
  %27 = ptrtoint ptr %rx_errors to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %rx_errors, align 4
  %inc65 = add i32 %28, 1
  store i32 %inc65, ptr %rx_errors, align 4
  %29 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cf, align 4
  %tobool66.not = icmp eq ptr %30, null
  br i1 %tobool66.not, label %do.end64.if.end71_crit_edge, label %if.then67

do.end64.if.end71_crit_edge:                      ; preds = %do.end64
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end71

if.then67:                                        ; preds = %do.end64
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx = getelementptr %struct.can_frame, ptr %30, i32 0, i32 5, i32 3
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx, align 1
  %33 = or i8 %32, 8
  store i8 %33, ptr %arrayidx, align 1
  br label %if.end71

if.end71:                                         ; preds = %if.then67, %do.end64.if.end71_crit_edge, %if.end41.if.end71_crit_edge
  %34 = ptrtoint ptr %bdiag1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %bdiag1, align 4
  %and72 = and i32 %35, 269484032
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and72)
  %tobool73.not = icmp eq i32 %and72, 0
  br i1 %tobool73.not, label %if.end71.if.end107_crit_edge, label %do.body76

if.end71.if.end107_crit_edge:                     ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end107

do.body76:                                        ; preds = %if.end71
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mcp251xfd_handle_ivmif.__UNIQUE_ID_ddebug585, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mcp251xfd_handle_ivmif, %do.end96)) #9
          to label %if.then90 [label %do.end96], !srcloc !215

if.then90:                                        ; preds = %do.body76
  call void @__sanitizer_cov_trace_pc() #11
  %36 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ndev, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @mcp251xfd_handle_ivmif.__UNIQUE_ID_ddebug585, ptr noundef %37, ptr noundef nonnull @.str.58) #9
  br label %do.end96

do.end96:                                         ; preds = %if.then90, %do.body76
  %rx_errors97 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 4
  %38 = ptrtoint ptr %rx_errors97 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %rx_errors97, align 4
  %inc98 = add i32 %39, 1
  store i32 %inc98, ptr %rx_errors97, align 4
  %40 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %cf, align 4
  %tobool99.not = icmp eq ptr %41, null
  br i1 %tobool99.not, label %do.end96.if.end107_crit_edge, label %if.then100

do.end96.if.end107_crit_edge:                     ; preds = %do.end96
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end107

if.then100:                                       ; preds = %do.end96
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx102 = getelementptr %struct.can_frame, ptr %41, i32 0, i32 5, i32 2
  %42 = ptrtoint ptr %arrayidx102 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx102, align 2
  %44 = or i8 %43, 4
  store i8 %44, ptr %arrayidx102, align 2
  br label %if.end107

if.end107:                                        ; preds = %if.then100, %do.end96.if.end107_crit_edge, %if.end71.if.end107_crit_edge
  %45 = ptrtoint ptr %bdiag1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %bdiag1, align 4
  %and108 = and i32 %46, 134742016
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and108)
  %tobool109.not = icmp eq i32 %and108, 0
  br i1 %tobool109.not, label %if.end107.if.end143_crit_edge, label %do.body112

if.end107.if.end143_crit_edge:                    ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end143

do.body112:                                       ; preds = %if.end107
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mcp251xfd_handle_ivmif.__UNIQUE_ID_ddebug586, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mcp251xfd_handle_ivmif, %do.end132)) #9
          to label %if.then126 [label %do.end132], !srcloc !215

if.then126:                                       ; preds = %do.body112
  call void @__sanitizer_cov_trace_pc() #11
  %47 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ndev, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @mcp251xfd_handle_ivmif.__UNIQUE_ID_ddebug586, ptr noundef %48, ptr noundef nonnull @.str.59) #9
  br label %do.end132

do.end132:                                        ; preds = %if.then126, %do.body112
  %rx_errors133 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 4
  %49 = ptrtoint ptr %rx_errors133 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %rx_errors133, align 4
  %inc134 = add i32 %50, 1
  store i32 %inc134, ptr %rx_errors133, align 4
  %51 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %cf, align 4
  %tobool135.not = icmp eq ptr %52, null
  br i1 %tobool135.not, label %do.end132.if.end143_crit_edge, label %if.then136

do.end132.if.end143_crit_edge:                    ; preds = %do.end132
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end143

if.then136:                                       ; preds = %do.end132
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx138 = getelementptr %struct.can_frame, ptr %52, i32 0, i32 5, i32 2
  %53 = ptrtoint ptr %arrayidx138 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx138, align 2
  %55 = or i8 %54, 2
  store i8 %55, ptr %arrayidx138, align 2
  br label %if.end143

if.end143:                                        ; preds = %if.then136, %do.end132.if.end143_crit_edge, %if.end107.if.end143_crit_edge
  %56 = ptrtoint ptr %bdiag1 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %bdiag1, align 4
  %and144 = and i32 %57, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and144)
  %tobool145.not = icmp eq i32 %and144, 0
  br i1 %tobool145.not, label %if.end143.if.end180_crit_edge, label %do.body148

if.end143.if.end180_crit_edge:                    ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end180

do.body148:                                       ; preds = %if.end143
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mcp251xfd_handle_ivmif.__UNIQUE_ID_ddebug587, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mcp251xfd_handle_ivmif, %do.end168)) #9
          to label %if.then162 [label %do.end168], !srcloc !215

if.then162:                                       ; preds = %do.body148
  call void @__sanitizer_cov_trace_pc() #11
  %58 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ndev, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @mcp251xfd_handle_ivmif.__UNIQUE_ID_ddebug587, ptr noundef %59, ptr noundef nonnull @.str.60) #9
  br label %do.end168

do.end168:                                        ; preds = %if.then162, %do.body148
  %tx_errors = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 5
  %60 = ptrtoint ptr %tx_errors to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %tx_errors, align 4
  %inc169 = add i32 %61, 1
  store i32 %inc169, ptr %tx_errors, align 4
  %62 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %cf, align 4
  %tobool170.not = icmp eq ptr %63, null
  br i1 %tobool170.not, label %do.end168.if.end180_crit_edge, label %if.then171

do.end168.if.end180_crit_edge:                    ; preds = %do.end168
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end180

if.then171:                                       ; preds = %do.end168
  call void @__sanitizer_cov_trace_pc() #11
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %63, align 8
  %or173 = or i32 %65, 32
  store i32 %or173, ptr %63, align 8
  %66 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %cf, align 4
  %arrayidx175 = getelementptr %struct.can_frame, ptr %67, i32 0, i32 5, i32 2
  %68 = ptrtoint ptr %arrayidx175 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx175, align 2
  %70 = or i8 %69, -128
  store i8 %70, ptr %arrayidx175, align 2
  br label %if.end180

if.end180:                                        ; preds = %if.then171, %do.end168.if.end180_crit_edge, %if.end143.if.end180_crit_edge
  %71 = ptrtoint ptr %bdiag1 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %bdiag1, align 4
  %and181 = and i32 %72, 33685504
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and181)
  %tobool182.not = icmp eq i32 %and181, 0
  br i1 %tobool182.not, label %if.end180.if.end216_crit_edge, label %do.body185

if.end180.if.end216_crit_edge:                    ; preds = %if.end180
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end216

do.body185:                                       ; preds = %if.end180
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mcp251xfd_handle_ivmif.__UNIQUE_ID_ddebug588, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mcp251xfd_handle_ivmif, %do.end205)) #9
          to label %if.then199 [label %do.end205], !srcloc !215

if.then199:                                       ; preds = %do.body185
  call void @__sanitizer_cov_trace_pc() #11
  %73 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %ndev, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @mcp251xfd_handle_ivmif.__UNIQUE_ID_ddebug588, ptr noundef %74, ptr noundef nonnull @.str.61) #9
  br label %do.end205

do.end205:                                        ; preds = %if.then199, %do.body185
  %tx_errors206 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 5
  %75 = ptrtoint ptr %tx_errors206 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %tx_errors206, align 4
  %inc207 = add i32 %76, 1
  store i32 %inc207, ptr %tx_errors206, align 4
  %77 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %cf, align 4
  %tobool208.not = icmp eq ptr %78, null
  br i1 %tobool208.not, label %do.end205.if.end216_crit_edge, label %if.then209

do.end205.if.end216_crit_edge:                    ; preds = %do.end205
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end216

if.then209:                                       ; preds = %do.end205
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx211 = getelementptr %struct.can_frame, ptr %78, i32 0, i32 5, i32 2
  %79 = ptrtoint ptr %arrayidx211 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %arrayidx211, align 2
  %81 = or i8 %80, -112
  store i8 %81, ptr %arrayidx211, align 2
  br label %if.end216

if.end216:                                        ; preds = %if.then209, %do.end205.if.end216_crit_edge, %if.end180.if.end216_crit_edge
  %82 = ptrtoint ptr %bdiag1 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %bdiag1, align 4
  %and217 = and i32 %83, 16842752
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and217)
  %tobool218.not = icmp eq i32 %and217, 0
  br i1 %tobool218.not, label %if.end216.if.end252_crit_edge, label %do.body221

if.end216.if.end252_crit_edge:                    ; preds = %if.end216
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end252

do.body221:                                       ; preds = %if.end216
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mcp251xfd_handle_ivmif.__UNIQUE_ID_ddebug589, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mcp251xfd_handle_ivmif, %do.end241)) #9
          to label %if.then235 [label %do.end241], !srcloc !215

if.then235:                                       ; preds = %do.body221
  call void @__sanitizer_cov_trace_pc() #11
  %84 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %ndev, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @mcp251xfd_handle_ivmif.__UNIQUE_ID_ddebug589, ptr noundef %85, ptr noundef nonnull @.str.62) #9
  br label %do.end241

do.end241:                                        ; preds = %if.then235, %do.body221
  %tx_errors242 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 5
  %86 = ptrtoint ptr %tx_errors242 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %tx_errors242, align 4
  %inc243 = add i32 %87, 1
  store i32 %inc243, ptr %tx_errors242, align 4
  %88 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %cf, align 4
  %tobool244.not = icmp eq ptr %89, null
  br i1 %tobool244.not, label %do.end241.cleanup_crit_edge, label %if.then245

do.end241.cleanup_crit_edge:                      ; preds = %do.end241
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then245:                                       ; preds = %do.end241
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx247 = getelementptr %struct.can_frame, ptr %89, i32 0, i32 5, i32 2
  %90 = ptrtoint ptr %arrayidx247 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %arrayidx247, align 2
  %92 = or i8 %91, -120
  store i8 %92, ptr %arrayidx247, align 2
  br label %if.end252

if.end252:                                        ; preds = %if.then245, %if.end216.if.end252_crit_edge
  %93 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %93)
  %.pr = load ptr, ptr %cf, align 4
  %tobool253.not = icmp eq ptr %.pr, null
  br i1 %tobool253.not, label %if.end252.cleanup_crit_edge, label %if.end255

if.end252.cleanup_crit_edge:                      ; preds = %if.end252
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end255:                                        ; preds = %if.end252
  %94 = ptrtoint ptr %timestamp to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %timestamp, align 4
  call void @mcp251xfd_skb_set_timestamp(ptr noundef %priv, ptr noundef %call12, i32 noundef %95) #9
  %offload = getelementptr inbounds %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 1
  %96 = ptrtoint ptr %timestamp to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %timestamp, align 4
  %call256 = call i32 @can_rx_offload_queue_sorted(ptr noundef %offload, ptr noundef %call12, i32 noundef %97) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call256)
  %tobool257.not = icmp eq i32 %call256, 0
  br i1 %tobool257.not, label %if.end255.cleanup_crit_edge, label %if.then258

if.end255.cleanup_crit_edge:                      ; preds = %if.end255
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then258:                                       ; preds = %if.end255
  call void @__sanitizer_cov_trace_pc() #11
  %rx_fifo_errors = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 14
  %98 = ptrtoint ptr %rx_fifo_errors to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %rx_fifo_errors, align 4
  %inc259 = add i32 %99, 1
  store i32 %inc259, ptr %rx_fifo_errors, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then258, %if.end255.cleanup_crit_edge, %if.end252.cleanup_crit_edge, %do.end241.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ], [ %call7, %if.end5.cleanup_crit_edge ], [ 0, %if.end252.cleanup_crit_edge ], [ 0, %if.then258 ], [ 0, %if.end255.cleanup_crit_edge ], [ 0, %do.end241.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cf) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %timestamp) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bdiag1) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mcp251xfd_handle_serrif(ptr nocapture noundef readonly %priv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ndev = getelementptr inbounds %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 2
  %0 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ndev, align 8
  %regs_status = getelementptr inbounds %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 19
  %2 = ptrtoint ptr %regs_status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %regs_status, align 16
  %4 = and i32 %3, 32776
  call void @__sanitizer_cov_trace_const_cmp4(i32 32776, i32 %4)
  %5 = icmp ne i32 %4, 32776
  %and9 = and i32 %3, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  %or.cond11 = and i1 %5, %tobool10.not
  br i1 %or.cond11, label %lor.lhs.false11, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

lor.lhs.false11:                                  ; preds = %entry
  %cnt = getelementptr inbounds %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 18, i32 1
  %6 = ptrtoint ptr %cnt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool12.not = icmp eq i32 %7, 0
  br i1 %tobool12.not, label %if.end38.thread, label %lor.lhs.false11.if.then_crit_edge

lor.lhs.false11.if.then_crit_edge:                ; preds = %lor.lhs.false11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false11.if.then_crit_edge, %entry.if.then_crit_edge
  br i1 %tobool10.not, label %lor.lhs.false17, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

lor.lhs.false17:                                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %cnt18 = getelementptr inbounds %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 18, i32 1
  %8 = ptrtoint ptr %cnt18 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cnt18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool19.not = icmp eq i32 %9, 0
  %spec.select = select i1 %tobool19.not, ptr @.str.64, ptr @.str.63
  br label %if.end

if.end:                                           ; preds = %lor.lhs.false17, %if.then.if.end_crit_edge
  %msg.0 = phi ptr [ @.str.63, %if.then.if.end_crit_edge ], [ %spec.select, %lor.lhs.false17 ]
  %quirks = getelementptr inbounds %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 27, i32 1
  %10 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %quirks, align 4
  %and21 = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.else34, label %do.body24

do.body24:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mcp251xfd_handle_serrif.__UNIQUE_ID_ddebug594, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mcp251xfd_handle_serrif, %if.end38)) #9
          to label %if.then29 [label %if.end38], !srcloc !215

if.then29:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ndev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @mcp251xfd_handle_serrif.__UNIQUE_ID_ddebug594, ptr noundef %13, ptr noundef nonnull @.str.54, ptr noundef nonnull %msg.0) #9
  br label %if.end38

if.else34:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %1, ptr noundef nonnull @.str.54, ptr noundef nonnull %msg.0) #12
  br label %if.end38

if.end38:                                         ; preds = %if.else34, %if.then29, %do.body24
  %tx_aborted_errors = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 16
  %14 = ptrtoint ptr %tx_aborted_errors to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tx_aborted_errors, align 4
  %inc = add i32 %15, 1
  store i32 %inc, ptr %tx_aborted_errors, align 4
  %tx_errors = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 5
  %16 = ptrtoint ptr %tx_errors to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tx_errors, align 4
  %inc37 = add i32 %17, 1
  store i32 %inc37, ptr %tx_errors, align 4
  %18 = ptrtoint ptr %regs_status to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %regs_status, align 16
  %20 = and i32 %19, 2050
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %if.end38.if.end56_crit_edge, label %if.end38.if.then48_crit_edge

if.end38.if.then48_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then48

if.end38.if.end56_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end56

if.end38.thread:                                  ; preds = %lor.lhs.false11
  %22 = ptrtoint ptr %regs_status to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %regs_status, align 16
  %24 = and i32 %23, 2050
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %if.then52, label %if.end38.thread.if.then48_crit_edge

if.end38.thread.if.then48_crit_edge:              ; preds = %if.end38.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then48

if.then48:                                        ; preds = %if.end38.thread.if.then48_crit_edge, %if.end38.if.then48_crit_edge
  %rx_dropped = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 6
  %26 = ptrtoint ptr %rx_dropped to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rx_dropped, align 4
  %inc49 = add i32 %27, 1
  store i32 %inc49, ptr %rx_dropped, align 4
  br label %if.end56

if.then52:                                        ; preds = %if.end38.thread
  call void @__sanitizer_cov_trace_pc() #11
  %28 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ndev, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %29, ptr noundef nonnull @.str.66, i32 noundef %23) #12
  br label %if.end56

if.end56:                                         ; preds = %if.then52, %if.then48, %if.end38.if.end56_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mcp251xfd_chip_set_normal_mode_nowait(ptr nocapture noundef readonly %priv) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %ctrlmode.i.i = getelementptr inbounds %struct.can_priv, ptr %priv, i32 0, i32 22
  %0 = ptrtoint ptr %ctrlmode.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ctrlmode.i.i, align 4
  %and.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %entry.__mcp251xfd_chip_set_normal_mode.exit_crit_edge

entry.__mcp251xfd_chip_set_normal_mode.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %__mcp251xfd_chip_set_normal_mode.exit

if.else.i.i:                                      ; preds = %entry
  %and3.i.i = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i)
  %tobool4.not.i.i = icmp eq i32 %and3.i.i, 0
  br i1 %tobool4.not.i.i, label %if.else6.i.i, label %if.else.i.i.__mcp251xfd_chip_set_normal_mode.exit_crit_edge

if.else.i.i.__mcp251xfd_chip_set_normal_mode.exit_crit_edge: ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__mcp251xfd_chip_set_normal_mode.exit

if.else6.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %and9.i.i = and i32 %1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i.i)
  %tobool10.not.i.i = icmp eq i32 %and9.i.i, 0
  %phi.cast = select i1 %tobool10.not.i.i, i32 100663296, i32 0
  br label %__mcp251xfd_chip_set_normal_mode.exit

__mcp251xfd_chip_set_normal_mode.exit:            ; preds = %if.else6.i.i, %if.else.i.i.__mcp251xfd_chip_set_normal_mode.exit_crit_edge, %entry.__mcp251xfd_chip_set_normal_mode.exit_crit_edge
  %mode.0.i.i = phi i32 [ 33554432, %entry.__mcp251xfd_chip_set_normal_mode.exit_crit_edge ], [ 50331648, %if.else.i.i.__mcp251xfd_chip_set_normal_mode.exit_crit_edge ], [ %phi.cast, %if.else6.i.i ]
  %map_reg.i = getelementptr inbounds %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 3
  %2 = ptrtoint ptr %map_reg.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %map_reg.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 0, i32 noundef 117440512, i32 noundef %mode.0.i.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  ret i32 %call.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @can_rx_offload_queue_sorted(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_can_err_skb(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mcp251xfd_skb_set_timestamp(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mcp251xfd_handle_eccif_recover(ptr noundef %priv, i8 noundef zeroext %nr) unnamed_addr #2 align 64 {
entry:
  %fifo_sta.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ecc1 = getelementptr inbounds %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 18
  %0 = ptrtoint ptr %ecc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ecc1, align 4
  %and = lshr i32 %1, 16
  %2 = trunc i32 %and to i16
  %conv = and i16 %2, 4095
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fifo_sta.i) #9
  %3 = ptrtoint ptr %fifo_sta.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %fifo_sta.i, align 4, !annotation !212
  %map_reg.i = getelementptr inbounds %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 3
  %4 = ptrtoint ptr %map_reg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %map_reg.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %5, i32 noundef 96, ptr noundef nonnull %fifo_sta.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end, label %mcp251xfd_tx_tail_get_from_chip.exit

mcp251xfd_tx_tail_get_from_chip.exit:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fifo_sta.i) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %fifo_sta.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fifo_sta.i, align 4
  %and.i = lshr i32 %7, 8
  %8 = trunc i32 %and.i to i8
  %conv.i = and i8 %8, 31
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fifo_sta.i) #9
  %tail.i = getelementptr inbounds %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 15, i32 0, i32 1
  %9 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tail.i, align 4
  %obj_num.i = getelementptr inbounds %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 15, i32 0, i32 3
  %11 = ptrtoint ptr %obj_num.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %obj_num.i, align 2
  %conv.i86 = zext i8 %12 to i32
  %sub.i = add nuw nsw i32 %conv.i86, 255
  %and.i87 = and i32 %sub.i, %10
  %conv1.i = trunc i32 %and.i87 to i8
  %conv15 = zext i8 %nr to i32
  %sub = sub i8 %nr, %conv.i
  %sub18 = add i8 %12, -1
  %and19 = and i8 %sub18, %sub
  %conv22 = and i32 %and.i87, 255
  call void @__sanitizer_cov_trace_cmp1(i8 %conv.i, i8 %conv1.i)
  %cmp.not = icmp eq i8 %conv.i, %conv1.i
  %conv24 = zext i8 %and19 to i32
  br i1 %cmp.not, label %lor.lhs.false, label %if.end.if.then33_crit_edge

if.end.if.then33_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then33

lor.lhs.false:                                    ; preds = %if.end
  %13 = zext i8 %and19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.89)
  switch i8 %and19, label %lor.lhs.false.if.then33_crit_edge [
    i8 0, label %lor.lhs.false.if.end39_crit_edge
    i8 1, label %land.lhs.true
  ]

lor.lhs.false.if.end39_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39

lor.lhs.false.if.then33_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then33

land.lhs.true:                                    ; preds = %lor.lhs.false
  %devtype_data.i = getelementptr inbounds %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 27
  %14 = ptrtoint ptr %devtype_data.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %devtype_data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9496, i32 %15)
  %cmp.i = icmp eq i32 %15, 9496
  br i1 %cmp.i, label %land.lhs.true.if.end39_crit_edge, label %land.lhs.true.if.then33_crit_edge

land.lhs.true.if.then33_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then33

land.lhs.true.if.end39_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39

if.then33:                                        ; preds = %land.lhs.true.if.then33_crit_edge, %lor.lhs.false.if.then33_crit_edge, %if.end.if.then33_crit_edge
  %conv38.pre-phi = phi i32 [ %conv24, %lor.lhs.false.if.then33_crit_edge ], [ 1, %land.lhs.true.if.then33_crit_edge ], [ %conv24, %if.end.if.then33_crit_edge ]
  %ndev = getelementptr inbounds %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 2
  %16 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ndev, align 8
  %conv34 = zext i16 %conv to i32
  %18 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tail.i, align 4
  %conv37 = zext i8 %conv.i to i32
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %17, ptr noundef nonnull @.str.73, i32 noundef %conv34, i32 noundef %conv15, i32 noundef %19, i32 noundef %conv22, i32 noundef %conv37, i32 noundef %conv38.pre-phi) #12
  br label %cleanup

if.end39:                                         ; preds = %land.lhs.true.if.end39_crit_edge, %lor.lhs.false.if.end39_crit_edge
  %ndev40 = getelementptr inbounds %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 2
  %20 = ptrtoint ptr %ndev40 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ndev40, align 8
  %22 = ptrtoint ptr %ecc1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ecc1, align 4
  %and42 = and i32 %23, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  %cond = select i1 %tobool43.not, ptr @.str.76, ptr @.str.75
  %conv44 = zext i16 %conv to i32
  %24 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tail.i, align 4
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %21, ptr noundef nonnull @.str.74, ptr noundef nonnull %cond, i32 noundef %conv44, i32 noundef %conv15, i32 noundef %25, i32 noundef %conv22, i32 noundef %conv24) #12
  %spi = getelementptr inbounds %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 11
  %26 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %spi, align 4
  %xfer = getelementptr %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 15, i32 0, i32 6, i32 %conv15, i32 1
  %call50 = call fastcc i32 @spi_sync_transfer(ptr noundef %27, ptr noundef %xfer, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.end53, label %if.end39.cleanup_crit_edge

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end53:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  %call54 = call fastcc i32 @mcp251xfd_chip_set_normal_mode(ptr noundef %priv)
  br label %cleanup

cleanup:                                          ; preds = %if.end53, %if.end39.cleanup_crit_edge, %if.then33, %mcp251xfd_tx_tail_get_from_chip.exit
  %retval.0 = phi i32 [ -22, %if.then33 ], [ %call54, %if.end53 ], [ %call.i, %mcp251xfd_tx_tail_get_from_chip.exit ], [ %call50, %if.end39.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @spi_sync_transfer(ptr noundef %spi, ptr noundef %xfers, i32 noundef %num_xfers) unnamed_addr #6 align 64 {
entry:
  %msg = alloca %struct.spi_message, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg) #9
  %0 = getelementptr inbounds i8, ptr %msg, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 40)
  %2 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %msg, ptr %msg, align 4
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %msg, ptr %prev.i.i.i.i, align 4
  %resources.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg, i32 0, i32 10
  %4 = ptrtoint ptr %resources.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %resources.i.i.i, ptr %resources.i.i.i, align 4
  %prev.i2.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg, i32 0, i32 10, i32 1
  %5 = ptrtoint ptr %prev.i2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %resources.i.i.i, ptr %prev.i2.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_xfers)
  %cmp4.not.i = icmp eq i32 %num_xfers, 0
  br i1 %cmp4.not.i, label %entry.spi_message_init_with_transfers.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.spi_message_init_with_transfers.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %spi_message_init_with_transfers.exit

for.body.i:                                       ; preds = %spi_message_add_tail.exit.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.05.i = phi i32 [ %inc.i, %spi_message_add_tail.exit.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %transfer_list.i.i = getelementptr %struct.spi_transfer, ptr %xfers, i32 %i.05.i, i32 18
  %6 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i.i.i, align 4
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i, ptr noundef %7, ptr noundef nonnull %msg) #9
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %for.body.i.spi_message_add_tail.exit.i_crit_edge

for.body.i.spi_message_add_tail.exit.i_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %spi_message_add_tail.exit.i

if.end.i.i.i.i:                                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %transfer_list.i.i, ptr %prev.i.i.i.i, align 4
  %9 = ptrtoint ptr %transfer_list.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %msg, ptr %transfer_list.i.i, align 4
  %prev3.i.i.i.i = getelementptr %struct.spi_transfer, ptr %xfers, i32 %i.05.i, i32 18, i32 1
  %10 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev3.i.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %transfer_list.i.i, ptr %7, align 4
  br label %spi_message_add_tail.exit.i

spi_message_add_tail.exit.i:                      ; preds = %if.end.i.i.i.i, %for.body.i.spi_message_add_tail.exit.i_crit_edge
  %inc.i = add nuw i32 %i.05.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %num_xfers
  br i1 %exitcond.not.i, label %spi_message_add_tail.exit.i.spi_message_init_with_transfers.exit_crit_edge, label %spi_message_add_tail.exit.i.for.body.i_crit_edge

spi_message_add_tail.exit.i.for.body.i_crit_edge: ; preds = %spi_message_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

spi_message_add_tail.exit.i.spi_message_init_with_transfers.exit_crit_edge: ; preds = %spi_message_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %spi_message_init_with_transfers.exit

spi_message_init_with_transfers.exit:             ; preds = %spi_message_add_tail.exit.i.spi_message_init_with_transfers.exit_crit_edge, %entry.spi_message_init_with_transfers.exit_crit_edge
  %call = call i32 @spi_sync(ptr noundef %spi, ptr noundef nonnull %msg) #9
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg) #9
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @can_change_state(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @can_bus_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mcp251xfd_clks_and_vdd_enable(ptr nocapture noundef readonly %priv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %clk = getelementptr inbounds %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 24
  %0 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk, align 64
  %call.i = tail call i32 @clk_prepare(ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_unprepare(ptr noundef %1) #9
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %reg_vdd.i = getelementptr inbounds %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 25
  %2 = ptrtoint ptr %reg_vdd.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg_vdd.i, align 4
  %tobool.not.i11 = icmp eq ptr %3, null
  br i1 %tobool.not.i11, label %if.end.if.end5_crit_edge, label %mcp251xfd_vdd_enable.exit

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

mcp251xfd_vdd_enable.exit:                        ; preds = %if.end
  %call.i12 = tail call i32 @regulator_enable(ptr noundef nonnull %3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12)
  %tobool2.not = icmp eq i32 %call.i12, 0
  br i1 %tobool2.not, label %mcp251xfd_vdd_enable.exit.if.end5_crit_edge, label %if.then3

mcp251xfd_vdd_enable.exit.if.end5_crit_edge:      ; preds = %mcp251xfd_vdd_enable.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then3:                                         ; preds = %mcp251xfd_vdd_enable.exit
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 64
  tail call void @clk_disable(ptr noundef %5) #9
  tail call void @clk_unprepare(ptr noundef %5) #9
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %mcp251xfd_vdd_enable.exit.if.end5_crit_edge, %if.end.if.end5_crit_edge
  %retval.0.i1419 = phi i32 [ %call.i12, %if.then3 ], [ 0, %mcp251xfd_vdd_enable.exit.if.end5_crit_edge ], [ 0, %if.end.if.end5_crit_edge ]
  tail call void @usleep_range_state(i32 noundef 3000, i32 noundef 6000, i32 noundef 2) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then3.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i1419, %if.end5 ], [ %call1.i, %if.then3.i ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mcp251xfd_register_check_rx_int(ptr nocapture noundef %priv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_int = getelementptr inbounds %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 23
  %0 = ptrtoint ptr %rx_int to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx_int, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %mcp251xfd_chip_rx_int_enable.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

mcp251xfd_chip_rx_int_enable.exit:                ; preds = %entry
  %map_reg.i = getelementptr inbounds %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 3
  %2 = ptrtoint ptr %map_reg.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %map_reg.i, align 4
  %call.i = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 3588, i32 noundef 16777219) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not = icmp eq i32 %call.i, 0
  br i1 %tobool1.not, label %if.end3, label %mcp251xfd_chip_rx_int_enable.exit.cleanup_crit_edge

mcp251xfd_chip_rx_int_enable.exit.cleanup_crit_edge: ; preds = %mcp251xfd_chip_rx_int_enable.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %mcp251xfd_chip_rx_int_enable.exit
  %4 = ptrtoint ptr %rx_int to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rx_int, align 4
  %call5 = tail call i32 @gpiod_get_value_cansleep(ptr noundef %5) #9
  %6 = ptrtoint ptr %rx_int to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rx_int, align 4
  %tobool.not.i27 = icmp eq ptr %7, null
  br i1 %tobool.not.i27, label %if.end3.if.end9_crit_edge, label %mcp251xfd_chip_rx_int_disable.exit

if.end3.if.end9_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

mcp251xfd_chip_rx_int_disable.exit:               ; preds = %if.end3
  %8 = ptrtoint ptr %map_reg.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %map_reg.i, align 4
  %call.i29 = tail call i32 @regmap_write(ptr noundef %9, i32 noundef 3588, i32 noundef 50331651) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i29)
  %tobool7.not = icmp eq i32 %call.i29, 0
  br i1 %tobool7.not, label %mcp251xfd_chip_rx_int_disable.exit.if.end9_crit_edge, label %mcp251xfd_chip_rx_int_disable.exit.cleanup_crit_edge

mcp251xfd_chip_rx_int_disable.exit.cleanup_crit_edge: ; preds = %mcp251xfd_chip_rx_int_disable.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

mcp251xfd_chip_rx_int_disable.exit.if.end9_crit_edge: ; preds = %mcp251xfd_chip_rx_int_disable.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.end9:                                          ; preds = %mcp251xfd_chip_rx_int_disable.exit.if.end9_crit_edge, %if.end3.if.end9_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool10.not = icmp eq i32 %call5, 0
  br i1 %tobool10.not, label %if.end9.cleanup_crit_edge, label %if.end12

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end12:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  %ndev = getelementptr inbounds %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 2
  %10 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ndev, align 8
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %11, ptr noundef nonnull @.str.80) #12
  %spi = getelementptr inbounds %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 11
  %12 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %spi, align 4
  %14 = ptrtoint ptr %rx_int to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rx_int, align 4
  tail call void @devm_gpiod_put(ptr noundef %13, ptr noundef %15) #9
  %16 = ptrtoint ptr %rx_int to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %rx_int, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.end9.cleanup_crit_edge, %mcp251xfd_chip_rx_int_disable.exit.cleanup_crit_edge, %mcp251xfd_chip_rx_int_enable.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end12 ], [ 0, %entry.cleanup_crit_edge ], [ %call.i, %mcp251xfd_chip_rx_int_enable.exit.cleanup_crit_edge ], [ %call.i29, %mcp251xfd_chip_rx_int_disable.exit.cleanup_crit_edge ], [ 0, %if.end9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_candev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mcp251xfd_register_done(ptr nocapture noundef readonly %priv) unnamed_addr #2 align 64 {
entry:
  %msg.i.i = alloca %struct.spi_message, align 4
  %xfer.i = alloca [2 x %struct.spi_transfer], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %xfer.i) #9
  %0 = call ptr @memset(ptr %xfer.i, i32 0, i32 192)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 384) #13
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %mcp251xfd_register_get_dev_id.exit, label %if.end.i

if.end.i:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i28.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 384) #13
  %tobool2.not.i = icmp eq ptr %call7.i.i28.i, null
  br i1 %tobool2.not.i, label %if.end.i.if.end_crit_edge, label %if.end4.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end4.i:                                        ; preds = %if.end.i
  %3 = ptrtoint ptr %xfer.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i.i28.i, ptr %xfer.i, align 4
  %len.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i, i32 0, i32 2
  %4 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2, ptr %len.i, align 4
  %data.i = getelementptr inbounds %struct.mcp251xfd_map_buf_nocrc, ptr %call7.i.i.i, i32 0, i32 1
  %rx_buf.i = getelementptr inbounds [2 x %struct.spi_transfer], ptr %xfer.i, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %data.i, ptr %rx_buf.i, align 4
  %len8.i = getelementptr inbounds [2 x %struct.spi_transfer], ptr %xfer.i, i32 0, i32 1, i32 2
  %6 = ptrtoint ptr %len8.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 4, ptr %len8.i, align 4
  %7 = ptrtoint ptr %call7.i.i28.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 15892, ptr %call7.i.i28.i, align 8
  %spi.i = getelementptr inbounds %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 11
  %8 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %spi.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i) #9
  %10 = getelementptr inbounds i8, ptr %msg.i.i, i32 8
  %11 = call ptr @memset(ptr %10, i32 0, i32 40)
  %12 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %msg.i.i, ptr %msg.i.i, align 4
  %prev.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %msg.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10
  %14 = ptrtoint ptr %resources.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %resources.i.i.i.i.i, ptr %resources.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10, i32 1
  %15 = ptrtoint ptr %prev.i2.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %resources.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i, i32 0, i32 18
  %call.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i, ptr noundef nonnull %msg.i.i, ptr noundef nonnull %msg.i.i) #9
  br i1 %call.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, label %if.end4.i.spi_message_add_tail.exit.i.i.i_crit_edge

if.end4.i.spi_message_add_tail.exit.i.i.i_crit_edge: ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %spi_message_add_tail.exit.i.i.i

if.end.i.i.i.i.i.i:                               ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %transfer_list.i.i.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %17 = ptrtoint ptr %transfer_list.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %msg.i.i, ptr %transfer_list.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i, i32 0, i32 18, i32 1
  %18 = ptrtoint ptr %prev3.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %msg.i.i, ptr %prev3.i.i.i.i.i.i, align 4
  %19 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %transfer_list.i.i.i.i, ptr %msg.i.i, align 4
  br label %spi_message_add_tail.exit.i.i.i

spi_message_add_tail.exit.i.i.i:                  ; preds = %if.end.i.i.i.i.i.i, %if.end4.i.spi_message_add_tail.exit.i.i.i_crit_edge
  %transfer_list.i.i.i.1.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i, i32 1, i32 18
  %20 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev.i.i.i.i.i.i, align 4
  %call.i.i.i.i.i.1.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.1.i, ptr noundef %21, ptr noundef nonnull %msg.i.i) #9
  br i1 %call.i.i.i.i.i.1.i, label %if.end.i.i.i.i.i.1.i, label %spi_message_add_tail.exit.i.i.i.spi_message_add_tail.exit.i.i.1.i_crit_edge

spi_message_add_tail.exit.i.i.i.spi_message_add_tail.exit.i.i.1.i_crit_edge: ; preds = %spi_message_add_tail.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %spi_message_add_tail.exit.i.i.1.i

if.end.i.i.i.i.i.1.i:                             ; preds = %spi_message_add_tail.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %transfer_list.i.i.i.1.i, ptr %prev.i.i.i.i.i.i, align 4
  %23 = ptrtoint ptr %transfer_list.i.i.i.1.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %msg.i.i, ptr %transfer_list.i.i.i.1.i, align 4
  %prev3.i.i.i.i.i.1.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i, i32 1, i32 18, i32 1
  %24 = ptrtoint ptr %prev3.i.i.i.i.i.1.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %prev3.i.i.i.i.i.1.i, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %transfer_list.i.i.i.1.i, ptr %21, align 4
  br label %spi_message_add_tail.exit.i.i.1.i

spi_message_add_tail.exit.i.i.1.i:                ; preds = %if.end.i.i.i.i.i.1.i, %spi_message_add_tail.exit.i.i.i.spi_message_add_tail.exit.i.i.1.i_crit_edge
  %call.i.i = call i32 @spi_sync(ptr noundef %9, ptr noundef nonnull %msg.i.i) #9
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool11.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool11.not.i, label %if.end13.i, label %spi_message_add_tail.exit.i.i.1.i.out_kfree_buf_tx.i_crit_edge

spi_message_add_tail.exit.i.i.1.i.out_kfree_buf_tx.i_crit_edge: ; preds = %spi_message_add_tail.exit.i.i.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_kfree_buf_tx.i

if.end13.i:                                       ; preds = %spi_message_add_tail.exit.i.i.1.i
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %data.i, align 4
  %effective_speed_hz18.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i, i32 0, i32 13
  %28 = ptrtoint ptr %effective_speed_hz18.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %effective_speed_hz18.i, align 4
  br label %out_kfree_buf_tx.i

out_kfree_buf_tx.i:                               ; preds = %if.end13.i, %spi_message_add_tail.exit.i.i.1.i.out_kfree_buf_tx.i_crit_edge
  %dev_id.0 = phi i32 [ %27, %if.end13.i ], [ -1, %spi_message_add_tail.exit.i.i.1.i.out_kfree_buf_tx.i_crit_edge ]
  %effective_speed_hz.0 = phi i32 [ %29, %if.end13.i ], [ -1, %spi_message_add_tail.exit.i.i.1.i.out_kfree_buf_tx.i_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i28.i) #9
  br label %if.end

mcp251xfd_register_get_dev_id.exit:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %xfer.i) #9
  br label %cleanup

if.end:                                           ; preds = %out_kfree_buf_tx.i, %if.end.i.if.end_crit_edge
  %dev_id.1 = phi i32 [ -1, %if.end.i.if.end_crit_edge ], [ %dev_id.0, %out_kfree_buf_tx.i ]
  %effective_speed_hz.1 = phi i32 [ -1, %if.end.i.if.end_crit_edge ], [ %effective_speed_hz.0, %out_kfree_buf_tx.i ]
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #9
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %xfer.i) #9
  %ndev = getelementptr inbounds %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 2
  %30 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ndev, align 8
  %devtype_data.i = getelementptr inbounds %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 27
  %32 = ptrtoint ptr %devtype_data.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %devtype_data.i, align 4
  %34 = zext i32 %33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.90)
  switch i32 %33, label %sw.epilog.i.i [
    i32 9495, label %if.end.mcp251xfd_get_model_str.exit_crit_edge
    i32 9496, label %sw.bb1.i.i
    i32 65535, label %sw.bb2.i.i
  ]

if.end.mcp251xfd_get_model_str.exit_crit_edge:    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %mcp251xfd_get_model_str.exit

sw.bb1.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %mcp251xfd_get_model_str.exit

sw.bb2.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %mcp251xfd_get_model_str.exit

sw.epilog.i.i:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %mcp251xfd_get_model_str.exit

mcp251xfd_get_model_str.exit:                     ; preds = %sw.epilog.i.i, %sw.bb2.i.i, %sw.bb1.i.i, %if.end.mcp251xfd_get_model_str.exit_crit_edge
  %retval.0.i.i = phi ptr [ @.str.25, %sw.epilog.i.i ], [ @.str.24, %sw.bb2.i.i ], [ @.str.23, %sw.bb1.i.i ], [ @.str.22, %if.end.mcp251xfd_get_model_str.exit_crit_edge ]
  %and = lshr i32 %dev_id.1, 4
  %shr = and i32 %and, 15
  %and30 = and i32 %dev_id.1, 15
  %rx_int = getelementptr inbounds %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 23
  %35 = ptrtoint ptr %rx_int to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %rx_int, align 4
  %tobool32.not = icmp eq ptr %36, null
  %cond = select i1 %tobool32.not, i32 45, i32 43
  %quirks = getelementptr inbounds %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 27, i32 1
  %37 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %quirks, align 4
  %and33 = and i32 %38, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  %cond35 = select i1 %tobool34.not, i32 45, i32 43
  %and38 = and i32 %38, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  %cond40 = select i1 %tobool39.not, i32 45, i32 43
  %and43 = and i32 %38, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  %cond45 = select i1 %tobool44.not, i32 45, i32 43
  %and48 = and i32 %38, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  %cond50 = select i1 %tobool49.not, i32 45, i32 43
  %and53 = and i32 %38, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54.not = icmp eq i32 %and53, 0
  %cond55 = select i1 %tobool54.not, i32 45, i32 43
  %and58 = and i32 %38, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58)
  %tobool59.not = icmp eq i32 %and58, 0
  %cond60 = select i1 %tobool59.not, i32 45, i32 43
  %clock = getelementptr inbounds %struct.can_priv, ptr %priv, i32 0, i32 13
  %39 = ptrtoint ptr %clock to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %clock, align 8
  %.frozen = freeze i32 %40
  %div = udiv i32 %.frozen, 1000000
  %41 = mul i32 %div, 1000000
  %rem.decomposed = sub i32 %.frozen, %41
  %div65 = udiv i32 %rem.decomposed, 10000
  %spi_max_speed_hz_orig = getelementptr inbounds %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 12
  %42 = ptrtoint ptr %spi_max_speed_hz_orig to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %spi_max_speed_hz_orig, align 16
  %.frozen105 = freeze i32 %43
  %div66 = udiv i32 %.frozen105, 1000000
  %44 = mul i32 %div66, 1000000
  %rem68.decomposed = sub i32 %.frozen105, %44
  %div70 = udiv i32 %rem68.decomposed, 10000
  %spi = getelementptr inbounds %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 11
  %45 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %spi, align 4
  %max_speed_hz = getelementptr inbounds %struct.spi_device, ptr %46, i32 0, i32 3
  %47 = ptrtoint ptr %max_speed_hz to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %max_speed_hz, align 8
  %.frozen106 = freeze i32 %48
  %div71 = udiv i32 %.frozen106, 1000000
  %49 = mul i32 %div71, 1000000
  %rem74.decomposed = sub i32 %.frozen106, %49
  %div76 = udiv i32 %rem74.decomposed, 10000
  %effective_speed_hz.1.frozen = freeze i32 %effective_speed_hz.1
  %div77 = udiv i32 %effective_speed_hz.1.frozen, 1000000
  %50 = mul i32 %div77, 1000000
  %rem78.decomposed = sub i32 %effective_speed_hz.1.frozen, %50
  %div80 = udiv i32 %rem78.decomposed, 10000
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %31, ptr noundef nonnull @.str.81, ptr noundef nonnull %retval.0.i.i, i32 noundef %shr, i32 noundef %and30, i32 noundef %cond, i32 noundef %cond35, i32 noundef %cond40, i32 noundef %cond45, i32 noundef %cond50, i32 noundef %cond55, i32 noundef %cond60, i32 noundef %div, i32 noundef %div65, i32 noundef %div66, i32 noundef %div70, i32 noundef %div71, i32 noundef %div76, i32 noundef %div77, i32 noundef %div80) #12
  br label %cleanup

cleanup:                                          ; preds = %mcp251xfd_get_model_str.exit, %mcp251xfd_register_get_dev_id.exit
  %retval.0 = phi i32 [ 0, %mcp251xfd_get_model_str.exit ], [ -12, %mcp251xfd_register_get_dev_id.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_candev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_gpiod_put(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mcp251xfd_runtime_suspend(ptr nocapture noundef readonly %device) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %device, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %reg_vdd.i.i = getelementptr inbounds %struct.mcp251xfd_priv, ptr %1, i32 0, i32 25
  %2 = ptrtoint ptr %reg_vdd.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg_vdd.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %entry.if.end.i_crit_edge, label %mcp251xfd_vdd_disable.exit.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

mcp251xfd_vdd_disable.exit.i:                     ; preds = %entry
  %call.i.i = tail call i32 @regulator_disable(ptr noundef nonnull %3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %mcp251xfd_vdd_disable.exit.i.if.end.i_crit_edge, label %mcp251xfd_vdd_disable.exit.i.mcp251xfd_clks_and_vdd_disable.exit_crit_edge

mcp251xfd_vdd_disable.exit.i.mcp251xfd_clks_and_vdd_disable.exit_crit_edge: ; preds = %mcp251xfd_vdd_disable.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mcp251xfd_clks_and_vdd_disable.exit

mcp251xfd_vdd_disable.exit.i.if.end.i_crit_edge:  ; preds = %mcp251xfd_vdd_disable.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.end.i:                                         ; preds = %mcp251xfd_vdd_disable.exit.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %clk.i = getelementptr inbounds %struct.mcp251xfd_priv, ptr %1, i32 0, i32 24
  %4 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk.i, align 64
  tail call void @clk_disable(ptr noundef %5) #9
  tail call void @clk_unprepare(ptr noundef %5) #9
  br label %mcp251xfd_clks_and_vdd_disable.exit

mcp251xfd_clks_and_vdd_disable.exit:              ; preds = %if.end.i, %mcp251xfd_vdd_disable.exit.i.mcp251xfd_clks_and_vdd_disable.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end.i ], [ %call.i.i, %mcp251xfd_vdd_disable.exit.i.mcp251xfd_clks_and_vdd_disable.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mcp251xfd_runtime_resume(ptr nocapture noundef readonly %device) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %device, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @mcp251xfd_clks_and_vdd_enable(ptr noundef %1)
  ret i32 %call1
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

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
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 96)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 96)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !45, !46, !47, !48, !49, !50, !52, !53, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !118, !119, !121, !123, !124, !125, !127, !128, !130, !132, !134, !136, !137, !138, !140, !141, !143, !144, !146, !147, !149, !150, !152, !153, !155, !157, !159, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198}
!llvm.module.flags = !{!200, !201, !202, !203, !204, !205, !206, !207}
!llvm.ident = !{!208}

!0 = !{ptr @__initcall__kmod_mcp251xfd__632_2011_mcp251xfd_driver_init6, !1, !"__initcall__kmod_mcp251xfd__632_2011_mcp251xfd_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/can/spi/mcp251xfd/mcp251xfd-core.c", i32 2011, i32 1}
!2 = !{ptr @__exitcall_mcp251xfd_driver_exit, !1, !"__exitcall_mcp251xfd_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author633, !4, !"__UNIQUE_ID_author633", i1 false, i1 false}
!4 = !{!"../drivers/net/can/spi/mcp251xfd/mcp251xfd-core.c", i32 2013, i32 1}
!5 = !{ptr @__UNIQUE_ID_description634, !6, !"__UNIQUE_ID_description634", i1 false, i1 false}
!6 = !{!"../drivers/net/can/spi/mcp251xfd/mcp251xfd-core.c", i32 2014, i32 1}
!7 = !{ptr @__UNIQUE_ID_file635, !8, !"__UNIQUE_ID_file635", i1 false, i1 false}
!8 = !{!"../drivers/net/can/spi/mcp251xfd/mcp251xfd-core.c", i32 2015, i32 1}
!9 = !{ptr @__UNIQUE_ID_license636, !8, !"__UNIQUE_ID_license636", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/can/spi/mcp251xfd/mcp251xfd-core.c", i32 2003, i32 11}
!12 = !{ptr @mcp251xfd_driver, !13, !"mcp251xfd_driver", i1 false, i1 false}
!13 = !{!"../drivers/net/can/spi/mcp251xfd/mcp251xfd-core.c", i32 2001, i32 26}
!14 = !{ptr @mcp251xfd_id_table, !15, !"mcp251xfd_id_table", i1 false, i1 false}
!15 = !{!"../drivers/net/can/spi/mcp251xfd/mcp251xfd-core.c", i32 1793, i32 35}
!16 = !{ptr @mcp251xfd_devtype_data_mcp2517fd, !17, !"mcp251xfd_devtype_data_mcp2517fd", i1 false, i1 false}
!17 = !{!"../drivers/net/can/spi/mcp251xfd/mcp251xfd-core.c", i32 27, i32 44}
!18 = !{ptr @mcp251xfd_devtype_data_mcp2518fd, !19, !"mcp251xfd_devtype_data_mcp2518fd", i1 false, i1 false}
!19 = !{!"../drivers/net/can/spi/mcp251xfd/mcp251xfd-core.c", i32 34, i32 44}
!20 = !{ptr @mcp251xfd_devtype_data_mcp251xfd, !21, !"mcp251xfd_devtype_data_mcp251xfd", i1 false, i1 false}
!21 = !{!"../drivers/net/can/spi/mcp251xfd/mcp251xfd-core.c", i32 41, i32 44}
!22 = !{ptr @.str.1, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/can/spi/mcp251xfd/mcp251xfd-core.c", i32 1822, i32 10}
!24 = !{ptr @.str.2, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/can/spi/mcp251xfd/mcp251xfd-core.c", i32 1824, i32 46}
!26 = !{ptr @.str.3, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/can/spi/mcp251xfd/mcp251xfd-core.c", i32 1828, i32 10}
!28 = !{ptr @.str.4, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/can/spi/mcp251xfd/mcp251xfd-core.c", i32 1830, i32 51}
!30 = !{ptr @.str.5, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/can/spi/mcp251xfd/mcp251xfd-core.c", i32 1835, i32 10}
!32 = !{ptr @.str.6, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/can/spi/mcp251xfd/mcp251xfd-core.c", i32 1837, i32 55}
!34 = !{ptr @.str.7, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/can/spi/mcp251xfd/mcp251xfd-core.c", i32 1842, i32 10}
!36 = !{ptr @.str.8, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/can/spi/mcp251xfd/mcp251xfd-core.c", i32 1847, i32 10}
!38 = !{ptr @.str.9, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/can/spi/mcp251xfd/mcp251xfd-core.c", i32 1851, i32 45}
!40 = !{ptr @.str.10, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/can/spi/mcp251xfd/mcp251xfd-core.c", i32 1855, i32 11}
!42 = !{ptr @.str.11, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/can/spi/mcp251xfd/mcp251xfd-core.c", i32 1861, i32 3}
!44 = !{ptr @.str.12, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.13, !43, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.14, !43, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.15, !43, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @mcp251xfd_probe._entry, !43, !"_entry", i1 false, i1 false}
!49 = !{ptr @mcp251xfd_probe._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.17, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/can/spi/mcp251xfd/mcp251xfd-core.c", i32 1868, i32 3}
!52 = !{ptr @mcp251xfd_probe._entry.16, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @mcp251xfd_probe._entry_ptr.18, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @mcp251xfd_netdev_ops, !55, !"mcp251xfd_netdev_ops", i1 false, i1 false}
!55 = !{!"../drivers/net/can/spi/mcp251xfd/mcp251xfd-core.c", i32 1534, i32 36}
!56 = !{ptr @.str.19, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/can/spi/mcp251xfd/mcp251xfd-core.c", i32 355, i32 9}
!58 = !{ptr @.str.20, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/can/spi/mcp251xfd/mcp251xfd-core.c", i32 279, i32 7}
!60 = !{ptr @.str.21, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/can/spi/mcp251xfd/mcp251xfd-core.c", i32 284, i32 7}
!62 = !{ptr @.str.22, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/can/spi/mcp251xfd/mcp251xfd-core.c", i32 75, i32 10}
!64 = !{ptr @.str.23, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/can/spi/mcp251xfd/mcp251xfd-core.c", i32 77, i32 10}
!66 = !{ptr @.str.24, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/can/spi/mcp251xfd/mcp251xfd-core.c", i32 79, i32 10}
!68 = !{ptr @.str.25, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/can/spi/mcp251xfd/mcp251xfd-core.c", i32 82, i32 9}
!70 = !{ptr @.str.26, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/can/spi/mcp251xfd/mcp251xfd-core.c", i32 221, i32 7}
!72 = !{ptr @.str.27, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/can/spi/mcp251xfd/mcp251xfd-core.c", i32 95, i32 10}
!74 = !{ptr @.str.28, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/can/spi/mcp251xfd/mcp251xfd-core.c", i32 97, i32 10}
!76 = !{ptr @.str.29, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/can/spi/mcp251xfd/mcp251xfd-core.c", i32 99, i32 10}
!78 = !{ptr @.str.30, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/can/spi/mcp251xfd/mcp251xfd-core.c", i32 101, i32 10}
!80 = !{ptr @.str.31, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/can/spi/mcp251xfd/mcp251xfd-core.c", i32 103, i32 10}
!82 = !{ptr @.str.32, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/can/spi/mcp251xfd/mcp251xfd-core.c", i32 105, i32 10}
!84 = !{ptr @.str.33, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/can/spi/mcp251xfd/mcp251xfd-core.c", i32 107, i32 10}
!86 = !{ptr @.str.34, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/can/spi/mcp251xfd/mcp251xfd-core.c", i32 109, i32 10}
!88 = !{ptr @.str.35, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/can/spi/mcp251xfd/mcp251xfd-core.c", i32 324, i32 8}
!90 = !{ptr @.str.36, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/can/spi/mcp251xfd/mcp251xfd-core.c", i32 340, i32 8}
!92 = !{ptr @.str.37, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/can/spi/mcp251xfd/mcp251xfd-core.c", i32 1315, i32 10}
!94 = !{ptr @.str.38, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @.str.39, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/net/can/spi/mcp251xfd/mcp251xfd-core.c", i32 1363, i32 10}
!97 = !{ptr @.str.40, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/net/can/spi/mcp251xfd/mcp251xfd-core.c", i32 1375, i32 10}
!99 = !{ptr @.str.41, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/net/can/spi/mcp251xfd/mcp251xfd-core.c", i32 1381, i32 10}
!101 = distinct !{null, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/net/can/spi/mcp251xfd/mcp251xfd-core.c", i32 1387, i32 10}
!103 = !{ptr @.str.43, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/net/can/spi/mcp251xfd/mcp251xfd-core.c", i32 1393, i32 10}
!105 = distinct !{null, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/net/can/spi/mcp251xfd/mcp251xfd-core.c", i32 1399, i32 10}
!107 = !{ptr @.str.45, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/net/can/spi/mcp251xfd/mcp251xfd-core.c", i32 1405, i32 10}
!109 = !{ptr @.str.46, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/net/can/spi/mcp251xfd/mcp251xfd-core.c", i32 1411, i32 10}
!111 = !{ptr @.str.47, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/net/can/spi/mcp251xfd/mcp251xfd-core.c", i32 1422, i32 10}
!113 = !{ptr @.str.48, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/net/can/spi/mcp251xfd/mcp251xfd-core.c", i32 1445, i32 25}
!115 = !{ptr @.str.49, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/net/can/spi/mcp251xfd/mcp251xfd-core.c", i32 1016, i32 3}
!117 = !{ptr @.str.50, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @mcp251xfd_handle_modif.__UNIQUE_ID_ddebug592, !116, !"__UNIQUE_ID_ddebug592", i1 false, i1 false}
!119 = !{ptr @mcp251xfd_handle_modif.__UNIQUE_ID_ddebug593, !120, !"__UNIQUE_ID_ddebug593", i1 false, i1 false}
!120 = !{!"../drivers/net/can/spi/mcp251xfd/mcp251xfd-core.c", i32 1035, i32 3}
!121 = !{ptr @.str.51, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/net/can/spi/mcp251xfd/mcp251xfd-core.c", i32 794, i32 5}
!123 = !{ptr @.str.52, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @mcp251xfd_handle_rxovif.__UNIQUE_ID_ddebug582, !122, !"__UNIQUE_ID_ddebug582", i1 false, i1 false}
!125 = !{ptr @.str.53, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/net/can/spi/mcp251xfd/mcp251xfd-core.c", i32 799, i32 5}
!127 = !{ptr @mcp251xfd_handle_rxovif.__UNIQUE_ID_ddebug583, !126, !"__UNIQUE_ID_ddebug583", i1 false, i1 false}
!128 = !{ptr @.str.54, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/net/can/spi/mcp251xfd/mcp251xfd-core.c", i32 828, i32 26}
!130 = !{ptr @__func__.mcp251xfd_handle_txatif, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/net/can/spi/mcp251xfd/mcp251xfd-core.c", i32 828, i32 34}
!132 = !{ptr @.str.55, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/net/can/spi/mcp251xfd/mcp251xfd-core.c", i32 865, i32 7}
!134 = !{ptr @.str.56, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/net/can/spi/mcp251xfd/mcp251xfd-core.c", i32 870, i32 3}
!136 = !{ptr @.str.57, !135, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @mcp251xfd_handle_ivmif.__UNIQUE_ID_ddebug584, !135, !"__UNIQUE_ID_ddebug584", i1 false, i1 false}
!138 = !{ptr @.str.58, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/net/can/spi/mcp251xfd/mcp251xfd-core.c", i32 878, i32 3}
!140 = !{ptr @mcp251xfd_handle_ivmif.__UNIQUE_ID_ddebug585, !139, !"__UNIQUE_ID_ddebug585", i1 false, i1 false}
!141 = !{ptr @.str.59, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/net/can/spi/mcp251xfd/mcp251xfd-core.c", i32 886, i32 3}
!143 = !{ptr @mcp251xfd_handle_ivmif.__UNIQUE_ID_ddebug586, !142, !"__UNIQUE_ID_ddebug586", i1 false, i1 false}
!144 = !{ptr @.str.60, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/net/can/spi/mcp251xfd/mcp251xfd-core.c", i32 895, i32 3}
!146 = !{ptr @mcp251xfd_handle_ivmif.__UNIQUE_ID_ddebug587, !145, !"__UNIQUE_ID_ddebug587", i1 false, i1 false}
!147 = !{ptr @.str.61, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/net/can/spi/mcp251xfd/mcp251xfd-core.c", i32 905, i32 3}
!149 = !{ptr @mcp251xfd_handle_ivmif.__UNIQUE_ID_ddebug588, !148, !"__UNIQUE_ID_ddebug588", i1 false, i1 false}
!150 = !{ptr @.str.62, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/net/can/spi/mcp251xfd/mcp251xfd-core.c", i32 913, i32 3}
!152 = !{ptr @mcp251xfd_handle_ivmif.__UNIQUE_ID_ddebug589, !151, !"__UNIQUE_ID_ddebug589", i1 false, i1 false}
!153 = !{ptr @.str.63, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/net/can/spi/mcp251xfd/mcp251xfd-core.c", i32 1095, i32 10}
!155 = !{ptr @.str.64, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/net/can/spi/mcp251xfd/mcp251xfd-core.c", i32 1097, i32 10}
!157 = !{ptr @.str.65, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/net/can/spi/mcp251xfd/mcp251xfd-core.c", i32 1100, i32 4}
!159 = !{ptr @mcp251xfd_handle_serrif.__UNIQUE_ID_ddebug594, !158, !"__UNIQUE_ID_ddebug594", i1 false, i1 false}
!160 = !{ptr @.str.66, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/net/can/spi/mcp251xfd/mcp251xfd-core.c", i32 1131, i32 7}
!162 = !{ptr @.str.67, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/net/can/spi/mcp251xfd/mcp251xfd-core.c", i32 1229, i32 9}
!164 = !{ptr @.str.68, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/net/can/spi/mcp251xfd/mcp251xfd-core.c", i32 1231, i32 9}
!166 = !{ptr @.str.69, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/net/can/spi/mcp251xfd/mcp251xfd-core.c", i32 1238, i32 29}
!168 = !{ptr @.str.70, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/net/can/spi/mcp251xfd/mcp251xfd-core.c", i32 1249, i32 8}
!170 = !{ptr @.str.71, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/net/can/spi/mcp251xfd/mcp251xfd-core.c", i32 1250, i32 48}
!172 = !{ptr @.str.72, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/net/can/spi/mcp251xfd/mcp251xfd-core.c", i32 1250, i32 54}
!174 = !{ptr @.str.73, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/net/can/spi/mcp251xfd/mcp251xfd-core.c", i32 1164, i32 7}
!176 = !{ptr @.str.74, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/net/can/spi/mcp251xfd/mcp251xfd-core.c", i32 1171, i32 7}
!178 = !{ptr @.str.75, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/net/can/spi/mcp251xfd/mcp251xfd-core.c", i32 1173, i32 7}
!180 = !{ptr @.str.76, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/net/can/spi/mcp251xfd/mcp251xfd-core.c", i32 1173, i32 18}
!182 = !{ptr @.str.77, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/net/can/spi/mcp251xfd/mcp251xfd-core.c", i32 1278, i32 29}
!184 = !{ptr @.str.78, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/net/can/spi/mcp251xfd/mcp251xfd-core.c", i32 1281, i32 10}
!186 = !{ptr @mcp251xfd_bittiming_const, !187, !"mcp251xfd_bittiming_const", i1 false, i1 false}
!187 = !{!"../drivers/net/can/spi/mcp251xfd/mcp251xfd-core.c", i32 47, i32 41}
!188 = !{ptr @mcp251xfd_data_bittiming_const, !189, !"mcp251xfd_data_bittiming_const", i1 false, i1 false}
!189 = !{!"../drivers/net/can/spi/mcp251xfd/mcp251xfd-core.c", i32 59, i32 41}
!190 = !{ptr @.str.79, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/net/can/spi/mcp251xfd/mcp251xfd-core.c", i32 1579, i32 8}
!192 = !{ptr @.str.80, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/net/can/spi/mcp251xfd/mcp251xfd-core.c", i32 1616, i32 7}
!194 = !{ptr @.str.81, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/net/can/spi/mcp251xfd/mcp251xfd-core.c", i32 1678, i32 7}
!196 = !{ptr @mcp251xfd_of_match, !197, !"mcp251xfd_of_match", i1 false, i1 false}
!197 = !{!"../drivers/net/can/spi/mcp251xfd/mcp251xfd-core.c", i32 1777, i32 34}
!198 = !{ptr @mcp251xfd_pm_ops, !199, !"mcp251xfd_pm_ops", i1 false, i1 false}
!199 = !{!"../drivers/net/can/spi/mcp251xfd/mcp251xfd-core.c", i32 1996, i32 32}
!200 = !{i32 1, !"wchar_size", i32 2}
!201 = !{i32 1, !"min_enum_size", i32 4}
!202 = !{i32 8, !"branch-target-enforcement", i32 0}
!203 = !{i32 8, !"sign-return-address", i32 0}
!204 = !{i32 8, !"sign-return-address-all", i32 0}
!205 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!206 = !{i32 7, !"uwtable", i32 1}
!207 = !{i32 7, !"frame-pointer", i32 2}
!208 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!209 = !{i64 2148347808}
!210 = !{i64 832631, i64 832656, i64 832678, i64 832694, i64 832706, i64 832726, i64 832750, i64 832766, i64 832778}
!211 = !{i64 2148347996}
!212 = !{!"auto-init"}
!213 = !{i64 2148348389, i64 2148348415, i64 2148348444, i64 2148348478, i64 2148348509, i64 2148348532}
!214 = !{i8 0, i8 2}
!215 = !{i64 2148802874, i64 2148802879, i64 2148802892, i64 2148802936, i64 2148802970, i64 2148802991}
!216 = !{!"branch_weights", i32 2000, i32 1}
