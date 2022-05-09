; ModuleID = '/llk/IR_all_yes/drivers/net/dsa/mv88e6xxx/serdes.c_pt.bc'
source_filename = "../drivers/net/dsa/mv88e6xxx/serdes.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mv88e6352_serdes_hw_stat = type { [32 x i8], i32, i32 }
%struct.mv88e6390_serdes_hw_stat = type { [32 x i8], i32 }
%struct.anon.168 = type { i16, i16, i16, i16 }
%struct.mv88e6xxx_chip = type { ptr, i32, ptr, ptr, %struct.mutex, ptr, ptr, i32, ptr, %struct.mutex, i32, %struct.work_struct, %struct.timer_list, %struct.mutex, ptr, i32, %struct.list_head, %struct.idr, %struct.mv88e6xxx_irq, %struct.mv88e6xxx_irq, i32, [64 x i8], i32, [64 x i8], i32, [64 x i8], i32, [64 x i8], i32, [64 x i8], ptr, %struct.kthread_delayed_work, [2 x i8], %struct.cyclecounter, %struct.timecounter, %struct.delayed_work, ptr, %struct.ptp_clock_info, %struct.delayed_work, [16 x %struct.ptp_pin_desc], i16, i16, i16, i32, i32, [12 x %struct.mv88e6xxx_port_hwtstamp], [12 x %struct.mv88e6xxx_port], [5 x ptr] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
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
%struct.phylink_link_state = type { [3 x i32], [3 x i32], i32, i32, i32, i32, i8 }
%struct.mv88e6xxx_info = type { i32, i16, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i8, i8, i32, i8, ptr, i8 }
%struct.mv88e6xxx_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@mv88e6352_serdes_pcs_get_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 199, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"can't read Serdes PHY control: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"mv88e6352_serdes_pcs_get_state\00", [33 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/net/dsa/mv88e6xxx/serdes.c\00", [61 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mv88e6352_serdes_pcs_get_state._entry_ptr = internal global ptr @mv88e6352_serdes_pcs_get_state._entry, section ".printk_index", align 4
@mv88e6352_serdes_pcs_get_state._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 205, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"can't read Serdes PHY status: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@mv88e6352_serdes_pcs_get_state._entry_ptr.7 = internal global ptr @mv88e6352_serdes_pcs_get_state._entry.5, section ".printk_index", align 4
@mv88e6352_serdes_pcs_get_state._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 211, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"can't read Serdes PHY LPA: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@mv88e6352_serdes_pcs_get_state._entry_ptr.10 = internal global ptr @mv88e6352_serdes_pcs_get_state._entry.8, section ".printk_index", align 4
@mv88e6352_serdes_hw_stats = internal constant { [2 x %struct.mv88e6352_serdes_hw_stat], [48 x i8] } { [2 x %struct.mv88e6352_serdes_hw_stat] [%struct.mv88e6352_serdes_hw_stat { [32 x i8] c"serdes_fibre_rx_error\00\00\00\00\00\00\00\00\00\00\00", i32 16, i32 21 }, %struct.mv88e6352_serdes_hw_stat { [32 x i8] c"serdes_PRBS_error\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 32, i32 24 }], [48 x i8] zeroinitializer }, align 32
@mv88e6185_serdes_pcs_get_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 513, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"invalid PHY speed\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"mv88e6185_serdes_pcs_get_state\00", [33 x i8] zeroinitializer }, align 32
@mv88e6185_serdes_pcs_get_state._entry_ptr = internal global ptr @mv88e6185_serdes_pcs_get_state._entry, section ".printk_index", align 4
@mv88e6390_serdes_hw_stats = internal constant { [3 x %struct.mv88e6390_serdes_hw_stat], [52 x i8] } { [3 x %struct.mv88e6390_serdes_hw_stat] [%struct.mv88e6390_serdes_hw_stat { [32 x i8] c"serdes_rx_pkts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 61473 }, %struct.mv88e6390_serdes_hw_stat { [32 x i8] c"serdes_rx_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 61476 }, %struct.mv88e6390_serdes_hw_stat { [32 x i8] c"serdes_rx_pkts_error\00\00\00\00\00\00\00\00\00\00\00\00", i32 61479 }], [52 x i8] zeroinitializer }, align 32
@mv88e6390_serdes_regs = internal constant { [87 x i16], [50 x i8] } { [87 x i16] [i16 -4086, i16 -4085, i16 -4084, i16 -4080, i16 -4079, i16 -4078, i16 -4077, i16 -4074, i16 -4073, i16 -4072, i16 -4069, i16 -4068, i16 -4067, i16 -4066, i16 -4065, i16 -4064, i16 -4063, i16 -4062, i16 -4061, i16 -4060, i16 -4059, i16 -4058, i16 -4057, i16 -4056, i16 -4055, i16 -4048, i16 -4047, i16 -4046, i16 -4045, i16 -4044, i16 -4043, i16 -4042, i16 -4041, i16 -4040, i16 -4039, i16 8192, i16 8193, i16 8194, i16 8195, i16 8196, i16 8197, i16 8198, i16 8199, i16 8200, i16 8207, i16 -24576, i16 -24575, i16 -24574, i16 -24573, i16 4096, i16 4097, i16 4098, i16 4099, i16 4100, i16 4101, i16 4102, i16 4103, i16 4104, i16 4110, i16 4111, i16 4120, i16 4121, i16 -28672, i16 -28671, i16 -28670, i16 -28669, i16 -28668, i16 -28666, i16 -28656, i16 -28655, i16 -28654, i16 -28653, i16 -28652, i16 -28651, i16 -28650, i16 4128, i16 4129, i16 4130, i16 4131, i16 4132, i16 4133, i16 4134, i16 4135, i16 4136, i16 4137, i16 4138, i16 4139], [50 x i8] zeroinitializer }, align 32
@mv88e6xxx_serdes_pcs_get_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.13, ptr @.str.2, i32 92, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"mv88e6xxx_serdes_pcs_get_state\00", [33 x i8] zeroinitializer }, align 32
@mv88e6xxx_serdes_pcs_get_state._entry_ptr = internal global ptr @mv88e6xxx_serdes_pcs_get_state._entry, section ".printk_index", align 4
@mv88e6352_serdes_get_stat._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 328, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to read statistic\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"mv88e6352_serdes_get_stat\00", [38 x i8] zeroinitializer }, align 32
@mv88e6352_serdes_get_stat._entry_ptr = internal global ptr @mv88e6352_serdes_get_stat._entry, section ".printk_index", align 4
@mv88e6352_serdes_get_stat._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 337, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@mv88e6352_serdes_get_stat._entry_ptr.17 = internal global ptr @mv88e6352_serdes_get_stat._entry.16, section ".printk_index", align 4
@mv88e6352_serdes_irq_link._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 378, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"can't read Serdes BMSR: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"mv88e6352_serdes_irq_link\00", [38 x i8] zeroinitializer }, align 32
@mv88e6352_serdes_irq_link._entry_ptr = internal global ptr @mv88e6352_serdes_irq_link._entry, section ".printk_index", align 4
@mv88e6097_serdes_irq_link._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.2, i32 549, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"can't read port status: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"mv88e6097_serdes_irq_link\00", [38 x i8] zeroinitializer }, align 32
@mv88e6097_serdes_irq_link._entry_ptr = internal global ptr @mv88e6097_serdes_irq_link._entry, section ".printk_index", align 4
@mv88e6390_serdes_get_stat._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.22, ptr @.str.2, i32 787, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"mv88e6390_serdes_get_stat\00", [38 x i8] zeroinitializer }, align 32
@mv88e6390_serdes_get_stat._entry_ptr = internal global ptr @mv88e6390_serdes_get_stat._entry, section ".printk_index", align 4
@mv88e6390_serdes_pcs_get_state_sgmii._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.23, ptr @.str.2, i32 924, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"mv88e6390_serdes_pcs_get_state_sgmii\00", [59 x i8] zeroinitializer }, align 32
@mv88e6390_serdes_pcs_get_state_sgmii._entry_ptr = internal global ptr @mv88e6390_serdes_pcs_get_state_sgmii._entry, section ".printk_index", align 4
@mv88e6390_serdes_pcs_get_state_sgmii._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.23, ptr @.str.2, i32 931, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@mv88e6390_serdes_pcs_get_state_sgmii._entry_ptr.25 = internal global ptr @mv88e6390_serdes_pcs_get_state_sgmii._entry.24, section ".printk_index", align 4
@mv88e6390_serdes_pcs_get_state_sgmii._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.23, ptr @.str.2, i32 938, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@mv88e6390_serdes_pcs_get_state_sgmii._entry_ptr.27 = internal global ptr @mv88e6390_serdes_pcs_get_state_sgmii._entry.26, section ".printk_index", align 4
@mv88e6390_serdes_irq_link_sgmii._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.28, ptr @.str.2, i32 1087, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"mv88e6390_serdes_irq_link_sgmii\00", [32 x i8] zeroinitializer }, align 32
@mv88e6390_serdes_irq_link_sgmii._entry_ptr = internal global ptr @mv88e6390_serdes_irq_link_sgmii._entry, section ".printk_index", align 4
@mv88e6393x_serdes_irq_link_10g._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.2, i32 1104, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"can't read Serdes STAT1: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"mv88e6393x_serdes_irq_link_10g\00", [33 x i8] zeroinitializer }, align 32
@mv88e6393x_serdes_irq_link_10g._entry_ptr = internal global ptr @mv88e6393x_serdes_irq_link_10g._entry, section ".printk_index", align 4
@mv88e6393x_serdes_erratum_5_2.fixes = internal constant { [7 x %struct.anon.168], [40 x i8] } { [7 x %struct.anon.168] [%struct.anon.168 { i16 30, i16 -32621, i16 -13478, i16 -1 }, %struct.anon.168 { i16 30, i16 -32399, i16 28808, i16 -1 }, %struct.anon.168 { i16 30, i16 -32567, i16 12570, i16 -1 }, %struct.anon.168 { i16 30, i16 -32606, i16 -32768, i16 -129 }, %struct.anon.168 { i16 30, i16 -32599, i16 0, i16 -16 }, %struct.anon.168 { i16 30, i16 -32605, i16 0, i16 -1793 }, %struct.anon.168 { i16 4, i16 -4094, i16 -32768, i16 -32768 }], [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 21]
@__sancov_gen_cov_switch_values.31 = internal global [5 x i64] [i64 3, i64 16, i64 0, i64 16384, i64 32768]
@__sancov_gen_cov_switch_values.32 = internal global [4 x i64] [i64 2, i64 32, i64 21, i64 22]
@__sancov_gen_cov_switch_values.33 = internal global [4 x i64] [i64 2, i64 32, i64 100, i64 1000]
@__sancov_gen_cov_switch_values.34 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 256, i64 512]
@__sancov_gen_cov_switch_values.35 = internal global [4 x i64] [i64 2, i64 32, i64 9, i64 10]
@__sancov_gen_cov_switch_values.36 = internal global [10 x i64] [i64 8, i64 32, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 9, i64 10]
@__sancov_gen_cov_switch_values.37 = internal global [6 x i64] [i64 4, i64 8, i64 9, i64 10, i64 11, i64 13]
@__sancov_gen_cov_switch_values.38 = internal global [6 x i64] [i64 4, i64 8, i64 9, i64 10, i64 11, i64 13]
@__sancov_gen_cov_switch_values.39 = internal global [6 x i64] [i64 4, i64 8, i64 9, i64 10, i64 11, i64 13]
@__sancov_gen_cov_switch_values.40 = internal global [6 x i64] [i64 4, i64 8, i64 9, i64 10, i64 11, i64 13]
@__sancov_gen_cov_switch_values.41 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 9, i64 10]
@__sancov_gen_cov_switch_values.42 = internal global [7 x i64] [i64 5, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13]
@__sancov_gen_cov_switch_values.43 = internal global [5 x i64] [i64 3, i64 32, i64 4, i64 21, i64 22]
@__sancov_gen_cov_switch_values.44 = internal global [7 x i64] [i64 5, i64 32, i64 4, i64 21, i64 22, i64 24, i64 25]
@__sancov_gen_cov_switch_values.45 = internal global [7 x i64] [i64 5, i64 32, i64 4, i64 21, i64 22, i64 23, i64 26]
@__sancov_gen_cov_switch_values.46 = internal global [5 x i64] [i64 3, i64 32, i64 100, i64 1000, i64 2500]
@__sancov_gen_cov_switch_values.47 = internal global [7 x i64] [i64 5, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13]
@__sancov_gen_cov_switch_values.48 = internal global [7 x i64] [i64 5, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13]
@__sancov_gen_cov_switch_values.49 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 9, i64 10]
@__sancov_gen_cov_switch_values.50 = internal global [5 x i64] [i64 3, i64 16, i64 0, i64 2, i64 3]
@__sancov_gen_cov_switch_values.51 = internal global [7 x i64] [i64 5, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13]
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 199, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 205, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 211, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant [26 x i8] c"mv88e6352_serdes_hw_stats\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 289, i32 40 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 513, i32 4 }
@___asan_gen_.94 = private unnamed_addr constant [26 x i8] c"mv88e6390_serdes_hw_stats\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 746, i32 40 }
@___asan_gen_.97 = private unnamed_addr constant [22 x i8] c"mv88e6390_serdes_regs\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 1257, i32 18 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 92, i32 4 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 328, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 337, i32 4 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 378, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 549, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 787, i32 4 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 924, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 931, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 938, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 1087, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.166 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 1104, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant [6 x i8] c"fixes\00", align 1
@___asan_gen_.170 = private constant [38 x i8] c"../drivers/net/dsa/mv88e6xxx/serdes.c\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 1422, i32 4 }
@llvm.compiler.used = appending global [55 x ptr] [ptr @mv88e6097_serdes_irq_link._entry, ptr @mv88e6097_serdes_irq_link._entry_ptr, ptr @mv88e6185_serdes_pcs_get_state._entry, ptr @mv88e6185_serdes_pcs_get_state._entry_ptr, ptr @mv88e6352_serdes_get_stat._entry, ptr @mv88e6352_serdes_get_stat._entry.16, ptr @mv88e6352_serdes_get_stat._entry_ptr, ptr @mv88e6352_serdes_get_stat._entry_ptr.17, ptr @mv88e6352_serdes_irq_link._entry, ptr @mv88e6352_serdes_irq_link._entry_ptr, ptr @mv88e6352_serdes_pcs_get_state._entry, ptr @mv88e6352_serdes_pcs_get_state._entry.5, ptr @mv88e6352_serdes_pcs_get_state._entry.8, ptr @mv88e6352_serdes_pcs_get_state._entry_ptr, ptr @mv88e6352_serdes_pcs_get_state._entry_ptr.10, ptr @mv88e6352_serdes_pcs_get_state._entry_ptr.7, ptr @mv88e6390_serdes_get_stat._entry, ptr @mv88e6390_serdes_get_stat._entry_ptr, ptr @mv88e6390_serdes_irq_link_sgmii._entry, ptr @mv88e6390_serdes_irq_link_sgmii._entry_ptr, ptr @mv88e6390_serdes_pcs_get_state_sgmii._entry, ptr @mv88e6390_serdes_pcs_get_state_sgmii._entry.24, ptr @mv88e6390_serdes_pcs_get_state_sgmii._entry.26, ptr @mv88e6390_serdes_pcs_get_state_sgmii._entry_ptr, ptr @mv88e6390_serdes_pcs_get_state_sgmii._entry_ptr.25, ptr @mv88e6390_serdes_pcs_get_state_sgmii._entry_ptr.27, ptr @mv88e6393x_serdes_irq_link_10g._entry, ptr @mv88e6393x_serdes_irq_link_10g._entry_ptr, ptr @mv88e6xxx_serdes_pcs_get_state._entry, ptr @mv88e6xxx_serdes_pcs_get_state._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @mv88e6352_serdes_hw_stats, ptr @.str.11, ptr @.str.12, ptr @mv88e6390_serdes_hw_stats, ptr @mv88e6390_serdes_regs, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @mv88e6393x_serdes_erratum_5_2.fixes], section "llvm.metadata"
@0 = internal global [40 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv88e6352_serdes_pcs_get_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv88e6352_serdes_pcs_get_state._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv88e6352_serdes_pcs_get_state._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv88e6352_serdes_hw_stats to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv88e6185_serdes_pcs_get_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv88e6390_serdes_hw_stats to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv88e6390_serdes_regs to i32), i32 174, i32 224, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv88e6xxx_serdes_pcs_get_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv88e6352_serdes_get_stat._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv88e6352_serdes_get_stat._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv88e6352_serdes_irq_link._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv88e6097_serdes_irq_link._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv88e6390_serdes_get_stat._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv88e6390_serdes_pcs_get_state_sgmii._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv88e6390_serdes_pcs_get_state_sgmii._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv88e6390_serdes_pcs_get_state_sgmii._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv88e6390_serdes_irq_link_sgmii._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv88e6393x_serdes_irq_link_10g._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv88e6393x_serdes_erratum_5_2.fixes to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6352_serdes_power(ptr noundef %chip, i32 noundef %port, i32 noundef %lane, i1 noundef zeroext %up) local_unnamed_addr #0 align 64 {
entry:
  %val = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val) #6
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %val, align 2, !annotation !83
  %call.i = call i32 @mv88e6xxx_phy_page_read(ptr noundef %chip, i32 noundef 15, i8 noundef zeroext 1, i32 noundef 0, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %val, align 2
  %3 = and i16 %2, -2049
  %masksel = select i1 %up, i16 0, i16 2048
  %new_val.0 = or i16 %3, %masksel
  call void @__sanitizer_cov_trace_cmp2(i16 %2, i16 %new_val.0)
  %cmp.not = icmp eq i16 %2, %new_val.0
  br i1 %cmp.not, label %if.end.cleanup_crit_edge, label %if.then10

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call.i19 = call i32 @mv88e6xxx_phy_page_write(ptr noundef %chip, i32 noundef 15, i8 noundef zeroext 1, i32 noundef 0, i16 noundef zeroext %new_val.0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then10, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ %call.i19, %if.then10 ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6352_serdes_pcs_config(ptr noundef %chip, i32 noundef %port, i32 noundef %lane, i32 noundef %mode, i32 noundef %interface, ptr noundef %advertise) local_unnamed_addr #0 align 64 {
entry:
  %val = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val) #6
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %val, align 2, !annotation !83
  %1 = zext i32 %interface to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values)
  switch i32 %interface, label %entry.cleanup_crit_edge [
    i32 4, label %entry.sw.epilog_crit_edge
    i32 21, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i.i.i = getelementptr i32, ptr %advertise, i32 1
  %2 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %4 = trunc i32 %3 to i16
  %5 = lshr i16 %4, 4
  %6 = and i16 %5, 32
  %7 = ptrtoint ptr %advertise to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %advertise, align 4
  %9 = trunc i32 %8 to i16
  %10 = lshr i16 %9, 6
  %11 = and i16 %10, 128
  %12 = or i16 %11, %6
  %13 = load volatile i32, ptr %advertise, align 4
  %14 = trunc i32 %13 to i16
  %15 = lshr i16 %14, 6
  %16 = and i16 %15, 256
  %17 = or i16 %12, %16
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %entry.sw.epilog_crit_edge
  %adv.0 = phi i16 [ %17, %sw.bb1 ], [ 1, %entry.sw.epilog_crit_edge ]
  %call.i = call i32 @mv88e6xxx_phy_page_read(ptr noundef %chip, i32 noundef 15, i8 noundef zeroext 1, i32 noundef 4, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %sw.epilog
  %18 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %val, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %19, i16 %adv.0)
  %cmp = icmp ne i16 %19, %adv.0
  br i1 %cmp, label %if.then6, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.then6:                                         ; preds = %if.end
  %call.i47 = call i32 @mv88e6xxx_phy_page_write(ptr noundef %chip, i32 noundef 15, i8 noundef zeroext 1, i32 noundef 4, i16 noundef zeroext %adv.0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i47)
  %tobool8.not = icmp eq i32 %call.i47, 0
  br i1 %tobool8.not, label %if.then6.if.end11_crit_edge, label %if.then6.cleanup_crit_edge

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then6.if.end11_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.end11:                                         ; preds = %if.then6.if.end11_crit_edge, %if.end.if.end11_crit_edge
  %call.i48 = call i32 @mv88e6xxx_phy_page_read(ptr noundef %chip, i32 noundef 15, i8 noundef zeroext 1, i32 noundef 0, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i48)
  %tobool13.not = icmp eq i32 %call.i48, 0
  br i1 %tobool13.not, label %if.end15, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end15:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %mode)
  %cmp.i = icmp eq i32 %mode, 2
  %20 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %val, align 2
  %22 = and i16 %21, -4097
  %masksel = select i1 %cmp.i, i16 4096, i16 0
  %bmcr.0 = or i16 %22, %masksel
  call void @__sanitizer_cov_trace_cmp2(i16 %bmcr.0, i16 %21)
  %cmp25 = icmp eq i16 %bmcr.0, %21
  br i1 %cmp25, label %if.then27, label %if.end30

