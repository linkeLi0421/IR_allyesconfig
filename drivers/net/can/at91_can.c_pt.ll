; ModuleID = '/llk/IR_all_yes/drivers/net/can/at91_can.c_pt.bc'
source_filename = "../drivers/net/can/at91_can.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.platform_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.can_bittiming_const = type { [16 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.at91_devtype_data = type { i32, i32, i32, i32, i32 }
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
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
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
%struct.can_frame = type { i32, %union.anon.145, i8, i8, i8, [8 x i8] }
%union.anon.145 = type { i8 }

@__initcall__kmod_at91_can__472_1396_at91_can_driver_init6 = internal global ptr @at91_can_driver_init, section ".initcall6.init", align 4
@at91_can_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @at91_can_probe, ptr @at91_can_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @at91_can_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @at91_can_id_table, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_at91_can_driver_exit = internal global ptr @at91_can_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author473 = internal constant [55 x i8] c"at91_can.author=Marc Kleine-Budde <mkl@pengutronix.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_file474 = internal constant [39 x i8] c"at91_can.file=drivers/net/can/at91_can\00", section ".modinfo", align 1
@__UNIQUE_ID_license475 = internal constant [24 x i8] c"at91_can.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description476 = internal constant [51 x i8] c"at91_can.description=at91_can CAN netdevice driver\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"at91_can\00", [23 x i8] zeroinitializer }, align 32
@at91_can_dt_ids = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91sam9x5-can\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @at91_at91sam9x5_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91sam9263-can\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @at91_at91sam9263_data }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@at91_can_id_table = internal constant { [3 x %struct.platform_device_id], [56 x i8] } { [3 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"at91sam9x5_can\00\00\00\00\00\00", i32 ptrtoint (ptr @at91_at91sam9x5_data to i32) }, %struct.platform_device_id { [20 x i8] c"at91_can\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @at91_at91sam9263_data to i32) }, %struct.platform_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@at91_can_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1264, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"no driver data\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"at91_can_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/net/can/at91_can.c\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@at91_can_probe._entry_ptr = internal global ptr @at91_can_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"can_clk\00", [24 x i8] zeroinitializer }, align 32
@at91_can_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 1271, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"no clock defined\0A\00", [46 x i8] zeroinitializer }, align 32
@at91_can_probe._entry_ptr.9 = internal global ptr @at91_can_probe._entry.7, section ".printk_index", align 4
@iomem_resource = external dso_local global %struct.resource, align 4
@at91_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @at91_open, ptr @at91_close, ptr @at91_start_xmit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @can_change_mtu, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@at91_bittiming_const = internal constant { %struct.can_bittiming_const, [48 x i8] } { %struct.can_bittiming_const { [16 x i8] c"at91_can\00\00\00\00\00\00\00\00", i32 4, i32 16, i32 2, i32 8, i32 4, i32 2, i32 128, i32 1 }, [48 x i8] zeroinitializer }, align 32
@at91_sysfs_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @at91_sysfs_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@at91_can_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 1330, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"registering netdev failed\0A\00", [37 x i8] zeroinitializer }, align 32
@at91_can_probe._entry_ptr.12 = internal global ptr @at91_can_probe._entry.10, section ".printk_index", align 4
@at91_can_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 1337, ptr @.str.15, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"device registered (reg_base=%p, irq=%d)\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@at91_can_probe._entry_ptr.16 = internal global ptr @at91_can_probe._entry.13, section ".printk_index", align 4
@at91_can_get_driver_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.3, i32 1243, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"no matching node found in dtb\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"at91_can_get_driver_data\00", [39 x i8] zeroinitializer }, align 32
@at91_can_get_driver_data._entry_ptr = internal global ptr @at91_can_get_driver_data._entry, section ".printk_index", align 4
@.str.19 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"BUG! hardware in undefined state\0A\00", [62 x i8] zeroinitializer }, align 32
@at91_irq_err_state.__UNIQUE_ID_ddebug467 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.3, ptr @.str.21, i8 0, i8 -35, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"at91_irq_err_state\00", [45 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Error Warning IRQ\0A\00", [45 x i8] zeroinitializer }, align 32
@at91_irq_err_state.__UNIQUE_ID_ddebug468 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.3, ptr @.str.22, i8 0, i8 -31, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Error Passive IRQ\0A\00", [45 x i8] zeroinitializer }, align 32
@at91_irq_err_state.__UNIQUE_ID_ddebug469 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.3, ptr @.str.23, i8 0, i8 -27, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"restarted\0A\00", [21 x i8] zeroinitializer }, align 32
@at91_irq_err_state.__UNIQUE_ID_ddebug470 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.3, ptr @.str.24, i8 0, i8 -22, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Error Active\0A\00", [18 x i8] zeroinitializer }, align 32
@at91_irq_err_state.__UNIQUE_ID_ddebug471 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.3, ptr @.str.25, i8 0, i8 -17, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"bus-off\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"writing AT91_BR: 0x%08x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"BUG! TX buffer full when queue awake!\0A\00", [57 x i8] zeroinitializer }, align 32
@can_skb_headroom_valid.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.28 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/can/skb.h\00", [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"order of incoming frames cannot be guaranteed\0A\00", [49 x i8] zeroinitializer }, align 32
@at91_rx_overflow_err.__UNIQUE_ID_ddebug459 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.30, ptr @.str.3, ptr @.str.31, i8 0, i8 -121, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"at91_rx_overflow_err\00", [43 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"RX buffer overflow\0A\00", [44 x i8] zeroinitializer }, align 32
@at91_poll_err_frame.__UNIQUE_ID_ddebug462 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.32, ptr @.str.3, ptr @.str.33, i8 0, i8 -75, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"at91_poll_err_frame\00", [44 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"CERR irq\0A\00", [22 x i8] zeroinitializer }, align 32
@at91_poll_err_frame.__UNIQUE_ID_ddebug463 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.32, ptr @.str.3, ptr @.str.34, i8 0, i8 -73, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"SERR irq\0A\00", [22 x i8] zeroinitializer }, align 32
@at91_poll_err_frame.__UNIQUE_ID_ddebug464 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.32, ptr @.str.3, ptr @.str.35, i8 0, i8 -71, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"AERR irq\0A\00", [22 x i8] zeroinitializer }, align 32
@at91_poll_err_frame.__UNIQUE_ID_ddebug465 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.32, ptr @.str.3, ptr @.str.36, i8 0, i8 -69, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"FERR irq\0A\00", [22 x i8] zeroinitializer }, align 32
@at91_poll_err_frame.__UNIQUE_ID_ddebug466 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.32, ptr @.str.3, ptr @.str.37, i8 0, i8 -67, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"BERR irq\0A\00", [22 x i8] zeroinitializer }, align 32
@at91_sysfs_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @dev_attr_mb0_id, ptr null], [24 x i8] zeroinitializer }, align 32
@dev_attr_mb0_id = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.38, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @mb0_id_show, ptr @mb0_id_store }, [36 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mb0_id\00", [25 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"0x%08x\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"0x%03x\0A\00", [24 x i8] zeroinitializer }, align 32
@at91_at91sam9x5_data = internal constant { %struct.at91_devtype_data, [44 x i8] } { %struct.at91_devtype_data { i32 0, i32 4, i32 5, i32 1, i32 1 }, [44 x i8] zeroinitializer }, align 32
@at91_at91sam9263_data = internal constant { %struct.at91_devtype_data, [44 x i8] } { %struct.at91_devtype_data { i32 1, i32 8, i32 11, i32 2, i32 0 }, [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 12, i64 13]
@__sancov_gen_cov_switch_values.41 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 3]
@__sancov_gen_cov_switch_values.42 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.43 = private unnamed_addr constant [16 x i8] c"at91_can_driver\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 1386, i32 31 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 1390, i32 11 }
@___asan_gen_.49 = private unnamed_addr constant [16 x i8] c"at91_can_dt_ids\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 1222, i32 34 }
@___asan_gen_.52 = private unnamed_addr constant [18 x i8] c"at91_can_id_table\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 1373, i32 40 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 1264, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 1269, i32 28 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 1271, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant [16 x i8] c"at91_netdev_ops\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 1156, i32 36 }
@___asan_gen_.85 = private unnamed_addr constant [21 x i8] c"at91_bittiming_const\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 159, i32 41 }
@___asan_gen_.88 = private unnamed_addr constant [22 x i8] c"at91_sysfs_attr_group\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 1217, i32 37 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 1330, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 1336, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 1243, i32 4 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 1019, i32 20 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 887, i32 4 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 903, i32 4 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 919, i32 4 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 938, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 957, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 363, i32 19 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 464, i32 19 }
@___asan_gen_.143 = private unnamed_addr constant [27 x i8] c"../include/linux/can/skb.h\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 104, i32 6 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 685, i32 8 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 542, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 724, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 732, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 741, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 748, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 757, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant [17 x i8] c"at91_sysfs_attrs\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 1212, i32 26 }
@___asan_gen_.175 = private unnamed_addr constant [16 x i8] c"dev_attr_mb0_id\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 1210, i32 8 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 1169, i32 26 }
@___asan_gen_.184 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 1171, i32 26 }
@___asan_gen_.187 = private unnamed_addr constant [21 x i8] c"at91_at91sam9x5_data\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 151, i32 39 }
@___asan_gen_.190 = private unnamed_addr constant [22 x i8] c"at91_at91sam9263_data\00", align 1
@___asan_gen_.191 = private constant [30 x i8] c"../drivers/net/can/at91_can.c\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 143, i32 39 }
@llvm.compiler.used = appending global [62 x ptr] [ptr @__UNIQUE_ID_author473, ptr @__UNIQUE_ID_description476, ptr @__UNIQUE_ID_file474, ptr @__UNIQUE_ID_license475, ptr @__exitcall_at91_can_driver_exit, ptr @__initcall__kmod_at91_can__472_1396_at91_can_driver_init6, ptr @at91_can_driver_exit, ptr @at91_can_get_driver_data._entry, ptr @at91_can_get_driver_data._entry_ptr, ptr @at91_can_probe._entry, ptr @at91_can_probe._entry.10, ptr @at91_can_probe._entry.13, ptr @at91_can_probe._entry.7, ptr @at91_can_probe._entry_ptr, ptr @at91_can_probe._entry_ptr.12, ptr @at91_can_probe._entry_ptr.16, ptr @at91_can_probe._entry_ptr.9, ptr @at91_can_driver, ptr @.str, ptr @at91_can_dt_ids, ptr @at91_can_id_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @at91_netdev_ops, ptr @at91_bittiming_const, ptr @at91_sysfs_attr_group, ptr @.str.11, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @at91_sysfs_attrs, ptr @dev_attr_mb0_id, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @at91_at91sam9x5_data, ptr @at91_at91sam9263_data], section "llvm.metadata"
@0 = internal global [50 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_can_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_can_dt_ids to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_can_id_table to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_can_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_can_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_bittiming_const to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_sysfs_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_can_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_can_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_can_get_driver_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_sysfs_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_mb0_id to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_at91sam9x5_data to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_at91sam9263_data to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @at91_can_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @at91_can_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @at91_can_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @at91_can_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at91_can_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end6.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  %call.i = tail call ptr @of_match_node(ptr noundef nonnull @at91_can_dt_ids, ptr noundef nonnull %1) #6
  %tobool3.not.i = icmp eq ptr %call.i, null
  br i1 %tobool3.not.i, label %at91_can_get_driver_data.exit.thread, label %if.end.i

at91_can_get_driver_data.exit.thread:             ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.17) #9
  br label %do.end

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %data.i = getelementptr inbounds %struct.of_device_id, ptr %call.i, i32 0, i32 3
  %2 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.i, align 4
  br label %at91_can_get_driver_data.exit

if.end6.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %id_entry.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 8
  %4 = ptrtoint ptr %id_entry.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %id_entry.i, align 4
  %driver_data.i = getelementptr inbounds %struct.platform_device_id, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %driver_data.i, align 4
  %8 = inttoptr i32 %7 to ptr
  br label %at91_can_get_driver_data.exit

at91_can_get_driver_data.exit:                    ; preds = %if.end6.i, %if.end.i
  %retval.1.i = phi ptr [ %8, %if.end6.i ], [ %3, %if.end.i ]
  %tobool.not = icmp eq ptr %retval.1.i, null
  br i1 %tobool.not, label %at91_can_get_driver_data.exit.do.end_crit_edge, label %if.end

at91_can_get_driver_data.exit.do.end_crit_edge:   ; preds = %at91_can_get_driver_data.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %at91_can_get_driver_data.exit.do.end_crit_edge, %at91_can_get_driver_data.exit.thread
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end:                                           ; preds = %at91_can_get_driver_data.exit
  %call3 = tail call ptr @clk_get(ptr noundef %dev.i, ptr noundef nonnull @.str.6) #6
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end8, label %if.end10

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.8) #9
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %call11 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #6
  %call12 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #6
  %tobool13.not = icmp eq ptr %call11, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call12)
  %cmp = icmp slt i32 %call12, 1
  %or.cond = select i1 %tobool13.not, i1 true, i1 %cmp
  br i1 %or.cond, label %if.end10.exit_put_crit_edge, label %if.end15

if.end10.exit_put_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit_put

if.end15:                                         ; preds = %if.end10
  %9 = ptrtoint ptr %call11 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %call11, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call11, i32 0, i32 1
  %11 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %10
  %add.i = add i32 %sub.i, %12
  %13 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pdev, align 8
  %call17 = tail call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef %10, i32 noundef %add.i, ptr noundef %14, i32 noundef 0) #6
  %tobool18.not = icmp eq ptr %call17, null
  br i1 %tobool18.not, label %if.end15.exit_put_crit_edge, label %if.end20

if.end15.exit_put_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit_put

if.end20:                                         ; preds = %if.end15
  %15 = ptrtoint ptr %call11 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %call11, align 4
  %17 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %end.i, align 4
  %sub.i124 = sub i32 1, %16
  %add.i125 = add i32 %sub.i124, %18
  %call23 = tail call ptr @ioremap(i32 noundef %16, i32 noundef %add.i125) #6
  %tobool24.not = icmp eq ptr %call23, null
  br i1 %tobool24.not, label %if.end20.exit_release_crit_edge, label %if.end26

if.end20.exit_release_crit_edge:                  ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit_release

