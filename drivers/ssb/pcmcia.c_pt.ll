; ModuleID = '/llk/IR_all_yes/drivers/ssb/pcmcia.c_pt.bc'
source_filename = "../drivers/ssb/pcmcia.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ssb_bus_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ssb_bus = type { ptr, ptr, ptr, %union.anon.99, %struct.spinlock, i32, %union.anon.100, i32, %struct.mutex, i16, i8, i16, i16, i8, [16 x %struct.ssb_device], i8, i32, %struct.ssb_chipcommon, %struct.ssb_pcicore, %struct.ssb_mipscore, %struct.ssb_extif, %struct.ssb_boardinfo, %struct.ssb_sprom, i8, %struct.gpio_chip, ptr, %struct.list_head, i8, i32 }
%union.anon.99 = type { i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%union.anon.100 = type { ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.ssb_device = type { ptr, ptr, ptr, ptr, %struct.ssb_device_id, i8, i32, ptr, ptr }
%struct.ssb_device_id = type { i16, i16, i8, i8 }
%struct.ssb_chipcommon = type { ptr, i32, i32, i16, %struct.spinlock, %struct.ssb_chipcommon_pmu, i32, i32 }
%struct.ssb_chipcommon_pmu = type { i8, i32 }
%struct.ssb_pcicore = type { ptr, i8 }
%struct.ssb_mipscore = type {}
%struct.ssb_extif = type {}
%struct.ssb_boardinfo = type { i16, i16 }
%struct.ssb_sprom = type { i8, i8, [6 x i8], [6 x i8], [6 x i8], [6 x i8], i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, [2 x i8], i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [4 x i8], [4 x i8], [4 x i8], [4 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, [4 x %struct.ssb_sprom_core_pwr_info], %struct.anon.102, %struct.anon.103, [8 x i16], [8 x i16], [8 x i16], [8 x i16], i8, [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8 }
%struct.ssb_sprom_core_pwr_info = type { i8, i8, i8, i8, i8, i8, [4 x i16], [4 x i16], [4 x i16], [4 x i16] }
%struct.anon.102 = type { i8, i8, i8, i8 }
%struct.anon.103 = type { %struct.anon.104, %struct.anon.105 }
%struct.anon.104 = type { i8, i8, i8, i8, i8 }
%struct.anon.105 = type { i8, i8, i8, i8, i8 }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.106, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.106 = type { ptr }
%struct.list_head = type { ptr, ptr }
%struct.ssb_init_invariants = type { %struct.ssb_boardinfo, %struct.ssb_sprom, i8 }
%struct.tuple_t = type { i32, i8, i32, i32, i32, i8, i8, i8, i8, i8, ptr }
%struct.pcmcia_device = type { ptr, ptr, i8, i8, ptr, %struct.list_head, i32, [6 x ptr], i32, i32, i32, i32, i32, i32, i32, i16, i8, i16, i16, [4 x ptr], i64, %struct.device, ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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

@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@ssb_pcmcia_switch_coreidx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 146, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013ssb: Failed to switch to core %u\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ssb_pcmcia_switch_coreidx\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"drivers/ssb/pcmcia.c\00", [43 x i8] zeroinitializer }, align 32
@ssb_pcmcia_switch_coreidx._entry_ptr = internal global ptr @ssb_pcmcia_switch_coreidx._entry, section ".printk_index", align 4
@ssb_pcmcia_switch_segment._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 192, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013ssb: Failed to switch pcmcia segment\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ssb_pcmcia_switch_segment\00", [38 x i8] zeroinitializer }, align 32
@ssb_pcmcia_switch_segment._entry_ptr = internal global ptr @ssb_pcmcia_switch_segment._entry, section ".printk_index", align 4
@ssb_pcmcia_ops = dso_local constant { %struct.ssb_bus_ops, [32 x i8] } { %struct.ssb_bus_ops { ptr @ssb_pcmcia_read8, ptr @ssb_pcmcia_read16, ptr @ssb_pcmcia_read32, ptr @ssb_pcmcia_write8, ptr @ssb_pcmcia_write16, ptr @ssb_pcmcia_write32, ptr @ssb_pcmcia_block_read, ptr @ssb_pcmcia_block_write }, [32 x i8] zeroinitializer }, align 32
@ssb_pcmcia_get_invariants._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 712, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013ssb: PCMCIA: Failed to fetch MAC address\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ssb_pcmcia_get_invariants\00", [38 x i8] zeroinitializer }, align 32
@ssb_pcmcia_get_invariants._entry_ptr = internal global ptr @ssb_pcmcia_get_invariants._entry, section ".printk_index", align 4
@ssb_pcmcia_get_invariants._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.6, ptr @.str.2, i32 722, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013ssb: PCMCIA: Failed to fetch device invariants\0A\00", [46 x i8] zeroinitializer }, align 32
@ssb_pcmcia_get_invariants._entry_ptr.9 = internal global ptr @ssb_pcmcia_get_invariants._entry.7, section ".printk_index", align 4
@dev_attr_ssb_sprom = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.24, i16 384, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ssb_sprom_show, ptr @ssb_sprom_store }, [36 x i8] zeroinitializer }, align 32
@ssb_pcmcia_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&bus->sprom_mutex\00", [46 x i8] zeroinitializer }, align 32
@ssb_pcmcia_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 829, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013ssb: Failed to initialize PCMCIA host device\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ssb_pcmcia_init\00", [16 x i8] zeroinitializer }, align 32
@ssb_pcmcia_init._entry_ptr = internal global ptr @ssb_pcmcia_init._entry, section ".printk_index", align 4
@.str.13 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"VEN tpl < 1\00", [20 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"id tpl size\00", [20 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"boardrev tpl size\00", [46 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pa tpl size\00", [20 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ccode tpl size\00", [17 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ant tpl size\00", [19 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"antg tpl size\00", [18 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"bfl tpl size\00", [19 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"leds tpl size\00", [18 x i8] zeroinitializer }, align 32
@ssb_pcmcia_do_get_invariants._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 692, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013ssb: PCMCIA: Failed to fetch device invariants: %s\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ssb_pcmcia_do_get_invariants\00", [35 x i8] zeroinitializer }, align 32
@ssb_pcmcia_do_get_invariants._entry_ptr = internal global ptr @ssb_pcmcia_do_get_invariants._entry, section ".printk_index", align 4
@.str.24 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ssb_sprom\00", [22 x i8] zeroinitializer }, align 32
@ssb_pcmcia_sprom_write_all._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.2, i32 545, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\015ssb: Writing SPROM. Do NOT turn off the power! Please stand by...\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ssb_pcmcia_sprom_write_all\00", [37 x i8] zeroinitializer }, align 32
@ssb_pcmcia_sprom_write_all._entry_ptr = internal global ptr @ssb_pcmcia_sprom_write_all._entry, section ".printk_index", align 4
@ssb_pcmcia_sprom_write_all._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.26, ptr @.str.2, i32 548, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\015ssb: Could not enable SPROM write access\0A\00", [52 x i8] zeroinitializer }, align 32
@ssb_pcmcia_sprom_write_all._entry_ptr.29 = internal global ptr @ssb_pcmcia_sprom_write_all._entry.27, section ".printk_index", align 4
@ssb_pcmcia_sprom_write_all._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.26, ptr @.str.2, i32 551, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\015ssb: [ 0%%\00", [19 x i8] zeroinitializer }, align 32
@ssb_pcmcia_sprom_write_all._entry_ptr.32 = internal global ptr @ssb_pcmcia_sprom_write_all._entry.30, section ".printk_index", align 4
@ssb_pcmcia_sprom_write_all._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.26, ptr @.str.2, i32 555, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\01c25%%\00", [25 x i8] zeroinitializer }, align 32
@ssb_pcmcia_sprom_write_all._entry_ptr.35 = internal global ptr @ssb_pcmcia_sprom_write_all._entry.33, section ".printk_index", align 4
@ssb_pcmcia_sprom_write_all._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.26, ptr @.str.2, i32 557, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\01c50%%\00", [25 x i8] zeroinitializer }, align 32
@ssb_pcmcia_sprom_write_all._entry_ptr.38 = internal global ptr @ssb_pcmcia_sprom_write_all._entry.36, section ".printk_index", align 4
@ssb_pcmcia_sprom_write_all._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.26, ptr @.str.2, i32 559, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\01c75%%\00", [25 x i8] zeroinitializer }, align 32
@ssb_pcmcia_sprom_write_all._entry_ptr.41 = internal global ptr @ssb_pcmcia_sprom_write_all._entry.39, section ".printk_index", align 4
@ssb_pcmcia_sprom_write_all._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.26, ptr @.str.2, i32 561, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\01c.\00", [28 x i8] zeroinitializer }, align 32
@ssb_pcmcia_sprom_write_all._entry_ptr.44 = internal global ptr @ssb_pcmcia_sprom_write_all._entry.42, section ".printk_index", align 4
@ssb_pcmcia_sprom_write_all._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.26, ptr @.str.2, i32 564, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\015ssb: Failed to write to SPROM\0A\00", [63 x i8] zeroinitializer }, align 32
@ssb_pcmcia_sprom_write_all._entry_ptr.47 = internal global ptr @ssb_pcmcia_sprom_write_all._entry.45, section ".printk_index", align 4
@ssb_pcmcia_sprom_write_all._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.26, ptr @.str.2, i32 571, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\015ssb: Could not disable SPROM write access\0A\00", [51 x i8] zeroinitializer }, align 32
@ssb_pcmcia_sprom_write_all._entry_ptr.50 = internal global ptr @ssb_pcmcia_sprom_write_all._entry.48, section ".printk_index", align 4
@ssb_pcmcia_sprom_write_all._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.26, ptr @.str.2, i32 576, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"\01c100%% ]\0A\00", [21 x i8] zeroinitializer }, align 32
@ssb_pcmcia_sprom_write_all._entry_ptr.53 = internal global ptr @ssb_pcmcia_sprom_write_all._entry.51, section ".printk_index", align 4
@ssb_pcmcia_sprom_write_all._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.26, ptr @.str.2, i32 577, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\015ssb: SPROM written\0A\00", [42 x i8] zeroinitializer }, align 32
@ssb_pcmcia_sprom_write_all._entry_ptr.56 = internal global ptr @ssb_pcmcia_sprom_write_all._entry.54, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.57 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.58 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967268]
@__sancov_gen_cov_switch_values.59 = internal global [10 x i64] [i64 8, i64 8, i64 1, i64 2, i64 3, i64 5, i64 6, i64 7, i64 8, i64 9]
@__sancov_gen_cov_switch_values.60 = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 5]
@__sancov_gen_cov_switch_values.61 = internal global [5 x i64] [i64 3, i64 32, i64 64, i64 128, i64 192]
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 146, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 192, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant [15 x i8] c"ssb_pcmcia_ops\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 429, i32 26 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 712, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 722, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant [19 x i8] c"dev_attr_ssb_sprom\00", align 1
@___asan_gen_.104 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 822, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 829, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 621, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 624, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 631, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 636, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 654, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 659, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 665, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 673, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 680, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 691, i32 2 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 759, i32 8 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 545, i32 2 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 548, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 551, i32 2 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 555, i32 4 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 557, i32 4 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 559, i32 4 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 561, i32 4 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 564, i32 4 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 571, i32 3 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 576, i32 3 }
@___asan_gen_.221 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.224 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.225 = private constant [24 x i8] c"../drivers/ssb/pcmcia.c\00", align 1
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 577, i32 3 }
@llvm.compiler.used = appending global [72 x ptr] [ptr @ssb_pcmcia_do_get_invariants._entry, ptr @ssb_pcmcia_do_get_invariants._entry_ptr, ptr @ssb_pcmcia_get_invariants._entry, ptr @ssb_pcmcia_get_invariants._entry.7, ptr @ssb_pcmcia_get_invariants._entry_ptr, ptr @ssb_pcmcia_get_invariants._entry_ptr.9, ptr @ssb_pcmcia_init._entry, ptr @ssb_pcmcia_init._entry_ptr, ptr @ssb_pcmcia_sprom_write_all._entry, ptr @ssb_pcmcia_sprom_write_all._entry.27, ptr @ssb_pcmcia_sprom_write_all._entry.30, ptr @ssb_pcmcia_sprom_write_all._entry.33, ptr @ssb_pcmcia_sprom_write_all._entry.36, ptr @ssb_pcmcia_sprom_write_all._entry.39, ptr @ssb_pcmcia_sprom_write_all._entry.42, ptr @ssb_pcmcia_sprom_write_all._entry.45, ptr @ssb_pcmcia_sprom_write_all._entry.48, ptr @ssb_pcmcia_sprom_write_all._entry.51, ptr @ssb_pcmcia_sprom_write_all._entry.54, ptr @ssb_pcmcia_sprom_write_all._entry_ptr, ptr @ssb_pcmcia_sprom_write_all._entry_ptr.29, ptr @ssb_pcmcia_sprom_write_all._entry_ptr.32, ptr @ssb_pcmcia_sprom_write_all._entry_ptr.35, ptr @ssb_pcmcia_sprom_write_all._entry_ptr.38, ptr @ssb_pcmcia_sprom_write_all._entry_ptr.41, ptr @ssb_pcmcia_sprom_write_all._entry_ptr.44, ptr @ssb_pcmcia_sprom_write_all._entry_ptr.47, ptr @ssb_pcmcia_sprom_write_all._entry_ptr.50, ptr @ssb_pcmcia_sprom_write_all._entry_ptr.53, ptr @ssb_pcmcia_sprom_write_all._entry_ptr.56, ptr @ssb_pcmcia_switch_coreidx._entry, ptr @ssb_pcmcia_switch_coreidx._entry_ptr, ptr @ssb_pcmcia_switch_segment._entry, ptr @ssb_pcmcia_switch_segment._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @ssb_pcmcia_ops, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @dev_attr_ssb_sprom, ptr @ssb_pcmcia_init.__key, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.31, ptr @.str.34, ptr @.str.37, ptr @.str.40, ptr @.str.43, ptr @.str.46, ptr @.str.49, ptr @.str.52, ptr @.str.55], section "llvm.metadata"
@0 = internal global [55 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssb_pcmcia_switch_coreidx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssb_pcmcia_switch_segment._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssb_pcmcia_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssb_pcmcia_get_invariants._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssb_pcmcia_get_invariants._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_ssb_sprom to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssb_pcmcia_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssb_pcmcia_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssb_pcmcia_do_get_invariants._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssb_pcmcia_sprom_write_all._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssb_pcmcia_sprom_write_all._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssb_pcmcia_sprom_write_all._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssb_pcmcia_sprom_write_all._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssb_pcmcia_sprom_write_all._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssb_pcmcia_sprom_write_all._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssb_pcmcia_sprom_write_all._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssb_pcmcia_sprom_write_all._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssb_pcmcia_sprom_write_all._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssb_pcmcia_sprom_write_all._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssb_pcmcia_sprom_write_all._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ssb_pcmcia_switch_coreidx(ptr nocapture noundef readonly %bus, i8 noundef zeroext %coreidx) local_unnamed_addr #0 align 64 {
entry:
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #7
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %val, align 1, !annotation !110
  %conv = zext i8 %coreidx to i32
  %shr = and i8 %coreidx, 15
  %1 = getelementptr inbounds %struct.ssb_bus, ptr %bus, i32 0, i32 6
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call.i85 = call i32 @pcmcia_write_config_byte(ptr noundef %3, i32 noundef 46, i8 noundef zeroext %shr) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i85)
  %cmp.not.i86 = icmp eq i32 %call.i85, 0
  br i1 %cmp.not.i86, label %if.end.lr.ph, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end.lr.ph:                                     ; preds = %entry
  %shr3 = lshr i8 %coreidx, 4
  br label %if.end

if.end:                                           ; preds = %if.end43.if.end_crit_edge, %if.end.lr.ph
  %attempts.087 = phi i32 [ 0, %if.end.lr.ph ], [ %inc, %if.end43.if.end_crit_edge ]
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %call.i70 = call i32 @pcmcia_write_config_byte(ptr noundef %5, i32 noundef 48, i8 noundef zeroext %shr3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i70)
  %cmp.not.i71 = icmp eq i32 %call.i70, 0
  br i1 %cmp.not.i71, label %if.end8, label %if.end.do.end_crit_edge

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end8:                                          ; preds = %if.end
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %call.i73 = call i32 @pcmcia_write_config_byte(ptr noundef %7, i32 noundef 50, i8 noundef zeroext 24) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i73)
  %cmp.not.i74 = icmp eq i32 %call.i73, 0
  br i1 %cmp.not.i74, label %if.end15, label %if.end8.do.end_crit_edge

if.end8.do.end_crit_edge:                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end15:                                         ; preds = %if.end8
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %call.i76 = call i32 @pcmcia_read_config_byte(ptr noundef %9, i32 noundef 46, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i76)
  %cmp.not.i77 = icmp eq i32 %call.i76, 0
  br i1 %cmp.not.i77, label %if.end19, label %if.end15.do.end_crit_edge

if.end15.do.end_crit_edge:                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end19:                                         ; preds = %if.end15
  %10 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %val, align 1
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %call.i79 = call i32 @pcmcia_read_config_byte(ptr noundef %13, i32 noundef 48, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i79)
  %cmp.not.i80 = icmp eq i32 %call.i79, 0
  br i1 %cmp.not.i80, label %if.end25, label %if.end19.do.end_crit_edge

if.end19.do.end_crit_edge:                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end25:                                         ; preds = %if.end19
  %14 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %val, align 1
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %call.i82 = call i32 @pcmcia_read_config_byte(ptr noundef %17, i32 noundef 50, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i82)
  %cmp.not.i83 = icmp eq i32 %call.i82, 0
  br i1 %cmp.not.i83, label %if.end32, label %if.end25.do.end_crit_edge

if.end25.do.end_crit_edge:                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end32:                                         ; preds = %if.end25
  %18 = and i8 %11, 15
  %and21 = zext i8 %18 to i32
  %shl = shl nuw nsw i32 %and21, 12
  %conv26 = zext i8 %15 to i32
  %shl27 = shl nuw nsw i32 %conv26, 16
  %19 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %val, align 1
  %conv33 = zext i8 %20 to i32
  %shl34 = shl nuw i32 %conv33, 24
  %or28 = or i32 %shl, %shl27
  %or35 = or i32 %or28, -402653184
  %sub = add i32 %or35, %shl34
  %div69 = lshr exact i32 %sub, 12
  call void @__sanitizer_cov_trace_cmp4(i32 %div69, i32 %conv)
  %cmp = icmp eq i32 %div69, %conv
  br i1 %cmp, label %if.end32.cleanup_crit_edge, label %if.end39

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end39:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_const_cmp4(i32 51, i32 %attempts.087)
  %exitcond = icmp eq i32 %attempts.087, 51
  br i1 %exitcond, label %if.end39.do.end_crit_edge, label %if.end43

if.end39.do.end_crit_edge:                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end43:                                         ; preds = %if.end39
  %inc = add nuw nsw i32 %attempts.087, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %21(i32 noundef 2147480) #7
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 4
  %call.i = call i32 @pcmcia_write_config_byte(ptr noundef %23, i32 noundef 46, i8 noundef zeroext %shr) #7
  %cmp.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp.not.i, label %if.end43.if.end_crit_edge, label %if.end43.do.end_crit_edge

if.end43.do.end_crit_edge:                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end43.if.end_crit_edge:                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %if.end43.do.end_crit_edge, %if.end39.do.end_crit_edge, %if.end25.do.end_crit_edge, %if.end19.do.end_crit_edge, %if.end15.do.end_crit_edge, %if.end8.do.end_crit_edge, %if.end.do.end_crit_edge, %entry.do.end_crit_edge
  %err.0 = phi i32 [ -16, %entry.do.end_crit_edge ], [ -16, %if.end43.do.end_crit_edge ], [ -16, %if.end.do.end_crit_edge ], [ -16, %if.end8.do.end_crit_edge ], [ -16, %if.end15.do.end_crit_edge ], [ -16, %if.end19.do.end_crit_edge ], [ -16, %if.end25.do.end_crit_edge ], [ -110, %if.end39.do.end_crit_edge ]
  %call45 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %conv) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end32.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %do.end ], [ 0, %if.end32.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ssb_pcmcia_switch_segment(ptr nocapture noundef %bus, i8 noundef zeroext %seg) local_unnamed_addr #0 align 64 {
entry:
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #7
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %val, align 1, !annotation !110
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %seg)
  %1 = icmp ugt i8 %seg, 1
  br i1 %1, label %do.end, label %entry.if.end_crit_edge, !prof !111

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 172, i32 noundef 9, ptr noundef null) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %2 = getelementptr inbounds %struct.ssb_bus, ptr %bus, i32 0, i32 6
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %call.i65 = call i32 @pcmcia_write_config_byte(ptr noundef %4, i32 noundef 52, i8 noundef zeroext %seg) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i65)
  %cmp.not.i66 = icmp eq i32 %call.i65, 0
  br i1 %cmp.not.i66, label %if.end.if.end25_crit_edge, label %if.end.do.end48_crit_edge

