; ModuleID = '/llk/IR_all_yes/drivers/net/dsa/mv88e6xxx/port.c_pt.bc'
source_filename = "../drivers/net/dsa/mv88e6xxx/port.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.mv88e6xxx_info = type { i32, i16, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i8, i8, i32, i8, ptr, i8 }
%struct.mv88e6xxx_chip = type { ptr, i32, ptr, ptr, %struct.mutex, ptr, ptr, i32, ptr, %struct.mutex, i32, %struct.work_struct, %struct.timer_list, %struct.mutex, ptr, i32, %struct.list_head, %struct.idr, %struct.mv88e6xxx_irq, %struct.mv88e6xxx_irq, i32, [64 x i8], i32, [64 x i8], i32, [64 x i8], i32, [64 x i8], i32, [64 x i8], ptr, %struct.kthread_delayed_work, [2 x i8], %struct.cyclecounter, %struct.timecounter, %struct.delayed_work, ptr, %struct.ptp_clock_info, %struct.delayed_work, [16 x %struct.ptp_pin_desc], i16, i16, i16, i32, i32, [12 x %struct.mv88e6xxx_port_hwtstamp], [12 x %struct.mv88e6xxx_port], [5 x ptr] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.mv88e6xxx_irq = type { i16, %struct.irq_chip, ptr, i32 }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.kthread_delayed_work = type { %struct.kthread_work, %struct.timer_list }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.cyclecounter = type { ptr, i64, i32, i32 }
%struct.timecounter = type { ptr, i64, i64, i64, i64 }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.ptp_pin_desc = type { [64 x i8], i32, i32, i32, [5 x i32] }
%struct.mv88e6xxx_port_hwtstamp = type { i32, i32, %struct.sk_buff_head, %struct.sk_buff_head, i32, ptr, i16, %struct.hwtstamp_config }
%struct.sk_buff_head = type { %union.anon.78, i32, %struct.spinlock }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { ptr, ptr }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.mv88e6xxx_port = type { ptr, i32, %struct.mv88e6xxx_vlan, [2 x i64], i64, i64, i64, i64, i64, i32, i8, i8, i8, i32, [64 x i8], ptr }
%struct.mv88e6xxx_vlan = type { i16, i8 }
%struct.mv88e6xxx_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dsa_switch = type { ptr, ptr, i32, i16, %struct.notifier_block, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, ptr, i32, i32, i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.dsa_switch_tree = type { %struct.list_head, %struct.list_head, %struct.raw_notifier_head, i32, %struct.kref, ptr, ptr, i32, i8, ptr, %struct.list_head, i32, i32 }
%struct.raw_notifier_head = type { ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dsa_port = type { %union.anon.149, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, [6 x i8], i8, i8, ptr, i32, ptr, %struct.devlink_port, ptr, %struct.phylink_config, ptr, ptr, %struct.list_head, ptr, ptr, %struct.mutex, %struct.list_head, %struct.list_head }
%union.anon.149 = type { ptr }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.138 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.138 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%struct.phylink_config = type { ptr, i32, i8, i8, i8, i8, ptr, [1 x i32], i32 }

@mv88e6xxx_port_set_link.__UNIQUE_ID_ddebug498 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 42, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mv88e6xxx\00", [22 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mv88e6xxx_port_set_link\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/net/dsa/mv88e6xxx/port.c\00", [63 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"p%d: %s link %s\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Force\00", [26 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Unforce\00", [24 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"up\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"down\00", [27 x i8] zeroinitializer }, align 32
@mv88e6393x_port_set_speed_duplex.__UNIQUE_ID_ddebug502 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.9, i8 0, i8 -126, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"mv88e6393x_port_set_speed_duplex\00", [63 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"p%d: Speed set to %d Mbps\0A\00", [37 x i8] zeroinitializer }, align 32
@mv88e6393x_port_set_speed_duplex.__UNIQUE_ID_ddebug503 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.10, i8 0, i8 -126, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"p%d: Speed unforced\0A\00", [43 x i8] zeroinitializer }, align 32
@mv88e6393x_port_set_speed_duplex.__UNIQUE_ID_ddebug504 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.11, i8 0, i8 -125, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"p%d: %s %s duplex\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"full\00", [27 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"half\00", [27 x i8] zeroinitializer }, align 32
@mv88e6xxx_port_set_state.__UNIQUE_ID_ddebug505 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.2, ptr @.str.15, i8 0, i8 -48, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mv88e6xxx_port_set_state\00", [39 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"p%d: PortState set to %s\0A\00", [38 x i8] zeroinitializer }, align 32
@mv88e6xxx_port_state_names = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32], [16 x i8] zeroinitializer }, align 32
@mv88e6xxx_port_set_vlan_map.__UNIQUE_ID_ddebug506 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.2, ptr @.str.17, i8 1, i8 5, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"mv88e6xxx_port_set_vlan_map\00", [36 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"p%d: VLANTable set to %.3x\0A\00", [36 x i8] zeroinitializer }, align 32
@mv88e6xxx_port_set_fid.__UNIQUE_ID_ddebug507 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.2, ptr @.str.19, i8 1, i8 22, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mv88e6xxx_port_set_fid\00", [41 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"p%d: FID set to %u\0A\00", [44 x i8] zeroinitializer }, align 32
@mv88e6xxx_port_set_pvid.__UNIQUE_ID_ddebug508 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.2, ptr @.str.21, i8 1, i8 32, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mv88e6xxx_port_set_pvid\00", [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"p%d: DefaultVID set to %u\0A\00", [37 x i8] zeroinitializer }, align 32
@mv88e6xxx_port_set_8021q_mode.__UNIQUE_ID_ddebug509 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.2, ptr @.str.23, i8 1, i8 57, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"mv88e6xxx_port_set_8021q_mode\00", [34 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"p%d: 802.1QMode set to %s\0A\00", [37 x i8] zeroinitializer }, align 32
@mv88e6xxx_port_8021q_mode_names = internal constant { [3073 x ptr], [3100 x i8] } { [3073 x ptr] [ptr @.str.29, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.33, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.34, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.35], [3100 x i8] zeroinitializer }, align 32
@mv88e6xxx_port_set_rgmii_delay.__UNIQUE_ID_ddebug497 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.24, ptr @.str.2, ptr @.str.25, i8 0, i8 28, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"mv88e6xxx_port_set_rgmii_delay\00", [33 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"p%d: delay RXCLK %s, TXCLK %s\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"yes\00", [28 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"no\00", [29 x i8] zeroinitializer }, align 32
@mv88e6xxx_port_set_speed_duplex.__UNIQUE_ID_ddebug499 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.2, ptr @.str.9, i8 0, i8 71, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"mv88e6xxx_port_set_speed_duplex\00", [32 x i8] zeroinitializer }, align 32
@mv88e6xxx_port_set_speed_duplex.__UNIQUE_ID_ddebug500 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.2, ptr @.str.10, i8 0, i8 72, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@mv88e6xxx_port_set_speed_duplex.__UNIQUE_ID_ddebug501 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.2, ptr @.str.11, i8 0, i8 73, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Disabled\00", [23 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Blocking/Listening\00", [45 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Learning\00", [23 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Forwarding\00", [21 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Fallback\00", [23 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Check\00", [26 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Secure\00", [25 x i8] zeroinitializer }, align 32
@switch.table.mv88e6xxx_port_set_state = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 0, i32 1, i32 2, i32 3, i32 1], [44 x i8] zeroinitializer }, align 32
@switch.table.mv88e6352_port_set_policy = internal constant { [8 x i16], [16 x i8] } { [8 x i16] [i16 -16384, i16 12288, i16 3072, i16 768, i16 192, i16 48, i16 12, i16 3], [16 x i8] zeroinitializer }, align 32
@switch.table.mv88e6393x_port_set_policy = internal constant { [8 x i16], [16 x i8] } { [8 x i16] [i16 -16384, i16 12288, i16 3072, i16 768, i16 192, i16 48, i16 12, i16 3], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 9, i64 10, i64 11, i64 12]
@__sancov_gen_cov_switch_values.36 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 4294967294]
@__sancov_gen_cov_switch_values.37 = internal global [9 x i64] [i64 7, i64 32, i64 10, i64 100, i64 200, i64 1000, i64 2500, i64 10000, i64 4294967294]
@__sancov_gen_cov_switch_values.38 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 4294967294]
@__sancov_gen_cov_switch_values.39 = internal global [10 x i64] [i64 8, i64 32, i64 10, i64 100, i64 200, i64 1000, i64 2500, i64 5000, i64 10000, i64 4294967294]
@__sancov_gen_cov_switch_values.40 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 4294967294]
@__sancov_gen_cov_switch_values.41 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 9, i64 10]
@__sancov_gen_cov_switch_values.42 = internal global [10 x i64] [i64 8, i64 32, i64 4, i64 15, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26]
@__sancov_gen_cov_switch_values.43 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 15, i64 24, i64 25]
@__sancov_gen_cov_switch_values.44 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 9, i64 10]
@__sancov_gen_cov_switch_values.45 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 15, i64 24, i64 25]
@__sancov_gen_cov_switch_values.46 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.47 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.48 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.49 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.50 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 167, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 520, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 522, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 523, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 834, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant [27 x i8] c"mv88e6xxx_port_state_names\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 792, i32 27 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 1044, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 1112, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 1152, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 1254, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant [32 x i8] c"mv88e6xxx_port_8021q_mode_names\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 1159, i32 27 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 111, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 287, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 793, i32 41 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 794, i32 41 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 795, i32 41 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 796, i32 43 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 1161, i32 46 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 1162, i32 43 }
@___asan_gen_.162 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.163 = private constant [36 x i8] c"../drivers/net/dsa/mv88e6xxx/port.c\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 1163, i32 44 }
@___asan_gen_.165 = private unnamed_addr constant [38 x i8] c"switch.table.mv88e6xxx_port_set_state\00", align 1
@___asan_gen_.166 = private unnamed_addr constant [39 x i8] c"switch.table.mv88e6352_port_set_policy\00", align 1
@___asan_gen_.167 = private unnamed_addr constant [40 x i8] c"switch.table.mv88e6393x_port_set_policy\00", align 1
@llvm.compiler.used = appending global [41 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @mv88e6xxx_port_state_names, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @mv88e6xxx_port_8021q_mode_names, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @switch.table.mv88e6xxx_port_set_state, ptr @switch.table.mv88e6352_port_set_policy, ptr @switch.table.mv88e6393x_port_set_policy], section "llvm.metadata"
@0 = internal global [41 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv88e6xxx_port_state_names to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv88e6xxx_port_8021q_mode_names to i32), i32 12292, i32 15392, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mv88e6xxx_port_set_state to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mv88e6352_port_set_policy to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mv88e6393x_port_set_policy to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6xxx_port_read(ptr noundef %chip, i32 noundef %port, i32 noundef %reg, ptr noundef %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 8
  %port_base_addr = getelementptr inbounds %struct.mv88e6xxx_info, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %port_base_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port_base_addr, align 4
  %add = add i32 %3, %port
  %call = tail call i32 @mv88e6xxx_read(ptr noundef %chip, i32 noundef %add, i32 noundef %reg, ptr noundef %val) #4
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mv88e6xxx_read(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6xxx_port_wait_bit(ptr noundef %chip, i32 noundef %port, i32 noundef %reg, i32 noundef %bit, i32 noundef %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 8
  %port_base_addr = getelementptr inbounds %struct.mv88e6xxx_info, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %port_base_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port_base_addr, align 4
  %add = add i32 %3, %port
  %call = tail call i32 @mv88e6xxx_wait_bit(ptr noundef %chip, i32 noundef %add, i32 noundef %reg, i32 noundef %bit, i32 noundef %val) #4
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mv88e6xxx_wait_bit(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6xxx_port_write(ptr noundef %chip, i32 noundef %port, i32 noundef %reg, i16 noundef zeroext %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 8
  %port_base_addr = getelementptr inbounds %struct.mv88e6xxx_info, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %port_base_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port_base_addr, align 4
  %add = add i32 %3, %port
  %call = tail call i32 @mv88e6xxx_write(ptr noundef %chip, i32 noundef %add, i32 noundef %reg, i16 noundef zeroext %val) #4
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mv88e6xxx_write(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6185_port_set_pause(ptr noundef %chip, i32 noundef %port, i32 noundef %pause) local_unnamed_addr #0 align 64 {
entry:
  %reg = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg) #4
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %reg, align 2, !annotation !82
  %1 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %chip, align 8
  %port_base_addr.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %2, i32 0, i32 9
  %3 = ptrtoint ptr %port_base_addr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %port_base_addr.i, align 4
  %add.i = add i32 %4, %port
  %call.i = call i32 @mv88e6xxx_read(ptr noundef %chip, i32 noundef %add.i, i32 noundef 0, ptr noundef nonnull %reg) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pause)
  %tobool1.not = icmp eq i32 %pause, 0
  %5 = ptrtoint ptr %reg to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %reg, align 2
  %7 = and i16 %6, -16385
  %masksel = select i1 %tobool1.not, i16 0, i16 16384
  %storemerge = or i16 %7, %masksel
  store i16 %storemerge, ptr %reg, align 2
  %8 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %chip, align 8
  %port_base_addr.i12 = getelementptr inbounds %struct.mv88e6xxx_info, ptr %9, i32 0, i32 9
  %10 = ptrtoint ptr %port_base_addr.i12 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %port_base_addr.i12, align 4
  %add.i13 = add i32 %11, %port
  %call.i14 = call i32 @mv88e6xxx_write(ptr noundef %chip, i32 noundef %add.i13, i32 noundef 0, i16 noundef zeroext %storemerge) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i14, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6352_port_set_rgmii_delay(ptr noundef %chip, i32 noundef %port, i32 noundef %mode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %port)
  %cmp = icmp slt i32 %port, 5
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call fastcc i32 @mv88e6xxx_port_set_rgmii_delay(ptr noundef %chip, i32 noundef %port, i32 noundef %mode)
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -95, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mv88e6xxx_port_set_rgmii_delay(ptr noundef %chip, i32 noundef %port, i32 noundef %mode) unnamed_addr #0 align 64 {
entry:
  %reg = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg) #4
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %reg, align 2, !annotation !82
  %1 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %chip, align 8
  %port_base_addr.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %2, i32 0, i32 9
  %3 = ptrtoint ptr %port_base_addr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %port_base_addr.i, align 4
  %add.i = add i32 %4, %port
  %call.i = call i32 @mv88e6xxx_read(ptr noundef %chip, i32 noundef %add.i, i32 noundef 1, ptr noundef nonnull %reg) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %reg to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %reg, align 2
  %7 = and i16 %6, 16383
  store i16 %7, ptr %reg, align 2
  %8 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mode, label %if.end.cleanup_crit_edge [
    i32 11, label %sw.bb
    i32 12, label %sw.bb4
    i32 10, label %sw.bb8
    i32 9, label %if.end.sw.epilog_crit_edge
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %9 = or i16 %7, -32768
  %10 = ptrtoint ptr %reg to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %reg, align 2
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %11 = or i16 %7, 16384
  %12 = ptrtoint ptr %reg to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %reg, align 2
  br label %sw.epilog

sw.bb8:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %13 = or i16 %6, -16384
  %14 = ptrtoint ptr %reg to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %reg, align 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb8, %sw.bb4, %sw.bb, %if.end.sw.epilog_crit_edge
  %15 = ptrtoint ptr %reg to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %reg, align 2
  %17 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %chip, align 8
  %port_base_addr.i37 = getelementptr inbounds %struct.mv88e6xxx_info, ptr %18, i32 0, i32 9
  %19 = ptrtoint ptr %port_base_addr.i37 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %port_base_addr.i37, align 4
  %add.i38 = add i32 %20, %port
  %call.i39 = call i32 @mv88e6xxx_write(ptr noundef %chip, i32 noundef %add.i38, i32 noundef 1, i16 noundef zeroext %16) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i39)
  %tobool13.not = icmp eq i32 %call.i39, 0
  br i1 %tobool13.not, label %do.body, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mv88e6xxx_port_set_rgmii_delay.__UNIQUE_ID_ddebug497, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mv88e6xxx_port_set_rgmii_delay, %if.then20)) #4
          to label %cleanup [label %if.then20], !srcloc !83

if.then20:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %dev = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 3
  %21 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev, align 4
  %23 = ptrtoint ptr %reg to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %reg, align 2
  %conv21 = zext i16 %24 to i32
  %and22 = and i32 %conv21, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  %cond = select i1 %tobool23.not, ptr @.str.27, ptr @.str.26
  %and25 = and i32 %conv21, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  %cond27 = select i1 %tobool26.not, ptr @.str.27, ptr @.str.26
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mv88e6xxx_port_set_rgmii_delay.__UNIQUE_ID_ddebug497, ptr noundef %22, ptr noundef nonnull @.str.25, i32 noundef %port, ptr noundef nonnull %cond, ptr noundef nonnull %cond27) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then20, %do.body, %sw.epilog.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %call.i39, %sw.epilog.cleanup_crit_edge ], [ 0, %if.then20 ], [ 0, %do.body ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6390_port_set_rgmii_delay(ptr noundef %chip, i32 noundef %port, i32 noundef %mode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %port)
  %cmp.not = icmp eq i32 %port, 0
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call fastcc i32 @mv88e6xxx_port_set_rgmii_delay(ptr noundef %chip, i32 noundef 0, i32 noundef %mode)
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -95, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6xxx_port_set_link(ptr noundef %chip, i32 noundef %port, i32 noundef %link) local_unnamed_addr #0 align 64 {
entry:
  %reg = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg) #4
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %reg, align 2, !annotation !82
  %1 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %chip, align 8
  %port_base_addr.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %2, i32 0, i32 9
  %3 = ptrtoint ptr %port_base_addr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %port_base_addr.i, align 4
  %add.i = add i32 %4, %port
  %call.i = call i32 @mv88e6xxx_read(ptr noundef %chip, i32 noundef %add.i, i32 noundef 1, ptr noundef nonnull %reg) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %reg to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %reg, align 2
  %7 = and i16 %6, -49
  store i16 %7, ptr %reg, align 2
  %8 = zext i32 %link to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %link, label %if.end.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb4
    i32 -2, label %if.end.sw.epilog_crit_edge
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %9 = or i16 %7, 16
  %10 = ptrtoint ptr %reg to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %reg, align 2
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %11 = or i16 %6, 48
  %12 = ptrtoint ptr %reg to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %reg, align 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb4, %sw.bb, %if.end.sw.epilog_crit_edge
  %13 = ptrtoint ptr %reg to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %reg, align 2
  %15 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %chip, align 8
  %port_base_addr.i33 = getelementptr inbounds %struct.mv88e6xxx_info, ptr %16, i32 0, i32 9
  %17 = ptrtoint ptr %port_base_addr.i33 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %port_base_addr.i33, align 4
  %add.i34 = add i32 %18, %port
  %call.i35 = call i32 @mv88e6xxx_write(ptr noundef %chip, i32 noundef %add.i34, i32 noundef 1, i16 noundef zeroext %14) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i35)
  %tobool9.not = icmp eq i32 %call.i35, 0
  br i1 %tobool9.not, label %do.body, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mv88e6xxx_port_set_link.__UNIQUE_ID_ddebug498, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mv88e6xxx_port_set_link, %if.then16)) #4
          to label %cleanup [label %if.then16], !srcloc !83

if.then16:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %dev = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 3
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 4
  %21 = ptrtoint ptr %reg to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %reg, align 2
  %conv17 = zext i16 %22 to i32
  %and18 = and i32 %conv17, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  %cond = select i1 %tobool19.not, ptr @.str.5, ptr @.str.4
  %and21 = and i32 %conv17, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  %cond23 = select i1 %tobool22.not, ptr @.str.7, ptr @.str.6
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mv88e6xxx_port_set_link.__UNIQUE_ID_ddebug498, ptr noundef %20, ptr noundef nonnull @.str.3, i32 noundef %port, ptr noundef nonnull %cond, ptr noundef nonnull %cond23) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then16, %do.body, %sw.epilog.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call.i35, %sw.epilog.cleanup_crit_edge ], [ 0, %if.then16 ], [ 0, %do.body ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg) #4
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6xxx_port_sync_link(ptr noundef %chip, i32 noundef %port, i32 noundef %mode, i1 noundef zeroext %isup) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 8
  %ops1 = getelementptr inbounds %struct.mv88e6xxx_info, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %ops1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops1, align 4
  %port_set_link = getelementptr inbounds %struct.mv88e6xxx_ops, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %port_set_link to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %port_set_link, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %entry.if.end5_crit_edge, label %if.then3

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5

if.then3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %. = zext i1 %isup to i32
  %call = tail call i32 %5(ptr noundef %chip, i32 noundef %port, i32 noundef %.) #4
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %entry.if.end5_crit_edge
  %err.0 = phi i32 [ %call, %if.then3 ], [ 0, %entry.if.end5_crit_edge ]
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6185_port_sync_link(ptr noundef %chip, i32 noundef %port, i32 noundef %mode, i1 noundef zeroext %isup) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 8
  %ops1 = getelementptr inbounds %struct.mv88e6xxx_info, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %ops1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops1, align 4
  %port_set_link = getelementptr inbounds %struct.mv88e6xxx_ops, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %port_set_link to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %port_set_link, align 4
  %tobool5.not = icmp eq ptr %5, null
  br i1 %tobool5.not, label %entry.if.end8_crit_edge, label %if.then6

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end8