if.end26:                                         ; preds = %if.end20
  %tx_shift = getelementptr inbounds %struct.at91_devtype_data, ptr %retval.1.i, i32 0, i32 3
  %19 = ptrtoint ptr %tx_shift to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tx_shift, align 4
  %shl = shl nuw i32 1, %20
  %call27 = tail call ptr @alloc_candev_mqs(i32 noundef 592, i32 noundef %shl, i32 noundef 1, i32 noundef 1) #6
  %tobool28.not = icmp eq ptr %call27, null
  br i1 %tobool28.not, label %if.end26.exit_iounmap_crit_edge, label %if.end30

if.end26.exit_iounmap_crit_edge:                  ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit_iounmap

if.end30:                                         ; preds = %if.end26
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %call27, i32 0, i32 16
  %21 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @at91_netdev_ops, ptr %netdev_ops, align 8
  %irq31 = getelementptr inbounds %struct.net_device, ptr %call27, i32 0, i32 64
  %22 = ptrtoint ptr %irq31 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %call12, ptr %irq31, align 4
  %flags = getelementptr inbounds %struct.net_device, ptr %call27, i32 0, i32 14
  %23 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %flags, align 8
  %or = or i32 %24, 262144
  store i32 %or, ptr %flags, align 8
  %call33 = tail call i32 @clk_get_rate(ptr noundef %call3) #6
  %clock = getelementptr i8, ptr %call27, i32 2440
  %25 = ptrtoint ptr %clock to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %call33, ptr %clock, align 8
  %bittiming_const = getelementptr i8, ptr %call27, i32 2332
  %26 = ptrtoint ptr %bittiming_const to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @at91_bittiming_const, ptr %bittiming_const, align 4
  %do_set_mode = getelementptr i8, ptr %call27, i32 2596
  %27 = ptrtoint ptr %do_set_mode to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @at91_set_mode, ptr %do_set_mode, align 4
  %do_get_berr_counter = getelementptr i8, ptr %call27, i32 2608
  %28 = ptrtoint ptr %do_get_berr_counter to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @at91_get_berr_counter, ptr %do_get_berr_counter, align 8
  %ctrlmode_supported = getelementptr i8, ptr %call27, i32 2480
  %29 = ptrtoint ptr %ctrlmode_supported to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 6, ptr %ctrlmode_supported, align 8
  %reg_base = getelementptr i8, ptr %call27, i32 2840
  %30 = ptrtoint ptr %reg_base to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call23, ptr %reg_base, align 8
  %devtype_data38 = getelementptr i8, ptr %call27, i32 2860
  %31 = call ptr @memcpy(ptr %devtype_data38, ptr %retval.1.i, i32 20)
  %clk39 = getelementptr i8, ptr %call27, i32 2880
  %32 = ptrtoint ptr %clk39 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call3, ptr %clk39, align 8
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %33 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %platform_data.i, align 8
  %pdata = getelementptr i8, ptr %call27, i32 2884
  %35 = ptrtoint ptr %pdata to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %34, ptr %pdata, align 4
  %mb0_id = getelementptr i8, ptr %call27, i32 2888
  %36 = ptrtoint ptr %mb0_id to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 2047, ptr %mb0_id, align 8
  %napi = getelementptr i8, ptr %call27, i32 2616
  %rx_last.i.i = getelementptr i8, ptr %call27, i32 2868
  %37 = ptrtoint ptr %rx_last.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %rx_last.i.i, align 4
  %39 = ptrtoint ptr %devtype_data38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %devtype_data38, align 4
  %sub.i126 = add i32 %38, 1
  %add.i127 = sub i32 %sub.i126, %40
  tail call void @netif_napi_add(ptr noundef nonnull %call27, ptr noundef %napi, ptr noundef nonnull @at91_poll, i32 noundef %add.i127) #6
  %type.i = getelementptr i8, ptr %call27, i32 2876
  %41 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp.i128.not = icmp eq i32 %42, 0
  br i1 %cmp.i128.not, label %if.then45, label %if.end30.if.end46_crit_edge

if.end30.if.end46_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end46

if.then45:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  %sysfs_groups = getelementptr inbounds %struct.net_device, ptr %call27, i32 0, i32 134
  %43 = ptrtoint ptr %sysfs_groups to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @at91_sysfs_attr_group, ptr %sysfs_groups, align 16
  br label %if.end46

if.end46:                                         ; preds = %if.then45, %if.end30.if.end46_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %44 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call27, ptr %driver_data.i.i, align 4
  %parent = getelementptr inbounds %struct.net_device, ptr %call27, i32 0, i32 133, i32 1
  %45 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %dev.i, ptr %parent, align 8
  %call49 = tail call i32 @register_candev(ptr noundef nonnull %call27) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.end56, label %do.end54

do.end54:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.11) #9
  tail call void @free_candev(ptr noundef nonnull %call27) #6
  br label %exit_iounmap

if.end56:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  %46 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %reg_base, align 8
  %48 = ptrtoint ptr %irq31 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %irq31, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i, ptr noundef nonnull @.str.14, ptr noundef %47, i32 noundef %49) #9
  br label %cleanup

exit_iounmap:                                     ; preds = %do.end54, %if.end26.exit_iounmap_crit_edge
  %err.0 = phi i32 [ %call49, %do.end54 ], [ -12, %if.end26.exit_iounmap_crit_edge ]
  tail call void @iounmap(ptr noundef nonnull %call23) #6
  br label %exit_release

exit_release:                                     ; preds = %exit_iounmap, %if.end20.exit_release_crit_edge
  %err.1 = phi i32 [ %err.0, %exit_iounmap ], [ -12, %if.end20.exit_release_crit_edge ]
  %50 = ptrtoint ptr %call11 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %call11, align 4
  %52 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %end.i, align 4
  %sub.i130 = sub i32 1, %51
  %add.i131 = add i32 %sub.i130, %53
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %51, i32 noundef %add.i131) #6
  br label %exit_put

exit_put:                                         ; preds = %exit_release, %if.end15.exit_put_crit_edge, %if.end10.exit_put_crit_edge
  %err.2 = phi i32 [ %err.1, %exit_release ], [ -19, %if.end10.exit_put_crit_edge ], [ -16, %if.end15.exit_put_crit_edge ]
  tail call void @clk_put(ptr noundef %call3) #6
  br label %cleanup

cleanup:                                          ; preds = %exit_put, %if.end56, %do.end8, %do.end
  %retval.0 = phi i32 [ 0, %if.end56 ], [ -19, %do.end8 ], [ %err.2, %exit_put ], [ -19, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at91_can_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @unregister_netdev(ptr noundef %1) #6
  %reg_base = getelementptr i8, ptr %1, i32 2840
  %2 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg_base, align 8
  tail call void @iounmap(ptr noundef %3) #6
  %call2 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #6
  %4 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %call2, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call2, i32 0, i32 1
  %6 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %5
  %add.i = add i32 %sub.i, %7
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %5, i32 noundef %add.i) #6
  %clk = getelementptr i8, ptr %1, i32 2880
  %8 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk, align 8
  tail call void @clk_put(ptr noundef %9) #6
  tail call void @free_candev(ptr noundef %1) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_candev_mqs(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at91_set_mode(ptr noundef %dev, i32 noundef %mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %mode)
  %cond = icmp eq i32 %mode, 1
  br i1 %cond, label %sw.bb, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @at91_chip_start(ptr noundef %dev)
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %0 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %1) #6
  br label %return

return:                                           ; preds = %sw.bb, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb ], [ -95, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at91_get_berr_counter(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %bec) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_base.i = getelementptr i8, ptr %dev, i32 2840
  %0 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_base.i, align 8
  %add.ptr.i5 = getelementptr i8, ptr %1, i32 32
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5) #6, !srcloc !121
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #6
  %4 = trunc i32 %3 to i16
  %conv = and i16 %4, 255
  %rxerr = getelementptr inbounds %struct.can_berr_counter, ptr %bec, i32 0, i32 1
  %5 = ptrtoint ptr %rxerr to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %conv, ptr %rxerr, align 2
  %shr = lshr i32 %3, 16
  %conv2 = trunc i32 %shr to i16
  %6 = ptrtoint ptr %bec to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv2, ptr %bec, align 2
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_napi_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at91_poll(ptr noundef %napi, i32 noundef %quota) #2 align 64 {
entry:
  %cf.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.napi_struct, ptr %napi, i32 0, i32 7
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 8
  %reg_base.i = getelementptr i8, ptr %1, i32 2840
  %2 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg_base.i, align 8
  %add.ptr.i40 = getelementptr i8, ptr %3, i32 16
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i40) #6, !srcloc !121
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #6
  %rx_last.i.i = getelementptr i8, ptr %1, i32 2868
  %6 = ptrtoint ptr %rx_last.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rx_last.i.i, align 4
  %add.i = add i32 %7, 1
  %notmask.i = shl nsw i32 -1, %add.i
  %sub.i = xor i32 %notmask.i, -1
  %devtype_data.i.i = getelementptr i8, ptr %1, i32 2860
  %8 = ptrtoint ptr %devtype_data.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %devtype_data.i.i, align 4
  %notmask5.i = shl nsw i32 -1, %9
  %and.i = and i32 %5, %sub.i
  %and = and i32 %and.i, %notmask5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call4 = tail call fastcc i32 @at91_poll_rx(ptr noundef %1, i32 noundef %quota)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %work_done.0 = phi i32 [ %call4, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %reg_sr5 = getelementptr i8, ptr %1, i32 2844
  %10 = ptrtoint ptr %reg_sr5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %reg_sr5, align 4
  %or = or i32 %11, %5
  %and6 = and i32 %or, 520093696
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.end.if.end12_crit_edge, label %if.then8

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.then8:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cf.i) #6
  %12 = ptrtoint ptr %cf.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 -1 to ptr), ptr %cf.i, align 4, !annotation !122
  call void @__sanitizer_cov_trace_cmp4(i32 %work_done.0, i32 %quota)
  %cmp.i = icmp eq i32 %work_done.0, %quota
  br i1 %cmp.i, label %if.then8.at91_poll_err.exit_crit_edge, label %if.end.i

if.then8.at91_poll_err.exit_crit_edge:            ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  br label %at91_poll_err.exit

if.end.i:                                         ; preds = %if.then8
  %call.i = call ptr @alloc_can_err_skb(ptr noundef %1, ptr noundef nonnull %cf.i) #6
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.i.at91_poll_err.exit_crit_edge, label %if.end5.i, !prof !123

if.end.i.at91_poll_err.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %at91_poll_err.exit

if.end5.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %cf.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cf.i, align 4
  call fastcc void @at91_poll_err_frame(ptr noundef %1, ptr noundef %14, i32 noundef %or) #6
  %call6.i = call i32 @netif_receive_skb(ptr noundef nonnull %call.i) #6
  br label %at91_poll_err.exit

at91_poll_err.exit:                               ; preds = %if.end5.i, %if.end.i.at91_poll_err.exit_crit_edge, %if.then8.at91_poll_err.exit_crit_edge
  %retval.0.i = phi i32 [ 1, %if.end5.i ], [ 0, %if.then8.at91_poll_err.exit_crit_edge ], [ 0, %if.end.i.at91_poll_err.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cf.i) #6
  %add11 = add i32 %retval.0.i, %work_done.0
  br label %if.end12

if.end12:                                         ; preds = %at91_poll_err.exit, %if.end.if.end12_crit_edge
  %work_done.1 = phi i32 [ %add11, %at91_poll_err.exit ], [ %work_done.0, %if.end.if.end12_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %work_done.1, i32 %quota)
  %cmp = icmp slt i32 %work_done.1, %quota
  br i1 %cmp, label %if.then13, label %if.end12.if.end19_crit_edge

if.end12.if.end19_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

if.then13:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %rx_last.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rx_last.i.i, align 4
  %add.i42 = add i32 %16, 1
  %notmask.i43 = shl nsw i32 -1, %add.i42
  %sub.i44 = xor i32 %notmask.i43, -1
  %17 = ptrtoint ptr %devtype_data.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %devtype_data.i.i, align 4
  %notmask5.i46 = shl nsw i32 -1, %18
  %and.i47 = and i32 %notmask5.i46, %sub.i44
  %rx_next = getelementptr i8, ptr %1, i32 2856
  %19 = ptrtoint ptr %rx_next to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rx_next, align 8
  %notmask = shl nsw i32 -1, %20
  %and16 = and i32 %and.i47, %notmask
  %or17 = or i32 %and16, 520093696
  %call18 = call zeroext i1 @napi_complete_done(ptr noundef %napi, i32 noundef %work_done.1) #6
  %21 = call i32 @llvm.bswap.i32(i32 %or17) #6
  %22 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %reg_base.i, align 8
  %add.ptr.i49 = getelementptr i8, ptr %23, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i49, i32 %21) #6, !srcloc !124
  br label %if.end19

