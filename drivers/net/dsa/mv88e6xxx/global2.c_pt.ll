; ModuleID = '/llk/IR_all_yes/drivers/net/dsa/mv88e6xxx/global2.c_pt.bc'
source_filename = "../drivers/net/dsa/mv88e6xxx/global2.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mv88e6xxx_irq_ops = type { ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mv88e6xxx_info = type { i32, i16, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i8, i8, i32, i8, ptr, i8 }
%struct.ethtool_eeprom = type { i32, i32, i32, i32, [0 x i8] }
%struct.mii_bus = type { ptr, ptr, [61 x i8], ptr, ptr, ptr, ptr, [32 x %struct.mdio_bus_stats], %struct.mutex, ptr, i32, %struct.device, [32 x ptr], i32, i32, [32 x i32], i32, i32, ptr, i32, %struct.mutex, [32 x ptr] }
%struct.mdio_bus_stats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.mv88e6xxx_mdio_bus = type { ptr, ptr, %struct.list_head, i8 }
%struct.mv88e6xxx_chip = type { ptr, i32, ptr, ptr, %struct.mutex, ptr, ptr, i32, ptr, %struct.mutex, i32, %struct.work_struct, %struct.timer_list, %struct.mutex, ptr, i32, %struct.list_head, %struct.idr, %struct.mv88e6xxx_irq, %struct.mv88e6xxx_irq, i32, [64 x i8], i32, [64 x i8], i32, [64 x i8], i32, [64 x i8], i32, [64 x i8], ptr, %struct.kthread_delayed_work, [2 x i8], %struct.cyclecounter, %struct.timecounter, %struct.delayed_work, ptr, %struct.ptp_clock_info, %struct.delayed_work, [16 x %struct.ptp_pin_desc], i16, i16, i16, i32, i32, [12 x %struct.mv88e6xxx_port_hwtstamp], [12 x %struct.mv88e6xxx_port], [5 x ptr] }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.mv88e6xxx_irq = type { i16, %struct.irq_chip, ptr, i32 }
%struct.kthread_delayed_work = type { %struct.kthread_work, %struct.timer_list }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.cyclecounter = type { ptr, i64, i32, i32 }
%struct.timecounter = type { ptr, i64, i64, i64, i64 }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ptp_pin_desc = type { [64 x i8], i32, i32, i32, [5 x i32] }
%struct.mv88e6xxx_port_hwtstamp = type { i32, i32, %struct.sk_buff_head, %struct.sk_buff_head, i32, ptr, i16, %struct.hwtstamp_config }
%struct.sk_buff_head = type { %union.anon.78, i32, %struct.spinlock }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { ptr, ptr }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.mv88e6xxx_port = type { ptr, i32, %struct.mv88e6xxx_vlan, [2 x i64], i64, i64, i64, i64, i64, i32, i8, i8, i8, i32, [64 x i8], ptr }
%struct.mv88e6xxx_vlan = type { i16, i8 }
%struct.mv88e6xxx_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }

@mv88e6097_watchdog_ops = dso_local constant { %struct.mv88e6xxx_irq_ops, [20 x i8] } { %struct.mv88e6xxx_irq_ops { ptr @mv88e6097_watchdog_action, ptr @mv88e6097_watchdog_setup, ptr @mv88e6097_watchdog_free }, [20 x i8] zeroinitializer }, align 32
@mv88e6250_watchdog_ops = dso_local constant { %struct.mv88e6xxx_irq_ops, [20 x i8] } { %struct.mv88e6xxx_irq_ops { ptr @mv88e6097_watchdog_action, ptr @mv88e6250_watchdog_setup, ptr @mv88e6250_watchdog_free }, [20 x i8] zeroinitializer }, align 32
@mv88e6390_watchdog_ops = dso_local constant { %struct.mv88e6xxx_irq_ops, [20 x i8] } { %struct.mv88e6xxx_irq_ops { ptr @mv88e6390_watchdog_action, ptr @mv88e6390_watchdog_setup, ptr @mv88e6390_watchdog_free }, [20 x i8] zeroinitializer }, align 32
@mv88e6xxx_g2_irq_domain_ops = internal constant { %struct.irq_domain_ops, [52 x i8] } { %struct.irq_domain_ops { ptr null, ptr null, ptr @mv88e6xxx_g2_irq_domain_map, ptr null, ptr @irq_domain_xlate_twocell, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@mv88e6xxx_g2_irq_chip = internal constant { %struct.irq_chip, [56 x i8] } { %struct.irq_chip { ptr null, ptr @.str.10, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mv88e6xxx_g2_irq_mask, ptr null, ptr @mv88e6xxx_g2_irq_unmask, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mv88e6xxx_g2_irq_bus_lock, ptr @mv88e6xxx_g2_irq_bus_sync_unlock, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mv88e6xxx-%s-g2\00", [16 x i8] zeroinitializer }, align 32
@mv88e6097_watchdog_action._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 826, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Watchdog event: 0x%04x\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"mv88e6097_watchdog_action\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/net/dsa/mv88e6xxx/global2.c\00", [60 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mv88e6097_watchdog_action._entry_ptr = internal global ptr @mv88e6097_watchdog_action._entry, section ".printk_index", align 4
@mv88e6390_watchdog_action._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.6, ptr @.str.3, i32 903, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"mv88e6390_watchdog_action\00", [38 x i8] zeroinitializer }, align 32
@mv88e6390_watchdog_action._entry_ptr = internal global ptr @mv88e6390_watchdog_action._entry, section ".printk_index", align 4
@mv88e6390_watchdog_action._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.6, ptr @.str.3, i32 910, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Watchdog history: 0x%04x\00", [39 x i8] zeroinitializer }, align 32
@mv88e6390_watchdog_action._entry_ptr.9 = internal global ptr @mv88e6390_watchdog_action._entry.7, section ".printk_index", align 4
@.str.10 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mv88e6xxx-g2\00", [19 x i8] zeroinitializer }, align 32
@mv88e6xxx_g2_irq_bus_sync_unlock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.3, i32 1066, ptr @.str.13, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to mask interrupts\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"mv88e6xxx_g2_irq_bus_sync_unlock\00", [63 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@mv88e6xxx_g2_irq_bus_sync_unlock._entry_ptr = internal global ptr @mv88e6xxx_g2_irq_bus_sync_unlock._entry, section ".printk_index", align 4
@.str.14 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mv88e6xxx-%s-watchdog\00", [42 x i8] zeroinitializer }, align 32
@___asan_gen_.15 = private unnamed_addr constant [23 x i8] c"mv88e6097_watchdog_ops\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 851, i32 32 }
@___asan_gen_.18 = private unnamed_addr constant [23 x i8] c"mv88e6250_watchdog_ops\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 877, i32 32 }
@___asan_gen_.21 = private unnamed_addr constant [23 x i8] c"mv88e6390_watchdog_ops\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 928, i32 32 }
@___asan_gen_.24 = private unnamed_addr constant [28 x i8] c"mv88e6xxx_g2_irq_domain_ops\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 1092, i32 36 }
@___asan_gen_.27 = private unnamed_addr constant [22 x i8] c"mv88e6xxx_g2_irq_chip\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 1071, i32 30 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 1143, i32 4 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 826, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 902, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 909, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 1072, i32 12 }
@___asan_gen_.66 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 1066, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.79 = private constant [39 x i8] c"../drivers/net/dsa/mv88e6xxx/global2.c\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 968, i32 4 }
@llvm.compiler.used = appending global [26 x ptr] [ptr @mv88e6097_watchdog_action._entry, ptr @mv88e6097_watchdog_action._entry_ptr, ptr @mv88e6390_watchdog_action._entry, ptr @mv88e6390_watchdog_action._entry.7, ptr @mv88e6390_watchdog_action._entry_ptr, ptr @mv88e6390_watchdog_action._entry_ptr.9, ptr @mv88e6xxx_g2_irq_bus_sync_unlock._entry, ptr @mv88e6xxx_g2_irq_bus_sync_unlock._entry_ptr, ptr @mv88e6097_watchdog_ops, ptr @mv88e6250_watchdog_ops, ptr @mv88e6390_watchdog_ops, ptr @mv88e6xxx_g2_irq_domain_ops, ptr @mv88e6xxx_g2_irq_chip, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv88e6097_watchdog_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv88e6250_watchdog_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv88e6390_watchdog_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv88e6xxx_g2_irq_domain_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv88e6xxx_g2_irq_chip to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv88e6097_watchdog_action._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv88e6390_watchdog_action._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv88e6390_watchdog_action._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv88e6xxx_g2_irq_bus_sync_unlock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6xxx_g2_read(ptr noundef %chip, i32 noundef %reg, ptr noundef %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 8
  %global2_addr = getelementptr inbounds %struct.mv88e6xxx_info, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %global2_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %global2_addr, align 4
  %call = tail call i32 @mv88e6xxx_read(ptr noundef %chip, i32 noundef %3, i32 noundef %reg, ptr noundef %val) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mv88e6xxx_read(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6xxx_g2_write(ptr noundef %chip, i32 noundef %reg, i16 noundef zeroext %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 8
  %global2_addr = getelementptr inbounds %struct.mv88e6xxx_info, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %global2_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %global2_addr, align 4
  %call = tail call i32 @mv88e6xxx_write(ptr noundef %chip, i32 noundef %3, i32 noundef %reg, i16 noundef zeroext %val) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mv88e6xxx_write(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6xxx_g2_wait_bit(ptr noundef %chip, i32 noundef %reg, i32 noundef %bit, i32 noundef %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 8
  %global2_addr = getelementptr inbounds %struct.mv88e6xxx_info, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %global2_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %global2_addr, align 4
  %call = tail call i32 @mv88e6xxx_wait_bit(ptr noundef %chip, i32 noundef %3, i32 noundef %reg, i32 noundef %bit, i32 noundef %val) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mv88e6xxx_wait_bit(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6185_g2_mgmt_rsvd2cpu(ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  %val.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 8
  %global2_addr.i.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %global2_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %global2_addr.i.i, align 4
  %call.i.i = tail call i32 @mv88e6xxx_write(ptr noundef %chip, i32 noundef %3, i32 noundef 3, i16 noundef zeroext -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i) #6
  %4 = ptrtoint ptr %val.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %val.i, align 2, !annotation !47
  %5 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %chip, align 8
  %global2_addr.i.i4 = getelementptr inbounds %struct.mv88e6xxx_info, ptr %6, i32 0, i32 12
  %7 = ptrtoint ptr %global2_addr.i.i4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %global2_addr.i.i4, align 4
  %call.i.i5 = call i32 @mv88e6xxx_read(ptr noundef %chip, i32 noundef %8, i32 noundef 5, ptr noundef nonnull %val.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i5)
  %tobool.not.i = icmp eq i32 %call.i.i5, 0
  br i1 %tobool.not.i, label %if.then2.i, label %if.end.mv88e6xxx_g2_switch_mgmt_rsvd2cpu.exit_crit_edge

if.end.mv88e6xxx_g2_switch_mgmt_rsvd2cpu.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %mv88e6xxx_g2_switch_mgmt_rsvd2cpu.exit

if.then2.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %val.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %val.i, align 2
  %11 = or i16 %10, 8
  store i16 %11, ptr %val.i, align 2
  %12 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %chip, align 8
  %global2_addr.i1.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %13, i32 0, i32 12
  %14 = ptrtoint ptr %global2_addr.i1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %global2_addr.i1.i, align 4
  %call.i2.i = call i32 @mv88e6xxx_write(ptr noundef %chip, i32 noundef %15, i32 noundef 5, i16 noundef zeroext %11) #6
  br label %mv88e6xxx_g2_switch_mgmt_rsvd2cpu.exit

mv88e6xxx_g2_switch_mgmt_rsvd2cpu.exit:           ; preds = %if.then2.i, %if.end.mv88e6xxx_g2_switch_mgmt_rsvd2cpu.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i2.i, %if.then2.i ], [ %call.i.i5, %if.end.mv88e6xxx_g2_switch_mgmt_rsvd2cpu.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i) #6
  br label %cleanup

cleanup:                                          ; preds = %mv88e6xxx_g2_switch_mgmt_rsvd2cpu.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %mv88e6xxx_g2_switch_mgmt_rsvd2cpu.exit ], [ %call.i.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6352_g2_mgmt_rsvd2cpu(ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  %val.i.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 8
  %global2_addr.i.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %global2_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %global2_addr.i.i, align 4
  %call.i.i = tail call i32 @mv88e6xxx_write(ptr noundef %chip, i32 noundef %3, i32 noundef 2, i16 noundef zeroext -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chip, align 8
  %global2_addr.i.i.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %global2_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %global2_addr.i.i.i, align 4
  %call.i.i.i = tail call i32 @mv88e6xxx_write(ptr noundef %chip, i32 noundef %7, i32 noundef 3, i16 noundef zeroext -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i.i) #6
  %8 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 -1, ptr %val.i.i, align 2, !annotation !47
  %9 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %chip, align 8
  %global2_addr.i.i4.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %10, i32 0, i32 12
  %11 = ptrtoint ptr %global2_addr.i.i4.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %global2_addr.i.i4.i, align 4
  %call.i.i5.i = call i32 @mv88e6xxx_read(ptr noundef %chip, i32 noundef %12, i32 noundef 5, ptr noundef nonnull %val.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i5.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i5.i, 0
  br i1 %tobool.not.i.i, label %if.then2.i.i, label %if.end.i.mv88e6xxx_g2_switch_mgmt_rsvd2cpu.exit.i_crit_edge

if.end.i.mv88e6xxx_g2_switch_mgmt_rsvd2cpu.exit.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mv88e6xxx_g2_switch_mgmt_rsvd2cpu.exit.i

if.then2.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %val.i.i, align 2
  %15 = or i16 %14, 8
  store i16 %15, ptr %val.i.i, align 2
  %16 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %chip, align 8
  %global2_addr.i1.i.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %17, i32 0, i32 12
  %18 = ptrtoint ptr %global2_addr.i1.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %global2_addr.i1.i.i, align 4
  %call.i2.i.i = call i32 @mv88e6xxx_write(ptr noundef %chip, i32 noundef %19, i32 noundef 5, i16 noundef zeroext %15) #6
  br label %mv88e6xxx_g2_switch_mgmt_rsvd2cpu.exit.i

mv88e6xxx_g2_switch_mgmt_rsvd2cpu.exit.i:         ; preds = %if.then2.i.i, %if.end.i.mv88e6xxx_g2_switch_mgmt_rsvd2cpu.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %call.i2.i.i, %if.then2.i.i ], [ %call.i.i5.i, %if.end.i.mv88e6xxx_g2_switch_mgmt_rsvd2cpu.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %mv88e6xxx_g2_switch_mgmt_rsvd2cpu.exit.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i.i, %entry.cleanup_crit_edge ], [ %retval.0.i.i, %mv88e6xxx_g2_switch_mgmt_rsvd2cpu.exit.i ], [ %call.i.i.i, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6xxx_g2_device_mapping_write(ptr noundef %chip, i32 noundef %target, i32 noundef %port) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %shl = shl i32 %target, 8
  %and = and i32 %port, 31
  %conv1 = or i32 %and, %shl
  %0 = trunc i32 %conv1 to i16
  %conv3 = or i16 %0, -32768
  %1 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %chip, align 8
  %global2_addr.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %2, i32 0, i32 12
  %3 = ptrtoint ptr %global2_addr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %global2_addr.i, align 4
  %call.i = tail call i32 @mv88e6xxx_write(ptr noundef %chip, i32 noundef %4, i32 noundef 6, i16 noundef zeroext %conv3) #6
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6xxx_g2_trunk_mask_write(ptr noundef %chip, i32 noundef %num, i1 noundef zeroext %hash, i16 noundef zeroext %mask) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 8
  %num_ports.i.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %num_ports.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_ports.i.i, align 4
  %sub1.i = sub i32 32, %3
  %shr.i = lshr i32 -1, %sub1.i
  %conv.i = trunc i32 %shr.i to i16
  %and12 = and i16 %conv.i, %mask
  %num.tr = trunc i32 %num to i16
  %4 = shl i16 %num.tr, 12
  %conv2 = or i16 %and12, %4
  %5 = or i16 %conv2, 2048
  %spec.select = select i1 %hash, i16 %5, i16 %conv2
  %6 = or i16 %spec.select, -32768
  %global2_addr.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %1, i32 0, i32 12
  %7 = ptrtoint ptr %global2_addr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %global2_addr.i, align 4
  %call.i = tail call i32 @mv88e6xxx_write(ptr noundef %chip, i32 noundef %8, i32 noundef 7, i16 noundef zeroext %6) #6
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6xxx_g2_trunk_mapping_write(ptr noundef %chip, i32 noundef %id, i16 noundef zeroext %map) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 8
  %num_ports.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %num_ports.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_ports.i, align 4
  %notmask = shl nsw i32 -1, %3
  %shl1 = shl i32 %id, 11
  %conv2 = zext i16 %map to i32
  %conv3 = xor i32 %notmask, -1
  %and = and i32 %conv3, %conv2
  %conv5 = or i32 %and, %shl1
  %4 = trunc i32 %conv5 to i16
  %conv7 = or i16 %4, -32768
  %global2_addr.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %1, i32 0, i32 12
  %5 = ptrtoint ptr %global2_addr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %global2_addr.i, align 4
  %call.i = tail call i32 @mv88e6xxx_write(ptr noundef %chip, i32 noundef %6, i32 noundef 8, i16 noundef zeroext %conv7) #6
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6xxx_g2_trunk_clear(ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 8
  %num_ports.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %num_ports.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_ports.i, align 4
  %notmask = shl nsw i32 -1, %3
  %4 = trunc i32 %notmask to i16
  %conv = xor i16 %4, -1
  %sub1.i.i = sub i32 32, %3
  %shr.i.i = lshr i32 -1, %sub1.i.i
  %conv.i.i = trunc i32 %shr.i.i to i16
  %and12.i = and i16 %conv.i.i, %conv
  %5 = or i16 %and12.i, -32768
  %global2_addr.i.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %1, i32 0, i32 12
  %6 = ptrtoint ptr %global2_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %global2_addr.i.i, align 4
  %call.i.i = tail call i32 @mv88e6xxx_write(ptr noundef %chip, i32 noundef %7, i32 noundef 7, i16 noundef zeroext %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not, label %for.cond, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond:                                         ; preds = %entry
  %8 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %chip, align 8
  %num_ports.i.i.i.1 = getelementptr inbounds %struct.mv88e6xxx_info, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %num_ports.i.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_ports.i.i.i.1, align 4
  %sub1.i.i.1 = sub i32 32, %11
  %shr.i.i.1 = lshr i32 -1, %sub1.i.i.1
  %conv.i.i.1 = trunc i32 %shr.i.i.1 to i16
  %and12.i.1 = and i16 %conv.i.i.1, %conv
  %12 = or i16 %and12.i.1, -28672
  %global2_addr.i.i.1 = getelementptr inbounds %struct.mv88e6xxx_info, ptr %9, i32 0, i32 12
  %13 = ptrtoint ptr %global2_addr.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %global2_addr.i.i.1, align 4
  %call.i.i.1 = tail call i32 @mv88e6xxx_write(ptr noundef %chip, i32 noundef %14, i32 noundef 7, i16 noundef zeroext %12) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.1)
  %tobool.not.1 = icmp eq i32 %call.i.i.1, 0
  br i1 %tobool.not.1, label %for.cond.1, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.1:                                       ; preds = %for.cond
  %15 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %chip, align 8
  %num_ports.i.i.i.2 = getelementptr inbounds %struct.mv88e6xxx_info, ptr %16, i32 0, i32 5
  %17 = ptrtoint ptr %num_ports.i.i.i.2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num_ports.i.i.i.2, align 4
  %sub1.i.i.2 = sub i32 32, %18
  %shr.i.i.2 = lshr i32 -1, %sub1.i.i.2
  %conv.i.i.2 = trunc i32 %shr.i.i.2 to i16
  %and12.i.2 = and i16 %conv.i.i.2, %conv
  %19 = or i16 %and12.i.2, -24576
  %global2_addr.i.i.2 = getelementptr inbounds %struct.mv88e6xxx_info, ptr %16, i32 0, i32 12
  %20 = ptrtoint ptr %global2_addr.i.i.2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %global2_addr.i.i.2, align 4
  %call.i.i.2 = tail call i32 @mv88e6xxx_write(ptr noundef %chip, i32 noundef %21, i32 noundef 7, i16 noundef zeroext %19) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.2)
  %tobool.not.2 = icmp eq i32 %call.i.i.2, 0
  br i1 %tobool.not.2, label %for.cond.2, label %for.cond.1.cleanup_crit_edge

for.cond.1.cleanup_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.2:                                       ; preds = %for.cond.1
  %22 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %chip, align 8
  %num_ports.i.i.i.3 = getelementptr inbounds %struct.mv88e6xxx_info, ptr %23, i32 0, i32 5
  %24 = ptrtoint ptr %num_ports.i.i.i.3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %num_ports.i.i.i.3, align 4
  %sub1.i.i.3 = sub i32 32, %25
  %shr.i.i.3 = lshr i32 -1, %sub1.i.i.3
  %conv.i.i.3 = trunc i32 %shr.i.i.3 to i16
  %and12.i.3 = and i16 %conv.i.i.3, %conv
  %26 = or i16 %and12.i.3, -20480
  %global2_addr.i.i.3 = getelementptr inbounds %struct.mv88e6xxx_info, ptr %23, i32 0, i32 12
  %27 = ptrtoint ptr %global2_addr.i.i.3 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %global2_addr.i.i.3, align 4
  %call.i.i.3 = tail call i32 @mv88e6xxx_write(ptr noundef %chip, i32 noundef %28, i32 noundef 7, i16 noundef zeroext %26) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.3)
  %tobool.not.3 = icmp eq i32 %call.i.i.3, 0
  br i1 %tobool.not.3, label %for.cond.3, label %for.cond.2.cleanup_crit_edge

for.cond.2.cleanup_crit_edge:                     ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.3:                                       ; preds = %for.cond.2
  %29 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %chip, align 8
  %num_ports.i.i.i.4 = getelementptr inbounds %struct.mv88e6xxx_info, ptr %30, i32 0, i32 5
  %31 = ptrtoint ptr %num_ports.i.i.i.4 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %num_ports.i.i.i.4, align 4
  %sub1.i.i.4 = sub i32 32, %32
  %shr.i.i.4 = lshr i32 -1, %sub1.i.i.4
  %conv.i.i.4 = trunc i32 %shr.i.i.4 to i16
  %and12.i.4 = and i16 %conv.i.i.4, %conv
  %33 = or i16 %and12.i.4, -16384
  %global2_addr.i.i.4 = getelementptr inbounds %struct.mv88e6xxx_info, ptr %30, i32 0, i32 12
  %34 = ptrtoint ptr %global2_addr.i.i.4 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %global2_addr.i.i.4, align 4
  %call.i.i.4 = tail call i32 @mv88e6xxx_write(ptr noundef %chip, i32 noundef %35, i32 noundef 7, i16 noundef zeroext %33) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.4)
  %tobool.not.4 = icmp eq i32 %call.i.i.4, 0
  br i1 %tobool.not.4, label %for.cond.4, label %for.cond.3.cleanup_crit_edge

for.cond.3.cleanup_crit_edge:                     ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.4:                                       ; preds = %for.cond.3
  %36 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %chip, align 8
  %num_ports.i.i.i.5 = getelementptr inbounds %struct.mv88e6xxx_info, ptr %37, i32 0, i32 5
  %38 = ptrtoint ptr %num_ports.i.i.i.5 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %num_ports.i.i.i.5, align 4
  %sub1.i.i.5 = sub i32 32, %39
  %shr.i.i.5 = lshr i32 -1, %sub1.i.i.5
  %conv.i.i.5 = trunc i32 %shr.i.i.5 to i16
  %and12.i.5 = and i16 %conv.i.i.5, %conv
  %40 = or i16 %and12.i.5, -12288
  %global2_addr.i.i.5 = getelementptr inbounds %struct.mv88e6xxx_info, ptr %37, i32 0, i32 12
  %41 = ptrtoint ptr %global2_addr.i.i.5 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %global2_addr.i.i.5, align 4
  %call.i.i.5 = tail call i32 @mv88e6xxx_write(ptr noundef %chip, i32 noundef %42, i32 noundef 7, i16 noundef zeroext %40) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.5)
  %tobool.not.5 = icmp eq i32 %call.i.i.5, 0
  br i1 %tobool.not.5, label %for.cond.5, label %for.cond.4.cleanup_crit_edge

for.cond.4.cleanup_crit_edge:                     ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.5:                                       ; preds = %for.cond.4
  %43 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %chip, align 8
  %num_ports.i.i.i.6 = getelementptr inbounds %struct.mv88e6xxx_info, ptr %44, i32 0, i32 5
  %45 = ptrtoint ptr %num_ports.i.i.i.6 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %num_ports.i.i.i.6, align 4
  %sub1.i.i.6 = sub i32 32, %46
  %shr.i.i.6 = lshr i32 -1, %sub1.i.i.6
  %conv.i.i.6 = trunc i32 %shr.i.i.6 to i16
  %and12.i.6 = and i16 %conv.i.i.6, %conv
  %47 = or i16 %and12.i.6, -8192
  %global2_addr.i.i.6 = getelementptr inbounds %struct.mv88e6xxx_info, ptr %44, i32 0, i32 12
  %48 = ptrtoint ptr %global2_addr.i.i.6 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %global2_addr.i.i.6, align 4
  %call.i.i.6 = tail call i32 @mv88e6xxx_write(ptr noundef %chip, i32 noundef %49, i32 noundef 7, i16 noundef zeroext %47) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.6)
  %tobool.not.6 = icmp eq i32 %call.i.i.6, 0
  br i1 %tobool.not.6, label %for.cond.6, label %for.cond.5.cleanup_crit_edge

for.cond.5.cleanup_crit_edge:                     ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.6:                                       ; preds = %for.cond.5
  %50 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %chip, align 8
  %num_ports.i.i.i.7 = getelementptr inbounds %struct.mv88e6xxx_info, ptr %51, i32 0, i32 5
  %52 = ptrtoint ptr %num_ports.i.i.i.7 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %num_ports.i.i.i.7, align 4
  %sub1.i.i.7 = sub i32 32, %53
  %shr.i.i.7 = lshr i32 -1, %sub1.i.i.7
  %conv.i.i.7 = trunc i32 %shr.i.i.7 to i16
  %and12.i.7 = and i16 %conv.i.i.7, %conv
  %54 = or i16 %and12.i.7, -4096
  %global2_addr.i.i.7 = getelementptr inbounds %struct.mv88e6xxx_info, ptr %51, i32 0, i32 12
  %55 = ptrtoint ptr %global2_addr.i.i.7 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %global2_addr.i.i.7, align 4
  %call.i.i.7 = tail call i32 @mv88e6xxx_write(ptr noundef %chip, i32 noundef %56, i32 noundef 7, i16 noundef zeroext %54) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.7)
  %tobool.not.7 = icmp eq i32 %call.i.i.7, 0
  br i1 %tobool.not.7, label %for.cond.6.for.body6_crit_edge, label %for.cond.6.cleanup_crit_edge

for.cond.6.cleanup_crit_edge:                     ; preds = %for.cond.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.6.for.body6_crit_edge:                   ; preds = %for.cond.6
  br label %for.body6

for.cond3:                                        ; preds = %for.body6
  %inc12 = add nuw nsw i32 %i.130, 1
  %exitcond.not = icmp eq i32 %inc12, 16
  br i1 %exitcond.not, label %for.cond3.cleanup_crit_edge, label %for.cond3.for.body6_crit_edge

for.cond3.for.body6_crit_edge:                    ; preds = %for.cond3
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body6

for.cond3.cleanup_crit_edge:                      ; preds = %for.cond3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body6:                                        ; preds = %for.cond3.for.body6_crit_edge, %for.cond.6.for.body6_crit_edge
  %i.130 = phi i32 [ %inc12, %for.cond3.for.body6_crit_edge ], [ 0, %for.cond.6.for.body6_crit_edge ]
  %57 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %chip, align 8
  %i.1.tr = trunc i32 %i.130 to i16
  %59 = shl i16 %i.1.tr, 11
  %conv7.i = or i16 %59, -32768
  %global2_addr.i.i26 = getelementptr inbounds %struct.mv88e6xxx_info, ptr %58, i32 0, i32 12
  %60 = ptrtoint ptr %global2_addr.i.i26 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %global2_addr.i.i26, align 4
  %call.i.i27 = tail call i32 @mv88e6xxx_write(ptr noundef %chip, i32 noundef %61, i32 noundef 8, i16 noundef zeroext %conv7.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i27)
  %tobool8.not = icmp eq i32 %call.i.i27, 0
  br i1 %tobool8.not, label %for.cond3, label %for.body6.cleanup_crit_edge

for.body6.cleanup_crit_edge:                      ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %for.body6.cleanup_crit_edge, %for.cond3.cleanup_crit_edge, %for.cond.6.cleanup_crit_edge, %for.cond.5.cleanup_crit_edge, %for.cond.4.cleanup_crit_edge, %for.cond.3.cleanup_crit_edge, %for.cond.2.cleanup_crit_edge, %for.cond.1.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i.i, %entry.cleanup_crit_edge ], [ %call.i.i.1, %for.cond.cleanup_crit_edge ], [ %call.i.i.2, %for.cond.1.cleanup_crit_edge ], [ %call.i.i.3, %for.cond.2.cleanup_crit_edge ], [ %call.i.i.4, %for.cond.3.cleanup_crit_edge ], [ %call.i.i.5, %for.cond.4.cleanup_crit_edge ], [ %call.i.i.6, %for.cond.5.cleanup_crit_edge ], [ %call.i.i.7, %for.cond.6.cleanup_crit_edge ], [ 0, %for.cond3.cleanup_crit_edge ], [ %call.i.i27, %for.body6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6352_g2_irl_init_all(ptr noundef %chip, i32 noundef %port) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %port.tr.i = trunc i32 %port to i16
  %0 = shl i16 %port.tr.i, 8
  %conv5.i = or i16 %0, -28672
  %1 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %chip, align 8
  %global2_addr.i.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %2, i32 0, i32 12
  %3 = ptrtoint ptr %global2_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %global2_addr.i.i, align 4
  %call.i.i = tail call i32 @mv88e6xxx_write(ptr noundef %chip, i32 noundef %4, i32 noundef 9, i16 noundef zeroext %conv5.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.mv88e6xxx_g2_irl_op.exit_crit_edge

entry.mv88e6xxx_g2_irl_op.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %mv88e6xxx_g2_irl_op.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %chip, align 8
  %global2_addr.i.i.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %6, i32 0, i32 12
  %7 = ptrtoint ptr %global2_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %global2_addr.i.i.i, align 4
  %call.i.i.i = tail call i32 @mv88e6xxx_wait_bit(ptr noundef %chip, i32 noundef %8, i32 noundef 9, i32 noundef 15, i32 noundef 0) #6
  br label %mv88e6xxx_g2_irl_op.exit

mv88e6xxx_g2_irl_op.exit:                         ; preds = %if.end.i, %entry.mv88e6xxx_g2_irl_op.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i.i.i, %if.end.i ], [ %call.i.i, %entry.mv88e6xxx_g2_irl_op.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6390_g2_irl_init_all(ptr noundef %chip, i32 noundef %port) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %port.tr.i = trunc i32 %port to i16
  %0 = shl i16 %port.tr.i, 8
  %conv5.i = or i16 %0, -24576
  %1 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %chip, align 8
  %global2_addr.i.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %2, i32 0, i32 12
  %3 = ptrtoint ptr %global2_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %global2_addr.i.i, align 4
  %call.i.i = tail call i32 @mv88e6xxx_write(ptr noundef %chip, i32 noundef %4, i32 noundef 9, i16 noundef zeroext %conv5.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.mv88e6xxx_g2_irl_op.exit_crit_edge

entry.mv88e6xxx_g2_irl_op.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %mv88e6xxx_g2_irl_op.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %chip, align 8
  %global2_addr.i.i.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %6, i32 0, i32 12
  %7 = ptrtoint ptr %global2_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %global2_addr.i.i.i, align 4
  %call.i.i.i = tail call i32 @mv88e6xxx_wait_bit(ptr noundef %chip, i32 noundef %8, i32 noundef 9, i32 noundef 15, i32 noundef 0) #6
  br label %mv88e6xxx_g2_irl_op.exit

mv88e6xxx_g2_irl_op.exit:                         ; preds = %if.end.i, %entry.mv88e6xxx_g2_irl_op.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i.i.i, %if.end.i ], [ %call.i.i, %entry.mv88e6xxx_g2_irl_op.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6xxx_g2_pvt_read(ptr noundef %chip, i32 noundef %src_dev, i32 noundef %src_port, ptr noundef %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 8
  %global2_addr.i.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %global2_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %global2_addr.i.i, align 4
  %call.i.i = tail call i32 @mv88e6xxx_wait_bit(ptr noundef %chip, i32 noundef %3, i32 noundef 11, i32 noundef 15, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %src_dev.tr.i = trunc i32 %src_dev to i16
  %4 = shl i16 %src_dev.tr.i, 4
  %5 = and i16 %4, 496
  %6 = trunc i32 %src_port to i16
  %7 = and i16 %6, 15
  %8 = or i16 %7, %5
  %conv8.i = or i16 %8, -16384
  %9 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %chip, align 8
  %global2_addr.i.i11 = getelementptr inbounds %struct.mv88e6xxx_info, ptr %10, i32 0, i32 12
  %11 = ptrtoint ptr %global2_addr.i.i11 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %global2_addr.i.i11, align 4
  %call.i.i12 = tail call i32 @mv88e6xxx_write(ptr noundef %chip, i32 noundef %12, i32 noundef 11, i16 noundef zeroext %conv8.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i12)
  %tobool.not.i = icmp eq i32 %call.i.i12, 0
  br i1 %tobool.not.i, label %mv88e6xxx_g2_pvt_op.exit, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

mv88e6xxx_g2_pvt_op.exit:                         ; preds = %if.end
  %13 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %chip, align 8
  %global2_addr.i.i.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %14, i32 0, i32 12
  %15 = ptrtoint ptr %global2_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %global2_addr.i.i.i, align 4
  %call.i.i.i = tail call i32 @mv88e6xxx_wait_bit(ptr noundef %chip, i32 noundef %16, i32 noundef 11, i32 noundef 15, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool2.not = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool2.not, label %if.end4, label %mv88e6xxx_g2_pvt_op.exit.cleanup_crit_edge

mv88e6xxx_g2_pvt_op.exit.cleanup_crit_edge:       ; preds = %mv88e6xxx_g2_pvt_op.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %mv88e6xxx_g2_pvt_op.exit
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %chip, align 8
  %global2_addr.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %18, i32 0, i32 12
  %19 = ptrtoint ptr %global2_addr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %global2_addr.i, align 4
  %call.i = tail call i32 @mv88e6xxx_read(ptr noundef %chip, i32 noundef %20, i32 noundef 12, ptr noundef %data) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %mv88e6xxx_g2_pvt_op.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end4 ], [ %call.i.i, %entry.cleanup_crit_edge ], [ %call.i.i.i, %mv88e6xxx_g2_pvt_op.exit.cleanup_crit_edge ], [ %call.i.i12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6xxx_g2_pvt_write(ptr noundef %chip, i32 noundef %src_dev, i32 noundef %src_port, i16 noundef zeroext %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 8
  %global2_addr.i.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %global2_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %global2_addr.i.i, align 4
  %call.i.i = tail call i32 @mv88e6xxx_wait_bit(ptr noundef %chip, i32 noundef %3, i32 noundef 11, i32 noundef 15, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chip, align 8
  %global2_addr.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %global2_addr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %global2_addr.i, align 4
  %call.i = tail call i32 @mv88e6xxx_write(ptr noundef %chip, i32 noundef %7, i32 noundef 12, i16 noundef zeroext %data) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not = icmp eq i32 %call.i, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %src_dev.tr.i = trunc i32 %src_dev to i16
  %8 = shl i16 %src_dev.tr.i, 4
  %9 = and i16 %8, 496
  %10 = trunc i32 %src_port to i16
  %11 = and i16 %10, 15
  %12 = or i16 %11, %9
  %conv8.i = or i16 %12, -20480
  %13 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %chip, align 8
  %global2_addr.i.i11 = getelementptr inbounds %struct.mv88e6xxx_info, ptr %14, i32 0, i32 12
  %15 = ptrtoint ptr %global2_addr.i.i11 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %global2_addr.i.i11, align 4
  %call.i.i12 = tail call i32 @mv88e6xxx_write(ptr noundef %chip, i32 noundef %16, i32 noundef 11, i16 noundef zeroext %conv8.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i12)
  %tobool.not.i = icmp eq i32 %call.i.i12, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %chip, align 8
  %global2_addr.i.i.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %18, i32 0, i32 12
  %19 = ptrtoint ptr %global2_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %global2_addr.i.i.i, align 4
  %call.i.i.i = tail call i32 @mv88e6xxx_wait_bit(ptr noundef %chip, i32 noundef %20, i32 noundef 11, i32 noundef 15, i32 noundef 0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i.i, %entry.cleanup_crit_edge ], [ %call.i, %if.end.cleanup_crit_edge ], [ %call.i.i.i, %if.end.i ], [ %call.i.i12, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6xxx_g2_set_switch_mac(ptr noundef %chip, ptr nocapture noundef readonly %addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %addr, align 1
  %2 = zext i8 %1 to i16
  %conv4.i = or i16 %2, -32768
  %3 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %chip, align 8
  %global2_addr.i.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %4, i32 0, i32 12
  %5 = ptrtoint ptr %global2_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %global2_addr.i.i, align 4
  %call.i.i = tail call i32 @mv88e6xxx_write(ptr noundef %chip, i32 noundef %6, i32 noundef 13, i16 noundef zeroext %conv4.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not, label %for.cond, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.cond:                                         ; preds = %entry
  %arrayidx.1 = getelementptr i8, ptr %addr, i32 1
  %7 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx.1, align 1
  %conv.i.1 = zext i8 %8 to i16
  %conv4.i.1 = or i16 %conv.i.1, -32512
  %9 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %chip, align 8
  %global2_addr.i.i.1 = getelementptr inbounds %struct.mv88e6xxx_info, ptr %10, i32 0, i32 12
  %11 = ptrtoint ptr %global2_addr.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %global2_addr.i.i.1, align 4
  %call.i.i.1 = tail call i32 @mv88e6xxx_write(ptr noundef %chip, i32 noundef %12, i32 noundef 13, i16 noundef zeroext %conv4.i.1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.1)
  %tobool.not.1 = icmp eq i32 %call.i.i.1, 0
  br i1 %tobool.not.1, label %for.cond.1, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.cond.1:                                       ; preds = %for.cond
  %arrayidx.2 = getelementptr i8, ptr %addr, i32 2
  %13 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx.2, align 1
  %conv.i.2 = zext i8 %14 to i16
  %conv4.i.2 = or i16 %conv.i.2, -32256
  %15 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %chip, align 8
  %global2_addr.i.i.2 = getelementptr inbounds %struct.mv88e6xxx_info, ptr %16, i32 0, i32 12
  %17 = ptrtoint ptr %global2_addr.i.i.2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %global2_addr.i.i.2, align 4
  %call.i.i.2 = tail call i32 @mv88e6xxx_write(ptr noundef %chip, i32 noundef %18, i32 noundef 13, i16 noundef zeroext %conv4.i.2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.2)
  %tobool.not.2 = icmp eq i32 %call.i.i.2, 0
  br i1 %tobool.not.2, label %for.cond.2, label %for.cond.1.for.end_crit_edge

for.cond.1.for.end_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.cond.2:                                       ; preds = %for.cond.1
  %arrayidx.3 = getelementptr i8, ptr %addr, i32 3
  %19 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx.3, align 1
  %conv.i.3 = zext i8 %20 to i16
  %conv4.i.3 = or i16 %conv.i.3, -32000
  %21 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %chip, align 8
  %global2_addr.i.i.3 = getelementptr inbounds %struct.mv88e6xxx_info, ptr %22, i32 0, i32 12
  %23 = ptrtoint ptr %global2_addr.i.i.3 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %global2_addr.i.i.3, align 4
  %call.i.i.3 = tail call i32 @mv88e6xxx_write(ptr noundef %chip, i32 noundef %24, i32 noundef 13, i16 noundef zeroext %conv4.i.3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.3)
  %tobool.not.3 = icmp eq i32 %call.i.i.3, 0
  br i1 %tobool.not.3, label %for.cond.3, label %for.cond.2.for.end_crit_edge

for.cond.2.for.end_crit_edge:                     ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.cond.3:                                       ; preds = %for.cond.2
  %arrayidx.4 = getelementptr i8, ptr %addr, i32 4
  %25 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx.4, align 1
  %conv.i.4 = zext i8 %26 to i16
  %conv4.i.4 = or i16 %conv.i.4, -31744
  %27 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %chip, align 8
  %global2_addr.i.i.4 = getelementptr inbounds %struct.mv88e6xxx_info, ptr %28, i32 0, i32 12
  %29 = ptrtoint ptr %global2_addr.i.i.4 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %global2_addr.i.i.4, align 4
  %call.i.i.4 = tail call i32 @mv88e6xxx_write(ptr noundef %chip, i32 noundef %30, i32 noundef 13, i16 noundef zeroext %conv4.i.4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.4)
  %tobool.not.4 = icmp eq i32 %call.i.i.4, 0
  br i1 %tobool.not.4, label %for.cond.4, label %for.cond.3.for.end_crit_edge

for.cond.3.for.end_crit_edge:                     ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.cond.4:                                       ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.5 = getelementptr i8, ptr %addr, i32 5
  %31 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx.5, align 1
  %conv.i.5 = zext i8 %32 to i16
  %conv4.i.5 = or i16 %conv.i.5, -31488
  %33 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %chip, align 8
  %global2_addr.i.i.5 = getelementptr inbounds %struct.mv88e6xxx_info, ptr %34, i32 0, i32 12
  %35 = ptrtoint ptr %global2_addr.i.i.5 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %global2_addr.i.i.5, align 4
  %call.i.i.5 = tail call i32 @mv88e6xxx_write(ptr noundef %chip, i32 noundef %36, i32 noundef 13, i16 noundef zeroext %conv4.i.5) #6
  br label %for.end

for.end:                                          ; preds = %for.cond.4, %for.cond.3.for.end_crit_edge, %for.cond.2.for.end_crit_edge, %for.cond.1.for.end_crit_edge, %for.cond.for.end_crit_edge, %entry.for.end_crit_edge
  %err.1 = phi i32 [ %call.i.i, %entry.for.end_crit_edge ], [ %call.i.i.1, %for.cond.for.end_crit_edge ], [ %call.i.i.2, %for.cond.1.for.end_crit_edge ], [ %call.i.i.3, %for.cond.2.for.end_crit_edge ], [ %call.i.i.4, %for.cond.3.for.end_crit_edge ], [ %call.i.i.5, %for.cond.4 ]
  ret i32 %err.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6xxx_g2_atu_stats_set(ptr noundef %chip, i16 noundef zeroext %kind, i16 noundef zeroext %bin) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %or3 = or i16 %bin, %kind
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 8
  %global2_addr.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %global2_addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %global2_addr.i, align 4
  %call.i = tail call i32 @mv88e6xxx_write(ptr noundef %chip, i32 noundef %3, i32 noundef 14, i16 noundef zeroext %or3) #6
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6xxx_g2_atu_stats_get(ptr noundef %chip, ptr noundef %stats) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 8
  %global2_addr.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %global2_addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %global2_addr.i, align 4
  %call.i = tail call i32 @mv88e6xxx_read(ptr noundef %chip, i32 noundef %3, i32 noundef 14, ptr noundef %stats) #6
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6xxx_g2_pot_clear(ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.04 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %pointer.tr.i = trunc i32 %i.04 to i16
  %0 = shl i16 %pointer.tr.i, 8
  %conv4.i = or i16 %0, -32768
  %1 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %chip, align 8
  %global2_addr.i.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %2, i32 0, i32 12
  %3 = ptrtoint ptr %global2_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %global2_addr.i.i, align 4
  %call.i.i = tail call i32 @mv88e6xxx_write(ptr noundef %chip, i32 noundef %4, i32 noundef 15, i16 noundef zeroext %conv4.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not = icmp ne i32 %call.i.i, 0
  %inc = add nuw nsw i32 %i.04, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %inc)
  %exitcond.not = icmp eq i32 %inc, 16
  %or.cond = select i1 %tobool.not, i1 true, i1 %exitcond.not
  br i1 %or.cond, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  ret i32 %call.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6xxx_g2_get_eeprom8(ptr noundef %chip, ptr nocapture noundef %eeprom, ptr nocapture noundef writeonly %data) local_unnamed_addr #0 align 64 {
entry:
  %cmd.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %offset1 = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom, i32 0, i32 2
  %0 = ptrtoint ptr %offset1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %offset1, align 4
  %len2 = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom, i32 0, i32 3
  %2 = ptrtoint ptr %len2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len2, align 4
  store i32 0, ptr %len2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not18 = icmp eq i32 %3, 0
  br i1 %tobool.not18, label %entry.cleanup_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.body:                                       ; preds = %if.end.while.body_crit_edge, %entry.while.body_crit_edge
  %len.021 = phi i32 [ %dec, %if.end.while.body_crit_edge ], [ %3, %entry.while.body_crit_edge ]
  %offset.020 = phi i32 [ %inc6, %if.end.while.body_crit_edge ], [ %1, %entry.while.body_crit_edge ]
  %data.addr.019 = phi ptr [ %incdec.ptr, %if.end.while.body_crit_edge ], [ %data, %entry.while.body_crit_edge ]
  %conv = trunc i32 %offset.020 to i16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %cmd.i) #6
  %4 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 16384, ptr %cmd.i, align 2
  %5 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %chip, align 8
  %global2_addr.i.i.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %6, i32 0, i32 12
  %7 = ptrtoint ptr %global2_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %global2_addr.i.i.i, align 4
  %call.i.i.i = call i32 @mv88e6xxx_wait_bit(ptr noundef %chip, i32 noundef %8, i32 noundef 20, i32 noundef 15, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %mv88e6xxx_g2_eeprom_wait.exit.i, label %while.body.mv88e6xxx_g2_eeprom_read8.exit.thread_crit_edge

while.body.mv88e6xxx_g2_eeprom_read8.exit.thread_crit_edge: ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %mv88e6xxx_g2_eeprom_read8.exit.thread

mv88e6xxx_g2_eeprom_wait.exit.i:                  ; preds = %while.body
  %9 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %chip, align 8
  %global2_addr.i6.i.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %10, i32 0, i32 12
  %11 = ptrtoint ptr %global2_addr.i6.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %global2_addr.i6.i.i, align 4
  %call.i7.i.i = call i32 @mv88e6xxx_wait_bit(ptr noundef %chip, i32 noundef %12, i32 noundef 20, i32 noundef 11, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i7.i.i)
  %tobool.not.i = icmp eq i32 %call.i7.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %mv88e6xxx_g2_eeprom_wait.exit.i.mv88e6xxx_g2_eeprom_read8.exit.thread_crit_edge

mv88e6xxx_g2_eeprom_wait.exit.i.mv88e6xxx_g2_eeprom_read8.exit.thread_crit_edge: ; preds = %mv88e6xxx_g2_eeprom_wait.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mv88e6xxx_g2_eeprom_read8.exit.thread

if.end.i:                                         ; preds = %mv88e6xxx_g2_eeprom_wait.exit.i
  %13 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %chip, align 8
  %global2_addr.i.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %14, i32 0, i32 12
  %15 = ptrtoint ptr %global2_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %global2_addr.i.i, align 4
  %call.i.i = call i32 @mv88e6xxx_write(ptr noundef %chip, i32 noundef %16, i32 noundef 21, i16 noundef zeroext %conv) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool2.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i.mv88e6xxx_g2_eeprom_read8.exit.thread_crit_edge

if.end.i.mv88e6xxx_g2_eeprom_read8.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mv88e6xxx_g2_eeprom_read8.exit.thread

if.end4.i:                                        ; preds = %if.end.i
  %17 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %cmd.i, align 2
  %19 = or i16 %18, -32768
  %20 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %chip, align 8
  %global2_addr.i.i25.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %21, i32 0, i32 12
  %22 = ptrtoint ptr %global2_addr.i.i25.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %global2_addr.i.i25.i, align 4
  %call.i.i26.i = call i32 @mv88e6xxx_write(ptr noundef %chip, i32 noundef %23, i32 noundef 20, i16 noundef zeroext %19) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i26.i)
  %tobool.not.i27.i = icmp eq i32 %call.i.i26.i, 0
  br i1 %tobool.not.i27.i, label %if.end.i28.i, label %if.end4.i.mv88e6xxx_g2_eeprom_read8.exit.thread_crit_edge

if.end4.i.mv88e6xxx_g2_eeprom_read8.exit.thread_crit_edge: ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mv88e6xxx_g2_eeprom_read8.exit.thread

if.end.i28.i:                                     ; preds = %if.end4.i
  %24 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %chip, align 8
  %global2_addr.i.i.i.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %25, i32 0, i32 12
  %26 = ptrtoint ptr %global2_addr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %global2_addr.i.i.i.i, align 4
  %call.i.i.i.i = call i32 @mv88e6xxx_wait_bit(ptr noundef %chip, i32 noundef %27, i32 noundef 20, i32 noundef 15, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %mv88e6xxx_g2_eeprom_cmd.exit.i, label %if.end.i28.i.mv88e6xxx_g2_eeprom_read8.exit.thread_crit_edge

if.end.i28.i.mv88e6xxx_g2_eeprom_read8.exit.thread_crit_edge: ; preds = %if.end.i28.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mv88e6xxx_g2_eeprom_read8.exit.thread

mv88e6xxx_g2_eeprom_cmd.exit.i:                   ; preds = %if.end.i28.i
  %28 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %chip, align 8
  %global2_addr.i6.i.i.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %29, i32 0, i32 12
  %30 = ptrtoint ptr %global2_addr.i6.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %global2_addr.i6.i.i.i, align 4
  %call.i7.i.i.i = call i32 @mv88e6xxx_wait_bit(ptr noundef %chip, i32 noundef %31, i32 noundef 20, i32 noundef 11, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i7.i.i.i)
  %tobool6.not.i = icmp eq i32 %call.i7.i.i.i, 0
  br i1 %tobool6.not.i, label %if.end8.i, label %mv88e6xxx_g2_eeprom_cmd.exit.i.mv88e6xxx_g2_eeprom_read8.exit.thread_crit_edge

mv88e6xxx_g2_eeprom_cmd.exit.i.mv88e6xxx_g2_eeprom_read8.exit.thread_crit_edge: ; preds = %mv88e6xxx_g2_eeprom_cmd.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mv88e6xxx_g2_eeprom_read8.exit.thread

if.end8.i:                                        ; preds = %mv88e6xxx_g2_eeprom_cmd.exit.i
  %32 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %chip, align 8
  %global2_addr.i30.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %33, i32 0, i32 12
  %34 = ptrtoint ptr %global2_addr.i30.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %global2_addr.i30.i, align 4
  %call.i31.i = call i32 @mv88e6xxx_read(ptr noundef %chip, i32 noundef %35, i32 noundef 20, ptr noundef nonnull %cmd.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i31.i)
  %tobool10.not.i = icmp eq i32 %call.i31.i, 0
  br i1 %tobool10.not.i, label %if.end, label %if.end8.i.mv88e6xxx_g2_eeprom_read8.exit.thread_crit_edge

if.end8.i.mv88e6xxx_g2_eeprom_read8.exit.thread_crit_edge: ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mv88e6xxx_g2_eeprom_read8.exit.thread

mv88e6xxx_g2_eeprom_read8.exit.thread:            ; preds = %if.end8.i.mv88e6xxx_g2_eeprom_read8.exit.thread_crit_edge, %mv88e6xxx_g2_eeprom_cmd.exit.i.mv88e6xxx_g2_eeprom_read8.exit.thread_crit_edge, %if.end.i28.i.mv88e6xxx_g2_eeprom_read8.exit.thread_crit_edge, %if.end4.i.mv88e6xxx_g2_eeprom_read8.exit.thread_crit_edge, %if.end.i.mv88e6xxx_g2_eeprom_read8.exit.thread_crit_edge, %mv88e6xxx_g2_eeprom_wait.exit.i.mv88e6xxx_g2_eeprom_read8.exit.thread_crit_edge, %while.body.mv88e6xxx_g2_eeprom_read8.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call.i.i26.i, %if.end4.i.mv88e6xxx_g2_eeprom_read8.exit.thread_crit_edge ], [ %call.i.i.i.i, %if.end.i28.i.mv88e6xxx_g2_eeprom_read8.exit.thread_crit_edge ], [ %call.i.i.i, %while.body.mv88e6xxx_g2_eeprom_read8.exit.thread_crit_edge ], [ %call.i31.i, %if.end8.i.mv88e6xxx_g2_eeprom_read8.exit.thread_crit_edge ], [ %call.i7.i.i.i, %mv88e6xxx_g2_eeprom_cmd.exit.i.mv88e6xxx_g2_eeprom_read8.exit.thread_crit_edge ], [ %call.i.i, %if.end.i.mv88e6xxx_g2_eeprom_read8.exit.thread_crit_edge ], [ %call.i7.i.i, %mv88e6xxx_g2_eeprom_wait.exit.i.mv88e6xxx_g2_eeprom_read8.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cmd.i) #6
  br label %cleanup

if.end:                                           ; preds = %if.end8.i
  %36 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %cmd.i, align 2
  %conv13.i = trunc i16 %37 to i8
  %38 = ptrtoint ptr %data.addr.019 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv13.i, ptr %data.addr.019, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cmd.i) #6
  %39 = ptrtoint ptr %len2 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %len2, align 4
  %inc = add i32 %40, 1
  store i32 %inc, ptr %len2, align 4
  %inc6 = add i32 %offset.020, 1
  %incdec.ptr = getelementptr i8, ptr %data.addr.019, i32 1
  %dec = add i32 %len.021, -1
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %if.end.cleanup_crit_edge, %mv88e6xxx_g2_eeprom_read8.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i.ph, %mv88e6xxx_g2_eeprom_read8.exit.thread ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6xxx_g2_set_eeprom8(ptr noundef %chip, ptr nocapture noundef %eeprom, ptr nocapture noundef readonly %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %offset1 = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom, i32 0, i32 2
  %0 = ptrtoint ptr %offset1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %offset1, align 4
  %len2 = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom, i32 0, i32 3
  %2 = ptrtoint ptr %len2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len2, align 4
  store i32 0, ptr %len2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not18 = icmp eq i32 %3, 0
  br i1 %tobool.not18, label %entry.cleanup_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.body:                                       ; preds = %if.end.while.body_crit_edge, %entry.while.body_crit_edge
  %len.021 = phi i32 [ %dec, %if.end.while.body_crit_edge ], [ %3, %entry.while.body_crit_edge ]
  %offset.020 = phi i32 [ %inc6, %if.end.while.body_crit_edge ], [ %1, %entry.while.body_crit_edge ]
  %data.addr.019 = phi ptr [ %incdec.ptr, %if.end.while.body_crit_edge ], [ %data, %entry.while.body_crit_edge ]
  %conv = trunc i32 %offset.020 to i16
  %4 = ptrtoint ptr %data.addr.019 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %data.addr.019, align 1
  %6 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chip, align 8
  %global2_addr.i.i.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %7, i32 0, i32 12
  %8 = ptrtoint ptr %global2_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %global2_addr.i.i.i, align 4
  %call.i.i.i = tail call i32 @mv88e6xxx_wait_bit(ptr noundef %chip, i32 noundef %9, i32 noundef 20, i32 noundef 15, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %mv88e6xxx_g2_eeprom_wait.exit.i, label %while.body.cleanup_crit_edge

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

mv88e6xxx_g2_eeprom_wait.exit.i:                  ; preds = %while.body
  %10 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %chip, align 8
  %global2_addr.i6.i.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %11, i32 0, i32 12
  %12 = ptrtoint ptr %global2_addr.i6.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %global2_addr.i6.i.i, align 4
  %call.i7.i.i = tail call i32 @mv88e6xxx_wait_bit(ptr noundef %chip, i32 noundef %13, i32 noundef 20, i32 noundef 11, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i7.i.i)
  %tobool.not.i = icmp eq i32 %call.i7.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %mv88e6xxx_g2_eeprom_wait.exit.i.cleanup_crit_edge

mv88e6xxx_g2_eeprom_wait.exit.i.cleanup_crit_edge: ; preds = %mv88e6xxx_g2_eeprom_wait.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %mv88e6xxx_g2_eeprom_wait.exit.i
  %14 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %chip, align 8
  %global2_addr.i.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %15, i32 0, i32 12
  %16 = ptrtoint ptr %global2_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %global2_addr.i.i, align 4
  %call.i.i = tail call i32 @mv88e6xxx_write(ptr noundef %chip, i32 noundef %17, i32 noundef 21, i16 noundef zeroext %conv) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool2.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4.i:                                        ; preds = %if.end.i
  %conv5.i = zext i8 %5 to i16
  %18 = or i16 %conv5.i, -19456
  %19 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %chip, align 8
  %global2_addr.i.i14.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %20, i32 0, i32 12
  %21 = ptrtoint ptr %global2_addr.i.i14.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %global2_addr.i.i14.i, align 4
  %call.i.i15.i = tail call i32 @mv88e6xxx_write(ptr noundef %chip, i32 noundef %22, i32 noundef 20, i16 noundef zeroext %18) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i15.i)
  %tobool.not.i16.i = icmp eq i32 %call.i.i15.i, 0
  br i1 %tobool.not.i16.i, label %if.end.i17.i, label %if.end4.i.cleanup_crit_edge

if.end4.i.cleanup_crit_edge:                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i17.i:                                     ; preds = %if.end4.i
  %23 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %chip, align 8
  %global2_addr.i.i.i.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %24, i32 0, i32 12
  %25 = ptrtoint ptr %global2_addr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %global2_addr.i.i.i.i, align 4
  %call.i.i.i.i = tail call i32 @mv88e6xxx_wait_bit(ptr noundef %chip, i32 noundef %26, i32 noundef 20, i32 noundef 15, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %mv88e6xxx_g2_eeprom_write8.exit, label %if.end.i17.i.cleanup_crit_edge

if.end.i17.i.cleanup_crit_edge:                   ; preds = %if.end.i17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

mv88e6xxx_g2_eeprom_write8.exit:                  ; preds = %if.end.i17.i
  %27 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %chip, align 8
  %global2_addr.i6.i.i.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %28, i32 0, i32 12
  %29 = ptrtoint ptr %global2_addr.i6.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %global2_addr.i6.i.i.i, align 4
  %call.i7.i.i.i = tail call i32 @mv88e6xxx_wait_bit(ptr noundef %chip, i32 noundef %30, i32 noundef 20, i32 noundef 11, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i7.i.i.i)
  %tobool4.not = icmp eq i32 %call.i7.i.i.i, 0
  br i1 %tobool4.not, label %if.end, label %mv88e6xxx_g2_eeprom_write8.exit.cleanup_crit_edge

mv88e6xxx_g2_eeprom_write8.exit.cleanup_crit_edge: ; preds = %mv88e6xxx_g2_eeprom_write8.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %mv88e6xxx_g2_eeprom_write8.exit
  %31 = ptrtoint ptr %len2 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %len2, align 4
  %inc = add i32 %32, 1
  store i32 %inc, ptr %len2, align 4
  %inc6 = add i32 %offset.020, 1
  %incdec.ptr = getelementptr i8, ptr %data.addr.019, i32 1
  %dec = add i32 %len.021, -1
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %if.end.cleanup_crit_edge, %mv88e6xxx_g2_eeprom_write8.exit.cleanup_crit_edge, %if.end.i17.i.cleanup_crit_edge, %if.end4.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %mv88e6xxx_g2_eeprom_wait.exit.i.cleanup_crit_edge, %while.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call.i.i.i, %while.body.cleanup_crit_edge ], [ %call.i.i.i.i, %if.end.i17.i.cleanup_crit_edge ], [ %call.i.i15.i, %if.end4.i.cleanup_crit_edge ], [ %call.i.i, %if.end.i.cleanup_crit_edge ], [ %call.i7.i.i, %mv88e6xxx_g2_eeprom_wait.exit.i.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %call.i7.i.i.i, %mv88e6xxx_g2_eeprom_write8.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6xxx_g2_get_eeprom16(ptr noundef %chip, ptr nocapture noundef %eeprom, ptr nocapture noundef writeonly %data) local_unnamed_addr #0 align 64 {
entry:
  %val = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %offset1 = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom, i32 0, i32 2
  %0 = ptrtoint ptr %offset1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %offset1, align 4
  %len2 = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom, i32 0, i32 3
  %2 = ptrtoint ptr %len2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len2, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val) #6
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %val, align 2, !annotation !47
  %5 = ptrtoint ptr %len2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %len2, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end12_crit_edge, label %if.then

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.then:                                          ; preds = %entry
  %shr = lshr i32 %1, 1
  %conv = trunc i32 %shr to i8
  %call = call fastcc i32 @mv88e6xxx_g2_eeprom_read16(ptr noundef %chip, i8 noundef zeroext %conv, ptr noundef nonnull %val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %val, align 2
  %8 = lshr i16 %7, 8
  %conv9 = trunc i16 %8 to i8
  %incdec.ptr = getelementptr i8, ptr %data, i32 1
  %9 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv9, ptr %data, align 1
  %inc = add i32 %1, 1
  %dec = add i32 %3, -1
  %10 = ptrtoint ptr %len2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len2, align 4
  %inc11 = add i32 %11, 1
  store i32 %inc11, ptr %len2, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.end, %entry.if.end12_crit_edge
  %data.addr.0 = phi ptr [ %incdec.ptr, %if.end ], [ %data, %entry.if.end12_crit_edge ]
  %offset.0 = phi i32 [ %inc, %if.end ], [ %1, %entry.if.end12_crit_edge ]
  %len.0 = phi i32 [ %dec, %if.end ], [ %3, %entry.if.end12_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %len.0)
  %cmp79 = icmp ugt i32 %len.0, 1
  br i1 %cmp79, label %if.end12.while.body_crit_edge, label %if.end12.while.end_crit_edge

if.end12.while.end_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

if.end12.while.body_crit_edge:                    ; preds = %if.end12
  br label %while.body

while.body:                                       ; preds = %if.end19.while.body_crit_edge, %if.end12.while.body_crit_edge
  %len.182 = phi i32 [ %sub, %if.end19.while.body_crit_edge ], [ %len.0, %if.end12.while.body_crit_edge ]
  %offset.181 = phi i32 [ %add, %if.end19.while.body_crit_edge ], [ %offset.0, %if.end12.while.body_crit_edge ]
  %data.addr.180 = phi ptr [ %incdec.ptr28, %if.end19.while.body_crit_edge ], [ %data.addr.0, %if.end12.while.body_crit_edge ]
  %shr14 = lshr i32 %offset.181, 1
  %conv15 = trunc i32 %shr14 to i8
  %call16 = call fastcc i32 @mv88e6xxx_g2_eeprom_read16(ptr noundef %chip, i8 noundef zeroext %conv15, ptr noundef nonnull %val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %while.body.cleanup_crit_edge

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end19:                                         ; preds = %while.body
  %12 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %val, align 2
  %conv22 = trunc i16 %13 to i8
  %incdec.ptr23 = getelementptr i8, ptr %data.addr.180, i32 1
  %14 = ptrtoint ptr %data.addr.180 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv22, ptr %data.addr.180, align 1
  %15 = lshr i16 %13, 8
  %conv27 = trunc i16 %15 to i8
  %incdec.ptr28 = getelementptr i8, ptr %data.addr.180, i32 2
  %16 = ptrtoint ptr %incdec.ptr23 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv27, ptr %incdec.ptr23, align 1
  %add = add i32 %offset.181, 2
  %sub = add i32 %len.182, -2
  %17 = ptrtoint ptr %len2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %len2, align 4
  %add30 = add i32 %18, 2
  store i32 %add30, ptr %len2, align 4
  %cmp = icmp ugt i32 %sub, 1
  br i1 %cmp, label %if.end19.while.body_crit_edge, label %if.end19.while.end_crit_edge

if.end19.while.end_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

if.end19.while.body_crit_edge:                    ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.end:                                        ; preds = %if.end19.while.end_crit_edge, %if.end12.while.end_crit_edge
  %data.addr.1.lcssa = phi ptr [ %data.addr.0, %if.end12.while.end_crit_edge ], [ %incdec.ptr28, %if.end19.while.end_crit_edge ]
  %offset.1.lcssa = phi i32 [ %offset.0, %if.end12.while.end_crit_edge ], [ %add, %if.end19.while.end_crit_edge ]
  %len.1.lcssa = phi i32 [ %len.0, %if.end12.while.end_crit_edge ], [ %sub, %if.end19.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.1.lcssa)
  %tobool31.not = icmp eq i32 %len.1.lcssa, 0
  br i1 %tobool31.not, label %while.end.cleanup_crit_edge, label %if.then32

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then32:                                        ; preds = %while.end
  %shr33 = lshr i32 %offset.1.lcssa, 1
  %conv34 = trunc i32 %shr33 to i8
  %call35 = call fastcc i32 @mv88e6xxx_g2_eeprom_read16(ptr noundef %chip, i8 noundef zeroext %conv34, ptr noundef nonnull %val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end38, label %if.then32.cleanup_crit_edge

if.then32.cleanup_crit_edge:                      ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end38:                                         ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %val, align 2
  %conv41 = trunc i16 %20 to i8
  %21 = ptrtoint ptr %data.addr.1.lcssa to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv41, ptr %data.addr.1.lcssa, align 1
  %22 = ptrtoint ptr %len2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %len2, align 4
  %inc46 = add i32 %23, 1
  store i32 %inc46, ptr %len2, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end38, %if.then32.cleanup_crit_edge, %while.end.cleanup_crit_edge, %while.body.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then.cleanup_crit_edge ], [ %call35, %if.then32.cleanup_crit_edge ], [ 0, %if.end38 ], [ 0, %while.end.cleanup_crit_edge ], [ %call16, %while.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mv88e6xxx_g2_eeprom_read16(ptr noundef %chip, i8 noundef zeroext %addr, ptr noundef %data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 8
  %global2_addr.i.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %global2_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %global2_addr.i.i, align 4
  %call.i.i = tail call i32 @mv88e6xxx_wait_bit(ptr noundef %chip, i32 noundef %3, i32 noundef 20, i32 noundef 15, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %mv88e6xxx_g2_eeprom_wait.exit, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

mv88e6xxx_g2_eeprom_wait.exit:                    ; preds = %entry
  %4 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chip, align 8
  %global2_addr.i6.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %global2_addr.i6.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %global2_addr.i6.i, align 4
  %call.i7.i = tail call i32 @mv88e6xxx_wait_bit(ptr noundef %chip, i32 noundef %7, i32 noundef 20, i32 noundef 11, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i7.i)
  %tobool.not = icmp eq i32 %call.i7.i, 0
  br i1 %tobool.not, label %if.end, label %mv88e6xxx_g2_eeprom_wait.exit.cleanup_crit_edge

mv88e6xxx_g2_eeprom_wait.exit.cleanup_crit_edge:  ; preds = %mv88e6xxx_g2_eeprom_wait.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %mv88e6xxx_g2_eeprom_wait.exit
  %conv = zext i8 %addr to i16
  %8 = or i16 %conv, -16384
  %9 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %chip, align 8
  %global2_addr.i.i13 = getelementptr inbounds %struct.mv88e6xxx_info, ptr %10, i32 0, i32 12
  %11 = ptrtoint ptr %global2_addr.i.i13 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %global2_addr.i.i13, align 4
  %call.i.i14 = tail call i32 @mv88e6xxx_write(ptr noundef %chip, i32 noundef %12, i32 noundef 20, i16 noundef zeroext %8) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i14)
  %tobool.not.i15 = icmp eq i32 %call.i.i14, 0
  br i1 %tobool.not.i15, label %if.end.i16, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i16:                                       ; preds = %if.end
  %13 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %chip, align 8
  %global2_addr.i.i.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %14, i32 0, i32 12
  %15 = ptrtoint ptr %global2_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %global2_addr.i.i.i, align 4
  %call.i.i.i = tail call i32 @mv88e6xxx_wait_bit(ptr noundef %chip, i32 noundef %16, i32 noundef 20, i32 noundef 15, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %mv88e6xxx_g2_eeprom_cmd.exit, label %if.end.i16.cleanup_crit_edge

if.end.i16.cleanup_crit_edge:                     ; preds = %if.end.i16
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

mv88e6xxx_g2_eeprom_cmd.exit:                     ; preds = %if.end.i16
  %17 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %chip, align 8
  %global2_addr.i6.i.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %18, i32 0, i32 12
  %19 = ptrtoint ptr %global2_addr.i6.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %global2_addr.i6.i.i, align 4
  %call.i7.i.i = tail call i32 @mv88e6xxx_wait_bit(ptr noundef %chip, i32 noundef %20, i32 noundef 20, i32 noundef 11, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i7.i.i)
  %tobool3.not = icmp eq i32 %call.i7.i.i, 0
  br i1 %tobool3.not, label %if.end5, label %mv88e6xxx_g2_eeprom_cmd.exit.cleanup_crit_edge

mv88e6xxx_g2_eeprom_cmd.exit.cleanup_crit_edge:   ; preds = %mv88e6xxx_g2_eeprom_cmd.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %mv88e6xxx_g2_eeprom_cmd.exit
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %chip, align 8
  %global2_addr.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %22, i32 0, i32 12
  %23 = ptrtoint ptr %global2_addr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %global2_addr.i, align 4
  %call.i = tail call i32 @mv88e6xxx_read(ptr noundef %chip, i32 noundef %24, i32 noundef 21, ptr noundef %data) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %mv88e6xxx_g2_eeprom_cmd.exit.cleanup_crit_edge, %if.end.i16.cleanup_crit_edge, %if.end.cleanup_crit_edge, %mv88e6xxx_g2_eeprom_wait.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end5 ], [ %call.i7.i, %mv88e6xxx_g2_eeprom_wait.exit.cleanup_crit_edge ], [ %call.i7.i.i, %mv88e6xxx_g2_eeprom_cmd.exit.cleanup_crit_edge ], [ %call.i.i, %entry.cleanup_crit_edge ], [ %call.i.i.i, %if.end.i16.cleanup_crit_edge ], [ %call.i.i14, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6xxx_g2_set_eeprom16(ptr noundef %chip, ptr nocapture noundef %eeprom, ptr nocapture noundef readonly %data) local_unnamed_addr #0 align 64 {
entry:
  %val = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %offset1 = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom, i32 0, i32 2
  %0 = ptrtoint ptr %offset1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %offset1, align 4
  %len2 = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom, i32 0, i32 3
  %2 = ptrtoint ptr %len2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len2, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val) #6
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %val, align 2, !annotation !47
  %5 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %chip, align 8
  %global2_addr.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %6, i32 0, i32 12
  %7 = ptrtoint ptr %global2_addr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %global2_addr.i, align 4
  %call.i = call i32 @mv88e6xxx_read(ptr noundef %chip, i32 noundef %8, i32 noundef 20, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %val, align 2
  %11 = and i16 %10, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool3.not = icmp eq i16 %11, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %12 = ptrtoint ptr %len2 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %len2, align 4
  %and7 = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.end5.if.end27_crit_edge, label %if.then9

if.end5.if.end27_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

if.then9:                                         ; preds = %if.end5
  %shr = lshr i32 %1, 1
  %conv10 = trunc i32 %shr to i8
  %call11 = call fastcc i32 @mv88e6xxx_g2_eeprom_read16(ptr noundef %chip, i8 noundef zeroext %conv10, ptr noundef nonnull %val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.then9.cleanup_crit_edge

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end14:                                         ; preds = %if.then9
  %13 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %data, align 1
  %conv15 = zext i8 %14 to i16
  %shl = shl nuw i16 %conv15, 8
  %15 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %val, align 2
  %17 = and i16 %16, 255
  %or = or i16 %shl, %17
  store i16 %or, ptr %val, align 2
  %call21 = call fastcc i32 @mv88e6xxx_g2_eeprom_write16(ptr noundef %chip, i8 noundef zeroext %conv10, i16 noundef zeroext %or)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end24:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  %incdec.ptr = getelementptr i8, ptr %data, i32 1
  %inc = add i32 %1, 1
  %dec = add i32 %3, -1
  %18 = ptrtoint ptr %len2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %len2, align 4
  %inc26 = add i32 %19, 1
  store i32 %inc26, ptr %len2, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.end24, %if.end5.if.end27_crit_edge
  %data.addr.0 = phi ptr [ %incdec.ptr, %if.end24 ], [ %data, %if.end5.if.end27_crit_edge ]
  %offset.0 = phi i32 [ %inc, %if.end24 ], [ %1, %if.end5.if.end27_crit_edge ]
  %len.0 = phi i32 [ %dec, %if.end24 ], [ %3, %if.end5.if.end27_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %len.0)
  %cmp112 = icmp ugt i32 %len.0, 1
  br i1 %cmp112, label %if.end27.while.body_crit_edge, label %if.end27.while.end_crit_edge

if.end27.while.end_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

if.end27.while.body_crit_edge:                    ; preds = %if.end27
  br label %while.body

while.body:                                       ; preds = %if.end42.while.body_crit_edge, %if.end27.while.body_crit_edge
  %len.1115 = phi i32 [ %sub, %if.end42.while.body_crit_edge ], [ %len.0, %if.end27.while.body_crit_edge ]
  %offset.1114 = phi i32 [ %add, %if.end42.while.body_crit_edge ], [ %offset.0, %if.end27.while.body_crit_edge ]
  %data.addr.1113 = phi ptr [ %incdec.ptr31, %if.end42.while.body_crit_edge ], [ %data.addr.0, %if.end27.while.body_crit_edge ]
  %incdec.ptr29 = getelementptr i8, ptr %data.addr.1113, i32 1
  %20 = ptrtoint ptr %data.addr.1113 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %data.addr.1113, align 1
  %conv30 = zext i8 %21 to i16
  %22 = ptrtoint ptr %incdec.ptr29 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %incdec.ptr29, align 1
  %conv32 = zext i8 %23 to i16
  %shl33 = shl nuw i16 %conv32, 8
  %or35 = or i16 %shl33, %conv30
  %24 = ptrtoint ptr %val to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %or35, ptr %val, align 2
  %shr37 = lshr i32 %offset.1114, 1
  %conv38 = trunc i32 %shr37 to i8
  %call39 = call fastcc i32 @mv88e6xxx_g2_eeprom_write16(ptr noundef %chip, i8 noundef zeroext %conv38, i16 noundef zeroext %or35)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end42, label %while.body.cleanup_crit_edge

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end42:                                         ; preds = %while.body
  %incdec.ptr31 = getelementptr i8, ptr %data.addr.1113, i32 2
  %add = add i32 %offset.1114, 2
  %sub = add i32 %len.1115, -2
  %25 = ptrtoint ptr %len2 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %len2, align 4
  %add44 = add i32 %26, 2
  store i32 %add44, ptr %len2, align 4
  %cmp = icmp ugt i32 %sub, 1
  br i1 %cmp, label %if.end42.while.body_crit_edge, label %if.end42.while.end_crit_edge

if.end42.while.end_crit_edge:                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

if.end42.while.body_crit_edge:                    ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.end:                                        ; preds = %if.end42.while.end_crit_edge, %if.end27.while.end_crit_edge
  %data.addr.1.lcssa = phi ptr [ %data.addr.0, %if.end27.while.end_crit_edge ], [ %incdec.ptr31, %if.end42.while.end_crit_edge ]
  %offset.1.lcssa = phi i32 [ %offset.0, %if.end27.while.end_crit_edge ], [ %add, %if.end42.while.end_crit_edge ]
  %len.1.lcssa = phi i32 [ %len.0, %if.end27.while.end_crit_edge ], [ %sub, %if.end42.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.1.lcssa)
  %tobool45.not = icmp eq i32 %len.1.lcssa, 0
  br i1 %tobool45.not, label %while.end.cleanup_crit_edge, label %if.then46

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then46:                                        ; preds = %while.end
  %shr47 = lshr i32 %offset.1.lcssa, 1
  %conv48 = trunc i32 %shr47 to i8
  %call49 = call fastcc i32 @mv88e6xxx_g2_eeprom_read16(ptr noundef %chip, i8 noundef zeroext %conv48, ptr noundef nonnull %val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.end52, label %if.then46.cleanup_crit_edge

if.then46.cleanup_crit_edge:                      ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end52:                                         ; preds = %if.then46
  %27 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %val, align 2
  %29 = and i16 %28, -256
  %30 = ptrtoint ptr %data.addr.1.lcssa to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %data.addr.1.lcssa, align 1
  %conv56 = zext i8 %31 to i16
  %or57 = or i16 %29, %conv56
  store i16 %or57, ptr %val, align 2
  %call61 = call fastcc i32 @mv88e6xxx_g2_eeprom_write16(ptr noundef %chip, i8 noundef zeroext %conv48, i16 noundef zeroext %or57)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.end64, label %if.end52.cleanup_crit_edge

if.end52.cleanup_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end64:                                         ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #8
  %32 = ptrtoint ptr %len2 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %len2, align 4
  %inc68 = add i32 %33, 1
  store i32 %inc68, ptr %len2, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end64, %if.end52.cleanup_crit_edge, %if.then46.cleanup_crit_edge, %while.end.cleanup_crit_edge, %while.body.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %if.then9.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ -30, %if.end.cleanup_crit_edge ], [ %call11, %if.then9.cleanup_crit_edge ], [ %call21, %if.end14.cleanup_crit_edge ], [ %call49, %if.then46.cleanup_crit_edge ], [ %call61, %if.end52.cleanup_crit_edge ], [ 0, %if.end64 ], [ 0, %while.end.cleanup_crit_edge ], [ %call39, %while.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mv88e6xxx_g2_eeprom_write16(ptr noundef %chip, i8 noundef zeroext %addr, i16 noundef zeroext %data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %addr to i16
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 8
  %global2_addr.i.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %global2_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %global2_addr.i.i, align 4
  %call.i.i = tail call i32 @mv88e6xxx_wait_bit(ptr noundef %chip, i32 noundef %3, i32 noundef 20, i32 noundef 15, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %mv88e6xxx_g2_eeprom_wait.exit, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

mv88e6xxx_g2_eeprom_wait.exit:                    ; preds = %entry
  %4 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chip, align 8
  %global2_addr.i6.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %global2_addr.i6.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %global2_addr.i6.i, align 4
  %call.i7.i = tail call i32 @mv88e6xxx_wait_bit(ptr noundef %chip, i32 noundef %7, i32 noundef 20, i32 noundef 11, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i7.i)
  %tobool.not = icmp eq i32 %call.i7.i, 0
  br i1 %tobool.not, label %if.end, label %mv88e6xxx_g2_eeprom_wait.exit.cleanup_crit_edge

mv88e6xxx_g2_eeprom_wait.exit.cleanup_crit_edge:  ; preds = %mv88e6xxx_g2_eeprom_wait.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %mv88e6xxx_g2_eeprom_wait.exit
  %8 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %chip, align 8
  %global2_addr.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %9, i32 0, i32 12
  %10 = ptrtoint ptr %global2_addr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %global2_addr.i, align 4
  %call.i = tail call i32 @mv88e6xxx_write(ptr noundef %chip, i32 noundef %11, i32 noundef 21, i16 noundef zeroext %data) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not = icmp eq i32 %call.i, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %12 = or i16 %conv, -20480
  %13 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %chip, align 8
  %global2_addr.i.i13 = getelementptr inbounds %struct.mv88e6xxx_info, ptr %14, i32 0, i32 12
  %15 = ptrtoint ptr %global2_addr.i.i13 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %global2_addr.i.i13, align 4
  %call.i.i14 = tail call i32 @mv88e6xxx_write(ptr noundef %chip, i32 noundef %16, i32 noundef 20, i16 noundef zeroext %12) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i14)
  %tobool.not.i15 = icmp eq i32 %call.i.i14, 0
  br i1 %tobool.not.i15, label %if.end.i16, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i16:                                       ; preds = %if.end5
  %17 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %chip, align 8
  %global2_addr.i.i.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %18, i32 0, i32 12
  %19 = ptrtoint ptr %global2_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %global2_addr.i.i.i, align 4
  %call.i.i.i = tail call i32 @mv88e6xxx_wait_bit(ptr noundef %chip, i32 noundef %20, i32 noundef 20, i32 noundef 15, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end.i16.cleanup_crit_edge

if.end.i16.cleanup_crit_edge:                     ; preds = %if.end.i16
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end.i16
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %chip, align 8
  %global2_addr.i6.i.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %22, i32 0, i32 12
  %23 = ptrtoint ptr %global2_addr.i6.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %global2_addr.i6.i.i, align 4
  %call.i7.i.i = tail call i32 @mv88e6xxx_wait_bit(ptr noundef %chip, i32 noundef %24, i32 noundef 20, i32 noundef 11, i32 noundef 0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %if.end.i16.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %mv88e6xxx_g2_eeprom_wait.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i7.i, %mv88e6xxx_g2_eeprom_wait.exit.cleanup_crit_edge ], [ %call.i, %if.end.cleanup_crit_edge ], [ %call.i.i14, %if.end5.cleanup_crit_edge ], [ %call.i7.i.i, %if.end.i.i ], [ %call.i.i.i, %if.end.i16.cleanup_crit_edge ], [ %call.i.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6xxx_g2_smi_phy_read(ptr noundef %chip, ptr nocapture noundef readonly %bus, i32 noundef %addr, i32 noundef %reg, ptr noundef %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %external1 = getelementptr inbounds %struct.mv88e6xxx_mdio_bus, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %external1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %external1, align 4, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool = icmp ne i8 %3, 0
  %and = and i32 %reg, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %4 = lshr i32 %reg, 16
  %and.i = and i32 %4, 31
  %and1.i = and i32 %reg, 65535
  %call.i = tail call fastcc i32 @mv88e6xxx_g2_smi_phy_write_addr_c45(ptr noundef %chip, i1 noundef zeroext %tobool, i32 noundef %addr, i32 noundef %and.i, i32 noundef %and1.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool2.not.i, label %if.end.i, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %if.then
  %dev.tr.i.i.i.i = trunc i32 %addr to i16
  %5 = shl i16 %dev.tr.i.i.i.i, 5
  %6 = and i16 %5, 992
  %7 = trunc i32 %and.i to i16
  %conv18.i.i.i.i = select i1 %tobool, i16 -21504, i16 -29696
  %conv22.i.i.i.i = or i16 %6, %7
  %8 = or i16 %conv22.i.i.i.i, %conv18.i.i.i.i
  %9 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %chip, align 8
  %global2_addr.i.i.i.i.i.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %10, i32 0, i32 12
  %11 = ptrtoint ptr %global2_addr.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %global2_addr.i.i.i.i.i.i, align 4
  %call.i.i.i.i.i.i = tail call i32 @mv88e6xxx_write(ptr noundef %chip, i32 noundef %12, i32 noundef 24, i16 noundef zeroext %8) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i.i)
  %tobool.not.i.i.i.i.i = icmp eq i32 %call.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %mv88e6xxx_g2_smi_phy_access_c45.exit.i.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

mv88e6xxx_g2_smi_phy_access_c45.exit.i.i:         ; preds = %if.end.i
  %13 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %chip, align 8
  %global2_addr.i.i.i.i.i.i.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %14, i32 0, i32 12
  %15 = ptrtoint ptr %global2_addr.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %global2_addr.i.i.i.i.i.i.i, align 4
  %call.i.i.i.i.i.i.i = tail call i32 @mv88e6xxx_wait_bit(ptr noundef %chip, i32 noundef %16, i32 noundef 24, i32 noundef 15, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i.i.i)
  %tobool1.not.i.i = icmp eq i32 %call.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i, label %mv88e6xxx_g2_smi_phy_access_c45.exit.i.i.cleanup.sink.split_crit_edge, label %mv88e6xxx_g2_smi_phy_access_c45.exit.i.i.cleanup_crit_edge

mv88e6xxx_g2_smi_phy_access_c45.exit.i.i.cleanup_crit_edge: ; preds = %mv88e6xxx_g2_smi_phy_access_c45.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

mv88e6xxx_g2_smi_phy_access_c45.exit.i.i.cleanup.sink.split_crit_edge: ; preds = %mv88e6xxx_g2_smi_phy_access_c45.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %17 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %chip, align 8
  %global2_addr.i.i.i13 = getelementptr inbounds %struct.mv88e6xxx_info, ptr %18, i32 0, i32 12
  %19 = ptrtoint ptr %global2_addr.i.i.i13 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %global2_addr.i.i.i13, align 4
  %call.i.i.i14 = tail call i32 @mv88e6xxx_wait_bit(ptr noundef %chip, i32 noundef %20, i32 noundef 24, i32 noundef 15, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i14)
  %tobool.not.i = icmp eq i32 %call.i.i.i14, 0
  br i1 %tobool.not.i, label %if.end.i15, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i15:                                       ; preds = %if.end
  %dev.tr.i.i.i = trunc i32 %addr to i16
  %21 = shl i16 %dev.tr.i.i.i, 5
  %22 = and i16 %21, 992
  %23 = trunc i32 %reg to i16
  %24 = and i16 %23, 31
  %25 = select i1 %tobool, i16 -18432, i16 -26624
  %conv18.i.i.i = or i16 %24, %22
  %26 = or i16 %conv18.i.i.i, %25
  %27 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %chip, align 8
  %global2_addr.i.i.i.i.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %28, i32 0, i32 12
  %29 = ptrtoint ptr %global2_addr.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %global2_addr.i.i.i.i.i, align 4
  %call.i.i.i.i.i = tail call i32 @mv88e6xxx_write(ptr noundef %chip, i32 noundef %30, i32 noundef 24, i16 noundef zeroext %26) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %call.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %mv88e6xxx_g2_smi_phy_access_c22.exit.i, label %if.end.i15.cleanup_crit_edge

if.end.i15.cleanup_crit_edge:                     ; preds = %if.end.i15
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

mv88e6xxx_g2_smi_phy_access_c22.exit.i:           ; preds = %if.end.i15
  %31 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %chip, align 8
  %global2_addr.i.i.i.i.i.i16 = getelementptr inbounds %struct.mv88e6xxx_info, ptr %32, i32 0, i32 12
  %33 = ptrtoint ptr %global2_addr.i.i.i.i.i.i16 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %global2_addr.i.i.i.i.i.i16, align 4
  %call.i.i.i.i.i.i17 = tail call i32 @mv88e6xxx_wait_bit(ptr noundef %chip, i32 noundef %34, i32 noundef 24, i32 noundef 15, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i.i17)
  %tobool3.not.i = icmp eq i32 %call.i.i.i.i.i.i17, 0
  br i1 %tobool3.not.i, label %mv88e6xxx_g2_smi_phy_access_c22.exit.i.cleanup.sink.split_crit_edge, label %mv88e6xxx_g2_smi_phy_access_c22.exit.i.cleanup_crit_edge

mv88e6xxx_g2_smi_phy_access_c22.exit.i.cleanup_crit_edge: ; preds = %mv88e6xxx_g2_smi_phy_access_c22.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

mv88e6xxx_g2_smi_phy_access_c22.exit.i.cleanup.sink.split_crit_edge: ; preds = %mv88e6xxx_g2_smi_phy_access_c22.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %mv88e6xxx_g2_smi_phy_access_c22.exit.i.cleanup.sink.split_crit_edge, %mv88e6xxx_g2_smi_phy_access_c45.exit.i.i.cleanup.sink.split_crit_edge
  %35 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %chip, align 8
  %global2_addr.i.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %36, i32 0, i32 12
  %37 = ptrtoint ptr %global2_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %global2_addr.i.i, align 4
  %call.i.i = tail call i32 @mv88e6xxx_read(ptr noundef %chip, i32 noundef %38, i32 noundef 25, ptr noundef %val) #6
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %mv88e6xxx_g2_smi_phy_access_c22.exit.i.cleanup_crit_edge, %if.end.i15.cleanup_crit_edge, %if.end.cleanup_crit_edge, %mv88e6xxx_g2_smi_phy_access_c45.exit.i.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.then.cleanup_crit_edge ], [ %call.i.i.i.i.i.i.i, %mv88e6xxx_g2_smi_phy_access_c45.exit.i.i.cleanup_crit_edge ], [ %call.i.i.i.i.i.i, %if.end.i.cleanup_crit_edge ], [ %call.i.i.i14, %if.end.cleanup_crit_edge ], [ %call.i.i.i.i.i.i17, %mv88e6xxx_g2_smi_phy_access_c22.exit.i.cleanup_crit_edge ], [ %call.i.i.i.i.i, %if.end.i15.cleanup_crit_edge ], [ %call.i.i, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6xxx_g2_smi_phy_write(ptr noundef %chip, ptr nocapture noundef readonly %bus, i32 noundef %addr, i32 noundef %reg, i16 noundef zeroext %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %external1 = getelementptr inbounds %struct.mv88e6xxx_mdio_bus, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %external1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %external1, align 4, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool = icmp ne i8 %3, 0
  %and = and i32 %reg, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %4 = lshr i32 %reg, 16
  %and.i = and i32 %4, 31
  %and1.i = and i32 %reg, 65535
  %call.i = tail call fastcc i32 @mv88e6xxx_g2_smi_phy_write_addr_c45(ptr noundef %chip, i1 noundef zeroext %tobool, i32 noundef %addr, i32 noundef %and.i, i32 noundef %and1.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool2.not.i, label %if.end.i, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %if.then
  %5 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %chip, align 8
  %global2_addr.i.i.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %6, i32 0, i32 12
  %7 = ptrtoint ptr %global2_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %global2_addr.i.i.i, align 4
  %call.i.i.i = tail call i32 @mv88e6xxx_write(ptr noundef %chip, i32 noundef %8, i32 noundef 25, i16 noundef zeroext %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end.i
  %dev.tr.i.i.i.i = trunc i32 %addr to i16
  %9 = shl i16 %dev.tr.i.i.i.i, 5
  %10 = and i16 %9, 992
  %11 = trunc i32 %and.i to i16
  %conv18.i.i.i.i = select i1 %tobool, i16 -23552, i16 -31744
  %conv22.i.i.i.i = or i16 %10, %11
  %12 = or i16 %conv22.i.i.i.i, %conv18.i.i.i.i
  %13 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %chip, align 8
  %global2_addr.i.i.i.i.i.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %14, i32 0, i32 12
  %15 = ptrtoint ptr %global2_addr.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %global2_addr.i.i.i.i.i.i, align 4
  %call.i.i.i.i.i.i = tail call i32 @mv88e6xxx_write(ptr noundef %chip, i32 noundef %16, i32 noundef 24, i16 noundef zeroext %12) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i.i)
  %tobool.not.i.i.i.i.i = icmp eq i32 %call.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %if.end.i.i.cleanup.sink.split_crit_edge, label %if.end.i.i.cleanup_crit_edge

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i.i.cleanup.sink.split_crit_edge:          ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %17 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %chip, align 8
  %global2_addr.i.i.i13 = getelementptr inbounds %struct.mv88e6xxx_info, ptr %18, i32 0, i32 12
  %19 = ptrtoint ptr %global2_addr.i.i.i13 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %global2_addr.i.i.i13, align 4
  %call.i.i.i14 = tail call i32 @mv88e6xxx_wait_bit(ptr noundef %chip, i32 noundef %20, i32 noundef 24, i32 noundef 15, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i14)
  %tobool.not.i = icmp eq i32 %call.i.i.i14, 0
  br i1 %tobool.not.i, label %if.end.i16, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i16:                                       ; preds = %if.end
  %21 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %chip, align 8
  %global2_addr.i.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %22, i32 0, i32 12
  %23 = ptrtoint ptr %global2_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %global2_addr.i.i, align 4
  %call.i.i = tail call i32 @mv88e6xxx_write(ptr noundef %chip, i32 noundef %24, i32 noundef 25, i16 noundef zeroext %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool2.not.i15 = icmp eq i32 %call.i.i, 0
  br i1 %tobool2.not.i15, label %if.end4.i, label %if.end.i16.cleanup_crit_edge

if.end.i16.cleanup_crit_edge:                     ; preds = %if.end.i16
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4.i:                                        ; preds = %if.end.i16
  %dev.tr.i.i.i = trunc i32 %addr to i16
  %25 = shl i16 %dev.tr.i.i.i, 5
  %26 = and i16 %25, 992
  %27 = trunc i32 %reg to i16
  %28 = and i16 %27, 31
  %29 = select i1 %tobool, i16 -19456, i16 -27648
  %conv18.i.i.i = or i16 %28, %26
  %30 = or i16 %conv18.i.i.i, %29
  %31 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %chip, align 8
  %global2_addr.i.i.i.i.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %32, i32 0, i32 12
  %33 = ptrtoint ptr %global2_addr.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %global2_addr.i.i.i.i.i, align 4
  %call.i.i.i.i.i = tail call i32 @mv88e6xxx_write(ptr noundef %chip, i32 noundef %34, i32 noundef 24, i16 noundef zeroext %30) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %call.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %if.end4.i.cleanup.sink.split_crit_edge, label %if.end4.i.cleanup_crit_edge

if.end4.i.cleanup_crit_edge:                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4.i.cleanup.sink.split_crit_edge:           ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end4.i.cleanup.sink.split_crit_edge, %if.end.i.i.cleanup.sink.split_crit_edge
  %35 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %chip, align 8
  %global2_addr.i.i.i.i.i.i17 = getelementptr inbounds %struct.mv88e6xxx_info, ptr %36, i32 0, i32 12
  %37 = ptrtoint ptr %global2_addr.i.i.i.i.i.i17 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %global2_addr.i.i.i.i.i.i17, align 4
  %call.i.i.i.i.i.i18 = tail call i32 @mv88e6xxx_wait_bit(ptr noundef %chip, i32 noundef %38, i32 noundef 24, i32 noundef 15, i32 noundef 0) #6
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end4.i.cleanup_crit_edge, %if.end.i16.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.then.cleanup_crit_edge ], [ %call.i.i.i, %if.end.i.cleanup_crit_edge ], [ %call.i.i.i.i.i.i, %if.end.i.i.cleanup_crit_edge ], [ %call.i.i.i14, %if.end.cleanup_crit_edge ], [ %call.i.i, %if.end.i16.cleanup_crit_edge ], [ %call.i.i.i.i.i, %if.end4.i.cleanup_crit_edge ], [ %call.i.i.i.i.i.i18, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv88e6097_watchdog_action(ptr noundef %chip, i32 noundef %irq) #0 align 64 {
entry:
  %reg = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg) #6
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %reg, align 2, !annotation !47
  %1 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %chip, align 8
  %global2_addr.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %2, i32 0, i32 12
  %3 = ptrtoint ptr %global2_addr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %global2_addr.i, align 4
  %call.i = call i32 @mv88e6xxx_read(ptr noundef %chip, i32 noundef %4, i32 noundef 27, ptr noundef nonnull %reg) #6
  %dev = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 3
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  %7 = ptrtoint ptr %reg to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %reg, align 2
  %conv = zext i16 %8 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %6, ptr noundef nonnull @.str.1, i32 noundef %conv) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg) #6
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv88e6097_watchdog_setup(ptr noundef %chip) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 8
  %global2_addr.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %global2_addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %global2_addr.i, align 4
  %call.i = tail call i32 @mv88e6xxx_write(ptr noundef %chip, i32 noundef %3, i32 noundef 27, i16 noundef zeroext 41) #6
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mv88e6097_watchdog_free(ptr noundef %chip) #0 align 64 {
entry:
  %reg = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg) #6
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %reg, align 2, !annotation !47
  %1 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %chip, align 8
  %global2_addr.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %2, i32 0, i32 12
  %3 = ptrtoint ptr %global2_addr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %global2_addr.i, align 4
  %call.i = call i32 @mv88e6xxx_read(ptr noundef %chip, i32 noundef %4, i32 noundef 27, ptr noundef nonnull %reg) #6
  %5 = ptrtoint ptr %reg to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %reg, align 2
  %7 = and i16 %6, -41
  store i16 %7, ptr %reg, align 2
  %8 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %chip, align 8
  %global2_addr.i4 = getelementptr inbounds %struct.mv88e6xxx_info, ptr %9, i32 0, i32 12
  %10 = ptrtoint ptr %global2_addr.i4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %global2_addr.i4, align 4
  %call.i5 = call i32 @mv88e6xxx_write(ptr noundef %chip, i32 noundef %11, i32 noundef 27, i16 noundef zeroext %7) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv88e6250_watchdog_setup(ptr noundef %chip) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 8
  %global2_addr.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %global2_addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %global2_addr.i, align 4
  %call.i = tail call i32 @mv88e6xxx_write(ptr noundef %chip, i32 noundef %3, i32 noundef 27, i16 noundef zeroext 73) #6
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mv88e6250_watchdog_free(ptr noundef %chip) #0 align 64 {
entry:
  %reg = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg) #6
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %reg, align 2, !annotation !47
  %1 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %chip, align 8
  %global2_addr.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %2, i32 0, i32 12
  %3 = ptrtoint ptr %global2_addr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %global2_addr.i, align 4
  %call.i = call i32 @mv88e6xxx_read(ptr noundef %chip, i32 noundef %4, i32 noundef 27, ptr noundef nonnull %reg) #6
  %5 = ptrtoint ptr %reg to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %reg, align 2
  %7 = and i16 %6, -73
  store i16 %7, ptr %reg, align 2
  %8 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %chip, align 8
  %global2_addr.i4 = getelementptr inbounds %struct.mv88e6xxx_info, ptr %9, i32 0, i32 12
  %10 = ptrtoint ptr %global2_addr.i4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %global2_addr.i4, align 4
  %call.i5 = call i32 @mv88e6xxx_write(ptr noundef %chip, i32 noundef %11, i32 noundef 27, i16 noundef zeroext %7) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv88e6390_watchdog_action(ptr noundef %chip, i32 noundef %irq) #0 align 64 {
entry:
  %reg = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg) #6
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %reg, align 2, !annotation !47
  %1 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %chip, align 8
  %global2_addr.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %2, i32 0, i32 12
  %3 = ptrtoint ptr %global2_addr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %global2_addr.i, align 4
  %call.i = tail call i32 @mv88e6xxx_write(ptr noundef %chip, i32 noundef %4, i32 noundef 27, i16 noundef zeroext 4608) #6
  %5 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %chip, align 8
  %global2_addr.i24 = getelementptr inbounds %struct.mv88e6xxx_info, ptr %6, i32 0, i32 12
  %7 = ptrtoint ptr %global2_addr.i24 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %global2_addr.i24, align 4
  %call.i25 = call i32 @mv88e6xxx_read(ptr noundef %chip, i32 noundef %8, i32 noundef 27, ptr noundef nonnull %reg) #6
  %dev = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 3
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  %11 = ptrtoint ptr %reg to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %reg, align 2
  %13 = and i16 %12, 255
  %and = zext i16 %13 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %10, ptr noundef nonnull @.str.1, i32 noundef %and) #9
  %14 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %chip, align 8
  %global2_addr.i26 = getelementptr inbounds %struct.mv88e6xxx_info, ptr %15, i32 0, i32 12
  %16 = ptrtoint ptr %global2_addr.i26 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %global2_addr.i26, align 4
  %call.i27 = call i32 @mv88e6xxx_write(ptr noundef %chip, i32 noundef %17, i32 noundef 27, i16 noundef zeroext 4864) #6
  %18 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %chip, align 8
  %global2_addr.i28 = getelementptr inbounds %struct.mv88e6xxx_info, ptr %19, i32 0, i32 12
  %20 = ptrtoint ptr %global2_addr.i28 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %global2_addr.i28, align 4
  %call.i29 = call i32 @mv88e6xxx_read(ptr noundef %chip, i32 noundef %21, i32 noundef 27, ptr noundef nonnull %reg) #6
  %22 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev, align 4
  %24 = ptrtoint ptr %reg to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %reg, align 2
  %26 = and i16 %25, 255
  %and9 = zext i16 %26 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %23, ptr noundef nonnull @.str.8, i32 noundef %and9) #9
  %27 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %chip, align 8
  %ops = getelementptr inbounds %struct.mv88e6xxx_info, ptr %28, i32 0, i32 22
  %29 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ops, align 4
  %reset = getelementptr inbounds %struct.mv88e6xxx_ops, ptr %30, i32 0, i32 12
  %31 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %reset, align 4
  %tobool.not = icmp eq ptr %32, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call13 = call i32 %32(ptr noundef %chip) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %33 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %chip, align 8
  %global2_addr.i.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %34, i32 0, i32 12
  %35 = ptrtoint ptr %global2_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %global2_addr.i.i, align 4
  %call.i.i = call i32 @mv88e6xxx_write(ptr noundef %chip, i32 noundef %36, i32 noundef 27, i16 noundef zeroext -28401) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg) #6
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv88e6390_watchdog_setup(ptr noundef %chip) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 8
  %global2_addr.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %global2_addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %global2_addr.i, align 4
  %call.i = tail call i32 @mv88e6xxx_write(ptr noundef %chip, i32 noundef %3, i32 noundef 27, i16 noundef zeroext -28401) #6
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mv88e6390_watchdog_free(ptr noundef %chip) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 8
  %global2_addr.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %global2_addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %global2_addr.i, align 4
  %call.i = tail call i32 @mv88e6xxx_write(ptr noundef %chip, i32 noundef %3, i32 noundef 27, i16 noundef zeroext -28416) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6xxx_g2_misc_4_bit_port(ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  %val.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i) #6
  %0 = ptrtoint ptr %val.i to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %val.i, align 2, !annotation !47
  %1 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %chip, align 8
  %global2_addr.i.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %2, i32 0, i32 12
  %3 = ptrtoint ptr %global2_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %global2_addr.i.i, align 4
  %call.i.i = call i32 @mv88e6xxx_read(ptr noundef %chip, i32 noundef %4, i32 noundef 29, ptr noundef nonnull %val.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %entry.mv88e6xxx_g2_misc_5_bit_port.exit_crit_edge

entry.mv88e6xxx_g2_misc_5_bit_port.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %mv88e6xxx_g2_misc_5_bit_port.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %val.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %val.i, align 2
  %7 = and i16 %6, -16385
  store i16 %7, ptr %val.i, align 2
  %8 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %chip, align 8
  %global2_addr.i1.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %9, i32 0, i32 12
  %10 = ptrtoint ptr %global2_addr.i1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %global2_addr.i1.i, align 4
  %call.i2.i = call i32 @mv88e6xxx_write(ptr noundef %chip, i32 noundef %11, i32 noundef 29, i16 noundef zeroext %7) #6
  br label %mv88e6xxx_g2_misc_5_bit_port.exit

mv88e6xxx_g2_misc_5_bit_port.exit:                ; preds = %if.else.i, %entry.mv88e6xxx_g2_misc_5_bit_port.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i2.i, %if.else.i ], [ %call.i.i, %entry.mv88e6xxx_g2_misc_5_bit_port.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i) #6
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mv88e6xxx_g2_irq_free(ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  %irq.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_lock.i.i = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %reg_lock.i.i, i32 noundef 0) #6
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 8
  %ops.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops.i, align 4
  %watchdog_ops.i = getelementptr inbounds %struct.mv88e6xxx_ops, ptr %3, i32 0, i32 42
  %4 = ptrtoint ptr %watchdog_ops.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %watchdog_ops.i, align 4
  %irq_free.i = getelementptr inbounds %struct.mv88e6xxx_irq_ops, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %irq_free.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %irq_free.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %entry.mv88e6xxx_g2_watchdog_free.exit_crit_edge, label %if.then.i

entry.mv88e6xxx_g2_watchdog_free.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %mv88e6xxx_g2_watchdog_free.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %7(ptr noundef %chip) #6
  br label %mv88e6xxx_g2_watchdog_free.exit

mv88e6xxx_g2_watchdog_free.exit:                  ; preds = %if.then.i, %entry.mv88e6xxx_g2_watchdog_free.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %reg_lock.i.i) #6
  %watchdog_irq.i = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 24
  %8 = ptrtoint ptr %watchdog_irq.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %watchdog_irq.i, align 8
  %call.i = tail call ptr @free_irq(i32 noundef %9, ptr noundef %chip) #6
  %10 = ptrtoint ptr %watchdog_irq.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %watchdog_irq.i, align 8
  tail call void @irq_dispose_mapping(i32 noundef %11) #6
  %device_irq = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 22
  %12 = ptrtoint ptr %device_irq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %device_irq, align 4
  %call = tail call ptr @free_irq(i32 noundef %13, ptr noundef %chip) #6
  %14 = ptrtoint ptr %device_irq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %device_irq, align 4
  tail call void @irq_dispose_mapping(i32 noundef %15) #6
  %domain = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 19, i32 2
  br label %for.body

for.body:                                         ; preds = %irq_find_mapping.exit.for.body_crit_edge, %mv88e6xxx_g2_watchdog_free.exit
  %irq.015 = phi i32 [ 0, %mv88e6xxx_g2_watchdog_free.exit ], [ %inc, %irq_find_mapping.exit.for.body_crit_edge ]
  %16 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %domain, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq.i) #6
  %18 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %irq.i, align 4, !annotation !47
  %call.i12 = call ptr @__irq_resolve_mapping(ptr noundef %17, i32 noundef %irq.015, ptr noundef nonnull %irq.i) #6
  %tobool.not.i13 = icmp eq ptr %call.i12, null
  br i1 %tobool.not.i13, label %for.body.irq_find_mapping.exit_crit_edge, label %if.then.i14

for.body.irq_find_mapping.exit_crit_edge:         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %irq_find_mapping.exit

if.then.i14:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %irq.i, align 4
  br label %irq_find_mapping.exit

irq_find_mapping.exit:                            ; preds = %if.then.i14, %for.body.irq_find_mapping.exit_crit_edge
  %retval.0.i = phi i32 [ %20, %if.then.i14 ], [ 0, %for.body.irq_find_mapping.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i) #6
  call void @irq_dispose_mapping(i32 noundef %retval.0.i) #6
  %inc = add nuw nsw i32 %irq.015, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.end, label %irq_find_mapping.exit.for.body_crit_edge

irq_find_mapping.exit.for.body_crit_edge:         ; preds = %irq_find_mapping.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %irq_find_mapping.exit
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %domain, align 4
  call void @irq_domain_remove(ptr noundef %22) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_dispose_mapping(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6xxx_g2_irq_setup(ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  %irq.i89 = alloca i32, align 4
  %irq.i.i = alloca i32, align 4
  %irq.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %g2_irq = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 19
  %0 = ptrtoint ptr %g2_irq to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %g2_irq, align 4
  %reg_lock.i = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %reg_lock.i, i32 noundef 0) #6
  %1 = ptrtoint ptr %g2_irq to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %g2_irq, align 4
  %neg = xor i16 %2, -1
  %3 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %chip, align 8
  %global2_addr.i.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %4, i32 0, i32 12
  %5 = ptrtoint ptr %global2_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %global2_addr.i.i, align 4
  %call.i.i = tail call i32 @mv88e6xxx_write(ptr noundef %chip, i32 noundef %6, i32 noundef 1, i16 noundef zeroext %neg) #6
  tail call void @mutex_unlock(ptr noundef %reg_lock.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 3
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 27
  %9 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %of_node, align 8
  %tobool.not.i.i = icmp eq ptr %10, null
  %fwnode.i.i = getelementptr inbounds %struct.device_node, ptr %10, i32 0, i32 3
  %spec.select.i.i = select i1 %tobool.not.i.i, ptr null, ptr %fwnode.i.i
  %call1.i = tail call ptr @irq_domain_create_simple(ptr noundef %spec.select.i.i, i32 noundef 16, i32 noundef 0, ptr noundef nonnull @mv88e6xxx_g2_irq_domain_ops, ptr noundef %chip) #6
  %domain = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 19, i32 2
  %11 = ptrtoint ptr %domain to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call1.i, ptr %domain, align 4
  %tobool8.not = icmp eq ptr %call1.i, null
  br i1 %tobool8.not, label %if.end.cleanup_crit_edge, label %for.body.preheader

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.preheader:                               ; preds = %if.end
  %12 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %domain, align 4
  %call.i = tail call i32 @irq_create_mapping_affinity(ptr noundef %13, i32 noundef 0, ptr noundef null) #6
  %14 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %domain, align 4
  %call.i.1 = tail call i32 @irq_create_mapping_affinity(ptr noundef %15, i32 noundef 1, ptr noundef null) #6
  %16 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %domain, align 4
  %call.i.2 = tail call i32 @irq_create_mapping_affinity(ptr noundef %17, i32 noundef 2, ptr noundef null) #6
  %18 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %domain, align 4
  %call.i.3 = tail call i32 @irq_create_mapping_affinity(ptr noundef %19, i32 noundef 3, ptr noundef null) #6
  %20 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %domain, align 4
  %call.i.4 = tail call i32 @irq_create_mapping_affinity(ptr noundef %21, i32 noundef 4, ptr noundef null) #6
  %22 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %domain, align 4
  %call.i.5 = tail call i32 @irq_create_mapping_affinity(ptr noundef %23, i32 noundef 5, ptr noundef null) #6
  %24 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %domain, align 4
  %call.i.6 = tail call i32 @irq_create_mapping_affinity(ptr noundef %25, i32 noundef 6, ptr noundef null) #6
  %26 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %domain, align 4
  %call.i.7 = tail call i32 @irq_create_mapping_affinity(ptr noundef %27, i32 noundef 7, ptr noundef null) #6
  %28 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %domain, align 4
  %call.i.8 = tail call i32 @irq_create_mapping_affinity(ptr noundef %29, i32 noundef 8, ptr noundef null) #6
  %30 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %domain, align 4
  %call.i.9 = tail call i32 @irq_create_mapping_affinity(ptr noundef %31, i32 noundef 9, ptr noundef null) #6
  %32 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %domain, align 4
  %call.i.10 = tail call i32 @irq_create_mapping_affinity(ptr noundef %33, i32 noundef 10, ptr noundef null) #6
  %34 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %domain, align 4
  %call.i.11 = tail call i32 @irq_create_mapping_affinity(ptr noundef %35, i32 noundef 11, ptr noundef null) #6
  %36 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %domain, align 4
  %call.i.12 = tail call i32 @irq_create_mapping_affinity(ptr noundef %37, i32 noundef 12, ptr noundef null) #6
  %38 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %domain, align 4
  %call.i.13 = tail call i32 @irq_create_mapping_affinity(ptr noundef %39, i32 noundef 13, ptr noundef null) #6
  %40 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %domain, align 4
  %call.i.14 = tail call i32 @irq_create_mapping_affinity(ptr noundef %41, i32 noundef 14, ptr noundef null) #6
  %42 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %domain, align 4
  %call.i.15 = tail call i32 @irq_create_mapping_affinity(ptr noundef %43, i32 noundef 15, ptr noundef null) #6
  %chip16 = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 19, i32 1
  %44 = call ptr @memcpy(ptr %chip16, ptr @mv88e6xxx_g2_irq_chip, i32 136)
  %domain17 = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 18, i32 2
  %45 = ptrtoint ptr %domain17 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %domain17, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq.i) #6
  %47 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 -1, ptr %irq.i, align 4, !annotation !47
  %call.i81 = call ptr @__irq_resolve_mapping(ptr noundef %46, i32 noundef 7, ptr noundef nonnull %irq.i) #6
  %tobool.not.i = icmp eq ptr %call.i81, null
  br i1 %tobool.not.i, label %irq_find_mapping.exit.thread, label %irq_find_mapping.exit

irq_find_mapping.exit.thread:                     ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i) #6
  %device_irq96 = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 22
  %48 = ptrtoint ptr %device_irq96 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %device_irq96, align 4
  br label %if.end24

irq_find_mapping.exit:                            ; preds = %for.body.preheader
  %49 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %irq.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i) #6
  %device_irq = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 22
  %51 = ptrtoint ptr %device_irq to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %device_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp20 = icmp slt i32 %50, 0
  br i1 %cmp20, label %irq_find_mapping.exit.out_crit_edge, label %irq_find_mapping.exit.if.end24_crit_edge

irq_find_mapping.exit.if.end24_crit_edge:         ; preds = %irq_find_mapping.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

irq_find_mapping.exit.out_crit_edge:              ; preds = %irq_find_mapping.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end24:                                         ; preds = %irq_find_mapping.exit.if.end24_crit_edge, %irq_find_mapping.exit.thread
  %device_irq98 = phi ptr [ %device_irq96, %irq_find_mapping.exit.thread ], [ %device_irq, %irq_find_mapping.exit.if.end24_crit_edge ]
  %device_irq_name = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 23
  %52 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %53, i32 0, i32 3
  %54 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i82 = icmp eq ptr %55, null
  br i1 %tobool.not.i82, label %if.end.i, label %if.end24.dev_name.exit_crit_edge

if.end24.dev_name.exit_crit_edge:                 ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  %56 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %53, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end24.dev_name.exit_crit_edge
  %retval.0.i83 = phi ptr [ %57, %if.end.i ], [ %55, %if.end24.dev_name.exit_crit_edge ]
  %call27 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %device_irq_name, i32 noundef 64, ptr noundef nonnull @.str, ptr noundef %retval.0.i83)
  %58 = ptrtoint ptr %device_irq98 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %device_irq98, align 4
  %call31 = call i32 @request_threaded_irq(i32 noundef %59, ptr noundef null, ptr noundef nonnull @mv88e6xxx_g2_irq_thread_fn, i32 noundef 8192, ptr noundef %device_irq_name, ptr noundef %chip) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end34, label %dev_name.exit.out_crit_edge

dev_name.exit.out_crit_edge:                      ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end34:                                         ; preds = %dev_name.exit
  %60 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %domain, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq.i.i) #6
  %62 = ptrtoint ptr %irq.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 -1, ptr %irq.i.i, align 4, !annotation !47
  %call.i.i84 = call ptr @__irq_resolve_mapping(ptr noundef %61, i32 noundef 15, ptr noundef nonnull %irq.i.i) #6
  %tobool.not.i.i85 = icmp eq ptr %call.i.i84, null
  br i1 %tobool.not.i.i85, label %irq_find_mapping.exit.thread.i, label %irq_find_mapping.exit.i

irq_find_mapping.exit.thread.i:                   ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i.i) #6
  %watchdog_irq38.i = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 24
  %63 = ptrtoint ptr %watchdog_irq38.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %watchdog_irq38.i, align 8
  br label %if.end.i86

irq_find_mapping.exit.i:                          ; preds = %if.end34
  %64 = ptrtoint ptr %irq.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %irq.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i.i) #6
  %watchdog_irq.i = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 24
  %66 = ptrtoint ptr %watchdog_irq.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %watchdog_irq.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %cmp.i = icmp slt i32 %65, 0
  br i1 %cmp.i, label %irq_find_mapping.exit.i.cleanup_crit_edge, label %irq_find_mapping.exit.i.if.end.i86_crit_edge

irq_find_mapping.exit.i.if.end.i86_crit_edge:     ; preds = %irq_find_mapping.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i86

irq_find_mapping.exit.i.cleanup_crit_edge:        ; preds = %irq_find_mapping.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i86:                                       ; preds = %irq_find_mapping.exit.i.if.end.i86_crit_edge, %irq_find_mapping.exit.thread.i
  %watchdog_irq40.i = phi ptr [ %watchdog_irq38.i, %irq_find_mapping.exit.thread.i ], [ %watchdog_irq.i, %irq_find_mapping.exit.i.if.end.i86_crit_edge ]
  %watchdog_irq_name.i = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 25
  %67 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dev, align 4
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %68, i32 0, i32 3
  %69 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i34.i = icmp eq ptr %70, null
  br i1 %tobool.not.i34.i, label %if.end.i.i, label %if.end.i86.dev_name.exit.i_crit_edge

if.end.i86.dev_name.exit.i_crit_edge:             ; preds = %if.end.i86
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.end.i86
  call void @__sanitizer_cov_trace_pc() #8
  %71 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %68, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.end.i86.dev_name.exit.i_crit_edge
  %retval.0.i35.i = phi ptr [ %72, %if.end.i.i ], [ %70, %if.end.i86.dev_name.exit.i_crit_edge ]
  %call4.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %watchdog_irq_name.i, i32 noundef 64, ptr noundef nonnull @.str.14, ptr noundef %retval.0.i35.i) #6
  %73 = ptrtoint ptr %watchdog_irq40.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %watchdog_irq40.i, align 8
  %call8.i = call i32 @request_threaded_irq(i32 noundef %74, ptr noundef null, ptr noundef nonnull @mv88e6xxx_g2_watchdog_thread_fn, i32 noundef 8194, ptr noundef %watchdog_irq_name.i, ptr noundef %chip) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool.not.i87 = icmp eq i32 %call8.i, 0
  br i1 %tobool.not.i87, label %if.end10.i, label %dev_name.exit.i.cleanup_crit_edge

dev_name.exit.i.cleanup_crit_edge:                ; preds = %dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end10.i:                                       ; preds = %dev_name.exit.i
  call void @mutex_lock_nested(ptr noundef %reg_lock.i, i32 noundef 0) #6
  %75 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %chip, align 8
  %ops.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %76, i32 0, i32 22
  %77 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %ops.i, align 4
  %watchdog_ops.i = getelementptr inbounds %struct.mv88e6xxx_ops, ptr %78, i32 0, i32 42
  %79 = ptrtoint ptr %watchdog_ops.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %watchdog_ops.i, align 4
  %irq_setup.i = getelementptr inbounds %struct.mv88e6xxx_irq_ops, ptr %80, i32 0, i32 1
  %81 = ptrtoint ptr %irq_setup.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %irq_setup.i, align 4
  %tobool11.not.i = icmp eq ptr %82, null
  br i1 %tobool11.not.i, label %if.end10.i.if.end18.i_crit_edge, label %if.then12.i

if.end10.i.if.end18.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18.i

if.then12.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  %call17.i = call i32 %82(ptr noundef %chip) #6
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.then12.i, %if.end10.i.if.end18.i_crit_edge
  %err.0.i = phi i32 [ %call17.i, %if.then12.i ], [ 0, %if.end10.i.if.end18.i_crit_edge ]
  call void @mutex_unlock(ptr noundef %reg_lock.i) #6
  br label %cleanup

out:                                              ; preds = %dev_name.exit.out_crit_edge, %irq_find_mapping.exit.out_crit_edge
  %err.0 = phi i32 [ %call31, %dev_name.exit.out_crit_edge ], [ %50, %irq_find_mapping.exit.out_crit_edge ]
  br label %for.body39

for.body39:                                       ; preds = %irq_find_mapping.exit94.for.body39_crit_edge, %out
  %irq.1100 = phi i32 [ 0, %out ], [ %inc44, %irq_find_mapping.exit94.for.body39_crit_edge ]
  %83 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %domain, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq.i89) #6
  %85 = ptrtoint ptr %irq.i89 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 -1, ptr %irq.i89, align 4, !annotation !47
  %call.i90 = call ptr @__irq_resolve_mapping(ptr noundef %84, i32 noundef %irq.1100, ptr noundef nonnull %irq.i89) #6
  %tobool.not.i91 = icmp eq ptr %call.i90, null
  br i1 %tobool.not.i91, label %for.body39.irq_find_mapping.exit94_crit_edge, label %if.then.i92

for.body39.irq_find_mapping.exit94_crit_edge:     ; preds = %for.body39
  call void @__sanitizer_cov_trace_pc() #8
  br label %irq_find_mapping.exit94

if.then.i92:                                      ; preds = %for.body39
  call void @__sanitizer_cov_trace_pc() #8
  %86 = ptrtoint ptr %irq.i89 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %irq.i89, align 4
  br label %irq_find_mapping.exit94

irq_find_mapping.exit94:                          ; preds = %if.then.i92, %for.body39.irq_find_mapping.exit94_crit_edge
  %retval.0.i93 = phi i32 [ %87, %if.then.i92 ], [ 0, %for.body39.irq_find_mapping.exit94_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i89) #6
  call void @irq_dispose_mapping(i32 noundef %retval.0.i93) #6
  %inc44 = add nuw nsw i32 %irq.1100, 1
  %exitcond.not = icmp eq i32 %inc44, 16
  br i1 %exitcond.not, label %for.end45, label %irq_find_mapping.exit94.for.body39_crit_edge

irq_find_mapping.exit94.for.body39_crit_edge:     ; preds = %irq_find_mapping.exit94
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body39

for.end45:                                        ; preds = %irq_find_mapping.exit94
  call void @__sanitizer_cov_trace_pc() #8
  %88 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %domain, align 4
  call void @irq_domain_remove(ptr noundef %89) #6
  br label %cleanup

cleanup:                                          ; preds = %for.end45, %if.end18.i, %dev_name.exit.i.cleanup_crit_edge, %irq_find_mapping.exit.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %for.end45 ], [ %call.i.i, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %err.0.i, %if.end18.i ], [ %65, %irq_find_mapping.exit.i.cleanup_crit_edge ], [ %call8.i, %dev_name.exit.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv88e6xxx_g2_irq_thread_fn(i32 noundef %irq, ptr noundef %dev_id) #0 align 64 {
entry:
  %irq.i = alloca i32, align 4
  %reg = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg) #6
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %reg, align 2, !annotation !47
  %reg_lock.i = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %dev_id, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %reg_lock.i, i32 noundef 0) #6
  %1 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev_id, align 8
  %global2_addr.i.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %2, i32 0, i32 12
  %3 = ptrtoint ptr %global2_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %global2_addr.i.i, align 4
  %call.i.i = call i32 @mv88e6xxx_read(ptr noundef %dev_id, i32 noundef %4, i32 noundef 0, ptr noundef nonnull %reg) #6
  call void @mutex_unlock(ptr noundef %reg_lock.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not, label %for.cond.preheader, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

for.cond.preheader:                               ; preds = %entry
  %domain = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %dev_id, i32 0, i32 19, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %n.017 = phi i32 [ 0, %for.cond.preheader ], [ %inc5, %for.inc.for.body_crit_edge ]
  %nhandled.016 = phi i32 [ 0, %for.cond.preheader ], [ %nhandled.1, %for.inc.for.body_crit_edge ]
  %5 = ptrtoint ptr %reg to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %reg, align 2
  %conv = zext i16 %6 to i32
  %shl = shl nuw nsw i32 1, %n.017
  %and = and i32 %shl, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %for.body.for.inc_crit_edge, label %if.then2

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then2:                                         ; preds = %for.body
  %7 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %domain, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq.i) #6
  %9 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %irq.i, align 4, !annotation !47
  %call.i = call ptr @__irq_resolve_mapping(ptr noundef %8, i32 noundef %n.017, ptr noundef nonnull %irq.i) #6
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then2.irq_find_mapping.exit_crit_edge, label %if.then.i

if.then2.irq_find_mapping.exit_crit_edge:         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  br label %irq_find_mapping.exit

if.then.i:                                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %irq.i, align 4
  br label %irq_find_mapping.exit

irq_find_mapping.exit:                            ; preds = %if.then.i, %if.then2.irq_find_mapping.exit_crit_edge
  %retval.0.i = phi i32 [ %11, %if.then.i ], [ 0, %if.then2.irq_find_mapping.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i) #6
  call void @handle_nested_irq(i32 noundef %retval.0.i) #6
  %inc = add i32 %nhandled.016, 1
  br label %for.inc

for.inc:                                          ; preds = %irq_find_mapping.exit, %for.body.for.inc_crit_edge
  %nhandled.1 = phi i32 [ %inc, %irq_find_mapping.exit ], [ %nhandled.016, %for.body.for.inc_crit_edge ]
  %inc5 = add nuw nsw i32 %n.017, 1
  %exitcond.not = icmp eq i32 %inc5, 16
  br i1 %exitcond.not, label %for.inc.out_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.out_crit_edge:                            ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

out:                                              ; preds = %for.inc.out_crit_edge, %entry.out_crit_edge
  %nhandled.2 = phi i32 [ 0, %entry.out_crit_edge ], [ %nhandled.1, %for.inc.out_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nhandled.2)
  %cmp6.not = icmp ne i32 %nhandled.2, 0
  %cond = zext i1 %cmp6.not to i32
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg) #6
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6xxx_g2_irq_mdio_setup(ptr nocapture noundef readonly %chip, ptr nocapture noundef %bus) local_unnamed_addr #0 align 64 {
entry:
  %irq.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 8
  %num_internal_phys32 = getelementptr inbounds %struct.mv88e6xxx_info, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %num_internal_phys32 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_internal_phys32, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp33.not = icmp eq i32 %3, 0
  br i1 %cmp33.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %domain = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 19, i32 2
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.lr.ph
  %phy.034 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end.for.body_crit_edge ]
  %4 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %domain, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq.i) #6
  %6 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %irq.i, align 4, !annotation !47
  %call.i = call ptr @__irq_resolve_mapping(ptr noundef %5, i32 noundef %phy.034, ptr noundef nonnull %irq.i) #6
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %irq_find_mapping.exit.thread, label %irq_find_mapping.exit

irq_find_mapping.exit.thread:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i) #6
  br label %if.end

irq_find_mapping.exit:                            ; preds = %for.body
  %7 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %irq.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp1 = icmp slt i32 %8, 0
  br i1 %cmp1, label %for.cond4.preheader, label %irq_find_mapping.exit.if.end_crit_edge

irq_find_mapping.exit.if.end_crit_edge:           ; preds = %irq_find_mapping.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

for.cond4.preheader:                              ; preds = %irq_find_mapping.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %phy.034)
  %cmp536 = icmp sgt i32 %phy.034, 0
  br i1 %cmp536, label %for.cond4.preheader.for.body6_crit_edge, label %for.cond4.preheader.cleanup_crit_edge

for.cond4.preheader.cleanup_crit_edge:            ; preds = %for.cond4.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond4.preheader.for.body6_crit_edge:          ; preds = %for.cond4.preheader
  br label %for.body6

if.end:                                           ; preds = %irq_find_mapping.exit.if.end_crit_edge, %irq_find_mapping.exit.thread
  %retval.0.i29 = phi i32 [ 0, %irq_find_mapping.exit.thread ], [ %8, %irq_find_mapping.exit.if.end_crit_edge ]
  %9 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %chip, align 8
  %phy_base_addr = getelementptr inbounds %struct.mv88e6xxx_info, ptr %10, i32 0, i32 10
  %11 = ptrtoint ptr %phy_base_addr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %phy_base_addr, align 4
  %add = add i32 %12, %phy.034
  %arrayidx = getelementptr %struct.mii_bus, ptr %bus, i32 0, i32 15, i32 %add
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %retval.0.i29, ptr %arrayidx, align 4
  %inc = add nuw i32 %phy.034, 1
  %14 = load ptr, ptr %chip, align 8
  %num_internal_phys = getelementptr inbounds %struct.mv88e6xxx_info, ptr %14, i32 0, i32 6
  %15 = ptrtoint ptr %num_internal_phys to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_internal_phys, align 4
  %cmp = icmp ult i32 %inc, %16
  br i1 %cmp, label %if.end.for.body_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body6:                                        ; preds = %for.body6.for.body6_crit_edge, %for.cond4.preheader.for.body6_crit_edge
  %phy.137 = phi i32 [ %inc10, %for.body6.for.body6_crit_edge ], [ 0, %for.cond4.preheader.for.body6_crit_edge ]
  %arrayidx8 = getelementptr %struct.mii_bus, ptr %bus, i32 0, i32 15, i32 %phy.137
  %17 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx8, align 4
  call void @irq_dispose_mapping(i32 noundef %18) #6
  %inc10 = add nuw nsw i32 %phy.137, 1
  %exitcond.not = icmp eq i32 %inc10, %phy.034
  br i1 %exitcond.not, label %for.body6.cleanup_crit_edge, label %for.body6.for.body6_crit_edge

for.body6.for.body6_crit_edge:                    ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body6

for.body6.cleanup_crit_edge:                      ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %for.body6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %for.cond4.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %8, %for.cond4.preheader.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ %8, %for.body6.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mv88e6xxx_g2_irq_mdio_free(ptr nocapture noundef readonly %chip, ptr nocapture noundef readonly %bus) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 8
  %num_internal_phys3 = getelementptr inbounds %struct.mv88e6xxx_info, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %num_internal_phys3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_internal_phys3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp4.not = icmp eq i32 %3, 0
  br i1 %cmp4.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %phy.05 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.mii_bus, ptr %bus, i32 0, i32 15, i32 %phy.05
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  tail call void @irq_dispose_mapping(i32 noundef %5) #6
  %inc = add nuw i32 %phy.05, 1
  %6 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chip, align 8
  %num_internal_phys = getelementptr inbounds %struct.mv88e6xxx_info, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %num_internal_phys to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_internal_phys, align 4
  %cmp = icmp ult i32 %inc, %9
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mv88e6xxx_g2_smi_phy_write_addr_c45(ptr noundef %chip, i1 noundef zeroext %external, i32 noundef %port, i32 noundef %dev, i32 noundef %addr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 8
  %global2_addr.i.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %global2_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %global2_addr.i.i, align 4
  %call.i.i = tail call i32 @mv88e6xxx_wait_bit(ptr noundef %chip, i32 noundef %3, i32 noundef 24, i32 noundef 15, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = trunc i32 %addr to i16
  %4 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chip, align 8
  %global2_addr.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %global2_addr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %global2_addr.i, align 4
  %call.i = tail call i32 @mv88e6xxx_write(ptr noundef %chip, i32 noundef %7, i32 noundef 25, i16 noundef zeroext %conv) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not = icmp eq i32 %call.i, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %dev.tr.i.i = trunc i32 %port to i16
  %8 = shl i16 %dev.tr.i.i, 5
  %9 = and i16 %8, 992
  %10 = trunc i32 %dev to i16
  %11 = and i16 %10, 31
  %conv18.i.i = select i1 %external, i16 -24576, i16 -32768
  %conv22.i.i = or i16 %conv18.i.i, %9
  %12 = or i16 %conv22.i.i, %11
  %13 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %chip, align 8
  %global2_addr.i.i.i.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %14, i32 0, i32 12
  %15 = ptrtoint ptr %global2_addr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %global2_addr.i.i.i.i, align 4
  %call.i.i.i.i = tail call i32 @mv88e6xxx_write(ptr noundef %chip, i32 noundef %16, i32 noundef 24, i16 noundef zeroext %12) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i.i.i:                                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %chip, align 8
  %global2_addr.i.i.i.i.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %18, i32 0, i32 12
  %19 = ptrtoint ptr %global2_addr.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %global2_addr.i.i.i.i.i, align 4
  %call.i.i.i.i.i = tail call i32 @mv88e6xxx_wait_bit(ptr noundef %chip, i32 noundef %20, i32 noundef 24, i32 noundef 15, i32 noundef 0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i.i, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i.i, %entry.cleanup_crit_edge ], [ %call.i, %if.end.cleanup_crit_edge ], [ %call.i.i.i.i.i, %if.end.i.i.i ], [ %call.i.i.i.i, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_resolve_mapping(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_domain_create_simple(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv88e6xxx_g2_irq_domain_map(ptr nocapture noundef readonly %d, i32 noundef %irq, i32 noundef %hwirq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %host_data = getelementptr inbounds %struct.irq_domain, ptr %d, i32 0, i32 3
  %0 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_data, align 4
  %call = tail call i32 @irq_set_chip_data(i32 noundef %irq, ptr noundef %1) #6
  %chip2 = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %1, i32 0, i32 19, i32 1
  tail call void @irq_set_chip_and_handler_name(i32 noundef %irq, ptr noundef %chip2, ptr noundef nonnull @handle_level_irq, ptr noundef null) #6
  tail call void @irq_modify_status(i32 noundef %irq, i32 noundef 0, i32 noundef 1024) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_xlate_twocell(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_chip_data(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_level_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chip_and_handler_name(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_modify_status(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_create_mapping_affinity(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @mv88e6xxx_g2_irq_mask(ptr nocapture noundef readonly %d) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  %shl = shl nuw i32 1, %3
  %g2_irq = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %1, i32 0, i32 19
  %4 = ptrtoint ptr %g2_irq to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %g2_irq, align 4
  %6 = trunc i32 %shl to i16
  %conv1 = or i16 %5, %6
  store i16 %conv1, ptr %g2_irq, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @mv88e6xxx_g2_irq_unmask(ptr nocapture noundef readonly %d) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  %shl = shl nuw i32 1, %3
  %g2_irq = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %1, i32 0, i32 19
  %4 = ptrtoint ptr %g2_irq to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %g2_irq, align 4
  %6 = trunc i32 %shl to i16
  %7 = xor i16 %6, -1
  %conv1 = and i16 %5, %7
  store i16 %conv1, ptr %g2_irq, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mv88e6xxx_g2_irq_bus_lock(ptr nocapture noundef readonly %d) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %reg_lock.i = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %reg_lock.i, i32 noundef 0) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mv88e6xxx_g2_irq_bus_sync_unlock(ptr nocapture noundef readonly %d) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %g2_irq = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %g2_irq to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %g2_irq, align 4
  %neg = xor i16 %3, -1
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %global2_addr.i.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %global2_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %global2_addr.i.i, align 4
  %call.i.i = tail call i32 @mv88e6xxx_write(ptr noundef %1, i32 noundef %7, i32 noundef 1, i16 noundef zeroext %neg) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.11) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %reg_lock.i = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %1, i32 0, i32 4
  tail call void @mutex_unlock(ptr noundef %reg_lock.i) #6
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_nested_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv88e6xxx_g2_watchdog_thread_fn(i32 noundef %irq, ptr noundef %dev_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_lock.i = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %dev_id, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %reg_lock.i, i32 noundef 0) #6
  %0 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_id, align 8
  %ops = getelementptr inbounds %struct.mv88e6xxx_info, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %watchdog_ops = getelementptr inbounds %struct.mv88e6xxx_ops, ptr %3, i32 0, i32 42
  %4 = ptrtoint ptr %watchdog_ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %watchdog_ops, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 %7(ptr noundef %dev_id, i32 noundef %irq) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %call, %if.then ], [ 0, %entry.if.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %reg_lock.i) #6
  ret i32 %ret.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !13, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !28, !30, !32, !33, !34, !35, !36}
!llvm.module.flags = !{!38, !39, !40, !41, !42, !43, !44, !45}
!llvm.ident = !{!46}

!0 = !{ptr @mv88e6097_watchdog_ops, !1, !"mv88e6097_watchdog_ops", i1 false, i1 false}
!1 = !{!"../drivers/net/dsa/mv88e6xxx/global2.c", i32 851, i32 32}
!2 = !{ptr @mv88e6250_watchdog_ops, !3, !"mv88e6250_watchdog_ops", i1 false, i1 false}
!3 = !{!"../drivers/net/dsa/mv88e6xxx/global2.c", i32 877, i32 32}
!4 = !{ptr @mv88e6390_watchdog_ops, !5, !"mv88e6390_watchdog_ops", i1 false, i1 false}
!5 = !{!"../drivers/net/dsa/mv88e6xxx/global2.c", i32 928, i32 32}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/dsa/mv88e6xxx/global2.c", i32 1143, i32 4}
!8 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/dsa/mv88e6xxx/global2.c", i32 826, i32 2}
!10 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @mv88e6097_watchdog_action._entry, !9, !"_entry", i1 false, i1 false}
!15 = !{ptr @mv88e6097_watchdog_action._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/dsa/mv88e6xxx/global2.c", i32 902, i32 2}
!18 = !{ptr @mv88e6390_watchdog_action._entry, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @mv88e6390_watchdog_action._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/dsa/mv88e6xxx/global2.c", i32 909, i32 2}
!22 = !{ptr @mv88e6390_watchdog_action._entry.7, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @mv88e6390_watchdog_action._entry_ptr.9, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @mv88e6xxx_g2_irq_domain_ops, !25, !"mv88e6xxx_g2_irq_domain_ops", i1 false, i1 false}
!25 = !{!"../drivers/net/dsa/mv88e6xxx/global2.c", i32 1092, i32 36}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/dsa/mv88e6xxx/global2.c", i32 1072, i32 12}
!28 = !{ptr @mv88e6xxx_g2_irq_chip, !29, !"mv88e6xxx_g2_irq_chip", i1 false, i1 false}
!29 = !{!"../drivers/net/dsa/mv88e6xxx/global2.c", i32 1071, i32 30}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/dsa/mv88e6xxx/global2.c", i32 1066, i32 3}
!32 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @mv88e6xxx_g2_irq_bus_sync_unlock._entry, !31, !"_entry", i1 false, i1 false}
!35 = !{ptr @mv88e6xxx_g2_irq_bus_sync_unlock._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/dsa/mv88e6xxx/global2.c", i32 968, i32 4}
!38 = !{i32 1, !"wchar_size", i32 2}
!39 = !{i32 1, !"min_enum_size", i32 4}
!40 = !{i32 8, !"branch-target-enforcement", i32 0}
!41 = !{i32 8, !"sign-return-address", i32 0}
!42 = !{i32 8, !"sign-return-address-all", i32 0}
!43 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!44 = !{i32 7, !"uwtable", i32 1}
!45 = !{i32 7, !"frame-pointer", i32 2}
!46 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!47 = !{!"auto-init"}
!48 = !{i8 0, i8 2}