if.then6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %mode)
  %cmp = icmp eq i32 %mode, 2
  %. = zext i1 %isup to i32
  %link.0 = select i1 %cmp, i32 -2, i32 %.
  %call = tail call i32 %5(ptr noundef %chip, i32 noundef %port, i32 noundef %link.0) #4
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %entry.if.end8_crit_edge
  %err.0 = phi i32 [ %call, %if.then6 ], [ 0, %entry.if.end8_crit_edge ]
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6065_port_set_speed_duplex(ptr noundef %chip, i32 noundef %port, i32 noundef %speed, i32 noundef %duplex) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %speed)
  %cmp = icmp eq i32 %speed, 2147483647
  %spec.store.select = select i1 %cmp, i32 200, i32 %speed
  call void @__sanitizer_cov_trace_const_cmp4(i32 200, i32 %spec.store.select)
  %cmp1 = icmp sgt i32 %spec.store.select, 200
  br i1 %cmp1, label %entry.return_crit_edge, label %if.end3

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end3:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call fastcc i32 @mv88e6xxx_port_set_speed_duplex(ptr noundef %chip, i32 noundef %port, i32 noundef %spec.store.select, i1 noundef zeroext false, i1 noundef zeroext false, i32 noundef %duplex)
  br label %return

return:                                           ; preds = %if.end3, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end3 ], [ -95, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mv88e6xxx_port_set_speed_duplex(ptr noundef %chip, i32 noundef %port, i32 noundef %speed, i1 noundef zeroext %alt_bit, i1 noundef zeroext %force_bit, i32 noundef %duplex) unnamed_addr #0 align 64 {
entry:
  %reg = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg) #4
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %reg, align 2, !annotation !82
  %1 = zext i32 %speed to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %speed, label %entry.cleanup_crit_edge [
    i32 10, label %entry.sw.epilog_crit_edge
    i32 100, label %sw.bb2
    i32 200, label %sw.bb3
    i32 1000, label %sw.bb4
    i32 2500, label %sw.bb5
    i32 10000, label %entry.sw.bb10_crit_edge
    i32 -2, label %entry.sw.bb10_crit_edge139
  ]

entry.sw.bb10_crit_edge139:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb10

entry.sw.bb10_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb10

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %. = select i1 %alt_bit, i16 4097, i16 2
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %.125 = select i1 %alt_bit, i16 4099, i16 3
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry.sw.bb10_crit_edge, %entry.sw.bb10_crit_edge139
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb10, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %entry.sw.epilog_crit_edge
  %ctrl.0 = phi i16 [ 3, %sw.bb10 ], [ 2, %sw.bb4 ], [ 1, %sw.bb2 ], [ 0, %entry.sw.epilog_crit_edge ], [ %., %sw.bb3 ], [ %.125, %sw.bb5 ]
  %2 = zext i32 %duplex to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %duplex, label %sw.epilog.cleanup_crit_edge [
    i32 0, label %sw.bb11
    i32 1, label %sw.bb13
    i32 -2, label %sw.epilog.sw.epilog18_crit_edge
  ]

sw.epilog.sw.epilog18_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog18

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb11:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  %3 = or i16 %ctrl.0, 4
  br label %sw.epilog18

sw.bb13:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  %4 = or i16 %ctrl.0, 12
  br label %sw.epilog18

sw.epilog18:                                      ; preds = %sw.bb13, %sw.bb11, %sw.epilog.sw.epilog18_crit_edge
  %ctrl.1 = phi i16 [ %ctrl.0, %sw.epilog.sw.epilog18_crit_edge ], [ %4, %sw.bb13 ], [ %3, %sw.bb11 ]
  %5 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %chip, align 8
  %port_base_addr.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %6, i32 0, i32 9
  %7 = ptrtoint ptr %port_base_addr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %port_base_addr.i, align 4
  %add.i = add i32 %8, %port
  %call.i = call i32 @mv88e6xxx_read(ptr noundef %chip, i32 noundef %add.i, i32 noundef 1, ptr noundef nonnull %reg) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool19.not = icmp eq i32 %call.i, 0
  br i1 %tobool19.not, label %if.end21, label %sw.epilog18.cleanup_crit_edge

sw.epilog18.cleanup_crit_edge:                    ; preds = %sw.epilog18
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end21:                                         ; preds = %sw.epilog18
  %9 = ptrtoint ptr %reg to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %reg, align 2
  %spec.select.v = select i1 %alt_bit, i16 -4112, i16 -16
  %spec.select = and i16 %10, %spec.select.v
  store i16 %spec.select, ptr %reg, align 2
  br i1 %force_bit, label %if.then31, label %if.end21.if.end41_crit_edge

if.end21.if.end41_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end41

if.then31:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #6
  %11 = and i16 %spec.select, -8208
  %12 = ptrtoint ptr %reg to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %reg, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %speed)
  %cmp.not = icmp eq i32 %speed, -2
  %13 = or i16 %ctrl.1, 8192
  %spec.select126 = select i1 %cmp.not, i16 %ctrl.1, i16 %13
  br label %if.end41

if.end41:                                         ; preds = %if.then31, %if.end21.if.end41_crit_edge
  %ctrl.2 = phi i16 [ %ctrl.1, %if.end21.if.end41_crit_edge ], [ %spec.select126, %if.then31 ]
  %14 = ptrtoint ptr %reg to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %reg, align 2
  %or44124 = or i16 %15, %ctrl.2
  store i16 %or44124, ptr %reg, align 2
  %16 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %chip, align 8
  %port_base_addr.i133 = getelementptr inbounds %struct.mv88e6xxx_info, ptr %17, i32 0, i32 9
  %18 = ptrtoint ptr %port_base_addr.i133 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %port_base_addr.i133, align 4
  %add.i134 = add i32 %19, %port
  %call.i135 = call i32 @mv88e6xxx_write(ptr noundef %chip, i32 noundef %add.i134, i32 noundef 1, i16 noundef zeroext %or44124) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i135)
  %tobool47.not = icmp eq i32 %call.i135, 0
  br i1 %tobool47.not, label %if.end49, label %if.end41.cleanup_crit_edge

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end49:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %speed)
  %cmp50.not = icmp eq i32 %speed, -2
  br i1 %cmp50.not, label %do.body61, label %do.body

do.body:                                          ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mv88e6xxx_port_set_speed_duplex.__UNIQUE_ID_ddebug499, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mv88e6xxx_port_set_speed_duplex, %if.then58)) #4
          to label %do.body79 [label %if.then58], !srcloc !83

if.then58:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %dev = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 3
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mv88e6xxx_port_set_speed_duplex.__UNIQUE_ID_ddebug499, ptr noundef %21, ptr noundef nonnull @.str.9, i32 noundef %port, i32 noundef %speed) #4
  br label %do.body79

do.body61:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mv88e6xxx_port_set_speed_duplex.__UNIQUE_ID_ddebug500, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mv88e6xxx_port_set_speed_duplex, %if.then73)) #4
          to label %do.body79 [label %if.then73], !srcloc !83

if.then73:                                        ; preds = %do.body61
  call void @__sanitizer_cov_trace_pc() #6
  %dev74 = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 3
  %22 = ptrtoint ptr %dev74 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev74, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mv88e6xxx_port_set_speed_duplex.__UNIQUE_ID_ddebug500, ptr noundef %23, ptr noundef nonnull @.str.10, i32 noundef %port) #4
  br label %do.body79

do.body79:                                        ; preds = %if.then73, %do.body61, %if.then58, %do.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mv88e6xxx_port_set_speed_duplex.__UNIQUE_ID_ddebug501, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mv88e6xxx_port_set_speed_duplex, %if.then91)) #4
          to label %cleanup [label %if.then91], !srcloc !83

if.then91:                                        ; preds = %do.body79
  call void @__sanitizer_cov_trace_pc() #6
  %dev92 = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 3
  %24 = ptrtoint ptr %dev92 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev92, align 4
  %26 = ptrtoint ptr %reg to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %reg, align 2
  %conv93 = zext i16 %27 to i32
  %and94 = and i32 %conv93, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and94)
  %tobool95.not = icmp eq i32 %and94, 0
  %cond = select i1 %tobool95.not, ptr @.str.5, ptr @.str.4
  %and97 = and i32 %conv93, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and97)
  %tobool98.not = icmp eq i32 %and97, 0
  %cond99 = select i1 %tobool98.not, ptr @.str.13, ptr @.str.12
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mv88e6xxx_port_set_speed_duplex.__UNIQUE_ID_ddebug501, ptr noundef %25, ptr noundef nonnull @.str.11, i32 noundef %port, ptr noundef nonnull %cond, ptr noundef nonnull %cond99) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then91, %do.body79, %if.end41.cleanup_crit_edge, %sw.epilog18.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ -95, %sw.epilog.cleanup_crit_edge ], [ %call.i, %sw.epilog18.cleanup_crit_edge ], [ %call.i135, %if.end41.cleanup_crit_edge ], [ 0, %if.then91 ], [ 0, %do.body79 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6185_port_set_speed_duplex(ptr noundef %chip, i32 noundef %port, i32 noundef %speed, i32 noundef %duplex) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %speed)
  %cmp = icmp eq i32 %speed, 2147483647
  %spec.store.select = select i1 %cmp, i32 1000, i32 %speed
  call void @__sanitizer_cov_trace_const_cmp4(i32 200, i32 %spec.store.select)
  %cmp1 = icmp eq i32 %spec.store.select, 200
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %spec.store.select)
  %cmp2 = icmp sgt i32 %spec.store.select, 1000
  %or.cond = or i1 %cmp1, %cmp2
  br i1 %or.cond, label %entry.return_crit_edge, label %if.end4

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end4:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call fastcc i32 @mv88e6xxx_port_set_speed_duplex(ptr noundef %chip, i32 noundef %port, i32 noundef %spec.store.select, i1 noundef zeroext false, i1 noundef zeroext false, i32 noundef %duplex)
  br label %return

return:                                           ; preds = %if.end4, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end4 ], [ -95, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6250_port_set_speed_duplex(ptr noundef %chip, i32 noundef %port, i32 noundef %speed, i32 noundef %duplex) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %speed)
  %cmp = icmp eq i32 %speed, 2147483647
  %spec.store.select = select i1 %cmp, i32 100, i32 %speed
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %spec.store.select)
  %cmp1 = icmp sgt i32 %spec.store.select, 100
  br i1 %cmp1, label %entry.return_crit_edge, label %if.end3

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end3:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call fastcc i32 @mv88e6xxx_port_set_speed_duplex(ptr noundef %chip, i32 noundef %port, i32 noundef %spec.store.select, i1 noundef zeroext false, i1 noundef zeroext false, i32 noundef %duplex)
  br label %return

return:                                           ; preds = %if.end3, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end3 ], [ -95, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6341_port_set_speed_duplex(ptr noundef %chip, i32 noundef %port, i32 noundef %speed, i32 noundef %duplex) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %speed)
  %cmp = icmp eq i32 %speed, 2147483647
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %port)
  %cmp1 = icmp slt i32 %port, 5
  %cond = select i1 %cmp1, i32 1000, i32 2500
  %speed.addr.0 = select i1 %cmp, i32 %cond, i32 %speed
  call void @__sanitizer_cov_trace_const_cmp4(i32 2500, i32 %speed.addr.0)
  %cmp2 = icmp sgt i32 %speed.addr.0, 2500
  br i1 %cmp2, label %entry.return_crit_edge, label %if.end4

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end4:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 200, i32 %speed.addr.0)
  %cmp5 = icmp ne i32 %speed.addr.0, 200
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %port)
  %cmp6.not = icmp eq i32 %port, 0
  %or.cond = or i1 %cmp6.not, %cmp5
  %or.cond.not = xor i1 %or.cond, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 2500, i32 %speed.addr.0)
  %cmp9 = icmp eq i32 %speed.addr.0, 2500
  %or.cond22 = and i1 %cmp1, %cmp9
  %or.cond23 = or i1 %or.cond22, %or.cond.not
  br i1 %or.cond23, label %if.end4.return_crit_edge, label %if.end13

if.end4.return_crit_edge:                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end13:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call fastcc i32 @mv88e6xxx_port_set_speed_duplex(ptr noundef %chip, i32 noundef %port, i32 noundef %speed.addr.0, i1 noundef zeroext %cmp6.not, i1 noundef zeroext true, i32 noundef %duplex)
  br label %return

return:                                           ; preds = %if.end13, %if.end4.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end13 ], [ -95, %entry.return_crit_edge ], [ -95, %if.end4.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @mv88e6341_port_max_speed_mode(i32 noundef %port) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %port)
  %cmp = icmp eq i32 %port, 5
  %. = select i1 %cmp, i32 22, i32 0
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6352_port_set_speed_duplex(ptr noundef %chip, i32 noundef %port, i32 noundef %speed, i32 noundef %duplex) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %speed)
  %cmp = icmp eq i32 %speed, 2147483647
  %spec.store.select = select i1 %cmp, i32 1000, i32 %speed
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %spec.store.select)
  %cmp1 = icmp sgt i32 %spec.store.select, 1000
  br i1 %cmp1, label %entry.return_crit_edge, label %if.end3

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end3:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 200, i32 %spec.store.select)
  %cmp4 = icmp eq i32 %spec.store.select, 200
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %port)
  %cmp5 = icmp slt i32 %port, 5
  %or.cond = and i1 %cmp5, %cmp4
  br i1 %or.cond, label %if.end3.return_crit_edge, label %if.end7

if.end3.return_crit_edge:                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end7:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call fastcc i32 @mv88e6xxx_port_set_speed_duplex(ptr noundef %chip, i32 noundef %port, i32 noundef %spec.store.select, i1 noundef zeroext true, i1 noundef zeroext false, i32 noundef %duplex)
  br label %return

return:                                           ; preds = %if.end7, %if.end3.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end7 ], [ -95, %entry.return_crit_edge ], [ -95, %if.end3.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6390_port_set_speed_duplex(ptr noundef %chip, i32 noundef %port, i32 noundef %speed, i32 noundef %duplex) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %speed)
  %cmp = icmp eq i32 %speed, 2147483647
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %port)
  %cmp1 = icmp slt i32 %port, 9
  %cond = select i1 %cmp1, i32 1000, i32 2500
  %speed.addr.0 = select i1 %cmp, i32 %cond, i32 %speed
  call void @__sanitizer_cov_trace_const_cmp4(i32 2500, i32 %speed.addr.0)
  %cmp2 = icmp sgt i32 %speed.addr.0, 2500
  br i1 %cmp2, label %entry.return_crit_edge, label %if.end4

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end4:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 200, i32 %speed.addr.0)
  %cmp5 = icmp eq i32 %speed.addr.0, 200
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %port)
  %cmp6.not = icmp ne i32 %port, 0
  %or.cond.not = and i1 %cmp6.not, %cmp5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2500, i32 %speed.addr.0)
  %cmp9 = icmp eq i32 %speed.addr.0, 2500
  %or.cond21 = and i1 %cmp1, %cmp9
  %or.cond22 = or i1 %or.cond.not, %or.cond21
  br i1 %or.cond22, label %if.end4.return_crit_edge, label %if.end13

if.end4.return_crit_edge:                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end13:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call fastcc i32 @mv88e6xxx_port_set_speed_duplex(ptr noundef %chip, i32 noundef %port, i32 noundef %speed.addr.0, i1 noundef zeroext true, i1 noundef zeroext true, i32 noundef %duplex)
  br label %return

return:                                           ; preds = %if.end13, %if.end4.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end13 ], [ -95, %entry.return_crit_edge ], [ -95, %if.end4.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @mv88e6390_port_max_speed_mode(i32 noundef %port) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %port.off = add i32 %port, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %port.off)
  %switch = icmp ult i32 %port.off, 2
  %spec.select = select i1 %switch, i32 22, i32 0
  ret i32 %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6390x_port_set_speed_duplex(ptr noundef %chip, i32 noundef %port, i32 noundef %speed, i32 noundef %duplex) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %speed)
  %cmp = icmp eq i32 %speed, 2147483647
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %port)
  %cmp1 = icmp slt i32 %port, 9
  %cond = select i1 %cmp1, i32 1000, i32 10000
  %speed.addr.0 = select i1 %cmp, i32 %cond, i32 %speed
  call void @__sanitizer_cov_trace_const_cmp4(i32 200, i32 %speed.addr.0)
  %cmp2 = icmp eq i32 %speed.addr.0, 200
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %port)
  %cmp3.not = icmp ne i32 %port, 0
  %or.cond.not = and i1 %cmp3.not, %cmp2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2499, i32 %speed.addr.0)
  %cmp6 = icmp sgt i32 %speed.addr.0, 2499
  %or.cond17 = and i1 %cmp1, %cmp6
  %or.cond18 = or i1 %or.cond.not, %or.cond17
  br i1 %or.cond18, label %entry.return_crit_edge, label %if.end10

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end10:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call fastcc i32 @mv88e6xxx_port_set_speed_duplex(ptr noundef %chip, i32 noundef %port, i32 noundef %speed.addr.0, i1 noundef zeroext true, i1 noundef zeroext true, i32 noundef %duplex)
  br label %return

return:                                           ; preds = %if.end10, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end10 ], [ -95, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @mv88e6390x_port_max_speed_mode(i32 noundef %port) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %port.off = add i32 %port, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %port.off)
  %switch = icmp ult i32 %port.off, 2
  %spec.select = select i1 %switch, i32 25, i32 0
  ret i32 %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6393x_port_set_speed_duplex(ptr noundef %chip, i32 noundef %port, i32 noundef %speed, i32 noundef %duplex) local_unnamed_addr #0 align 64 {
entry:
  %reg = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg) #4
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %reg, align 2, !annotation !82
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %speed)
  %cmp = icmp eq i32 %speed, 2147483647
  %1 = add i32 %port, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %1)
  %2 = icmp ult i32 %1, 8
  %cond = select i1 %2, i32 1000, i32 10000
  %speed.addr.0 = select i1 %cmp, i32 %cond, i32 %speed
  call void @__sanitizer_cov_trace_const_cmp4(i32 200, i32 %speed.addr.0)
  %cmp3 = icmp eq i32 %speed.addr.0, 200
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %port)
  %cmp4.not = icmp ne i32 %port, 0
  %or.cond.not = and i1 %cmp4.not, %cmp3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2499, i32 %speed.addr.0)
  %cmp7 = icmp sgt i32 %speed.addr.0, 2499
  %3 = and i1 %2, %cmp7
  %or.cond141 = or i1 %or.cond.not, %3
  br i1 %or.cond141, label %entry.cleanup_crit_edge, label %if.end13

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end13:                                         ; preds = %entry
  %4 = zext i32 %speed.addr.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %speed.addr.0, label %if.end13.cleanup_crit_edge [
    i32 10, label %if.end13.sw.epilog_crit_edge
    i32 100, label %sw.bb14
    i32 200, label %sw.bb15
    i32 1000, label %sw.bb16
    i32 2500, label %sw.bb17
    i32 5000, label %sw.bb18
    i32 10000, label %if.end13.sw.bb19_crit_edge
    i32 -2, label %if.end13.sw.bb19_crit_edge142
  ]

if.end13.sw.bb19_crit_edge142:                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb19

if.end13.sw.bb19_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb19

if.end13.sw.epilog_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb14:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb15:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb16:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb17:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb18:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb19:                                          ; preds = %if.end13.sw.bb19_crit_edge, %if.end13.sw.bb19_crit_edge142
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb19, %sw.bb18, %sw.bb17, %sw.bb16, %sw.bb15, %sw.bb14, %if.end13.sw.epilog_crit_edge
  %ctrl.0 = phi i16 [ 3, %sw.bb19 ], [ 4099, %sw.bb18 ], [ 4098, %sw.bb17 ], [ 2, %sw.bb16 ], [ 4097, %sw.bb15 ], [ 1, %sw.bb14 ], [ 0, %if.end13.sw.epilog_crit_edge ]
  %5 = zext i32 %duplex to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %duplex, label %sw.epilog.cleanup_crit_edge [
    i32 0, label %sw.bb20
    i32 1, label %sw.bb22
    i32 -2, label %sw.epilog.sw.epilog27_crit_edge
  ]

sw.epilog.sw.epilog27_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog27

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb20:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  %6 = or i16 %ctrl.0, 4
  br label %sw.epilog27

sw.bb22:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  %7 = or i16 %ctrl.0, 12
  br label %sw.epilog27

sw.epilog27:                                      ; preds = %sw.bb22, %sw.bb20, %sw.epilog.sw.epilog27_crit_edge
  %ctrl.1 = phi i16 [ %ctrl.0, %sw.epilog.sw.epilog27_crit_edge ], [ %7, %sw.bb22 ], [ %6, %sw.bb20 ]
  %8 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %chip, align 8
  %port_base_addr.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %9, i32 0, i32 9
  %10 = ptrtoint ptr %port_base_addr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %port_base_addr.i, align 4
  %add.i = add i32 %11, %port
  %call.i = call i32 @mv88e6xxx_read(ptr noundef %chip, i32 noundef %add.i, i32 noundef 1, ptr noundef nonnull %reg) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end29, label %sw.epilog27.cleanup_crit_edge