if.end19:                                         ; preds = %if.then13, %if.end12.if.end19_crit_edge
  ret i32 %work_done.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_candev(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_candev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at91_open(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %clk = getelementptr i8, ptr %dev, i32 2880
  %0 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk, align 8
  %call.i = tail call i32 @clk_prepare(ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %1) #6
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %call2 = tail call i32 @open_candev(ptr noundef %dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end5:                                          ; preds = %if.end
  %irq = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 64
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  %call.i25 = tail call i32 @request_threaded_irq(i32 noundef %3, ptr noundef nonnull @at91_irq, ptr noundef null, i32 noundef 128, ptr noundef %dev, ptr noundef %dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i25)
  %tobool7.not = icmp eq i32 %call.i25, 0
  br i1 %tobool7.not, label %if.end9, label %if.then8

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @close_candev(ptr noundef %dev) #6
  br label %out

if.end9:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @at91_chip_start(ptr noundef %dev)
  %napi = getelementptr i8, ptr %dev, i32 2616
  tail call void @napi_enable(ptr noundef %napi) #6
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %4 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %5, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #6
  br label %cleanup

out:                                              ; preds = %if.then8, %if.end.out_crit_edge
  %err.0 = phi i32 [ %call2, %if.end.out_crit_edge ], [ -11, %if.then8 ]
  %6 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk, align 8
  tail call void @clk_disable(ptr noundef %7) #6
  tail call void @clk_unprepare(ptr noundef %7) #6
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end9, %if.then3.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %out ], [ 0, %if.end9 ], [ %call1.i, %if.then3.i ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at91_close(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %0 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %1, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #6
  %napi = getelementptr i8, ptr %dev, i32 2616
  tail call void @napi_disable(ptr noundef %napi) #6
  %reg_base.i.i = getelementptr i8, ptr %dev, i32 2840
  %2 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg_base.i.i, align 8
  %add.ptr.i6.i = getelementptr i8, ptr %3, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i, i32 -225) #6, !srcloc !124
  %4 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_base.i.i, align 8
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #6, !srcloc !121
  %7 = and i32 %6, -16777217
  %8 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg_base.i.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %7) #6, !srcloc !124
  %state2.i = getelementptr i8, ptr %dev, i32 2472
  %10 = ptrtoint ptr %state2.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 4, ptr %state2.i, align 8
  %irq = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 64
  %11 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %irq, align 4
  %call1 = tail call ptr @free_irq(i32 noundef %12, ptr noundef %dev) #6
  %clk = getelementptr i8, ptr %dev, i32 2880
  %13 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %clk, align 8
  tail call void @clk_disable(ptr noundef %14) #6
  tail call void @clk_unprepare(ptr noundef %14) #6
  tail call void @close_candev(ptr noundef %dev) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at91_start_xmit(ptr noundef %skb, ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
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
  br i1 %cmp2.not.i, label %lor.rhs.i, label %if.then.i.can_dropped_invalid_skb.exit_crit_edge, !prof !125

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
  br i1 %cmp6.i, label %lor.rhs.i.can_dropped_invalid_skb.exit_crit_edge, label %lor.rhs.i.if.end34.i_crit_edge, !prof !123

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
  br i1 %cmp16.not.i, label %lor.rhs18.i, label %if.then14.i.can_dropped_invalid_skb.exit_crit_edge, !prof !125

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
  br i1 %cmp21.i, label %lor.rhs18.i.can_dropped_invalid_skb.exit_crit_edge, label %lor.rhs18.i.if.end34.i_crit_edge, !prof !123

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
  br i1 %.b70.i.i, label %land.rhs.i.i.can_dropped_invalid_skb.exit_crit_edge, label %if.then.i.i, !prof !125

land.rhs.i.i.can_dropped_invalid_skb.exit_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %can_dropped_invalid_skb.exit

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @can_skb_headroom_valid.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.28, i32 noundef 104, i32 noundef 9, ptr noundef null) #6
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
  %ifindex.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 17
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
  %flags.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
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
  %27 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %data, align 4
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
  %tx_dropped.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 7
  %34 = ptrtoint ptr %tx_dropped.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %tx_dropped.i, align 4
  %inc.i = add i32 %35, 1
  store i32 %inc.i, ptr %tx_dropped.i, align 4
  br label %cleanup

if.end:                                           ; preds = %if.then40.i.i, %if.end37.i.i.if.end_crit_edge
  %tx_next.i = getelementptr i8, ptr %dev, i32 2848
  %36 = ptrtoint ptr %tx_next.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %tx_next.i, align 8
  %tx_shift.i.i.i = getelementptr i8, ptr %dev, i32 2872
  %38 = ptrtoint ptr %tx_shift.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %tx_shift.i.i.i, align 4
  %notmask.i.i = shl nsw i32 -1, %39
  %sub.i.i = xor i32 %notmask.i.i, -1
  %and.i = and i32 %37, %sub.i.i
  %rx_last.i.i.i = getelementptr i8, ptr %dev, i32 2868
  %40 = ptrtoint ptr %rx_last.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %rx_last.i.i.i, align 4
  %add.i.i = add i32 %41, 1
  %add.i = add i32 %add.i.i, %and.i
  %mul = shl i32 %add.i, 5
  %add = add i32 %mul, 528
  %reg_base.i = getelementptr i8, ptr %dev, i32 2840
  %42 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %reg_base.i, align 8
  %add.ptr.i84 = getelementptr i8, ptr %43, i32 %add
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i84) #6, !srcloc !121
  %45 = and i32 %44, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool.not = icmp eq i32 %45, 0
  br i1 %tobool.not, label %if.then8, label %if.end9, !prof !123

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %46 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %47, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #6
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.27) #9
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %shr.i = lshr i32 %37, %39
  %48 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %1, align 8
  %and1.i = and i32 %49, 536870911
  %or.i = or i32 %and1.i, 536870912
  %and2.i = shl i32 %49, 18
  %shl.i = and i32 %and2.i, 536608768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool.not5.i = icmp slt i32 %49, 0
  %reg_mid.0.i = select i1 %tobool.not5.i, i32 %or.i, i32 %shl.i
  %and12 = lshr i32 %49, 18
  %50 = and i32 %and12, 4096
  %51 = getelementptr inbounds %struct.can_frame, ptr %1, i32 0, i32 1
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %51, align 4
  %conv = zext i8 %53 to i32
  %shl = shl nuw nsw i32 %conv, 8
  %or = or i32 %50, %shl
  %or14 = or i32 %or, 32768
  %add.i.i85 = add i32 %mul, 512
  %54 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %reg_base.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %55, i32 %add.i.i85
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 0) #6, !srcloc !124
  %add16 = add i32 %mul, 520
  %56 = tail call i32 @llvm.bswap.i32(i32 %reg_mid.0.i) #6
  %57 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %reg_base.i, align 8
  %add.ptr.i87 = getelementptr i8, ptr %58, i32 %add16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i87, i32 %56) #6, !srcloc !124
  %and.i83 = shl i32 %shr.i, 16
  %shl1.i = and i32 %and.i83, 983040
  %or.i89 = or i32 %shl1.i, 50331648
  %59 = tail call i32 @llvm.bswap.i32(i32 %or.i89) #6
  %60 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %reg_base.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %61, i32 %add.i.i85
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %59) #6, !srcloc !124
  %add18 = add i32 %mul, 532
  %data19 = getelementptr inbounds %struct.can_frame, ptr %1, i32 0, i32 5
  %62 = ptrtoint ptr %data19 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %data19, align 4
  %64 = tail call i32 @llvm.bswap.i32(i32 %63) #6
  %65 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %reg_base.i, align 8
  %add.ptr.i91 = getelementptr i8, ptr %66, i32 %add18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i91, i32 %64) #6, !srcloc !124
  %add21 = add i32 %mul, 536
  %add.ptr24 = getelementptr %struct.can_frame, ptr %1, i32 0, i32 5, i32 4
  %67 = ptrtoint ptr %add.ptr24 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %add.ptr24, align 4
  %69 = tail call i32 @llvm.bswap.i32(i32 %68) #6
  %70 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %reg_base.i, align 8
  %add.ptr.i93 = getelementptr i8, ptr %71, i32 %add21
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i93, i32 %69) #6, !srcloc !124
  %add26 = add i32 %mul, 540
  %72 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %reg_base.i, align 8
  %add.ptr.i95 = getelementptr i8, ptr %73, i32 %add26
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i95, i32 %or14) #6, !srcloc !124
  %74 = ptrtoint ptr %rx_last.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %rx_last.i.i.i, align 4
  %add.i96.neg = xor i32 %75, -1
  %sub = add i32 %add.i, %add.i96.neg
  %call28 = tail call i32 @can_put_echo_skb(ptr noundef %skb, ptr noundef %dev, i32 noundef %sub, i32 noundef 0) #6
  %76 = ptrtoint ptr %tx_next.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %tx_next.i, align 8
  %inc = add i32 %77, 1
  store i32 %inc, ptr %tx_next.i, align 8
  %78 = ptrtoint ptr %tx_shift.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %tx_shift.i.i.i, align 4
  %notmask.i.i99 = shl nsw i32 -1, %79
  %sub.i.i100 = xor i32 %notmask.i.i99, -1
  %and.i101 = and i32 %inc, %sub.i.i100
  %80 = ptrtoint ptr %rx_last.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %rx_last.i.i.i, align 4
  %add.i.i103 = add i32 %81, 1
  %add.i104 = add i32 %add.i.i103, %and.i101
  %mul30 = shl i32 %add.i104, 5
  %add31 = add i32 %mul30, 528
  %82 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %reg_base.i, align 8
  %add.ptr.i106 = getelementptr i8, ptr %83, i32 %add31
  %84 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i106) #6, !srcloc !121
  %85 = and i32 %84, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %tobool34.not = icmp eq i32 %85, 0
  br i1 %tobool34.not, label %if.end9.if.then39_crit_edge, label %lor.lhs.false

if.end9.if.then39_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then39

lor.lhs.false:                                    ; preds = %if.end9
  %86 = ptrtoint ptr %tx_next.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %tx_next.i, align 8
  %88 = ptrtoint ptr %tx_shift.i.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %tx_shift.i.i.i, align 4
  %notmask.i.i108 = shl nsw i32 -1, %89
  %sub.i.i109 = xor i32 %notmask.i.i108, -1
  %shl.i.i = shl i32 15, %89
  %or.i110 = or i32 %shl.i.i, %sub.i.i109
  %and37 = and i32 %or.i110, %87
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %cmp = icmp eq i32 %and37, 0
  br i1 %cmp, label %lor.lhs.false.if.then39_crit_edge, label %lor.lhs.false.if.end40_crit_edge

lor.lhs.false.if.end40_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end40

lor.lhs.false.if.then39_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then39

if.then39:                                        ; preds = %lor.lhs.false.if.then39_crit_edge, %if.end9.if.then39_crit_edge
  %_tx.i.i111 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %90 = ptrtoint ptr %_tx.i.i111 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %_tx.i.i111, align 128
  %state.i.i112 = getelementptr inbounds %struct.netdev_queue, ptr %91, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i112) #6
  br label %if.end40

if.end40:                                         ; preds = %if.then39, %lor.lhs.false.if.end40_crit_edge
  %shl41 = shl nuw i32 1, %add.i
  %92 = tail call i32 @llvm.bswap.i32(i32 %shl41) #6
  %93 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %reg_base.i, align 8
  %add.ptr.i114 = getelementptr i8, ptr %94, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i114, i32 %92) #6, !srcloc !124
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %if.then8, %can_dropped_invalid_skb.exit
  %retval.0 = phi i32 [ 16, %if.then8 ], [ 0, %if.end40 ], [ 0, %can_dropped_invalid_skb.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @can_change_mtu(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @open_candev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at91_irq(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  %cf.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_base.i = getelementptr i8, ptr %dev_id, i32 2840
  %0 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_base.i, align 8
  %add.ptr.i30 = getelementptr i8, ptr %1, i32 16
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i30) #6, !srcloc !121
  %3 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %reg_base.i, align 8
  %add.ptr.i32 = getelementptr i8, ptr %4, i32 12
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i32) #6, !srcloc !121
  %6 = and i32 %5, %2
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %entry.exit_crit_edge, label %if.end

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit

if.end:                                           ; preds = %entry
  %rx_last.i.i = getelementptr i8, ptr %dev_id, i32 2868
  %8 = ptrtoint ptr %rx_last.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rx_last.i.i, align 4
  %add.i = add i32 %9, 1
  %notmask.i = shl nsw i32 -1, %add.i
  %sub.i = xor i32 %notmask.i, -1
  %devtype_data.i.i = getelementptr i8, ptr %dev_id, i32 2860
  %10 = ptrtoint ptr %devtype_data.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %devtype_data.i.i, align 4
  %notmask5.i = shl nsw i32 -1, %11
  %and.i = and i32 %notmask5.i, %sub.i
  %or = or i32 %and.i, 520093696
  %and4 = and i32 %or, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.end.if.end10_crit_edge, label %if.then6

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.then6:                                         ; preds = %if.end
  %reg_sr7 = getelementptr i8, ptr %dev_id, i32 2844
  %12 = ptrtoint ptr %reg_sr7 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %7, ptr %reg_sr7, align 4
  %13 = tail call i32 @llvm.bswap.i32(i32 %or) #6
  %14 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %reg_base.i, align 8
  %add.ptr.i41 = getelementptr i8, ptr %15, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i41, i32 %13) #6, !srcloc !124
  %napi = getelementptr i8, ptr %dev_id, i32 2616
  %call.i = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi) #6
  br i1 %call.i, label %if.then.i, label %if.then6.if.end10_crit_edge

if.then6.if.end10_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.then.i:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__napi_schedule(ptr noundef %napi) #6
  br label %if.end10

if.end10:                                         ; preds = %if.then.i, %if.then6.if.end10_crit_edge, %if.end.if.end10_crit_edge
  %16 = ptrtoint ptr %rx_last.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rx_last.i.i, align 4
  %tx_shift.i.i.i.i = getelementptr i8, ptr %dev_id, i32 2872
  %18 = ptrtoint ptr %tx_shift.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tx_shift.i.i.i.i, align 4
  %shl.i.i.i = shl nuw i32 1, %19
  %sub.i.i = add i32 %17, 1
  %add.i42 = add i32 %shl.i.i.i, %sub.i.i
  %notmask.i43 = shl nsw i32 -1, %add.i42
  %sub.i44 = xor i32 %notmask.i43, -1
  %notmask5.i45 = shl nsw i32 -1, %sub.i.i
  %and.i46 = and i32 %notmask5.i45, %7
  %and12 = and i32 %and.i46, %sub.i44
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.end10.if.end15_crit_edge, label %if.then14

if.end10.if.end15_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.then14:                                        ; preds = %if.end10
  %tx_next.i = getelementptr i8, ptr %dev_id, i32 2848
  %tx_echo.i = getelementptr i8, ptr %dev_id, i32 2852
  %20 = ptrtoint ptr %tx_next.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tx_next.i, align 8
  %22 = ptrtoint ptr %tx_echo.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tx_echo.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %23)
  %cmp.not61.i = icmp eq i32 %21, %23
  br i1 %cmp.not61.i, label %if.then14.for.end.i_crit_edge, label %for.body.lr.ph.i

if.then14.for.end.i_crit_edge:                    ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.then14
  %tx_bytes.i = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 36, i32 3
  %tx_packets.i = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 36, i32 1
  %24 = ptrtoint ptr %tx_shift.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tx_shift.i.i.i.i, align 4
  %notmask.i.i.i55 = shl nsw i32 -1, %25
  %sub.i.i.i56 = xor i32 %notmask.i.i.i55, -1
  %and.i.i57 = and i32 %23, %sub.i.i.i56
  %26 = ptrtoint ptr %rx_last.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rx_last.i.i, align 4
  %add.i.i.i58 = add i32 %27, 1
  %add.i.i59 = add i32 %add.i.i.i58, %and.i.i57
  %shl.i60 = shl nuw i32 1, %add.i.i59
  %and.i4961 = and i32 %shl.i60, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i4961)
  %tobool.not.i62 = icmp eq i32 %and.i4961, 0
  br i1 %tobool.not.i62, label %for.body.lr.ph.i.for.end.i_crit_edge, label %for.body.lr.ph.i.if.end.i_crit_edge

for.body.lr.ph.i.if.end.i_crit_edge:              ; preds = %for.body.lr.ph.i
  br label %if.end.i