if.end.do.end48_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end48

if.end.if.end25_crit_edge:                        ; preds = %if.end
  br label %if.end25

if.end25:                                         ; preds = %if.end45.if.end25_crit_edge, %if.end.if.end25_crit_edge
  %attempts.067 = phi i32 [ %inc, %if.end45.if.end25_crit_edge ], [ 0, %if.end.if.end25_crit_edge ]
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %2, align 4
  %call.i62 = call i32 @pcmcia_read_config_byte(ptr noundef %6, i32 noundef 52, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i62)
  %cmp.not.i63 = icmp eq i32 %call.i62, 0
  br i1 %cmp.not.i63, label %if.end29, label %if.end25.do.end48_crit_edge

if.end25.do.end48_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end48

if.end29:                                         ; preds = %if.end25
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %val, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %8, i8 %seg)
  %cmp32 = icmp eq i8 %8, %seg
  br i1 %cmp32, label %while.end, label %if.end35

if.end35:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_const_cmp4(i32 51, i32 %attempts.067)
  %exitcond = icmp eq i32 %attempts.067, 51
  br i1 %exitcond, label %if.end35.do.end48_crit_edge, label %if.end45, !prof !111

if.end35.do.end48_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end48

if.end45:                                         ; preds = %if.end35
  %inc = add nuw nsw i32 %attempts.067, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %9(i32 noundef 2147480) #7
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %2, align 4
  %call.i = call i32 @pcmcia_write_config_byte(ptr noundef %11, i32 noundef 52, i8 noundef zeroext %seg) #7
  %cmp.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp.not.i, label %if.end45.if.end25_crit_edge, label %if.end45.do.end48_crit_edge

if.end45.do.end48_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end48

if.end45.if.end25_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

while.end:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  %12 = getelementptr inbounds %struct.ssb_bus, ptr %bus, i32 0, i32 3
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %seg, ptr %12, align 4
  br label %cleanup

do.end48:                                         ; preds = %if.end45.do.end48_crit_edge, %if.end35.do.end48_crit_edge, %if.end25.do.end48_crit_edge, %if.end.do.end48_crit_edge
  %err.0 = phi i32 [ -16, %if.end.do.end48_crit_edge ], [ -16, %if.end45.do.end48_crit_edge ], [ -16, %if.end25.do.end48_crit_edge ], [ -110, %if.end35.do.end48_crit_edge ]
  %call50 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end48, %while.end
  %retval.0 = phi i32 [ %err.0, %do.end48 ], [ 0, %while.end ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @ssb_pcmcia_read8(ptr noundef %dev, i16 noundef zeroext %offset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %bus1 = getelementptr inbounds %struct.ssb_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %bus1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus1, align 4
  %bar_lock = getelementptr inbounds %struct.ssb_bus, ptr %1, i32 0, i32 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bar_lock) #7
  %2 = ptrtoint ptr %bus1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus1, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2047, i16 %offset)
  %cmp.i = icmp ugt i16 %offset, 2047
  %sub.i = add i16 %offset, -2048
  %spec.select = select i1 %cmp.i, i16 %sub.i, i16 %offset
  %spec.select21 = zext i1 %cmp.i to i8
  %mapped_device.i = getelementptr inbounds %struct.ssb_bus, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %mapped_device.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mapped_device.i, align 4
  %cmp5.not.i = icmp eq ptr %5, %dev
  br i1 %cmp5.not.i, label %entry.if.end18.i_crit_edge, label %if.then8.i, !prof !112

entry.if.end18.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18.i

if.then8.i:                                       ; preds = %entry
  %core_index.i.i = getelementptr inbounds %struct.ssb_device, ptr %dev, i32 0, i32 5
  %6 = ptrtoint ptr %core_index.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %core_index.i.i, align 2
  %call.i.i = tail call i32 @ssb_pcmcia_switch_coreidx(ptr noundef %3, i8 noundef zeroext %7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %ssb_pcmcia_switch_core.exit.thread.i, label %if.then8.i.if.end_crit_edge

if.then8.i.if.end_crit_edge:                      ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

ssb_pcmcia_switch_core.exit.thread.i:             ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %mapped_device.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %dev, ptr %mapped_device.i, align 4
  br label %if.end18.i

if.end18.i:                                       ; preds = %ssb_pcmcia_switch_core.exit.thread.i, %entry.if.end18.i_crit_edge
  %9 = getelementptr inbounds %struct.ssb_bus, ptr %3, i32 0, i32 3
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %9, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %11, i8 %spec.select21)
  %cmp21.not.i = icmp eq i8 %11, %spec.select21
  br i1 %cmp21.not.i, label %if.end18.i.if.then_crit_edge, label %if.then29.i, !prof !112

if.end18.i.if.then_crit_edge:                     ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then29.i:                                      ; preds = %if.end18.i
  %call30.i = tail call i32 @ssb_pcmcia_switch_segment(ptr noundef %3, i8 noundef zeroext %spec.select21) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i)
  %tobool31.not.i = icmp eq i32 %call30.i, 0
  br i1 %tobool31.not.i, label %if.then29.i.if.then_crit_edge, label %if.then29.i.if.end_crit_edge, !prof !112

if.then29.i.if.end_crit_edge:                     ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then29.i.if.then_crit_edge:                    ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %if.then29.i.if.then_crit_edge, %if.end18.i.if.then_crit_edge
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %conv10 = zext i16 %spec.select to i32
  %add.ptr = getelementptr i8, ptr %13, i32 %conv10
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #7, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !114
  br label %if.end

if.end:                                           ; preds = %if.then, %if.then29.i.if.end_crit_edge, %if.then8.i.if.end_crit_edge
  %value.0 = phi i8 [ %14, %if.then ], [ -1, %if.then29.i.if.end_crit_edge ], [ -1, %if.then8.i.if.end_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bar_lock, i32 noundef %call3) #7
  ret i8 %value.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i16 @ssb_pcmcia_read16(ptr noundef %dev, i16 noundef zeroext %offset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %bus1 = getelementptr inbounds %struct.ssb_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %bus1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus1, align 4
  %bar_lock = getelementptr inbounds %struct.ssb_bus, ptr %1, i32 0, i32 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bar_lock) #7
  %2 = ptrtoint ptr %bus1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus1, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2047, i16 %offset)
  %cmp.i = icmp ugt i16 %offset, 2047
  %sub.i = add i16 %offset, -2048
  %spec.select = select i1 %cmp.i, i16 %sub.i, i16 %offset
  %spec.select21 = zext i1 %cmp.i to i8
  %mapped_device.i = getelementptr inbounds %struct.ssb_bus, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %mapped_device.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mapped_device.i, align 4
  %cmp5.not.i = icmp eq ptr %5, %dev
  br i1 %cmp5.not.i, label %entry.if.end18.i_crit_edge, label %if.then8.i, !prof !112

entry.if.end18.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18.i

if.then8.i:                                       ; preds = %entry
  %core_index.i.i = getelementptr inbounds %struct.ssb_device, ptr %dev, i32 0, i32 5
  %6 = ptrtoint ptr %core_index.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %core_index.i.i, align 2
  %call.i.i = tail call i32 @ssb_pcmcia_switch_coreidx(ptr noundef %3, i8 noundef zeroext %7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %ssb_pcmcia_switch_core.exit.thread.i, label %if.then8.i.if.end_crit_edge

if.then8.i.if.end_crit_edge:                      ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

ssb_pcmcia_switch_core.exit.thread.i:             ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %mapped_device.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %dev, ptr %mapped_device.i, align 4
  br label %if.end18.i

if.end18.i:                                       ; preds = %ssb_pcmcia_switch_core.exit.thread.i, %entry.if.end18.i_crit_edge
  %9 = getelementptr inbounds %struct.ssb_bus, ptr %3, i32 0, i32 3
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %9, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %11, i8 %spec.select21)
  %cmp21.not.i = icmp eq i8 %11, %spec.select21
  br i1 %cmp21.not.i, label %if.end18.i.if.then_crit_edge, label %if.then29.i, !prof !112