sw.epilog27.cleanup_crit_edge:                    ; preds = %sw.epilog27
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end29:                                         ; preds = %sw.epilog27
  %12 = ptrtoint ptr %reg to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %reg, align 2
  %14 = and i16 %13, -12292
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %speed.addr.0)
  %cmp32.not = icmp eq i32 %speed.addr.0, -2
  %15 = or i16 %14, 8192
  %spec.select128 = select i1 %cmp32.not, i16 %14, i16 %15
  %or41125 = or i16 %spec.select128, %ctrl.1
  %16 = ptrtoint ptr %reg to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %or41125, ptr %reg, align 2
  %17 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %chip, align 8
  %port_base_addr.i135 = getelementptr inbounds %struct.mv88e6xxx_info, ptr %18, i32 0, i32 9
  %19 = ptrtoint ptr %port_base_addr.i135 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %port_base_addr.i135, align 4
  %add.i136 = add i32 %20, %port
  %call.i137 = call i32 @mv88e6xxx_write(ptr noundef %chip, i32 noundef %add.i136, i32 noundef 1, i16 noundef zeroext %or41125) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i137)
  %tobool44.not = icmp eq i32 %call.i137, 0
  br i1 %tobool44.not, label %if.end46, label %if.end29.cleanup_crit_edge

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end46:                                         ; preds = %if.end29
  br i1 %cmp32.not, label %do.body56, label %do.body

do.body:                                          ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mv88e6393x_port_set_speed_duplex.__UNIQUE_ID_ddebug502, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mv88e6393x_port_set_speed_duplex, %if.then54)) #4
          to label %do.body74 [label %if.then54], !srcloc !83

if.then54:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %dev = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 3
  %21 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mv88e6393x_port_set_speed_duplex.__UNIQUE_ID_ddebug502, ptr noundef %22, ptr noundef nonnull @.str.9, i32 noundef %port, i32 noundef %speed.addr.0) #4
  br label %do.body74

do.body56:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mv88e6393x_port_set_speed_duplex.__UNIQUE_ID_ddebug503, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mv88e6393x_port_set_speed_duplex, %if.then68)) #4
          to label %do.body74 [label %if.then68], !srcloc !83

if.then68:                                        ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #6
  %dev69 = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 3
  %23 = ptrtoint ptr %dev69 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev69, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mv88e6393x_port_set_speed_duplex.__UNIQUE_ID_ddebug503, ptr noundef %24, ptr noundef nonnull @.str.10, i32 noundef %port) #4
  br label %do.body74

do.body74:                                        ; preds = %if.then68, %do.body56, %if.then54, %do.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mv88e6393x_port_set_speed_duplex.__UNIQUE_ID_ddebug504, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mv88e6393x_port_set_speed_duplex, %if.then86)) #4
          to label %cleanup [label %if.then86], !srcloc !83

if.then86:                                        ; preds = %do.body74
  call void @__sanitizer_cov_trace_pc() #6
  %dev87 = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 3
  %25 = ptrtoint ptr %dev87 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev87, align 4
  %27 = ptrtoint ptr %reg to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %reg, align 2
  %conv88 = zext i16 %28 to i32
  %and89 = and i32 %conv88, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and89)
  %tobool90.not = icmp eq i32 %and89, 0
  %cond91 = select i1 %tobool90.not, ptr @.str.5, ptr @.str.4
  %and93 = and i32 %conv88, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and93)
  %tobool94.not = icmp eq i32 %and93, 0
  %cond95 = select i1 %tobool94.not, ptr @.str.13, ptr @.str.12
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mv88e6393x_port_set_speed_duplex.__UNIQUE_ID_ddebug504, ptr noundef %26, ptr noundef nonnull @.str.11, i32 noundef %port, ptr noundef nonnull %cond91, ptr noundef nonnull %cond95) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then86, %do.body74, %if.end29.cleanup_crit_edge, %sw.epilog27.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ -95, %if.end13.cleanup_crit_edge ], [ -95, %sw.epilog.cleanup_crit_edge ], [ %call.i, %sw.epilog27.cleanup_crit_edge ], [ %call.i137, %if.end29.cleanup_crit_edge ], [ 0, %if.then86 ], [ 0, %do.body74 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg) #4
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @mv88e6393x_port_max_speed_mode(i32 noundef %port) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %port to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %port, label %if.end [
    i32 0, label %entry.return_crit_edge
    i32 9, label %entry.return_crit_edge6
    i32 10, label %entry.return_crit_edge7
  ]

entry.return_crit_edge7:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge6:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge, %entry.return_crit_edge6, %entry.return_crit_edge7
  %retval.0 = phi i32 [ 0, %if.end ], [ 26, %entry.return_crit_edge ], [ 26, %entry.return_crit_edge6 ], [ 26, %entry.return_crit_edge7 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6390x_port_set_cmode(ptr noundef %chip, i32 noundef %port, i32 noundef %mode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %port.off = add i32 %port, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %port.off)
  %switch = icmp ult i32 %port.off, 2
  br i1 %switch, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call fastcc i32 @mv88e6xxx_port_set_cmode(ptr noundef %chip, i32 noundef %port, i32 noundef %mode, i1 noundef zeroext false)
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -95, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mv88e6xxx_port_set_cmode(ptr noundef %chip, i32 noundef %port, i32 noundef %mode, i1 noundef zeroext %force) unnamed_addr #0 align 64 {
entry:
  %reg = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg) #4
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %reg, align 2, !annotation !82
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mode)
  %cmp = icmp eq i32 %mode, 0
  %spec.store.select = select i1 %cmp, i32 21, i32 %mode
  %1 = zext i32 %spec.store.select to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %spec.store.select, label %sw.default [
    i32 21, label %entry.sw.epilog_crit_edge
    i32 4, label %sw.bb1
    i32 22, label %sw.bb2
    i32 23, label %sw.bb3
    i32 15, label %entry.sw.bb4_crit_edge
    i32 25, label %entry.sw.bb4_crit_edge171
    i32 24, label %sw.bb5
    i32 26, label %sw.bb6
  ]

entry.sw.bb4_crit_edge171:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb4

entry.sw.bb4_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb4

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry.sw.bb4_crit_edge, %entry.sw.bb4_crit_edge171
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %entry.sw.epilog_crit_edge
  %tobool33.not = phi i1 [ true, %sw.default ], [ false, %sw.bb6 ], [ false, %sw.bb5 ], [ false, %sw.bb4 ], [ false, %sw.bb3 ], [ false, %sw.bb2 ], [ false, %sw.bb1 ], [ false, %entry.sw.epilog_crit_edge ]
  %cmode.0 = phi i16 [ 0, %sw.default ], [ 13, %sw.bb6 ], [ 13, %sw.bb5 ], [ 12, %sw.bb4 ], [ 12, %sw.bb3 ], [ 11, %sw.bb2 ], [ 10, %sw.bb1 ], [ 9, %entry.sw.epilog_crit_edge ]
  %cmode7 = getelementptr %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 46, i32 %port, i32 10
  %2 = ptrtoint ptr %cmode7 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %cmode7, align 4
  %4 = zext i8 %3 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %cmode.0, i16 %4)
  %cmp9 = icmp ne i16 %cmode.0, %4
  %brmerge = or i1 %cmp9, %force
  br i1 %brmerge, label %if.end12, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end12:                                         ; preds = %sw.epilog
  %5 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %chip, align 8
  %ops.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %6, i32 0, i32 22
  %7 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ops.i, align 4
  %serdes_get_lane.i = getelementptr inbounds %struct.mv88e6xxx_ops, ptr %8, i32 0, i32 45
  %9 = ptrtoint ptr %serdes_get_lane.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %serdes_get_lane.i, align 4
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %if.end12.if.end29_crit_edge, label %mv88e6xxx_serdes_get_lane.exit

if.end12.if.end29_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end29

mv88e6xxx_serdes_get_lane.exit:                   ; preds = %if.end12
  %call.i = tail call i32 %10(ptr noundef %chip, i32 noundef %port) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp13 = icmp sgt i32 %call.i, -1
  br i1 %cmp13, label %if.then15, label %mv88e6xxx_serdes_get_lane.exit.if.end29_crit_edge

mv88e6xxx_serdes_get_lane.exit.if.end29_crit_edge: ; preds = %mv88e6xxx_serdes_get_lane.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end29

if.then15:                                        ; preds = %mv88e6xxx_serdes_get_lane.exit
  %serdes_irq = getelementptr %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 46, i32 %port, i32 13
  %11 = ptrtoint ptr %serdes_irq to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %serdes_irq, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool18.not = icmp eq i32 %12, 0
  br i1 %tobool18.not, label %if.then15.if.end24_crit_edge, label %if.then19

if.then15.if.end24_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end24

if.then19:                                        ; preds = %if.then15
  %13 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %chip, align 8
  %ops.i121 = getelementptr inbounds %struct.mv88e6xxx_info, ptr %14, i32 0, i32 22
  %15 = ptrtoint ptr %ops.i121 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ops.i121, align 4
  %serdes_irq_enable.i = getelementptr inbounds %struct.mv88e6xxx_ops, ptr %16, i32 0, i32 51
  %17 = ptrtoint ptr %serdes_irq_enable.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %serdes_irq_enable.i, align 4
  %tobool.not.i122 = icmp eq ptr %18, null
  br i1 %tobool.not.i122, label %if.then19.cleanup_crit_edge, label %mv88e6xxx_serdes_irq_disable.exit

if.then19.cleanup_crit_edge:                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

mv88e6xxx_serdes_irq_disable.exit:                ; preds = %if.then19
  %call.i123 = tail call i32 %18(ptr noundef %chip, i32 noundef %port, i32 noundef %call.i, i1 noundef zeroext false) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i123)
  %tobool21.not = icmp eq i32 %call.i123, 0
  br i1 %tobool21.not, label %mv88e6xxx_serdes_irq_disable.exit.if.end24_crit_edge, label %mv88e6xxx_serdes_irq_disable.exit.cleanup_crit_edge

mv88e6xxx_serdes_irq_disable.exit.cleanup_crit_edge: ; preds = %mv88e6xxx_serdes_irq_disable.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

mv88e6xxx_serdes_irq_disable.exit.if.end24_crit_edge: ; preds = %mv88e6xxx_serdes_irq_disable.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end24

if.end24:                                         ; preds = %mv88e6xxx_serdes_irq_disable.exit.if.end24_crit_edge, %if.then15.if.end24_crit_edge
  %19 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %chip, align 8
  %ops.i126 = getelementptr inbounds %struct.mv88e6xxx_info, ptr %20, i32 0, i32 22
  %21 = ptrtoint ptr %ops.i126 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ops.i126, align 4
  %serdes_power.i = getelementptr inbounds %struct.mv88e6xxx_ops, ptr %22, i32 0, i32 44
  %23 = ptrtoint ptr %serdes_power.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %serdes_power.i, align 4
  %tobool.not.i127 = icmp eq ptr %24, null
  br i1 %tobool.not.i127, label %if.end24.cleanup_crit_edge, label %mv88e6xxx_serdes_power_down.exit

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

mv88e6xxx_serdes_power_down.exit:                 ; preds = %if.end24
  %call.i128 = tail call i32 %24(ptr noundef %chip, i32 noundef %port, i32 noundef %call.i, i1 noundef zeroext false) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i128)
  %tobool26.not = icmp eq i32 %call.i128, 0
  br i1 %tobool26.not, label %mv88e6xxx_serdes_power_down.exit.if.end29_crit_edge, label %mv88e6xxx_serdes_power_down.exit.cleanup_crit_edge

mv88e6xxx_serdes_power_down.exit.cleanup_crit_edge: ; preds = %mv88e6xxx_serdes_power_down.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

mv88e6xxx_serdes_power_down.exit.if.end29_crit_edge: ; preds = %mv88e6xxx_serdes_power_down.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end29

if.end29:                                         ; preds = %mv88e6xxx_serdes_power_down.exit.if.end29_crit_edge, %mv88e6xxx_serdes_get_lane.exit.if.end29_crit_edge, %if.end12.if.end29_crit_edge
  %25 = ptrtoint ptr %cmode7 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %cmode7, align 4
  br i1 %tobool33.not, label %if.end29.if.end71_crit_edge, label %if.then34

if.end29.if.end71_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end71

if.then34:                                        ; preds = %if.end29
  %26 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %chip, align 8
  %port_base_addr.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %27, i32 0, i32 9
  %28 = ptrtoint ptr %port_base_addr.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %port_base_addr.i, align 4
  %add.i = add i32 %29, %port
  %call.i131 = call i32 @mv88e6xxx_read(ptr noundef %chip, i32 noundef %add.i, i32 noundef 0, ptr noundef nonnull %reg) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i131)
  %tobool36.not = icmp eq i32 %call.i131, 0
  br i1 %tobool36.not, label %if.end38, label %if.then34.cleanup_crit_edge

if.then34.cleanup_crit_edge:                      ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end38:                                         ; preds = %if.then34
  %30 = ptrtoint ptr %reg to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %reg, align 2
  %32 = and i16 %31, -16
  %or120 = or i16 %32, %cmode.0
  store i16 %or120, ptr %reg, align 2
  %33 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %chip, align 8
  %port_base_addr.i132 = getelementptr inbounds %struct.mv88e6xxx_info, ptr %34, i32 0, i32 9
  %35 = ptrtoint ptr %port_base_addr.i132 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %port_base_addr.i132, align 4
  %add.i133 = add i32 %36, %port
  %call.i134 = call i32 @mv88e6xxx_write(ptr noundef %chip, i32 noundef %add.i133, i32 noundef 0, i16 noundef zeroext %or120) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i134)
  %tobool45.not = icmp eq i32 %call.i134, 0
  br i1 %tobool45.not, label %if.end47, label %if.end38.cleanup_crit_edge

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end47:                                         ; preds = %if.end38
  %conv48 = trunc i16 %cmode.0 to i8
  %37 = ptrtoint ptr %cmode7 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv48, ptr %cmode7, align 4
  %38 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %chip, align 8
  %ops.i135 = getelementptr inbounds %struct.mv88e6xxx_info, ptr %39, i32 0, i32 22
  %40 = ptrtoint ptr %ops.i135 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ops.i135, align 4
  %serdes_get_lane.i136 = getelementptr inbounds %struct.mv88e6xxx_ops, ptr %41, i32 0, i32 45
  %42 = ptrtoint ptr %serdes_get_lane.i136 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %serdes_get_lane.i136, align 4
  %tobool.not.i137 = icmp eq ptr %43, null
  br i1 %tobool.not.i137, label %if.end47.cleanup_crit_edge, label %mv88e6xxx_serdes_get_lane.exit141

if.end47.cleanup_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

mv88e6xxx_serdes_get_lane.exit141:                ; preds = %if.end47
  %call.i138 = call i32 %43(ptr noundef %chip, i32 noundef %port) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i138)
  %cmp53 = icmp slt i32 %call.i138, 0
  br i1 %cmp53, label %mv88e6xxx_serdes_get_lane.exit141.cleanup_crit_edge, label %if.end56

mv88e6xxx_serdes_get_lane.exit141.cleanup_crit_edge: ; preds = %mv88e6xxx_serdes_get_lane.exit141
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end56:                                         ; preds = %mv88e6xxx_serdes_get_lane.exit141
  %44 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %chip, align 8
  %ops.i142 = getelementptr inbounds %struct.mv88e6xxx_info, ptr %45, i32 0, i32 22
  %46 = ptrtoint ptr %ops.i142 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ops.i142, align 4
  %serdes_power.i143 = getelementptr inbounds %struct.mv88e6xxx_ops, ptr %47, i32 0, i32 44
  %48 = ptrtoint ptr %serdes_power.i143 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %serdes_power.i143, align 4
  %tobool.not.i144 = icmp eq ptr %49, null
  br i1 %tobool.not.i144, label %if.end56.cleanup_crit_edge, label %mv88e6xxx_serdes_power_up.exit

if.end56.cleanup_crit_edge:                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

mv88e6xxx_serdes_power_up.exit:                   ; preds = %if.end56
  %call.i145 = call i32 %49(ptr noundef %chip, i32 noundef %port, i32 noundef %call.i138, i1 noundef zeroext true) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i145)
  %tobool58.not = icmp eq i32 %call.i145, 0
  br i1 %tobool58.not, label %if.end60, label %mv88e6xxx_serdes_power_up.exit.cleanup_crit_edge

mv88e6xxx_serdes_power_up.exit.cleanup_crit_edge: ; preds = %mv88e6xxx_serdes_power_up.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end60:                                         ; preds = %mv88e6xxx_serdes_power_up.exit
  %serdes_irq63 = getelementptr %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 46, i32 %port, i32 13
  %50 = ptrtoint ptr %serdes_irq63 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %serdes_irq63, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool64.not = icmp eq i32 %51, 0
  br i1 %tobool64.not, label %if.end60.if.end71_crit_edge, label %if.then65

if.end60.if.end71_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end71

if.then65:                                        ; preds = %if.end60
  %52 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %chip, align 8
  %ops.i148 = getelementptr inbounds %struct.mv88e6xxx_info, ptr %53, i32 0, i32 22
  %54 = ptrtoint ptr %ops.i148 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ops.i148, align 4
  %serdes_irq_enable.i149 = getelementptr inbounds %struct.mv88e6xxx_ops, ptr %55, i32 0, i32 51
  %56 = ptrtoint ptr %serdes_irq_enable.i149 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %serdes_irq_enable.i149, align 4
  %tobool.not.i150 = icmp eq ptr %57, null
  br i1 %tobool.not.i150, label %if.then65.cleanup_crit_edge, label %mv88e6xxx_serdes_irq_enable.exit

if.then65.cleanup_crit_edge:                      ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

mv88e6xxx_serdes_irq_enable.exit:                 ; preds = %if.then65
  %call.i151 = call i32 %57(ptr noundef %chip, i32 noundef %port, i32 noundef %call.i138, i1 noundef zeroext true) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i151)
  %tobool67.not = icmp eq i32 %call.i151, 0
  br i1 %tobool67.not, label %mv88e6xxx_serdes_irq_enable.exit.if.end71_crit_edge, label %mv88e6xxx_serdes_irq_enable.exit.cleanup_crit_edge

mv88e6xxx_serdes_irq_enable.exit.cleanup_crit_edge: ; preds = %mv88e6xxx_serdes_irq_enable.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

mv88e6xxx_serdes_irq_enable.exit.if.end71_crit_edge: ; preds = %mv88e6xxx_serdes_irq_enable.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end71

if.end71:                                         ; preds = %mv88e6xxx_serdes_irq_enable.exit.if.end71_crit_edge, %if.end60.if.end71_crit_edge, %if.end29.if.end71_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end71, %mv88e6xxx_serdes_irq_enable.exit.cleanup_crit_edge, %if.then65.cleanup_crit_edge, %mv88e6xxx_serdes_power_up.exit.cleanup_crit_edge, %if.end56.cleanup_crit_edge, %mv88e6xxx_serdes_get_lane.exit141.cleanup_crit_edge, %if.end47.cleanup_crit_edge, %if.end38.cleanup_crit_edge, %if.then34.cleanup_crit_edge, %mv88e6xxx_serdes_power_down.exit.cleanup_crit_edge, %if.end24.cleanup_crit_edge, %mv88e6xxx_serdes_irq_disable.exit.cleanup_crit_edge, %if.then19.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end71 ], [ 0, %sw.epilog.cleanup_crit_edge ], [ %call.i123, %mv88e6xxx_serdes_irq_disable.exit.cleanup_crit_edge ], [ %call.i128, %mv88e6xxx_serdes_power_down.exit.cleanup_crit_edge ], [ %call.i131, %if.then34.cleanup_crit_edge ], [ %call.i134, %if.end38.cleanup_crit_edge ], [ %call.i138, %mv88e6xxx_serdes_get_lane.exit141.cleanup_crit_edge ], [ %call.i145, %mv88e6xxx_serdes_power_up.exit.cleanup_crit_edge ], [ %call.i151, %mv88e6xxx_serdes_irq_enable.exit.cleanup_crit_edge ], [ -95, %if.then19.cleanup_crit_edge ], [ -95, %if.end24.cleanup_crit_edge ], [ -95, %if.end47.cleanup_crit_edge ], [ -95, %if.end56.cleanup_crit_edge ], [ -95, %if.then65.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6390_port_set_cmode(ptr noundef %chip, i32 noundef %port, i32 noundef %mode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %port.off = add i32 %port, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %port.off)
  %switch = icmp ult i32 %port.off, 2
  br i1 %switch, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end:                                           ; preds = %entry
  %0 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %mode, label %sw.epilog [
    i32 0, label %if.end.return_crit_edge
    i32 15, label %if.end.sw.bb2_crit_edge
    i32 25, label %if.end.sw.bb2_crit_edge6
    i32 24, label %if.end.sw.bb2_crit_edge7
  ]

if.end.sw.bb2_crit_edge7:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb2

if.end.sw.bb2_crit_edge6:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb2

if.end.sw.bb2_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb2

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

sw.bb2:                                           ; preds = %if.end.sw.bb2_crit_edge, %if.end.sw.bb2_crit_edge6, %if.end.sw.bb2_crit_edge7
  br label %return

sw.epilog:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call fastcc i32 @mv88e6xxx_port_set_cmode(ptr noundef %chip, i32 noundef %port, i32 noundef %mode, i1 noundef zeroext false)
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb2, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %sw.epilog ], [ -22, %sw.bb2 ], [ -95, %entry.return_crit_edge ], [ %mode, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6393x_port_set_cmode(ptr noundef %chip, i32 noundef %port, i32 noundef %mode) local_unnamed_addr #0 align 64 {
entry:
  %reg = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg) #4
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %reg, align 2, !annotation !82
  %1 = zext i32 %port to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %port, label %entry.cleanup_crit_edge [
    i32 0, label %entry.if.end_crit_edge
    i32 9, label %entry.if.end_crit_edge28
    i32 10, label %entry.if.end_crit_edge29
  ]

entry.if.end_crit_edge29:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