for.body.lr.ph.i.for.end.i_crit_edge:             ; preds = %for.body.lr.ph.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i
  %28 = ptrtoint ptr %tx_shift.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %tx_shift.i.i.i.i, align 4
  %notmask.i.i.i = shl nsw i32 -1, %29
  %sub.i.i.i = xor i32 %notmask.i.i.i, -1
  %and.i.i = and i32 %inc18.i, %sub.i.i.i
  %30 = ptrtoint ptr %rx_last.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rx_last.i.i, align 4
  %add.i.i.i = add i32 %31, 1
  %add.i.i = add i32 %add.i.i.i, %and.i.i
  %shl.i = shl nuw i32 1, %add.i.i
  %and.i49 = and i32 %shl.i, %7
  %tobool.not.i = icmp eq i32 %and.i49, 0
  br i1 %tobool.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.if.end.i_crit_edge

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

if.end.i:                                         ; preds = %for.body.i.if.end.i_crit_edge, %for.body.lr.ph.i.if.end.i_crit_edge
  %shl.i64 = phi i32 [ %shl.i, %for.body.i.if.end.i_crit_edge ], [ %shl.i60, %for.body.lr.ph.i.if.end.i_crit_edge ]
  %add.i.i63 = phi i32 [ %add.i.i, %for.body.i.if.end.i_crit_edge ], [ %add.i.i59, %for.body.lr.ph.i.if.end.i_crit_edge ]
  %32 = tail call i32 @llvm.bswap.i32(i32 %shl.i64) #6
  %33 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %reg_base.i, align 8
  %add.ptr.i48.i = getelementptr i8, ptr %34, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i48.i, i32 %32) #6, !srcloc !124
  %mul.i = shl i32 %add.i.i63, 5
  %add.i50 = add i32 %mul.i, 528
  %35 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %reg_base.i, align 8
  %add.ptr.i50.i = getelementptr i8, ptr %36, i32 %add.i50
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i50.i) #6, !srcloc !121
  %38 = and i32 %37, 49152
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %38)
  %39 = icmp eq i32 %38, 32768
  br i1 %39, label %if.then10.i, label %if.end.i.for.inc.i_crit_edge, !prof !125

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.then10.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %40 = ptrtoint ptr %rx_last.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %rx_last.i.i, align 4
  %add.i51.neg.i = xor i32 %41, -1
  %sub12.i = add i32 %add.i.i63, %add.i51.neg.i
  %call13.i = tail call i32 @can_get_echo_skb(ptr noundef %dev_id, i32 noundef %sub12.i, ptr noundef null) #6
  %42 = ptrtoint ptr %tx_bytes.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %tx_bytes.i, align 4
  %add14.i = add i32 %43, %call13.i
  store i32 %add14.i, ptr %tx_bytes.i, align 4
  %44 = ptrtoint ptr %tx_packets.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %tx_packets.i, align 4
  %inc.i = add i32 %45, 1
  store i32 %inc.i, ptr %tx_packets.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then10.i, %if.end.i.for.inc.i_crit_edge
  %46 = ptrtoint ptr %tx_echo.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %tx_echo.i, align 4
  %inc18.i = add i32 %47, 1
  store i32 %inc18.i, ptr %tx_echo.i, align 4
  %48 = ptrtoint ptr %tx_next.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %tx_next.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %inc18.i)
  %cmp.not.i = icmp eq i32 %49, %inc18.i
  br i1 %cmp.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %for.body.i.for.end.i_crit_edge, %for.body.lr.ph.i.for.end.i_crit_edge, %if.then14.for.end.i_crit_edge
  %.lcssa60.i = phi i32 [ %21, %if.then14.for.end.i_crit_edge ], [ %21, %for.body.lr.ph.i.for.end.i_crit_edge ], [ %49, %for.body.i.for.end.i_crit_edge ], [ %inc18.i, %for.inc.i.for.end.i_crit_edge ]
  %.lcssa.i = phi i32 [ %21, %if.then14.for.end.i_crit_edge ], [ %23, %for.body.lr.ph.i.for.end.i_crit_edge ], [ %inc18.i, %for.inc.i.for.end.i_crit_edge ], [ %inc18.i, %for.body.i.for.end.i_crit_edge ]
  %50 = ptrtoint ptr %tx_shift.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %tx_shift.i.i.i.i, align 4
  %notmask.i.i53.i = shl nsw i32 -1, %51
  %sub.i.i54.i = xor i32 %notmask.i.i53.i, -1
  %shl.i.i.i51 = shl i32 15, %51
  %or.i.i = or i32 %shl.i.i.i51, %sub.i.i54.i
  %and21.i = and i32 %or.i.i, %.lcssa60.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i)
  %cmp22.not.i = icmp ne i32 %and21.i, 0
  %and25.i = and i32 %or.i.i, %.lcssa.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i)
  %cmp26.i = icmp eq i32 %and25.i, 0
  %or.cond.i = select i1 %cmp22.not.i, i1 true, i1 %cmp26.i
  br i1 %or.cond.i, label %if.then27.i, label %for.end.i.if.end15_crit_edge

for.end.i.if.end15_crit_edge:                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.then27.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 103
  %52 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %_tx.i.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %53) #6
  br label %if.end15

if.end15:                                         ; preds = %if.then27.i, %for.end.i.if.end15_crit_edge, %if.end10.if.end15_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cf.i) #6
  %54 = ptrtoint ptr %cf.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr inttoptr (i32 -1 to ptr), ptr %cf.i, align 4, !annotation !122
  %type.i.i = getelementptr i8, ptr %dev_id, i32 2876
  %55 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %cmp.i.not.i = icmp eq i32 %56, 0
  %57 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %reg_base.i, align 8
  br i1 %cmp.i.not.i, label %if.then.i54, label %if.else40.i

if.then.i54:                                      ; preds = %if.end15
  %add.ptr.i85.i = getelementptr i8, ptr %58, i32 16
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i85.i) #6, !srcloc !121
  %60 = tail call i32 @llvm.bswap.i32(i32 %59) #6
  %and.i53 = and i32 %60, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i53)
  %tobool3.not.i = icmp eq i32 %and.i53, 0
  br i1 %tobool3.not.i, label %if.else.i, label %if.then.i54.if.end45.i_crit_edge, !prof !125

if.then.i54.if.end45.i_crit_edge:                 ; preds = %if.then.i54
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end45.i

if.else.i:                                        ; preds = %if.then.i54
  %and7.i = and i32 %60, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i = icmp eq i32 %and7.i, 0
  br i1 %tobool8.not.i, label %if.else16.i, label %if.else.i.if.end45.i_crit_edge, !prof !125

if.else.i.if.end45.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end45.i

if.else16.i:                                      ; preds = %if.else.i
  %and17.i = and i32 %60, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i)
  %tobool18.not.i = icmp eq i32 %and17.i, 0
  br i1 %tobool18.not.i, label %if.else26.i, label %if.else16.i.if.end45.i_crit_edge, !prof !125

if.else16.i.if.end45.i_crit_edge:                 ; preds = %if.else16.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end45.i

if.else26.i:                                      ; preds = %if.else16.i
  %and27.i = and i32 %60, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.i)
  %tobool28.not.i = icmp eq i32 %and27.i, 0
  br i1 %tobool28.not.i, label %if.else36.i, label %if.else26.i.if.end45.i_crit_edge, !prof !123

if.else26.i.if.end45.i_crit_edge:                 ; preds = %if.else26.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end45.i

if.else36.i:                                      ; preds = %if.else26.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev_id, ptr noundef nonnull @.str.19) #9
  br label %at91_irq_err.exit

if.else40.i:                                      ; preds = %if.end15
  %add.ptr.i5.i.i.i = getelementptr i8, ptr %58, i32 32
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i.i.i) #6, !srcloc !121
  %62 = tail call i32 @llvm.bswap.i32(i32 %61) #6
  %63 = trunc i32 %62 to i16
  %conv.i.i.i = and i16 %63, 255
  %shr.i.i.i = lshr i32 %62, 16
  %conv2.i.i.i = trunc i32 %shr.i.i.i to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 96, i16 %conv2.i.i.i)
  %cmp.i86.i = icmp ult i16 %conv2.i.i.i, 96
  br i1 %cmp.i86.i, label %land.lhs.true.i.i, label %if.else.i.i

land.lhs.true.i.i:                                ; preds = %if.else40.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 96, i16 %conv.i.i.i)
  %cmp3.i.i = icmp ult i16 %conv.i.i.i, 96
  br i1 %cmp3.i.i, label %land.lhs.true.i.i.if.end45.i_crit_edge, label %land.lhs.true.i.i.land.lhs.true10.i.i_crit_edge

land.lhs.true.i.i.land.lhs.true10.i.i_crit_edge:  ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true10.i.i

land.lhs.true.i.i.if.end45.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end45.i

if.else.i.i:                                      ; preds = %if.else40.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 128, i16 %conv2.i.i.i)
  %cmp8.i.i = icmp ult i16 %conv2.i.i.i, 128
  br i1 %cmp8.i.i, label %if.else.i.i.land.lhs.true10.i.i_crit_edge, label %if.else16.i.i

if.else.i.i.land.lhs.true10.i.i_crit_edge:        ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true10.i.i

land.lhs.true10.i.i:                              ; preds = %if.else.i.i.land.lhs.true10.i.i_crit_edge, %land.lhs.true.i.i.land.lhs.true10.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 128, i16 %conv.i.i.i)
  %cmp13.i.i = icmp ult i16 %conv.i.i.i, 128
  br i1 %cmp13.i.i, label %land.lhs.true10.i.i.if.end45.i_crit_edge, label %land.lhs.true10.i.i.if.then26.i.i_crit_edge

land.lhs.true10.i.i.if.then26.i.i_crit_edge:      ; preds = %land.lhs.true10.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then26.i.i

land.lhs.true10.i.i.if.end45.i_crit_edge:         ; preds = %land.lhs.true10.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end45.i

if.else16.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %conv2.i.i.i)
  %cmp19.i.i = icmp ult i16 %conv2.i.i.i, 256
  br i1 %cmp19.i.i, label %if.else16.i.i.if.then26.i.i_crit_edge, label %if.else16.i.i.if.end45.i_crit_edge

if.else16.i.i.if.end45.i_crit_edge:               ; preds = %if.else16.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end45.i

if.else16.i.i.if.then26.i.i_crit_edge:            ; preds = %if.else16.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then26.i.i

if.then26.i.i:                                    ; preds = %if.else16.i.i.if.then26.i.i_crit_edge, %land.lhs.true10.i.i.if.then26.i.i_crit_edge
  br label %if.end45.i

if.end45.i:                                       ; preds = %if.then26.i.i, %if.else16.i.i.if.end45.i_crit_edge, %land.lhs.true10.i.i.if.end45.i_crit_edge, %land.lhs.true.i.i.if.end45.i_crit_edge, %if.else26.i.if.end45.i_crit_edge, %if.else16.i.if.end45.i_crit_edge, %if.else.i.if.end45.i_crit_edge, %if.then.i54.if.end45.i_crit_edge
  %new_state.0.i = phi i32 [ 3, %if.then.i54.if.end45.i_crit_edge ], [ 2, %if.else.i.if.end45.i_crit_edge ], [ 1, %if.else16.i.if.end45.i_crit_edge ], [ 0, %if.else26.i.if.end45.i_crit_edge ], [ 2, %if.then26.i.i ], [ 0, %land.lhs.true.i.i.if.end45.i_crit_edge ], [ 1, %land.lhs.true10.i.i.if.end45.i_crit_edge ], [ 3, %if.else16.i.i.if.end45.i_crit_edge ]
  %state.i = getelementptr i8, ptr %dev_id, i32 2472
  %64 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %state.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %new_state.0.i, i32 %65)
  %cmp.i = icmp eq i32 %new_state.0.i, %65
  br i1 %cmp.i, label %if.end45.i.at91_irq_err.exit_crit_edge, label %if.end53.i, !prof !125

if.end45.i.at91_irq_err.exit_crit_edge:           ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %at91_irq_err.exit

if.end53.i:                                       ; preds = %if.end45.i
  %call54.i = call ptr @alloc_can_err_skb(ptr noundef %dev_id, ptr noundef nonnull %cf.i) #6
  %tobool55.not.i = icmp eq ptr %call54.i, null
  br i1 %tobool55.not.i, label %if.end53.i.at91_irq_err.exit_crit_edge, label %if.end65.i, !prof !123

if.end53.i.at91_irq_err.exit_crit_edge:           ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %at91_irq_err.exit

if.end65.i:                                       ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #8
  %66 = ptrtoint ptr %cf.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %cf.i, align 4
  call fastcc void @at91_irq_err_state(ptr noundef %dev_id, ptr noundef %67, i32 noundef %new_state.0.i) #6
  %call66.i = call i32 @netif_rx(ptr noundef nonnull %call54.i) #6
  %68 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %new_state.0.i, ptr %state.i, align 8
  br label %at91_irq_err.exit

at91_irq_err.exit:                                ; preds = %if.end65.i, %if.end53.i.at91_irq_err.exit_crit_edge, %if.end45.i.at91_irq_err.exit_crit_edge, %if.else36.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cf.i) #6
  br label %exit