if.end18.i.if.then_crit_edge:                     ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then29.i:                                      ; preds = %if.end18.i
  %call30.i = tail call i32 @ssb_pcmcia_switch_segment(ptr noundef %3, i8 noundef zeroext %spec.select21) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i)
  %tobool31.not.i = icmp eq i32 %call30.i, 0
  br i1 %tobool31.not.i, label %if.then29.i.if.then_crit_edge, label %if.then29.i.if.end_crit_edge, !prof !112

if.then29.i.if.end_crit_edge:                     ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then29.i.if.then_crit_edge:                    ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %if.then29.i.if.then_crit_edge, %if.end18.i.if.then_crit_edge
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %conv10 = zext i16 %spec.select to i32
  %add.ptr = getelementptr i8, ptr %13, i32 %conv10
  %14 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #7, !srcloc !115
  %15 = tail call i16 @llvm.bswap.i16(i16 %14)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !116
  br label %if.end

if.end:                                           ; preds = %if.then, %if.then29.i.if.end_crit_edge, %if.then8.i.if.end_crit_edge
  %value.0 = phi i16 [ %15, %if.then ], [ -1, %if.then29.i.if.end_crit_edge ], [ -1, %if.then8.i.if.end_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bar_lock, i32 noundef %call3) #7
  ret i16 %value.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ssb_pcmcia_read32(ptr noundef %dev, i16 noundef zeroext %offset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %bus1 = getelementptr inbounds %struct.ssb_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %bus1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus1, align 4
  %bar_lock = getelementptr inbounds %struct.ssb_bus, ptr %1, i32 0, i32 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bar_lock) #7
  %2 = ptrtoint ptr %bus1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus1, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2047, i16 %offset)
  %cmp.i = icmp ugt i16 %offset, 2047
  %sub.i = add i16 %offset, -2048
  %spec.select = select i1 %cmp.i, i16 %sub.i, i16 %offset
  %spec.select34 = zext i1 %cmp.i to i8
  %mapped_device.i = getelementptr inbounds %struct.ssb_bus, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %mapped_device.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mapped_device.i, align 4
  %cmp5.not.i = icmp eq ptr %5, %dev
  br i1 %cmp5.not.i, label %entry.if.end18.i_crit_edge, label %if.then8.i, !prof !112

entry.if.end18.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18.i

if.then8.i:                                       ; preds = %entry
  %core_index.i.i = getelementptr inbounds %struct.ssb_device, ptr %dev, i32 0, i32 5
  %6 = ptrtoint ptr %core_index.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %core_index.i.i, align 2
  %call.i.i = tail call i32 @ssb_pcmcia_switch_coreidx(ptr noundef %3, i8 noundef zeroext %7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %ssb_pcmcia_switch_core.exit.thread.i, label %if.then8.i.if.end_crit_edge

if.then8.i.if.end_crit_edge:                      ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

ssb_pcmcia_switch_core.exit.thread.i:             ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %mapped_device.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %dev, ptr %mapped_device.i, align 4
  br label %if.end18.i

if.end18.i:                                       ; preds = %ssb_pcmcia_switch_core.exit.thread.i, %entry.if.end18.i_crit_edge
  %9 = getelementptr inbounds %struct.ssb_bus, ptr %3, i32 0, i32 3
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %9, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %11, i8 %spec.select34)
  %cmp21.not.i = icmp eq i8 %11, %spec.select34
  br i1 %cmp21.not.i, label %if.end18.i.if.then_crit_edge, label %if.then29.i, !prof !112

if.end18.i.if.then_crit_edge:                     ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then29.i:                                      ; preds = %if.end18.i
  %call30.i = tail call i32 @ssb_pcmcia_switch_segment(ptr noundef %3, i8 noundef zeroext %spec.select34) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i)
  %tobool31.not.i = icmp eq i32 %call30.i, 0
  br i1 %tobool31.not.i, label %if.then29.i.if.then_crit_edge, label %if.then29.i.if.end_crit_edge, !prof !112

if.then29.i.if.end_crit_edge:                     ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then29.i.if.then_crit_edge:                    ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %if.then29.i.if.then_crit_edge, %if.end18.i.if.then_crit_edge
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %conv10 = zext i16 %spec.select to i32
  %add.ptr = getelementptr i8, ptr %13, i32 %conv10
  %14 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #7, !srcloc !115
  %15 = tail call i16 @llvm.bswap.i16(i16 %14)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !117
  %conv14 = zext i16 %15 to i32
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %add.ptr19 = getelementptr i8, ptr %17, i32 %conv10
  %add.ptr20 = getelementptr i8, ptr %add.ptr19, i32 2
  %18 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr20) #7, !srcloc !115
  %19 = tail call i16 @llvm.bswap.i16(i16 %18)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !118
  %conv24 = zext i16 %19 to i32
  %phi.bo = shl nuw i32 %conv24, 16
  br label %if.end

if.end:                                           ; preds = %if.then, %if.then29.i.if.end_crit_edge, %if.then8.i.if.end_crit_edge
  %hi.0 = phi i32 [ %phi.bo, %if.then ], [ -65536, %if.then29.i.if.end_crit_edge ], [ -65536, %if.then8.i.if.end_crit_edge ]
  %lo.0 = phi i32 [ %conv14, %if.then ], [ -1, %if.then29.i.if.end_crit_edge ], [ -1, %if.then8.i.if.end_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bar_lock, i32 noundef %call3) #7
  %or = or i32 %lo.0, %hi.0
  ret i32 %or
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ssb_pcmcia_write8(ptr noundef %dev, i16 noundef zeroext %offset, i8 noundef zeroext %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %bus1 = getelementptr inbounds %struct.ssb_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %bus1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus1, align 4
  %bar_lock = getelementptr inbounds %struct.ssb_bus, ptr %1, i32 0, i32 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bar_lock) #7
  %2 = ptrtoint ptr %bus1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus1, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2047, i16 %offset)
  %cmp.i = icmp ugt i16 %offset, 2047
  %sub.i = add i16 %offset, -2048
  %spec.select = select i1 %cmp.i, i16 %sub.i, i16 %offset
  %spec.select21 = zext i1 %cmp.i to i8
  %mapped_device.i = getelementptr inbounds %struct.ssb_bus, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %mapped_device.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mapped_device.i, align 4
  %cmp5.not.i = icmp eq ptr %5, %dev
  br i1 %cmp5.not.i, label %entry.if.end18.i_crit_edge, label %if.then8.i, !prof !112

entry.if.end18.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18.i

if.then8.i:                                       ; preds = %entry
  %core_index.i.i = getelementptr inbounds %struct.ssb_device, ptr %dev, i32 0, i32 5
  %6 = ptrtoint ptr %core_index.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %core_index.i.i, align 2
  %call.i.i = tail call i32 @ssb_pcmcia_switch_coreidx(ptr noundef %3, i8 noundef zeroext %7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %ssb_pcmcia_switch_core.exit.thread.i, label %if.then8.i.if.end_crit_edge

if.then8.i.if.end_crit_edge:                      ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

ssb_pcmcia_switch_core.exit.thread.i:             ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %mapped_device.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %dev, ptr %mapped_device.i, align 4
  br label %if.end18.i

if.end18.i:                                       ; preds = %ssb_pcmcia_switch_core.exit.thread.i, %entry.if.end18.i_crit_edge
  %9 = getelementptr inbounds %struct.ssb_bus, ptr %3, i32 0, i32 3
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %9, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %11, i8 %spec.select21)
  %cmp21.not.i = icmp eq i8 %11, %spec.select21
  br i1 %cmp21.not.i, label %if.end18.i.do.body10_crit_edge, label %if.then29.i, !prof !112

if.end18.i.do.body10_crit_edge:                   ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body10

if.then29.i:                                      ; preds = %if.end18.i
  %call30.i = tail call i32 @ssb_pcmcia_switch_segment(ptr noundef %3, i8 noundef zeroext %spec.select21) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i)
  %tobool31.not.i = icmp eq i32 %call30.i, 0
  br i1 %tobool31.not.i, label %if.then29.i.do.body10_crit_edge, label %if.then29.i.if.end_crit_edge, !prof !112

if.then29.i.if.end_crit_edge:                     ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then29.i.do.body10_crit_edge:                  ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body10

do.body10:                                        ; preds = %if.then29.i.do.body10_crit_edge, %if.end18.i.do.body10_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !119
  tail call void @arm_heavy_mb() #7
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %conv13 = zext i16 %spec.select to i32
  %add.ptr = getelementptr i8, ptr %13, i32 %conv13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %value) #7, !srcloc !120
  br label %if.end

if.end:                                           ; preds = %do.body10, %if.then29.i.if.end_crit_edge, %if.then8.i.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bar_lock, i32 noundef %call3) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ssb_pcmcia_write16(ptr noundef %dev, i16 noundef zeroext %offset, i16 noundef zeroext %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %bus1 = getelementptr inbounds %struct.ssb_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %bus1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus1, align 4
  %bar_lock = getelementptr inbounds %struct.ssb_bus, ptr %1, i32 0, i32 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bar_lock) #7
  %2 = ptrtoint ptr %bus1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus1, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2047, i16 %offset)
  %cmp.i = icmp ugt i16 %offset, 2047
  %sub.i = add i16 %offset, -2048
  %spec.select = select i1 %cmp.i, i16 %sub.i, i16 %offset
  %spec.select21 = zext i1 %cmp.i to i8
  %mapped_device.i = getelementptr inbounds %struct.ssb_bus, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %mapped_device.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mapped_device.i, align 4
  %cmp5.not.i = icmp eq ptr %5, %dev
  br i1 %cmp5.not.i, label %entry.if.end18.i_crit_edge, label %if.then8.i, !prof !112

entry.if.end18.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18.i

if.then8.i:                                       ; preds = %entry
  %core_index.i.i = getelementptr inbounds %struct.ssb_device, ptr %dev, i32 0, i32 5
  %6 = ptrtoint ptr %core_index.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %core_index.i.i, align 2
  %call.i.i = tail call i32 @ssb_pcmcia_switch_coreidx(ptr noundef %3, i8 noundef zeroext %7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %ssb_pcmcia_switch_core.exit.thread.i, label %if.then8.i.if.end_crit_edge

if.then8.i.if.end_crit_edge:                      ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

ssb_pcmcia_switch_core.exit.thread.i:             ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %mapped_device.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %dev, ptr %mapped_device.i, align 4
  br label %if.end18.i

if.end18.i:                                       ; preds = %ssb_pcmcia_switch_core.exit.thread.i, %entry.if.end18.i_crit_edge
  %9 = getelementptr inbounds %struct.ssb_bus, ptr %3, i32 0, i32 3
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %9, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %11, i8 %spec.select21)
  %cmp21.not.i = icmp eq i8 %11, %spec.select21
  br i1 %cmp21.not.i, label %if.end18.i.do.body10_crit_edge, label %if.then29.i, !prof !112

if.end18.i.do.body10_crit_edge:                   ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body10

if.then29.i:                                      ; preds = %if.end18.i
  %call30.i = tail call i32 @ssb_pcmcia_switch_segment(ptr noundef %3, i8 noundef zeroext %spec.select21) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i)
  %tobool31.not.i = icmp eq i32 %call30.i, 0
  br i1 %tobool31.not.i, label %if.then29.i.do.body10_crit_edge, label %if.then29.i.if.end_crit_edge, !prof !112

if.then29.i.if.end_crit_edge:                     ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then29.i.do.body10_crit_edge:                  ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body10

do.body10:                                        ; preds = %if.then29.i.do.body10_crit_edge, %if.end18.i.do.body10_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !121
  tail call void @arm_heavy_mb() #7
  %12 = tail call i16 @llvm.bswap.i16(i16 %value)
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  %conv13 = zext i16 %spec.select to i32
  %add.ptr = getelementptr i8, ptr %14, i32 %conv13
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 %12) #7, !srcloc !122
  br label %if.end

if.end:                                           ; preds = %do.body10, %if.then29.i.if.end_crit_edge, %if.then8.i.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bar_lock, i32 noundef %call3) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ssb_pcmcia_write32(ptr noundef %dev, i16 noundef zeroext %offset, i32 noundef %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %bus1 = getelementptr inbounds %struct.ssb_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %bus1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus1, align 4
  %bar_lock = getelementptr inbounds %struct.ssb_bus, ptr %1, i32 0, i32 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bar_lock) #7
  %2 = ptrtoint ptr %bus1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus1, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2047, i16 %offset)
  %cmp.i = icmp ugt i16 %offset, 2047
  %sub.i = add i16 %offset, -2048
  %spec.select = select i1 %cmp.i, i16 %sub.i, i16 %offset
  %spec.select34 = zext i1 %cmp.i to i8
  %mapped_device.i = getelementptr inbounds %struct.ssb_bus, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %mapped_device.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mapped_device.i, align 4
  %cmp5.not.i = icmp eq ptr %5, %dev
  br i1 %cmp5.not.i, label %entry.if.end18.i_crit_edge, label %if.then8.i, !prof !112

entry.if.end18.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18.i

if.then8.i:                                       ; preds = %entry
  %core_index.i.i = getelementptr inbounds %struct.ssb_device, ptr %dev, i32 0, i32 5
  %6 = ptrtoint ptr %core_index.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %core_index.i.i, align 2
  %call.i.i = tail call i32 @ssb_pcmcia_switch_coreidx(ptr noundef %3, i8 noundef zeroext %7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %ssb_pcmcia_switch_core.exit.thread.i, label %if.then8.i.if.end_crit_edge

if.then8.i.if.end_crit_edge:                      ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

ssb_pcmcia_switch_core.exit.thread.i:             ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %mapped_device.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %dev, ptr %mapped_device.i, align 4
  br label %if.end18.i

if.end18.i:                                       ; preds = %ssb_pcmcia_switch_core.exit.thread.i, %entry.if.end18.i_crit_edge
  %9 = getelementptr inbounds %struct.ssb_bus, ptr %3, i32 0, i32 3
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %9, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %11, i8 %spec.select34)
  %cmp21.not.i = icmp eq i8 %11, %spec.select34
  br i1 %cmp21.not.i, label %if.end18.i.do.body10_crit_edge, label %if.then29.i, !prof !112

if.end18.i.do.body10_crit_edge:                   ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body10

if.then29.i:                                      ; preds = %if.end18.i
  %call30.i = tail call i32 @ssb_pcmcia_switch_segment(ptr noundef %3, i8 noundef zeroext %spec.select34) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i)
  %tobool31.not.i = icmp eq i32 %call30.i, 0
  br i1 %tobool31.not.i, label %if.then29.i.do.body10_crit_edge, label %if.then29.i.if.end_crit_edge, !prof !112