if.then27:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  %conv29 = zext i1 %cmp to i32
  br label %cleanup

if.end30:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  %call.i49 = call i32 @mv88e6xxx_phy_page_write(ptr noundef %chip, i32 noundef 15, i8 noundef zeroext 1, i32 noundef 0, i16 noundef zeroext %bmcr.0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %if.then27, %if.end11.cleanup_crit_edge, %if.then6.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv29, %if.then27 ], [ %call.i49, %if.end30 ], [ 0, %entry.cleanup_crit_edge ], [ %call.i, %sw.epilog.cleanup_crit_edge ], [ %call.i47, %if.then6.cleanup_crit_edge ], [ %call.i48, %if.end11.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6352_serdes_pcs_get_state(ptr noundef %chip, i32 noundef %port, i32 noundef %lane, ptr nocapture noundef %state) local_unnamed_addr #0 align 64 {
entry:
  %lpa = alloca i16, align 2
  %status = alloca i16, align 2
  %ctrl = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %lpa) #6
  %0 = ptrtoint ptr %lpa to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %lpa, align 2, !annotation !83
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %status) #6
  %1 = ptrtoint ptr %status to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -1, ptr %status, align 2, !annotation !83
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %ctrl) #6
  %2 = ptrtoint ptr %ctrl to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %ctrl, align 2, !annotation !83
  %call.i = call i32 @mv88e6xxx_phy_page_read(ptr noundef %chip, i32 noundef 15, i8 noundef zeroext 1, i32 noundef 0, ptr noundef nonnull %ctrl) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 3
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str, i32 noundef %call.i) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i35 = call i32 @mv88e6xxx_phy_page_read(ptr noundef %chip, i32 noundef 15, i8 noundef zeroext 1, i32 noundef 17, ptr noundef nonnull %status) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i35)
  %tobool2.not = icmp eq i32 %call.i35, 0
  br i1 %tobool2.not, label %if.end8, label %do.end6

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %dev7 = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 3
  %5 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev7, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.6, i32 noundef %call.i35) #9
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call.i36 = call i32 @mv88e6xxx_phy_page_read(ptr noundef %chip, i32 noundef 15, i8 noundef zeroext 1, i32 noundef 5, ptr noundef nonnull %lpa) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i36)
  %tobool10.not = icmp eq i32 %call.i36, 0
  br i1 %tobool10.not, label %if.end16, label %do.end14

do.end14:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  %dev15 = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 3
  %7 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev15, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.9, i32 noundef %call.i36) #9
  br label %cleanup

if.end16:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %ctrl to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %ctrl, align 2
  %11 = ptrtoint ptr %status to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %status, align 2
  %13 = ptrtoint ptr %lpa to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %lpa, align 2
  %call17 = call fastcc i32 @mv88e6xxx_serdes_pcs_get_state(ptr noundef %chip, i16 noundef zeroext %10, i16 noundef zeroext %12, i16 noundef zeroext %14, ptr noundef %state)
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %do.end14, %do.end6, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end ], [ %call.i35, %do.end6 ], [ %call.i36, %do.end14 ], [ %call17, %if.end16 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %ctrl) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %status) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %lpa) #6
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mv88e6xxx_serdes_pcs_get_state(ptr nocapture noundef readonly %chip, i16 noundef zeroext %ctrl, i16 noundef zeroext %status, i16 noundef zeroext %lpa, ptr nocapture noundef %state) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %status to i32
  %link = getelementptr inbounds %struct.phylink_link_state, ptr %state, i32 0, i32 6
  %0 = ptrtoint ptr %link to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %link, align 4
  %sh.diff = lshr i16 %status, 3
  %tr.sh.diff = trunc i16 %sh.diff to i8
  %bf.shl = and i8 %tr.sh.diff, -128
  %bf.clear = and i8 %bf.load, 127
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, ptr %link, align 4
  %and3 = and i32 %conv, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.else42, label %if.then

if.then:                                          ; preds = %entry
  %sh.diff105 = lshr i16 %ctrl, 7
  %tr.sh.diff106 = trunc i16 %sh.diff105 to i8
  %bf.shl14 = and i8 %tr.sh.diff106, 32
  %bf.clear15 = and i8 %bf.set, -33
  %bf.set16 = or i8 %bf.clear15, %bf.shl14
  %1 = ptrtoint ptr %link to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %bf.set16, ptr %link, align 4
  %and19 = lshr i32 %conv, 13
  %and19.lobit = and i32 %and19, 1
  %duplex = getelementptr inbounds %struct.phylink_link_state, ptr %state, i32 0, i32 4
  %2 = ptrtoint ptr %duplex to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %and19.lobit, ptr %duplex, align 4
  %and22 = and i32 %conv, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.then.if.end_crit_edge, label %if.then24

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then24:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %pause = getelementptr inbounds %struct.phylink_link_state, ptr %state, i32 0, i32 5
  %3 = ptrtoint ptr %pause to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %pause, align 4
  %or = or i32 %4, 2
  store i32 %or, ptr %pause, align 4
  br label %if.end

if.end:                                           ; preds = %if.then24, %if.then.if.end_crit_edge
  %and26 = and i32 %conv, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %if.end.if.end31_crit_edge, label %if.then28

if.end.if.end31_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

if.then28:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %pause29 = getelementptr inbounds %struct.phylink_link_state, ptr %state, i32 0, i32 5
  %5 = ptrtoint ptr %pause29 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pause29, align 4
  %or30 = or i32 %6, 1
  store i32 %or30, ptr %pause29, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.then28, %if.end.if.end31_crit_edge
  %and33 = and i16 %status, -16384
  %7 = zext i16 %and33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.31)
  switch i16 %and33, label %do.end [
    i16 -32768, label %sw.bb
    i16 16384, label %sw.bb38
    i16 0, label %sw.bb40
  ]

sw.bb:                                            ; preds = %if.end31
  %interface = getelementptr inbounds %struct.phylink_link_state, ptr %state, i32 0, i32 2
  %8 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %interface, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 22, i32 %9)
  %cmp = icmp eq i32 %9, 22
  %speed = getelementptr inbounds %struct.phylink_link_state, ptr %state, i32 0, i32 3
  br i1 %cmp, label %if.then35, label %if.else

if.then35:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 2500, ptr %speed, align 4
  br label %if.end65

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1000, ptr %speed, align 4
  br label %if.end65

sw.bb38:                                          ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  %speed39 = getelementptr inbounds %struct.phylink_link_state, ptr %state, i32 0, i32 3
  %12 = ptrtoint ptr %speed39 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 100, ptr %speed39, align 4
  br label %if.end65

sw.bb40:                                          ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  %speed41 = getelementptr inbounds %struct.phylink_link_state, ptr %state, i32 0, i32 3
  %13 = ptrtoint ptr %speed41 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 10, ptr %speed41, align 4
  br label %if.end65

do.end:                                           ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 3
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.11) #9
  br label %return

if.else42:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %tr.sh.diff)
  %tobool45.not = icmp sgt i8 %tr.sh.diff, -1
  br i1 %tobool45.not, label %if.else42.if.else59_crit_edge, label %land.lhs.true

if.else42.if.else59_crit_edge:                    ; preds = %if.else42
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else59

land.lhs.true:                                    ; preds = %if.else42
  %interface46 = getelementptr inbounds %struct.phylink_link_state, ptr %state, i32 0, i32 2
  %16 = ptrtoint ptr %interface46 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %interface46, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %17)
  %cmp47.not = icmp eq i32 %17, 4
  br i1 %cmp47.not, label %land.lhs.true.if.else59_crit_edge, label %if.then49

land.lhs.true.if.else59_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else59

if.then49:                                        ; preds = %land.lhs.true
  %duplex50 = getelementptr inbounds %struct.phylink_link_state, ptr %state, i32 0, i32 4
  %18 = ptrtoint ptr %duplex50 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %duplex50, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 22, i32 %17)
  %cmp52 = icmp eq i32 %17, 22
  %speed55 = getelementptr inbounds %struct.phylink_link_state, ptr %state, i32 0, i32 3
  br i1 %cmp52, label %if.then54, label %if.else56

if.then54:                                        ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %speed55 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 2500, ptr %speed55, align 4
  br label %if.end65

if.else56:                                        ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %speed55 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1000, ptr %speed55, align 4
  br label %if.end65

if.else59:                                        ; preds = %land.lhs.true.if.else59_crit_edge, %if.else42.if.else59_crit_edge
  %21 = ptrtoint ptr %link to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %bf.clear, ptr %link, align 4
  br label %if.end65

if.end65:                                         ; preds = %if.else59, %if.else56, %if.then54, %sw.bb40, %sw.bb38, %if.else, %if.then35
  %interface66 = getelementptr inbounds %struct.phylink_link_state, ptr %state, i32 0, i32 2
  %22 = ptrtoint ptr %interface66 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %interface66, align 4
  %24 = zext i32 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %23, label %if.end65.return_crit_edge [
    i32 22, label %if.then69
    i32 21, label %if.then74
  ]

if.end65.return_crit_edge:                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.then69:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #8
  %lp_advertising = getelementptr inbounds %struct.phylink_link_state, ptr %state, i32 0, i32 1
  %conv.i = zext i16 %lpa to i32
  %25 = ptrtoint ptr %lp_advertising to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %lp_advertising, align 4
  %and.i.i.i.i = and i32 %26, -57409
  %and.i = lshr i32 %conv.i, 8
  %27 = and i32 %and.i, 64
  %and2.i = shl nuw nsw i32 %conv.i, 6
  %and.i.i.sink.i18.i = and i32 %and2.i, 24576
  %and6.i = shl nuw nsw i32 %conv.i, 10
  %28 = and i32 %and6.i, 32768
  %and.i.i.sink.i.i = or i32 %and.i.i.sink.i18.i, %27
  %and.i.i.sink.i25.i = or i32 %and.i.i.sink.i.i, %28
  %and.i.i.sink.i32.i = or i32 %and.i.i.sink.i25.i, %and.i.i.i.i
  store i32 %and.i.i.sink.i32.i, ptr %lp_advertising, align 4
  br label %return

if.then74:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #8
  %lp_advertising75 = getelementptr inbounds %struct.phylink_link_state, ptr %state, i32 0, i32 1
  %conv.i107 = zext i16 %lpa to i32
  %29 = ptrtoint ptr %lp_advertising75 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %lp_advertising75, align 4
  %and.i.i.i.i108 = and i32 %30, -24641
  %and.i109 = lshr i32 %conv.i107, 8
  %31 = and i32 %and.i109, 64
  %and2.i111 = shl nuw nsw i32 %conv.i107, 6
  %and.i.i.sink.i18.i112 = and i32 %and2.i111, 24576
  %and.i.i.sink.i.i110 = or i32 %and.i.i.sink.i18.i112, %31
  %and.i.i.sink.i25.i113 = or i32 %and.i.i.sink.i.i110, %and.i.i.i.i108
  store i32 %and.i.i.sink.i25.i113, ptr %lp_advertising75, align 4
  %add.ptr.i.i6.i.i = getelementptr %struct.phylink_link_state, ptr %state, i32 0, i32 1, i32 1
  %32 = ptrtoint ptr %add.ptr.i.i6.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %add.ptr.i.i6.i.i, align 4
  %and.i.i.i30.i118 = and i32 %33, -513
  %and6.i114 = shl nuw nsw i32 %conv.i107, 4
  %34 = and i32 %and6.i114, 512
  %and.i.i.sink.i32.i120 = or i32 %and.i.i.i30.i118, %34
  store i32 %and.i.i.sink.i32.i120, ptr %add.ptr.i.i6.i.i, align 4
  br label %return

return:                                           ; preds = %if.then74, %if.then69, %if.end65.return_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end65.return_crit_edge ], [ 0, %if.then74 ], [ 0, %if.then69 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6352_serdes_pcs_an_restart(ptr noundef %chip, i32 noundef %port, i32 noundef %lane) local_unnamed_addr #0 align 64 {
entry:
  %bmcr = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %bmcr) #6
  %0 = ptrtoint ptr %bmcr to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %bmcr, align 2, !annotation !83
  %call.i = call i32 @mv88e6xxx_phy_page_read(ptr noundef %chip, i32 noundef 15, i8 noundef zeroext 1, i32 noundef 0, ptr noundef nonnull %bmcr) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %bmcr to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %bmcr, align 2
  %3 = or i16 %2, 512
  %call.i6 = call i32 @mv88e6xxx_phy_page_write(ptr noundef %chip, i32 noundef 15, i8 noundef zeroext 1, i32 noundef 0, i16 noundef zeroext %3) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i6, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %bmcr) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6352_serdes_pcs_link_up(ptr noundef %chip, i32 noundef %port, i32 noundef %lane, i32 noundef %speed, i32 noundef %duplex) local_unnamed_addr #0 align 64 {
entry:
  %val = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val) #6
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %val, align 2, !annotation !83
  %call.i = call i32 @mv88e6xxx_phy_page_read(ptr noundef %chip, i32 noundef 15, i8 noundef zeroext 1, i32 noundef 0, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %val, align 2
  %3 = and i16 %2, -8513
  %4 = zext i32 %speed to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %speed, label %if.end.sw.epilog_crit_edge [
    i32 1000, label %sw.bb
    i32 100, label %sw.bb4
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %5 = or i16 %3, 64
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %6 = or i16 %3, 8192
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb4, %sw.bb, %if.end.sw.epilog_crit_edge
  %bmcr.0 = phi i16 [ %3, %if.end.sw.epilog_crit_edge ], [ %6, %sw.bb4 ], [ %5, %sw.bb ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %duplex)
  %cmp = icmp eq i32 %duplex, 1
  %7 = or i16 %bmcr.0, 256
  %spec.select = select i1 %cmp, i16 %7, i16 %bmcr.0
  call void @__sanitizer_cov_trace_cmp2(i16 %spec.select, i16 %2)
  %cmp16 = icmp eq i16 %spec.select, %2
  br i1 %cmp16, label %sw.epilog.cleanup_crit_edge, label %if.end19

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end19:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %call.i29 = call i32 @mv88e6xxx_phy_page_write(ptr noundef %chip, i32 noundef 15, i8 noundef zeroext 1, i32 noundef 0, i16 noundef zeroext %spec.select) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i29, %if.end19 ], [ %call.i, %entry.cleanup_crit_edge ], [ 0, %sw.epilog.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @mv88e6352_serdes_get_lane(ptr nocapture noundef readonly %chip, i32 noundef %port) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cmode1 = getelementptr %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 46, i32 %port, i32 10
  %0 = ptrtoint ptr %cmode1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cmode1, align 4
  %.off = add i8 %1, -8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %.off)
  %switch = icmp ult i8 %.off, 3
  %spec.select = select i1 %switch, i32 255, i32 -19
  ret i32 %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6352_serdes_get_sset_count(ptr noundef %chip, i32 noundef %port) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 8
  %ops.i.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops.i.i, align 4
  %serdes_get_lane.i.i = getelementptr inbounds %struct.mv88e6xxx_ops, ptr %3, i32 0, i32 45
  %4 = ptrtoint ptr %serdes_get_lane.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %serdes_get_lane.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %entry.mv88e6352_port_has_serdes.exit.thread_crit_edge, label %mv88e6352_port_has_serdes.exit

entry.mv88e6352_port_has_serdes.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %mv88e6352_port_has_serdes.exit.thread

mv88e6352_port_has_serdes.exit:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i = tail call i32 %5(ptr noundef %chip, i32 noundef %port) #6
  %6 = lshr i32 %call.i.i, 30
  %7 = and i32 %6, 2
  %8 = xor i32 %7, 2
  br label %mv88e6352_port_has_serdes.exit.thread

mv88e6352_port_has_serdes.exit.thread:            ; preds = %mv88e6352_port_has_serdes.exit, %entry.mv88e6352_port_has_serdes.exit.thread_crit_edge
  %9 = phi i32 [ 0, %entry.mv88e6352_port_has_serdes.exit.thread_crit_edge ], [ %8, %mv88e6352_port_has_serdes.exit ]
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6352_serdes_get_strings(ptr noundef %chip, i32 noundef %port, ptr nocapture noundef writeonly %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 8
  %ops.i.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops.i.i, align 4
  %serdes_get_lane.i.i = getelementptr inbounds %struct.mv88e6xxx_ops, ptr %3, i32 0, i32 45
  %4 = ptrtoint ptr %serdes_get_lane.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %serdes_get_lane.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %entry.cleanup_crit_edge, label %mv88e6352_port_has_serdes.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

mv88e6352_port_has_serdes.exit:                   ; preds = %entry
  %call.i.i = tail call i32 %5(ptr noundef %chip, i32 noundef %port) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %phi.cmp.i = icmp sgt i32 %call.i.i, -1
  br i1 %phi.cmp.i, label %for.body.preheader, label %mv88e6352_port_has_serdes.exit.cleanup_crit_edge

mv88e6352_port_has_serdes.exit.cleanup_crit_edge: ; preds = %mv88e6352_port_has_serdes.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.preheader:                               ; preds = %mv88e6352_port_has_serdes.exit
  call void @__sanitizer_cov_trace_pc() #8
  %6 = call ptr @memcpy(ptr %data, ptr @mv88e6352_serdes_hw_stats, i32 32)
  %add.ptr.1 = getelementptr i8, ptr %data, i32 32
  %7 = call ptr @memcpy(ptr %add.ptr.1, ptr getelementptr inbounds ([2 x %struct.mv88e6352_serdes_hw_stat], ptr @mv88e6352_serdes_hw_stats, i32 0, i32 1), i32 32)
  br label %cleanup

cleanup:                                          ; preds = %for.body.preheader, %mv88e6352_port_has_serdes.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %mv88e6352_port_has_serdes.exit.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 2, %for.body.preheader ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6352_serdes_get_stats(ptr noundef %chip, i32 noundef %port, ptr nocapture noundef writeonly %data) local_unnamed_addr #0 align 64 {
entry:
  %reg.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 8
  %ops.i.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops.i.i, align 4
  %serdes_get_lane.i.i = getelementptr inbounds %struct.mv88e6xxx_ops, ptr %3, i32 0, i32 45
  %4 = ptrtoint ptr %serdes_get_lane.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %serdes_get_lane.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %entry.cleanup_crit_edge, label %mv88e6352_port_has_serdes.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

mv88e6352_port_has_serdes.exit:                   ; preds = %entry
  %call.i.i = tail call i32 %5(ptr noundef %chip, i32 noundef %port) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %phi.cmp.i = icmp sgt i32 %call.i.i, -1
  br i1 %phi.cmp.i, label %for.cond.preheader, label %mv88e6352_port_has_serdes.exit.cleanup_crit_edge

mv88e6352_port_has_serdes.exit.cleanup_crit_edge: ; preds = %mv88e6352_port_has_serdes.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.preheader:                               ; preds = %mv88e6352_port_has_serdes.exit
  %dev.i = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg.i) #6
  %6 = ptrtoint ptr %reg.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 -1, ptr %reg.i, align 2, !annotation !83
  %call.i.i19 = call i32 @mv88e6xxx_phy_page_read(ptr noundef %chip, i32 noundef 15, i8 noundef zeroext 1, i32 noundef 21, ptr noundef nonnull %reg.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i19)
  %tobool.not.i = icmp eq i32 %call.i.i19, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.14) #9
  br label %mv88e6352_serdes_get_stat.exit