exit:                                             ; preds = %at91_irq_err.exit, %entry.exit_crit_edge
  %handled.0 = phi i32 [ 1, %at91_irq_err.exit ], [ 0, %entry.exit_crit_edge ]
  ret i32 %handled.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @at91_chip_start(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_base.i = getelementptr i8, ptr %dev, i32 2840
  %0 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_base.i, align 8
  %add.ptr.i18 = getelementptr i8, ptr %1, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18, i32 -225) #6, !srcloc !124
  %2 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg_base.i, align 8
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #6, !srcloc !121
  %5 = and i32 %4, -16777217
  %6 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg_base.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %5) #6, !srcloc !124
  %ctrlmode.i = getelementptr i8, ptr %dev, i32 2476
  %8 = ptrtoint ptr %ctrlmode.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ctrlmode.i, align 4
  %and.i = shl i32 %9, 22
  %10 = and i32 %and.i, 16777216
  %brp.i = getelementptr i8, ptr %dev, i32 2368
  %11 = ptrtoint ptr %brp.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %brp.i, align 4
  %sub.i = shl i32 %12, 16
  %shl.i = add i32 %sub.i, -65536
  %or.i = or i32 %shl.i, %10
  %sjw.i = getelementptr i8, ptr %dev, i32 2364
  %13 = ptrtoint ptr %sjw.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %sjw.i, align 4
  %sub2.i = shl i32 %14, 12
  %shl3.i = add i32 %sub2.i, -4096
  %or4.i = or i32 %or.i, %shl3.i
  %prop_seg.i = getelementptr i8, ptr %dev, i32 2352
  %15 = ptrtoint ptr %prop_seg.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %prop_seg.i, align 4
  %sub5.i = shl i32 %16, 8
  %shl6.i = add i32 %sub5.i, -256
  %or7.i = or i32 %or4.i, %shl6.i
  %phase_seg1.i = getelementptr i8, ptr %dev, i32 2356
  %17 = ptrtoint ptr %phase_seg1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %phase_seg1.i, align 4
  %sub8.i = shl i32 %18, 4
  %shl9.i = add i32 %sub8.i, -16
  %or10.i = or i32 %or7.i, %shl9.i
  %phase_seg2.i = getelementptr i8, ptr %dev, i32 2360
  %19 = ptrtoint ptr %phase_seg2.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %phase_seg2.i, align 4
  %sub11.i = add i32 %20, -1
  %or13.i = or i32 %or10.i, %sub11.i
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.26, i32 noundef %or13.i) #9
  %21 = tail call i32 @llvm.bswap.i32(i32 %or13.i) #6
  %22 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %reg_base.i, align 8
  %add.ptr.i1.i = getelementptr i8, ptr %23, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1.i, i32 %21) #6, !srcloc !124
  %devtype_data.i.i = getelementptr i8, ptr %dev, i32 2860
  %24 = ptrtoint ptr %devtype_data.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %devtype_data.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp92.not.i = icmp eq i32 %25, 0
  br i1 %cmp92.not.i, label %entry.for.cond6.preheader.i_crit_edge, label %for.body.lr.ph.i

entry.for.cond6.preheader.i_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond6.preheader.i

for.body.lr.ph.i:                                 ; preds = %entry
  %mb0_id.i = getelementptr i8, ptr %dev, i32 2888
  %26 = ptrtoint ptr %mb0_id.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %mb0_id.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not5.i.i = icmp slt i32 %27, 0
  %and1.i.i = and i32 %27, 536870911
  %or.i.i = or i32 %and1.i.i, 536870912
  %and2.i.i = shl i32 %27, 18
  %shl.i.i = and i32 %and2.i.i, 536608768
  %reg_mid.0.i.i = select i1 %tobool.not5.i.i, i32 %or.i.i, i32 %shl.i.i
  %28 = tail call i32 @llvm.bswap.i32(i32 %reg_mid.0.i.i) #6
  br label %for.body.i

for.cond6.preheader.i:                            ; preds = %for.body.i.for.cond6.preheader.i_crit_edge, %entry.for.cond6.preheader.i_crit_edge
  %.lcssa91.i = phi i32 [ 0, %entry.for.cond6.preheader.i_crit_edge ], [ %38, %for.body.i.for.cond6.preheader.i_crit_edge ]
  %rx_last.i.i = getelementptr i8, ptr %dev, i32 2868
  %29 = ptrtoint ptr %rx_last.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rx_last.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.lcssa91.i, i32 %30)
  %cmp894.i = icmp ult i32 %.lcssa91.i, %30
  br i1 %cmp894.i, label %for.cond6.preheader.i.for.body9.i_crit_edge, label %for.cond6.preheader.i.for.end12.i_crit_edge

for.cond6.preheader.i.for.end12.i_crit_edge:      ; preds = %for.cond6.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end12.i

for.cond6.preheader.i.for.body9.i_crit_edge:      ; preds = %for.cond6.preheader.i
  br label %for.body9.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.093.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %mul.i.i.i = shl i32 %i.093.i, 5
  %add.i.i.i = add i32 %mul.i.i.i, 512
  %31 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %reg_base.i, align 8
  %add.ptr.i.i.i.i = getelementptr i8, ptr %32, i32 %add.i.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i.i, i32 0) #6, !srcloc !124
  %add.i = add i32 %mul.i.i.i, 520
  %33 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %reg_base.i, align 8
  %add.ptr.i69.i = getelementptr i8, ptr %34, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i69.i, i32 %28) #6, !srcloc !124
  %add4.i = add i32 %mul.i.i.i, 540
  %35 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %reg_base.i, align 8
  %add.ptr.i71.i = getelementptr i8, ptr %36, i32 %add4.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i71.i, i32 0) #6, !srcloc !124
  %inc.i = add nuw i32 %i.093.i, 1
  %37 = ptrtoint ptr %devtype_data.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %devtype_data.i.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %38
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.cond6.preheader.i_crit_edge

for.body.i.for.cond6.preheader.i_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond6.preheader.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.body9.i:                                      ; preds = %for.body9.i.for.body9.i_crit_edge, %for.cond6.preheader.i.for.body9.i_crit_edge
  %i.195.i = phi i32 [ %inc11.i, %for.body9.i.for.body9.i_crit_edge ], [ %.lcssa91.i, %for.cond6.preheader.i.for.body9.i_crit_edge ]
  %mul.i.i73.i = shl i32 %i.195.i, 5
  %add.i.i74.i = add i32 %mul.i.i73.i, 512
  %39 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %reg_base.i, align 8
  %add.ptr.i.i.i76.i = getelementptr i8, ptr %40, i32 %add.i.i74.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i76.i, i32 1) #6, !srcloc !124
  %inc11.i = add nuw i32 %i.195.i, 1
  %41 = ptrtoint ptr %rx_last.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %rx_last.i.i, align 4
  %cmp8.i = icmp ult i32 %inc11.i, %42
  br i1 %cmp8.i, label %for.body9.i.for.body9.i_crit_edge, label %for.body9.i.for.end12.i_crit_edge

for.body9.i.for.end12.i_crit_edge:                ; preds = %for.body9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end12.i

for.body9.i.for.body9.i_crit_edge:                ; preds = %for.body9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body9.i

for.end12.i:                                      ; preds = %for.body9.i.for.end12.i_crit_edge, %for.cond6.preheader.i.for.end12.i_crit_edge
  %.lcssa90.i = phi i32 [ %30, %for.cond6.preheader.i.for.end12.i_crit_edge ], [ %42, %for.body9.i.for.end12.i_crit_edge ]
  %mul.i.i78.i = shl i32 %.lcssa90.i, 5
  %add.i.i79.i = add i32 %mul.i.i78.i, 512
  %43 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %reg_base.i, align 8
  %add.ptr.i.i.i81.i = getelementptr i8, ptr %44, i32 %add.i.i79.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i81.i, i32 2) #6, !srcloc !124
  %45 = ptrtoint ptr %devtype_data.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %devtype_data.i.i, align 4
  %47 = ptrtoint ptr %rx_last.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %rx_last.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %48)
  %cmp17.not97.i = icmp ugt i32 %46, %48
  br i1 %cmp17.not97.i, label %for.end12.i.for.cond27.preheader.i_crit_edge, label %for.end12.i.for.body18.i_crit_edge

for.end12.i.for.body18.i_crit_edge:               ; preds = %for.end12.i
  br label %for.body18.i

for.end12.i.for.cond27.preheader.i_crit_edge:     ; preds = %for.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond27.preheader.i

for.cond27.preheader.i:                           ; preds = %for.body18.i.for.cond27.preheader.i_crit_edge, %for.end12.i.for.cond27.preheader.i_crit_edge
  %.lcssa.i = phi i32 [ %48, %for.end12.i.for.cond27.preheader.i_crit_edge ], [ %58, %for.body18.i.for.cond27.preheader.i_crit_edge ]
  %tx_shift.i.i.i.i = getelementptr i8, ptr %dev, i32 2872
  %49 = ptrtoint ptr %rx_last.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %rx_last.i.i, align 4
  %51 = ptrtoint ptr %tx_shift.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %tx_shift.i.i.i.i, align 4
  %shl.i.i101.i = shl nuw i32 1, %52
  %sub.i102.i = add i32 %shl.i.i101.i, %50
  call void @__sanitizer_cov_trace_cmp4(i32 %.lcssa.i, i32 %sub.i102.i)
  %cmp29.not103.not.i = icmp ult i32 %.lcssa.i, %sub.i102.i
  br i1 %cmp29.not103.not.i, label %for.body30.i.preheader, label %for.cond27.preheader.i.at91_setup_mailboxes.exit_crit_edge

for.cond27.preheader.i.at91_setup_mailboxes.exit_crit_edge: ; preds = %for.cond27.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %at91_setup_mailboxes.exit

for.body30.i.preheader:                           ; preds = %for.cond27.preheader.i
  %i.3100.i = add nuw i32 %.lcssa.i, 1
  br label %for.body30.i

for.body18.i:                                     ; preds = %for.body18.i.for.body18.i_crit_edge, %for.end12.i.for.body18.i_crit_edge
  %i.298.i = phi i32 [ %inc24.i, %for.body18.i.for.body18.i_crit_edge ], [ %46, %for.end12.i.for.body18.i_crit_edge ]
  %mul19.i = shl i32 %i.298.i, 5
  %add20.i = add i32 %mul19.i, 516
  %53 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %reg_base.i, align 8
  %add.ptr.i85.i = getelementptr i8, ptr %54, i32 %add20.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i85.i, i32 0) #6, !srcloc !124
  %add22.i = add i32 %mul19.i, 520
  %55 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %reg_base.i, align 8
  %add.ptr.i87.i = getelementptr i8, ptr %56, i32 %add22.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i87.i, i32 32) #6, !srcloc !124
  %inc24.i = add i32 %i.298.i, 1
  %57 = ptrtoint ptr %rx_last.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %rx_last.i.i, align 4
  %cmp17.not.i = icmp ugt i32 %inc24.i, %58
  br i1 %cmp17.not.i, label %for.body18.i.for.cond27.preheader.i_crit_edge, label %for.body18.i.for.body18.i_crit_edge

for.body18.i.for.body18.i_crit_edge:              ; preds = %for.body18.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body18.i

for.body18.i.for.cond27.preheader.i_crit_edge:    ; preds = %for.body18.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond27.preheader.i

for.body30.i:                                     ; preds = %for.body30.i.for.body30.i_crit_edge, %for.body30.i.preheader
  %i.3104.i = phi i32 [ %i.3.i, %for.body30.i.for.body30.i_crit_edge ], [ %i.3100.i, %for.body30.i.preheader ]
  %mul.i.i = shl i32 %i.3104.i, 5
  %add.i88.i = add i32 %mul.i.i, 512
  %59 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %reg_base.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %60, i32 %add.i88.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 3) #6, !srcloc !124
  %i.3.i = add i32 %i.3104.i, 1
  %61 = ptrtoint ptr %rx_last.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %rx_last.i.i, align 4
  %63 = ptrtoint ptr %tx_shift.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %tx_shift.i.i.i.i, align 4
  %shl.i.i.i = shl nuw i32 1, %64
  %sub.i.i = add i32 %shl.i.i.i, %62
  %cmp29.not.i = icmp ugt i32 %i.3.i, %sub.i.i
  br i1 %cmp29.not.i, label %for.body30.i.at91_setup_mailboxes.exit_crit_edge, label %for.body30.i.for.body30.i_crit_edge

for.body30.i.for.body30.i_crit_edge:              ; preds = %for.body30.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body30.i

for.body30.i.at91_setup_mailboxes.exit_crit_edge: ; preds = %for.body30.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %at91_setup_mailboxes.exit

at91_setup_mailboxes.exit:                        ; preds = %for.body30.i.at91_setup_mailboxes.exit_crit_edge, %for.cond27.preheader.i.at91_setup_mailboxes.exit_crit_edge
  %tx_echo.i = getelementptr i8, ptr %dev, i32 2852
  %65 = ptrtoint ptr %tx_echo.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 0, ptr %tx_echo.i, align 4
  %tx_next.i = getelementptr i8, ptr %dev, i32 2848
  %66 = ptrtoint ptr %tx_next.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 0, ptr %tx_next.i, align 8
  %67 = ptrtoint ptr %devtype_data.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %devtype_data.i.i, align 4
  %rx_next.i = getelementptr i8, ptr %dev, i32 2856
  %69 = ptrtoint ptr %rx_next.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %rx_next.i, align 8
  %70 = ptrtoint ptr %ctrlmode.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %ctrlmode.i, align 4
  %and3 = and i32 %71, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool.not = icmp eq i32 %and3, 0
  %. = select i1 %tobool.not, i32 16777216, i32 83886080
  %72 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %reg_base.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %73, i32 %.) #6, !srcloc !124
  %state = getelementptr i8, ptr %dev, i32 2472
  %74 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 0, ptr %state, align 8
  %75 = ptrtoint ptr %rx_last.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %rx_last.i.i, align 4
  %add.i23 = add i32 %76, 1
  %notmask.i = shl nsw i32 -1, %add.i23
  %sub.i24 = xor i32 %notmask.i, -1
  %77 = ptrtoint ptr %devtype_data.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %devtype_data.i.i, align 4
  %notmask5.i = shl nsw i32 -1, %78
  %and.i26 = and i32 %notmask5.i, %sub.i24
  %or6 = or i32 %and.i26, 520355840
  %79 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %reg_base.i, align 8
  %add.ptr.i28 = getelementptr i8, ptr %80, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i28, i32 -225) #6, !srcloc !124
  %81 = tail call i32 @llvm.bswap.i32(i32 %or6) #6
  %82 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %reg_base.i, align 8
  %add.ptr.i30 = getelementptr i8, ptr %83, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i30, i32 %81) #6, !srcloc !124
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @close_candev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_schedule_prep(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @can_get_echo_skb(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_can_err_skb(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @at91_irq_err_state(ptr noundef %dev, ptr nocapture noundef %cf, i32 noundef %new_state) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_base.i.i = getelementptr i8, ptr %dev, i32 2840
  %0 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_base.i.i, align 8
  %add.ptr.i5.i = getelementptr i8, ptr %1, i32 32
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i) #6, !srcloc !121
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #6
  %4 = trunc i32 %3 to i16
  %conv.i = and i16 %4, 255
  %shr.i = lshr i32 %3, 16
  %conv2.i = trunc i32 %shr.i to i16
  %state = getelementptr i8, ptr %dev, i32 2472
  %5 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %state, align 8
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %6, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %entry.sw.bb17_crit_edge
    i32 3, label %sw.bb61
  ]

entry.sw.bb17_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb17

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %8 = add i32 %new_state, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %8)
  %9 = icmp ult i32 %8, 3
  br i1 %9, label %do.body3, label %sw.bb.sw.bb17_crit_edge