if.then29.i.if.end_crit_edge:                     ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then29.i.do.body10_crit_edge:                  ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body10

do.body10:                                        ; preds = %if.then29.i.do.body10_crit_edge, %if.end18.i.do.body10_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  tail call void @arm_heavy_mb() #7
  %conv13 = trunc i32 %value to i16
  %12 = tail call i16 @llvm.bswap.i16(i16 %conv13)
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  %conv14 = zext i16 %spec.select to i32
  %add.ptr = getelementptr i8, ptr %14, i32 %conv14
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 %12) #7, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !124
  tail call void @arm_heavy_mb() #7
  %shr = lshr i32 %value, 16
  %conv19 = trunc i32 %shr to i16
  %15 = tail call i16 @llvm.bswap.i16(i16 %conv19)
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %add.ptr22 = getelementptr i8, ptr %17, i32 %conv14
  %add.ptr23 = getelementptr i8, ptr %add.ptr22, i32 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr23, i16 %15) #7, !srcloc !122
  br label %if.end

if.end:                                           ; preds = %do.body10, %if.then29.i.if.end_crit_edge, %if.then8.i.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bar_lock, i32 noundef %call3) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ssb_pcmcia_block_read(ptr noundef %dev, ptr nocapture noundef writeonly %buffer, i32 noundef %count, i16 noundef zeroext %offset, i8 noundef zeroext %reg_width) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %bus1 = getelementptr inbounds %struct.ssb_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %bus1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %conv = zext i16 %offset to i32
  %add.ptr = getelementptr i8, ptr %3, i32 %conv
  %bar_lock = getelementptr inbounds %struct.ssb_bus, ptr %1, i32 0, i32 4
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bar_lock) #7
  %4 = ptrtoint ptr %bus1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus1, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2047, i16 %offset)
  %cmp.i = icmp ugt i16 %offset, 2047
  %spec.select = zext i1 %cmp.i to i8
  %mapped_device.i = getelementptr inbounds %struct.ssb_bus, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %mapped_device.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mapped_device.i, align 4
  %cmp5.not.i = icmp eq ptr %7, %dev
  br i1 %cmp5.not.i, label %entry.if.end18.i_crit_edge, label %if.then8.i, !prof !112

entry.if.end18.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18.i

if.then8.i:                                       ; preds = %entry
  %core_index.i.i = getelementptr inbounds %struct.ssb_device, ptr %dev, i32 0, i32 5
  %8 = ptrtoint ptr %core_index.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %core_index.i.i, align 2
  %call.i.i = tail call i32 @ssb_pcmcia_switch_coreidx(ptr noundef %5, i8 noundef zeroext %9) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %ssb_pcmcia_switch_core.exit.thread.i, label %if.then8.i.if.then_crit_edge

if.then8.i.if.then_crit_edge:                     ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

ssb_pcmcia_switch_core.exit.thread.i:             ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %mapped_device.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %dev, ptr %mapped_device.i, align 4
  br label %if.end18.i

if.end18.i:                                       ; preds = %ssb_pcmcia_switch_core.exit.thread.i, %entry.if.end18.i_crit_edge
  %11 = getelementptr inbounds %struct.ssb_bus, ptr %5, i32 0, i32 3
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %11, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %13, i8 %spec.select)
  %cmp21.not.i = icmp eq i8 %13, %spec.select
  br i1 %cmp21.not.i, label %if.end18.i.if.end_crit_edge, label %if.then29.i, !prof !112

if.end18.i.if.end_crit_edge:                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then29.i:                                      ; preds = %if.end18.i
  %call30.i = tail call i32 @ssb_pcmcia_switch_segment(ptr noundef %5, i8 noundef zeroext %spec.select) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i)
  %tobool31.not.i = icmp eq i32 %call30.i, 0
  br i1 %tobool31.not.i, label %if.then29.i.if.end_crit_edge, label %if.then29.i.if.then_crit_edge, !prof !112

if.then29.i.if.then_crit_edge:                    ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then29.i.if.end_crit_edge:                     ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %if.then29.i.if.then_crit_edge, %if.then8.i.if.then_crit_edge
  %14 = call ptr @memset(ptr %buffer, i32 255, i32 %count)
  br label %unlock

if.end:                                           ; preds = %if.then29.i.if.end_crit_edge, %if.end18.i.if.end_crit_edge
  %15 = zext i8 %reg_width to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values)
  switch i8 %reg_width, label %do.end107 [
    i8 1, label %while.cond.preheader
    i8 2, label %sw.bb13
    i8 4, label %sw.bb51
  ]

while.cond.preheader:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool11.not157 = icmp eq i32 %count, 0
  br i1 %tobool11.not157, label %while.cond.preheader.unlock_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.unlock_crit_edge:            ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %count.addr.0159 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %count, %while.cond.preheader.while.body_crit_edge ]
  %buf.0158 = phi ptr [ %incdec.ptr, %while.body.while.body_crit_edge ], [ %buffer, %while.cond.preheader.while.body_crit_edge ]
  %16 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #7, !srcloc !113
  %17 = ptrtoint ptr %buf.0158 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %buf.0158, align 1
  %incdec.ptr = getelementptr i8, ptr %buf.0158, i32 1
  %dec = add i32 %count.addr.0159, -1
  %tobool11.not = icmp eq i32 %dec, 0
  br i1 %tobool11.not, label %while.body.unlock_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.body.unlock_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock

sw.bb13:                                          ; preds = %if.end
  %and = and i32 %count, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool15.not = icmp eq i32 %and, 0
  br i1 %tobool15.not, label %if.end37, label %if.end37.thread, !prof !112

if.end37.thread:                                  ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 302, i32 noundef 9, ptr noundef null) #7
  br label %while.body47.preheader

if.end37:                                         ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool46.not154 = icmp eq i32 %count, 0
  br i1 %tobool46.not154, label %if.end37.unlock_crit_edge, label %if.end37.while.body47.preheader_crit_edge

if.end37.while.body47.preheader_crit_edge:        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body47.preheader

if.end37.unlock_crit_edge:                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock

while.body47.preheader:                           ; preds = %if.end37.while.body47.preheader_crit_edge, %if.end37.thread
  br label %while.body47

while.body47:                                     ; preds = %while.body47.while.body47_crit_edge, %while.body47.preheader
  %count.addr.1156 = phi i32 [ %sub, %while.body47.while.body47_crit_edge ], [ %count, %while.body47.preheader ]
  %buf14.0155 = phi ptr [ %incdec.ptr49, %while.body47.while.body47_crit_edge ], [ %buffer, %while.body47.preheader ]
  %18 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #7, !srcloc !115
  %19 = ptrtoint ptr %buf14.0155 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %buf14.0155, align 2
  %incdec.ptr49 = getelementptr i16, ptr %buf14.0155, i32 1
  %sub = add i32 %count.addr.1156, -2
  %tobool46.not = icmp eq i32 %sub, 0
  br i1 %tobool46.not, label %while.body47.unlock_crit_edge, label %while.body47.while.body47_crit_edge

while.body47.while.body47_crit_edge:              ; preds = %while.body47
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body47

while.body47.unlock_crit_edge:                    ; preds = %while.body47
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock

sw.bb51:                                          ; preds = %if.end
  %and54 = and i32 %count, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not = icmp eq i32 %and54, 0
  br i1 %tobool55.not, label %if.end77, label %if.end77.thread, !prof !112

if.end77.thread:                                  ; preds = %sw.bb51
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 313, i32 noundef 9, ptr noundef null) #7
  br label %while.body87.lr.ph

if.end77:                                         ; preds = %sw.bb51
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool86.not151 = icmp eq i32 %count, 0
  br i1 %tobool86.not151, label %if.end77.unlock_crit_edge, label %if.end77.while.body87.lr.ph_crit_edge

if.end77.while.body87.lr.ph_crit_edge:            ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body87.lr.ph

if.end77.unlock_crit_edge:                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock

while.body87.lr.ph:                               ; preds = %if.end77.while.body87.lr.ph_crit_edge, %if.end77.thread
  %add.ptr90 = getelementptr i8, ptr %add.ptr, i32 2
  br label %while.body87

while.body87:                                     ; preds = %while.body87.while.body87_crit_edge, %while.body87.lr.ph
  %count.addr.2153 = phi i32 [ %count, %while.body87.lr.ph ], [ %sub93, %while.body87.while.body87_crit_edge ]
  %buf52.0152 = phi ptr [ %buffer, %while.body87.lr.ph ], [ %incdec.ptr92, %while.body87.while.body87_crit_edge ]
  %20 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #7, !srcloc !115
  %21 = ptrtoint ptr %buf52.0152 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %buf52.0152, align 2
  %incdec.ptr89 = getelementptr i16, ptr %buf52.0152, i32 1
  %22 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr90) #7, !srcloc !115
  %23 = ptrtoint ptr %incdec.ptr89 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %22, ptr %incdec.ptr89, align 2
  %incdec.ptr92 = getelementptr i16, ptr %buf52.0152, i32 2
  %sub93 = add i32 %count.addr.2153, -4
  %tobool86.not = icmp eq i32 %sub93, 0
  br i1 %tobool86.not, label %while.body87.unlock_crit_edge, label %while.body87.while.body87_crit_edge

while.body87.while.body87_crit_edge:              ; preds = %while.body87
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body87

while.body87.unlock_crit_edge:                    ; preds = %while.body87
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock

do.end107:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 324, i32 noundef 9, ptr noundef null) #7
  br label %unlock

unlock:                                           ; preds = %do.end107, %while.body87.unlock_crit_edge, %if.end77.unlock_crit_edge, %while.body47.unlock_crit_edge, %if.end37.unlock_crit_edge, %while.body.unlock_crit_edge, %while.cond.preheader.unlock_crit_edge, %if.then
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bar_lock, i32 noundef %call4) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ssb_pcmcia_block_write(ptr noundef %dev, ptr nocapture noundef readonly %buffer, i32 noundef %count, i16 noundef zeroext %offset, i8 noundef zeroext %reg_width) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %bus1 = getelementptr inbounds %struct.ssb_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %bus1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %conv = zext i16 %offset to i32
  %add.ptr = getelementptr i8, ptr %3, i32 %conv
  %bar_lock = getelementptr inbounds %struct.ssb_bus, ptr %1, i32 0, i32 4
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bar_lock) #7
  %4 = ptrtoint ptr %bus1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus1, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2047, i16 %offset)
  %cmp.i = icmp ugt i16 %offset, 2047
  %spec.select = zext i1 %cmp.i to i8
  %mapped_device.i = getelementptr inbounds %struct.ssb_bus, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %mapped_device.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mapped_device.i, align 4
  %cmp5.not.i = icmp eq ptr %7, %dev
  br i1 %cmp5.not.i, label %entry.if.end18.i_crit_edge, label %if.then8.i, !prof !112

entry.if.end18.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18.i

if.then8.i:                                       ; preds = %entry
  %core_index.i.i = getelementptr inbounds %struct.ssb_device, ptr %dev, i32 0, i32 5
  %8 = ptrtoint ptr %core_index.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %core_index.i.i, align 2
  %call.i.i = tail call i32 @ssb_pcmcia_switch_coreidx(ptr noundef %5, i8 noundef zeroext %9) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %ssb_pcmcia_switch_core.exit.thread.i, label %if.then8.i.unlock_crit_edge

if.then8.i.unlock_crit_edge:                      ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock

ssb_pcmcia_switch_core.exit.thread.i:             ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %mapped_device.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %dev, ptr %mapped_device.i, align 4
  br label %if.end18.i

if.end18.i:                                       ; preds = %ssb_pcmcia_switch_core.exit.thread.i, %entry.if.end18.i_crit_edge
  %11 = getelementptr inbounds %struct.ssb_bus, ptr %5, i32 0, i32 3
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %11, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %13, i8 %spec.select)
  %cmp21.not.i = icmp eq i8 %13, %spec.select
  br i1 %cmp21.not.i, label %if.end18.i.if.end_crit_edge, label %if.then29.i, !prof !112

if.end18.i.if.end_crit_edge:                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then29.i:                                      ; preds = %if.end18.i
  %call30.i = tail call i32 @ssb_pcmcia_switch_segment(ptr noundef %5, i8 noundef zeroext %spec.select) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i)
  %tobool31.not.i = icmp eq i32 %call30.i, 0
  br i1 %tobool31.not.i, label %if.then29.i.if.end_crit_edge, label %if.then29.i.unlock_crit_edge, !prof !112

if.then29.i.unlock_crit_edge:                     ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock

if.then29.i.if.end_crit_edge:                     ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %if.then29.i.if.end_crit_edge, %if.end18.i.if.end_crit_edge
  %14 = zext i8 %reg_width to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.57)
  switch i8 %reg_width, label %do.end103 [
    i8 1, label %while.cond.preheader
    i8 2, label %sw.bb12
    i8 4, label %sw.bb49
  ]

while.cond.preheader:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool11.not151 = icmp eq i32 %count, 0
  br i1 %tobool11.not151, label %while.cond.preheader.unlock_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.unlock_crit_edge:            ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %count.addr.0153 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %count, %while.cond.preheader.while.body_crit_edge ]
  %buf.0152 = phi ptr [ %incdec.ptr, %while.body.while.body_crit_edge ], [ %buffer, %while.cond.preheader.while.body_crit_edge ]
  %15 = ptrtoint ptr %buf.0152 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %buf.0152, align 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %16) #7, !srcloc !120
  %incdec.ptr = getelementptr i8, ptr %buf.0152, i32 1
  %dec = add i32 %count.addr.0153, -1
  %tobool11.not = icmp eq i32 %dec, 0
  br i1 %tobool11.not, label %while.body.unlock_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.body.unlock_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock

sw.bb12:                                          ; preds = %if.end
  %and = and i32 %count, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool14.not = icmp eq i32 %and, 0
  br i1 %tobool14.not, label %if.end36, label %if.end36.thread, !prof !112

if.end36.thread:                                  ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 399, i32 noundef 9, ptr noundef null) #7
  br label %while.body46.preheader

if.end36:                                         ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool45.not148 = icmp eq i32 %count, 0
  br i1 %tobool45.not148, label %if.end36.unlock_crit_edge, label %if.end36.while.body46.preheader_crit_edge

if.end36.while.body46.preheader_crit_edge:        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body46.preheader

if.end36.unlock_crit_edge:                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock

while.body46.preheader:                           ; preds = %if.end36.while.body46.preheader_crit_edge, %if.end36.thread
  br label %while.body46

while.body46:                                     ; preds = %while.body46.while.body46_crit_edge, %while.body46.preheader
  %count.addr.1150 = phi i32 [ %sub, %while.body46.while.body46_crit_edge ], [ %count, %while.body46.preheader ]
  %buf13.0149 = phi ptr [ %incdec.ptr47, %while.body46.while.body46_crit_edge ], [ %buffer, %while.body46.preheader ]
  %17 = ptrtoint ptr %buf13.0149 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %buf13.0149, align 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 %18) #7, !srcloc !122
  %incdec.ptr47 = getelementptr i16, ptr %buf13.0149, i32 1
  %sub = add i32 %count.addr.1150, -2
  %tobool45.not = icmp eq i32 %sub, 0
  br i1 %tobool45.not, label %while.body46.unlock_crit_edge, label %while.body46.while.body46_crit_edge

while.body46.while.body46_crit_edge:              ; preds = %while.body46
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body46

while.body46.unlock_crit_edge:                    ; preds = %while.body46
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock

sw.bb49:                                          ; preds = %if.end
  %and52 = and i32 %count, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  br i1 %tobool53.not, label %if.end75, label %if.end75.thread, !prof !112

if.end75.thread:                                  ; preds = %sw.bb49
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 410, i32 noundef 9, ptr noundef null) #7
  br label %while.body85.lr.ph

if.end75:                                         ; preds = %sw.bb49
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool84.not145 = icmp eq i32 %count, 0
  br i1 %tobool84.not145, label %if.end75.unlock_crit_edge, label %if.end75.while.body85.lr.ph_crit_edge

if.end75.while.body85.lr.ph_crit_edge:            ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body85.lr.ph

if.end75.unlock_crit_edge:                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock

while.body85.lr.ph:                               ; preds = %if.end75.while.body85.lr.ph_crit_edge, %if.end75.thread
  %add.ptr87 = getelementptr i8, ptr %add.ptr, i32 2
  br label %while.body85

while.body85:                                     ; preds = %while.body85.while.body85_crit_edge, %while.body85.lr.ph
  %count.addr.2147 = phi i32 [ %count, %while.body85.lr.ph ], [ %sub89, %while.body85.while.body85_crit_edge ]
  %buf50.0146 = phi ptr [ %buffer, %while.body85.lr.ph ], [ %incdec.ptr88, %while.body85.while.body85_crit_edge ]
  %19 = ptrtoint ptr %buf50.0146 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %buf50.0146, align 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 %20) #7, !srcloc !122
  %incdec.ptr86 = getelementptr i16, ptr %buf50.0146, i32 1
  %21 = ptrtoint ptr %incdec.ptr86 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %incdec.ptr86, align 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr87, i16 %22) #7, !srcloc !122
  %incdec.ptr88 = getelementptr i16, ptr %buf50.0146, i32 2
  %sub89 = add i32 %count.addr.2147, -4
  %tobool84.not = icmp eq i32 %sub89, 0
  br i1 %tobool84.not, label %while.body85.unlock_crit_edge, label %while.body85.while.body85_crit_edge

while.body85.while.body85_crit_edge:              ; preds = %while.body85
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body85

while.body85.unlock_crit_edge:                    ; preds = %while.body85
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock

do.end103:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 421, i32 noundef 9, ptr noundef null) #7
  br label %unlock

unlock:                                           ; preds = %do.end103, %while.body85.unlock_crit_edge, %if.end75.unlock_crit_edge, %while.body46.unlock_crit_edge, %if.end36.unlock_crit_edge, %while.body.unlock_crit_edge, %while.cond.preheader.unlock_crit_edge, %if.then29.i.unlock_crit_edge, %if.then8.i.unlock_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bar_lock, i32 noundef %call4) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ssb_pcmcia_get_invariants(ptr nocapture noundef readonly %bus, ptr noundef %iv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sprom1 = getelementptr inbounds %struct.ssb_init_invariants, ptr %iv, i32 0, i32 1
  %0 = call ptr @memset(ptr %sprom1, i32 255, i32 540)
  %1 = ptrtoint ptr %sprom1 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 1, ptr %sprom1, align 4
  %boardflags_lo = getelementptr inbounds %struct.ssb_init_invariants, ptr %iv, i32 0, i32 1, i32 70
  %2 = ptrtoint ptr %boardflags_lo to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 0, ptr %boardflags_lo, align 4
  %boardflags_hi = getelementptr inbounds %struct.ssb_init_invariants, ptr %iv, i32 0, i32 1, i32 71
  %3 = ptrtoint ptr %boardflags_hi to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 0, ptr %boardflags_hi, align 2
  %4 = getelementptr inbounds %struct.ssb_bus, ptr %bus, i32 0, i32 6
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %call = tail call i32 @pcmcia_loop_tuple(ptr noundef %6, i8 noundef zeroext 34, ptr noundef nonnull @ssb_pcmcia_get_mac, ptr noundef %sprom1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup.sink.split_crit_edge

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %4, align 4
  %call3 = tail call i32 @pcmcia_loop_tuple(ptr noundef %8, i8 noundef zeroext -128, ptr noundef nonnull @ssb_pcmcia_do_get_invariants, ptr noundef %iv) #7
  %9 = zext i32 %call3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.58)
  switch i32 %call3, label %if.end.cleanup.sink.split_crit_edge [
    i32 0, label %if.end.cleanup_crit_edge
    i32 -28, label %if.end.cleanup_crit_edge22
  ]

if.end.cleanup_crit_edge22:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %.str.8.sink = phi ptr [ @.str.5, %entry.cleanup.sink.split_crit_edge ], [ @.str.8, %if.end.cleanup.sink.split_crit_edge ]
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.8.sink) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge, %if.end.cleanup_crit_edge22
  %retval.0 = phi i32 [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge22 ], [ -19, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcmcia_loop_tuple(ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ssb_pcmcia_get_mac(ptr nocapture noundef readnone %p_dev, ptr nocapture noundef readonly %tuple, ptr nocapture noundef writeonly %priv) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %TupleData = getelementptr inbounds %struct.tuple_t, ptr %tuple, i32 0, i32 10
  %0 = ptrtoint ptr %TupleData to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %TupleData, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %3)
  %cmp.not = icmp eq i8 %3, 4
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %TupleDataLen = getelementptr inbounds %struct.tuple_t, ptr %tuple, i32 0, i32 9
  %4 = ptrtoint ptr %TupleDataLen to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %TupleDataLen, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %5)
  %cmp3.not = icmp eq i8 %5, 8
  br i1 %cmp3.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %arrayidx8 = getelementptr i8, ptr %1, i32 1
  %6 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %7)
  %cmp10.not = icmp eq i8 %7, 6
  br i1 %cmp10.not, label %if.end13, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end13:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %il0mac = getelementptr inbounds %struct.ssb_sprom, ptr %priv, i32 0, i32 2
  %arrayidx15 = getelementptr i8, ptr %1, i32 2
  %8 = call ptr @memcpy(ptr %il0mac, ptr %arrayidx15, i32 6)
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end13 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ssb_pcmcia_do_get_invariants(ptr nocapture noundef readnone %p_dev, ptr nocapture noundef readonly %tuple, ptr noundef writeonly %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %TupleDataLen = getelementptr inbounds %struct.tuple_t, ptr %tuple, i32 0, i32 9
  %0 = ptrtoint ptr %TupleDataLen to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %TupleDataLen, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp = icmp eq i8 %1, 0
  br i1 %cmp, label %entry.do.end234_crit_edge, label %do.end, !prof !111

entry.do.end234_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end234

do.end:                                           ; preds = %entry
  %TupleData = getelementptr inbounds %struct.tuple_t, ptr %tuple, i32 0, i32 10
  %2 = ptrtoint ptr %TupleData to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %TupleData, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 1
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.59)
  switch i8 %5, label %do.end.cleanup_crit_edge [
    i8 1, label %do.body5
    i8 2, label %do.body33
    i8 3, label %do.body52
    i8 9, label %do.body209
    i8 5, label %do.body112
    i8 6, label %do.body130
    i8 7, label %do.body150
    i8 8, label %do.body177
  ]

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body5:                                         ; preds = %do.end
  %7 = and i8 %1, -3
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %7)
  %.not = icmp eq i8 %7, 5
  br i1 %.not, label %do.end23, label %do.body5.do.end234_crit_edge, !prof !112

do.body5.do.end234_crit_edge:                     ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end234

do.end23:                                         ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx25 = getelementptr i8, ptr %3, i32 1
  %8 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx25, align 1
  %conv26 = zext i8 %9 to i16
  %arrayidx28 = getelementptr i8, ptr %3, i32 2
  %10 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx28, align 1
  %conv30 = zext i8 %11 to i16
  %shl = shl nuw i16 %conv30, 8
  %or = or i16 %shl, %conv26
  %12 = ptrtoint ptr %priv to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %or, ptr %priv, align 2
  br label %cleanup

do.body33:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %1)
  %cmp36.not = icmp eq i8 %1, 2
  br i1 %cmp36.not, label %do.end47, label %do.body33.do.end234_crit_edge, !prof !112

do.body33.do.end234_crit_edge:                    ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end234

do.end47:                                         ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx49 = getelementptr i8, ptr %3, i32 1
  %13 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx49, align 1
  %conv50 = zext i8 %14 to i16
  %board_rev = getelementptr inbounds %struct.ssb_init_invariants, ptr %priv, i32 0, i32 1, i32 13
  %15 = ptrtoint ptr %board_rev to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv50, ptr %board_rev, align 2
  br label %cleanup

do.body52:                                        ; preds = %do.end
  %16 = add i8 %1, -11
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %16)
  %17 = icmp ult i8 %16, -2
  br i1 %17, label %do.body52.do.end234_crit_edge, label %do.end72, !prof !111

do.body52.do.end234_crit_edge:                    ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end234

do.end72:                                         ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx74 = getelementptr i8, ptr %3, i32 1
  %18 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx74, align 1
  %conv75 = zext i8 %19 to i16
  %arrayidx77 = getelementptr i8, ptr %3, i32 2
  %20 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx77, align 1
  %conv79 = zext i8 %21 to i16
  %shl80 = shl nuw i16 %conv79, 8
  %or81 = or i16 %shl80, %conv75
  %pa0b0 = getelementptr inbounds %struct.ssb_init_invariants, ptr %priv, i32 0, i32 1, i32 22
  %22 = ptrtoint ptr %pa0b0 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %or81, ptr %pa0b0, align 4
  %23 = ptrtoint ptr %TupleData to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %TupleData, align 4
  %arrayidx84 = getelementptr i8, ptr %24, i32 3
  %25 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx84, align 1
  %conv85 = zext i8 %26 to i16
  %arrayidx87 = getelementptr i8, ptr %24, i32 4
  %27 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx87, align 1
  %conv89 = zext i8 %28 to i16
  %shl90 = shl nuw i16 %conv89, 8
  %or91 = or i16 %shl90, %conv85
  %pa0b1 = getelementptr inbounds %struct.ssb_init_invariants, ptr %priv, i32 0, i32 1, i32 23
  %29 = ptrtoint ptr %pa0b1 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %or91, ptr %pa0b1, align 2
  %30 = load ptr, ptr %TupleData, align 4
  %arrayidx94 = getelementptr i8, ptr %30, i32 5
  %31 = ptrtoint ptr %arrayidx94 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx94, align 1
  %conv95 = zext i8 %32 to i16
  %arrayidx97 = getelementptr i8, ptr %30, i32 6
  %33 = ptrtoint ptr %arrayidx97 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx97, align 1
  %conv99 = zext i8 %34 to i16
  %shl100 = shl nuw i16 %conv99, 8
  %or101 = or i16 %shl100, %conv95
  %pa0b2 = getelementptr inbounds %struct.ssb_init_invariants, ptr %priv, i32 0, i32 1, i32 24
  %35 = ptrtoint ptr %pa0b2 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %or101, ptr %pa0b2, align 4
  %36 = load ptr, ptr %TupleData, align 4
  %arrayidx104 = getelementptr i8, ptr %36, i32 7
  %37 = ptrtoint ptr %arrayidx104 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx104, align 1
  %itssi_a = getelementptr inbounds %struct.ssb_init_invariants, ptr %priv, i32 0, i32 1, i32 42
  %39 = ptrtoint ptr %itssi_a to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %38, ptr %itssi_a, align 4
  %40 = load ptr, ptr %TupleData, align 4
  %arrayidx106 = getelementptr i8, ptr %40, i32 7
  %41 = ptrtoint ptr %arrayidx106 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx106, align 1
  %itssi_bg = getelementptr inbounds %struct.ssb_init_invariants, ptr %priv, i32 0, i32 1, i32 43
  %43 = ptrtoint ptr %itssi_bg to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %42, ptr %itssi_bg, align 1
  %44 = load ptr, ptr %TupleData, align 4
  %arrayidx108 = getelementptr i8, ptr %44, i32 8
  %45 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx108, align 1
  %maxpwr_a = getelementptr inbounds %struct.ssb_init_invariants, ptr %priv, i32 0, i32 1, i32 40
  %47 = ptrtoint ptr %maxpwr_a to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %46, ptr %maxpwr_a, align 2
  %48 = load ptr, ptr %TupleData, align 4
  %arrayidx110 = getelementptr i8, ptr %48, i32 8
  %49 = ptrtoint ptr %arrayidx110 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx110, align 1
  %maxpwr_bg = getelementptr inbounds %struct.ssb_init_invariants, ptr %priv, i32 0, i32 1, i32 38
  %51 = ptrtoint ptr %maxpwr_bg to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %50, ptr %maxpwr_bg, align 4
  br label %cleanup

do.body112:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %1)
  %cmp115.not = icmp eq i8 %1, 2
  br i1 %cmp115.not, label %do.end126, label %do.body112.do.end234_crit_edge, !prof !112

do.body112.do.end234_crit_edge:                   ; preds = %do.body112
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end234

do.end126:                                        ; preds = %do.body112
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx128 = getelementptr i8, ptr %3, i32 1
  %52 = ptrtoint ptr %arrayidx128 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx128, align 1
  %country_code = getelementptr inbounds %struct.ssb_init_invariants, ptr %priv, i32 0, i32 1, i32 16
  %54 = ptrtoint ptr %country_code to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %53, ptr %country_code, align 4
  br label %cleanup

do.body130:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %1)
  %cmp133.not = icmp eq i8 %1, 2
  br i1 %cmp133.not, label %do.end144, label %do.body130.do.end234_crit_edge, !prof !112