if.end.i:                                         ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %reg.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %reg.i, align 2
  %conv.i = zext i16 %10 to i64
  br label %mv88e6352_serdes_get_stat.exit

mv88e6352_serdes_get_stat.exit:                   ; preds = %if.end.i, %do.end.i
  %retval.0.i = phi i64 [ 0, %do.end.i ], [ %conv.i, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i) #6
  %arrayidx3 = getelementptr %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 46, i32 %port, i32 3, i32 0
  %11 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %arrayidx3, align 8
  %add = add i64 %12, %retval.0.i
  store i64 %add, ptr %arrayidx3, align 8
  %13 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %add, ptr %data, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg.i) #6
  %14 = ptrtoint ptr %reg.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 -1, ptr %reg.i, align 2, !annotation !83
  %call.i.i19.1 = call i32 @mv88e6xxx_phy_page_read(ptr noundef %chip, i32 noundef 15, i8 noundef zeroext 1, i32 noundef 24, ptr noundef nonnull %reg.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i19.1)
  %tobool.not.i.1 = icmp eq i32 %call.i.i19.1, 0
  br i1 %tobool.not.i.1, label %if.end.i.1, label %do.end.i.1

do.end.i.1:                                       ; preds = %mv88e6352_serdes_get_stat.exit
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.14) #9
  br label %mv88e6352_serdes_get_stat.exit.1

if.end.i.1:                                       ; preds = %mv88e6352_serdes_get_stat.exit
  %17 = ptrtoint ptr %reg.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %reg.i, align 2
  %call.i24.i.1 = call i32 @mv88e6xxx_phy_page_read(ptr noundef %chip, i32 noundef 15, i8 noundef zeroext 1, i32 noundef 25, ptr noundef nonnull %reg.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i24.i.1)
  %tobool6.not.i.1 = icmp eq i32 %call.i24.i.1, 0
  br i1 %tobool6.not.i.1, label %if.end12.i.1, label %do.end10.i.1

do.end10.i.1:                                     ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.14) #9
  br label %mv88e6352_serdes_get_stat.exit.1

if.end12.i.1:                                     ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i.1 = zext i16 %18 to i64
  %shl.i.1 = shl nuw nsw i64 %conv.i.1, 16
  %21 = ptrtoint ptr %reg.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %reg.i, align 2
  %conv13.i.1 = zext i16 %22 to i64
  %or.i.1 = or i64 %shl.i.1, %conv13.i.1
  br label %mv88e6352_serdes_get_stat.exit.1

mv88e6352_serdes_get_stat.exit.1:                 ; preds = %if.end12.i.1, %do.end10.i.1, %do.end.i.1
  %retval.0.i.1 = phi i64 [ 0, %do.end.i.1 ], [ 0, %do.end10.i.1 ], [ %or.i.1, %if.end12.i.1 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i) #6
  %arrayidx3.1 = getelementptr %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 46, i32 %port, i32 3, i32 1
  %23 = ptrtoint ptr %arrayidx3.1 to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %arrayidx3.1, align 8
  %add.1 = add i64 %24, %retval.0.i.1
  store i64 %add.1, ptr %arrayidx3.1, align 8
  %arrayidx6.1 = getelementptr i64, ptr %data, i32 1
  %25 = ptrtoint ptr %arrayidx6.1 to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %add.1, ptr %arrayidx6.1, align 8
  br label %cleanup

cleanup:                                          ; preds = %mv88e6352_serdes_get_stat.exit.1, %mv88e6352_port_has_serdes.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %mv88e6352_port_has_serdes.exit.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 2, %mv88e6352_serdes_get_stat.exit.1 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6352_serdes_irq_status(ptr noundef %chip, i32 noundef %port, i32 noundef %lane) local_unnamed_addr #0 align 64 {
entry:
  %bmsr.i = alloca i16, align 2
  %status = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %status) #6
  %0 = ptrtoint ptr %status to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %status, align 2, !annotation !83
  %call.i = call i32 @mv88e6xxx_phy_page_read(ptr noundef %chip, i32 noundef 15, i8 noundef zeroext 1, i32 noundef 19, ptr noundef nonnull %status) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %status to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %status, align 2
  %3 = and i16 %2, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool1.not = icmp eq i16 %3, 0
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.then2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then2:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %bmsr.i) #6
  %4 = ptrtoint ptr %bmsr.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %bmsr.i, align 2, !annotation !83
  %call.i.i = call i32 @mv88e6xxx_phy_page_read(ptr noundef %chip, i32 noundef 15, i8 noundef zeroext 1, i32 noundef 1, ptr noundef nonnull %bmsr.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 3
  %5 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.18, i32 noundef %call.i.i) #9
  br label %mv88e6352_serdes_irq_link.exit

if.end.i:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  %ds.i = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 2
  %7 = ptrtoint ptr %ds.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ds.i, align 8
  %9 = ptrtoint ptr %bmsr.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %bmsr.i, align 2
  %11 = and i16 %10, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool1.i = icmp ne i16 %11, 0
  call void @dsa_port_phylink_mac_change(ptr noundef %8, i32 noundef %port, i1 noundef zeroext %tobool1.i) #6
  br label %mv88e6352_serdes_irq_link.exit

mv88e6352_serdes_irq_link.exit:                   ; preds = %if.end.i, %do.end.i
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %bmsr.i) #6
  br label %cleanup

cleanup:                                          ; preds = %mv88e6352_serdes_irq_link.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %mv88e6352_serdes_irq_link.exit ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %status) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6352_serdes_irq_enable(ptr noundef %chip, i32 noundef %port, i32 noundef %lane, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %spec.select = select i1 %enable, i16 1024, i16 0
  %call.i = tail call i32 @mv88e6xxx_phy_page_write(ptr noundef %chip, i32 noundef 15, i8 noundef zeroext 1, i32 noundef 18, i16 noundef zeroext %spec.select) #6
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6352_serdes_irq_mapping(ptr nocapture noundef readonly %chip, i32 noundef %port) local_unnamed_addr #0 align 64 {
entry:
  %irq.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %domain = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 19, i32 2
  %0 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %domain, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq.i) #6
  %2 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %irq.i, align 4, !annotation !83
  %call.i = call ptr @__irq_resolve_mapping(ptr noundef %1, i32 noundef 11, ptr noundef nonnull %irq.i) #6
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.irq_find_mapping.exit_crit_edge, label %if.then.i

entry.irq_find_mapping.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %irq_find_mapping.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %irq.i, align 4
  br label %irq_find_mapping.exit

irq_find_mapping.exit:                            ; preds = %if.then.i, %entry.irq_find_mapping.exit_crit_edge
  %retval.0.i = phi i32 [ %4, %if.then.i ], [ 0, %entry.irq_find_mapping.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i) #6
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6352_serdes_get_regs_len(ptr noundef %chip, i32 noundef %port) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 8
  %ops.i.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops.i.i, align 4
  %serdes_get_lane.i.i = getelementptr inbounds %struct.mv88e6xxx_ops, ptr %3, i32 0, i32 45
  %4 = ptrtoint ptr %serdes_get_lane.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %serdes_get_lane.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %entry.mv88e6352_port_has_serdes.exit.thread_crit_edge, label %mv88e6352_port_has_serdes.exit

entry.mv88e6352_port_has_serdes.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %mv88e6352_port_has_serdes.exit.thread

mv88e6352_port_has_serdes.exit:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i = tail call i32 %5(ptr noundef %chip, i32 noundef %port) #6
  %6 = lshr i32 %call.i.i, 25
  %7 = and i32 %6, 64
  %8 = xor i32 %7, 64
  br label %mv88e6352_port_has_serdes.exit.thread

mv88e6352_port_has_serdes.exit.thread:            ; preds = %mv88e6352_port_has_serdes.exit, %entry.mv88e6352_port_has_serdes.exit.thread_crit_edge
  %9 = phi i32 [ 0, %entry.mv88e6352_port_has_serdes.exit.thread_crit_edge ], [ %8, %mv88e6352_port_has_serdes.exit ]
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mv88e6352_serdes_get_regs(ptr noundef %chip, i32 noundef %port, ptr nocapture noundef writeonly %_p) local_unnamed_addr #0 align 64 {
entry:
  %reg = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg) #6
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %reg, align 2, !annotation !83
  %1 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %chip, align 8
  %ops.i.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %2, i32 0, i32 22
  %3 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ops.i.i, align 4
  %serdes_get_lane.i.i = getelementptr inbounds %struct.mv88e6xxx_ops, ptr %4, i32 0, i32 45
  %5 = ptrtoint ptr %serdes_get_lane.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %serdes_get_lane.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %6, null
  br i1 %tobool.not.i.i, label %entry.cleanup_crit_edge, label %mv88e6352_port_has_serdes.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

mv88e6352_port_has_serdes.exit:                   ; preds = %entry
  %call.i.i = tail call i32 %6(ptr noundef %chip, i32 noundef %port) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %phi.cmp.i = icmp sgt i32 %call.i.i, -1
  br i1 %phi.cmp.i, label %mv88e6352_port_has_serdes.exit.for.body_crit_edge, label %mv88e6352_port_has_serdes.exit.cleanup_crit_edge

mv88e6352_port_has_serdes.exit.cleanup_crit_edge: ; preds = %mv88e6352_port_has_serdes.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

mv88e6352_port_has_serdes.exit.for.body_crit_edge: ; preds = %mv88e6352_port_has_serdes.exit
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %mv88e6352_port_has_serdes.exit.for.body_crit_edge
  %i.012 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %mv88e6352_port_has_serdes.exit.for.body_crit_edge ]
  %call.i = call i32 @mv88e6xxx_phy_page_read(ptr noundef %chip, i32 noundef 15, i8 noundef zeroext 1, i32 noundef %i.012, ptr noundef nonnull %reg) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.then2, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then2:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %reg to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %reg, align 2
  %arrayidx = getelementptr i16, ptr %_p, i32 %i.012
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %arrayidx, align 2
  br label %for.inc

for.inc:                                          ; preds = %if.then2, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.012, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %mv88e6352_port_has_serdes.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg) #6
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @mv88e6341_serdes_get_lane(ptr nocapture noundef readonly %chip, i32 noundef %port) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %port)
  %cond = icmp eq i32 %port, 5
  br i1 %cond, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %cmode1 = getelementptr %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 46, i32 5, i32 10
  %0 = ptrtoint ptr %cmode1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cmode1, align 4
  %.off = add i8 %1, -9
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %.off)
  %switch = icmp ult i8 %.off, 3
  %spec.select = select i1 %switch, i32 21, i32 -19
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %entry.sw.epilog_crit_edge
  %lane.0 = phi i32 [ -19, %entry.sw.epilog_crit_edge ], [ %spec.select, %sw.bb ]
  ret i32 %lane.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @mv88e6185_serdes_power(ptr nocapture noundef readnone %chip, i32 noundef %port, i32 noundef %lane, i1 noundef zeroext %up) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @mv88e6185_serdes_get_lane(ptr nocapture noundef readonly %chip, i32 noundef %port) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cmode = getelementptr %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 46, i32 %port, i32 10
  %0 = ptrtoint ptr %cmode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cmode, align 4
  %2 = and i8 %1, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %2)
  %switch = icmp eq i8 %2, 4
  %. = select i1 %switch, i32 0, i32 -19
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6185_serdes_pcs_get_state(ptr noundef %chip, i32 noundef %port, i32 noundef %lane, ptr nocapture noundef %state) local_unnamed_addr #0 align 64 {
entry:
  %status = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %status) #6
  %0 = ptrtoint ptr %status to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %status, align 2, !annotation !83
  %call = call i32 @mv88e6xxx_port_read(ptr noundef %chip, i32 noundef %port, i32 noundef 0, ptr noundef nonnull %status) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %status to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %status, align 2
  %link = getelementptr inbounds %struct.phylink_link_state, ptr %state, i32 0, i32 6
  %3 = ptrtoint ptr %link to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load = load i8, ptr %link, align 4
  %sh.diff = lshr i16 %2, 4
  %tr.sh.diff = trunc i16 %sh.diff to i8
  %bf.shl = and i8 %tr.sh.diff, -128
  %bf.clear = and i8 %bf.load, 127
  %bf.set = or i8 %bf.shl, %bf.clear
  store i8 %bf.set, ptr %link, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %tr.sh.diff)
  %tobool5.not = icmp sgt i8 %tr.sh.diff, -1
  br i1 %tobool5.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.end
  %4 = lshr i16 %2, 10
  %.lobit = and i16 %4, 1
  %5 = zext i16 %.lobit to i32
  %duplex = getelementptr inbounds %struct.phylink_link_state, ptr %state, i32 0, i32 4
  %6 = ptrtoint ptr %duplex to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %duplex, align 4
  %7 = and i16 %2, 768
  %and11 = zext i16 %7 to i32
  %8 = zext i32 %and11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %and11, label %do.end [
    i32 512, label %sw.bb
    i32 256, label %sw.bb12
    i32 0, label %sw.bb14
  ]

sw.bb:                                            ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  %speed = getelementptr inbounds %struct.phylink_link_state, ptr %state, i32 0, i32 3
  %9 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1000, ptr %speed, align 4
  br label %cleanup

sw.bb12:                                          ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  %speed13 = getelementptr inbounds %struct.phylink_link_state, ptr %state, i32 0, i32 3
  %10 = ptrtoint ptr %speed13 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 100, ptr %speed13, align 4
  br label %cleanup

sw.bb14:                                          ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  %speed15 = getelementptr inbounds %struct.phylink_link_state, ptr %state, i32 0, i32 3
  %11 = ptrtoint ptr %speed15 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 10, ptr %speed15, align 4
  br label %cleanup

do.end:                                           ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 3
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.11) #9
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %duplex16 = getelementptr inbounds %struct.phylink_link_state, ptr %state, i32 0, i32 4
  %14 = ptrtoint ptr %duplex16 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 255, ptr %duplex16, align 4
  %speed17 = getelementptr inbounds %struct.phylink_link_state, ptr %state, i32 0, i32 3
  %15 = ptrtoint ptr %speed17 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %speed17, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %do.end, %sw.bb14, %sw.bb12, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ %call, %entry.cleanup_crit_edge ], [ 0, %sw.bb ], [ 0, %sw.bb12 ], [ 0, %sw.bb14 ], [ 0, %if.else ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %status) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mv88e6xxx_port_read(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @mv88e6097_serdes_irq_enable(ptr nocapture noundef readonly %chip, i32 noundef %port, i32 noundef %lane, i1 noundef zeroext %enable) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cmode1 = getelementptr %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 46, i32 %port, i32 10
  %0 = ptrtoint ptr %cmode1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cmode1, align 4
  %2 = and i8 %1, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %2)
  %switch = icmp eq i8 %2, 4
  %. = select i1 %switch, i32 0, i32 -95
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6097_serdes_irq_status(ptr noundef %chip, i32 noundef %port, i32 noundef %lane) local_unnamed_addr #0 align 64 {
entry:
  %status.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cmode1 = getelementptr %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 46, i32 %port, i32 10
  %0 = ptrtoint ptr %cmode1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cmode1, align 4
  %2 = and i8 %1, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %2)
  %switch = icmp eq i8 %2, 4
  br i1 %switch, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %status.i) #6
  %3 = ptrtoint ptr %status.i to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 -1, ptr %status.i, align 2, !annotation !83
  %call.i = call i32 @mv88e6xxx_port_read(ptr noundef %chip, i32 noundef %port, i32 noundef 0, ptr noundef nonnull %status.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 3
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.20, i32 noundef %call.i) #9
  br label %mv88e6097_serdes_irq_link.exit

if.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %ds.i = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 2
  %6 = ptrtoint ptr %ds.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ds.i, align 8
  %8 = ptrtoint ptr %status.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %status.i, align 2
  %10 = and i16 %9, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool1.i = icmp ne i16 %10, 0
  call void @dsa_port_phylink_mac_change(ptr noundef %7, i32 noundef %port, i1 noundef zeroext %tobool1.i) #6
  br label %mv88e6097_serdes_irq_link.exit

mv88e6097_serdes_irq_link.exit:                   ; preds = %if.end.i, %do.end.i
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %status.i) #6
  br label %cleanup

cleanup:                                          ; preds = %mv88e6097_serdes_irq_link.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %mv88e6097_serdes_irq_link.exit ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @mv88e6390_serdes_get_lane(ptr nocapture noundef readonly %chip, i32 noundef %port) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cmode1 = getelementptr %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 46, i32 %port, i32 10
  %0 = ptrtoint ptr %cmode1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cmode1, align 4
  %2 = zext i32 %port to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %port, label %entry.sw.epilog_crit_edge [
    i32 9, label %sw.bb
    i32 10, label %sw.bb10
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %.off = add i8 %1, -9
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %.off)
  %switch = icmp ult i8 %.off, 3
  %spec.select = select i1 %switch, i32 9, i32 -19
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %.off30 = add i8 %1, -9
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %.off30)
  %switch31 = icmp ult i8 %.off30, 3
  %spec.select32 = select i1 %switch31, i32 10, i32 -19
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb10, %sw.bb, %entry.sw.epilog_crit_edge
  %lane.0 = phi i32 [ -19, %entry.sw.epilog_crit_edge ], [ %spec.select, %sw.bb ], [ %spec.select32, %sw.bb10 ]
  ret i32 %lane.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @mv88e6390x_serdes_get_lane(ptr nocapture noundef readonly %chip, i32 noundef %port) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cmode = getelementptr %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 46, i32 %port, i32 10
  %0 = ptrtoint ptr %cmode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cmode, align 4
  %cmode3 = getelementptr %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 46, i32 10, i32 10
  %2 = ptrtoint ptr %cmode3 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %cmode3, align 4
  %cmode6 = getelementptr %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 46, i32 9, i32 10
  %4 = ptrtoint ptr %cmode6 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %cmode6, align 4
  %6 = zext i32 %port to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %port, label %entry.sw.epilog_crit_edge [
    i32 2, label %sw.bb
    i32 3, label %sw.bb20
    i32 4, label %sw.bb43
    i32 5, label %sw.bb66
    i32 6, label %sw.bb85
    i32 7, label %sw.bb108
    i32 9, label %sw.bb131
    i32 10, label %sw.bb153
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %.off = add i8 %5, -9
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %.off)
  %switch = icmp ult i8 %.off, 3
  br i1 %switch, label %if.then, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %1)
  %cmp16 = icmp eq i8 %1, 9
  %spec.select = select i1 %cmp16, i32 18, i32 -19
  br label %sw.epilog