sw.bb.sw.bb17_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb17

do.body3:                                         ; preds = %sw.bb
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at91_irq_err_state.__UNIQUE_ID_ddebug467, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@at91_irq_err_state, %do.end10)) #6
          to label %if.then8 [label %do.end10], !srcloc !126

if.then8:                                         ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @at91_irq_err_state.__UNIQUE_ID_ddebug467, ptr noundef %dev, ptr noundef nonnull @.str.21) #6
  br label %do.end10

do.end10:                                         ; preds = %if.then8, %do.body3
  %error_warning = getelementptr i8, ptr %dev, i32 2312
  %10 = ptrtoint ptr %error_warning to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %error_warning, align 4
  %inc = add i32 %11, 1
  store i32 %inc, ptr %error_warning, align 4
  %12 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cf, align 8
  %or = or i32 %13, 4
  store i32 %or, ptr %cf, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %conv.i, i16 %conv2.i)
  %cmp13 = icmp ult i16 %conv.i, %conv2.i
  %conv15 = select i1 %cmp13, i8 8, i8 4
  %arrayidx = getelementptr %struct.can_frame, ptr %cf, i32 0, i32 5, i32 1
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv15, ptr %arrayidx, align 1
  br label %sw.bb17

sw.bb17:                                          ; preds = %do.end10, %sw.bb.sw.bb17_crit_edge, %entry.sw.bb17_crit_edge
  %15 = and i32 %new_state, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %15)
  %16 = icmp eq i32 %15, 2
  br i1 %16, label %do.body25, label %sw.bb17.sw.epilog_crit_edge

sw.bb17.sw.epilog_crit_edge:                      ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.body25:                                        ; preds = %sw.bb17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at91_irq_err_state.__UNIQUE_ID_ddebug468, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@at91_irq_err_state, %do.end44)) #6
          to label %if.then39 [label %do.end44], !srcloc !126

if.then39:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @at91_irq_err_state.__UNIQUE_ID_ddebug468, ptr noundef %dev, ptr noundef nonnull @.str.22) #6
  br label %do.end44

do.end44:                                         ; preds = %if.then39, %do.body25
  %error_passive = getelementptr i8, ptr %dev, i32 2316
  %17 = ptrtoint ptr %error_passive to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %error_passive, align 4
  %inc47 = add i32 %18, 1
  store i32 %inc47, ptr %error_passive, align 4
  %19 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cf, align 8
  %or49 = or i32 %20, 4
  store i32 %or49, ptr %cf, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %conv.i, i16 %conv2.i)
  %cmp54 = icmp ult i16 %conv.i, %conv2.i
  %conv57 = select i1 %cmp54, i8 32, i8 16
  %arrayidx59 = getelementptr %struct.can_frame, ptr %cf, i32 0, i32 5, i32 1
  %21 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv57, ptr %arrayidx59, align 1
  br label %sw.epilog

sw.bb61:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %new_state)
  %cmp62 = icmp ult i32 %new_state, 3
  br i1 %cmp62, label %if.then64, label %sw.bb61.sw.epilog_crit_edge

sw.bb61.sw.epilog_crit_edge:                      ; preds = %sw.bb61
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then64:                                        ; preds = %sw.bb61
  %22 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cf, align 8
  %or66 = or i32 %23, 256
  store i32 %or66, ptr %cf, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at91_irq_err_state.__UNIQUE_ID_ddebug469, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@at91_irq_err_state, %do.end87)) #6
          to label %if.then82 [label %do.end87], !srcloc !126

if.then82:                                        ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @at91_irq_err_state.__UNIQUE_ID_ddebug469, ptr noundef %dev, ptr noundef nonnull @.str.23) #6
  br label %do.end87

do.end87:                                         ; preds = %if.then82, %if.then64
  %restarts = getelementptr i8, ptr %dev, i32 2328
  %24 = ptrtoint ptr %restarts to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %restarts, align 4
  %inc90 = add i32 %25, 1
  store i32 %inc90, ptr %restarts, align 4
  tail call void @netif_carrier_on(ptr noundef %dev) #6
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %26 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %27) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end87, %sw.bb61.sw.epilog_crit_edge, %do.end44, %sw.bb17.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %28 = zext i32 %new_state to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %new_state, label %sw.epilog.sw.epilog152_crit_edge [
    i32 0, label %do.body94
    i32 1, label %sw.epilog.sw.bb118_crit_edge
    i32 2, label %sw.bb119
    i32 3, label %sw.bb120
  ]

sw.epilog.sw.bb118_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb118

sw.epilog.sw.epilog152_crit_edge:                 ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog152

do.body94:                                        ; preds = %sw.epilog
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at91_irq_err_state.__UNIQUE_ID_ddebug470, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@at91_irq_err_state, %do.end113)) #6
          to label %if.then108 [label %do.end113], !srcloc !126

if.then108:                                       ; preds = %do.body94
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @at91_irq_err_state.__UNIQUE_ID_ddebug470, ptr noundef %dev, ptr noundef nonnull @.str.24) #6
  br label %do.end113

do.end113:                                        ; preds = %if.then108, %do.body94
  %29 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %cf, align 8
  %or115 = or i32 %30, 8
  store i32 %or115, ptr %cf, align 8
  %arrayidx117 = getelementptr %struct.can_frame, ptr %cf, i32 0, i32 5, i32 2
  %31 = ptrtoint ptr %arrayidx117 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 64, ptr %arrayidx117, align 2
  br label %sw.bb118

sw.bb118:                                         ; preds = %do.end113, %sw.epilog.sw.bb118_crit_edge
  br label %sw.epilog152

sw.bb119:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog152

sw.bb120:                                         ; preds = %sw.epilog
  %32 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %cf, align 8
  %or122 = or i32 %33, 64
  store i32 %or122, ptr %cf, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at91_irq_err_state.__UNIQUE_ID_ddebug471, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@at91_irq_err_state, %do.end143)) #6
          to label %if.then138 [label %do.end143], !srcloc !126

if.then138:                                       ; preds = %sw.bb120
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @at91_irq_err_state.__UNIQUE_ID_ddebug471, ptr noundef %dev, ptr noundef nonnull @.str.25) #6
  br label %do.end143

do.end143:                                        ; preds = %if.then138, %sw.bb120
  tail call void @netif_carrier_off(ptr noundef %dev) #6
  %bus_off = getelementptr i8, ptr %dev, i32 2320
  %34 = ptrtoint ptr %bus_off to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %bus_off, align 4
  %inc146 = add i32 %35, 1
  store i32 %inc146, ptr %bus_off, align 4
  %restart_ms = getelementptr i8, ptr %dev, i32 2484
  %36 = ptrtoint ptr %restart_ms to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %restart_ms, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool148.not = icmp eq i32 %37, 0
  br i1 %tobool148.not, label %if.then149, label %do.end143.sw.epilog152_crit_edge

do.end143.sw.epilog152_crit_edge:                 ; preds = %do.end143
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog152

if.then149:                                       ; preds = %do.end143
  call void @__sanitizer_cov_trace_pc() #8
  %38 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %reg_base.i.i, align 8
  %add.ptr.i6.i = getelementptr i8, ptr %39, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i, i32 -225) #6, !srcloc !124
  %40 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %reg_base.i.i, align 8
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %41) #6, !srcloc !121
  %43 = and i32 %42, -16777217
  %44 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %reg_base.i.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 %43) #6, !srcloc !124
  %46 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 3, ptr %state, align 8
  br label %cleanup

sw.epilog152:                                     ; preds = %do.end143.sw.epilog152_crit_edge, %sw.bb119, %sw.bb118, %sw.epilog.sw.epilog152_crit_edge
  %reg_ier.0 = phi i32 [ 0, %sw.epilog.sw.epilog152_crit_edge ], [ 0, %do.end143.sw.epilog152_crit_edge ], [ 2048, %sw.bb119 ], [ 1024, %sw.bb118 ]
  %reg_idr.0 = phi i32 [ 0, %sw.epilog.sw.epilog152_crit_edge ], [ 3840, %do.end143.sw.epilog152_crit_edge ], [ 1792, %sw.bb119 ], [ 2816, %sw.bb118 ]
  %47 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %reg_base.i.i, align 8
  %add.ptr.i199 = getelementptr i8, ptr %48, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i199, i32 %reg_idr.0) #6, !srcloc !124
  %49 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %reg_base.i.i, align 8
  %add.ptr.i201 = getelementptr i8, ptr %50, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i201, i32 %reg_ier.0) #6, !srcloc !124
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog152, %if.then149
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @can_put_echo_skb(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @at91_poll_rx(ptr noundef %dev, i32 noundef %quota) unnamed_addr #2 align 64 {
entry:
  %cf.i85 = alloca ptr, align 4
  %cf.i = alloca ptr, align 4
  %reg_sr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg_sr) #6
  %reg_base.i = getelementptr i8, ptr %dev, i32 2840
  %0 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_base.i, align 8
  %add.ptr.i65 = getelementptr i8, ptr %1, i32 16
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i65) #6, !srcloc !121
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #6
  %4 = ptrtoint ptr %reg_sr to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %reg_sr, align 4
  %rx_next = getelementptr i8, ptr %dev, i32 2856
  %5 = ptrtoint ptr %rx_next to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rx_next, align 8
  %rx_split.i.i = getelementptr i8, ptr %dev, i32 2864
  %7 = ptrtoint ptr %rx_split.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rx_split.i.i, align 4
  %sub.i = add i32 %8, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %sub.i)
  %cmp = icmp ugt i32 %6, %sub.i
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %notmask.i = shl nsw i32 -1, %8
  %sub.i67 = xor i32 %notmask.i, -1
  %devtype_data.i.i = getelementptr i8, ptr %dev, i32 2860
  %9 = ptrtoint ptr %devtype_data.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %devtype_data.i.i, align 4
  %notmask5.i = shl nsw i32 -1, %10
  %and.i = and i32 %3, %sub.i67
  %and = and i32 %and.i, %notmask5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.29) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %rx_last.i.i = getelementptr i8, ptr %dev, i32 2868
  %stats1.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36
  %rx_over_errors.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 11
  %rx_errors.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 4
  %rx_bytes.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 2
  %rx_dropped.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 6
  %devtype_data.i.i.i = getelementptr i8, ptr %dev, i32 2860
  br label %again

again:                                            ; preds = %if.then29.again_crit_edge, %if.end
  %quota.addr.0 = phi i32 [ %quota, %if.end ], [ %quota.addr.1.lcssa, %if.then29.again_crit_edge ]
  %received.0 = phi i32 [ 0, %if.end ], [ %received.1.lcssa, %if.then29.again_crit_edge ]
  %11 = ptrtoint ptr %rx_last.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rx_last.i.i, align 4
  %add.i = add i32 %12, 1
  %13 = ptrtoint ptr %rx_next to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rx_next, align 8
  %call6 = call i32 @_find_next_bit_be(ptr noundef nonnull %reg_sr, i32 noundef %add.i, i32 noundef %14) #6
  %15 = ptrtoint ptr %rx_last.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rx_last.i.i, align 4
  %add.i6990 = add i32 %16, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %call6, i32 %add.i6990)
  %cmp891 = icmp ult i32 %call6, %add.i6990
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %quota.addr.0)
  %cmp992 = icmp sgt i32 %quota.addr.0, 0
  %or.cond93 = select i1 %cmp891, i1 %cmp992, i1 false
  br i1 %or.cond93, label %again.for.body_crit_edge, label %again.for.end_crit_edge

again.for.end_crit_edge:                          ; preds = %again
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

again.for.body_crit_edge:                         ; preds = %again
  br label %for.body

for.body:                                         ; preds = %if.end17.for.body_crit_edge, %again.for.body_crit_edge
  %received.196 = phi i32 [ %inc, %if.end17.for.body_crit_edge ], [ %received.0, %again.for.body_crit_edge ]
  %mb.095 = phi i32 [ %call22, %if.end17.for.body_crit_edge ], [ %call6, %again.for.body_crit_edge ]
  %quota.addr.194 = phi i32 [ %dec, %if.end17.for.body_crit_edge ], [ %quota.addr.0, %again.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cf.i) #6
  %17 = ptrtoint ptr %cf.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 -1 to ptr), ptr %cf.i, align 4, !annotation !122
  %call.i = call ptr @alloc_can_skb(ptr noundef %dev, ptr noundef nonnull %cf.i) #6
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i, !prof !123

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %rx_dropped.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rx_dropped.i, align 4
  %inc.i = add i32 %19, 1
  store i32 %inc.i, ptr %rx_dropped.i, align 4
  br label %at91_read_msg.exit

if.end.i:                                         ; preds = %for.body
  %20 = ptrtoint ptr %cf.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cf.i, align 4
  %mul.i.i = shl i32 %mb.095, 5
  %add.i.i = add i32 %mul.i.i, 520
  %22 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %reg_base.i, align 8
  %add.ptr.i66.i.i = getelementptr i8, ptr %23, i32 %add.i.i
  %24 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i66.i.i) #6, !srcloc !121
  %25 = call i32 @llvm.bswap.i32(i32 %24) #6
  %and.i.i = and i32 %25, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %shr3.i.i = lshr i32 %25, 18
  %and4.i.i = and i32 %shr3.i.i, 2047
  %and2.i.i = and i32 %25, 536870911
  %or.i.i = or i32 %and2.i.i, -2147483648
  %storemerge.i.i = select i1 %tobool.not.i.i, i32 %and4.i.i, i32 %or.i.i
  %26 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %storemerge.i.i, ptr %21, align 8
  %add7.i.i = add i32 %mul.i.i, 528
  %27 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %reg_base.i, align 8
  %add.ptr.i68.i.i = getelementptr i8, ptr %28, i32 %add7.i.i
  %29 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i68.i.i) #6, !srcloc !121
  %30 = call i32 @llvm.bswap.i32(i32 %29) #6
  %shr9.i.i = lshr i32 %30, 16
  %conv.i.i = and i32 %shr9.i.i, 15
  %31 = call i32 @llvm.umin.i32(i32 %conv.i.i, i32 8) #6
  %32 = trunc i32 %31 to i8
  %33 = getelementptr inbounds %struct.can_frame, ptr %21, i32 0, i32 1
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %32, ptr %33, align 4
  %and17.i.i = and i32 %30, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i.i)
  %tobool18.not.i.i = icmp eq i32 %and17.i.i, 0
  br i1 %tobool18.not.i.i, label %if.else22.i.i, label %if.then19.i.i