entry.if.end_crit_edge28:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge28, %entry.if.end_crit_edge29
  %2 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip, align 8
  %port_base_addr.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %port_base_addr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %port_base_addr.i, align 4
  %add.i = add i32 %5, %port
  %call.i = call i32 @mv88e6xxx_read(ptr noundef %chip, i32 noundef %add.i, i32 noundef 1, ptr noundef nonnull %reg) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %6 = ptrtoint ptr %reg to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %reg, align 2
  %8 = and i16 %7, -769
  %9 = or i16 %8, 256
  store i16 %9, ptr %reg, align 2
  %10 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %chip, align 8
  %port_base_addr.i25 = getelementptr inbounds %struct.mv88e6xxx_info, ptr %11, i32 0, i32 9
  %12 = ptrtoint ptr %port_base_addr.i25 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %port_base_addr.i25, align 4
  %add.i26 = add i32 %13, %port
  %call.i27 = call i32 @mv88e6xxx_write(ptr noundef %chip, i32 noundef %add.i26, i32 noundef 1, i16 noundef zeroext %9) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i27)
  %tobool10.not = icmp eq i32 %call.i27, 0
  br i1 %tobool10.not, label %if.end12, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end12:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  %call13 = call fastcc i32 @mv88e6xxx_port_set_cmode(ptr noundef %chip, i32 noundef %port, i32 noundef %mode, i1 noundef zeroext false)
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call13, %if.end12 ], [ -95, %entry.cleanup_crit_edge ], [ %call.i, %if.end.cleanup_crit_edge ], [ %call.i27, %if.end5.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6341_port_set_cmode(ptr noundef %chip, i32 noundef %port, i32 noundef %mode) local_unnamed_addr #0 align 64 {
entry:
  %reg.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %port)
  %cmp.not = icmp eq i32 %port, 5
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %mode, label %sw.epilog [
    i32 0, label %if.end.cleanup_crit_edge
    i32 15, label %if.end.sw.bb1_crit_edge
    i32 25, label %if.end.sw.bb1_crit_edge15
    i32 24, label %if.end.sw.bb1_crit_edge16
  ]

if.end.sw.bb1_crit_edge16:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb1

if.end.sw.bb1_crit_edge15:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb1

if.end.sw.bb1_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb1

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb1:                                           ; preds = %if.end.sw.bb1_crit_edge, %if.end.sw.bb1_crit_edge15, %if.end.sw.bb1_crit_edge16
  br label %cleanup

sw.epilog:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg.i) #4
  %1 = ptrtoint ptr %reg.i to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -1, ptr %reg.i, align 2, !annotation !82
  %2 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip, align 8
  %port_base_addr.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %port_base_addr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %port_base_addr.i, align 4
  %add.i = add i32 %5, 5
  %call.i = call i32 @mv88e6xxx_port_hidden_read(ptr noundef %chip, i32 noundef 7, i32 noundef %add.i, i32 noundef 0, ptr noundef nonnull %reg.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end2.i, label %mv88e6341_port_set_cmode_writable.exit.thread12

mv88e6341_port_set_cmode_writable.exit.thread12:  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i) #4
  br label %cleanup

if.end2.i:                                        ; preds = %sw.epilog
  %6 = ptrtoint ptr %reg.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %reg.i, align 2
  %8 = and i16 %7, -24576
  call void @__sanitizer_cov_trace_const_cmp2(i16 -24576, i16 %8)
  %cmp5.i = icmp eq i16 %8, -24576
  br i1 %cmp5.i, label %mv88e6341_port_set_cmode_writable.exit.thread, label %mv88e6341_port_set_cmode_writable.exit

mv88e6341_port_set_cmode_writable.exit.thread:    ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i) #4
  br label %if.end3

mv88e6341_port_set_cmode_writable.exit:           ; preds = %if.end2.i
  %or.i = or i16 %7, -24576
  %9 = ptrtoint ptr %reg.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %or.i, ptr %reg.i, align 2
  %call12.i = call i32 @mv88e6xxx_port_hidden_write(ptr noundef %chip, i32 noundef 7, i32 noundef %add.i, i32 noundef 0, i16 noundef zeroext %or.i) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool.not = icmp eq i32 %call12.i, 0
  br i1 %tobool.not, label %mv88e6341_port_set_cmode_writable.exit.if.end3_crit_edge, label %mv88e6341_port_set_cmode_writable.exit.cleanup_crit_edge

mv88e6341_port_set_cmode_writable.exit.cleanup_crit_edge: ; preds = %mv88e6341_port_set_cmode_writable.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

mv88e6341_port_set_cmode_writable.exit.if.end3_crit_edge: ; preds = %mv88e6341_port_set_cmode_writable.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end3

if.end3:                                          ; preds = %mv88e6341_port_set_cmode_writable.exit.if.end3_crit_edge, %mv88e6341_port_set_cmode_writable.exit.thread
  %call4 = call fastcc i32 @mv88e6xxx_port_set_cmode(ptr noundef %chip, i32 noundef 5, i32 noundef %mode, i1 noundef zeroext true)
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %mv88e6341_port_set_cmode_writable.exit.cleanup_crit_edge, %mv88e6341_port_set_cmode_writable.exit.thread12, %sw.bb1, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end3 ], [ -22, %sw.bb1 ], [ -95, %entry.cleanup_crit_edge ], [ %mode, %if.end.cleanup_crit_edge ], [ %call12.i, %mv88e6341_port_set_cmode_writable.exit.cleanup_crit_edge ], [ %call.i, %mv88e6341_port_set_cmode_writable.exit.thread12 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6185_port_get_cmode(ptr noundef %chip, i32 noundef %port, ptr nocapture noundef writeonly %cmode) local_unnamed_addr #0 align 64 {
entry:
  %reg = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg) #4
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %reg, align 2, !annotation !82
  %1 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %chip, align 8
  %port_base_addr.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %2, i32 0, i32 9
  %3 = ptrtoint ptr %port_base_addr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %port_base_addr.i, align 4
  %add.i = add i32 %4, %port
  %call.i = call i32 @mv88e6xxx_read(ptr noundef %chip, i32 noundef %add.i, i32 noundef 0, ptr noundef nonnull %reg) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %5 = ptrtoint ptr %reg to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %reg, align 2
  %7 = trunc i16 %6 to i8
  %conv1 = and i8 %7, 7
  %8 = ptrtoint ptr %cmode to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv1, ptr %cmode, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg) #4
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6352_port_get_cmode(ptr noundef %chip, i32 noundef %port, ptr nocapture noundef writeonly %cmode) local_unnamed_addr #0 align 64 {
entry:
  %reg = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg) #4
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %reg, align 2, !annotation !82
  %1 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %chip, align 8
  %port_base_addr.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %2, i32 0, i32 9
  %3 = ptrtoint ptr %port_base_addr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %port_base_addr.i, align 4
  %add.i = add i32 %4, %port
  %call.i = call i32 @mv88e6xxx_read(ptr noundef %chip, i32 noundef %add.i, i32 noundef 0, ptr noundef nonnull %reg) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %5 = ptrtoint ptr %reg to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %reg, align 2
  %7 = trunc i16 %6 to i8
  %conv1 = and i8 %7, 15
  %8 = ptrtoint ptr %cmode to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv1, ptr %cmode, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg) #4
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6097_port_pause_limit(ptr noundef %chip, i32 noundef %port, i8 noundef zeroext %in, i8 noundef zeroext %out) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %out to i16
  %shl = shl nuw i16 %conv, 8
  %conv1 = zext i8 %in to i16
  %or = or i16 %shl, %conv1
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 8
  %port_base_addr.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %port_base_addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port_base_addr.i, align 4
  %add.i = add i32 %3, %port
  %call.i = tail call i32 @mv88e6xxx_write(ptr noundef %chip, i32 noundef %add.i, i32 noundef 2, i16 noundef zeroext %or) #4
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6390_port_pause_limit(ptr noundef %chip, i32 noundef %port, i8 noundef zeroext %in, i8 noundef zeroext %out) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %in to i16
  %or = or i16 %conv, -32768
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 8
  %port_base_addr.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %port_base_addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port_base_addr.i, align 4
  %add.i = add i32 %3, %port
  %call.i = tail call i32 @mv88e6xxx_write(ptr noundef %chip, i32 noundef %add.i, i32 noundef 2, i16 noundef zeroext %or) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %conv2 = zext i8 %out to i16
  %or3 = or i16 %conv2, -32512
  %4 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chip, align 8
  %port_base_addr.i9 = getelementptr inbounds %struct.mv88e6xxx_info, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %port_base_addr.i9 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port_base_addr.i9, align 4
  %add.i10 = add i32 %7, %port
  %call.i11 = tail call i32 @mv88e6xxx_write(ptr noundef %chip, i32 noundef %add.i10, i32 noundef 2, i16 noundef zeroext %or3) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i11, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6xxx_port_set_state(ptr noundef %chip, i32 noundef %port, i8 noundef zeroext %state) local_unnamed_addr #0 align 64 {
entry:
  %reg = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg) #4
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %reg, align 2, !annotation !82
  %1 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %chip, align 8
  %port_base_addr.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %2, i32 0, i32 9
  %3 = ptrtoint ptr %port_base_addr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %port_base_addr.i, align 4
  %add.i = add i32 %4, %port
  %call.i = call i32 @mv88e6xxx_read(ptr noundef %chip, i32 noundef %add.i, i32 noundef 4, ptr noundef nonnull %reg) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %state)
  %5 = icmp ult i8 %state, 5
  br i1 %5, label %switch.lookup, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

switch.lookup:                                    ; preds = %if.end
  %6 = ptrtoint ptr %reg to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %reg, align 2
  %8 = and i16 %7, -4
  %9 = sext i8 %state to i32
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.mv88e6xxx_port_set_state, i32 0, i32 %9
  %10 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %10)
  %switch.load = load i32, ptr %switch.gep, align 4
  %11 = trunc i32 %switch.load to i16
  %conv8 = or i16 %8, %11
  store i16 %conv8, ptr %reg, align 2
  %12 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %chip, align 8
  %port_base_addr.i29 = getelementptr inbounds %struct.mv88e6xxx_info, ptr %13, i32 0, i32 9
  %14 = ptrtoint ptr %port_base_addr.i29 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %port_base_addr.i29, align 4
  %add.i30 = add i32 %15, %port
  %call.i31 = call i32 @mv88e6xxx_write(ptr noundef %chip, i32 noundef %add.i30, i32 noundef 4, i16 noundef zeroext %conv8) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i31)
  %tobool10.not = icmp eq i32 %call.i31, 0
  br i1 %tobool10.not, label %do.body, label %switch.lookup.cleanup_crit_edge

switch.lookup.cleanup_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body:                                          ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mv88e6xxx_port_set_state.__UNIQUE_ID_ddebug505, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mv88e6xxx_port_set_state, %if.then17)) #4
          to label %cleanup [label %if.then17], !srcloc !83

if.then17:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %dev = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 3
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  %arrayidx = getelementptr [4 x ptr], ptr @mv88e6xxx_port_state_names, i32 0, i32 %switch.load
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mv88e6xxx_port_set_state.__UNIQUE_ID_ddebug505, ptr noundef %17, ptr noundef nonnull @.str.15, i32 noundef %port, ptr noundef %19) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then17, %do.body, %switch.lookup.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call.i31, %switch.lookup.cleanup_crit_edge ], [ 0, %if.then17 ], [ 0, %do.body ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6xxx_port_set_egress_mode(ptr noundef %chip, i32 noundef %port, i32 noundef %mode) local_unnamed_addr #0 align 64 {
entry:
  %reg = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg) #4
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %reg, align 2, !annotation !82
  %1 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %chip, align 8
  %port_base_addr.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %2, i32 0, i32 9
  %3 = ptrtoint ptr %port_base_addr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %port_base_addr.i, align 4
  %add.i = add i32 %4, %port
  %call.i = call i32 @mv88e6xxx_read(ptr noundef %chip, i32 noundef %add.i, i32 noundef 4, ptr noundef nonnull %reg) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %reg to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %reg, align 2
  %7 = and i16 %6, -12289
  %8 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %mode, label %if.end.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb4
    i32 2, label %sw.bb8
    i32 3, label %sw.bb12
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %9 = ptrtoint ptr %reg to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %7, ptr %reg, align 2
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %10 = or i16 %7, 4096
  %11 = ptrtoint ptr %reg to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %reg, align 2
  br label %sw.epilog

sw.bb8:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %12 = or i16 %7, 8192
  %13 = ptrtoint ptr %reg to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %reg, align 2
  br label %sw.epilog

sw.bb12:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %14 = or i16 %6, 12288
  %15 = ptrtoint ptr %reg to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %reg, align 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb12, %sw.bb8, %sw.bb4, %sw.bb
  %16 = ptrtoint ptr %reg to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %reg, align 2
  %18 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %chip, align 8
  %port_base_addr.i21 = getelementptr inbounds %struct.mv88e6xxx_info, ptr %19, i32 0, i32 9
  %20 = ptrtoint ptr %port_base_addr.i21 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %port_base_addr.i21, align 4
  %add.i22 = add i32 %21, %port
  %call.i23 = call i32 @mv88e6xxx_write(ptr noundef %chip, i32 noundef %add.i22, i32 noundef 4, i16 noundef zeroext %17) #4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i23, %sw.epilog ], [ %call.i, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6085_port_set_frame_mode(ptr noundef %chip, i32 noundef %port, i32 noundef %mode) local_unnamed_addr #0 align 64 {
entry:
  %reg = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg) #4
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %reg, align 2, !annotation !82
  %1 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %chip, align 8
  %port_base_addr.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %2, i32 0, i32 9
  %3 = ptrtoint ptr %port_base_addr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %port_base_addr.i, align 4
  %add.i = add i32 %4, %port
  %call.i = call i32 @mv88e6xxx_read(ptr noundef %chip, i32 noundef %add.i, i32 noundef 4, ptr noundef nonnull %reg) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %reg to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %reg, align 2
  %7 = and i16 %6, -769
  %8 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.47)
  switch i32 %mode, label %if.end.cleanup_crit_edge [
    i32 0, label %if.end.sw.epilog_crit_edge
    i32 1, label %sw.bb4
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb4:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %9 = or i16 %7, 256
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb4, %if.end.sw.epilog_crit_edge
  %storemerge = phi i16 [ %9, %sw.bb4 ], [ %7, %if.end.sw.epilog_crit_edge ]
  %10 = ptrtoint ptr %reg to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %storemerge, ptr %reg, align 2
  %11 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %chip, align 8
  %port_base_addr.i13 = getelementptr inbounds %struct.mv88e6xxx_info, ptr %12, i32 0, i32 9
  %13 = ptrtoint ptr %port_base_addr.i13 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %port_base_addr.i13, align 4
  %add.i14 = add i32 %14, %port
  %call.i15 = call i32 @mv88e6xxx_write(ptr noundef %chip, i32 noundef %add.i14, i32 noundef 4, i16 noundef zeroext %storemerge) #4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i15, %sw.epilog ], [ %call.i, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6351_port_set_frame_mode(ptr noundef %chip, i32 noundef %port, i32 noundef %mode) local_unnamed_addr #0 align 64 {
entry:
  %reg = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg) #4
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %reg, align 2, !annotation !82
  %1 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %chip, align 8
  %port_base_addr.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %2, i32 0, i32 9
  %3 = ptrtoint ptr %port_base_addr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %port_base_addr.i, align 4
  %add.i = add i32 %4, %port
  %call.i = call i32 @mv88e6xxx_read(ptr noundef %chip, i32 noundef %add.i, i32 noundef 4, ptr noundef nonnull %reg) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %reg to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %reg, align 2
  %7 = and i16 %6, -769
  %8 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %mode, label %if.end.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb4
    i32 2, label %sw.bb8
    i32 3, label %sw.bb12
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %9 = ptrtoint ptr %reg to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %7, ptr %reg, align 2
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %10 = or i16 %7, 256
  %11 = ptrtoint ptr %reg to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %reg, align 2
  br label %sw.epilog

sw.bb8:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %12 = or i16 %7, 512
  %13 = ptrtoint ptr %reg to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %reg, align 2
  br label %sw.epilog

sw.bb12:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %14 = or i16 %6, 768
  %15 = ptrtoint ptr %reg to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %reg, align 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb12, %sw.bb8, %sw.bb4, %sw.bb
  %16 = ptrtoint ptr %reg to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %reg, align 2
  %18 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %chip, align 8
  %port_base_addr.i21 = getelementptr inbounds %struct.mv88e6xxx_info, ptr %19, i32 0, i32 9
  %20 = ptrtoint ptr %port_base_addr.i21 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %port_base_addr.i21, align 4
  %add.i22 = add i32 %21, %port
  %call.i23 = call i32 @mv88e6xxx_write(ptr noundef %chip, i32 noundef %add.i22, i32 noundef 4, i16 noundef zeroext %17) #4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i23, %sw.epilog ], [ %call.i, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6185_port_set_forward_unknown(ptr noundef %chip, i32 noundef %port, i1 noundef zeroext %unicast) local_unnamed_addr #0 align 64 {
entry:
  %reg = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg) #4
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %reg, align 2, !annotation !82
  %1 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %chip, align 8
  %port_base_addr.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %2, i32 0, i32 9
  %3 = ptrtoint ptr %port_base_addr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %port_base_addr.i, align 4
  %add.i = add i32 %4, %port
  %call.i = call i32 @mv88e6xxx_read(ptr noundef %chip, i32 noundef %add.i, i32 noundef 4, ptr noundef nonnull %reg) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %5 = ptrtoint ptr %reg to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %reg, align 2
  %7 = and i16 %6, -5
  %masksel = select i1 %unicast, i16 4, i16 0
  %storemerge = or i16 %7, %masksel
  store i16 %storemerge, ptr %reg, align 2
  %8 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %chip, align 8
  %port_base_addr.i12 = getelementptr inbounds %struct.mv88e6xxx_info, ptr %9, i32 0, i32 9
  %10 = ptrtoint ptr %port_base_addr.i12 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %port_base_addr.i12, align 4
  %add.i13 = add i32 %11, %port
  %call.i14 = call i32 @mv88e6xxx_write(ptr noundef %chip, i32 noundef %add.i13, i32 noundef 4, i16 noundef zeroext %storemerge) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i14, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6352_port_set_ucast_flood(ptr noundef %chip, i32 noundef %port, i1 noundef zeroext %unicast) local_unnamed_addr #0 align 64 {
entry:
  %reg = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg) #4
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %reg, align 2, !annotation !82
  %1 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %chip, align 8
  %port_base_addr.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %2, i32 0, i32 9
  %3 = ptrtoint ptr %port_base_addr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %port_base_addr.i, align 4
  %add.i = add i32 %4, %port
  %call.i = call i32 @mv88e6xxx_read(ptr noundef %chip, i32 noundef %add.i, i32 noundef 4, ptr noundef nonnull %reg) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %5 = ptrtoint ptr %reg to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %reg, align 2
  %7 = and i16 %6, -5
  %masksel = select i1 %unicast, i16 4, i16 0
  %storemerge = or i16 %7, %masksel
  store i16 %storemerge, ptr %reg, align 2
  %8 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %chip, align 8
  %port_base_addr.i12 = getelementptr inbounds %struct.mv88e6xxx_info, ptr %9, i32 0, i32 9
  %10 = ptrtoint ptr %port_base_addr.i12 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %port_base_addr.i12, align 4
  %add.i13 = add i32 %11, %port
  %call.i14 = call i32 @mv88e6xxx_write(ptr noundef %chip, i32 noundef %add.i13, i32 noundef 4, i16 noundef zeroext %storemerge) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i14, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6352_port_set_mcast_flood(ptr noundef %chip, i32 noundef %port, i1 noundef zeroext %multicast) local_unnamed_addr #0 align 64 {
entry:
  %reg = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg) #4
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %reg, align 2, !annotation !82
  %1 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %chip, align 8
  %port_base_addr.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %2, i32 0, i32 9
  %3 = ptrtoint ptr %port_base_addr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %port_base_addr.i, align 4
  %add.i = add i32 %4, %port
  %call.i = call i32 @mv88e6xxx_read(ptr noundef %chip, i32 noundef %add.i, i32 noundef 4, ptr noundef nonnull %reg) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %5 = ptrtoint ptr %reg to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %reg, align 2
  %7 = and i16 %6, -9
  %masksel = select i1 %multicast, i16 8, i16 0
  %storemerge = or i16 %7, %masksel
  store i16 %storemerge, ptr %reg, align 2
  %8 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %chip, align 8
  %port_base_addr.i12 = getelementptr inbounds %struct.mv88e6xxx_info, ptr %9, i32 0, i32 9
  %10 = ptrtoint ptr %port_base_addr.i12 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %port_base_addr.i12, align 4
  %add.i13 = add i32 %11, %port
  %call.i14 = call i32 @mv88e6xxx_write(ptr noundef %chip, i32 noundef %add.i13, i32 noundef 4, i16 noundef zeroext %storemerge) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i14, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6xxx_port_set_message_port(ptr noundef %chip, i32 noundef %port, i1 noundef zeroext %message_port) local_unnamed_addr #0 align 64 {
entry:
  %val = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val) #4
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %val, align 2, !annotation !82
  %1 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %chip, align 8
  %port_base_addr.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %2, i32 0, i32 9
  %3 = ptrtoint ptr %port_base_addr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %port_base_addr.i, align 4
  %add.i = add i32 %4, %port
  %call.i = call i32 @mv88e6xxx_read(ptr noundef %chip, i32 noundef %add.i, i32 noundef 5, ptr noundef nonnull %val) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %val, align 2
  %7 = and i16 %6, 32767
  %masksel = select i1 %message_port, i16 -32768, i16 0
  %storemerge = or i16 %7, %masksel
  store i16 %storemerge, ptr %val, align 2
  %8 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %chip, align 8
  %port_base_addr.i12 = getelementptr inbounds %struct.mv88e6xxx_info, ptr %9, i32 0, i32 9
  %10 = ptrtoint ptr %port_base_addr.i12 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %port_base_addr.i12, align 4
  %add.i13 = add i32 %11, %port
  %call.i14 = call i32 @mv88e6xxx_write(ptr noundef %chip, i32 noundef %add.i13, i32 noundef 5, i16 noundef zeroext %storemerge) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i14, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6xxx_port_set_trunk(ptr noundef %chip, i32 noundef %port, i1 noundef zeroext %trunk, i8 noundef zeroext %id) local_unnamed_addr #0 align 64 {