do.body130.do.end234_crit_edge:                   ; preds = %do.body130
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end234

do.end144:                                        ; preds = %do.body130
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx146 = getelementptr i8, ptr %3, i32 1
  %55 = ptrtoint ptr %arrayidx146 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx146, align 1
  %ant_available_a = getelementptr inbounds %struct.ssb_init_invariants, ptr %priv, i32 0, i32 1, i32 20
  %57 = ptrtoint ptr %ant_available_a to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %56, ptr %ant_available_a, align 1
  %58 = ptrtoint ptr %TupleData to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %TupleData, align 4
  %arrayidx148 = getelementptr i8, ptr %59, i32 1
  %60 = ptrtoint ptr %arrayidx148 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx148, align 1
  %ant_available_bg = getelementptr inbounds %struct.ssb_init_invariants, ptr %priv, i32 0, i32 1, i32 21
  %62 = ptrtoint ptr %ant_available_bg to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %61, ptr %ant_available_bg, align 2
  br label %cleanup

do.body150:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %1)
  %cmp153.not = icmp eq i8 %1, 2
  br i1 %cmp153.not, label %do.end164, label %do.body150.do.end234_crit_edge, !prof !112

do.body150.do.end234_crit_edge:                   ; preds = %do.body150
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end234

do.end164:                                        ; preds = %do.body150
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx166 = getelementptr i8, ptr %3, i32 1
  %63 = ptrtoint ptr %arrayidx166 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx166, align 1
  %antenna_gain = getelementptr inbounds %struct.ssb_init_invariants, ptr %priv, i32 0, i32 1, i32 75
  %65 = ptrtoint ptr %antenna_gain to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %64, ptr %antenna_gain, align 4
  %66 = ptrtoint ptr %TupleData to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %TupleData, align 4
  %arrayidx168 = getelementptr i8, ptr %67, i32 1
  %68 = ptrtoint ptr %arrayidx168 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx168, align 1
  %a1 = getelementptr inbounds %struct.ssb_init_invariants, ptr %priv, i32 0, i32 1, i32 75, i32 1
  %70 = ptrtoint ptr %a1 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %69, ptr %a1, align 1
  %71 = load ptr, ptr %TupleData, align 4
  %arrayidx171 = getelementptr i8, ptr %71, i32 1
  %72 = ptrtoint ptr %arrayidx171 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx171, align 1
  %a2 = getelementptr inbounds %struct.ssb_init_invariants, ptr %priv, i32 0, i32 1, i32 75, i32 2
  %74 = ptrtoint ptr %a2 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %73, ptr %a2, align 2
  %75 = load ptr, ptr %TupleData, align 4
  %arrayidx174 = getelementptr i8, ptr %75, i32 1
  %76 = ptrtoint ptr %arrayidx174 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %arrayidx174, align 1
  %a3 = getelementptr inbounds %struct.ssb_init_invariants, ptr %priv, i32 0, i32 1, i32 75, i32 3
  %78 = ptrtoint ptr %a3 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %77, ptr %a3, align 1
  br label %cleanup

do.body177:                                       ; preds = %do.end
  %79 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %79, ptr @__sancov_gen_cov_switch_values.60)
  switch i8 %1, label %do.body177.do.end234_crit_edge [
    i8 5, label %do.body177.do.end197_crit_edge
    i8 3, label %do.body177.do.end197_crit_edge298
  ]

do.body177.do.end197_crit_edge298:                ; preds = %do.body177
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end197

do.body177.do.end197_crit_edge:                   ; preds = %do.body177
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end197

do.body177.do.end234_crit_edge:                   ; preds = %do.body177
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end234

do.end197:                                        ; preds = %do.body177.do.end197_crit_edge, %do.body177.do.end197_crit_edge298
  %arrayidx199 = getelementptr i8, ptr %3, i32 1
  %80 = ptrtoint ptr %arrayidx199 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %arrayidx199, align 1
  %conv200 = zext i8 %81 to i16
  %arrayidx202 = getelementptr i8, ptr %3, i32 2
  %82 = ptrtoint ptr %arrayidx202 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %arrayidx202, align 1
  %conv204 = zext i8 %83 to i16
  %shl205 = shl nuw i16 %conv204, 8
  %or206 = or i16 %shl205, %conv200
  %boardflags_lo = getelementptr inbounds %struct.ssb_init_invariants, ptr %priv, i32 0, i32 1, i32 70
  %84 = ptrtoint ptr %boardflags_lo to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 %or206, ptr %boardflags_lo, align 4
  br label %cleanup

do.body209:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %1)
  %cmp212.not = icmp eq i8 %1, 5
  br i1 %cmp212.not, label %do.end223, label %do.body209.do.end234_crit_edge, !prof !112

do.body209.do.end234_crit_edge:                   ; preds = %do.body209
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end234

do.end223:                                        ; preds = %do.body209
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx225 = getelementptr i8, ptr %3, i32 1
  %85 = ptrtoint ptr %arrayidx225 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %arrayidx225, align 1
  %gpio0 = getelementptr inbounds %struct.ssb_init_invariants, ptr %priv, i32 0, i32 1, i32 34
  %87 = ptrtoint ptr %gpio0 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %86, ptr %gpio0, align 4
  %88 = ptrtoint ptr %TupleData to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %TupleData, align 4
  %arrayidx227 = getelementptr i8, ptr %89, i32 2
  %90 = ptrtoint ptr %arrayidx227 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %arrayidx227, align 1
  %gpio1 = getelementptr inbounds %struct.ssb_init_invariants, ptr %priv, i32 0, i32 1, i32 35
  %92 = ptrtoint ptr %gpio1 to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %91, ptr %gpio1, align 1
  %93 = load ptr, ptr %TupleData, align 4
  %arrayidx229 = getelementptr i8, ptr %93, i32 3
  %94 = ptrtoint ptr %arrayidx229 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %arrayidx229, align 1
  %gpio2 = getelementptr inbounds %struct.ssb_init_invariants, ptr %priv, i32 0, i32 1, i32 36
  %96 = ptrtoint ptr %gpio2 to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %95, ptr %gpio2, align 2
  %97 = load ptr, ptr %TupleData, align 4
  %arrayidx231 = getelementptr i8, ptr %97, i32 4
  %98 = ptrtoint ptr %arrayidx231 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %arrayidx231, align 1
  %gpio3 = getelementptr inbounds %struct.ssb_init_invariants, ptr %priv, i32 0, i32 1, i32 37
  %100 = ptrtoint ptr %gpio3 to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 %99, ptr %gpio3, align 1
  br label %cleanup

do.end234:                                        ; preds = %do.body209.do.end234_crit_edge, %do.body177.do.end234_crit_edge, %do.body150.do.end234_crit_edge, %do.body130.do.end234_crit_edge, %do.body112.do.end234_crit_edge, %do.body52.do.end234_crit_edge, %do.body33.do.end234_crit_edge, %do.body5.do.end234_crit_edge, %entry.do.end234_crit_edge
  %error_description.0 = phi ptr [ @.str.13, %entry.do.end234_crit_edge ], [ @.str.14, %do.body5.do.end234_crit_edge ], [ @.str.15, %do.body33.do.end234_crit_edge ], [ @.str.16, %do.body52.do.end234_crit_edge ], [ @.str.17, %do.body112.do.end234_crit_edge ], [ @.str.18, %do.body130.do.end234_crit_edge ], [ @.str.19, %do.body150.do.end234_crit_edge ], [ @.str.20, %do.body177.do.end234_crit_edge ], [ @.str.21, %do.body209.do.end234_crit_edge ]
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull %error_description.0) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end234, %do.end223, %do.end197, %do.end164, %do.end144, %do.end126, %do.end72, %do.end47, %do.end23, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %do.end234 ], [ -28, %do.end.cleanup_crit_edge ], [ -28, %do.end223 ], [ -28, %do.end197 ], [ -28, %do.end164 ], [ -28, %do.end144 ], [ -28, %do.end126 ], [ -28, %do.end72 ], [ -28, %do.end47 ], [ -28, %do.end23 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ssb_pcmcia_hardware_setup(ptr nocapture noundef %bus) local_unnamed_addr #0 align 64 {
entry:
  %val.i14 = alloca i8, align 1
  %val.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %bustype = getelementptr inbounds %struct.ssb_bus, ptr %bus, i32 0, i32 5
  %0 = ptrtoint ptr %bustype to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bustype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.not = icmp eq i32 %1, 2
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @ssb_pcmcia_switch_segment(ptr noundef %bus, i8 noundef zeroext 0)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i) #7
  %2 = ptrtoint ptr %val.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %val.i, align 1, !annotation !110
  %3 = getelementptr inbounds %struct.ssb_bus, ptr %bus, i32 0, i32 6
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call.i.i = call i32 @pcmcia_read_config_byte(ptr noundef %5, i32 noundef 0, ptr noundef nonnull %val.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i.i, label %if.end.i, label %if.end.ssb_pcmcia_cor_setup.exit.thread_crit_edge

if.end.ssb_pcmcia_cor_setup.exit.thread_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %ssb_pcmcia_cor_setup.exit.thread

if.end.i:                                         ; preds = %if.end
  %6 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %val.i, align 1
  %8 = and i8 %7, 58
  %9 = or i8 %8, 69
  store i8 %9, ptr %val.i, align 1
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %3, align 4
  %call.i15.i = call i32 @pcmcia_write_config_byte(ptr noundef %11, i32 noundef 0, i8 noundef zeroext %9) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i15.i)
  %cmp.not.i16.i = icmp eq i32 %call.i15.i, 0
  br i1 %cmp.not.i16.i, label %if.end3, label %if.end.i.ssb_pcmcia_cor_setup.exit.thread_crit_edge

if.end.i.ssb_pcmcia_cor_setup.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ssb_pcmcia_cor_setup.exit.thread

ssb_pcmcia_cor_setup.exit.thread:                 ; preds = %if.end.i.ssb_pcmcia_cor_setup.exit.thread_crit_edge, %if.end.ssb_pcmcia_cor_setup.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #7
  br label %cleanup

if.end3:                                          ; preds = %if.end.i
  call void @msleep(i32 noundef 40) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i14) #7
  %12 = ptrtoint ptr %val.i14 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -1, ptr %val.i14, align 1, !annotation !110
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %3, align 4
  %call.i.i15 = call i32 @pcmcia_read_config_byte(ptr noundef %14, i32 noundef 128, ptr noundef nonnull %val.i14) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i15)
  %cmp.not.i.i16 = icmp eq i32 %call.i.i15, 0
  br i1 %cmp.not.i.i16, label %if.end.i19, label %if.end3.ssb_pcmcia_cor_setup.exit22_crit_edge

if.end3.ssb_pcmcia_cor_setup.exit22_crit_edge:    ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %ssb_pcmcia_cor_setup.exit22

if.end.i19:                                       ; preds = %if.end3
  %15 = ptrtoint ptr %val.i14 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %val.i14, align 1
  %17 = and i8 %16, 58
  %18 = or i8 %17, 69
  store i8 %18, ptr %val.i14, align 1
  %19 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %3, align 4
  %call.i15.i17 = call i32 @pcmcia_write_config_byte(ptr noundef %20, i32 noundef 128, i8 noundef zeroext %18) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i15.i17)
  %cmp.not.i16.i18 = icmp eq i32 %call.i15.i17, 0
  br i1 %cmp.not.i16.i18, label %if.end7.i20, label %if.end.i19.ssb_pcmcia_cor_setup.exit22_crit_edge

if.end.i19.ssb_pcmcia_cor_setup.exit22_crit_edge: ; preds = %if.end.i19
  call void @__sanitizer_cov_trace_pc() #9
  br label %ssb_pcmcia_cor_setup.exit22

if.end7.i20:                                      ; preds = %if.end.i19
  call void @__sanitizer_cov_trace_pc() #9
  call void @msleep(i32 noundef 40) #7
  br label %ssb_pcmcia_cor_setup.exit22

ssb_pcmcia_cor_setup.exit22:                      ; preds = %if.end7.i20, %if.end.i19.ssb_pcmcia_cor_setup.exit22_crit_edge, %if.end3.ssb_pcmcia_cor_setup.exit22_crit_edge
  %retval.0.i21 = phi i32 [ 0, %if.end7.i20 ], [ -16, %if.end3.ssb_pcmcia_cor_setup.exit22_crit_edge ], [ -16, %if.end.i19.ssb_pcmcia_cor_setup.exit22_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i14) #7
  br label %cleanup