if.then19.i.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %35 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %21, align 8
  %or21.i.i = or i32 %36, 1073741824
  store i32 %or21.i.i, ptr %21, align 8
  br label %if.end32.i.i

if.else22.i.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %add24.i.i = add i32 %mul.i.i, 532
  %37 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %reg_base.i, align 8
  %add.ptr.i70.i.i = getelementptr i8, ptr %38, i32 %add24.i.i
  %39 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i70.i.i) #6, !srcloc !121
  %40 = call i32 @llvm.bswap.i32(i32 %39) #6
  %data.i.i = getelementptr inbounds %struct.can_frame, ptr %21, i32 0, i32 5
  %41 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %data.i.i, align 4
  %add27.i.i = add i32 %mul.i.i, 536
  %42 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %reg_base.i, align 8
  %add.ptr.i72.i.i = getelementptr i8, ptr %43, i32 %add27.i.i
  %44 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i72.i.i) #6, !srcloc !121
  %45 = call i32 @llvm.bswap.i32(i32 %44) #6
  %add.ptr31.i.i = getelementptr %struct.can_frame, ptr %21, i32 0, i32 5, i32 4
  %46 = ptrtoint ptr %add.ptr31.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %add.ptr31.i.i, align 4
  br label %if.end32.i.i

if.end32.i.i:                                     ; preds = %if.else22.i.i, %if.then19.i.i
  %47 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %reg_base.i, align 8
  %add.ptr.i74.i.i = getelementptr i8, ptr %48, i32 %add.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i74.i.i, i32 32) #6, !srcloc !124
  %49 = ptrtoint ptr %rx_last.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %rx_last.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %mb.095)
  %cmp36.i.i = icmp eq i32 %50, %mb.095
  %and38.i.i = and i32 %30, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38.i.i)
  %tobool39.i.i = icmp ne i32 %and38.i.i, 0
  %51 = select i1 %cmp36.i.i, i1 %tobool39.i.i, i1 false
  br i1 %51, label %if.then42.i.i, label %if.end32.i.i.at91_read_mb.exit.i_crit_edge, !prof !123

if.end32.i.i.at91_read_mb.exit.i_crit_edge:       ; preds = %if.end32.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %at91_read_mb.exit.i

if.then42.i.i:                                    ; preds = %if.end32.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cf.i85) #6
  %52 = ptrtoint ptr %cf.i85 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr inttoptr (i32 -1 to ptr), ptr %cf.i85, align 4, !annotation !122
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at91_rx_overflow_err.__UNIQUE_ID_ddebug459, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@at91_poll_rx, %do.end7.i)) #6
          to label %if.then.i86 [label %do.end7.i], !srcloc !126

if.then.i86:                                      ; preds = %if.then42.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @at91_rx_overflow_err.__UNIQUE_ID_ddebug459, ptr noundef %dev, ptr noundef nonnull @.str.31) #6
  br label %do.end7.i

do.end7.i:                                        ; preds = %if.then.i86, %if.then42.i.i
  %53 = ptrtoint ptr %rx_over_errors.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %rx_over_errors.i, align 4
  %inc.i87 = add i32 %54, 1
  store i32 %inc.i87, ptr %rx_over_errors.i, align 4
  %55 = ptrtoint ptr %rx_errors.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %rx_errors.i, align 4
  %inc8.i = add i32 %56, 1
  store i32 %inc8.i, ptr %rx_errors.i, align 4
  %call9.i88 = call ptr @alloc_can_err_skb(ptr noundef %dev, ptr noundef nonnull %cf.i85) #6
  %tobool10.not.i = icmp eq ptr %call9.i88, null
  br i1 %tobool10.not.i, label %do.end7.i.at91_rx_overflow_err.exit_crit_edge, label %if.end20.i, !prof !123

do.end7.i.at91_rx_overflow_err.exit_crit_edge:    ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %at91_rx_overflow_err.exit

if.end20.i:                                       ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  %57 = ptrtoint ptr %cf.i85 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %cf.i85, align 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %58, align 8
  %or.i = or i32 %60, 4
  store i32 %or.i, ptr %58, align 8
  %61 = load ptr, ptr %cf.i85, align 4
  %arrayidx.i = getelementptr %struct.can_frame, ptr %61, i32 0, i32 5, i32 1
  %62 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 1, ptr %arrayidx.i, align 1
  %call21.i = call i32 @netif_receive_skb(ptr noundef nonnull %call9.i88) #6
  br label %at91_rx_overflow_err.exit

at91_rx_overflow_err.exit:                        ; preds = %if.end20.i, %do.end7.i.at91_rx_overflow_err.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cf.i85) #6
  br label %at91_read_mb.exit.i

at91_read_mb.exit.i:                              ; preds = %at91_rx_overflow_err.exit, %if.end32.i.i.at91_read_mb.exit.i_crit_edge
  %63 = ptrtoint ptr %stats1.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %stats1.i, align 4
  %inc5.i = add i32 %64, 1
  store i32 %inc5.i, ptr %stats1.i, align 4
  %65 = ptrtoint ptr %cf.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %cf.i, align 4
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %66, align 8
  %and.i70 = and i32 %68, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i70)
  %tobool6.not.i = icmp eq i32 %and.i70, 0
  br i1 %tobool6.not.i, label %if.then7.i, label %at91_read_mb.exit.i.if.end8.i_crit_edge

at91_read_mb.exit.i.if.end8.i_crit_edge:          ; preds = %at91_read_mb.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8.i

if.then7.i:                                       ; preds = %at91_read_mb.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %69 = getelementptr inbounds %struct.can_frame, ptr %66, i32 0, i32 1
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %69, align 4
  %conv.i = zext i8 %71 to i32
  %72 = ptrtoint ptr %rx_bytes.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %rx_bytes.i, align 4
  %add.i71 = add i32 %73, %conv.i
  store i32 %add.i71, ptr %rx_bytes.i, align 4
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then7.i, %at91_read_mb.exit.i.if.end8.i_crit_edge
  %call9.i = call i32 @netif_receive_skb(ptr noundef nonnull %call.i) #6
  br label %at91_read_msg.exit

at91_read_msg.exit:                               ; preds = %if.end8.i, %if.then.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cf.i) #6
  %74 = ptrtoint ptr %rx_split.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %rx_split.i.i, align 4
  %sub.i73 = add i32 %75, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %mb.095, i32 %sub.i73)
  %cmp11 = icmp eq i32 %mb.095, %sub.i73
  br i1 %cmp11, label %if.then12, label %if.else

if.then12:                                        ; preds = %at91_read_msg.exit
  call void @__sanitizer_cov_trace_pc() #8
  %notmask.i.i = shl nsw i32 -1, %75
  %sub.i.i = xor i32 %notmask.i.i, -1
  %76 = ptrtoint ptr %devtype_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %devtype_data.i.i.i, align 4
  %notmask5.i.i = shl nsw i32 -1, %77
  %and.i.i74 = and i32 %notmask5.i.i, %sub.i.i
  %78 = call i32 @llvm.bswap.i32(i32 %and.i.i74) #6
  %79 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %reg_base.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %80, i32 36
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %78) #6, !srcloc !124
  br label %if.end17

if.else:                                          ; preds = %at91_read_msg.exit
  call void @__sanitizer_cov_trace_cmp4(i32 %mb.095, i32 %sub.i73)
  %cmp14 = icmp ugt i32 %mb.095, %sub.i73
  br i1 %cmp14, label %if.then15, label %if.else.if.end17_crit_edge

if.else.if.end17_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

if.then15:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %shl.i = shl nuw i32 1, %mb.095
  %81 = call i32 @llvm.bswap.i32(i32 %shl.i) #6
  %82 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %reg_base.i, align 8
  %add.ptr.i.i78 = getelementptr i8, ptr %83, i32 36
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i78, i32 %81) #6, !srcloc !124
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %if.else.if.end17_crit_edge, %if.then12
  %inc = add i32 %received.196, 1
  %dec = add nsw i32 %quota.addr.194, -1
  %84 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %reg_base.i, align 8
  %add.ptr.i80 = getelementptr i8, ptr %85, i32 16
  %86 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i80) #6, !srcloc !121
  %87 = call i32 @llvm.bswap.i32(i32 %86) #6
  %88 = ptrtoint ptr %reg_sr to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %87, ptr %reg_sr, align 4
  %89 = ptrtoint ptr %rx_last.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %rx_last.i.i, align 4
  %add.i82 = add i32 %90, 1
  %91 = ptrtoint ptr %rx_next to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %rx_next, align 8
  %inc21 = add i32 %92, 1
  store i32 %inc21, ptr %rx_next, align 8
  %call22 = call i32 @_find_next_bit_be(ptr noundef nonnull %reg_sr, i32 noundef %add.i82, i32 noundef %inc21) #6
  %93 = ptrtoint ptr %rx_last.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %rx_last.i.i, align 4
  %add.i69 = add i32 %94, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %call22, i32 %add.i69)
  %cmp8 = icmp ult i32 %call22, %add.i69
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %quota.addr.194)
  %cmp9 = icmp sgt i32 %quota.addr.194, 1
  %or.cond = select i1 %cmp8, i1 %cmp9, i1 false
  br i1 %or.cond, label %if.end17.for.body_crit_edge, label %if.end17.for.end_crit_edge

if.end17.for.end_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.end17.for.body_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %if.end17.for.end_crit_edge, %again.for.end_crit_edge
  %quota.addr.1.lcssa = phi i32 [ %quota.addr.0, %again.for.end_crit_edge ], [ %dec, %if.end17.for.end_crit_edge ]
  %mb.0.lcssa = phi i32 [ %call6, %again.for.end_crit_edge ], [ %call22, %if.end17.for.end_crit_edge ]
  %received.1.lcssa = phi i32 [ %received.0, %again.for.end_crit_edge ], [ %inc, %if.end17.for.end_crit_edge ]
  %.lcssa = phi i32 [ %16, %again.for.end_crit_edge ], [ %94, %if.end17.for.end_crit_edge ]
  %cmp9.lcssa = phi i1 [ %cmp992, %again.for.end_crit_edge ], [ %cmp9, %if.end17.for.end_crit_edge ]
  %95 = ptrtoint ptr %rx_next to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %rx_next, align 8
  %97 = ptrtoint ptr %rx_split.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %rx_split.i.i, align 4
  %sub.i84 = add i32 %98, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %96, i32 %sub.i84)
  %cmp25 = icmp ugt i32 %96, %sub.i84
  call void @__sanitizer_cov_trace_cmp4(i32 %mb.0.lcssa, i32 %.lcssa)
  %cmp28 = icmp ugt i32 %mb.0.lcssa, %.lcssa
  %or.cond89 = select i1 %cmp25, i1 %cmp28, i1 false
  br i1 %or.cond89, label %if.then29, label %for.end.if.end35_crit_edge

for.end.if.end35_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end35

if.then29:                                        ; preds = %for.end
  %99 = ptrtoint ptr %devtype_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %devtype_data.i.i.i, align 4
  %101 = ptrtoint ptr %rx_next to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %100, ptr %rx_next, align 8
  br i1 %cmp9.lcssa, label %if.then29.again_crit_edge, label %if.then29.if.end35_crit_edge

if.then29.if.end35_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end35

if.then29.again_crit_edge:                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #8
  br label %again

if.end35:                                         ; preds = %if.then29.if.end35_crit_edge, %for.end.if.end35_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_sr) #6
  ret i32 %received.1.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_complete_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_can_skb(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_receive_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @at91_poll_err_frame(ptr noundef %dev, ptr nocapture noundef %cf, i32 noundef %reg_sr) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %reg_sr, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end11_crit_edge, label %do.body1

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

do.body1:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at91_poll_err_frame.__UNIQUE_ID_ddebug462, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@at91_poll_err_frame, %do.end9)) #6
          to label %if.then7 [label %do.end9], !srcloc !126

if.then7:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @at91_poll_err_frame.__UNIQUE_ID_ddebug462, ptr noundef %dev, ptr noundef nonnull @.str.33) #6
  br label %do.end9

do.end9:                                          ; preds = %if.then7, %do.body1
  %rx_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 4
  %0 = ptrtoint ptr %rx_errors to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rx_errors, align 8
  %inc = add i32 %1, 1
  store i32 %inc, ptr %rx_errors, align 8
  %can_stats = getelementptr i8, ptr %dev, i32 2308
  %2 = ptrtoint ptr %can_stats to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %can_stats, align 4
  %inc10 = add i32 %3, 1
  store i32 %inc10, ptr %can_stats, align 4
  %4 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cf, align 8
  %or = or i32 %5, 136
  store i32 %or, ptr %cf, align 8
  br label %if.end11

if.end11:                                         ; preds = %do.end9, %entry.if.end11_crit_edge
  %and12 = and i32 %reg_sr, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.end11.if.end47_crit_edge, label %do.body16

if.end11.if.end47_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end47

do.body16:                                        ; preds = %if.end11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at91_poll_err_frame.__UNIQUE_ID_ddebug463, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@at91_poll_err_frame, %do.end35)) #6
          to label %if.then30 [label %do.end35], !srcloc !126

if.then30:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @at91_poll_err_frame.__UNIQUE_ID_ddebug463, ptr noundef %dev, ptr noundef nonnull @.str.34) #6
  br label %do.end35

do.end35:                                         ; preds = %if.then30, %do.body16
  %rx_errors37 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 4
  %6 = ptrtoint ptr %rx_errors37 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rx_errors37, align 8
  %inc38 = add i32 %7, 1
  store i32 %inc38, ptr %rx_errors37, align 8
  %can_stats40 = getelementptr i8, ptr %dev, i32 2308
  %8 = ptrtoint ptr %can_stats40 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %can_stats40, align 4
  %inc42 = add i32 %9, 1
  store i32 %inc42, ptr %can_stats40, align 4
  %10 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cf, align 8
  %or44 = or i32 %11, 136
  store i32 %or44, ptr %cf, align 8
  %arrayidx = getelementptr %struct.can_frame, ptr %cf, i32 0, i32 5, i32 2
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx, align 2
  %14 = or i8 %13, 4
  store i8 %14, ptr %arrayidx, align 2
  br label %if.end47

if.end47:                                         ; preds = %do.end35, %if.end11.if.end47_crit_edge
  %and48 = and i32 %reg_sr, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  br i1 %tobool49.not, label %if.end47.if.end76_crit_edge, label %do.body52

if.end47.if.end76_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end76

do.body52:                                        ; preds = %if.end47
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at91_poll_err_frame.__UNIQUE_ID_ddebug464, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@at91_poll_err_frame, %do.end71)) #6
          to label %if.then66 [label %do.end71], !srcloc !126