entry:
  %val = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val) #4
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %val, align 2, !annotation !82
  %1 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %chip, align 8
  %port_base_addr.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %2, i32 0, i32 9
  %3 = ptrtoint ptr %port_base_addr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %port_base_addr.i, align 4
  %add.i = add i32 %4, %port
  %call.i = call i32 @mv88e6xxx_read(ptr noundef %chip, i32 noundef %add.i, i32 noundef 5, ptr noundef nonnull %val) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %val, align 2
  %7 = and i16 %6, -20225
  %conv4 = zext i8 %id to i16
  %shl = shl nuw i16 %conv4, 8
  %or = or i16 %shl, %7
  %or6 = or i16 %or, 16384
  %storemerge = select i1 %trunk, i16 %or6, i16 %7
  store i16 %storemerge, ptr %val, align 2
  %8 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %chip, align 8
  %port_base_addr.i17 = getelementptr inbounds %struct.mv88e6xxx_info, ptr %9, i32 0, i32 9
  %10 = ptrtoint ptr %port_base_addr.i17 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %port_base_addr.i17, align 4
  %add.i18 = add i32 %11, %port
  %call.i19 = call i32 @mv88e6xxx_write(ptr noundef %chip, i32 noundef %add.i18, i32 noundef 5, i16 noundef zeroext %storemerge) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i19, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6xxx_port_set_vlan_map(ptr noundef %chip, i32 noundef %port, i16 noundef zeroext %map) local_unnamed_addr #0 align 64 {
entry:
  %reg = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 8
  %num_ports.i.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %num_ports.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_ports.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg) #4
  %4 = ptrtoint ptr %reg to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %reg, align 2, !annotation !82
  %port_base_addr.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %1, i32 0, i32 9
  %5 = ptrtoint ptr %port_base_addr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %port_base_addr.i, align 4
  %add.i = add i32 %6, %port
  %call.i = call i32 @mv88e6xxx_read(ptr noundef %chip, i32 noundef %add.i, i32 noundef 6, ptr noundef nonnull %reg) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %sub1.i = sub i32 32, %3
  %shr.i = lshr i32 -1, %sub1.i
  %conv.i = trunc i32 %shr.i to i16
  %neg = xor i16 %conv.i, -1
  %7 = ptrtoint ptr %reg to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %reg, align 2
  %and = and i16 %8, %neg
  %conv4 = zext i16 %map to i32
  %and632 = and i16 %conv.i, %map
  %or33 = or i16 %and, %and632
  store i16 %or33, ptr %reg, align 2
  %9 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %chip, align 8
  %port_base_addr.i34 = getelementptr inbounds %struct.mv88e6xxx_info, ptr %10, i32 0, i32 9
  %11 = ptrtoint ptr %port_base_addr.i34 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %port_base_addr.i34, align 4
  %add.i35 = add i32 %12, %port
  %call.i36 = call i32 @mv88e6xxx_write(ptr noundef %chip, i32 noundef %add.i35, i32 noundef 6, i16 noundef zeroext %or33) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i36)
  %tobool10.not = icmp eq i32 %call.i36, 0
  br i1 %tobool10.not, label %do.body, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mv88e6xxx_port_set_vlan_map.__UNIQUE_ID_ddebug506, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mv88e6xxx_port_set_vlan_map, %if.then17)) #4
          to label %cleanup [label %if.then17], !srcloc !83

if.then17:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %dev = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 3
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mv88e6xxx_port_set_vlan_map.__UNIQUE_ID_ddebug506, ptr noundef %14, ptr noundef nonnull @.str.17, i32 noundef %port, i32 noundef %conv4) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then17, %do.body, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ %call.i36, %if.end.cleanup_crit_edge ], [ 0, %if.then17 ], [ 0, %do.body ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6xxx_port_get_fid(ptr noundef %chip, i32 noundef %port, ptr nocapture noundef %fid) local_unnamed_addr #0 align 64 {
entry:
  %reg = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 8
  %num_databases.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %num_databases.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_databases.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg) #4
  %4 = ptrtoint ptr %reg to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %reg, align 2, !annotation !82
  %port_base_addr.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %1, i32 0, i32 9
  %5 = ptrtoint ptr %port_base_addr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %port_base_addr.i, align 4
  %add.i = add i32 %6, %port
  %call.i = call i32 @mv88e6xxx_read(ptr noundef %chip, i32 noundef %add.i, i32 noundef 6, ptr noundef nonnull %reg) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %sub = add i32 %3, 1048575
  %shr = lshr i32 %sub, 4
  %conv = trunc i32 %shr to i16
  %7 = ptrtoint ptr %reg to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %reg, align 2
  %9 = lshr i16 %8, 12
  %10 = ptrtoint ptr %fid to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %fid, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv)
  %tobool5.not = icmp eq i16 %conv, 0
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.then6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then6:                                         ; preds = %if.end
  %11 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %chip, align 8
  %port_base_addr.i27 = getelementptr inbounds %struct.mv88e6xxx_info, ptr %12, i32 0, i32 9
  %13 = ptrtoint ptr %port_base_addr.i27 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %port_base_addr.i27, align 4
  %add.i28 = add i32 %14, %port
  %call.i29 = call i32 @mv88e6xxx_read(ptr noundef %chip, i32 noundef %add.i28, i32 noundef 5, ptr noundef nonnull %reg) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i29)
  %tobool8.not = icmp eq i32 %call.i29, 0
  br i1 %tobool8.not, label %if.end10, label %if.then6.cleanup_crit_edge

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end10:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #6
  %15 = ptrtoint ptr %reg to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %reg, align 2
  %17 = ptrtoint ptr %fid to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %fid, align 2
  %and13.tr = and i16 %16, %conv
  %19 = shl i16 %and13.tr, 4
  %conv15 = or i16 %19, %18
  store i16 %conv15, ptr %fid, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.then6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ %call.i29, %if.then6.cleanup_crit_edge ], [ 0, %if.end10 ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6xxx_port_set_fid(ptr noundef %chip, i32 noundef %port, i16 noundef zeroext %fid) local_unnamed_addr #0 align 64 {
entry:
  %reg = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 8
  %num_databases.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %num_databases.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_databases.i, align 4
  %sub = add i32 %3, 1048575
  %shr = lshr i32 %sub, 4
  %conv = trunc i32 %shr to i16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg) #4
  %4 = ptrtoint ptr %reg to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %reg, align 2, !annotation !82
  %conv1 = zext i16 %fid to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv1)
  %cmp.not = icmp ugt i32 %3, %conv1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %port_base_addr.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %1, i32 0, i32 9
  %5 = ptrtoint ptr %port_base_addr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %port_base_addr.i, align 4
  %add.i = add i32 %6, %port
  %call.i = call i32 @mv88e6xxx_read(ptr noundef %chip, i32 noundef %add.i, i32 noundef 6, ptr noundef nonnull %reg) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %7 = ptrtoint ptr %reg to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %reg, align 2
  %9 = and i16 %8, 4095
  %and10 = shl i16 %fid, 12
  %or = or i16 %9, %and10
  store i16 %or, ptr %reg, align 2
  %10 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %chip, align 8
  %port_base_addr.i71 = getelementptr inbounds %struct.mv88e6xxx_info, ptr %11, i32 0, i32 9
  %12 = ptrtoint ptr %port_base_addr.i71 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %port_base_addr.i71, align 4
  %add.i72 = add i32 %13, %port
  %call.i73 = call i32 @mv88e6xxx_write(ptr noundef %chip, i32 noundef %add.i72, i32 noundef 6, i16 noundef zeroext %or) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i73)
  %tobool14.not = icmp eq i32 %call.i73, 0
  br i1 %tobool14.not, label %if.end16, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end16:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv)
  %tobool17.not = icmp eq i16 %conv, 0
  br i1 %tobool17.not, label %if.end16.do.body_crit_edge, label %if.then18

if.end16.do.body_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

if.then18:                                        ; preds = %if.end16
  %14 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %chip, align 8
  %port_base_addr.i74 = getelementptr inbounds %struct.mv88e6xxx_info, ptr %15, i32 0, i32 9
  %16 = ptrtoint ptr %port_base_addr.i74 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %port_base_addr.i74, align 4
  %add.i75 = add i32 %17, %port
  %call.i76 = call i32 @mv88e6xxx_read(ptr noundef %chip, i32 noundef %add.i75, i32 noundef 5, ptr noundef nonnull %reg) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i76)
  %tobool20.not = icmp eq i32 %call.i76, 0
  br i1 %tobool20.not, label %if.end22, label %if.then18.cleanup_crit_edge

if.then18.cleanup_crit_edge:                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end22:                                         ; preds = %if.then18
  %18 = ptrtoint ptr %reg to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %reg, align 2
  %20 = xor i16 %conv, -1
  %conv26 = and i16 %19, %20
  %21 = lshr i32 %conv1, 4
  %and30 = and i32 %shr, %21
  %22 = trunc i32 %and30 to i16
  %conv33 = or i16 %conv26, %22
  store i16 %conv33, ptr %reg, align 2
  %23 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %chip, align 8
  %port_base_addr.i77 = getelementptr inbounds %struct.mv88e6xxx_info, ptr %24, i32 0, i32 9
  %25 = ptrtoint ptr %port_base_addr.i77 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %port_base_addr.i77, align 4
  %add.i78 = add i32 %26, %port
  %call.i79 = call i32 @mv88e6xxx_write(ptr noundef %chip, i32 noundef %add.i78, i32 noundef 5, i16 noundef zeroext %conv33) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i79)
  %tobool35.not = icmp eq i32 %call.i79, 0
  br i1 %tobool35.not, label %if.end22.do.body_crit_edge, label %if.end22.cleanup_crit_edge

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end22.do.body_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

do.body:                                          ; preds = %if.end22.do.body_crit_edge, %if.end16.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mv88e6xxx_port_set_fid.__UNIQUE_ID_ddebug507, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mv88e6xxx_port_set_fid, %if.then43)) #4
          to label %cleanup [label %if.then43], !srcloc !83

if.then43:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %dev = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 3
  %27 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mv88e6xxx_port_set_fid.__UNIQUE_ID_ddebug507, ptr noundef %28, ptr noundef nonnull @.str.19, i32 noundef %port, i32 noundef %conv1) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then43, %do.body, %if.end22.cleanup_crit_edge, %if.then18.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call.i, %if.end.cleanup_crit_edge ], [ %call.i73, %if.end6.cleanup_crit_edge ], [ %call.i76, %if.then18.cleanup_crit_edge ], [ %call.i79, %if.end22.cleanup_crit_edge ], [ 0, %if.then43 ], [ 0, %do.body ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6xxx_port_get_pvid(ptr noundef %chip, i32 noundef %port, ptr nocapture noundef writeonly %pvid) local_unnamed_addr #0 align 64 {
entry:
  %reg = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg) #4
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %reg, align 2, !annotation !82
  %1 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %chip, align 8
  %port_base_addr.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %2, i32 0, i32 9
  %3 = ptrtoint ptr %port_base_addr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %port_base_addr.i, align 4
  %add.i = add i32 %4, %port
  %call.i = call i32 @mv88e6xxx_read(ptr noundef %chip, i32 noundef %add.i, i32 noundef 7, ptr noundef nonnull %reg) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %5 = ptrtoint ptr %reg to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %reg, align 2
  %7 = and i16 %6, 4095
  %8 = ptrtoint ptr %pvid to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %pvid, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg) #4
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6xxx_port_set_pvid(ptr noundef %chip, i32 noundef %port, i16 noundef zeroext %pvid) local_unnamed_addr #0 align 64 {
entry:
  %reg = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg) #4
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %reg, align 2, !annotation !82
  %1 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %chip, align 8
  %port_base_addr.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %2, i32 0, i32 9
  %3 = ptrtoint ptr %port_base_addr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %port_base_addr.i, align 4
  %add.i = add i32 %4, %port
  %call.i = call i32 @mv88e6xxx_read(ptr noundef %chip, i32 noundef %add.i, i32 noundef 7, ptr noundef nonnull %reg) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %reg to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %reg, align 2
  %7 = and i16 %6, -4096
  %conv2 = zext i16 %pvid to i32
  %and3 = and i16 %pvid, 4095
  %or = or i16 %7, %and3
  store i16 %or, ptr %reg, align 2
  %8 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %chip, align 8
  %port_base_addr.i26 = getelementptr inbounds %struct.mv88e6xxx_info, ptr %9, i32 0, i32 9
  %10 = ptrtoint ptr %port_base_addr.i26 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %port_base_addr.i26, align 4
  %add.i27 = add i32 %11, %port
  %call.i28 = call i32 @mv88e6xxx_write(ptr noundef %chip, i32 noundef %add.i27, i32 noundef 7, i16 noundef zeroext %or) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i28)
  %tobool7.not = icmp eq i32 %call.i28, 0
  br i1 %tobool7.not, label %do.body, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mv88e6xxx_port_set_pvid.__UNIQUE_ID_ddebug508, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mv88e6xxx_port_set_pvid, %if.then14)) #4
          to label %cleanup [label %if.then14], !srcloc !83

if.then14:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %dev = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 3
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mv88e6xxx_port_set_pvid.__UNIQUE_ID_ddebug508, ptr noundef %13, ptr noundef nonnull @.str.21, i32 noundef %port, i32 noundef %conv2) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then14, %do.body, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ %call.i28, %if.end.cleanup_crit_edge ], [ 0, %if.then14 ], [ 0, %do.body ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6185_port_set_default_forward(ptr noundef %chip, i32 noundef %port, i1 noundef zeroext %multicast) local_unnamed_addr #0 align 64 {
entry:
  %reg = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg) #4
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %reg, align 2, !annotation !82
  %1 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %chip, align 8
  %port_base_addr.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %2, i32 0, i32 9
  %3 = ptrtoint ptr %port_base_addr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %port_base_addr.i, align 4
  %add.i = add i32 %4, %port
  %call.i = call i32 @mv88e6xxx_read(ptr noundef %chip, i32 noundef %add.i, i32 noundef 8, ptr noundef nonnull %reg) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %5 = ptrtoint ptr %reg to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %reg, align 2
  %7 = and i16 %6, -65
  %masksel = select i1 %multicast, i16 64, i16 0
  %storemerge = or i16 %7, %masksel
  store i16 %storemerge, ptr %reg, align 2
  %8 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %chip, align 8
  %port_base_addr.i12 = getelementptr inbounds %struct.mv88e6xxx_info, ptr %9, i32 0, i32 9
  %10 = ptrtoint ptr %port_base_addr.i12 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %port_base_addr.i12, align 4
  %add.i13 = add i32 %11, %port
  %call.i14 = call i32 @mv88e6xxx_write(ptr noundef %chip, i32 noundef %add.i13, i32 noundef 8, i16 noundef zeroext %storemerge) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i14, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6095_port_set_upstream_port(ptr noundef %chip, i32 noundef %port, i32 noundef %upstream_port) local_unnamed_addr #0 align 64 {
entry:
  %reg = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg) #4
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %reg, align 2, !annotation !82
  %1 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %chip, align 8
  %port_base_addr.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %2, i32 0, i32 9
  %3 = ptrtoint ptr %port_base_addr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %port_base_addr.i, align 4
  %add.i = add i32 %4, %port
  %call.i = call i32 @mv88e6xxx_read(ptr noundef %chip, i32 noundef %add.i, i32 noundef 8, ptr noundef nonnull %reg) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %5 = ptrtoint ptr %reg to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %reg, align 2
  %7 = and i16 %6, -16
  %8 = trunc i32 %upstream_port to i16
  %conv3 = or i16 %7, %8
  store i16 %conv3, ptr %reg, align 2
  %9 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %chip, align 8
  %port_base_addr.i9 = getelementptr inbounds %struct.mv88e6xxx_info, ptr %10, i32 0, i32 9
  %11 = ptrtoint ptr %port_base_addr.i9 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %port_base_addr.i9, align 4
  %add.i10 = add i32 %12, %port
  %call.i11 = call i32 @mv88e6xxx_write(ptr noundef %chip, i32 noundef %add.i10, i32 noundef 8, i16 noundef zeroext %conv3) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i11, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6xxx_port_set_mirror(ptr noundef %chip, i32 noundef %port, i32 noundef %direction, i1 noundef zeroext %mirror) local_unnamed_addr #0 align 64 {
entry:
  %reg = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %mirror to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg) #4
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %reg, align 2, !annotation !82
  %1 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %chip, align 8
  %port_base_addr.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %2, i32 0, i32 9
  %3 = ptrtoint ptr %port_base_addr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %port_base_addr.i, align 4
  %add.i = add i32 %4, %port
  %call.i = call i32 @mv88e6xxx_read(ptr noundef %chip, i32 noundef %add.i, i32 noundef 8, ptr noundef nonnull %reg) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = zext i32 %direction to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %direction, label %if.end.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %mirror_ingress = getelementptr %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 46, i32 %port, i32 11
  br label %sw.epilog

sw.bb1:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %mirror_egress = getelementptr %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 46, i32 %port, i32 12
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %sw.bb
  %mirror_port.0 = phi ptr [ %mirror_egress, %sw.bb1 ], [ %mirror_ingress, %sw.bb ]
  %bit.0 = phi i16 [ 32, %sw.bb1 ], [ 16, %sw.bb ]
  %6 = ptrtoint ptr %reg to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %reg, align 2
  %8 = xor i16 %bit.0, -1
  %conv5 = and i16 %7, %8
  %conv10 = or i16 %7, %bit.0
  %spec.select = select i1 %mirror, i16 %conv10, i16 %conv5
  store i16 %spec.select, ptr %reg, align 2
  %9 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %chip, align 8
  %port_base_addr.i32 = getelementptr inbounds %struct.mv88e6xxx_info, ptr %10, i32 0, i32 9
  %11 = ptrtoint ptr %port_base_addr.i32 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %port_base_addr.i32, align 4
  %add.i33 = add i32 %12, %port
  %call.i34 = call i32 @mv88e6xxx_write(ptr noundef %chip, i32 noundef %add.i33, i32 noundef 8, i16 noundef zeroext %spec.select) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i34)
  %tobool13.not = icmp eq i32 %call.i34, 0
  br i1 %tobool13.not, label %if.then14, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then14:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  %13 = ptrtoint ptr %mirror_port.0 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %frombool, ptr %mirror_port.0, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then14, %sw.epilog.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %if.then14 ], [ %call.i34, %sw.epilog.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6xxx_port_set_8021q_mode(ptr noundef %chip, i32 noundef %port, i16 noundef zeroext %mode) local_unnamed_addr #0 align 64 {
entry:
  %reg = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg) #4
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %reg, align 2, !annotation !82
  %1 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %chip, align 8
  %port_base_addr.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %2, i32 0, i32 9
  %3 = ptrtoint ptr %port_base_addr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %port_base_addr.i, align 4
  %add.i = add i32 %4, %port
  %call.i = call i32 @mv88e6xxx_read(ptr noundef %chip, i32 noundef %add.i, i32 noundef 8, ptr noundef nonnull %reg) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %reg to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %reg, align 2
  %7 = and i16 %6, -3073
  %conv2 = zext i16 %mode to i32
  %and3 = and i16 %mode, 3072
  %or = or i16 %7, %and3
  store i16 %or, ptr %reg, align 2
  %8 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %chip, align 8
  %port_base_addr.i25 = getelementptr inbounds %struct.mv88e6xxx_info, ptr %9, i32 0, i32 9
  %10 = ptrtoint ptr %port_base_addr.i25 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %port_base_addr.i25, align 4
  %add.i26 = add i32 %11, %port
  %call.i27 = call i32 @mv88e6xxx_write(ptr noundef %chip, i32 noundef %add.i26, i32 noundef 8, i16 noundef zeroext %or) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i27)
  %tobool7.not = icmp eq i32 %call.i27, 0
  br i1 %tobool7.not, label %do.body, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mv88e6xxx_port_set_8021q_mode.__UNIQUE_ID_ddebug509, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mv88e6xxx_port_set_8021q_mode, %if.then14)) #4
          to label %cleanup [label %if.then14], !srcloc !83