sw.bb20:                                          ; preds = %entry
  %7 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.37)
  switch i8 %5, label %sw.bb20.sw.epilog_crit_edge [
    i8 9, label %sw.bb20.if.then36_crit_edge
    i8 10, label %sw.bb20.if.then36_crit_edge226
    i8 11, label %sw.bb20.if.then36_crit_edge227
    i8 13, label %sw.bb20.if.then36_crit_edge228
  ]

sw.bb20.if.then36_crit_edge228:                   ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then36

sw.bb20.if.then36_crit_edge227:                   ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then36

sw.bb20.if.then36_crit_edge226:                   ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then36

sw.bb20.if.then36_crit_edge:                      ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then36

sw.bb20.sw.epilog_crit_edge:                      ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then36:                                        ; preds = %sw.bb20.if.then36_crit_edge, %sw.bb20.if.then36_crit_edge226, %sw.bb20.if.then36_crit_edge227, %sw.bb20.if.then36_crit_edge228
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %1)
  %cmp38 = icmp eq i8 %1, 9
  %spec.select213 = select i1 %cmp38, i32 19, i32 -19
  br label %sw.epilog

sw.bb43:                                          ; preds = %entry
  %8 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.38)
  switch i8 %5, label %sw.bb43.sw.epilog_crit_edge [
    i8 9, label %sw.bb43.if.then59_crit_edge
    i8 10, label %sw.bb43.if.then59_crit_edge229
    i8 11, label %sw.bb43.if.then59_crit_edge230
    i8 13, label %sw.bb43.if.then59_crit_edge231
  ]

sw.bb43.if.then59_crit_edge231:                   ; preds = %sw.bb43
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then59

sw.bb43.if.then59_crit_edge230:                   ; preds = %sw.bb43
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then59

sw.bb43.if.then59_crit_edge229:                   ; preds = %sw.bb43
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then59

sw.bb43.if.then59_crit_edge:                      ; preds = %sw.bb43
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then59

sw.bb43.sw.epilog_crit_edge:                      ; preds = %sw.bb43
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then59:                                        ; preds = %sw.bb43.if.then59_crit_edge, %sw.bb43.if.then59_crit_edge229, %sw.bb43.if.then59_crit_edge230, %sw.bb43.if.then59_crit_edge231
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %1)
  %cmp61 = icmp eq i8 %1, 9
  %spec.select214 = select i1 %cmp61, i32 20, i32 -19
  br label %sw.epilog

sw.bb66:                                          ; preds = %entry
  %.off218 = add i8 %3, -9
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %.off218)
  %switch219 = icmp ult i8 %.off218, 3
  br i1 %switch219, label %if.then78, label %sw.bb66.sw.epilog_crit_edge

sw.bb66.sw.epilog_crit_edge:                      ; preds = %sw.bb66
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then78:                                        ; preds = %sw.bb66
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %1)
  %cmp80 = icmp eq i8 %1, 9
  %spec.select215 = select i1 %cmp80, i32 21, i32 -19
  br label %sw.epilog

sw.bb85:                                          ; preds = %entry
  %9 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.39)
  switch i8 %3, label %sw.bb85.sw.epilog_crit_edge [
    i8 9, label %sw.bb85.if.then101_crit_edge
    i8 10, label %sw.bb85.if.then101_crit_edge232
    i8 11, label %sw.bb85.if.then101_crit_edge233
    i8 13, label %sw.bb85.if.then101_crit_edge234
  ]

sw.bb85.if.then101_crit_edge234:                  ; preds = %sw.bb85
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then101

sw.bb85.if.then101_crit_edge233:                  ; preds = %sw.bb85
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then101

sw.bb85.if.then101_crit_edge232:                  ; preds = %sw.bb85
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then101

sw.bb85.if.then101_crit_edge:                     ; preds = %sw.bb85
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then101

sw.bb85.sw.epilog_crit_edge:                      ; preds = %sw.bb85
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then101:                                       ; preds = %sw.bb85.if.then101_crit_edge, %sw.bb85.if.then101_crit_edge232, %sw.bb85.if.then101_crit_edge233, %sw.bb85.if.then101_crit_edge234
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %1)
  %cmp103 = icmp eq i8 %1, 9
  %spec.select216 = select i1 %cmp103, i32 22, i32 -19
  br label %sw.epilog

sw.bb108:                                         ; preds = %entry
  %10 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.40)
  switch i8 %3, label %sw.bb108.sw.epilog_crit_edge [
    i8 9, label %sw.bb108.if.then124_crit_edge
    i8 10, label %sw.bb108.if.then124_crit_edge235
    i8 11, label %sw.bb108.if.then124_crit_edge236
    i8 13, label %sw.bb108.if.then124_crit_edge237
  ]

sw.bb108.if.then124_crit_edge237:                 ; preds = %sw.bb108
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then124

sw.bb108.if.then124_crit_edge236:                 ; preds = %sw.bb108
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then124

sw.bb108.if.then124_crit_edge235:                 ; preds = %sw.bb108
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then124

sw.bb108.if.then124_crit_edge:                    ; preds = %sw.bb108
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then124

sw.bb108.sw.epilog_crit_edge:                     ; preds = %sw.bb108
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then124:                                       ; preds = %sw.bb108.if.then124_crit_edge, %sw.bb108.if.then124_crit_edge235, %sw.bb108.if.then124_crit_edge236, %sw.bb108.if.then124_crit_edge237
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %1)
  %cmp126 = icmp eq i8 %1, 9
  %spec.select217 = select i1 %cmp126, i32 23, i32 -19
  br label %sw.epilog

sw.bb131:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %.off220 = add i8 %5, -9
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %.off220)
  %switch221 = icmp ult i8 %.off220, 5
  %spec.select222 = select i1 %switch221, i32 9, i32 -19
  br label %sw.epilog

sw.bb153:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %.off223 = add i8 %3, -9
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %.off223)
  %switch224 = icmp ult i8 %.off223, 5
  %spec.select225 = select i1 %switch224, i32 10, i32 -19
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb153, %sw.bb131, %if.then124, %sw.bb108.sw.epilog_crit_edge, %if.then101, %sw.bb85.sw.epilog_crit_edge, %if.then78, %sw.bb66.sw.epilog_crit_edge, %if.then59, %sw.bb43.sw.epilog_crit_edge, %if.then36, %sw.bb20.sw.epilog_crit_edge, %if.then, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %lane.0 = phi i32 [ -19, %entry.sw.epilog_crit_edge ], [ -19, %sw.bb.sw.epilog_crit_edge ], [ %spec.select, %if.then ], [ -19, %sw.bb20.sw.epilog_crit_edge ], [ %spec.select213, %if.then36 ], [ -19, %sw.bb43.sw.epilog_crit_edge ], [ %spec.select214, %if.then59 ], [ -19, %sw.bb66.sw.epilog_crit_edge ], [ %spec.select215, %if.then78 ], [ -19, %sw.bb85.sw.epilog_crit_edge ], [ %spec.select216, %if.then101 ], [ -19, %sw.bb108.sw.epilog_crit_edge ], [ %spec.select217, %if.then124 ], [ %spec.select222, %sw.bb131 ], [ %spec.select225, %sw.bb153 ]
  ret i32 %lane.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @mv88e6393x_serdes_get_lane(ptr nocapture noundef readonly %chip, i32 noundef %port) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %port to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %port, label %entry.cleanup_crit_edge [
    i32 0, label %entry.if.end_crit_edge
    i32 9, label %entry.if.end_crit_edge33
    i32 10, label %entry.if.end_crit_edge34
  ]

entry.if.end_crit_edge34:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

entry.if.end_crit_edge33:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge33, %entry.if.end_crit_edge34
  %cmode1 = getelementptr %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 46, i32 %port, i32 10
  %1 = ptrtoint ptr %cmode1 to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %cmode1, align 4
  %.off = add i8 %2, -9
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %.off)
  %switch = icmp ult i8 %.off, 5
  %spec.select = select i1 %switch, i32 %port, i32 -19
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ %spec.select, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6390_serdes_get_sset_count(ptr noundef %chip, i32 noundef %port) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 8
  %ops.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops.i, align 4
  %serdes_get_lane.i = getelementptr inbounds %struct.mv88e6xxx_ops, ptr %3, i32 0, i32 45
  %4 = ptrtoint ptr %serdes_get_lane.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %serdes_get_lane.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %entry.mv88e6xxx_serdes_get_lane.exit.thread_crit_edge, label %mv88e6xxx_serdes_get_lane.exit

entry.mv88e6xxx_serdes_get_lane.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %mv88e6xxx_serdes_get_lane.exit.thread

mv88e6xxx_serdes_get_lane.exit:                   ; preds = %entry
  %call.i = tail call i32 %5(ptr noundef %chip, i32 noundef %port) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %mv88e6xxx_serdes_get_lane.exit.mv88e6xxx_serdes_get_lane.exit.thread_crit_edge, label %mv88e6xxx_serdes_get_lane.exit._crit_edge

mv88e6xxx_serdes_get_lane.exit._crit_edge:        ; preds = %mv88e6xxx_serdes_get_lane.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %6

mv88e6xxx_serdes_get_lane.exit.mv88e6xxx_serdes_get_lane.exit.thread_crit_edge: ; preds = %mv88e6xxx_serdes_get_lane.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %mv88e6xxx_serdes_get_lane.exit.thread

mv88e6xxx_serdes_get_lane.exit.thread:            ; preds = %mv88e6xxx_serdes_get_lane.exit.mv88e6xxx_serdes_get_lane.exit.thread_crit_edge, %entry.mv88e6xxx_serdes_get_lane.exit.thread_crit_edge
  br label %6

6:                                                ; preds = %mv88e6xxx_serdes_get_lane.exit.thread, %mv88e6xxx_serdes_get_lane.exit._crit_edge
  %7 = phi i32 [ 0, %mv88e6xxx_serdes_get_lane.exit.thread ], [ 3, %mv88e6xxx_serdes_get_lane.exit._crit_edge ]
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6390_serdes_get_strings(ptr noundef %chip, i32 noundef %port, ptr nocapture noundef writeonly %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 8
  %ops.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops.i, align 4
  %serdes_get_lane.i = getelementptr inbounds %struct.mv88e6xxx_ops, ptr %3, i32 0, i32 45
  %4 = ptrtoint ptr %serdes_get_lane.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %serdes_get_lane.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %mv88e6xxx_serdes_get_lane.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

mv88e6xxx_serdes_get_lane.exit:                   ; preds = %entry
  %call.i = tail call i32 %5(ptr noundef %chip, i32 noundef %port) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %mv88e6xxx_serdes_get_lane.exit.cleanup_crit_edge, label %for.body.preheader

mv88e6xxx_serdes_get_lane.exit.cleanup_crit_edge: ; preds = %mv88e6xxx_serdes_get_lane.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.preheader:                               ; preds = %mv88e6xxx_serdes_get_lane.exit
  call void @__sanitizer_cov_trace_pc() #8
  %6 = call ptr @memcpy(ptr %data, ptr @mv88e6390_serdes_hw_stats, i32 32)
  %add.ptr.1 = getelementptr i8, ptr %data, i32 32
  %7 = call ptr @memcpy(ptr %add.ptr.1, ptr getelementptr inbounds ([3 x %struct.mv88e6390_serdes_hw_stat], ptr @mv88e6390_serdes_hw_stats, i32 0, i32 1), i32 32)
  %add.ptr.2 = getelementptr i8, ptr %data, i32 64
  %8 = call ptr @memcpy(ptr %add.ptr.2, ptr getelementptr inbounds ([3 x %struct.mv88e6390_serdes_hw_stat], ptr @mv88e6390_serdes_hw_stats, i32 0, i32 2), i32 32)
  br label %cleanup

cleanup:                                          ; preds = %for.body.preheader, %mv88e6xxx_serdes_get_lane.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %mv88e6xxx_serdes_get_lane.exit.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 3, %for.body.preheader ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6390_serdes_get_stats(ptr noundef %chip, i32 noundef %port, ptr nocapture noundef writeonly %data) local_unnamed_addr #0 align 64 {
entry:
  %reg.i = alloca [3 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 8
  %ops.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops.i, align 4
  %serdes_get_lane.i = getelementptr inbounds %struct.mv88e6xxx_ops, ptr %3, i32 0, i32 45
  %4 = ptrtoint ptr %serdes_get_lane.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %serdes_get_lane.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %mv88e6xxx_serdes_get_lane.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

mv88e6xxx_serdes_get_lane.exit:                   ; preds = %entry
  %call.i = tail call i32 %5(ptr noundef %chip, i32 noundef %port) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %mv88e6xxx_serdes_get_lane.exit.cleanup_crit_edge, label %for.cond.preheader

mv88e6xxx_serdes_get_lane.exit.cleanup_crit_edge: ; preds = %mv88e6xxx_serdes_get_lane.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.preheader:                               ; preds = %mv88e6xxx_serdes_get_lane.exit
  %6 = getelementptr inbounds [3 x i16], ptr %reg.i, i32 0, i32 1
  %7 = getelementptr inbounds [3 x i16], ptr %reg.i, i32 0, i32 2
  %dev.i = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %mv88e6390_serdes_get_stat.exit.for.body_crit_edge, %for.cond.preheader
  %i.015 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %mv88e6390_serdes_get_stat.exit.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %reg.i) #6
  %8 = ptrtoint ptr %reg.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 -1, ptr %reg.i, align 2, !annotation !83
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 -1, ptr %6, align 2, !annotation !83
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 -1, ptr %7, align 2, !annotation !83
  %reg1.i = getelementptr [3 x %struct.mv88e6390_serdes_hw_stat], ptr @mv88e6390_serdes_hw_stats, i32 0, i32 %i.015, i32 1
  %11 = ptrtoint ptr %reg1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %reg1.i, align 4
  %or1.i.i = or i32 %12, 1074003968
  %call.i.i = call i32 @mv88e6xxx_phy_read(ptr noundef %chip, i32 noundef %call.i, i32 noundef %or1.i.i, ptr noundef nonnull %reg.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i11 = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i11, label %for.cond.i, label %for.body.do.end.i_crit_edge

for.body.do.end.i_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

for.cond.i:                                       ; preds = %for.body
  %13 = ptrtoint ptr %reg1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %reg1.i, align 4
  %add.1.i = add i32 %14, 1
  %or1.i.1.i = or i32 %add.1.i, 1074003968
  %call.i.1.i = call i32 @mv88e6xxx_phy_read(ptr noundef %chip, i32 noundef %call.i, i32 noundef %or1.i.1.i, ptr noundef %6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1.i)
  %tobool.not.1.i = icmp eq i32 %call.i.1.i, 0
  br i1 %tobool.not.1.i, label %for.cond.1.i, label %for.cond.i.do.end.i_crit_edge

for.cond.i.do.end.i_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

for.cond.1.i:                                     ; preds = %for.cond.i
  %15 = ptrtoint ptr %reg1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %reg1.i, align 4
  %add.2.i = add i32 %16, 2
  %or1.i.2.i = or i32 %add.2.i, 1074003968
  %call.i.2.i = call i32 @mv88e6xxx_phy_read(ptr noundef %chip, i32 noundef %call.i, i32 noundef %or1.i.2.i, ptr noundef %7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.2.i)
  %tobool.not.2.i = icmp eq i32 %call.i.2.i, 0
  br i1 %tobool.not.2.i, label %for.cond.2.i, label %for.cond.1.i.do.end.i_crit_edge

for.cond.1.i.do.end.i_crit_edge:                  ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

for.cond.2.i:                                     ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %reg.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %reg.i, align 2
  %conv.i = zext i16 %18 to i64
  %19 = ptrtoint ptr %6 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %6, align 2
  %conv4.i = zext i16 %20 to i64
  %shl.i = shl nuw nsw i64 %conv4.i, 16
  %or.i = or i64 %shl.i, %conv.i
  %21 = ptrtoint ptr %7 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %7, align 2
  %conv6.i = zext i16 %22 to i64
  %shl7.i = shl nuw nsw i64 %conv6.i, 32
  %or8.i = or i64 %or.i, %shl7.i
  br label %mv88e6390_serdes_get_stat.exit

do.end.i:                                         ; preds = %for.cond.1.i.do.end.i_crit_edge, %for.cond.i.do.end.i_crit_edge, %for.body.do.end.i_crit_edge
  %23 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.14) #9
  br label %mv88e6390_serdes_get_stat.exit

mv88e6390_serdes_get_stat.exit:                   ; preds = %do.end.i, %for.cond.2.i
  %retval.0.i12 = phi i64 [ 0, %do.end.i ], [ %or8.i, %for.cond.2.i ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %reg.i) #6
  %arrayidx3 = getelementptr i64, ptr %data, i32 %i.015
  %25 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %retval.0.i12, ptr %arrayidx3, align 8
  %inc = add nuw nsw i32 %i.015, 1
  %exitcond.not = icmp eq i32 %inc, 3
  br i1 %exitcond.not, label %mv88e6390_serdes_get_stat.exit.cleanup_crit_edge, label %mv88e6390_serdes_get_stat.exit.for.body_crit_edge

mv88e6390_serdes_get_stat.exit.for.body_crit_edge: ; preds = %mv88e6390_serdes_get_stat.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

mv88e6390_serdes_get_stat.exit.cleanup_crit_edge: ; preds = %mv88e6390_serdes_get_stat.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %mv88e6390_serdes_get_stat.exit.cleanup_crit_edge, %mv88e6xxx_serdes_get_lane.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %mv88e6xxx_serdes_get_lane.exit.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 3, %mv88e6390_serdes_get_stat.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6390_serdes_power(ptr noundef %chip, i32 noundef %port, i32 noundef %lane, i1 noundef zeroext %up) local_unnamed_addr #0 align 64 {
entry:
  %reg.i = alloca i16, align 2
  %val.i17 = alloca i16, align 2
  %val.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cmode1 = getelementptr %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 46, i32 %port, i32 10
  %0 = ptrtoint ptr %cmode1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cmode1, align 4
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.42)
  switch i8 %1, label %entry.if.end_crit_edge [
    i8 10, label %entry.sw.bb_crit_edge
    i8 9, label %entry.sw.bb_crit_edge36
    i8 11, label %entry.sw.bb_crit_edge37
    i8 12, label %entry.sw.bb2_crit_edge
    i8 13, label %entry.sw.bb2_crit_edge38
  ]

entry.sw.bb2_crit_edge38:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb2

entry.sw.bb2_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb2