if.then66:                                        ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @at91_poll_err_frame.__UNIQUE_ID_ddebug464, ptr noundef %dev, ptr noundef nonnull @.str.35) #6
  br label %do.end71

do.end71:                                         ; preds = %if.then66, %do.body52
  %tx_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 5
  %15 = ptrtoint ptr %tx_errors to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tx_errors, align 4
  %inc73 = add i32 %16, 1
  store i32 %inc73, ptr %tx_errors, align 4
  %17 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cf, align 8
  %or75 = or i32 %18, 32
  store i32 %or75, ptr %cf, align 8
  br label %if.end76

if.end76:                                         ; preds = %do.end71, %if.end47.if.end76_crit_edge
  %and77 = and i32 %reg_sr, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and77)
  %tobool78.not = icmp eq i32 %and77, 0
  br i1 %tobool78.not, label %if.end76.if.end115_crit_edge, label %do.body81

if.end76.if.end115_crit_edge:                     ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end115

do.body81:                                        ; preds = %if.end76
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at91_poll_err_frame.__UNIQUE_ID_ddebug465, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@at91_poll_err_frame, %do.end100)) #6
          to label %if.then95 [label %do.end100], !srcloc !126

if.then95:                                        ; preds = %do.body81
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @at91_poll_err_frame.__UNIQUE_ID_ddebug465, ptr noundef %dev, ptr noundef nonnull @.str.36) #6
  br label %do.end100

do.end100:                                        ; preds = %if.then95, %do.body81
  %rx_errors102 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 4
  %19 = ptrtoint ptr %rx_errors102 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rx_errors102, align 8
  %inc103 = add i32 %20, 1
  store i32 %inc103, ptr %rx_errors102, align 8
  %can_stats105 = getelementptr i8, ptr %dev, i32 2308
  %21 = ptrtoint ptr %can_stats105 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %can_stats105, align 4
  %inc107 = add i32 %22, 1
  store i32 %inc107, ptr %can_stats105, align 4
  %23 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cf, align 8
  %or109 = or i32 %24, 136
  store i32 %or109, ptr %cf, align 8
  %arrayidx111 = getelementptr %struct.can_frame, ptr %cf, i32 0, i32 5, i32 2
  %25 = ptrtoint ptr %arrayidx111 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx111, align 2
  %27 = or i8 %26, 2
  store i8 %27, ptr %arrayidx111, align 2
  br label %if.end115

if.end115:                                        ; preds = %do.end100, %if.end76.if.end115_crit_edge
  %and116 = and i32 %reg_sr, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and116)
  %tobool117.not = icmp eq i32 %and116, 0
  br i1 %tobool117.not, label %if.end115.if.end154_crit_edge, label %do.body120

if.end115.if.end154_crit_edge:                    ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end154

do.body120:                                       ; preds = %if.end115
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at91_poll_err_frame.__UNIQUE_ID_ddebug466, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@at91_poll_err_frame, %do.end139)) #6
          to label %if.then134 [label %do.end139], !srcloc !126

if.then134:                                       ; preds = %do.body120
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @at91_poll_err_frame.__UNIQUE_ID_ddebug466, ptr noundef %dev, ptr noundef nonnull @.str.37) #6
  br label %do.end139

do.end139:                                        ; preds = %if.then134, %do.body120
  %tx_errors141 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 5
  %28 = ptrtoint ptr %tx_errors141 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %tx_errors141, align 4
  %inc142 = add i32 %29, 1
  store i32 %inc142, ptr %tx_errors141, align 4
  %can_stats144 = getelementptr i8, ptr %dev, i32 2308
  %30 = ptrtoint ptr %can_stats144 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %can_stats144, align 4
  %inc146 = add i32 %31, 1
  store i32 %inc146, ptr %can_stats144, align 4
  %32 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %cf, align 8
  %or148 = or i32 %33, 136
  store i32 %or148, ptr %cf, align 8
  %arrayidx150 = getelementptr %struct.can_frame, ptr %cf, i32 0, i32 5, i32 2
  %34 = ptrtoint ptr %arrayidx150 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx150, align 2
  %36 = or i8 %35, 1
  store i8 %36, ptr %arrayidx150, align 2
  br label %if.end154

if.end154:                                        ; preds = %do.end139, %if.end115.if.end154_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mb0_id_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mb0_id = getelementptr i8, ptr %dev, i32 1784
  %0 = ptrtoint ptr %mb0_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mb0_id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %tobool.not = icmp sgt i32 %1, -1
  %.str.40..str.39 = select i1 %tobool.not, ptr @.str.40, ptr @.str.39
  %call4 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull %.str.40..str.39, i32 noundef %1) #6
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mb0_id_store(ptr nocapture noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %can_id = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %can_id) #6
  %0 = ptrtoint ptr %can_id to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %can_id, align 4, !annotation !122
  tail call void @rtnl_lock() #6
  %flags = getelementptr i8, ptr %dev, i32 -1000
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags, align 8
  %and = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end:                                           ; preds = %entry
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %can_id) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not = icmp eq i32 %call.i, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %can_id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %can_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool6.not13 = icmp slt i32 %4, 0
  %storemerge.v = select i1 %tobool6.not13, i32 -1610612737, i32 2047
  %storemerge = and i32 %storemerge.v, %4
  %5 = ptrtoint ptr %can_id to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %storemerge, ptr %can_id, align 4
  %mb0_id = getelementptr i8, ptr %dev, i32 1784
  %6 = ptrtoint ptr %mb0_id to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %storemerge, ptr %mb0_id, align 8
  br label %out

out:                                              ; preds = %if.end4, %if.end.out_crit_edge, %entry.out_crit_edge
  %ret.0 = phi i32 [ %count, %if.end4 ], [ -16, %entry.out_crit_edge ], [ %call.i, %if.end.out_crit_edge ]
  call void @rtnl_unlock() #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %can_id) #6
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 50)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 50)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !37, !39, !40, !41, !42, !44, !46, !48, !49, !50, !52, !53, !55, !56, !58, !59, !61, !62, !64, !66, !68, !69, !71, !73, !75, !76, !77, !79, !80, !81, !83, !84, !86, !87, !89, !90, !92, !93, !95, !97, !99, !100, !102, !104, !106, !108, !110}
!llvm.module.flags = !{!112, !113, !114, !115, !116, !117, !118, !119}
!llvm.ident = !{!120}

!0 = !{ptr @__initcall__kmod_at91_can__472_1396_at91_can_driver_init6, !1, !"__initcall__kmod_at91_can__472_1396_at91_can_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/can/at91_can.c", i32 1396, i32 1}
!2 = !{ptr @__exitcall_at91_can_driver_exit, !1, !"__exitcall_at91_can_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author473, !4, !"__UNIQUE_ID_author473", i1 false, i1 false}
!4 = !{!"../drivers/net/can/at91_can.c", i32 1398, i32 1}
!5 = !{ptr @__UNIQUE_ID_file474, !6, !"__UNIQUE_ID_file474", i1 false, i1 false}
!6 = !{!"../drivers/net/can/at91_can.c", i32 1399, i32 1}
!7 = !{ptr @__UNIQUE_ID_license475, !6, !"__UNIQUE_ID_license475", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_description476, !9, !"__UNIQUE_ID_description476", i1 false, i1 false}
!9 = !{!"../drivers/net/can/at91_can.c", i32 1400, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/can/at91_can.c", i32 1390, i32 11}
!12 = !{ptr @at91_can_driver, !13, !"at91_can_driver", i1 false, i1 false}
!13 = !{!"../drivers/net/can/at91_can.c", i32 1386, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/can/at91_can.c", i32 1264, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @at91_can_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @at91_can_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/can/at91_can.c", i32 1269, i32 28}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/can/at91_can.c", i32 1271, i32 3}
!26 = !{ptr @at91_can_probe._entry.7, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @at91_can_probe._entry_ptr.9, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/can/at91_can.c", i32 1330, i32 3}
!30 = !{ptr @at91_can_probe._entry.10, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @at91_can_probe._entry_ptr.12, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/can/at91_can.c", i32 1336, i32 2}
!34 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @at91_can_probe._entry.13, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @at91_can_probe._entry_ptr.16, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/can/at91_can.c", i32 1243, i32 4}
!39 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @at91_can_get_driver_data._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @at91_can_get_driver_data._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @at91_netdev_ops, !43, !"at91_netdev_ops", i1 false, i1 false}
!43 = !{!"../drivers/net/can/at91_can.c", i32 1156, i32 36}
!44 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/can/at91_can.c", i32 1019, i32 20}
!46 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/can/at91_can.c", i32 887, i32 4}
!48 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @at91_irq_err_state.__UNIQUE_ID_ddebug467, !47, !"__UNIQUE_ID_ddebug467", i1 false, i1 false}
!50 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/can/at91_can.c", i32 903, i32 4}
!52 = !{ptr @at91_irq_err_state.__UNIQUE_ID_ddebug468, !51, !"__UNIQUE_ID_ddebug468", i1 false, i1 false}
!53 = !{ptr @.str.23, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/can/at91_can.c", i32 919, i32 4}
!55 = !{ptr @at91_irq_err_state.__UNIQUE_ID_ddebug469, !54, !"__UNIQUE_ID_ddebug469", i1 false, i1 false}
!56 = !{ptr @.str.24, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/can/at91_can.c", i32 938, i32 3}
!58 = !{ptr @at91_irq_err_state.__UNIQUE_ID_ddebug470, !57, !"__UNIQUE_ID_ddebug470", i1 false, i1 false}
!59 = !{ptr @.str.25, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/can/at91_can.c", i32 957, i32 3}
!61 = !{ptr @at91_irq_err_state.__UNIQUE_ID_ddebug471, !60, !"__UNIQUE_ID_ddebug471", i1 false, i1 false}
!62 = !{ptr @.str.26, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/can/at91_can.c", i32 363, i32 19}
!64 = !{ptr @.str.27, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/can/at91_can.c", i32 464, i32 19}
!66 = distinct !{null, !67, !"__already_done", i1 false, i1 false}
!67 = !{!"../include/linux/can/skb.h", i32 104, i32 6}
!68 = !{ptr @.str.28, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @at91_bittiming_const, !70, !"at91_bittiming_const", i1 false, i1 false}
!70 = !{!"../drivers/net/can/at91_can.c", i32 159, i32 41}
!71 = !{ptr @.str.29, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/can/at91_can.c", i32 685, i32 8}
!73 = !{ptr @.str.30, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/can/at91_can.c", i32 542, i32 2}
!75 = !{ptr @.str.31, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @at91_rx_overflow_err.__UNIQUE_ID_ddebug459, !74, !"__UNIQUE_ID_ddebug459", i1 false, i1 false}
!77 = !{ptr @.str.32, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/can/at91_can.c", i32 724, i32 3}
!79 = !{ptr @.str.33, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @at91_poll_err_frame.__UNIQUE_ID_ddebug462, !78, !"__UNIQUE_ID_ddebug462", i1 false, i1 false}
!81 = !{ptr @.str.34, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/can/at91_can.c", i32 732, i32 3}
!83 = !{ptr @at91_poll_err_frame.__UNIQUE_ID_ddebug463, !82, !"__UNIQUE_ID_ddebug463", i1 false, i1 false}
!84 = !{ptr @.str.35, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/can/at91_can.c", i32 741, i32 3}
!86 = !{ptr @at91_poll_err_frame.__UNIQUE_ID_ddebug464, !85, !"__UNIQUE_ID_ddebug464", i1 false, i1 false}
!87 = !{ptr @.str.36, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/can/at91_can.c", i32 748, i32 3}
!89 = !{ptr @at91_poll_err_frame.__UNIQUE_ID_ddebug465, !88, !"__UNIQUE_ID_ddebug465", i1 false, i1 false}
!90 = !{ptr @.str.37, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/can/at91_can.c", i32 757, i32 3}
!92 = !{ptr @at91_poll_err_frame.__UNIQUE_ID_ddebug466, !91, !"__UNIQUE_ID_ddebug466", i1 false, i1 false}
!93 = !{ptr @at91_sysfs_attr_group, !94, !"at91_sysfs_attr_group", i1 false, i1 false}
!94 = !{!"../drivers/net/can/at91_can.c", i32 1217, i32 37}
!95 = !{ptr @at91_sysfs_attrs, !96, !"at91_sysfs_attrs", i1 false, i1 false}
!96 = !{!"../drivers/net/can/at91_can.c", i32 1212, i32 26}
!97 = !{ptr @.str.38, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/net/can/at91_can.c", i32 1210, i32 8}
!99 = !{ptr @dev_attr_mb0_id, !98, !"dev_attr_mb0_id", i1 false, i1 false}
!100 = !{ptr @.str.39, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/can/at91_can.c", i32 1169, i32 26}
!102 = !{ptr @.str.40, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/net/can/at91_can.c", i32 1171, i32 26}
!104 = !{ptr @at91_can_dt_ids, !105, !"at91_can_dt_ids", i1 false, i1 false}
!105 = !{!"../drivers/net/can/at91_can.c", i32 1222, i32 34}
!106 = !{ptr @at91_at91sam9x5_data, !107, !"at91_at91sam9x5_data", i1 false, i1 false}
!107 = !{!"../drivers/net/can/at91_can.c", i32 151, i32 39}
!108 = !{ptr @at91_at91sam9263_data, !109, !"at91_at91sam9263_data", i1 false, i1 false}
!109 = !{!"../drivers/net/can/at91_can.c", i32 143, i32 39}
!110 = !{ptr @at91_can_id_table, !111, !"at91_can_id_table", i1 false, i1 false}
!111 = !{!"../drivers/net/can/at91_can.c", i32 1373, i32 40}
!112 = !{i32 1, !"wchar_size", i32 2}
!113 = !{i32 1, !"min_enum_size", i32 4}
!114 = !{i32 8, !"branch-target-enforcement", i32 0}
!115 = !{i32 8, !"sign-return-address", i32 0}
!116 = !{i32 8, !"sign-return-address-all", i32 0}
!117 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!118 = !{i32 7, !"uwtable", i32 1}
!119 = !{i32 7, !"frame-pointer", i32 2}
!120 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!121 = !{i64 6090732}
!122 = !{!"auto-init"}
!123 = !{!"branch_weights", i32 1, i32 2000}
!124 = !{i64 6090314}
!125 = !{!"branch_weights", i32 2000, i32 1}
!126 = !{i64 2148755030, i64 2148755035, i64 2148755048, i64 2148755092, i64 2148755126, i64 2148755147}