if.then14:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %dev = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 3
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  %arrayidx = getelementptr [3073 x ptr], ptr @mv88e6xxx_port_8021q_mode_names, i32 0, i32 %conv2
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mv88e6xxx_port_set_8021q_mode.__UNIQUE_ID_ddebug509, ptr noundef %13, ptr noundef nonnull @.str.23, i32 noundef %port, ptr noundef %15) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then14, %do.body, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ %call.i27, %if.end.cleanup_crit_edge ], [ 0, %if.then14 ], [ 0, %do.body ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6xxx_port_drop_untagged(ptr noundef %chip, i32 noundef %port, i1 noundef zeroext %drop_untagged) local_unnamed_addr #0 align 64 {
entry:
  %old = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %old) #4
  %0 = ptrtoint ptr %old to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %old, align 2, !annotation !82
  %1 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %chip, align 8
  %port_base_addr.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %2, i32 0, i32 9
  %3 = ptrtoint ptr %port_base_addr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %port_base_addr.i, align 4
  %add.i = add i32 %4, %port
  %call.i = call i32 @mv88e6xxx_read(ptr noundef %chip, i32 noundef %add.i, i32 noundef 8, ptr noundef nonnull %old) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %old to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %old, align 2
  %7 = and i16 %6, -257
  %masksel = select i1 %drop_untagged, i16 256, i16 0
  %new.0 = or i16 %7, %masksel
  call void @__sanitizer_cov_trace_cmp2(i16 %new.0, i16 %6)
  %cmp = icmp eq i16 %new.0, %6
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end11

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %8 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %chip, align 8
  %port_base_addr.i19 = getelementptr inbounds %struct.mv88e6xxx_info, ptr %9, i32 0, i32 9
  %10 = ptrtoint ptr %port_base_addr.i19 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %port_base_addr.i19, align 4
  %add.i20 = add i32 %11, %port
  %call.i21 = call i32 @mv88e6xxx_write(ptr noundef %chip, i32 noundef %add.i20, i32 noundef 8, i16 noundef zeroext %new.0) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i21, %if.end11 ], [ %call.i, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %old) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6xxx_port_set_map_da(ptr noundef %chip, i32 noundef %port) local_unnamed_addr #0 align 64 {
entry:
  %reg = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg) #4
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %reg, align 2, !annotation !82
  %1 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %chip, align 8
  %port_base_addr.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %2, i32 0, i32 9
  %3 = ptrtoint ptr %port_base_addr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %port_base_addr.i, align 4
  %add.i = add i32 %4, %port
  %call.i = call i32 @mv88e6xxx_read(ptr noundef %chip, i32 noundef %add.i, i32 noundef 8, ptr noundef nonnull %reg) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %5 = ptrtoint ptr %reg to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %reg, align 2
  %7 = or i16 %6, 128
  store i16 %7, ptr %reg, align 2
  %8 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %chip, align 8
  %port_base_addr.i7 = getelementptr inbounds %struct.mv88e6xxx_info, ptr %9, i32 0, i32 9
  %10 = ptrtoint ptr %port_base_addr.i7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %port_base_addr.i7, align 4
  %add.i8 = add i32 %11, %port
  %call.i9 = call i32 @mv88e6xxx_write(ptr noundef %chip, i32 noundef %add.i8, i32 noundef 8, i16 noundef zeroext %7) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i9, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6165_port_set_jumbo_size(ptr noundef %chip, i32 noundef %port, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  %reg = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg) #4
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %reg, align 2, !annotation !82
  %add = add i32 %size, 22
  %1 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %chip, align 8
  %port_base_addr.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %2, i32 0, i32 9
  %3 = ptrtoint ptr %port_base_addr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %port_base_addr.i, align 4
  %add.i = add i32 %4, %port
  %call.i = call i32 @mv88e6xxx_read(ptr noundef %chip, i32 noundef %add.i, i32 noundef 8, ptr noundef nonnull %reg) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %reg to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %reg, align 2
  %7 = and i16 %6, -12289
  call void @__sanitizer_cov_trace_const_cmp4(i32 1523, i32 %add)
  %cmp = icmp ult i32 %add, 1523
  br i1 %cmp, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %8 = ptrtoint ptr %reg to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %reg, align 2
  br label %if.end22

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 2049, i32 %add)
  %cmp6 = icmp ult i32 %add, 2049
  br i1 %cmp6, label %if.then8, label %if.else12

if.then8:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %9 = or i16 %7, 4096
  %10 = ptrtoint ptr %reg to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %reg, align 2
  br label %if.end22

if.else12:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 10241, i32 %add)
  %cmp13 = icmp ult i32 %add, 10241
  br i1 %cmp13, label %if.then15, label %if.else12.cleanup_crit_edge

if.else12.cleanup_crit_edge:                      ; preds = %if.else12
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then15:                                        ; preds = %if.else12
  call void @__sanitizer_cov_trace_pc() #6
  %11 = or i16 %7, 8192
  %12 = ptrtoint ptr %reg to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %reg, align 2
  br label %if.end22

if.end22:                                         ; preds = %if.then15, %if.then8, %if.then3
  %13 = ptrtoint ptr %reg to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %reg, align 2
  %15 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %chip, align 8
  %port_base_addr.i31 = getelementptr inbounds %struct.mv88e6xxx_info, ptr %16, i32 0, i32 9
  %17 = ptrtoint ptr %port_base_addr.i31 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %port_base_addr.i31, align 4
  %add.i32 = add i32 %18, %port
  %call.i33 = call i32 @mv88e6xxx_write(ptr noundef %chip, i32 noundef %add.i32, i32 noundef 8, i16 noundef zeroext %14) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.else12.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i33, %if.end22 ], [ %call.i, %entry.cleanup_crit_edge ], [ -34, %if.else12.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6095_port_egress_rate_limiting(ptr noundef %chip, i32 noundef %port) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 8
  %port_base_addr.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %port_base_addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port_base_addr.i, align 4
  %add.i = add i32 %3, %port
  %call.i = tail call i32 @mv88e6xxx_write(ptr noundef %chip, i32 noundef %add.i, i32 noundef 9, i16 noundef zeroext 0) #4
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6097_port_egress_rate_limiting(ptr noundef %chip, i32 noundef %port) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 8
  %port_base_addr.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %port_base_addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port_base_addr.i, align 4
  %add.i = add i32 %3, %port
  %call.i = tail call i32 @mv88e6xxx_write(ptr noundef %chip, i32 noundef %add.i, i32 noundef 9, i16 noundef zeroext 1) #4
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6xxx_port_set_assoc_vector(ptr noundef %chip, i32 noundef %port, i16 noundef zeroext %pav) local_unnamed_addr #0 align 64 {
entry:
  %reg = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg) #4
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %reg, align 2, !annotation !82
  %1 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %chip, align 8
  %port_base_addr.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %2, i32 0, i32 9
  %3 = ptrtoint ptr %port_base_addr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %port_base_addr.i, align 4
  %add.i = add i32 %4, %port
  %call.i = call i32 @mv88e6xxx_read(ptr noundef %chip, i32 noundef %add.i, i32 noundef 11, ptr noundef nonnull %reg) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %5 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %chip, align 8
  %num_ports.i.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %6, i32 0, i32 5
  %7 = ptrtoint ptr %num_ports.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_ports.i.i, align 4
  %sub1.i = sub i32 32, %8
  %shr.i = lshr i32 -1, %sub1.i
  %conv.i = trunc i32 %shr.i to i16
  %neg = xor i16 %conv.i, -1
  %9 = ptrtoint ptr %reg to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %reg, align 2
  %and = and i16 %10, %neg
  %and617 = and i16 %conv.i, %pav
  %or18 = or i16 %and, %and617
  store i16 %or18, ptr %reg, align 2
  %port_base_addr.i19 = getelementptr inbounds %struct.mv88e6xxx_info, ptr %6, i32 0, i32 9
  %11 = ptrtoint ptr %port_base_addr.i19 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %port_base_addr.i19, align 4
  %add.i20 = add i32 %12, %port
  %call.i21 = call i32 @mv88e6xxx_write(ptr noundef %chip, i32 noundef %add.i20, i32 noundef 11, i16 noundef zeroext %or18) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i21, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6xxx_port_disable_learn_limit(ptr noundef %chip, i32 noundef %port) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 8
  %port_base_addr.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %port_base_addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port_base_addr.i, align 4
  %add.i = add i32 %3, %port
  %call.i = tail call i32 @mv88e6xxx_write(ptr noundef %chip, i32 noundef %add.i, i32 noundef 12, i16 noundef zeroext 0) #4
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6xxx_port_disable_pri_override(ptr noundef %chip, i32 noundef %port) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 8
  %port_base_addr.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %port_base_addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port_base_addr.i, align 4
  %add.i = add i32 %3, %port
  %call.i = tail call i32 @mv88e6xxx_write(ptr noundef %chip, i32 noundef %add.i, i32 noundef 13, i16 noundef zeroext 0) #4
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6393x_set_egress_port(ptr noundef %chip, i32 noundef %direction, i32 noundef %port) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %direction to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %direction, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %1 = trunc i32 %port to i16
  %conv1.i.i = and i16 %1, 255
  %or2.i.i = or i16 %conv1.i.i, -20480
  %2 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip, align 8
  %num_ports.i13.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %num_ports.i13.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_ports.i13.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp14.not.i = icmp eq i32 %5, 0
  br i1 %cmp14.not.i, label %sw.bb.sw.epilog_crit_edge, label %for.body.lr.ph.i

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

for.body.lr.ph.i:                                 ; preds = %sw.bb
  %ds.i = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %6 = phi ptr [ %3, %for.body.lr.ph.i ], [ %22, %for.inc.i.for.body.i_crit_edge ]
  %port.015.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %7 = ptrtoint ptr %ds.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ds.i, align 8
  %dst1.i.i.i = getelementptr inbounds %struct.dsa_switch, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %dst1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dst1.i.i.i, align 4
  %ports.i.i.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %ports.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn20.i.i.i = load ptr, ptr %ports.i.i.i, align 4
  %cmp.not21.i.i.i = icmp eq ptr %.pn20.i.i.i, %ports.i.i.i
  br i1 %cmp.not21.i.i.i, label %for.body.i.dsa_is_unused_port.exit.i_crit_edge, label %for.body.i.for.body.i.i.i_crit_edge

for.body.i.for.body.i.i.i_crit_edge:              ; preds = %for.body.i
  br label %for.body.i.i.i

for.body.i.dsa_is_unused_port.exit.i_crit_edge:   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %dsa_is_unused_port.exit.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %for.body.i.for.body.i.i.i_crit_edge
  %.pn22.i.i.i = phi ptr [ %.pn.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ %.pn20.i.i.i, %for.body.i.for.body.i.i.i_crit_edge ]
  %ds3.i.i.i = getelementptr i8, ptr %.pn22.i.i.i, i32 -432
  %12 = ptrtoint ptr %ds3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ds3.i.i.i, align 4
  %cmp4.i.i.i = icmp eq ptr %13, %8
  br i1 %cmp4.i.i.i, label %land.lhs.true.i.i.i, label %for.body.i.i.i.for.inc.i.i.i_crit_edge

for.body.i.i.i.for.inc.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i.i.i

land.lhs.true.i.i.i:                              ; preds = %for.body.i.i.i
  %index.i.i.i = getelementptr i8, ptr %.pn22.i.i.i, i32 -428
  %14 = ptrtoint ptr %index.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %index.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %port.015.i)
  %cmp5.i.i.i = icmp eq i32 %15, %port.015.i
  br i1 %cmp5.i.i.i, label %cleanup.split.loop.exit18.i.i.i, label %land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge

land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge:      ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge, %for.body.i.i.i.for.inc.i.i.i_crit_edge
  %16 = ptrtoint ptr %.pn22.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pn.i.i.i = load ptr, ptr %.pn22.i.i.i, align 4
  %cmp.not.i.i.i = icmp eq ptr %.pn.i.i.i, %ports.i.i.i
  br i1 %cmp.not.i.i.i, label %for.inc.i.i.i.dsa_is_unused_port.exit.i_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i.i.i

for.inc.i.i.i.dsa_is_unused_port.exit.i_crit_edge: ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %dsa_is_unused_port.exit.i

cleanup.split.loop.exit18.i.i.i:                  ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %dp.0.le.i.i.i = getelementptr i8, ptr %.pn22.i.i.i, i32 -448
  br label %dsa_is_unused_port.exit.i

dsa_is_unused_port.exit.i:                        ; preds = %cleanup.split.loop.exit18.i.i.i, %for.inc.i.i.i.dsa_is_unused_port.exit.i_crit_edge, %for.body.i.dsa_is_unused_port.exit.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %dp.0.le.i.i.i, %cleanup.split.loop.exit18.i.i.i ], [ null, %for.body.i.dsa_is_unused_port.exit.i_crit_edge ], [ null, %for.inc.i.i.i.dsa_is_unused_port.exit.i_crit_edge ]
  %type.i.i = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i.i.i, i32 0, i32 6
  %17 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp.i.i = icmp eq i32 %18, 0
  br i1 %cmp.i.i, label %dsa_is_unused_port.exit.i.for.inc.i_crit_edge, label %if.end.i

dsa_is_unused_port.exit.i.for.inc.i_crit_edge:    ; preds = %dsa_is_unused_port.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

if.end.i:                                         ; preds = %dsa_is_unused_port.exit.i
  %port_base_addr.i.i.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %6, i32 0, i32 9
  %19 = ptrtoint ptr %port_base_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %port_base_addr.i.i.i, align 4
  %add.i.i.i = add i32 %20, %port.015.i
  %call.i.i.i = tail call i32 @mv88e6xxx_write(ptr noundef %chip, i32 noundef %add.i.i.i, i32 noundef 14, i16 noundef zeroext %or2.i.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i, label %if.end.i.for.inc.i_crit_edge, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i.for.inc.i_crit_edge, %dsa_is_unused_port.exit.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %port.015.i, 1
  %21 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %chip, align 8
  %num_ports.i.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %22, i32 0, i32 5
  %23 = ptrtoint ptr %num_ports.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %num_ports.i.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %24
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.sw.epilog_crit_edge

for.inc.i.sw.epilog_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

sw.bb1:                                           ; preds = %entry
  %conv3 = trunc i32 %port to i16
  %call4 = tail call i32 @mv88e6xxx_g2_write(ptr noundef %chip, i32 noundef 5, i16 noundef zeroext %conv3) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %sw.bb1.sw.epilog_crit_edge, label %sw.bb1.cleanup_crit_edge

sw.bb1.cleanup_crit_edge:                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb1.sw.epilog_crit_edge:                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1.sw.epilog_crit_edge, %for.inc.i.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.bb1.cleanup_crit_edge, %if.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ %call4, %sw.bb1.cleanup_crit_edge ], [ %call.i.i.i, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mv88e6xxx_g2_write(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6393x_port_set_upstream_port(ptr noundef %chip, i32 noundef %port, i32 noundef %upstream_port) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = trunc i32 %upstream_port to i16
  %conv1.i = and i16 %0, 31
  %or2.i = or i16 %conv1.i, -18208
  %1 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %chip, align 8
  %port_base_addr.i.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %2, i32 0, i32 9
  %3 = ptrtoint ptr %port_base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %port_base_addr.i.i, align 4
  %add.i.i = add i32 %4, %port
  %call.i.i = tail call i32 @mv88e6xxx_write(ptr noundef %chip, i32 noundef %add.i.i, i32 noundef 14, i16 noundef zeroext %or2.i) #4
  ret i32 %call.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6393x_port_mgmt_rsvd2cpu(ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 8
  %num_ports.i13.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %num_ports.i13.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_ports.i13.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp14.not.i = icmp eq i32 %3, 0
  br i1 %cmp14.not.i, label %entry.if.end_crit_edge, label %for.body.lr.ph.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

for.body.lr.ph.i:                                 ; preds = %entry
  %ds.i = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %4 = phi ptr [ %1, %for.body.lr.ph.i ], [ %20, %for.inc.i.for.body.i_crit_edge ]
  %port.015.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %5 = ptrtoint ptr %ds.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ds.i, align 8
  %dst1.i.i.i = getelementptr inbounds %struct.dsa_switch, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %dst1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dst1.i.i.i, align 4
  %ports.i.i.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %ports.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn20.i.i.i = load ptr, ptr %ports.i.i.i, align 4
  %cmp.not21.i.i.i = icmp eq ptr %.pn20.i.i.i, %ports.i.i.i
  br i1 %cmp.not21.i.i.i, label %for.body.i.dsa_is_unused_port.exit.i_crit_edge, label %for.body.i.for.body.i.i.i_crit_edge

for.body.i.for.body.i.i.i_crit_edge:              ; preds = %for.body.i
  br label %for.body.i.i.i

for.body.i.dsa_is_unused_port.exit.i_crit_edge:   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %dsa_is_unused_port.exit.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %for.body.i.for.body.i.i.i_crit_edge
  %.pn22.i.i.i = phi ptr [ %.pn.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ %.pn20.i.i.i, %for.body.i.for.body.i.i.i_crit_edge ]
  %ds3.i.i.i = getelementptr i8, ptr %.pn22.i.i.i, i32 -432
  %10 = ptrtoint ptr %ds3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ds3.i.i.i, align 4
  %cmp4.i.i.i = icmp eq ptr %11, %6
  br i1 %cmp4.i.i.i, label %land.lhs.true.i.i.i, label %for.body.i.i.i.for.inc.i.i.i_crit_edge

for.body.i.i.i.for.inc.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i.i.i

land.lhs.true.i.i.i:                              ; preds = %for.body.i.i.i
  %index.i.i.i = getelementptr i8, ptr %.pn22.i.i.i, i32 -428
  %12 = ptrtoint ptr %index.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %index.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %port.015.i)
  %cmp5.i.i.i = icmp eq i32 %13, %port.015.i
  br i1 %cmp5.i.i.i, label %cleanup.split.loop.exit18.i.i.i, label %land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge

land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge:      ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge, %for.body.i.i.i.for.inc.i.i.i_crit_edge
  %14 = ptrtoint ptr %.pn22.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pn.i.i.i = load ptr, ptr %.pn22.i.i.i, align 4
  %cmp.not.i.i.i = icmp eq ptr %.pn.i.i.i, %ports.i.i.i
  br i1 %cmp.not.i.i.i, label %for.inc.i.i.i.dsa_is_unused_port.exit.i_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i.i.i

for.inc.i.i.i.dsa_is_unused_port.exit.i_crit_edge: ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %dsa_is_unused_port.exit.i

cleanup.split.loop.exit18.i.i.i:                  ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %dp.0.le.i.i.i = getelementptr i8, ptr %.pn22.i.i.i, i32 -448
  br label %dsa_is_unused_port.exit.i

dsa_is_unused_port.exit.i:                        ; preds = %cleanup.split.loop.exit18.i.i.i, %for.inc.i.i.i.dsa_is_unused_port.exit.i_crit_edge, %for.body.i.dsa_is_unused_port.exit.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %dp.0.le.i.i.i, %cleanup.split.loop.exit18.i.i.i ], [ null, %for.body.i.dsa_is_unused_port.exit.i_crit_edge ], [ null, %for.inc.i.i.i.dsa_is_unused_port.exit.i_crit_edge ]
  %type.i.i = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i.i.i, i32 0, i32 6
  %15 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp.i.i = icmp eq i32 %16, 0
  br i1 %cmp.i.i, label %dsa_is_unused_port.exit.i.for.inc.i_crit_edge, label %if.end.i

dsa_is_unused_port.exit.i.for.inc.i_crit_edge:    ; preds = %dsa_is_unused_port.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

if.end.i:                                         ; preds = %dsa_is_unused_port.exit.i
  %port_base_addr.i.i.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %4, i32 0, i32 9
  %17 = ptrtoint ptr %port_base_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %port_base_addr.i.i.i, align 4
  %add.i.i.i = add i32 %18, %port.015.i
  %call.i.i.i = tail call i32 @mv88e6xxx_write(ptr noundef %chip, i32 noundef %add.i.i.i, i32 noundef 14, i16 noundef zeroext -24321) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i, label %if.end.i.for.inc.i_crit_edge, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i.for.inc.i_crit_edge, %dsa_is_unused_port.exit.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %port.015.i, 1
  %19 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %chip, align 8
  %num_ports.i.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %20, i32 0, i32 5
  %21 = ptrtoint ptr %num_ports.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %num_ports.i.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %22
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.if.end_crit_edge

for.inc.i.if.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

if.end:                                           ; preds = %for.inc.i.if.end_crit_edge, %entry.if.end_crit_edge
  %23 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %chip, align 8
  %num_ports.i13.i27 = getelementptr inbounds %struct.mv88e6xxx_info, ptr %24, i32 0, i32 5
  %25 = ptrtoint ptr %num_ports.i13.i27 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %num_ports.i13.i27, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp14.not.i28 = icmp eq i32 %26, 0
  br i1 %cmp14.not.i28, label %if.end.if.end4_crit_edge, label %for.body.lr.ph.i30

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4

for.body.lr.ph.i30:                               ; preds = %if.end
  %ds.i29 = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 2
  br label %for.body.i36

for.body.i36:                                     ; preds = %for.inc.i61.for.body.i36_crit_edge, %for.body.lr.ph.i30
  %27 = phi ptr [ %24, %for.body.lr.ph.i30 ], [ %43, %for.inc.i61.for.body.i36_crit_edge ]
  %port.015.i31 = phi i32 [ 0, %for.body.lr.ph.i30 ], [ %inc.i58, %for.inc.i61.for.body.i36_crit_edge ]
  %28 = ptrtoint ptr %ds.i29 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ds.i29, align 8
  %dst1.i.i.i32 = getelementptr inbounds %struct.dsa_switch, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %dst1.i.i.i32 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dst1.i.i.i32, align 4
  %ports.i.i.i33 = getelementptr inbounds %struct.dsa_switch_tree, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %ports.i.i.i33 to i32
  call void @__asan_load4_noabort(i32 %32)
  %.pn20.i.i.i34 = load ptr, ptr %ports.i.i.i33, align 4
  %cmp.not21.i.i.i35 = icmp eq ptr %.pn20.i.i.i34, %ports.i.i.i33
  br i1 %cmp.not21.i.i.i35, label %for.body.i36.dsa_is_unused_port.exit.i52_crit_edge, label %for.body.i36.for.body.i.i.i40_crit_edge

for.body.i36.for.body.i.i.i40_crit_edge:          ; preds = %for.body.i36
  br label %for.body.i.i.i40

for.body.i36.dsa_is_unused_port.exit.i52_crit_edge: ; preds = %for.body.i36
  call void @__sanitizer_cov_trace_pc() #6
  br label %dsa_is_unused_port.exit.i52

for.body.i.i.i40:                                 ; preds = %for.inc.i.i.i46.for.body.i.i.i40_crit_edge, %for.body.i36.for.body.i.i.i40_crit_edge
  %.pn22.i.i.i37 = phi ptr [ %.pn.i.i.i44, %for.inc.i.i.i46.for.body.i.i.i40_crit_edge ], [ %.pn20.i.i.i34, %for.body.i36.for.body.i.i.i40_crit_edge ]
  %ds3.i.i.i38 = getelementptr i8, ptr %.pn22.i.i.i37, i32 -432
  %33 = ptrtoint ptr %ds3.i.i.i38 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ds3.i.i.i38, align 4
  %cmp4.i.i.i39 = icmp eq ptr %34, %29
  br i1 %cmp4.i.i.i39, label %land.lhs.true.i.i.i43, label %for.body.i.i.i40.for.inc.i.i.i46_crit_edge

for.body.i.i.i40.for.inc.i.i.i46_crit_edge:       ; preds = %for.body.i.i.i40
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i.i.i46

land.lhs.true.i.i.i43:                            ; preds = %for.body.i.i.i40
  %index.i.i.i41 = getelementptr i8, ptr %.pn22.i.i.i37, i32 -428
  %35 = ptrtoint ptr %index.i.i.i41 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %index.i.i.i41, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %port.015.i31)
  %cmp5.i.i.i42 = icmp eq i32 %36, %port.015.i31
  br i1 %cmp5.i.i.i42, label %cleanup.split.loop.exit18.i.i.i48, label %land.lhs.true.i.i.i43.for.inc.i.i.i46_crit_edge