cleanup:                                          ; preds = %ssb_pcmcia_cor_setup.exit22, %ssb_pcmcia_cor_setup.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %retval.0.i21, %ssb_pcmcia_cor_setup.exit22 ], [ -16, %ssb_pcmcia_cor_setup.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ssb_pcmcia_exit(ptr nocapture noundef readonly %bus) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %bustype = getelementptr inbounds %struct.ssb_bus, ptr %bus, i32 0, i32 5
  %0 = ptrtoint ptr %bustype to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bustype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.not = icmp eq i32 %1, 2
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = getelementptr inbounds %struct.ssb_bus, ptr %bus, i32 0, i32 6
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %dev = getelementptr inbounds %struct.pcmcia_device, ptr %4, i32 0, i32 21
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef nonnull @dev_attr_ssb_sprom) #7
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_file(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ssb_pcmcia_init(ptr noundef %bus) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %bustype = getelementptr inbounds %struct.ssb_bus, ptr %bus, i32 0, i32 5
  %0 = ptrtoint ptr %bustype to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bustype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.not = icmp eq i32 %1, 2
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @ssb_pcmcia_hardware_setup(ptr noundef %bus)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end2, label %if.end.do.end9_crit_edge

if.end.do.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end9

if.end2:                                          ; preds = %if.end
  %sprom_size = getelementptr inbounds %struct.ssb_bus, ptr %bus, i32 0, i32 12
  %2 = ptrtoint ptr %sprom_size to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 256, ptr %sprom_size, align 2
  %sprom_mutex = getelementptr inbounds %struct.ssb_bus, ptr %bus, i32 0, i32 8
  tail call void @__mutex_init(ptr noundef %sprom_mutex, ptr noundef nonnull @.str.10, ptr noundef nonnull @ssb_pcmcia_init.__key) #7
  %3 = getelementptr inbounds %struct.ssb_bus, ptr %bus, i32 0, i32 6
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %dev = getelementptr inbounds %struct.pcmcia_device, ptr %5, i32 0, i32 21
  %call3 = tail call i32 @device_create_file(ptr noundef %dev, ptr noundef nonnull @dev_attr_ssb_sprom) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end2.cleanup_crit_edge, label %if.end2.do.end9_crit_edge

if.end2.do.end9_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end9

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end9:                                          ; preds = %if.end2.do.end9_crit_edge, %if.end.do.end9_crit_edge
  %err.0 = phi i32 [ %call, %if.end.do.end9_crit_edge ], [ %call3, %if.end2.do.end9_crit_edge ]
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end9, %if.end2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %do.end9 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end2.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_file(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcmcia_write_config_byte(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcmcia_read_config_byte(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ssb_sprom_show(ptr noundef %pcmciadev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %pcmciadev, i32 -112
  %call = tail call ptr @ssb_pcmcia_dev_to_bus(ptr noundef %add.ptr) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = tail call i32 @ssb_attr_sprom_show(ptr noundef nonnull %call, ptr noundef %buf, ptr noundef nonnull @ssb_pcmcia_sprom_read_all) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ssb_sprom_store(ptr noundef %pcmciadev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %pcmciadev, i32 -112
  %call = tail call ptr @ssb_pcmcia_dev_to_bus(ptr noundef %add.ptr) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = tail call i32 @ssb_attr_sprom_store(ptr noundef nonnull %call, ptr noundef %buf, i32 noundef %count, ptr noundef nonnull @ssb_pcmcia_sprom_check_crc, ptr noundef nonnull @ssb_pcmcia_sprom_write_all) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ssb_pcmcia_dev_to_bus(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ssb_attr_sprom_show(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ssb_pcmcia_sprom_read_all(ptr nocapture noundef readonly %bus, ptr nocapture noundef writeonly %sprom) #0 align 64 {
entry:
  %value.i.i = alloca i8, align 1
  %lo.i = alloca i8, align 1
  %hi.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.ssb_bus, ptr %bus, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.09 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %conv = trunc i32 %i.09 to i16
  %arrayidx = getelementptr i16, ptr %sprom, i32 %i.09
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %lo.i) #7
  %1 = ptrtoint ptr %lo.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %lo.i, align 1, !annotation !110
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %hi.i) #7
  %2 = ptrtoint ptr %hi.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %hi.i, align 1, !annotation !110
  %mul.i = shl i16 %conv, 1
  %conv3.i = trunc i16 %mul.i to i8
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %0, align 4
  %call.i.i = call i32 @pcmcia_write_config_byte(ptr noundef %4, i32 noundef 60, i8 noundef zeroext %conv3.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i.i, label %if.end.i, label %for.body.ssb_pcmcia_sprom_read.exit.thread_crit_edge

for.body.ssb_pcmcia_sprom_read.exit.thread_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %ssb_pcmcia_sprom_read.exit.thread

if.end.i:                                         ; preds = %for.body
  %5 = lshr i16 %mul.i, 8
  %conv6.i = trunc i16 %5 to i8
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %0, align 4
  %call.i44.i = call i32 @pcmcia_write_config_byte(ptr noundef %7, i32 noundef 62, i8 noundef zeroext %conv6.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i44.i)
  %cmp.not.i45.i = icmp eq i32 %call.i44.i, 0
  br i1 %cmp.not.i45.i, label %if.end10.i, label %if.end.i.ssb_pcmcia_sprom_read.exit.thread_crit_edge

if.end.i.ssb_pcmcia_sprom_read.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ssb_pcmcia_sprom_read.exit.thread

if.end10.i:                                       ; preds = %if.end.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.i.i) #7
  %8 = ptrtoint ptr %value.i.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %value.i.i, align 1, !annotation !110
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %0, align 4
  %call.i.i.i = call i32 @pcmcia_write_config_byte(ptr noundef %10, i32 noundef 54, i8 noundef zeroext 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %if.end10.i.for.body.i.i_crit_edge, label %if.end10.i.ssb_pcmcia_sprom_command.exit.thread.i_crit_edge

if.end10.i.ssb_pcmcia_sprom_command.exit.thread.i_crit_edge: ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ssb_pcmcia_sprom_command.exit.thread.i

if.end10.i.for.body.i.i_crit_edge:                ; preds = %if.end10.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end7.i.i.for.body.i.i_crit_edge, %if.end10.i.for.body.i.i_crit_edge
  %i.018.i.i = phi i32 [ %inc.i.i, %if.end7.i.i.for.body.i.i_crit_edge ], [ 0, %if.end10.i.for.body.i.i_crit_edge ]
  %11 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %0, align 4
  %call.i15.i.i = call i32 @pcmcia_read_config_byte(ptr noundef %12, i32 noundef 54, ptr noundef nonnull %value.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i15.i.i)
  %cmp.not.i16.i.i = icmp eq i32 %call.i15.i.i, 0
  br i1 %cmp.not.i16.i.i, label %if.end4.i.i, label %for.body.i.i.ssb_pcmcia_sprom_command.exit.thread.i_crit_edge

for.body.i.i.ssb_pcmcia_sprom_command.exit.thread.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ssb_pcmcia_sprom_command.exit.thread.i

if.end4.i.i:                                      ; preds = %for.body.i.i
  %13 = ptrtoint ptr %value.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %value.i.i, align 1
  %15 = and i8 %14, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool5.not.i.i = icmp eq i8 %15, 0
  br i1 %tobool5.not.i.i, label %if.end7.i.i, label %if.end14.i

if.end7.i.i:                                      ; preds = %if.end4.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %16(i32 noundef 2147480) #7
  %inc.i.i = add nuw nsw i32 %i.018.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 1000
  br i1 %exitcond.not.i.i, label %if.end7.i.i.ssb_pcmcia_sprom_command.exit.thread.i_crit_edge, label %if.end7.i.i.for.body.i.i_crit_edge

if.end7.i.i.for.body.i.i_crit_edge:               ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

if.end7.i.i.ssb_pcmcia_sprom_command.exit.thread.i_crit_edge: ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ssb_pcmcia_sprom_command.exit.thread.i

ssb_pcmcia_sprom_command.exit.thread.i:           ; preds = %if.end7.i.i.ssb_pcmcia_sprom_command.exit.thread.i_crit_edge, %for.body.i.i.ssb_pcmcia_sprom_command.exit.thread.i_crit_edge, %if.end10.i.ssb_pcmcia_sprom_command.exit.thread.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ -16, %for.body.i.i.ssb_pcmcia_sprom_command.exit.thread.i_crit_edge ], [ -110, %if.end7.i.i.ssb_pcmcia_sprom_command.exit.thread.i_crit_edge ], [ -16, %if.end10.i.ssb_pcmcia_sprom_command.exit.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.i.i) #7
  br label %ssb_pcmcia_sprom_read.exit.thread

if.end14.i:                                       ; preds = %if.end4.i.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.i.i) #7
  %17 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %0, align 4
  %call.i47.i = call i32 @pcmcia_read_config_byte(ptr noundef %18, i32 noundef 56, ptr noundef nonnull %lo.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i47.i)
  %cmp.not.i48.i = icmp eq i32 %call.i47.i, 0
  br i1 %cmp.not.i48.i, label %if.end18.i, label %if.end14.i.ssb_pcmcia_sprom_read.exit.thread_crit_edge

if.end14.i.ssb_pcmcia_sprom_read.exit.thread_crit_edge: ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ssb_pcmcia_sprom_read.exit.thread

if.end18.i:                                       ; preds = %if.end14.i
  %19 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %0, align 4
  %call.i50.i = call i32 @pcmcia_read_config_byte(ptr noundef %20, i32 noundef 58, ptr noundef nonnull %hi.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i50.i)
  %cmp.not.i51.i = icmp eq i32 %call.i50.i, 0
  br i1 %cmp.not.i51.i, label %for.inc, label %if.end18.i.ssb_pcmcia_sprom_read.exit.thread_crit_edge

if.end18.i.ssb_pcmcia_sprom_read.exit.thread_crit_edge: ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ssb_pcmcia_sprom_read.exit.thread

ssb_pcmcia_sprom_read.exit.thread:                ; preds = %if.end18.i.ssb_pcmcia_sprom_read.exit.thread_crit_edge, %if.end14.i.ssb_pcmcia_sprom_read.exit.thread_crit_edge, %ssb_pcmcia_sprom_command.exit.thread.i, %if.end.i.ssb_pcmcia_sprom_read.exit.thread_crit_edge, %for.body.ssb_pcmcia_sprom_read.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %retval.0.i.ph.i, %ssb_pcmcia_sprom_command.exit.thread.i ], [ -16, %if.end18.i.ssb_pcmcia_sprom_read.exit.thread_crit_edge ], [ -16, %if.end14.i.ssb_pcmcia_sprom_read.exit.thread_crit_edge ], [ -16, %if.end.i.ssb_pcmcia_sprom_read.exit.thread_crit_edge ], [ -16, %for.body.ssb_pcmcia_sprom_read.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %hi.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %lo.i) #7
  br label %cleanup

for.inc:                                          ; preds = %if.end18.i
  %21 = ptrtoint ptr %lo.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %lo.i, align 1
  %conv23.i = zext i8 %22 to i16
  %23 = ptrtoint ptr %hi.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %hi.i, align 1
  %conv25.i = zext i8 %24 to i16
  %shl.i = shl nuw i16 %conv25.i, 8
  %or.i = or i16 %shl.i, %conv23.i
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %or.i, ptr %arrayidx, align 2
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %hi.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %lo.i) #7
  %inc = add nuw nsw i32 %i.09, 1
  %exitcond.not = icmp eq i32 %inc, 256
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %ssb_pcmcia_sprom_read.exit.thread
  %retval.0 = phi i32 [ %retval.0.i.ph, %ssb_pcmcia_sprom_read.exit.thread ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ssb_attr_sprom_store(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ssb_pcmcia_sprom_check_crc(ptr nocapture noundef readnone %sprom, i32 noundef %size) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ssb_pcmcia_sprom_write_all(ptr nocapture noundef readonly %bus, ptr nocapture noundef readonly %sprom) #0 align 64 {
entry:
  %value.i102 = alloca i8, align 1
  %value.i.i = alloca i8, align 1
  %value.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25) #10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.i) #7
  %0 = ptrtoint ptr %value.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %value.i, align 1, !annotation !110
  %1 = getelementptr inbounds %struct.ssb_bus, ptr %bus, i32 0, i32 6
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call.i.i = tail call i32 @pcmcia_write_config_byte(ptr noundef %3, i32 noundef 54, i8 noundef zeroext 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i.i, label %entry.for.body.i_crit_edge, label %entry.do.end4_crit_edge

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end4

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

for.body.i:                                       ; preds = %if.end7.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.018.i = phi i32 [ %inc.i, %if.end7.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %call.i15.i = call i32 @pcmcia_read_config_byte(ptr noundef %5, i32 noundef 54, ptr noundef nonnull %value.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i15.i)
  %cmp.not.i16.i = icmp eq i32 %call.i15.i, 0
  br i1 %cmp.not.i16.i, label %if.end4.i, label %for.body.i.do.end4_crit_edge

for.body.i.do.end4_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end4

if.end4.i:                                        ; preds = %for.body.i
  %6 = ptrtoint ptr %value.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %value.i, align 1
  %8 = and i8 %7, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool5.not.i = icmp eq i8 %8, 0
  br i1 %tobool5.not.i, label %if.end7.i, label %do.end9

if.end7.i:                                        ; preds = %if.end4.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %9(i32 noundef 2147480) #7
  %inc.i = add nuw nsw i32 %i.018.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 1000
  br i1 %exitcond.not.i, label %if.end7.i.do.end4_crit_edge, label %if.end7.i.for.body.i_crit_edge

if.end7.i.for.body.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

if.end7.i.do.end4_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end4

do.end4:                                          ; preds = %if.end7.i.do.end4_crit_edge, %for.body.i.do.end4_crit_edge, %entry.do.end4_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.i) #7
  %call6 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28) #10
  br label %cleanup

do.end9:                                          ; preds = %if.end4.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.i) #7
  %call11 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31) #10
  call void @msleep(i32 noundef 500) #7
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end9
  %cmp130 = phi i1 [ true, %do.end9 ], [ %cmp, %for.inc.for.body_crit_edge ]
  %i.0129 = phi i32 [ 0, %do.end9 ], [ %inc, %for.inc.for.body_crit_edge ]
  %10 = zext i32 %i.0129 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.61)
  switch i32 %i.0129, label %if.else36 [
    i32 64, label %for.body.if.end47.sink.split_crit_edge
    i32 128, label %do.end24
    i32 192, label %do.end33
  ]

for.body.if.end47.sink.split_crit_edge:           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end47.sink.split

do.end24:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end47.sink.split

do.end33:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end47.sink.split

if.else36:                                        ; preds = %for.body
  %11 = and i32 %i.0129, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool37.not = icmp eq i32 %11, 0
  br i1 %tobool37.not, label %if.else36.if.end47_crit_edge, label %if.else36.if.end47.sink.split_crit_edge

if.else36.if.end47.sink.split_crit_edge:          ; preds = %if.else36
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end47.sink.split

if.else36.if.end47_crit_edge:                     ; preds = %if.else36
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end47

if.end47.sink.split:                              ; preds = %if.else36.if.end47.sink.split_crit_edge, %do.end33, %do.end24, %for.body.if.end47.sink.split_crit_edge
  %.str.37.sink = phi ptr [ @.str.37, %do.end24 ], [ @.str.40, %do.end33 ], [ @.str.34, %for.body.if.end47.sink.split_crit_edge ], [ @.str.43, %if.else36.if.end47.sink.split_crit_edge ]
  %call26 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.37.sink) #10
  br label %if.end47

if.end47:                                         ; preds = %if.end47.sink.split, %if.else36.if.end47_crit_edge
  %conv = trunc i32 %i.0129 to i8
  %arrayidx = getelementptr i16, ptr %sprom, i32 %i.0129
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx, align 2
  %mul.i = shl i8 %conv, 1
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %call.i.i99 = call i32 @pcmcia_write_config_byte(ptr noundef %15, i32 noundef 60, i8 noundef zeroext %mul.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i99)
  %cmp.not.i.i100 = icmp eq i32 %call.i.i99, 0
  br i1 %cmp.not.i.i100, label %if.end.i, label %if.end47.do.end53_crit_edge

if.end47.do.end53_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end53

if.end.i:                                         ; preds = %if.end47
  %16 = lshr i32 %i.0129, 7
  %conv6.i = trunc i32 %16 to i8
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 4
  %call.i46.i = call i32 @pcmcia_write_config_byte(ptr noundef %18, i32 noundef 62, i8 noundef zeroext %conv6.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i46.i)
  %cmp.not.i47.i = icmp eq i32 %call.i46.i, 0
  br i1 %cmp.not.i47.i, label %if.end10.i, label %if.end.i.do.end53_crit_edge