entry.sw.bb_crit_edge37:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.bb_crit_edge36:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge36, %entry.sw.bb_crit_edge37
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i) #6
  %3 = ptrtoint ptr %val.i to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 -1, ptr %val.i, align 2, !annotation !83
  %call.i.i = call i32 @mv88e6xxx_phy_read(ptr noundef %chip, i32 noundef %lane, i32 noundef 1074012160, ptr noundef nonnull %val.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %sw.bb.mv88e6390_serdes_power_sgmii.exit_crit_edge

sw.bb.mv88e6390_serdes_power_sgmii.exit_crit_edge: ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %mv88e6390_serdes_power_sgmii.exit

if.end.i:                                         ; preds = %sw.bb
  %4 = ptrtoint ptr %val.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %val.i, align 2
  %6 = and i16 %5, 14335
  %7 = or i16 %5, 2048
  %new_val.0.i = select i1 %up, i16 %6, i16 %7
  call void @__sanitizer_cov_trace_cmp2(i16 %5, i16 %new_val.0.i)
  %cmp.not.i = icmp eq i16 %5, %new_val.0.i
  br i1 %cmp.not.i, label %if.end.i.mv88e6390_serdes_power_sgmii.exit_crit_edge, label %if.then10.i

if.end.i.mv88e6390_serdes_power_sgmii.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mv88e6390_serdes_power_sgmii.exit

if.then10.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i20.i = call i32 @mv88e6xxx_phy_write(ptr noundef %chip, i32 noundef %lane, i32 noundef 1074012160, i16 noundef zeroext %new_val.0.i) #6
  br label %mv88e6390_serdes_power_sgmii.exit

mv88e6390_serdes_power_sgmii.exit:                ; preds = %if.then10.i, %if.end.i.mv88e6390_serdes_power_sgmii.exit_crit_edge, %sw.bb.mv88e6390_serdes_power_sgmii.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i.i, %sw.bb.mv88e6390_serdes_power_sgmii.exit_crit_edge ], [ %call.i20.i, %if.then10.i ], [ 0, %if.end.i.mv88e6390_serdes_power_sgmii.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i) #6
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry.sw.bb2_crit_edge, %entry.sw.bb2_crit_edge38
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i17) #6
  %8 = ptrtoint ptr %val.i17 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 -1, ptr %val.i17, align 2, !annotation !83
  %call.i.i18 = call i32 @mv88e6xxx_phy_read(ptr noundef %chip, i32 noundef %lane, i32 noundef 1074008064, ptr noundef nonnull %val.i17) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i18)
  %tobool.not.i19 = icmp eq i32 %call.i.i18, 0
  br i1 %tobool.not.i19, label %if.end.i22, label %sw.bb2.mv88e6390_serdes_power_10g.exit_crit_edge

sw.bb2.mv88e6390_serdes_power_10g.exit_crit_edge: ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #8
  br label %mv88e6390_serdes_power_10g.exit

if.end.i22:                                       ; preds = %sw.bb2
  %9 = ptrtoint ptr %val.i17 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %val.i17, align 2
  %11 = and i16 %10, 14335
  %12 = or i16 %10, 2048
  %new_val.0.i20 = select i1 %up, i16 %11, i16 %12
  call void @__sanitizer_cov_trace_cmp2(i16 %10, i16 %new_val.0.i20)
  %cmp.not.i21 = icmp eq i16 %10, %new_val.0.i20
  br i1 %cmp.not.i21, label %if.end.i22.mv88e6390_serdes_power_10g.exit_crit_edge, label %if.then10.i24

if.end.i22.mv88e6390_serdes_power_10g.exit_crit_edge: ; preds = %if.end.i22
  call void @__sanitizer_cov_trace_pc() #8
  br label %mv88e6390_serdes_power_10g.exit

if.then10.i24:                                    ; preds = %if.end.i22
  call void @__sanitizer_cov_trace_pc() #8
  %call.i20.i23 = call i32 @mv88e6xxx_phy_write(ptr noundef %chip, i32 noundef %lane, i32 noundef 1074008064, i16 noundef zeroext %new_val.0.i20) #6
  br label %mv88e6390_serdes_power_10g.exit

mv88e6390_serdes_power_10g.exit:                  ; preds = %if.then10.i24, %if.end.i22.mv88e6390_serdes_power_10g.exit_crit_edge, %sw.bb2.mv88e6390_serdes_power_10g.exit_crit_edge
  %retval.0.i25 = phi i32 [ %call.i.i18, %sw.bb2.mv88e6390_serdes_power_10g.exit_crit_edge ], [ %call.i20.i23, %if.then10.i24 ], [ 0, %if.end.i22.mv88e6390_serdes_power_10g.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i17) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %mv88e6390_serdes_power_10g.exit, %mv88e6390_serdes_power_sgmii.exit
  %err.0 = phi i32 [ %retval.0.i25, %mv88e6390_serdes_power_10g.exit ], [ %retval.0.i, %mv88e6390_serdes_power_sgmii.exit ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool5.not = icmp eq i32 %err.0, 0
  %13 = and i1 %tobool5.not, %up
  br i1 %13, label %if.then, label %sw.epilog.if.end_crit_edge

sw.epilog.if.end_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %sw.epilog
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg.i) #6
  %14 = ptrtoint ptr %reg.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 -1, ptr %reg.i, align 2, !annotation !83
  %call.i.i26 = call i32 @mv88e6xxx_phy_read(ptr noundef %chip, i32 noundef %lane, i32 noundef 1074065424, ptr noundef nonnull %reg.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i26)
  %tobool.not.i27 = icmp eq i32 %call.i.i26, 0
  br i1 %tobool.not.i27, label %if.end.i28, label %if.then.mv88e6390_serdes_enable_checker.exit_crit_edge

if.then.mv88e6390_serdes_enable_checker.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %mv88e6390_serdes_enable_checker.exit

if.end.i28:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %reg.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %reg.i, align 2
  %17 = or i16 %16, 1
  store i16 %17, ptr %reg.i, align 2
  %call.i7.i = call i32 @mv88e6xxx_phy_write(ptr noundef %chip, i32 noundef %lane, i32 noundef 1074065424, i16 noundef zeroext %17) #6
  br label %mv88e6390_serdes_enable_checker.exit

mv88e6390_serdes_enable_checker.exit:             ; preds = %if.end.i28, %if.then.mv88e6390_serdes_enable_checker.exit_crit_edge
  %retval.0.i29 = phi i32 [ %call.i7.i, %if.end.i28 ], [ %call.i.i26, %if.then.mv88e6390_serdes_enable_checker.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i) #6
  br label %if.end

if.end:                                           ; preds = %mv88e6390_serdes_enable_checker.exit, %sw.epilog.if.end_crit_edge, %entry.if.end_crit_edge
  %err.1 = phi i32 [ %err.0, %sw.epilog.if.end_crit_edge ], [ %retval.0.i29, %mv88e6390_serdes_enable_checker.exit ], [ -22, %entry.if.end_crit_edge ]
  ret i32 %err.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6390_serdes_pcs_config(ptr noundef %chip, i32 noundef %port, i32 noundef %lane, i32 noundef %mode, i32 noundef %interface, ptr noundef %advertise) local_unnamed_addr #0 align 64 {
entry:
  %val = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val) #6
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %val, align 2, !annotation !83
  %1 = zext i32 %interface to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %interface, label %entry.cleanup_crit_edge [
    i32 4, label %entry.sw.epilog_crit_edge
    i32 21, label %sw.bb1
    i32 22, label %entry.sw.epilog.sink.split_crit_edge
  ]

entry.sw.epilog.sink.split_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i.i.i = getelementptr i32, ptr %advertise, i32 1
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb1, %entry.sw.epilog.sink.split_crit_edge
  %advertise.sink = phi ptr [ %arrayidx.i.i.i, %sw.bb1 ], [ %advertise, %entry.sw.epilog.sink.split_crit_edge ]
  %.sink66 = phi i16 [ 4, %sw.bb1 ], [ 10, %entry.sw.epilog.sink.split_crit_edge ]
  %2 = ptrtoint ptr %advertise.sink to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %advertise.sink, align 4
  %4 = trunc i32 %3 to i16
  %5 = lshr i16 %4, %.sink66
  %6 = and i16 %5, 32
  %7 = ptrtoint ptr %advertise to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %advertise, align 4
  %9 = trunc i32 %8 to i16
  %10 = lshr i16 %9, 6
  %11 = and i16 %10, 128
  %12 = or i16 %11, %6
  %13 = load volatile i32, ptr %advertise, align 4
  %14 = trunc i32 %13 to i16
  %15 = lshr i16 %14, 6
  %16 = and i16 %15, 256
  %17 = or i16 %12, %16
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  %adv.0 = phi i16 [ 1, %entry.sw.epilog_crit_edge ], [ %17, %sw.epilog.sink.split ]
  %call.i = call i32 @mv88e6xxx_phy_read(ptr noundef %chip, i32 noundef %lane, i32 noundef 1074012164, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %sw.epilog
  %18 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %val, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %19, i16 %adv.0)
  %cmp = icmp ne i16 %19, %adv.0
  br i1 %cmp, label %if.then8, label %if.end.if.end13_crit_edge

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.then8:                                         ; preds = %if.end
  %call.i55 = call i32 @mv88e6xxx_phy_write(ptr noundef %chip, i32 noundef %lane, i32 noundef 1074012164, i16 noundef zeroext %adv.0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i55)
  %tobool10.not = icmp eq i32 %call.i55, 0
  br i1 %tobool10.not, label %if.then8.if.end13_crit_edge, label %if.then8.cleanup_crit_edge

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then8.if.end13_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.end13:                                         ; preds = %if.then8.if.end13_crit_edge, %if.end.if.end13_crit_edge
  %call.i56 = call i32 @mv88e6xxx_phy_read(ptr noundef %chip, i32 noundef %lane, i32 noundef 1074012160, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i56)
  %tobool15.not = icmp eq i32 %call.i56, 0
  br i1 %tobool15.not, label %if.end17, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end17:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %mode)
  %cmp.i = icmp eq i32 %mode, 2
  %20 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %val, align 2
  %22 = and i16 %21, -4097
  %masksel = select i1 %cmp.i, i16 4096, i16 0
  %bmcr.0 = or i16 %22, %masksel
  call void @__sanitizer_cov_trace_cmp2(i16 %bmcr.0, i16 %21)
  %cmp27 = icmp eq i16 %bmcr.0, %21
  br i1 %cmp27, label %if.then29, label %if.end32

if.then29:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  %conv31 = zext i1 %cmp to i32
  br label %cleanup

if.end32:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  %call.i57 = call i32 @mv88e6xxx_phy_write(ptr noundef %chip, i32 noundef %lane, i32 noundef 1074012160, i16 noundef zeroext %bmcr.0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %if.then29, %if.end13.cleanup_crit_edge, %if.then8.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv31, %if.then29 ], [ %call.i57, %if.end32 ], [ 0, %entry.cleanup_crit_edge ], [ %call.i, %sw.epilog.cleanup_crit_edge ], [ %call.i55, %if.then8.cleanup_crit_edge ], [ %call.i56, %if.end13.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6390_serdes_pcs_get_state(ptr noundef %chip, i32 noundef %port, i32 noundef %lane, ptr nocapture noundef %state) local_unnamed_addr #0 align 64 {
entry:
  %status.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %interface = getelementptr inbounds %struct.phylink_link_state, ptr %state, i32 0, i32 2
  %0 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %interface, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %1, label %entry.return_crit_edge [
    i32 4, label %entry.sw.bb_crit_edge
    i32 21, label %entry.sw.bb_crit_edge8
    i32 22, label %entry.sw.bb_crit_edge9
    i32 25, label %entry.sw.bb1_crit_edge
    i32 24, label %entry.sw.bb1_crit_edge10
  ]

entry.sw.bb1_crit_edge10:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1

entry.sw.bb_crit_edge9:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.bb_crit_edge8:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge8, %entry.sw.bb_crit_edge9
  %call = tail call fastcc i32 @mv88e6390_serdes_pcs_get_state_sgmii(ptr noundef %chip, i32 noundef %lane, ptr noundef %state)
  br label %return

sw.bb1:                                           ; preds = %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %status.i) #6
  %3 = ptrtoint ptr %status.i to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 -1, ptr %status.i, align 2, !annotation !83
  %call.i.i = call i32 @mv88e6xxx_phy_read(ptr noundef %chip, i32 noundef %lane, i32 noundef 1074008065, ptr noundef nonnull %status.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %sw.bb1.mv88e6390_serdes_pcs_get_state_10g.exit_crit_edge

sw.bb1.mv88e6390_serdes_pcs_get_state_10g.exit_crit_edge: ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #8
  br label %mv88e6390_serdes_pcs_get_state_10g.exit

if.end.i:                                         ; preds = %sw.bb1
  %4 = ptrtoint ptr %status.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %status.i, align 2
  %link.i = getelementptr inbounds %struct.phylink_link_state, ptr %state, i32 0, i32 6
  %6 = trunc i16 %5 to i8
  %7 = ptrtoint ptr %link.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load.i = load i8, ptr %link.i, align 4
  %8 = shl i8 %6, 5
  %bf.shl.i = and i8 %8, -128
  %bf.clear.i = and i8 %bf.load.i, 127
  %bf.set.i = or i8 %bf.shl.i, %bf.clear.i
  store i8 %bf.set.i, ptr %link.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %8)
  %tobool5.not.i = icmp sgt i8 %8, -1
  br i1 %tobool5.not.i, label %if.end.i.mv88e6390_serdes_pcs_get_state_10g.exit_crit_edge, label %if.then6.i

if.end.i.mv88e6390_serdes_pcs_get_state_10g.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mv88e6390_serdes_pcs_get_state_10g.exit

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %speed.i = getelementptr inbounds %struct.phylink_link_state, ptr %state, i32 0, i32 3
  %9 = ptrtoint ptr %speed.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 10000, ptr %speed.i, align 4
  %duplex.i = getelementptr inbounds %struct.phylink_link_state, ptr %state, i32 0, i32 4
  %10 = ptrtoint ptr %duplex.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %duplex.i, align 4
  br label %mv88e6390_serdes_pcs_get_state_10g.exit

mv88e6390_serdes_pcs_get_state_10g.exit:          ; preds = %if.then6.i, %if.end.i.mv88e6390_serdes_pcs_get_state_10g.exit_crit_edge, %sw.bb1.mv88e6390_serdes_pcs_get_state_10g.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %status.i) #6
  br label %return

return:                                           ; preds = %mv88e6390_serdes_pcs_get_state_10g.exit, %sw.bb, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call.i.i, %mv88e6390_serdes_pcs_get_state_10g.exit ], [ %call, %sw.bb ], [ -95, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mv88e6390_serdes_pcs_get_state_sgmii(ptr noundef %chip, i32 noundef %lane, ptr nocapture noundef %state) unnamed_addr #0 align 64 {
entry:
  %lpa = alloca i16, align 2
  %status = alloca i16, align 2
  %ctrl = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %lpa) #6
  %0 = ptrtoint ptr %lpa to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %lpa, align 2, !annotation !83
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %status) #6
  %1 = ptrtoint ptr %status to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -1, ptr %status, align 2, !annotation !83
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %ctrl) #6
  %2 = ptrtoint ptr %ctrl to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %ctrl, align 2, !annotation !83
  %call.i = call i32 @mv88e6xxx_phy_read(ptr noundef %chip, i32 noundef %lane, i32 noundef 1074012160, ptr noundef nonnull %ctrl) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 3
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str, i32 noundef %call.i) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i1 = call i32 @mv88e6xxx_phy_read(ptr noundef %chip, i32 noundef %lane, i32 noundef 1074044931, ptr noundef nonnull %status) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1)
  %tobool2.not = icmp eq i32 %call.i1, 0
  br i1 %tobool2.not, label %if.end8, label %do.end6

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %dev7 = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 3
  %5 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev7, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.6, i32 noundef %call.i1) #9
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call.i2 = call i32 @mv88e6xxx_phy_read(ptr noundef %chip, i32 noundef %lane, i32 noundef 1074012165, ptr noundef nonnull %lpa) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2)
  %tobool10.not = icmp eq i32 %call.i2, 0
  br i1 %tobool10.not, label %if.end16, label %do.end14

do.end14:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  %dev15 = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 3
  %7 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev15, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.9, i32 noundef %call.i2) #9
  br label %cleanup

if.end16:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %ctrl to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %ctrl, align 2
  %11 = ptrtoint ptr %status to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %status, align 2
  %13 = ptrtoint ptr %lpa to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %lpa, align 2
  %call17 = call fastcc i32 @mv88e6xxx_serdes_pcs_get_state(ptr noundef %chip, i16 noundef zeroext %10, i16 noundef zeroext %12, i16 noundef zeroext %14, ptr noundef %state)
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %do.end14, %do.end6, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end ], [ %call.i1, %do.end6 ], [ %call.i2, %do.end14 ], [ %call17, %if.end16 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %ctrl) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %status) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %lpa) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6393x_serdes_pcs_get_state(ptr noundef %chip, i32 noundef %port, i32 noundef %lane, ptr nocapture noundef %state) local_unnamed_addr #0 align 64 {
entry:
  %status.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %interface = getelementptr inbounds %struct.phylink_link_state, ptr %state, i32 0, i32 2
  %0 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %interface, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %1, label %entry.return_crit_edge [
    i32 4, label %entry.sw.bb_crit_edge
    i32 21, label %entry.sw.bb_crit_edge8
    i32 22, label %entry.sw.bb_crit_edge9
    i32 23, label %entry.sw.bb1_crit_edge
    i32 26, label %entry.sw.bb1_crit_edge10
  ]

entry.sw.bb1_crit_edge10:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1

entry.sw.bb_crit_edge9:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.bb_crit_edge8:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge8, %entry.sw.bb_crit_edge9
  %call = tail call fastcc i32 @mv88e6390_serdes_pcs_get_state_sgmii(ptr noundef %chip, i32 noundef %lane, ptr noundef %state)
  br label %return

sw.bb1:                                           ; preds = %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %status.i) #6
  %3 = ptrtoint ptr %status.i to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 -1, ptr %status.i, align 2, !annotation !83
  %call.i.i = call i32 @mv88e6xxx_phy_read(ptr noundef %chip, i32 noundef %lane, i32 noundef 1074008065, ptr noundef nonnull %status.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %sw.bb1.mv88e6393x_serdes_pcs_get_state_10g.exit_crit_edge

sw.bb1.mv88e6393x_serdes_pcs_get_state_10g.exit_crit_edge: ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #8
  br label %mv88e6393x_serdes_pcs_get_state_10g.exit

if.end.i:                                         ; preds = %sw.bb1
  %4 = ptrtoint ptr %status.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %status.i, align 2
  %link.i = getelementptr inbounds %struct.phylink_link_state, ptr %state, i32 0, i32 6
  %6 = trunc i16 %5 to i8
  %7 = ptrtoint ptr %link.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load.i = load i8, ptr %link.i, align 4
  %8 = shl i8 %6, 5
  %bf.shl.i = and i8 %8, -128
  %bf.clear.i = and i8 %bf.load.i, 127
  %bf.set.i = or i8 %bf.shl.i, %bf.clear.i
  store i8 %bf.set.i, ptr %link.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %8)
  %tobool5.not.i = icmp sgt i8 %8, -1
  br i1 %tobool5.not.i, label %if.end.i.mv88e6393x_serdes_pcs_get_state_10g.exit_crit_edge, label %if.then6.i

if.end.i.mv88e6393x_serdes_pcs_get_state_10g.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mv88e6393x_serdes_pcs_get_state_10g.exit

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %interface, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %10)
  %cmp.i = icmp eq i32 %10, 23
  %spec.select.i = select i1 %cmp.i, i32 5000, i32 10000
  %11 = getelementptr inbounds %struct.phylink_link_state, ptr %state, i32 0, i32 3
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %spec.select.i, ptr %11, align 4
  %duplex.i = getelementptr inbounds %struct.phylink_link_state, ptr %state, i32 0, i32 4
  %13 = ptrtoint ptr %duplex.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %duplex.i, align 4
  br label %mv88e6393x_serdes_pcs_get_state_10g.exit