land.lhs.true.i.i.i43.for.inc.i.i.i46_crit_edge:  ; preds = %land.lhs.true.i.i.i43
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i.i.i46

for.inc.i.i.i46:                                  ; preds = %land.lhs.true.i.i.i43.for.inc.i.i.i46_crit_edge, %for.body.i.i.i40.for.inc.i.i.i46_crit_edge
  %37 = ptrtoint ptr %.pn22.i.i.i37 to i32
  call void @__asan_load4_noabort(i32 %37)
  %.pn.i.i.i44 = load ptr, ptr %.pn22.i.i.i37, align 4
  %cmp.not.i.i.i45 = icmp eq ptr %.pn.i.i.i44, %ports.i.i.i33
  br i1 %cmp.not.i.i.i45, label %for.inc.i.i.i46.dsa_is_unused_port.exit.i52_crit_edge, label %for.inc.i.i.i46.for.body.i.i.i40_crit_edge

for.inc.i.i.i46.for.body.i.i.i40_crit_edge:       ; preds = %for.inc.i.i.i46
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i.i.i40

for.inc.i.i.i46.dsa_is_unused_port.exit.i52_crit_edge: ; preds = %for.inc.i.i.i46
  call void @__sanitizer_cov_trace_pc() #6
  br label %dsa_is_unused_port.exit.i52

cleanup.split.loop.exit18.i.i.i48:                ; preds = %land.lhs.true.i.i.i43
  call void @__sanitizer_cov_trace_pc() #6
  %dp.0.le.i.i.i47 = getelementptr i8, ptr %.pn22.i.i.i37, i32 -448
  br label %dsa_is_unused_port.exit.i52

dsa_is_unused_port.exit.i52:                      ; preds = %cleanup.split.loop.exit18.i.i.i48, %for.inc.i.i.i46.dsa_is_unused_port.exit.i52_crit_edge, %for.body.i36.dsa_is_unused_port.exit.i52_crit_edge
  %retval.0.i.i.i49 = phi ptr [ %dp.0.le.i.i.i47, %cleanup.split.loop.exit18.i.i.i48 ], [ null, %for.body.i36.dsa_is_unused_port.exit.i52_crit_edge ], [ null, %for.inc.i.i.i46.dsa_is_unused_port.exit.i52_crit_edge ]
  %type.i.i50 = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i.i.i49, i32 0, i32 6
  %38 = ptrtoint ptr %type.i.i50 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %type.i.i50, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp.i.i51 = icmp eq i32 %39, 0
  br i1 %cmp.i.i51, label %dsa_is_unused_port.exit.i52.for.inc.i61_crit_edge, label %if.end.i57

dsa_is_unused_port.exit.i52.for.inc.i61_crit_edge: ; preds = %dsa_is_unused_port.exit.i52
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i61

if.end.i57:                                       ; preds = %dsa_is_unused_port.exit.i52
  %port_base_addr.i.i.i53 = getelementptr inbounds %struct.mv88e6xxx_info, ptr %27, i32 0, i32 9
  %40 = ptrtoint ptr %port_base_addr.i.i.i53 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %port_base_addr.i.i.i53, align 4
  %add.i.i.i54 = add i32 %41, %port.015.i31
  %call.i.i.i55 = tail call i32 @mv88e6xxx_write(ptr noundef %chip, i32 noundef %add.i.i.i54, i32 noundef 14, i16 noundef zeroext -24065) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i55)
  %tobool.not.i56 = icmp eq i32 %call.i.i.i55, 0
  br i1 %tobool.not.i56, label %if.end.i57.for.inc.i61_crit_edge, label %if.end.i57.cleanup_crit_edge

if.end.i57.cleanup_crit_edge:                     ; preds = %if.end.i57
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i57.for.inc.i61_crit_edge:                 ; preds = %if.end.i57
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i61

for.inc.i61:                                      ; preds = %if.end.i57.for.inc.i61_crit_edge, %dsa_is_unused_port.exit.i52.for.inc.i61_crit_edge
  %inc.i58 = add nuw i32 %port.015.i31, 1
  %42 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %chip, align 8
  %num_ports.i.i59 = getelementptr inbounds %struct.mv88e6xxx_info, ptr %43, i32 0, i32 5
  %44 = ptrtoint ptr %num_ports.i.i59 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %num_ports.i.i59, align 4
  %cmp.i60 = icmp ult i32 %inc.i58, %45
  br i1 %cmp.i60, label %for.inc.i61.for.body.i36_crit_edge, label %for.inc.i61.if.end4_crit_edge

for.inc.i61.if.end4_crit_edge:                    ; preds = %for.inc.i61
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4

for.inc.i61.for.body.i36_crit_edge:               ; preds = %for.inc.i61
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i36

if.end4:                                          ; preds = %for.inc.i61.if.end4_crit_edge, %if.end.if.end4_crit_edge
  %46 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %chip, align 8
  %num_ports.i13.i64 = getelementptr inbounds %struct.mv88e6xxx_info, ptr %47, i32 0, i32 5
  %48 = ptrtoint ptr %num_ports.i13.i64 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %num_ports.i13.i64, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp14.not.i65 = icmp eq i32 %49, 0
  br i1 %cmp14.not.i65, label %if.end4.if.end8_crit_edge, label %for.body.lr.ph.i67

if.end4.if.end8_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end8

for.body.lr.ph.i67:                               ; preds = %if.end4
  %ds.i66 = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 2
  br label %for.body.i73

for.body.i73:                                     ; preds = %for.inc.i98.for.body.i73_crit_edge, %for.body.lr.ph.i67
  %50 = phi ptr [ %47, %for.body.lr.ph.i67 ], [ %66, %for.inc.i98.for.body.i73_crit_edge ]
  %port.015.i68 = phi i32 [ 0, %for.body.lr.ph.i67 ], [ %inc.i95, %for.inc.i98.for.body.i73_crit_edge ]
  %51 = ptrtoint ptr %ds.i66 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ds.i66, align 8
  %dst1.i.i.i69 = getelementptr inbounds %struct.dsa_switch, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %dst1.i.i.i69 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dst1.i.i.i69, align 4
  %ports.i.i.i70 = getelementptr inbounds %struct.dsa_switch_tree, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %ports.i.i.i70 to i32
  call void @__asan_load4_noabort(i32 %55)
  %.pn20.i.i.i71 = load ptr, ptr %ports.i.i.i70, align 4
  %cmp.not21.i.i.i72 = icmp eq ptr %.pn20.i.i.i71, %ports.i.i.i70
  br i1 %cmp.not21.i.i.i72, label %for.body.i73.dsa_is_unused_port.exit.i89_crit_edge, label %for.body.i73.for.body.i.i.i77_crit_edge

for.body.i73.for.body.i.i.i77_crit_edge:          ; preds = %for.body.i73
  br label %for.body.i.i.i77

for.body.i73.dsa_is_unused_port.exit.i89_crit_edge: ; preds = %for.body.i73
  call void @__sanitizer_cov_trace_pc() #6
  br label %dsa_is_unused_port.exit.i89

for.body.i.i.i77:                                 ; preds = %for.inc.i.i.i83.for.body.i.i.i77_crit_edge, %for.body.i73.for.body.i.i.i77_crit_edge
  %.pn22.i.i.i74 = phi ptr [ %.pn.i.i.i81, %for.inc.i.i.i83.for.body.i.i.i77_crit_edge ], [ %.pn20.i.i.i71, %for.body.i73.for.body.i.i.i77_crit_edge ]
  %ds3.i.i.i75 = getelementptr i8, ptr %.pn22.i.i.i74, i32 -432
  %56 = ptrtoint ptr %ds3.i.i.i75 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ds3.i.i.i75, align 4
  %cmp4.i.i.i76 = icmp eq ptr %57, %52
  br i1 %cmp4.i.i.i76, label %land.lhs.true.i.i.i80, label %for.body.i.i.i77.for.inc.i.i.i83_crit_edge

for.body.i.i.i77.for.inc.i.i.i83_crit_edge:       ; preds = %for.body.i.i.i77
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i.i.i83

land.lhs.true.i.i.i80:                            ; preds = %for.body.i.i.i77
  %index.i.i.i78 = getelementptr i8, ptr %.pn22.i.i.i74, i32 -428
  %58 = ptrtoint ptr %index.i.i.i78 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %index.i.i.i78, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %59, i32 %port.015.i68)
  %cmp5.i.i.i79 = icmp eq i32 %59, %port.015.i68
  br i1 %cmp5.i.i.i79, label %cleanup.split.loop.exit18.i.i.i85, label %land.lhs.true.i.i.i80.for.inc.i.i.i83_crit_edge

land.lhs.true.i.i.i80.for.inc.i.i.i83_crit_edge:  ; preds = %land.lhs.true.i.i.i80
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i.i.i83

for.inc.i.i.i83:                                  ; preds = %land.lhs.true.i.i.i80.for.inc.i.i.i83_crit_edge, %for.body.i.i.i77.for.inc.i.i.i83_crit_edge
  %60 = ptrtoint ptr %.pn22.i.i.i74 to i32
  call void @__asan_load4_noabort(i32 %60)
  %.pn.i.i.i81 = load ptr, ptr %.pn22.i.i.i74, align 4
  %cmp.not.i.i.i82 = icmp eq ptr %.pn.i.i.i81, %ports.i.i.i70
  br i1 %cmp.not.i.i.i82, label %for.inc.i.i.i83.dsa_is_unused_port.exit.i89_crit_edge, label %for.inc.i.i.i83.for.body.i.i.i77_crit_edge

for.inc.i.i.i83.for.body.i.i.i77_crit_edge:       ; preds = %for.inc.i.i.i83
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i.i.i77

for.inc.i.i.i83.dsa_is_unused_port.exit.i89_crit_edge: ; preds = %for.inc.i.i.i83
  call void @__sanitizer_cov_trace_pc() #6
  br label %dsa_is_unused_port.exit.i89

cleanup.split.loop.exit18.i.i.i85:                ; preds = %land.lhs.true.i.i.i80
  call void @__sanitizer_cov_trace_pc() #6
  %dp.0.le.i.i.i84 = getelementptr i8, ptr %.pn22.i.i.i74, i32 -448
  br label %dsa_is_unused_port.exit.i89

dsa_is_unused_port.exit.i89:                      ; preds = %cleanup.split.loop.exit18.i.i.i85, %for.inc.i.i.i83.dsa_is_unused_port.exit.i89_crit_edge, %for.body.i73.dsa_is_unused_port.exit.i89_crit_edge
  %retval.0.i.i.i86 = phi ptr [ %dp.0.le.i.i.i84, %cleanup.split.loop.exit18.i.i.i85 ], [ null, %for.body.i73.dsa_is_unused_port.exit.i89_crit_edge ], [ null, %for.inc.i.i.i83.dsa_is_unused_port.exit.i89_crit_edge ]
  %type.i.i87 = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i.i.i86, i32 0, i32 6
  %61 = ptrtoint ptr %type.i.i87 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %type.i.i87, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %cmp.i.i88 = icmp eq i32 %62, 0
  br i1 %cmp.i.i88, label %dsa_is_unused_port.exit.i89.for.inc.i98_crit_edge, label %if.end.i94

dsa_is_unused_port.exit.i89.for.inc.i98_crit_edge: ; preds = %dsa_is_unused_port.exit.i89
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i98

if.end.i94:                                       ; preds = %dsa_is_unused_port.exit.i89
  %port_base_addr.i.i.i90 = getelementptr inbounds %struct.mv88e6xxx_info, ptr %50, i32 0, i32 9
  %63 = ptrtoint ptr %port_base_addr.i.i.i90 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %port_base_addr.i.i.i90, align 4
  %add.i.i.i91 = add i32 %64, %port.015.i68
  %call.i.i.i92 = tail call i32 @mv88e6xxx_write(ptr noundef %chip, i32 noundef %add.i.i.i91, i32 noundef 14, i16 noundef zeroext -23297) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i92)
  %tobool.not.i93 = icmp eq i32 %call.i.i.i92, 0
  br i1 %tobool.not.i93, label %if.end.i94.for.inc.i98_crit_edge, label %if.end.i94.cleanup_crit_edge

if.end.i94.cleanup_crit_edge:                     ; preds = %if.end.i94
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i94.for.inc.i98_crit_edge:                 ; preds = %if.end.i94
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i98

for.inc.i98:                                      ; preds = %if.end.i94.for.inc.i98_crit_edge, %dsa_is_unused_port.exit.i89.for.inc.i98_crit_edge
  %inc.i95 = add nuw i32 %port.015.i68, 1
  %65 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %chip, align 8
  %num_ports.i.i96 = getelementptr inbounds %struct.mv88e6xxx_info, ptr %66, i32 0, i32 5
  %67 = ptrtoint ptr %num_ports.i.i96 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %num_ports.i.i96, align 4
  %cmp.i97 = icmp ult i32 %inc.i95, %68
  br i1 %cmp.i97, label %for.inc.i98.for.body.i73_crit_edge, label %for.inc.i98.if.end8_crit_edge

for.inc.i98.if.end8_crit_edge:                    ; preds = %for.inc.i98
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end8

for.inc.i98.for.body.i73_crit_edge:               ; preds = %for.inc.i98
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i73

if.end8:                                          ; preds = %for.inc.i98.if.end8_crit_edge, %if.end4.if.end8_crit_edge
  %69 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %chip, align 8
  %num_ports.i13.i101 = getelementptr inbounds %struct.mv88e6xxx_info, ptr %70, i32 0, i32 5
  %71 = ptrtoint ptr %num_ports.i13.i101 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %num_ports.i13.i101, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %cmp14.not.i102 = icmp eq i32 %72, 0
  br i1 %cmp14.not.i102, label %if.end8.cleanup_crit_edge, label %for.body.lr.ph.i104

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body.lr.ph.i104:                              ; preds = %if.end8
  %ds.i103 = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 2
  br label %for.body.i110

for.body.i110:                                    ; preds = %for.inc.i135.for.body.i110_crit_edge, %for.body.lr.ph.i104
  %73 = phi ptr [ %70, %for.body.lr.ph.i104 ], [ %89, %for.inc.i135.for.body.i110_crit_edge ]
  %port.015.i105 = phi i32 [ 0, %for.body.lr.ph.i104 ], [ %inc.i132, %for.inc.i135.for.body.i110_crit_edge ]
  %74 = ptrtoint ptr %ds.i103 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %ds.i103, align 8
  %dst1.i.i.i106 = getelementptr inbounds %struct.dsa_switch, ptr %75, i32 0, i32 1
  %76 = ptrtoint ptr %dst1.i.i.i106 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %dst1.i.i.i106, align 4
  %ports.i.i.i107 = getelementptr inbounds %struct.dsa_switch_tree, ptr %77, i32 0, i32 1
  %78 = ptrtoint ptr %ports.i.i.i107 to i32
  call void @__asan_load4_noabort(i32 %78)
  %.pn20.i.i.i108 = load ptr, ptr %ports.i.i.i107, align 4
  %cmp.not21.i.i.i109 = icmp eq ptr %.pn20.i.i.i108, %ports.i.i.i107
  br i1 %cmp.not21.i.i.i109, label %for.body.i110.dsa_is_unused_port.exit.i126_crit_edge, label %for.body.i110.for.body.i.i.i114_crit_edge

for.body.i110.for.body.i.i.i114_crit_edge:        ; preds = %for.body.i110
  br label %for.body.i.i.i114

for.body.i110.dsa_is_unused_port.exit.i126_crit_edge: ; preds = %for.body.i110
  call void @__sanitizer_cov_trace_pc() #6
  br label %dsa_is_unused_port.exit.i126

for.body.i.i.i114:                                ; preds = %for.inc.i.i.i120.for.body.i.i.i114_crit_edge, %for.body.i110.for.body.i.i.i114_crit_edge
  %.pn22.i.i.i111 = phi ptr [ %.pn.i.i.i118, %for.inc.i.i.i120.for.body.i.i.i114_crit_edge ], [ %.pn20.i.i.i108, %for.body.i110.for.body.i.i.i114_crit_edge ]
  %ds3.i.i.i112 = getelementptr i8, ptr %.pn22.i.i.i111, i32 -432
  %79 = ptrtoint ptr %ds3.i.i.i112 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %ds3.i.i.i112, align 4
  %cmp4.i.i.i113 = icmp eq ptr %80, %75
  br i1 %cmp4.i.i.i113, label %land.lhs.true.i.i.i117, label %for.body.i.i.i114.for.inc.i.i.i120_crit_edge

for.body.i.i.i114.for.inc.i.i.i120_crit_edge:     ; preds = %for.body.i.i.i114
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i.i.i120

land.lhs.true.i.i.i117:                           ; preds = %for.body.i.i.i114
  %index.i.i.i115 = getelementptr i8, ptr %.pn22.i.i.i111, i32 -428
  %81 = ptrtoint ptr %index.i.i.i115 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %index.i.i.i115, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %82, i32 %port.015.i105)
  %cmp5.i.i.i116 = icmp eq i32 %82, %port.015.i105
  br i1 %cmp5.i.i.i116, label %cleanup.split.loop.exit18.i.i.i122, label %land.lhs.true.i.i.i117.for.inc.i.i.i120_crit_edge

land.lhs.true.i.i.i117.for.inc.i.i.i120_crit_edge: ; preds = %land.lhs.true.i.i.i117
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i.i.i120

for.inc.i.i.i120:                                 ; preds = %land.lhs.true.i.i.i117.for.inc.i.i.i120_crit_edge, %for.body.i.i.i114.for.inc.i.i.i120_crit_edge
  %83 = ptrtoint ptr %.pn22.i.i.i111 to i32
  call void @__asan_load4_noabort(i32 %83)
  %.pn.i.i.i118 = load ptr, ptr %.pn22.i.i.i111, align 4
  %cmp.not.i.i.i119 = icmp eq ptr %.pn.i.i.i118, %ports.i.i.i107
  br i1 %cmp.not.i.i.i119, label %for.inc.i.i.i120.dsa_is_unused_port.exit.i126_crit_edge, label %for.inc.i.i.i120.for.body.i.i.i114_crit_edge

for.inc.i.i.i120.for.body.i.i.i114_crit_edge:     ; preds = %for.inc.i.i.i120
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i.i.i114

for.inc.i.i.i120.dsa_is_unused_port.exit.i126_crit_edge: ; preds = %for.inc.i.i.i120
  call void @__sanitizer_cov_trace_pc() #6
  br label %dsa_is_unused_port.exit.i126

cleanup.split.loop.exit18.i.i.i122:               ; preds = %land.lhs.true.i.i.i117
  call void @__sanitizer_cov_trace_pc() #6
  %dp.0.le.i.i.i121 = getelementptr i8, ptr %.pn22.i.i.i111, i32 -448
  br label %dsa_is_unused_port.exit.i126

dsa_is_unused_port.exit.i126:                     ; preds = %cleanup.split.loop.exit18.i.i.i122, %for.inc.i.i.i120.dsa_is_unused_port.exit.i126_crit_edge, %for.body.i110.dsa_is_unused_port.exit.i126_crit_edge
  %retval.0.i.i.i123 = phi ptr [ %dp.0.le.i.i.i121, %cleanup.split.loop.exit18.i.i.i122 ], [ null, %for.body.i110.dsa_is_unused_port.exit.i126_crit_edge ], [ null, %for.inc.i.i.i120.dsa_is_unused_port.exit.i126_crit_edge ]
  %type.i.i124 = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i.i.i123, i32 0, i32 6
  %84 = ptrtoint ptr %type.i.i124 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %type.i.i124, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %cmp.i.i125 = icmp eq i32 %85, 0
  br i1 %cmp.i.i125, label %dsa_is_unused_port.exit.i126.for.inc.i135_crit_edge, label %if.end.i131

dsa_is_unused_port.exit.i126.for.inc.i135_crit_edge: ; preds = %dsa_is_unused_port.exit.i126
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i135