if.end.i.do.end53_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end53

if.end10.i:                                       ; preds = %if.end.i
  %conv13.i = trunc i16 %13 to i8
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  %call.i49.i = call i32 @pcmcia_write_config_byte(ptr noundef %20, i32 noundef 56, i8 noundef zeroext %conv13.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i49.i)
  %cmp.not.i50.i = icmp eq i32 %call.i49.i, 0
  br i1 %cmp.not.i50.i, label %if.end17.i, label %if.end10.i.do.end53_crit_edge

if.end10.i.do.end53_crit_edge:                    ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end53

if.end17.i:                                       ; preds = %if.end10.i
  %21 = lshr i16 %13, 8
  %conv21.i = trunc i16 %21 to i8
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 4
  %call.i52.i = call i32 @pcmcia_write_config_byte(ptr noundef %23, i32 noundef 58, i8 noundef zeroext %conv21.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i52.i)
  %cmp.not.i53.i = icmp eq i32 %call.i52.i, 0
  br i1 %cmp.not.i53.i, label %if.end25.i, label %if.end17.i.do.end53_crit_edge

if.end17.i.do.end53_crit_edge:                    ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end53

if.end25.i:                                       ; preds = %if.end17.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.i.i) #7
  %24 = ptrtoint ptr %value.i.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 -1, ptr %value.i.i, align 1, !annotation !110
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 4
  %call.i.i.i = call i32 @pcmcia_write_config_byte(ptr noundef %26, i32 noundef 54, i8 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %if.end25.i.for.body.i.i_crit_edge, label %if.end25.i.ssb_pcmcia_sprom_command.exit.thread.i_crit_edge

if.end25.i.ssb_pcmcia_sprom_command.exit.thread.i_crit_edge: ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ssb_pcmcia_sprom_command.exit.thread.i

if.end25.i.for.body.i.i_crit_edge:                ; preds = %if.end25.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end7.i.i.for.body.i.i_crit_edge, %if.end25.i.for.body.i.i_crit_edge
  %i.018.i.i = phi i32 [ %inc.i.i, %if.end7.i.i.for.body.i.i_crit_edge ], [ 0, %if.end25.i.for.body.i.i_crit_edge ]
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %1, align 4
  %call.i15.i.i = call i32 @pcmcia_read_config_byte(ptr noundef %28, i32 noundef 54, ptr noundef nonnull %value.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i15.i.i)
  %cmp.not.i16.i.i = icmp eq i32 %call.i15.i.i, 0
  br i1 %cmp.not.i16.i.i, label %if.end4.i.i, label %for.body.i.i.ssb_pcmcia_sprom_command.exit.thread.i_crit_edge

for.body.i.i.ssb_pcmcia_sprom_command.exit.thread.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ssb_pcmcia_sprom_command.exit.thread.i

if.end4.i.i:                                      ; preds = %for.body.i.i
  %29 = ptrtoint ptr %value.i.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %value.i.i, align 1
  %31 = and i8 %30, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool5.not.i.i = icmp eq i8 %31, 0
  br i1 %tobool5.not.i.i, label %if.end7.i.i, label %for.inc

if.end7.i.i:                                      ; preds = %if.end4.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %32(i32 noundef 2147480) #7
  %inc.i.i = add nuw nsw i32 %i.018.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 1000
  br i1 %exitcond.not.i.i, label %if.end7.i.i.ssb_pcmcia_sprom_command.exit.thread.i_crit_edge, label %if.end7.i.i.for.body.i.i_crit_edge

if.end7.i.i.for.body.i.i_crit_edge:               ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

if.end7.i.i.ssb_pcmcia_sprom_command.exit.thread.i_crit_edge: ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ssb_pcmcia_sprom_command.exit.thread.i

ssb_pcmcia_sprom_command.exit.thread.i:           ; preds = %if.end7.i.i.ssb_pcmcia_sprom_command.exit.thread.i_crit_edge, %for.body.i.i.ssb_pcmcia_sprom_command.exit.thread.i_crit_edge, %if.end25.i.ssb_pcmcia_sprom_command.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.i.i) #7
  br label %do.end53

do.end53:                                         ; preds = %ssb_pcmcia_sprom_command.exit.thread.i, %if.end17.i.do.end53_crit_edge, %if.end10.i.do.end53_crit_edge, %if.end.i.do.end53_crit_edge, %if.end47.do.end53_crit_edge
  %call55 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46) #10
  br label %for.end

for.inc:                                          ; preds = %if.end4.i.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.i.i) #7
  call void @msleep(i32 noundef 20) #7
  %inc = add nuw nsw i32 %i.0129, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %i.0129)
  %cmp = icmp ult i32 %i.0129, 255
  %exitcond.not = icmp eq i32 %inc, 256
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end53
  %cmp126 = phi i1 [ %cmp130, %do.end53 ], [ %cmp, %for.inc.for.end_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.i102) #7
  %33 = ptrtoint ptr %value.i102 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 -1, ptr %value.i102, align 1, !annotation !110
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %1, align 4
  %call.i.i103 = call i32 @pcmcia_write_config_byte(ptr noundef %35, i32 noundef 54, i8 noundef zeroext 7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i103)
  %cmp.not.i.i104 = icmp eq i32 %call.i.i103, 0
  br i1 %cmp.not.i.i104, label %for.end.for.body.i108_crit_edge, label %for.end.do.end62_crit_edge

for.end.do.end62_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end62

for.end.for.body.i108_crit_edge:                  ; preds = %for.end
  br label %for.body.i108

for.body.i108:                                    ; preds = %if.end7.i113.for.body.i108_crit_edge, %for.end.for.body.i108_crit_edge
  %i.018.i105 = phi i32 [ %inc.i111, %if.end7.i113.for.body.i108_crit_edge ], [ 0, %for.end.for.body.i108_crit_edge ]
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %1, align 4
  %call.i15.i106 = call i32 @pcmcia_read_config_byte(ptr noundef %37, i32 noundef 54, ptr noundef nonnull %value.i102) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i15.i106)
  %cmp.not.i16.i107 = icmp eq i32 %call.i15.i106, 0
  br i1 %cmp.not.i16.i107, label %if.end4.i110, label %for.body.i108.do.end62_crit_edge

for.body.i108.do.end62_crit_edge:                 ; preds = %for.body.i108
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end62

if.end4.i110:                                     ; preds = %for.body.i108
  %38 = ptrtoint ptr %value.i102 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %value.i102, align 1
  %40 = and i8 %39, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool5.not.i109 = icmp eq i8 %40, 0
  br i1 %tobool5.not.i109, label %if.end7.i113, label %if.end65

if.end7.i113:                                     ; preds = %if.end4.i110
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %41 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %41(i32 noundef 2147480) #7
  %inc.i111 = add nuw nsw i32 %i.018.i105, 1
  %exitcond.not.i112 = icmp eq i32 %inc.i111, 1000
  br i1 %exitcond.not.i112, label %if.end7.i113.do.end62_crit_edge, label %if.end7.i113.for.body.i108_crit_edge

if.end7.i113.for.body.i108_crit_edge:             ; preds = %if.end7.i113
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i108

if.end7.i113.do.end62_crit_edge:                  ; preds = %if.end7.i113
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end62

do.end62:                                         ; preds = %if.end7.i113.do.end62_crit_edge, %for.body.i108.do.end62_crit_edge, %for.end.do.end62_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.i102) #7
  %call64 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49) #10
  call void @msleep(i32 noundef 500) #7
  br label %cleanup

if.end65:                                         ; preds = %if.end4.i110
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.i102) #7
  call void @msleep(i32 noundef 500) #7
  br i1 %cmp126, label %if.end65.cleanup_crit_edge, label %do.end70

if.end65.cleanup_crit_edge:                       ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end70:                                         ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #9
  %call72 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52) #10
  %call77 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end70, %if.end65.cleanup_crit_edge, %do.end62, %do.end4
  %retval.0 = phi i32 [ -16, %do.end4 ], [ 0, %do.end70 ], [ -16, %if.end65.cleanup_crit_edge ], [ -16, %do.end62 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 55)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 55)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !13, !15, !16, !17, !18, !20, !21, !22, !24, !25, !27, !28, !29, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !51, !52, !53, !55, !56, !58, !59, !60, !61, !63, !64, !65, !67, !68, !69, !71, !72, !73, !75, !76, !77, !79, !80, !81, !83, !84, !85, !87, !88, !89, !91, !92, !93, !95, !96, !97, !99, !100}
!llvm.module.flags = !{!101, !102, !103, !104, !105, !106, !107, !108}
!llvm.ident = !{!109}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/ssb/pcmcia.c", i32 146, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @ssb_pcmcia_switch_coreidx._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @ssb_pcmcia_switch_coreidx._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/ssb/pcmcia.c", i32 192, i32 2}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @ssb_pcmcia_switch_segment._entry, !7, !"_entry", i1 false, i1 false}
!10 = !{ptr @ssb_pcmcia_switch_segment._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @ssb_pcmcia_ops, !12, !"ssb_pcmcia_ops", i1 false, i1 false}
!12 = !{!"../drivers/ssb/pcmcia.c", i32 429, i32 26}
!13 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/ssb/pcmcia.c", i32 712, i32 3}
!15 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @ssb_pcmcia_get_invariants._entry, !14, !"_entry", i1 false, i1 false}
!17 = !{ptr @ssb_pcmcia_get_invariants._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/ssb/pcmcia.c", i32 722, i32 2}
!20 = !{ptr @ssb_pcmcia_get_invariants._entry.7, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @ssb_pcmcia_get_invariants._entry_ptr.9, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @ssb_pcmcia_init.__key, !23, !"__key", i1 false, i1 false}
!23 = !{!"../drivers/ssb/pcmcia.c", i32 822, i32 2}
!24 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/ssb/pcmcia.c", i32 829, i32 2}
!27 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @ssb_pcmcia_init._entry, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @ssb_pcmcia_init._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/ssb/pcmcia.c", i32 621, i32 2}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/ssb/pcmcia.c", i32 624, i32 3}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/ssb/pcmcia.c", i32 631, i32 3}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/ssb/pcmcia.c", i32 636, i32 3}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/ssb/pcmcia.c", i32 654, i32 3}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/ssb/pcmcia.c", i32 659, i32 3}
!42 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/ssb/pcmcia.c", i32 665, i32 3}
!44 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/ssb/pcmcia.c", i32 673, i32 3}
!46 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/ssb/pcmcia.c", i32 680, i32 3}
!48 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/ssb/pcmcia.c", i32 691, i32 2}
!50 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @ssb_pcmcia_do_get_invariants._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @ssb_pcmcia_do_get_invariants._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.24, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/ssb/pcmcia.c", i32 759, i32 8}
!55 = !{ptr @dev_attr_ssb_sprom, !54, !"dev_attr_ssb_sprom", i1 false, i1 false}
!56 = !{ptr @.str.25, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/ssb/pcmcia.c", i32 545, i32 2}
!58 = !{ptr @.str.26, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @ssb_pcmcia_sprom_write_all._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @ssb_pcmcia_sprom_write_all._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.28, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/ssb/pcmcia.c", i32 548, i32 3}
!63 = !{ptr @ssb_pcmcia_sprom_write_all._entry.27, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @ssb_pcmcia_sprom_write_all._entry_ptr.29, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.31, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/ssb/pcmcia.c", i32 551, i32 2}
!67 = !{ptr @ssb_pcmcia_sprom_write_all._entry.30, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @ssb_pcmcia_sprom_write_all._entry_ptr.32, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.34, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/ssb/pcmcia.c", i32 555, i32 4}
!71 = !{ptr @ssb_pcmcia_sprom_write_all._entry.33, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @ssb_pcmcia_sprom_write_all._entry_ptr.35, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.37, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/ssb/pcmcia.c", i32 557, i32 4}
!75 = !{ptr @ssb_pcmcia_sprom_write_all._entry.36, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @ssb_pcmcia_sprom_write_all._entry_ptr.38, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.40, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/ssb/pcmcia.c", i32 559, i32 4}
!79 = !{ptr @ssb_pcmcia_sprom_write_all._entry.39, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @ssb_pcmcia_sprom_write_all._entry_ptr.41, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.43, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/ssb/pcmcia.c", i32 561, i32 4}
!83 = !{ptr @ssb_pcmcia_sprom_write_all._entry.42, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @ssb_pcmcia_sprom_write_all._entry_ptr.44, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.46, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/ssb/pcmcia.c", i32 564, i32 4}
!87 = !{ptr @ssb_pcmcia_sprom_write_all._entry.45, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @ssb_pcmcia_sprom_write_all._entry_ptr.47, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.49, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/ssb/pcmcia.c", i32 571, i32 3}
!91 = !{ptr @ssb_pcmcia_sprom_write_all._entry.48, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @ssb_pcmcia_sprom_write_all._entry_ptr.50, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.52, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/ssb/pcmcia.c", i32 576, i32 3}
!95 = !{ptr @ssb_pcmcia_sprom_write_all._entry.51, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @ssb_pcmcia_sprom_write_all._entry_ptr.53, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.55, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/ssb/pcmcia.c", i32 577, i32 3}
!99 = !{ptr @ssb_pcmcia_sprom_write_all._entry.54, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @ssb_pcmcia_sprom_write_all._entry_ptr.56, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{i32 1, !"wchar_size", i32 2}
!102 = !{i32 1, !"min_enum_size", i32 4}
!103 = !{i32 8, !"branch-target-enforcement", i32 0}
!104 = !{i32 8, !"sign-return-address", i32 0}
!105 = !{i32 8, !"sign-return-address-all", i32 0}
!106 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!107 = !{i32 7, !"uwtable", i32 1}
!108 = !{i32 7, !"frame-pointer", i32 2}
!109 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!110 = !{!"auto-init"}
!111 = !{!"branch_weights", i32 1, i32 2000}
!112 = !{!"branch_weights", i32 2000, i32 1}
!113 = !{i64 5025570}
!114 = !{i64 2156664669}
!115 = !{i64 5024952}
!116 = !{i64 2156665551}
!117 = !{i64 2156666433}
!118 = !{i64 2156666939}
!119 = !{i64 2156673519}
!120 = !{i64 5025175}
!121 = !{i64 2156674184}
!122 = !{i64 5024752}
!123 = !{i64 2156674990}
!124 = !{i64 2156675461}