mv88e6393x_serdes_pcs_get_state_10g.exit:         ; preds = %if.then6.i, %if.end.i.mv88e6393x_serdes_pcs_get_state_10g.exit_crit_edge, %sw.bb1.mv88e6393x_serdes_pcs_get_state_10g.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %status.i) #6
  br label %return

return:                                           ; preds = %mv88e6393x_serdes_pcs_get_state_10g.exit, %sw.bb, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call.i.i, %mv88e6393x_serdes_pcs_get_state_10g.exit ], [ %call, %sw.bb ], [ -95, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6390_serdes_pcs_an_restart(ptr noundef %chip, i32 noundef %port, i32 noundef %lane) local_unnamed_addr #0 align 64 {
entry:
  %bmcr = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %bmcr) #6
  %0 = ptrtoint ptr %bmcr to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %bmcr, align 2, !annotation !83
  %call.i = call i32 @mv88e6xxx_phy_read(ptr noundef %chip, i32 noundef %lane, i32 noundef 1074012160, ptr noundef nonnull %bmcr) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %bmcr to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %bmcr, align 2
  %3 = or i16 %2, 512
  %call.i7 = call i32 @mv88e6xxx_phy_write(ptr noundef %chip, i32 noundef %lane, i32 noundef 1074012160, i16 noundef zeroext %3) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i7, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %bmcr) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6390_serdes_pcs_link_up(ptr noundef %chip, i32 noundef %port, i32 noundef %lane, i32 noundef %speed, i32 noundef %duplex) local_unnamed_addr #0 align 64 {
entry:
  %val = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val) #6
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %val, align 2, !annotation !83
  %call.i = call i32 @mv88e6xxx_phy_read(ptr noundef %chip, i32 noundef %lane, i32 noundef 1074012160, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %val, align 2
  %3 = and i16 %2, -8513
  %4 = zext i32 %speed to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %speed, label %if.end.sw.epilog_crit_edge [
    i32 2500, label %if.end.sw.bb_crit_edge
    i32 1000, label %if.end.sw.bb_crit_edge31
    i32 100, label %sw.bb4
  ]

if.end.sw.bb_crit_edge31:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge31
  %5 = or i16 %3, 64
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %6 = or i16 %3, 8192
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb4, %sw.bb, %if.end.sw.epilog_crit_edge
  %bmcr.0 = phi i16 [ %3, %if.end.sw.epilog_crit_edge ], [ %6, %sw.bb4 ], [ %5, %sw.bb ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %duplex)
  %cmp = icmp eq i32 %duplex, 1
  %7 = or i16 %bmcr.0, 256
  %spec.select = select i1 %cmp, i16 %7, i16 %bmcr.0
  call void @__sanitizer_cov_trace_cmp2(i16 %spec.select, i16 %2)
  %cmp16 = icmp eq i16 %spec.select, %2
  br i1 %cmp16, label %sw.epilog.cleanup_crit_edge, label %if.end19

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end19:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %call.i30 = call i32 @mv88e6xxx_phy_write(ptr noundef %chip, i32 noundef %lane, i32 noundef 1074012160, i16 noundef zeroext %spec.select) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i30, %if.end19 ], [ %call.i, %entry.cleanup_crit_edge ], [ 0, %sw.epilog.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6390_serdes_irq_enable(ptr noundef %chip, i32 noundef %port, i32 noundef %lane, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cmode1 = getelementptr %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 46, i32 %port, i32 10
  %0 = ptrtoint ptr %cmode1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cmode1, align 4
  %.off = add i8 %1, -9
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %.off)
  %switch = icmp ult i8 %.off, 3
  br i1 %switch, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %spec.select.i = select i1 %enable, i16 1536, i16 0
  %call.i.i = tail call i32 @mv88e6xxx_phy_write(ptr noundef %chip, i32 noundef %lane, i32 noundef 1074044929, i16 noundef zeroext %spec.select.i) #6
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i.i, %sw.bb ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6393x_serdes_irq_enable(ptr noundef %chip, i32 noundef %port, i32 noundef %lane, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cmode1 = getelementptr %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 46, i32 %port, i32 10
  %0 = ptrtoint ptr %cmode1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cmode1, align 4
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.47)
  switch i8 %1, label %entry.cleanup_crit_edge [
    i8 10, label %entry.sw.bb_crit_edge
    i8 9, label %entry.sw.bb_crit_edge12
    i8 11, label %entry.sw.bb_crit_edge13
    i8 12, label %entry.sw.bb2_crit_edge
    i8 13, label %entry.sw.bb2_crit_edge14
  ]

entry.sw.bb2_crit_edge14:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb2

entry.sw.bb2_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb2

entry.sw.bb_crit_edge13:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.bb_crit_edge12:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge12, %entry.sw.bb_crit_edge13
  %spec.select.i = select i1 %enable, i16 1536, i16 0
  %call.i.i = tail call i32 @mv88e6xxx_phy_write(ptr noundef %chip, i32 noundef %lane, i32 noundef 1074044929, i16 noundef zeroext %spec.select.i) #6
  br label %cleanup

sw.bb2:                                           ; preds = %entry.sw.bb2_crit_edge, %entry.sw.bb2_crit_edge14
  %spec.select.i10 = select i1 %enable, i16 4, i16 0
  %conv2.i = and i32 %lane, 255
  %call.i.i11 = tail call i32 @mv88e6xxx_phy_write(ptr noundef %chip, i32 noundef %conv2.i, i32 noundef 1074040832, i16 noundef zeroext %spec.select.i10) #6
  br label %cleanup

cleanup:                                          ; preds = %sw.bb2, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i.i11, %sw.bb2 ], [ %call.i.i, %sw.bb ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6393x_serdes_irq_status(ptr noundef %chip, i32 noundef %port, i32 noundef %lane) local_unnamed_addr #0 align 64 {
entry:
  %status.i = alloca i16, align 2
  %bmsr.i = alloca i16, align 2
  %status = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cmode1 = getelementptr %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 46, i32 %port, i32 10
  %0 = ptrtoint ptr %cmode1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cmode1, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %status) #6
  %2 = ptrtoint ptr %status to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %status, align 2, !annotation !83
  %3 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.48)
  switch i8 %1, label %entry.cleanup_crit_edge [
    i8 10, label %entry.sw.bb_crit_edge
    i8 9, label %entry.sw.bb_crit_edge42
    i8 11, label %entry.sw.bb_crit_edge43
    i8 12, label %entry.sw.bb6_crit_edge
    i8 13, label %entry.sw.bb6_crit_edge44
  ]

entry.sw.bb6_crit_edge44:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb6

entry.sw.bb6_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb6

entry.sw.bb_crit_edge43:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.bb_crit_edge42:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge42, %entry.sw.bb_crit_edge43
  %call.i.i = call i32 @mv88e6xxx_phy_read(ptr noundef %chip, i32 noundef %lane, i32 noundef 1074044930, ptr noundef nonnull %status) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not, label %if.end, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %4 = ptrtoint ptr %status to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %status, align 2
  %6 = and i16 %5, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool3.not = icmp eq i16 %6, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.then4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then4:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %bmsr.i) #6
  %7 = ptrtoint ptr %bmsr.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 -1, ptr %bmsr.i, align 2, !annotation !83
  %call.i.i33 = call i32 @mv88e6xxx_phy_read(ptr noundef %chip, i32 noundef %lane, i32 noundef 1074012161, ptr noundef nonnull %bmsr.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i33)
  %tobool.not.i = icmp eq i32 %call.i.i33, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 3
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.18, i32 noundef %call.i.i33) #9
  br label %mv88e6390_serdes_irq_link_sgmii.exit

if.end.i:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  %ds.i = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 2
  %10 = ptrtoint ptr %ds.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ds.i, align 8
  %12 = ptrtoint ptr %bmsr.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %bmsr.i, align 2
  %14 = and i16 %13, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool1.i = icmp ne i16 %14, 0
  call void @dsa_port_phylink_mac_change(ptr noundef %11, i32 noundef %port, i1 noundef zeroext %tobool1.i) #6
  br label %mv88e6390_serdes_irq_link_sgmii.exit

mv88e6390_serdes_irq_link_sgmii.exit:             ; preds = %if.end.i, %do.end.i
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %bmsr.i) #6
  br label %cleanup

sw.bb6:                                           ; preds = %entry.sw.bb6_crit_edge, %entry.sw.bb6_crit_edge44
  %conv.i = and i32 %lane, 255
  %call.i.i34 = call i32 @mv88e6xxx_phy_read(ptr noundef %chip, i32 noundef %conv.i, i32 noundef 1074040833, ptr noundef nonnull %status) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i34)
  %tobool9.not = icmp eq i32 %call.i.i34, 0
  br i1 %tobool9.not, label %if.end11, label %sw.bb6.cleanup_crit_edge

sw.bb6.cleanup_crit_edge:                         ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end11:                                         ; preds = %sw.bb6
  %15 = ptrtoint ptr %status to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %status, align 2
  %17 = and i16 %16, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool14.not = icmp eq i16 %17, 0
  br i1 %tobool14.not, label %if.end11.cleanup_crit_edge, label %if.then15

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then15:                                        ; preds = %if.end11
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %status.i) #6
  %18 = ptrtoint ptr %status.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 -1, ptr %status.i, align 2, !annotation !83
  %call.i.i36 = call i32 @mv88e6xxx_phy_read(ptr noundef %chip, i32 noundef %conv.i, i32 noundef 1074008065, ptr noundef nonnull %status.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i36)
  %tobool.not.i37 = icmp eq i32 %call.i.i36, 0
  br i1 %tobool.not.i37, label %if.end.i41, label %do.end.i39

do.end.i39:                                       ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i38 = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 3
  %19 = ptrtoint ptr %dev.i38 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev.i38, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.29, i32 noundef %call.i.i36) #9
  br label %mv88e6393x_serdes_irq_link_10g.exit

if.end.i41:                                       ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #8
  %ds.i40 = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 2
  %21 = ptrtoint ptr %ds.i40 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ds.i40, align 8
  %23 = ptrtoint ptr %status.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %status.i, align 2
  %25 = and i16 %24, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %tobool2.i = icmp ne i16 %25, 0
  call void @dsa_port_phylink_mac_change(ptr noundef %22, i32 noundef %port, i1 noundef zeroext %tobool2.i) #6
  br label %mv88e6393x_serdes_irq_link_10g.exit

mv88e6393x_serdes_irq_link_10g.exit:              ; preds = %if.end.i41, %do.end.i39
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %status.i) #6
  br label %cleanup

cleanup:                                          ; preds = %mv88e6393x_serdes_irq_link_10g.exit, %if.end11.cleanup_crit_edge, %sw.bb6.cleanup_crit_edge, %mv88e6390_serdes_irq_link_sgmii.exit, %if.end.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb.cleanup_crit_edge ], [ %call.i.i34, %sw.bb6.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 1, %mv88e6393x_serdes_irq_link_10g.exit ], [ 0, %if.end11.cleanup_crit_edge ], [ 1, %mv88e6390_serdes_irq_link_sgmii.exit ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %status) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6390_serdes_irq_status(ptr noundef %chip, i32 noundef %port, i32 noundef %lane) local_unnamed_addr #0 align 64 {
entry:
  %bmsr.i = alloca i16, align 2
  %status = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cmode1 = getelementptr %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 46, i32 %port, i32 10
  %0 = ptrtoint ptr %cmode1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cmode1, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %status) #6
  %2 = ptrtoint ptr %status to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %status, align 2, !annotation !83
  %.off = add i8 %1, -9
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %.off)
  %switch = icmp ult i8 %.off, 3
  br i1 %switch, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %call.i.i = call i32 @mv88e6xxx_phy_read(ptr noundef %chip, i32 noundef %lane, i32 noundef 1074044930, ptr noundef nonnull %status) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not, label %if.end, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %3 = ptrtoint ptr %status to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %status, align 2
  %5 = and i16 %4, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool3.not = icmp eq i16 %5, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.then4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then4:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %bmsr.i) #6
  %6 = ptrtoint ptr %bmsr.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 -1, ptr %bmsr.i, align 2, !annotation !83
  %call.i.i14 = call i32 @mv88e6xxx_phy_read(ptr noundef %chip, i32 noundef %lane, i32 noundef 1074012161, ptr noundef nonnull %bmsr.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i14)
  %tobool.not.i = icmp eq i32 %call.i.i14, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 3
  %7 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.18, i32 noundef %call.i.i14) #9
  br label %mv88e6390_serdes_irq_link_sgmii.exit

if.end.i:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  %ds.i = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 2
  %9 = ptrtoint ptr %ds.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ds.i, align 8
  %11 = ptrtoint ptr %bmsr.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %bmsr.i, align 2
  %13 = and i16 %12, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool1.i = icmp ne i16 %13, 0
  call void @dsa_port_phylink_mac_change(ptr noundef %10, i32 noundef %port, i1 noundef zeroext %tobool1.i) #6
  br label %mv88e6390_serdes_irq_link_sgmii.exit

mv88e6390_serdes_irq_link_sgmii.exit:             ; preds = %if.end.i, %do.end.i
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %bmsr.i) #6
  br label %cleanup

cleanup:                                          ; preds = %mv88e6390_serdes_irq_link_sgmii.exit, %if.end.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 1, %mv88e6390_serdes_irq_link_sgmii.exit ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %status) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6390_serdes_irq_mapping(ptr nocapture noundef readonly %chip, i32 noundef %port) local_unnamed_addr #0 align 64 {
entry:
  %irq.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %domain = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 19, i32 2
  %0 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %domain, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq.i) #6
  %2 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %irq.i, align 4, !annotation !83
  %call.i = call ptr @__irq_resolve_mapping(ptr noundef %1, i32 noundef %port, ptr noundef nonnull %irq.i) #6
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.irq_find_mapping.exit_crit_edge, label %if.then.i

entry.irq_find_mapping.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %irq_find_mapping.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %irq.i, align 4
  br label %irq_find_mapping.exit

irq_find_mapping.exit:                            ; preds = %if.then.i, %entry.irq_find_mapping.exit_crit_edge
  %retval.0.i = phi i32 [ %4, %if.then.i ], [ 0, %entry.irq_find_mapping.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i) #6
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6390_serdes_get_regs_len(ptr noundef %chip, i32 noundef %port) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 8
  %ops.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops.i, align 4
  %serdes_get_lane.i = getelementptr inbounds %struct.mv88e6xxx_ops, ptr %3, i32 0, i32 45
  %4 = ptrtoint ptr %serdes_get_lane.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %serdes_get_lane.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %entry.mv88e6xxx_serdes_get_lane.exit.thread_crit_edge, label %mv88e6xxx_serdes_get_lane.exit

entry.mv88e6xxx_serdes_get_lane.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %mv88e6xxx_serdes_get_lane.exit.thread

mv88e6xxx_serdes_get_lane.exit:                   ; preds = %entry
  %call.i = tail call i32 %5(ptr noundef %chip, i32 noundef %port) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %mv88e6xxx_serdes_get_lane.exit.mv88e6xxx_serdes_get_lane.exit.thread_crit_edge, label %mv88e6xxx_serdes_get_lane.exit._crit_edge

mv88e6xxx_serdes_get_lane.exit._crit_edge:        ; preds = %mv88e6xxx_serdes_get_lane.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %6

mv88e6xxx_serdes_get_lane.exit.mv88e6xxx_serdes_get_lane.exit.thread_crit_edge: ; preds = %mv88e6xxx_serdes_get_lane.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %mv88e6xxx_serdes_get_lane.exit.thread

mv88e6xxx_serdes_get_lane.exit.thread:            ; preds = %mv88e6xxx_serdes_get_lane.exit.mv88e6xxx_serdes_get_lane.exit.thread_crit_edge, %entry.mv88e6xxx_serdes_get_lane.exit.thread_crit_edge
  br label %6

6:                                                ; preds = %mv88e6xxx_serdes_get_lane.exit.thread, %mv88e6xxx_serdes_get_lane.exit._crit_edge
  %7 = phi i32 [ 0, %mv88e6xxx_serdes_get_lane.exit.thread ], [ 174, %mv88e6xxx_serdes_get_lane.exit._crit_edge ]
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mv88e6390_serdes_get_regs(ptr noundef %chip, i32 noundef %port, ptr nocapture noundef writeonly %_p) local_unnamed_addr #0 align 64 {
entry:
  %reg = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg) #6
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %reg, align 2, !annotation !83
  %1 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %chip, align 8
  %ops.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %2, i32 0, i32 22
  %3 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ops.i, align 4
  %serdes_get_lane.i = getelementptr inbounds %struct.mv88e6xxx_ops, ptr %4, i32 0, i32 45
  %5 = ptrtoint ptr %serdes_get_lane.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %serdes_get_lane.i, align 4
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %mv88e6xxx_serdes_get_lane.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

mv88e6xxx_serdes_get_lane.exit:                   ; preds = %entry
  %call.i = tail call i32 %6(ptr noundef %chip, i32 noundef %port) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %mv88e6xxx_serdes_get_lane.exit.cleanup_crit_edge, label %mv88e6xxx_serdes_get_lane.exit.for.body_crit_edge

mv88e6xxx_serdes_get_lane.exit.for.body_crit_edge: ; preds = %mv88e6xxx_serdes_get_lane.exit
  br label %for.body

mv88e6xxx_serdes_get_lane.exit.cleanup_crit_edge: ; preds = %mv88e6xxx_serdes_get_lane.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %mv88e6xxx_serdes_get_lane.exit.for.body_crit_edge
  %i.018 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %mv88e6xxx_serdes_get_lane.exit.for.body_crit_edge ]
  %arrayidx = getelementptr [87 x i16], ptr @mv88e6390_serdes_regs, i32 0, i32 %i.018
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %8 to i32
  %or1.i = or i32 %conv, 1074003968
  %call.i15 = call i32 @mv88e6xxx_phy_read(ptr noundef %chip, i32 noundef %call.i, i32 noundef %or1.i, ptr noundef nonnull %reg) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i15)
  %tobool.not = icmp eq i32 %call.i15, 0
  br i1 %tobool.not, label %if.then3, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then3:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %reg to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %reg, align 2
  %arrayidx4 = getelementptr i16, ptr %_p, i32 %i.018
  %11 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %arrayidx4, align 2
  br label %for.inc