if.end.i131:                                      ; preds = %dsa_is_unused_port.exit.i126
  %port_base_addr.i.i.i127 = getelementptr inbounds %struct.mv88e6xxx_info, ptr %73, i32 0, i32 9
  %86 = ptrtoint ptr %port_base_addr.i.i.i127 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %port_base_addr.i.i.i127, align 4
  %add.i.i.i128 = add i32 %87, %port.015.i105
  %call.i.i.i129 = tail call i32 @mv88e6xxx_write(ptr noundef %chip, i32 noundef %add.i.i.i128, i32 noundef 14, i16 noundef zeroext -23041) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i129)
  %tobool.not.i130 = icmp eq i32 %call.i.i.i129, 0
  br i1 %tobool.not.i130, label %if.end.i131.for.inc.i135_crit_edge, label %if.end.i131.cleanup_crit_edge

if.end.i131.cleanup_crit_edge:                    ; preds = %if.end.i131
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i131.for.inc.i135_crit_edge:               ; preds = %if.end.i131
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i135

for.inc.i135:                                     ; preds = %if.end.i131.for.inc.i135_crit_edge, %dsa_is_unused_port.exit.i126.for.inc.i135_crit_edge
  %inc.i132 = add nuw i32 %port.015.i105, 1
  %88 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %chip, align 8
  %num_ports.i.i133 = getelementptr inbounds %struct.mv88e6xxx_info, ptr %89, i32 0, i32 5
  %90 = ptrtoint ptr %num_ports.i.i133 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %num_ports.i.i133, align 4
  %cmp.i134 = icmp ult i32 %inc.i132, %91
  br i1 %cmp.i134, label %for.inc.i135.for.body.i110_crit_edge, label %for.inc.i135.cleanup_crit_edge

for.inc.i135.cleanup_crit_edge:                   ; preds = %for.inc.i135
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.inc.i135.for.body.i110_crit_edge:             ; preds = %for.inc.i135
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i110

cleanup:                                          ; preds = %for.inc.i135.cleanup_crit_edge, %if.end.i131.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end.i94.cleanup_crit_edge, %if.end.i57.cleanup_crit_edge, %if.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end8.cleanup_crit_edge ], [ %call.i.i.i129, %if.end.i131.cleanup_crit_edge ], [ 0, %for.inc.i135.cleanup_crit_edge ], [ %call.i.i.i92, %if.end.i94.cleanup_crit_edge ], [ %call.i.i.i55, %if.end.i57.cleanup_crit_edge ], [ %call.i.i.i, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6393x_port_set_ether_type(ptr noundef %chip, i32 noundef %port, i16 noundef zeroext %etype) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 8
  %port_base_addr.i.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %port_base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port_base_addr.i.i, align 4
  %add.i.i = add i32 %3, %port
  %call.i.i = tail call i32 @mv88e6xxx_wait_bit(ptr noundef %chip, i32 noundef %add.i.i, i32 noundef 16, i32 noundef 15, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chip, align 8
  %port_base_addr.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %port_base_addr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port_base_addr.i, align 4
  %add.i = add i32 %7, %port
  %call.i = tail call i32 @mv88e6xxx_write(ptr noundef %chip, i32 noundef %add.i, i32 noundef 17, i16 noundef zeroext %etype) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not = icmp eq i32 %call.i, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %8 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %chip, align 8
  %port_base_addr.i14 = getelementptr inbounds %struct.mv88e6xxx_info, ptr %9, i32 0, i32 9
  %10 = ptrtoint ptr %port_base_addr.i14 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %port_base_addr.i14, align 4
  %add.i15 = add i32 %11, %port
  %call.i16 = tail call i32 @mv88e6xxx_write(ptr noundef %chip, i32 noundef %add.i15, i32 noundef 16, i16 noundef zeroext -31998) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i16, %if.end4 ], [ %call.i.i, %entry.cleanup_crit_edge ], [ %call.i, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6351_port_set_ether_type(ptr noundef %chip, i32 noundef %port, i16 noundef zeroext %etype) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 8
  %port_base_addr.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %port_base_addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port_base_addr.i, align 4
  %add.i = add i32 %3, %port
  %call.i = tail call i32 @mv88e6xxx_write(ptr noundef %chip, i32 noundef %add.i, i32 noundef 15, i16 noundef zeroext %etype) #4
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6095_port_tag_remap(ptr noundef %chip, i32 noundef %port) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 8
  %port_base_addr.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %port_base_addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port_base_addr.i, align 4
  %add.i = add i32 %3, %port
  %call.i = tail call i32 @mv88e6xxx_write(ptr noundef %chip, i32 noundef %add.i, i32 noundef 24, i16 noundef zeroext 12816) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chip, align 8
  %port_base_addr.i5 = getelementptr inbounds %struct.mv88e6xxx_info, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %port_base_addr.i5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port_base_addr.i5, align 4
  %add.i6 = add i32 %7, %port
  %call.i7 = tail call i32 @mv88e6xxx_write(ptr noundef %chip, i32 noundef %add.i6, i32 noundef 25, i16 noundef zeroext 30292) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i7, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6390_port_tag_remap(ptr noundef %chip, i32 noundef %port) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.cond:                                         ; preds = %if.end13
  %inc = add nuw nsw i32 %i.069, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry
  %i.069 = phi i32 [ 0, %entry ], [ %inc, %for.cond.for.body_crit_edge ]
  %shl = shl i32 %i.069, 4
  %or = or i32 %shl, %i.069
  %conv1 = trunc i32 %or to i16
  %0 = trunc i32 %i.069 to i16
  %shl.i = shl i16 %0, 9
  %1 = and i16 %conv1, 511
  %or2.i = or i16 %shl.i, %1
  %or4.i = or i16 %or2.i, -32768
  %2 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip, align 8
  %port_base_addr.i.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %port_base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %port_base_addr.i.i, align 4
  %add.i.i = add i32 %5, %port
  %call.i.i = tail call i32 @mv88e6xxx_write(ptr noundef %chip, i32 noundef %add.i.i, i32 noundef 24, i16 noundef zeroext %or4.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not, label %if.end, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %for.body
  %6 = and i16 %0, 511
  %7 = or i16 %shl.i, %6
  %or4.i51 = or i16 %7, -28672
  %8 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %chip, align 8
  %port_base_addr.i.i52 = getelementptr inbounds %struct.mv88e6xxx_info, ptr %9, i32 0, i32 9
  %10 = ptrtoint ptr %port_base_addr.i.i52 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %port_base_addr.i.i52, align 4
  %add.i.i53 = add i32 %11, %port
  %call.i.i54 = tail call i32 @mv88e6xxx_write(ptr noundef %chip, i32 noundef %add.i.i53, i32 noundef 24, i16 noundef zeroext %or4.i51) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i54)
  %tobool5.not = icmp eq i32 %call.i.i54, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %or4.i58 = or i16 %7, -24576
  %12 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %chip, align 8
  %port_base_addr.i.i59 = getelementptr inbounds %struct.mv88e6xxx_info, ptr %13, i32 0, i32 9
  %14 = ptrtoint ptr %port_base_addr.i.i59 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %port_base_addr.i.i59, align 4
  %add.i.i60 = add i32 %15, %port
  %call.i.i61 = tail call i32 @mv88e6xxx_write(ptr noundef %chip, i32 noundef %add.i.i60, i32 noundef 24, i16 noundef zeroext %or4.i58) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i61)
  %tobool11.not = icmp eq i32 %call.i.i61, 0
  br i1 %tobool11.not, label %if.end13, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end13:                                         ; preds = %if.end7
  %or4.i65 = or i16 %7, -20480
  %16 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %chip, align 8
  %port_base_addr.i.i66 = getelementptr inbounds %struct.mv88e6xxx_info, ptr %17, i32 0, i32 9
  %18 = ptrtoint ptr %port_base_addr.i.i66 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %port_base_addr.i.i66, align 4
  %add.i.i67 = add i32 %19, %port
  %call.i.i68 = tail call i32 @mv88e6xxx_write(ptr noundef %chip, i32 noundef %add.i.i67, i32 noundef 24, i16 noundef zeroext %or4.i65) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i68)
  %tobool17.not = icmp eq i32 %call.i.i68, 0
  br i1 %tobool17.not, label %for.cond, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cleanup:                                          ; preds = %if.end13.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i.i, %for.body.cleanup_crit_edge ], [ %call.i.i54, %if.end.cleanup_crit_edge ], [ %call.i.i61, %if.end7.cleanup_crit_edge ], [ %call.i.i68, %if.end13.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6352_port_set_policy(ptr noundef %chip, i32 noundef %port, i32 noundef %mapping, i32 noundef %action) local_unnamed_addr #0 align 64 {
entry:
  %reg = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg) #4
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %reg, align 2, !annotation !82
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %mapping)
  %1 = icmp ult i32 %mapping, 8
  br i1 %1, label %switch.lookup, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

switch.lookup:                                    ; preds = %entry
  %switch.idx.mult = mul i32 %mapping, -2
  %switch.offset = add i32 %switch.idx.mult, 14
  %switch.gep = getelementptr inbounds [8 x i16], ptr @switch.table.mv88e6352_port_set_policy, i32 0, i32 %mapping
  %2 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load2_noabort(i32 %2)
  %switch.load = load i16, ptr %switch.gep, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %action)
  %switch = icmp ult i32 %action, 4
  br i1 %switch, label %if.end, label %switch.lookup.cleanup_crit_edge

switch.lookup.cleanup_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %switch.lookup
  %3 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %chip, align 8
  %port_base_addr.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %4, i32 0, i32 9
  %5 = ptrtoint ptr %port_base_addr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %port_base_addr.i, align 4
  %add.i = add i32 %6, %port
  %call.i = call i32 @mv88e6xxx_read(ptr noundef %chip, i32 noundef %add.i, i32 noundef 14, ptr noundef nonnull %reg) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not = icmp eq i32 %call.i, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %neg = xor i16 %switch.load, -1
  %7 = ptrtoint ptr %reg to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %reg, align 2
  %and = and i16 %8, %neg
  %shl = shl nuw nsw i32 %action, %switch.offset
  %9 = trunc i32 %shl to i16
  %10 = and i16 %switch.load, %9
  %conv11 = or i16 %and, %10
  store i16 %conv11, ptr %reg, align 2
  %11 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %chip, align 8
  %port_base_addr.i22 = getelementptr inbounds %struct.mv88e6xxx_info, ptr %12, i32 0, i32 9
  %13 = ptrtoint ptr %port_base_addr.i22 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %port_base_addr.i22, align 4
  %add.i23 = add i32 %14, %port
  %call.i24 = call i32 @mv88e6xxx_write(ptr noundef %chip, i32 noundef %add.i23, i32 noundef 14, i16 noundef zeroext %conv11) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %switch.lookup.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i24, %if.end4 ], [ %call.i, %if.end.cleanup_crit_edge ], [ -95, %entry.cleanup_crit_edge ], [ -95, %switch.lookup.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6393x_port_set_policy(ptr noundef %chip, i32 noundef %port, i32 noundef %mapping, i32 noundef %action) local_unnamed_addr #0 align 64 {
entry:
  %reg.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %mapping)
  %0 = icmp ult i32 %mapping, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %action)
  %switch = icmp ult i32 %action, 4
  %or.cond = and i1 %0, %switch
  br i1 %or.cond, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %switch.gep = getelementptr inbounds [8 x i16], ptr @switch.table.mv88e6393x_port_set_policy, i32 0, i32 %mapping
  %1 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load2_noabort(i32 %1)
  %switch.load = load i16, ptr %switch.gep, align 2
  %switch.idx.cast = trunc i32 %mapping to i8
  %switch.idx.mult = mul i8 %switch.idx.cast, -2
  %switch.offset = add i8 %switch.idx.mult, 14
  %div444548 = lshr i8 %switch.offset, 3
  %conv = zext i8 %div444548 to i16
  %rem4647 = and i8 %switch.offset, 6
  %rem46.zext = zext i8 %rem4647 to i32
  %2 = and i8 %switch.offset, 8
  %mul = zext i8 %2 to i16
  %shr = lshr i16 %switch.load, %mul
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg.i) #4
  %3 = ptrtoint ptr %reg.i to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 -1, ptr %reg.i, align 2, !annotation !82
  %4 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chip, align 8
  %port_base_addr.i.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %port_base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port_base_addr.i.i, align 4
  %add.i.i = add i32 %7, %port
  %call.i.i = tail call i32 @mv88e6xxx_write(ptr noundef %chip, i32 noundef %add.i.i, i32 noundef 14, i16 noundef zeroext %conv) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.mv88e6393x_port_policy_read.exit.thread_crit_edge

if.end.mv88e6393x_port_policy_read.exit.thread_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %mv88e6393x_port_policy_read.exit.thread

if.end.i:                                         ; preds = %if.end
  %8 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %chip, align 8
  %port_base_addr.i11.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %9, i32 0, i32 9
  %10 = ptrtoint ptr %port_base_addr.i11.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %port_base_addr.i11.i, align 4
  %add.i12.i = add i32 %11, %port
  %call.i13.i = call i32 @mv88e6xxx_read(ptr noundef %chip, i32 noundef %add.i12.i, i32 noundef 14, ptr noundef nonnull %reg.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i13.i)
  %tobool2.not.i = icmp eq i32 %call.i13.i, 0
  br i1 %tobool2.not.i, label %if.end7, label %if.end.i.mv88e6393x_port_policy_read.exit.thread_crit_edge

if.end.i.mv88e6393x_port_policy_read.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %mv88e6393x_port_policy_read.exit.thread

mv88e6393x_port_policy_read.exit.thread:          ; preds = %if.end.i.mv88e6393x_port_policy_read.exit.thread_crit_edge, %if.end.mv88e6393x_port_policy_read.exit.thread_crit_edge
  %retval.0.i29.ph = phi i32 [ %call.i13.i, %if.end.i.mv88e6393x_port_policy_read.exit.thread_crit_edge ], [ %call.i.i, %if.end.mv88e6393x_port_policy_read.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i) #4
  br label %cleanup

if.end7:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %12 = ptrtoint ptr %reg.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %reg.i, align 2
  %conv.i = trunc i16 %13 to i8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i) #4
  %conv8 = trunc i16 %shr to i8
  %neg = xor i8 %conv8, -1
  %and = and i8 %conv.i, %neg
  %shl = shl nuw nsw i32 %action, %rem46.zext
  %conv12 = zext i16 %shr to i32
  %and13 = and i32 %shl, %conv12
  %14 = trunc i32 %and13 to i8
  %conv15 = or i8 %div444548, %14
  %15 = or i8 %conv15, %and
  %16 = zext i8 %15 to i16
  %or2.i = or i16 %16, -32768
  %17 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %chip, align 8
  %port_base_addr.i.i30 = getelementptr inbounds %struct.mv88e6xxx_info, ptr %18, i32 0, i32 9
  %19 = ptrtoint ptr %port_base_addr.i.i30 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %port_base_addr.i.i30, align 4
  %add.i.i31 = add i32 %20, %port
  %call.i.i32 = call i32 @mv88e6xxx_write(ptr noundef %chip, i32 noundef %add.i.i31, i32 noundef 14, i16 noundef zeroext %or2.i) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %mv88e6393x_port_policy_read.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i.i32, %if.end7 ], [ %retval.0.i29.ph, %mv88e6393x_port_policy_read.exit.thread ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mv88e6xxx_port_hidden_read(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mv88e6xxx_port_hidden_write(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !9, !10, !12, !13, !14, !16, !17, !19, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !47, !48, !50, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71}
!llvm.module.flags = !{!73, !74, !75, !76, !77, !78, !79, !80}
!llvm.ident = !{!81}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/dsa/mv88e6xxx/port.c", i32 167, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @mv88e6xxx_port_set_link.__UNIQUE_ID_ddebug498, !1, !"__UNIQUE_ID_ddebug498", i1 false, i1 false}
!6 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !1, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.6, !1, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.7, !1, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.8, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/dsa/mv88e6xxx/port.c", i32 520, i32 3}
!12 = !{ptr @.str.9, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @mv88e6393x_port_set_speed_duplex.__UNIQUE_ID_ddebug502, !11, !"__UNIQUE_ID_ddebug502", i1 false, i1 false}
!14 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/dsa/mv88e6xxx/port.c", i32 522, i32 3}
!16 = !{ptr @mv88e6393x_port_set_speed_duplex.__UNIQUE_ID_ddebug503, !15, !"__UNIQUE_ID_ddebug503", i1 false, i1 false}
!17 = !{ptr @.str.11, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/dsa/mv88e6xxx/port.c", i32 523, i32 2}
!19 = !{ptr @mv88e6393x_port_set_speed_duplex.__UNIQUE_ID_ddebug504, !18, !"__UNIQUE_ID_ddebug504", i1 false, i1 false}
!20 = !{ptr @.str.12, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.13, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.14, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/dsa/mv88e6xxx/port.c", i32 834, i32 2}
!24 = !{ptr @.str.15, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @mv88e6xxx_port_set_state.__UNIQUE_ID_ddebug505, !23, !"__UNIQUE_ID_ddebug505", i1 false, i1 false}
!26 = !{ptr @.str.16, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/dsa/mv88e6xxx/port.c", i32 1044, i32 2}
!28 = !{ptr @.str.17, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @mv88e6xxx_port_set_vlan_map.__UNIQUE_ID_ddebug506, !27, !"__UNIQUE_ID_ddebug506", i1 false, i1 false}
!30 = !{ptr @.str.18, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/dsa/mv88e6xxx/port.c", i32 1112, i32 2}
!32 = !{ptr @.str.19, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @mv88e6xxx_port_set_fid.__UNIQUE_ID_ddebug507, !31, !"__UNIQUE_ID_ddebug507", i1 false, i1 false}
!34 = !{ptr @.str.20, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/dsa/mv88e6xxx/port.c", i32 1152, i32 2}
!36 = !{ptr @.str.21, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @mv88e6xxx_port_set_pvid.__UNIQUE_ID_ddebug508, !35, !"__UNIQUE_ID_ddebug508", i1 false, i1 false}
!38 = !{ptr @.str.22, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/dsa/mv88e6xxx/port.c", i32 1254, i32 2}
!40 = !{ptr @.str.23, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @mv88e6xxx_port_set_8021q_mode.__UNIQUE_ID_ddebug509, !39, !"__UNIQUE_ID_ddebug509", i1 false, i1 false}
!42 = !{ptr @.str.24, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/dsa/mv88e6xxx/port.c", i32 111, i32 2}
!44 = !{ptr @.str.25, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @mv88e6xxx_port_set_rgmii_delay.__UNIQUE_ID_ddebug497, !43, !"__UNIQUE_ID_ddebug497", i1 false, i1 false}
!46 = !{ptr @.str.26, !43, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.27, !43, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.28, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/dsa/mv88e6xxx/port.c", i32 287, i32 3}
!50 = !{ptr @mv88e6xxx_port_set_speed_duplex.__UNIQUE_ID_ddebug499, !49, !"__UNIQUE_ID_ddebug499", i1 false, i1 false}
!51 = !{ptr @mv88e6xxx_port_set_speed_duplex.__UNIQUE_ID_ddebug500, !52, !"__UNIQUE_ID_ddebug500", i1 false, i1 false}
!52 = !{!"../drivers/net/dsa/mv88e6xxx/port.c", i32 289, i32 3}
!53 = !{ptr @mv88e6xxx_port_set_speed_duplex.__UNIQUE_ID_ddebug501, !54, !"__UNIQUE_ID_ddebug501", i1 false, i1 false}
!54 = !{!"../drivers/net/dsa/mv88e6xxx/port.c", i32 290, i32 2}
!55 = !{ptr @.str.29, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/dsa/mv88e6xxx/port.c", i32 793, i32 41}
!57 = !{ptr @.str.30, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/dsa/mv88e6xxx/port.c", i32 794, i32 41}
!59 = !{ptr @.str.31, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/dsa/mv88e6xxx/port.c", i32 795, i32 41}
!61 = !{ptr @.str.32, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/dsa/mv88e6xxx/port.c", i32 796, i32 43}
!63 = !{ptr @mv88e6xxx_port_state_names, !64, !"mv88e6xxx_port_state_names", i1 false, i1 false}
!64 = !{!"../drivers/net/dsa/mv88e6xxx/port.c", i32 792, i32 27}
!65 = !{ptr @.str.33, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/dsa/mv88e6xxx/port.c", i32 1161, i32 46}
!67 = !{ptr @.str.34, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/dsa/mv88e6xxx/port.c", i32 1162, i32 43}
!69 = !{ptr @.str.35, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/dsa/mv88e6xxx/port.c", i32 1163, i32 44}
!71 = !{ptr @mv88e6xxx_port_8021q_mode_names, !72, !"mv88e6xxx_port_8021q_mode_names", i1 false, i1 false}
!72 = !{!"../drivers/net/dsa/mv88e6xxx/port.c", i32 1159, i32 27}
!73 = !{i32 1, !"wchar_size", i32 2}
!74 = !{i32 1, !"min_enum_size", i32 4}
!75 = !{i32 8, !"branch-target-enforcement", i32 0}
!76 = !{i32 8, !"sign-return-address", i32 0}
!77 = !{i32 8, !"sign-return-address-all", i32 0}
!78 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!79 = !{i32 7, !"uwtable", i32 1}
!80 = !{i32 7, !"frame-pointer", i32 2}
!81 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!82 = !{!"auto-init"}
!83 = !{i64 2149114120, i64 2149114125, i64 2149114138, i64 2149114182, i64 2149114216, i64 2149114237}