for.inc:                                          ; preds = %if.then3, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.018, 1
  %exitcond.not = icmp eq i32 %inc, 87
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %mv88e6xxx_serdes_get_lane.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6393x_serdes_setup_errata(ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @mv88e6393x_serdes_erratum_4_6(ptr noundef %chip, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc i32 @mv88e6393x_serdes_erratum_4_6(ptr noundef %chip, i32 noundef 9)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call5 = tail call fastcc i32 @mv88e6393x_serdes_erratum_4_6(ptr noundef %chip, i32 noundef 10)
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end4 ], [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mv88e6393x_serdes_erratum_4_6(ptr noundef %chip, i32 noundef %lane) unnamed_addr #0 align 64 {
entry:
  %reg.i = alloca i16, align 2
  %val.i = alloca i16, align 2
  %reg = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg) #6
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %reg, align 2, !annotation !83
  %call.i = call i32 @mv88e6xxx_phy_read(ptr noundef %chip, i32 noundef %lane, i32 noundef 1074065410, ptr noundef nonnull %reg) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %reg to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %reg, align 2
  %3 = and i16 %2, 32735
  %4 = or i16 %3, -32768
  store i16 %4, ptr %reg, align 2
  %call.i25 = call i32 @mv88e6xxx_phy_write(ptr noundef %chip, i32 noundef %lane, i32 noundef 1074065410, i16 noundef zeroext %4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i25)
  %tobool5.not = icmp eq i32 %call.i25, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i) #6
  %5 = ptrtoint ptr %val.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 -1, ptr %val.i, align 2, !annotation !83
  %call.i.i = call i32 @mv88e6xxx_phy_read(ptr noundef %chip, i32 noundef %lane, i32 noundef 1074012160, ptr noundef nonnull %val.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %mv88e6390_serdes_power_sgmii.exit.thread32

mv88e6390_serdes_power_sgmii.exit.thread32:       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i) #6
  br label %cleanup

if.end.i:                                         ; preds = %if.end7
  %6 = ptrtoint ptr %val.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %val.i, align 2
  %8 = or i16 %7, 2048
  call void @__sanitizer_cov_trace_cmp2(i16 %7, i16 %8)
  %cmp.not.i = icmp eq i16 %7, %8
  br i1 %cmp.not.i, label %mv88e6390_serdes_power_sgmii.exit.thread, label %mv88e6390_serdes_power_sgmii.exit

mv88e6390_serdes_power_sgmii.exit.thread:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i) #6
  br label %if.end11

mv88e6390_serdes_power_sgmii.exit:                ; preds = %if.end.i
  %call.i20.i = call i32 @mv88e6xxx_phy_write(ptr noundef %chip, i32 noundef %lane, i32 noundef 1074012160, i16 noundef zeroext %8) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i20.i)
  %tobool9.not = icmp eq i32 %call.i20.i, 0
  br i1 %tobool9.not, label %mv88e6390_serdes_power_sgmii.exit.if.end11_crit_edge, label %mv88e6390_serdes_power_sgmii.exit.cleanup_crit_edge

mv88e6390_serdes_power_sgmii.exit.cleanup_crit_edge: ; preds = %mv88e6390_serdes_power_sgmii.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

mv88e6390_serdes_power_sgmii.exit.if.end11_crit_edge: ; preds = %mv88e6390_serdes_power_sgmii.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.end11:                                         ; preds = %mv88e6390_serdes_power_sgmii.exit.if.end11_crit_edge, %mv88e6390_serdes_power_sgmii.exit.thread
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg.i) #6
  %9 = ptrtoint ptr %reg.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 -1, ptr %reg.i, align 2, !annotation !83
  %call.i.i26 = call i32 @mv88e6xxx_phy_read(ptr noundef %chip, i32 noundef %lane, i32 noundef 1074065411, ptr noundef nonnull %reg.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i26)
  %tobool.not.i27 = icmp eq i32 %call.i.i26, 0
  br i1 %tobool.not.i27, label %if.end.i28, label %if.end11.mv88e6393x_serdes_power_lane.exit_crit_edge

if.end11.mv88e6393x_serdes_power_lane.exit_crit_edge: ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %mv88e6393x_serdes_power_lane.exit

if.end.i28:                                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %reg.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %reg.i, align 2
  %storemerge.i = or i16 %11, 768
  store i16 %storemerge.i, ptr %reg.i, align 2
  %call.i12.i = call i32 @mv88e6xxx_phy_write(ptr noundef %chip, i32 noundef %lane, i32 noundef 1074065411, i16 noundef zeroext %storemerge.i) #6
  br label %mv88e6393x_serdes_power_lane.exit

mv88e6393x_serdes_power_lane.exit:                ; preds = %if.end.i28, %if.end11.mv88e6393x_serdes_power_lane.exit_crit_edge
  %retval.0.i29 = phi i32 [ %call.i12.i, %if.end.i28 ], [ %call.i.i26, %if.end11.mv88e6393x_serdes_power_lane.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i) #6
  br label %cleanup

cleanup:                                          ; preds = %mv88e6393x_serdes_power_lane.exit, %mv88e6390_serdes_power_sgmii.exit.cleanup_crit_edge, %mv88e6390_serdes_power_sgmii.exit.thread32, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i29, %mv88e6393x_serdes_power_lane.exit ], [ %call.i, %entry.cleanup_crit_edge ], [ %call.i25, %if.end.cleanup_crit_edge ], [ %call.i20.i, %mv88e6390_serdes_power_sgmii.exit.cleanup_crit_edge ], [ %call.i.i, %mv88e6390_serdes_power_sgmii.exit.thread32 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6393x_serdes_power(ptr noundef %chip, i32 noundef %port, i32 noundef %lane, i1 noundef zeroext %on) local_unnamed_addr #0 align 64 {
entry:
  %reg.i113 = alloca i16, align 2
  %reg.i105 = alloca i16, align 2
  %val.i96 = alloca i16, align 2
  %val.i90 = alloca i16, align 2
  %reg.i85 = alloca i16, align 2
  %reg.i79 = alloca i16, align 2
  %reg.i75 = alloca i16, align 2
  %reg.i = alloca i16, align 2
  %pcs.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cmode1 = getelementptr %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 46, i32 %port, i32 10
  %0 = ptrtoint ptr %cmode1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cmode1, align 4
  %2 = zext i32 %port to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %port, label %entry.cleanup_crit_edge [
    i32 0, label %entry.if.end_crit_edge
    i32 9, label %entry.if.end_crit_edge143
    i32 10, label %entry.if.end_crit_edge144
  ]

entry.if.end_crit_edge144:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

entry.if.end_crit_edge143:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge143, %entry.if.end_crit_edge144
  br i1 %on, label %if.then5, label %if.end.if.end21_crit_edge

if.end.if.end21_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

if.then5:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg.i) #6
  %3 = ptrtoint ptr %reg.i to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 -1, ptr %reg.i, align 2, !annotation !83
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %pcs.i) #6
  %4 = ptrtoint ptr %pcs.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %pcs.i, align 2, !annotation !83
  %call.i.i = call i32 @mv88e6xxx_phy_read(ptr noundef %chip, i32 noundef %lane, i32 noundef 1074065410, ptr noundef nonnull %pcs.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then5.mv88e6393x_serdes_erratum_4_8.exit.thread_crit_edge

if.then5.mv88e6393x_serdes_erratum_4_8.exit.thread_crit_edge: ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  br label %mv88e6393x_serdes_erratum_4_8.exit.thread

if.end.i:                                         ; preds = %if.then5
  %5 = ptrtoint ptr %pcs.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %pcs.i, align 2
  %7 = and i16 %6, 7
  store i16 %7, ptr %pcs.i, align 2
  %call.i32.i = call i32 @mv88e6xxx_phy_read(ptr noundef %chip, i32 noundef %lane, i32 noundef 1074065524, ptr noundef nonnull %reg.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i32.i)
  %tobool3.not.i = icmp eq i32 %call.i32.i, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %if.end.i.mv88e6393x_serdes_erratum_4_8.exit.thread_crit_edge

if.end.i.mv88e6393x_serdes_erratum_4_8.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mv88e6393x_serdes_erratum_4_8.exit.thread

if.end5.i:                                        ; preds = %if.end.i
  %8 = ptrtoint ptr %pcs.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %pcs.i, align 2
  %10 = zext i16 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.50)
  switch i16 %9, label %if.else.i [
    i16 0, label %if.end5.i.if.then15.i_crit_edge
    i16 2, label %if.end5.i.if.then15.i_crit_edge145
    i16 3, label %if.end5.i.if.then15.i_crit_edge146
  ]

if.end5.i.if.then15.i_crit_edge146:               ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then15.i

if.end5.i.if.then15.i_crit_edge145:               ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then15.i

if.end5.i.if.then15.i_crit_edge:                  ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then15.i

if.then15.i:                                      ; preds = %if.end5.i.if.then15.i_crit_edge, %if.end5.i.if.then15.i_crit_edge145, %if.end5.i.if.then15.i_crit_edge146
  %11 = ptrtoint ptr %reg.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %reg.i, align 2
  %13 = or i16 %12, 16384
  br label %mv88e6393x_serdes_erratum_4_8.exit

if.else.i:                                        ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %reg.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %reg.i, align 2
  %16 = and i16 %15, -16385
  br label %mv88e6393x_serdes_erratum_4_8.exit

mv88e6393x_serdes_erratum_4_8.exit.thread:        ; preds = %if.end.i.mv88e6393x_serdes_erratum_4_8.exit.thread_crit_edge, %if.then5.mv88e6393x_serdes_erratum_4_8.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call.i32.i, %if.end.i.mv88e6393x_serdes_erratum_4_8.exit.thread_crit_edge ], [ %call.i.i, %if.then5.mv88e6393x_serdes_erratum_4_8.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %pcs.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i) #6
  br label %cleanup

mv88e6393x_serdes_erratum_4_8.exit:               ; preds = %if.else.i, %if.then15.i
  %storemerge.i = phi i16 [ %16, %if.else.i ], [ %13, %if.then15.i ]
  %17 = ptrtoint ptr %reg.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %storemerge.i, ptr %reg.i, align 2
  %call.i33.i = call i32 @mv88e6xxx_phy_write(ptr noundef %chip, i32 noundef %lane, i32 noundef 1074065524, i16 noundef zeroext %storemerge.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %pcs.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i33.i)
  %tobool6.not = icmp eq i32 %call.i33.i, 0
  br i1 %tobool6.not, label %if.end8, label %mv88e6393x_serdes_erratum_4_8.exit.cleanup_crit_edge

mv88e6393x_serdes_erratum_4_8.exit.cleanup_crit_edge: ; preds = %mv88e6393x_serdes_erratum_4_8.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8:                                          ; preds = %mv88e6393x_serdes_erratum_4_8.exit
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg.i75) #6
  %18 = ptrtoint ptr %reg.i75 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 -1, ptr %reg.i75, align 2, !annotation !83
  call void @__sanitizer_cov_trace_const_cmp1(i8 13, i8 %1)
  %cmp.not.i = icmp eq i8 %1, 13
  br i1 %cmp.not.i, label %if.end8.for.body.i_crit_edge, label %if.end8.if.end12_crit_edge

if.end8.if.end12_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.end8.for.body.i_crit_edge:                     ; preds = %if.end8
  br label %for.body.i

for.cond.i:                                       ; preds = %if.end9.i
  %inc.i = add nuw nsw i32 %i.047.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 7
  br i1 %exitcond.not.i, label %for.cond.i.if.end12_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.cond.i.if.end12_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %if.end8.for.body.i_crit_edge
  %i.047.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %if.end8.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [7 x %struct.anon.168], ptr @mv88e6393x_serdes_erratum_5_2.fixes, i32 0, i32 %i.047.i
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %arrayidx.i, align 2
  %conv4.i = zext i16 %20 to i32
  %reg6.i = getelementptr [7 x %struct.anon.168], ptr @mv88e6393x_serdes_erratum_5_2.fixes, i32 0, i32 %i.047.i, i32 1
  %21 = ptrtoint ptr %reg6.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %reg6.i, align 2
  %conv7.i = zext i16 %22 to i32
  %shl.i.i = shl nuw i32 %conv4.i, 16
  %or.i.i = or i32 %shl.i.i, %conv7.i
  %or1.i.i = or i32 %or.i.i, 1073741824
  %call.i.i76 = call i32 @mv88e6xxx_phy_read(ptr noundef %chip, i32 noundef %lane, i32 noundef %or1.i.i, ptr noundef nonnull %reg.i75) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i76)
  %tobool.not.i77 = icmp eq i32 %call.i.i76, 0
  br i1 %tobool.not.i77, label %if.end9.i, label %for.body.i.mv88e6393x_serdes_erratum_5_2.exit_crit_edge

for.body.i.mv88e6393x_serdes_erratum_5_2.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mv88e6393x_serdes_erratum_5_2.exit

if.end9.i:                                        ; preds = %for.body.i
  %mask.i = getelementptr [7 x %struct.anon.168], ptr @mv88e6393x_serdes_erratum_5_2.fixes, i32 0, i32 %i.047.i, i32 3
  %23 = ptrtoint ptr %mask.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %mask.i, align 2
  %neg.i = xor i16 %24, -1
  %25 = ptrtoint ptr %reg.i75 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %reg.i75, align 2
  %and.i = and i16 %26, %neg.i
  %val.i = getelementptr [7 x %struct.anon.168], ptr @mv88e6393x_serdes_erratum_5_2.fixes, i32 0, i32 %i.047.i, i32 2
  %27 = ptrtoint ptr %val.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %val.i, align 2
  %or42.i = or i16 %28, %and.i
  store i16 %or42.i, ptr %reg.i75, align 2
  %call.i46.i = call i32 @mv88e6xxx_phy_write(ptr noundef %chip, i32 noundef %lane, i32 noundef %or1.i.i, i16 noundef zeroext %or42.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i46.i)
  %tobool25.not.i = icmp eq i32 %call.i46.i, 0
  br i1 %tobool25.not.i, label %for.cond.i, label %if.end9.i.mv88e6393x_serdes_erratum_5_2.exit_crit_edge

if.end9.i.mv88e6393x_serdes_erratum_5_2.exit_crit_edge: ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mv88e6393x_serdes_erratum_5_2.exit

mv88e6393x_serdes_erratum_5_2.exit:               ; preds = %if.end9.i.mv88e6393x_serdes_erratum_5_2.exit_crit_edge, %for.body.i.mv88e6393x_serdes_erratum_5_2.exit_crit_edge
  %retval.0.i78 = phi i32 [ %call.i46.i, %if.end9.i.mv88e6393x_serdes_erratum_5_2.exit_crit_edge ], [ %call.i.i76, %for.body.i.mv88e6393x_serdes_erratum_5_2.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i75) #6
  br label %cleanup

if.end12:                                         ; preds = %for.cond.i.if.end12_crit_edge, %if.end8.if.end12_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i75) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg.i79) #6
  %29 = ptrtoint ptr %reg.i79 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 -1, ptr %reg.i79, align 2, !annotation !83
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %1)
  %cmp.not.i80 = icmp eq i8 %1, 11
  br i1 %cmp.not.i80, label %if.end.i83, label %mv88e6393x_serdes_fix_2500basex_an.exit.thread131

mv88e6393x_serdes_fix_2500basex_an.exit.thread131: ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i79) #6
  br label %if.end16

if.end.i83:                                       ; preds = %if.end12
  %call.i.i81 = call i32 @mv88e6xxx_phy_read(ptr noundef %chip, i32 noundef %lane, i32 noundef 1074065410, ptr noundef nonnull %reg.i79) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i81)
  %tobool.not.i82 = icmp eq i32 %call.i.i81, 0
  br i1 %tobool.not.i82, label %if.end3.i, label %if.end.i83.mv88e6393x_serdes_fix_2500basex_an.exit.thread_crit_edge

if.end.i83.mv88e6393x_serdes_fix_2500basex_an.exit.thread_crit_edge: ; preds = %if.end.i83
  call void @__sanitizer_cov_trace_pc() #8
  br label %mv88e6393x_serdes_fix_2500basex_an.exit.thread

if.end3.i:                                        ; preds = %if.end.i83
  %30 = ptrtoint ptr %reg.i79 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %reg.i79, align 2
  %32 = and i16 %31, 32752
  %33 = or i16 %32, -32760
  store i16 %33, ptr %reg.i79, align 2
  %call.i35.i = call i32 @mv88e6xxx_phy_write(ptr noundef %chip, i32 noundef %lane, i32 noundef 1074065410, i16 noundef zeroext %33) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i35.i)
  %tobool18.not.i = icmp eq i32 %call.i35.i, 0
  br i1 %tobool18.not.i, label %mv88e6393x_serdes_fix_2500basex_an.exit, label %if.end3.i.mv88e6393x_serdes_fix_2500basex_an.exit.thread_crit_edge

if.end3.i.mv88e6393x_serdes_fix_2500basex_an.exit.thread_crit_edge: ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mv88e6393x_serdes_fix_2500basex_an.exit.thread

mv88e6393x_serdes_fix_2500basex_an.exit.thread:   ; preds = %if.end3.i.mv88e6393x_serdes_fix_2500basex_an.exit.thread_crit_edge, %if.end.i83.mv88e6393x_serdes_fix_2500basex_an.exit.thread_crit_edge
  %retval.0.i84.ph = phi i32 [ %call.i35.i, %if.end3.i.mv88e6393x_serdes_fix_2500basex_an.exit.thread_crit_edge ], [ %call.i.i81, %if.end.i83.mv88e6393x_serdes_fix_2500basex_an.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i79) #6
  br label %cleanup

mv88e6393x_serdes_fix_2500basex_an.exit:          ; preds = %if.end3.i
  %call.i36.i = call i32 @mv88e6xxx_phy_write(ptr noundef %chip, i32 noundef %lane, i32 noundef 1075740672, i16 noundef zeroext 88) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i79) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i36.i)
  %tobool14.not = icmp eq i32 %call.i36.i, 0
  br i1 %tobool14.not, label %mv88e6393x_serdes_fix_2500basex_an.exit.if.end16_crit_edge, label %mv88e6393x_serdes_fix_2500basex_an.exit.cleanup_crit_edge

mv88e6393x_serdes_fix_2500basex_an.exit.cleanup_crit_edge: ; preds = %mv88e6393x_serdes_fix_2500basex_an.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

mv88e6393x_serdes_fix_2500basex_an.exit.if.end16_crit_edge: ; preds = %mv88e6393x_serdes_fix_2500basex_an.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

if.end16:                                         ; preds = %mv88e6393x_serdes_fix_2500basex_an.exit.if.end16_crit_edge, %mv88e6393x_serdes_fix_2500basex_an.exit.thread131
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg.i85) #6
  %34 = ptrtoint ptr %reg.i85 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 -1, ptr %reg.i85, align 2, !annotation !83
  %call.i.i86 = call i32 @mv88e6xxx_phy_read(ptr noundef %chip, i32 noundef %lane, i32 noundef 1074065411, ptr noundef nonnull %reg.i85) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i86)
  %tobool.not.i87 = icmp eq i32 %call.i.i86, 0
  br i1 %tobool.not.i87, label %mv88e6393x_serdes_power_lane.exit, label %mv88e6393x_serdes_power_lane.exit.thread

mv88e6393x_serdes_power_lane.exit.thread:         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i85) #6
  br label %cleanup

mv88e6393x_serdes_power_lane.exit:                ; preds = %if.end16
  %35 = ptrtoint ptr %reg.i85 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %reg.i85, align 2
  %37 = and i16 %36, -769
  store i16 %37, ptr %reg.i85, align 2
  %call.i12.i = call i32 @mv88e6xxx_phy_write(ptr noundef %chip, i32 noundef %lane, i32 noundef 1074065411, i16 noundef zeroext %37) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i85) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i)
  %tobool18.not = icmp eq i32 %call.i12.i, 0
  br i1 %tobool18.not, label %mv88e6393x_serdes_power_lane.exit.if.end21_crit_edge, label %mv88e6393x_serdes_power_lane.exit.cleanup_crit_edge

mv88e6393x_serdes_power_lane.exit.cleanup_crit_edge: ; preds = %mv88e6393x_serdes_power_lane.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

mv88e6393x_serdes_power_lane.exit.if.end21_crit_edge: ; preds = %mv88e6393x_serdes_power_lane.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

if.end21:                                         ; preds = %mv88e6393x_serdes_power_lane.exit.if.end21_crit_edge, %if.end.if.end21_crit_edge
  %38 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.51)
  switch i8 %1, label %if.end21.cleanup_crit_edge [
    i8 10, label %if.end21.sw.bb_crit_edge
    i8 9, label %if.end21.sw.bb_crit_edge147
    i8 11, label %if.end21.sw.bb_crit_edge148
    i8 12, label %if.end21.sw.bb24_crit_edge
    i8 13, label %if.end21.sw.bb24_crit_edge149
  ]

if.end21.sw.bb24_crit_edge149:                    ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb24

if.end21.sw.bb24_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb24

if.end21.sw.bb_crit_edge148:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.end21.sw.bb_crit_edge147:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.end21.sw.bb_crit_edge:                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %if.end21.sw.bb_crit_edge, %if.end21.sw.bb_crit_edge147, %if.end21.sw.bb_crit_edge148
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i90) #6
  %39 = ptrtoint ptr %val.i90 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 -1, ptr %val.i90, align 2, !annotation !83
  %call.i.i91 = call i32 @mv88e6xxx_phy_read(ptr noundef %chip, i32 noundef %lane, i32 noundef 1074012160, ptr noundef nonnull %val.i90) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i91)
  %tobool.not.i92 = icmp eq i32 %call.i.i91, 0
  br i1 %tobool.not.i92, label %if.end.i94, label %sw.bb.mv88e6390_serdes_power_sgmii.exit_crit_edge

sw.bb.mv88e6390_serdes_power_sgmii.exit_crit_edge: ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %mv88e6390_serdes_power_sgmii.exit

if.end.i94:                                       ; preds = %sw.bb
  %40 = ptrtoint ptr %val.i90 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %val.i90, align 2
  %42 = and i16 %41, 14335
  %43 = or i16 %41, 2048
  %new_val.0.i = select i1 %on, i16 %42, i16 %43
  call void @__sanitizer_cov_trace_cmp2(i16 %41, i16 %new_val.0.i)
  %cmp.not.i93 = icmp eq i16 %41, %new_val.0.i
  br i1 %cmp.not.i93, label %if.end.i94.mv88e6390_serdes_power_sgmii.exit_crit_edge, label %if.then10.i

if.end.i94.mv88e6390_serdes_power_sgmii.exit_crit_edge: ; preds = %if.end.i94
  call void @__sanitizer_cov_trace_pc() #8
  br label %mv88e6390_serdes_power_sgmii.exit

if.then10.i:                                      ; preds = %if.end.i94
  call void @__sanitizer_cov_trace_pc() #8
  %call.i20.i = call i32 @mv88e6xxx_phy_write(ptr noundef %chip, i32 noundef %lane, i32 noundef 1074012160, i16 noundef zeroext %new_val.0.i) #6
  br label %mv88e6390_serdes_power_sgmii.exit

mv88e6390_serdes_power_sgmii.exit:                ; preds = %if.then10.i, %if.end.i94.mv88e6390_serdes_power_sgmii.exit_crit_edge, %sw.bb.mv88e6390_serdes_power_sgmii.exit_crit_edge
  %retval.0.i95 = phi i32 [ %call.i.i91, %sw.bb.mv88e6390_serdes_power_sgmii.exit_crit_edge ], [ %call.i20.i, %if.then10.i ], [ 0, %if.end.i94.mv88e6390_serdes_power_sgmii.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i90) #6
  br label %sw.epilog

sw.bb24:                                          ; preds = %if.end21.sw.bb24_crit_edge, %if.end21.sw.bb24_crit_edge149
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i96) #6
  %44 = ptrtoint ptr %val.i96 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 -1, ptr %val.i96, align 2, !annotation !83
  %call.i.i97 = call i32 @mv88e6xxx_phy_read(ptr noundef %chip, i32 noundef %lane, i32 noundef 1074008064, ptr noundef nonnull %val.i96) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i97)
  %tobool.not.i98 = icmp eq i32 %call.i.i97, 0
  br i1 %tobool.not.i98, label %if.end.i101, label %sw.bb24.mv88e6390_serdes_power_10g.exit_crit_edge

sw.bb24.mv88e6390_serdes_power_10g.exit_crit_edge: ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #8
  br label %mv88e6390_serdes_power_10g.exit

if.end.i101:                                      ; preds = %sw.bb24
  %45 = ptrtoint ptr %val.i96 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %val.i96, align 2
  %47 = and i16 %46, 14335
  %48 = or i16 %46, 2048
  %new_val.0.i99 = select i1 %on, i16 %47, i16 %48
  call void @__sanitizer_cov_trace_cmp2(i16 %46, i16 %new_val.0.i99)
  %cmp.not.i100 = icmp eq i16 %46, %new_val.0.i99
  br i1 %cmp.not.i100, label %if.end.i101.mv88e6390_serdes_power_10g.exit_crit_edge, label %if.then10.i103

if.end.i101.mv88e6390_serdes_power_10g.exit_crit_edge: ; preds = %if.end.i101
  call void @__sanitizer_cov_trace_pc() #8
  br label %mv88e6390_serdes_power_10g.exit

if.then10.i103:                                   ; preds = %if.end.i101
  call void @__sanitizer_cov_trace_pc() #8
  %call.i20.i102 = call i32 @mv88e6xxx_phy_write(ptr noundef %chip, i32 noundef %lane, i32 noundef 1074008064, i16 noundef zeroext %new_val.0.i99) #6
  br label %mv88e6390_serdes_power_10g.exit

mv88e6390_serdes_power_10g.exit:                  ; preds = %if.then10.i103, %if.end.i101.mv88e6390_serdes_power_10g.exit_crit_edge, %sw.bb24.mv88e6390_serdes_power_10g.exit_crit_edge
  %retval.0.i104 = phi i32 [ %call.i.i97, %sw.bb24.mv88e6390_serdes_power_10g.exit_crit_edge ], [ %call.i20.i102, %if.then10.i103 ], [ 0, %if.end.i101.mv88e6390_serdes_power_10g.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i96) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %mv88e6390_serdes_power_10g.exit, %mv88e6390_serdes_power_sgmii.exit
  %err.0 = phi i32 [ %retval.0.i104, %mv88e6390_serdes_power_10g.exit ], [ %retval.0.i95, %mv88e6390_serdes_power_sgmii.exit ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool27.not = icmp ne i32 %err.0, 0
  %brmerge = or i1 %tobool27.not, %on
  br i1 %brmerge, label %sw.epilog.cleanup_crit_edge, label %if.then31

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then31:                                        ; preds = %sw.epilog
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg.i105) #6
  %49 = ptrtoint ptr %reg.i105 to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 -1, ptr %reg.i105, align 2, !annotation !83
  %call.i.i106 = call i32 @mv88e6xxx_phy_read(ptr noundef %chip, i32 noundef %lane, i32 noundef 1074065411, ptr noundef nonnull %reg.i105) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i106)
  %tobool.not.i107 = icmp eq i32 %call.i.i106, 0
  br i1 %tobool.not.i107, label %mv88e6393x_serdes_power_lane.exit112, label %mv88e6393x_serdes_power_lane.exit112.thread

mv88e6393x_serdes_power_lane.exit112.thread:      ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i105) #6
  br label %cleanup

mv88e6393x_serdes_power_lane.exit112:             ; preds = %if.then31
  %50 = ptrtoint ptr %reg.i105 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %reg.i105, align 2
  %storemerge.i108 = or i16 %51, 768
  store i16 %storemerge.i108, ptr %reg.i105, align 2
  %call.i12.i109 = call i32 @mv88e6xxx_phy_write(ptr noundef %chip, i32 noundef %lane, i32 noundef 1074065411, i16 noundef zeroext %storemerge.i108) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i105) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i109)
  %tobool33.not = icmp eq i32 %call.i12.i109, 0
  br i1 %tobool33.not, label %if.end35, label %mv88e6393x_serdes_power_lane.exit112.cleanup_crit_edge

mv88e6393x_serdes_power_lane.exit112.cleanup_crit_edge: ; preds = %mv88e6393x_serdes_power_lane.exit112
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end35:                                         ; preds = %mv88e6393x_serdes_power_lane.exit112
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg.i113) #6
  %52 = ptrtoint ptr %reg.i113 to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 -1, ptr %reg.i113, align 2, !annotation !83
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %1)
  %cmp.not.i114 = icmp eq i8 %1, 11
  br i1 %cmp.not.i114, label %if.end.i117, label %if.end35.mv88e6393x_serdes_fix_2500basex_an.exit124_crit_edge

if.end35.mv88e6393x_serdes_fix_2500basex_an.exit124_crit_edge: ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  br label %mv88e6393x_serdes_fix_2500basex_an.exit124

if.end.i117:                                      ; preds = %if.end35
  %call.i.i115 = call i32 @mv88e6xxx_phy_read(ptr noundef %chip, i32 noundef %lane, i32 noundef 1074065410, ptr noundef nonnull %reg.i113) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i115)
  %tobool.not.i116 = icmp eq i32 %call.i.i115, 0
  br i1 %tobool.not.i116, label %if.end3.i120, label %if.end.i117.mv88e6393x_serdes_fix_2500basex_an.exit124_crit_edge

if.end.i117.mv88e6393x_serdes_fix_2500basex_an.exit124_crit_edge: ; preds = %if.end.i117
  call void @__sanitizer_cov_trace_pc() #8
  br label %mv88e6393x_serdes_fix_2500basex_an.exit124

if.end3.i120:                                     ; preds = %if.end.i117
  %53 = ptrtoint ptr %reg.i113 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %reg.i113, align 2
  %55 = and i16 %54, 32752
  %56 = or i16 %55, -32767
  store i16 %56, ptr %reg.i113, align 2
  %call.i35.i118 = call i32 @mv88e6xxx_phy_write(ptr noundef %chip, i32 noundef %lane, i32 noundef 1074065410, i16 noundef zeroext %56) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i35.i118)
  %tobool18.not.i119 = icmp eq i32 %call.i35.i118, 0
  br i1 %tobool18.not.i119, label %if.end20.i122, label %if.end3.i120.mv88e6393x_serdes_fix_2500basex_an.exit124_crit_edge

if.end3.i120.mv88e6393x_serdes_fix_2500basex_an.exit124_crit_edge: ; preds = %if.end3.i120
  call void @__sanitizer_cov_trace_pc() #8
  br label %mv88e6393x_serdes_fix_2500basex_an.exit124

if.end20.i122:                                    ; preds = %if.end3.i120
  call void @__sanitizer_cov_trace_pc() #8
  %call.i36.i121 = call i32 @mv88e6xxx_phy_write(ptr noundef %chip, i32 noundef %lane, i32 noundef 1075740672, i16 noundef zeroext 88) #6
  br label %mv88e6393x_serdes_fix_2500basex_an.exit124

mv88e6393x_serdes_fix_2500basex_an.exit124:       ; preds = %if.end20.i122, %if.end3.i120.mv88e6393x_serdes_fix_2500basex_an.exit124_crit_edge, %if.end.i117.mv88e6393x_serdes_fix_2500basex_an.exit124_crit_edge, %if.end35.mv88e6393x_serdes_fix_2500basex_an.exit124_crit_edge
  %retval.0.i123 = phi i32 [ 0, %if.end35.mv88e6393x_serdes_fix_2500basex_an.exit124_crit_edge ], [ %call.i.i115, %if.end.i117.mv88e6393x_serdes_fix_2500basex_an.exit124_crit_edge ], [ %call.i35.i118, %if.end3.i120.mv88e6393x_serdes_fix_2500basex_an.exit124_crit_edge ], [ %call.i36.i121, %if.end20.i122 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i113) #6
  br label %cleanup

cleanup:                                          ; preds = %mv88e6393x_serdes_fix_2500basex_an.exit124, %mv88e6393x_serdes_power_lane.exit112.cleanup_crit_edge, %mv88e6393x_serdes_power_lane.exit112.thread, %sw.epilog.cleanup_crit_edge, %if.end21.cleanup_crit_edge, %mv88e6393x_serdes_power_lane.exit.cleanup_crit_edge, %mv88e6393x_serdes_power_lane.exit.thread, %mv88e6393x_serdes_fix_2500basex_an.exit.cleanup_crit_edge, %mv88e6393x_serdes_fix_2500basex_an.exit.thread, %mv88e6393x_serdes_erratum_5_2.exit, %mv88e6393x_serdes_erratum_4_8.exit.cleanup_crit_edge, %mv88e6393x_serdes_erratum_4_8.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ %call.i33.i, %mv88e6393x_serdes_erratum_4_8.exit.cleanup_crit_edge ], [ %retval.0.i78, %mv88e6393x_serdes_erratum_5_2.exit ], [ %call.i36.i, %mv88e6393x_serdes_fix_2500basex_an.exit.cleanup_crit_edge ], [ %call.i12.i, %mv88e6393x_serdes_power_lane.exit.cleanup_crit_edge ], [ %err.0, %sw.epilog.cleanup_crit_edge ], [ %call.i12.i109, %mv88e6393x_serdes_power_lane.exit112.cleanup_crit_edge ], [ %retval.0.i123, %mv88e6393x_serdes_fix_2500basex_an.exit124 ], [ %retval.0.i.ph, %mv88e6393x_serdes_erratum_4_8.exit.thread ], [ %retval.0.i84.ph, %mv88e6393x_serdes_fix_2500basex_an.exit.thread ], [ %call.i.i86, %mv88e6393x_serdes_power_lane.exit.thread ], [ %call.i.i106, %mv88e6393x_serdes_power_lane.exit112.thread ], [ -22, %if.end21.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mv88e6xxx_phy_page_read(ptr noundef, i32 noundef, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mv88e6xxx_phy_page_write(ptr noundef, i32 noundef, i8 noundef zeroext, i32 noundef, i16 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @dsa_port_phylink_mac_change(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_resolve_mapping(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mv88e6xxx_phy_read(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mv88e6xxx_phy_write(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !21, !23, !24, !25, !27, !29, !30, !31, !32, !34, !35, !37, !38, !39, !40, !42, !43, !44, !45, !47, !49, !50, !51, !53, !54, !55, !57, !58, !60, !61, !63, !64, !65, !67, !68, !69, !70, !72}
!llvm.module.flags = !{!74, !75, !76, !77, !78, !79, !80, !81}
!llvm.ident = !{!82}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/dsa/mv88e6xxx/serdes.c", i32 199, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @mv88e6352_serdes_pcs_get_state._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @mv88e6352_serdes_pcs_get_state._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/dsa/mv88e6xxx/serdes.c", i32 205, i32 3}
!10 = !{ptr @mv88e6352_serdes_pcs_get_state._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @mv88e6352_serdes_pcs_get_state._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/dsa/mv88e6xxx/serdes.c", i32 211, i32 3}
!14 = !{ptr @mv88e6352_serdes_pcs_get_state._entry.8, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @mv88e6352_serdes_pcs_get_state._entry_ptr.10, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.11, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/dsa/mv88e6xxx/serdes.c", i32 513, i32 4}
!18 = !{ptr @.str.12, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @mv88e6185_serdes_pcs_get_state._entry, !17, !"_entry", i1 false, i1 false}
!20 = !{ptr @mv88e6185_serdes_pcs_get_state._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.13, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/dsa/mv88e6xxx/serdes.c", i32 92, i32 4}
!23 = !{ptr @mv88e6xxx_serdes_pcs_get_state._entry, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @mv88e6xxx_serdes_pcs_get_state._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @mv88e6352_serdes_hw_stats, !26, !"mv88e6352_serdes_hw_stats", i1 false, i1 false}
!26 = !{!"../drivers/net/dsa/mv88e6xxx/serdes.c", i32 289, i32 40}
!27 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/dsa/mv88e6xxx/serdes.c", i32 328, i32 3}
!29 = !{ptr @.str.15, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @mv88e6352_serdes_get_stat._entry, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @mv88e6352_serdes_get_stat._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @mv88e6352_serdes_get_stat._entry.16, !33, !"_entry", i1 false, i1 false}
!33 = !{!"../drivers/net/dsa/mv88e6xxx/serdes.c", i32 337, i32 4}
!34 = !{ptr @mv88e6352_serdes_get_stat._entry_ptr.17, !33, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.18, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/dsa/mv88e6xxx/serdes.c", i32 378, i32 3}
!37 = !{ptr @.str.19, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @mv88e6352_serdes_irq_link._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @mv88e6352_serdes_irq_link._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/dsa/mv88e6xxx/serdes.c", i32 549, i32 3}
!42 = !{ptr @.str.21, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @mv88e6097_serdes_irq_link._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @mv88e6097_serdes_irq_link._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @mv88e6390_serdes_hw_stats, !46, !"mv88e6390_serdes_hw_stats", i1 false, i1 false}
!46 = !{!"../drivers/net/dsa/mv88e6xxx/serdes.c", i32 746, i32 40}
!47 = !{ptr @.str.22, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/dsa/mv88e6xxx/serdes.c", i32 787, i32 4}
!49 = !{ptr @mv88e6390_serdes_get_stat._entry, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @mv88e6390_serdes_get_stat._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.23, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/dsa/mv88e6xxx/serdes.c", i32 924, i32 3}
!53 = !{ptr @mv88e6390_serdes_pcs_get_state_sgmii._entry, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @mv88e6390_serdes_pcs_get_state_sgmii._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @mv88e6390_serdes_pcs_get_state_sgmii._entry.24, !56, !"_entry", i1 false, i1 false}
!56 = !{!"../drivers/net/dsa/mv88e6xxx/serdes.c", i32 931, i32 3}
!57 = !{ptr @mv88e6390_serdes_pcs_get_state_sgmii._entry_ptr.25, !56, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @mv88e6390_serdes_pcs_get_state_sgmii._entry.26, !59, !"_entry", i1 false, i1 false}
!59 = !{!"../drivers/net/dsa/mv88e6xxx/serdes.c", i32 938, i32 3}
!60 = !{ptr @mv88e6390_serdes_pcs_get_state_sgmii._entry_ptr.27, !59, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.28, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/dsa/mv88e6xxx/serdes.c", i32 1087, i32 3}
!63 = !{ptr @mv88e6390_serdes_irq_link_sgmii._entry, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @mv88e6390_serdes_irq_link_sgmii._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.29, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/dsa/mv88e6xxx/serdes.c", i32 1104, i32 3}
!67 = !{ptr @.str.30, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @mv88e6393x_serdes_irq_link_10g._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @mv88e6393x_serdes_irq_link_10g._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @mv88e6390_serdes_regs, !71, !"mv88e6390_serdes_regs", i1 false, i1 false}
!71 = !{!"../drivers/net/dsa/mv88e6xxx/serdes.c", i32 1257, i32 18}
!72 = !{ptr @mv88e6393x_serdes_erratum_5_2.fixes, !73, !"fixes", i1 false, i1 false}
!73 = !{!"../drivers/net/dsa/mv88e6xxx/serdes.c", i32 1422, i32 4}
!74 = !{i32 1, !"wchar_size", i32 2}
!75 = !{i32 1, !"min_enum_size", i32 4}
!76 = !{i32 8, !"branch-target-enforcement", i32 0}
!77 = !{i32 8, !"sign-return-address", i32 0}
!78 = !{i32 8, !"sign-return-address-all", i32 0}
!79 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!80 = !{i32 7, !"uwtable", i32 1}
!81 = !{i32 7, !"frame-pointer", i32 2}
!82 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!83 = !{!"auto-init"}
