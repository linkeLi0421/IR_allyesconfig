; ModuleID = '/llk/IR_all_yes/drivers/mfd/ab8500-debugfs.c_pt.bc'
source_filename = "../drivers/mfd/ab8500-debugfs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ab8500_prcmu_ranges = type { i8, i8, ptr }
%struct.ab8500_reg_range = type { i8, i8, i8 }
%struct.hwreg_cfg = type { i32, i32, i32, i32, i32 }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.ab8500 = type { ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, i32, ptr, i32, i8, ptr, ptr, ptr, [4 x i32], [4 x i32], ptr, ptr, i32, ptr, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.78, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.79, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.80, ptr, %struct.address_space, %struct.list_head, %union.anon.81, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.78 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.79 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.80 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.81 = type { ptr }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@ab8500_dump_all_banks._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1350, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ab8500 register values:\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ab8500_dump_all_banks\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/mfd/ab8500-debugfs.c\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ab8500_dump_all_banks._entry_ptr = internal global ptr @ab8500_dump_all_banks._entry, section ".printk_index", align 4
@ab8500_dump_all_banks._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 1353, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c" bank 0x%02X:\0A\00", [17 x i8] zeroinitializer }, align 32
@ab8500_dump_all_banks._entry_ptr.7 = internal global ptr @ab8500_dump_all_banks._entry.5, section ".printk_index", align 4
@num_interrupt_lines = internal global { i32, [28 x i8] } zeroinitializer, align 32
@num_interrupts = internal global { [216 x i32], [192 x i8] } zeroinitializer, align 32
@__initcall__kmod_ab8500_debugfs__290_2096_ab8500_debug_init4 = internal global ptr @ab8500_debug_init, section ".initcall4.init", align 4
@debug_ranges = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@ab8500_registers_print._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 1290, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ab->read fail %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ab8500_registers_print\00", [41 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@ab8500_registers_print._entry_ptr = internal global ptr @ab8500_registers_print._entry, section ".printk_index", align 4
@.str.11 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"  [0x%02X/0x%02X]: 0x%02X\0A\00", [37 x i8] zeroinitializer }, align 32
@ab8500_registers_print._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.9, ptr @.str.2, i32 1305, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c" [0x%02X/0x%02X]: 0x%02X\0A\00", [38 x i8] zeroinitializer }, align 32
@ab8500_registers_print._entry_ptr.14 = internal global ptr @ab8500_registers_print._entry.12, section ".printk_index", align 4
@ab8500_debug_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @ab8500_debug_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.15, ptr null, ptr null, ptr null, i8 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ab8500-debug\00", [19 x i8] zeroinitializer }, align 32
@debug_bank = internal global { i32, [28 x i8] } zeroinitializer, align 32
@debug_address = internal global { i32, [28 x i8] } zeroinitializer, align 32
@num_irqs = internal global { i32, [28 x i8] } zeroinitializer, align 32
@irq_count = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@dev_attr = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@event_name = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"IRQ_AB8500\00", [21 x i8] zeroinitializer }, align 32
@ab8500_debug_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 2030, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"AB8500 irq not found, err %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ab8500_debug_probe\00", [45 x i8] zeroinitializer }, align 32
@ab8500_debug_probe._entry_ptr = internal global ptr @ab8500_debug_probe._entry, section ".printk_index", align 4
@irq_first = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"IRQ_FIRST\00", [22 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"IRQ_LAST\00", [23 x i8] zeroinitializer }, align 32
@irq_last = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ab8500\00", [25 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"all-bank-registers\00", [45 x i8] zeroinitializer }, align 32
@ab8500_bank_registers_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @ab8500_bank_registers_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"all-banks\00", [22 x i8] zeroinitializer }, align 32
@ab8500_all_banks_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @ab8500_all_banks_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"register-bank\00", [18 x i8] zeroinitializer }, align 32
@ab8500_bank_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr @ab8500_bank_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @ab8500_bank_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"register-address\00", [47 x i8] zeroinitializer }, align 32
@ab8500_address_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr @ab8500_address_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @ab8500_address_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"register-value\00", [17 x i8] zeroinitializer }, align 32
@ab8500_val_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr @ab8500_val_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @ab8500_val_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"irq-subscribe\00", [18 x i8] zeroinitializer }, align 32
@ab8500_subscribe_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr @ab8500_subscribe_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @ab8500_subscribe_unsubscribe_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@ab8500_debug_ranges = internal global { [22 x %struct.ab8500_prcmu_ranges], [48 x i8] } { [22 x %struct.ab8500_prcmu_ranges] [%struct.ab8500_prcmu_ranges zeroinitializer, %struct.ab8500_prcmu_ranges { i8 3, i8 0, ptr @.compoundliteral }, %struct.ab8500_prcmu_ranges { i8 4, i8 0, ptr @.compoundliteral.58 }, %struct.ab8500_prcmu_ranges { i8 3, i8 0, ptr @.compoundliteral.59 }, %struct.ab8500_prcmu_ranges { i8 5, i8 0, ptr @.compoundliteral.60 }, %struct.ab8500_prcmu_ranges { i8 2, i8 0, ptr @.compoundliteral.61 }, %struct.ab8500_prcmu_ranges { i8 9, i8 0, ptr @.compoundliteral.62 }, %struct.ab8500_prcmu_ranges zeroinitializer, %struct.ab8500_prcmu_ranges { i8 1, i8 0, ptr @.compoundliteral.63 }, %struct.ab8500_prcmu_ranges zeroinitializer, %struct.ab8500_prcmu_ranges { i8 1, i8 0, ptr @.compoundliteral.64 }, %struct.ab8500_prcmu_ranges { i8 9, i8 0, ptr @.compoundliteral.65 }, %struct.ab8500_prcmu_ranges { i8 3, i8 0, ptr @.compoundliteral.66 }, %struct.ab8500_prcmu_ranges { i8 1, i8 0, ptr @.compoundliteral.67 }, %struct.ab8500_prcmu_ranges zeroinitializer, %struct.ab8500_prcmu_ranges { i8 1, i8 0, ptr @.compoundliteral.68 }, %struct.ab8500_prcmu_ranges { i8 8, i8 0, ptr @.compoundliteral.69 }, %struct.ab8500_prcmu_ranges { i8 1, i8 0, ptr @.compoundliteral.70 }, %struct.ab8500_prcmu_ranges { i8 1, i8 0, ptr @.compoundliteral.71 }, %struct.ab8500_prcmu_ranges zeroinitializer, %struct.ab8500_prcmu_ranges zeroinitializer, %struct.ab8500_prcmu_ranges { i8 1, i8 0, ptr @.compoundliteral.72 }], [48 x i8] zeroinitializer }, align 32
@ab8505_debug_ranges = internal global { [22 x %struct.ab8500_prcmu_ranges], [48 x i8] } { [22 x %struct.ab8500_prcmu_ranges] [%struct.ab8500_prcmu_ranges zeroinitializer, %struct.ab8500_prcmu_ranges { i8 5, i8 0, ptr @.compoundliteral.73 }, %struct.ab8500_prcmu_ranges { i8 5, i8 0, ptr @.compoundliteral.74 }, %struct.ab8500_prcmu_ranges { i8 3, i8 0, ptr @.compoundliteral.75 }, %struct.ab8500_prcmu_ranges { i8 6, i8 0, ptr @.compoundliteral.76 }, %struct.ab8500_prcmu_ranges { i8 3, i8 0, ptr @.compoundliteral.77 }, %struct.ab8500_prcmu_ranges zeroinitializer, %struct.ab8500_prcmu_ranges zeroinitializer, %struct.ab8500_prcmu_ranges { i8 1, i8 0, ptr @.compoundliteral.78 }, %struct.ab8500_prcmu_ranges zeroinitializer, %struct.ab8500_prcmu_ranges { i8 1, i8 0, ptr @.compoundliteral.79 }, %struct.ab8500_prcmu_ranges { i8 9, i8 0, ptr @.compoundliteral.80 }, %struct.ab8500_prcmu_ranges { i8 3, i8 0, ptr @.compoundliteral.81 }, %struct.ab8500_prcmu_ranges { i8 1, i8 0, ptr @.compoundliteral.82 }, %struct.ab8500_prcmu_ranges { i8 11, i8 0, ptr @.compoundliteral.83 }, %struct.ab8500_prcmu_ranges { i8 2, i8 0, ptr @.compoundliteral.84 }, %struct.ab8500_prcmu_ranges { i8 8, i8 0, ptr @.compoundliteral.85 }, %struct.ab8500_prcmu_ranges { i8 2, i8 0, ptr @.compoundliteral.86 }, %struct.ab8500_prcmu_ranges { i8 1, i8 0, ptr @.compoundliteral.87 }, %struct.ab8500_prcmu_ranges zeroinitializer, %struct.ab8500_prcmu_ranges zeroinitializer, %struct.ab8500_prcmu_ranges { i8 1, i8 0, ptr @.compoundliteral.88 }], [48 x i8] zeroinitializer }, align 32
@ab8540_debug_ranges = internal global { [22 x %struct.ab8500_prcmu_ranges], [48 x i8] } { [22 x %struct.ab8500_prcmu_ranges] [%struct.ab8500_prcmu_ranges { i8 1, i8 0, ptr @.compoundliteral.89 }, %struct.ab8500_prcmu_ranges { i8 6, i8 0, ptr @.compoundliteral.90 }, %struct.ab8500_prcmu_ranges { i8 5, i8 0, ptr @.compoundliteral.91 }, %struct.ab8500_prcmu_ranges { i8 4, i8 0, ptr @.compoundliteral.92 }, %struct.ab8500_prcmu_ranges { i8 8, i8 0, ptr @.compoundliteral.93 }, %struct.ab8500_prcmu_ranges { i8 3, i8 0, ptr @.compoundliteral.94 }, %struct.ab8500_prcmu_ranges zeroinitializer, %struct.ab8500_prcmu_ranges { i8 4, i8 0, ptr @.compoundliteral.95 }, %struct.ab8500_prcmu_ranges { i8 2, i8 0, ptr @.compoundliteral.96 }, %struct.ab8500_prcmu_ranges zeroinitializer, %struct.ab8500_prcmu_ranges { i8 4, i8 0, ptr @.compoundliteral.97 }, %struct.ab8500_prcmu_ranges { i8 10, i8 0, ptr @.compoundliteral.98 }, %struct.ab8500_prcmu_ranges { i8 3, i8 0, ptr @.compoundliteral.99 }, %struct.ab8500_prcmu_ranges { i8 1, i8 0, ptr @.compoundliteral.100 }, %struct.ab8500_prcmu_ranges { i8 6, i8 0, ptr @.compoundliteral.101 }, %struct.ab8500_prcmu_ranges { i8 3, i8 0, ptr @.compoundliteral.102 }, %struct.ab8500_prcmu_ranges { i8 9, i8 0, ptr @.compoundliteral.103 }, %struct.ab8500_prcmu_ranges { i8 3, i8 0, ptr @.compoundliteral.104 }, %struct.ab8500_prcmu_ranges { i8 3, i8 0, ptr @.compoundliteral.105 }, %struct.ab8500_prcmu_ranges zeroinitializer, %struct.ab8500_prcmu_ranges zeroinitializer, %struct.ab8500_prcmu_ranges { i8 1, i8 0, ptr @.compoundliteral.106 }], [48 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"interrupts\00", [21 x i8] zeroinitializer }, align 32
@ab8500_interrupts_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @ab8500_interrupts_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"irq-unsubscribe\00", [16 x i8] zeroinitializer }, align 32
@ab8500_unsubscribe_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr @ab8500_unsubscribe_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @ab8500_subscribe_unsubscribe_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"hwreg\00", [26 x i8] zeroinitializer }, align 32
@ab8500_hwreg_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr @ab8500_hwreg_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @ab8500_hwreg_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"all-modem-registers\00", [44 x i8] zeroinitializer }, align 32
@ab8500_modem_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @ab8500_modem_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@ab8500_bank_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.2, i32 1409, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"debugfs error input > number of banks\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ab8500_bank_write\00", [46 x i8] zeroinitializer }, align 32
@ab8500_bank_write._entry_ptr = internal global ptr @ab8500_bank_write._entry, section ".printk_index", align 4
@.str.34 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"0x%02X\0A\00", [24 x i8] zeroinitializer }, align 32
@ab8500_address_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.2, i32 1442, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"debugfs error input > 0xff\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ab8500_address_write\00", [43 x i8] zeroinitializer }, align 32
@ab8500_address_write._entry_ptr = internal global ptr @ab8500_address_write._entry, section ".printk_index", align 4
@ab8500_val_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.37, ptr @.str.2, i32 1486, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ab8500_val_write\00", [47 x i8] zeroinitializer }, align 32
@ab8500_val_write._entry_ptr = internal global ptr @ab8500_val_write._entry, section ".printk_index", align 4
@ab8500_val_write._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.37, ptr @.str.2, i32 1492, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013abx500_set_reg failed %d, %d\00", [33 x i8] zeroinitializer }, align 32
@ab8500_val_write._entry_ptr.40 = internal global ptr @ab8500_val_write._entry.38, section ".printk_index", align 4
@ab8500_val_print._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.2, i32 1460, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"abx500_get_reg fail %d, %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ab8500_val_print\00", [47 x i8] zeroinitializer }, align 32
@ab8500_val_print._entry_ptr = internal global ptr @ab8500_val_print._entry, section ".printk_index", align 4
@ab8500_subscribe_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.2, i32 1855, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"debugfs error input < %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ab8500_subscribe_write\00", [41 x i8] zeroinitializer }, align 32
@ab8500_subscribe_write._entry_ptr = internal global ptr @ab8500_subscribe_write._entry, section ".printk_index", align 4
@ab8500_subscribe_write._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.44, ptr @.str.2, i32 1859, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"debugfs error input > %d\0A\00", [38 x i8] zeroinitializer }, align 32
@ab8500_subscribe_write._entry_ptr.47 = internal global ptr @ab8500_subscribe_write._entry.45, section ".printk_index", align 4
@.str.48 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%lu\00", [28 x i8] zeroinitializer }, align 32
@ab8500_subscribe_write._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.44, ptr @.str.2, i32 1886, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016sysfs_create_file failed %d\0A\00", [33 x i8] zeroinitializer }, align 32
@ab8500_subscribe_write._entry_ptr.51 = internal global ptr @ab8500_subscribe_write._entry.49, section ".printk_index", align 4
@ab8500_subscribe_write._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.44, ptr @.str.2, i32 1895, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016request_threaded_irq failed %d, %lu\0A\00", [57 x i8] zeroinitializer }, align 32
@ab8500_subscribe_write._entry_ptr.54 = internal global ptr @ab8500_subscribe_write._entry.52, section ".printk_index", align 4
@.str.55 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%d\00", [29 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { [3 x %struct.ab8500_reg_range], [23 x i8] } { [3 x %struct.ab8500_reg_range] [%struct.ab8500_reg_range { i8 0, i8 2, i8 0 }, %struct.ab8500_reg_range { i8 66, i8 66, i8 0 }, %struct.ab8500_reg_range { i8 -128, i8 -127, i8 0 }], [23 x i8] zeroinitializer }, align 32
@.compoundliteral.58 = internal global { [4 x %struct.ab8500_reg_range], [20 x i8] } { [4 x %struct.ab8500_reg_range] [%struct.ab8500_reg_range { i8 0, i8 13, i8 0 }, %struct.ab8500_reg_range { i8 15, i8 23, i8 0 }, %struct.ab8500_reg_range { i8 48, i8 48, i8 0 }, %struct.ab8500_reg_range { i8 50, i8 51, i8 0 }], [20 x i8] zeroinitializer }, align 32
@.compoundliteral.59 = internal global { [3 x %struct.ab8500_reg_range], [23 x i8] } { [3 x %struct.ab8500_reg_range] [%struct.ab8500_reg_range zeroinitializer, %struct.ab8500_reg_range { i8 3, i8 16, i8 0 }, %struct.ab8500_reg_range { i8 -128, i8 -124, i8 0 }], [23 x i8] zeroinitializer }, align 32
@.compoundliteral.60 = internal global { [5 x %struct.ab8500_reg_range], [17 x i8] } { [5 x %struct.ab8500_reg_range] [%struct.ab8500_reg_range { i8 0, i8 21, i8 0 }, %struct.ab8500_reg_range { i8 23, i8 25, i8 0 }, %struct.ab8500_reg_range { i8 27, i8 29, i8 0 }, %struct.ab8500_reg_range { i8 31, i8 34, i8 0 }, %struct.ab8500_reg_range { i8 64, i8 68, i8 0 }], [17 x i8] zeroinitializer }, align 32
@.compoundliteral.61 = internal global { [2 x %struct.ab8500_reg_range], [26 x i8] } { [2 x %struct.ab8500_reg_range] [%struct.ab8500_reg_range { i8 -128, i8 -125, i8 0 }, %struct.ab8500_reg_range { i8 -121, i8 -118, i8 0 }], [26 x i8] zeroinitializer }, align 32
@.compoundliteral.62 = internal global { [9 x %struct.ab8500_reg_range], [37 x i8] } { [9 x %struct.ab8500_reg_range] [%struct.ab8500_reg_range { i8 0, i8 18, i8 0 }, %struct.ab8500_reg_range { i8 21, i8 23, i8 0 }, %struct.ab8500_reg_range { i8 25, i8 33, i8 0 }, %struct.ab8500_reg_range { i8 39, i8 44, i8 0 }, %struct.ab8500_reg_range { i8 65, i8 65, i8 0 }, %struct.ab8500_reg_range { i8 69, i8 91, i8 0 }, %struct.ab8500_reg_range { i8 93, i8 93, i8 0 }, %struct.ab8500_reg_range { i8 105, i8 105, i8 0 }, %struct.ab8500_reg_range { i8 -128, i8 -127, i8 0 }], [37 x i8] zeroinitializer }, align 32
@.compoundliteral.63 = internal global { [1 x %struct.ab8500_reg_range], [29 x i8] } { [1 x %struct.ab8500_reg_range] [%struct.ab8500_reg_range { i8 -128, i8 -126, i8 0 }], [29 x i8] zeroinitializer }, align 32
@.compoundliteral.64 = internal global { [1 x %struct.ab8500_reg_range], [29 x i8] } { [1 x %struct.ab8500_reg_range] [%struct.ab8500_reg_range { i8 0, i8 8, i8 0 }], [29 x i8] zeroinitializer }, align 32
@.compoundliteral.65 = internal global { [9 x %struct.ab8500_reg_range], [37 x i8] } { [9 x %struct.ab8500_reg_range] [%struct.ab8500_reg_range { i8 0, i8 3, i8 0 }, %struct.ab8500_reg_range { i8 5, i8 5, i8 0 }, %struct.ab8500_reg_range { i8 64, i8 64, i8 0 }, %struct.ab8500_reg_range { i8 66, i8 66, i8 0 }, %struct.ab8500_reg_range { i8 68, i8 68, i8 0 }, %struct.ab8500_reg_range { i8 80, i8 85, i8 0 }, %struct.ab8500_reg_range { i8 -128, i8 -126, i8 0 }, %struct.ab8500_reg_range { i8 -64, i8 -62, i8 0 }, %struct.ab8500_reg_range { i8 -11, i8 -10, i8 0 }], [37 x i8] zeroinitializer }, align 32
@.compoundliteral.66 = internal global { [3 x %struct.ab8500_reg_range], [23 x i8] } { [3 x %struct.ab8500_reg_range] [%struct.ab8500_reg_range zeroinitializer, %struct.ab8500_reg_range { i8 7, i8 10, i8 0 }, %struct.ab8500_reg_range { i8 16, i8 20, i8 0 }], [23 x i8] zeroinitializer }, align 32
@.compoundliteral.67 = internal global { [1 x %struct.ab8500_reg_range], [29 x i8] } { [1 x %struct.ab8500_reg_range] [%struct.ab8500_reg_range { i8 0, i8 111, i8 0 }], [29 x i8] zeroinitializer }, align 32
@.compoundliteral.68 = internal global { [1 x %struct.ab8500_reg_range], [29 x i8] } { [1 x %struct.ab8500_reg_range] [%struct.ab8500_reg_range { i8 0, i8 15, i8 0 }], [29 x i8] zeroinitializer }, align 32
@.compoundliteral.69 = internal global { [8 x %struct.ab8500_reg_range], [40 x i8] } { [8 x %struct.ab8500_reg_range] [%struct.ab8500_reg_range { i8 0, i8 5, i8 0 }, %struct.ab8500_reg_range { i8 16, i8 21, i8 0 }, %struct.ab8500_reg_range { i8 32, i8 37, i8 0 }, %struct.ab8500_reg_range { i8 48, i8 53, i8 0 }, %struct.ab8500_reg_range { i8 64, i8 69, i8 0 }, %struct.ab8500_reg_range { i8 80, i8 80, i8 0 }, %struct.ab8500_reg_range { i8 96, i8 103, i8 0 }, %struct.ab8500_reg_range { i8 -128, i8 -128, i8 0 }], [40 x i8] zeroinitializer }, align 32
@.compoundliteral.70 = internal global { [1 x %struct.ab8500_reg_range], [29 x i8] } zeroinitializer, align 32
@.compoundliteral.71 = internal global { [1 x %struct.ab8500_reg_range], [29 x i8] } { [1 x %struct.ab8500_reg_range] [%struct.ab8500_reg_range { i8 5, i8 7, i8 0 }], [29 x i8] zeroinitializer }, align 32
@.compoundliteral.72 = internal global { [1 x %struct.ab8500_reg_range], [29 x i8] } { [1 x %struct.ab8500_reg_range] [%struct.ab8500_reg_range { i8 1, i8 15, i8 0 }], [29 x i8] zeroinitializer }, align 32
@.compoundliteral.73 = internal global { [5 x %struct.ab8500_reg_range], [17 x i8] } { [5 x %struct.ab8500_reg_range] [%struct.ab8500_reg_range { i8 0, i8 4, i8 0 }, %struct.ab8500_reg_range { i8 66, i8 66, i8 0 }, %struct.ab8500_reg_range { i8 82, i8 82, i8 0 }, %struct.ab8500_reg_range { i8 84, i8 87, i8 0 }, %struct.ab8500_reg_range { i8 -128, i8 -125, i8 0 }], [17 x i8] zeroinitializer }, align 32
@.compoundliteral.74 = internal global { [5 x %struct.ab8500_reg_range], [17 x i8] } { [5 x %struct.ab8500_reg_range] [%struct.ab8500_reg_range { i8 0, i8 13, i8 0 }, %struct.ab8500_reg_range { i8 15, i8 23, i8 0 }, %struct.ab8500_reg_range { i8 32, i8 32, i8 0 }, %struct.ab8500_reg_range { i8 48, i8 48, i8 0 }, %struct.ab8500_reg_range { i8 50, i8 58, i8 0 }], [17 x i8] zeroinitializer }, align 32
@.compoundliteral.75 = internal global { [3 x %struct.ab8500_reg_range], [23 x i8] } { [3 x %struct.ab8500_reg_range] [%struct.ab8500_reg_range zeroinitializer, %struct.ab8500_reg_range { i8 3, i8 17, i8 0 }, %struct.ab8500_reg_range { i8 -128, i8 -122, i8 0 }], [23 x i8] zeroinitializer }, align 32
@.compoundliteral.76 = internal global { [6 x %struct.ab8500_reg_range], [46 x i8] } { [6 x %struct.ab8500_reg_range] [%struct.ab8500_reg_range { i8 0, i8 6, i8 0 }, %struct.ab8500_reg_range { i8 8, i8 21, i8 0 }, %struct.ab8500_reg_range { i8 23, i8 25, i8 0 }, %struct.ab8500_reg_range { i8 27, i8 29, i8 0 }, %struct.ab8500_reg_range { i8 31, i8 48, i8 0 }, %struct.ab8500_reg_range { i8 64, i8 72, i8 0 }], [46 x i8] zeroinitializer }, align 32
@.compoundliteral.77 = internal global { [3 x %struct.ab8500_reg_range], [23 x i8] } { [3 x %struct.ab8500_reg_range] [%struct.ab8500_reg_range { i8 -128, i8 -125, i8 0 }, %struct.ab8500_reg_range { i8 -121, i8 -118, i8 0 }, %struct.ab8500_reg_range { i8 -111, i8 -108, i8 0 }], [23 x i8] zeroinitializer }, align 32
@.compoundliteral.78 = internal global { [1 x %struct.ab8500_reg_range], [29 x i8] } { [1 x %struct.ab8500_reg_range] [%struct.ab8500_reg_range { i8 -128, i8 -126, i8 0 }], [29 x i8] zeroinitializer }, align 32
@.compoundliteral.79 = internal global { [1 x %struct.ab8500_reg_range], [29 x i8] } { [1 x %struct.ab8500_reg_range] [%struct.ab8500_reg_range { i8 0, i8 8, i8 0 }], [29 x i8] zeroinitializer }, align 32
@.compoundliteral.80 = internal global { [9 x %struct.ab8500_reg_range], [37 x i8] } { [9 x %struct.ab8500_reg_range] [%struct.ab8500_reg_range { i8 2, i8 3, i8 0 }, %struct.ab8500_reg_range { i8 5, i8 5, i8 0 }, %struct.ab8500_reg_range { i8 64, i8 68, i8 0 }, %struct.ab8500_reg_range { i8 80, i8 87, i8 0 }, %struct.ab8500_reg_range { i8 96, i8 96, i8 0 }, %struct.ab8500_reg_range { i8 -96, i8 -89, i8 0 }, %struct.ab8500_reg_range { i8 -81, i8 -78, i8 0 }, %struct.ab8500_reg_range { i8 -64, i8 -62, i8 0 }, %struct.ab8500_reg_range { i8 -11, i8 -11, i8 0 }], [37 x i8] zeroinitializer }, align 32
@.compoundliteral.81 = internal global { [3 x %struct.ab8500_reg_range], [23 x i8] } { [3 x %struct.ab8500_reg_range] [%struct.ab8500_reg_range zeroinitializer, %struct.ab8500_reg_range { i8 7, i8 10, i8 0 }, %struct.ab8500_reg_range { i8 16, i8 20, i8 0 }], [23 x i8] zeroinitializer }, align 32
@.compoundliteral.82 = internal global { [1 x %struct.ab8500_reg_range], [29 x i8] } { [1 x %struct.ab8500_reg_range] [%struct.ab8500_reg_range { i8 0, i8 -125, i8 0 }], [29 x i8] zeroinitializer }, align 32
@.compoundliteral.83 = internal global { [11 x %struct.ab8500_reg_range], [63 x i8] } { [11 x %struct.ab8500_reg_range] [%struct.ab8500_reg_range { i8 0, i8 4, i8 0 }, %struct.ab8500_reg_range { i8 6, i8 7, i8 0 }, %struct.ab8500_reg_range { i8 9, i8 9, i8 0 }, %struct.ab8500_reg_range { i8 11, i8 12, i8 0 }, %struct.ab8500_reg_range { i8 18, i8 21, i8 0 }, %struct.ab8500_reg_range { i8 24, i8 24, i8 0 }, %struct.ab8500_reg_range { i8 64, i8 68, i8 0 }, %struct.ab8500_reg_range { i8 70, i8 73, i8 0 }, %struct.ab8500_reg_range { i8 75, i8 77, i8 0 }, %struct.ab8500_reg_range { i8 82, i8 85, i8 0 }, %struct.ab8500_reg_range { i8 88, i8 88, i8 0 }], [63 x i8] zeroinitializer }, align 32
@.compoundliteral.84 = internal global { [2 x %struct.ab8500_reg_range], [26 x i8] } { [2 x %struct.ab8500_reg_range] [%struct.ab8500_reg_range { i8 0, i8 20, i8 0 }, %struct.ab8500_reg_range { i8 22, i8 23, i8 0 }], [26 x i8] zeroinitializer }, align 32
@.compoundliteral.85 = internal global { [8 x %struct.ab8500_reg_range], [40 x i8] } { [8 x %struct.ab8500_reg_range] [%struct.ab8500_reg_range { i8 0, i8 6, i8 0 }, %struct.ab8500_reg_range { i8 16, i8 22, i8 0 }, %struct.ab8500_reg_range { i8 32, i8 38, i8 0 }, %struct.ab8500_reg_range { i8 48, i8 54, i8 0 }, %struct.ab8500_reg_range { i8 64, i8 70, i8 0 }, %struct.ab8500_reg_range { i8 80, i8 80, i8 0 }, %struct.ab8500_reg_range { i8 96, i8 107, i8 0 }, %struct.ab8500_reg_range { i8 -128, i8 -126, i8 0 }], [40 x i8] zeroinitializer }, align 32
@.compoundliteral.86 = internal global { [2 x %struct.ab8500_reg_range], [26 x i8] } { [2 x %struct.ab8500_reg_range] [%struct.ab8500_reg_range zeroinitializer, %struct.ab8500_reg_range { i8 5, i8 5, i8 0 }], [26 x i8] zeroinitializer }, align 32
@.compoundliteral.87 = internal global { [1 x %struct.ab8500_reg_range], [29 x i8] } { [1 x %struct.ab8500_reg_range] [%struct.ab8500_reg_range { i8 5, i8 7, i8 0 }], [29 x i8] zeroinitializer }, align 32
@.compoundliteral.88 = internal global { [1 x %struct.ab8500_reg_range], [29 x i8] } { [1 x %struct.ab8500_reg_range] [%struct.ab8500_reg_range { i8 1, i8 21, i8 0 }], [29 x i8] zeroinitializer }, align 32
@.compoundliteral.89 = internal global { [1 x %struct.ab8500_reg_range], [29 x i8] } { [1 x %struct.ab8500_reg_range] [%struct.ab8500_reg_range { i8 0, i8 11, i8 0 }], [29 x i8] zeroinitializer }, align 32
@.compoundliteral.90 = internal global { [6 x %struct.ab8500_reg_range], [46 x i8] } { [6 x %struct.ab8500_reg_range] [%struct.ab8500_reg_range { i8 0, i8 4, i8 0 }, %struct.ab8500_reg_range { i8 66, i8 66, i8 0 }, %struct.ab8500_reg_range { i8 80, i8 84, i8 0 }, %struct.ab8500_reg_range { i8 87, i8 87, i8 0 }, %struct.ab8500_reg_range { i8 -128, i8 -125, i8 0 }, %struct.ab8500_reg_range { i8 -112, i8 -112, i8 0 }], [46 x i8] zeroinitializer }, align 32
@.compoundliteral.91 = internal global { [5 x %struct.ab8500_reg_range], [17 x i8] } { [5 x %struct.ab8500_reg_range] [%struct.ab8500_reg_range { i8 0, i8 13, i8 0 }, %struct.ab8500_reg_range { i8 15, i8 16, i8 0 }, %struct.ab8500_reg_range { i8 32, i8 33, i8 0 }, %struct.ab8500_reg_range { i8 50, i8 60, i8 0 }, %struct.ab8500_reg_range { i8 64, i8 66, i8 0 }], [17 x i8] zeroinitializer }, align 32
@.compoundliteral.92 = internal global { [4 x %struct.ab8500_reg_range], [20 x i8] } { [4 x %struct.ab8500_reg_range] [%struct.ab8500_reg_range { i8 3, i8 21, i8 0 }, %struct.ab8500_reg_range { i8 32, i8 32, i8 0 }, %struct.ab8500_reg_range { i8 -128, i8 -123, i8 0 }, %struct.ab8500_reg_range { i8 -121, i8 -120, i8 0 }], [20 x i8] zeroinitializer }, align 32
@.compoundliteral.93 = internal global { [8 x %struct.ab8500_reg_range], [40 x i8] } { [8 x %struct.ab8500_reg_range] [%struct.ab8500_reg_range { i8 0, i8 6, i8 0 }, %struct.ab8500_reg_range { i8 8, i8 21, i8 0 }, %struct.ab8500_reg_range { i8 23, i8 25, i8 0 }, %struct.ab8500_reg_range { i8 27, i8 29, i8 0 }, %struct.ab8500_reg_range { i8 31, i8 47, i8 0 }, %struct.ab8500_reg_range { i8 49, i8 58, i8 0 }, %struct.ab8500_reg_range { i8 67, i8 68, i8 0 }, %struct.ab8500_reg_range { i8 72, i8 73, i8 0 }], [40 x i8] zeroinitializer }, align 32
@.compoundliteral.94 = internal global { [3 x %struct.ab8500_reg_range], [23 x i8] } { [3 x %struct.ab8500_reg_range] [%struct.ab8500_reg_range { i8 -128, i8 -125, i8 0 }, %struct.ab8500_reg_range { i8 -121, i8 -118, i8 0 }, %struct.ab8500_reg_range { i8 -111, i8 -108, i8 0 }], [23 x i8] zeroinitializer }, align 32
@.compoundliteral.95 = internal global { [4 x %struct.ab8500_reg_range], [20 x i8] } { [4 x %struct.ab8500_reg_range] [%struct.ab8500_reg_range { i8 0, i8 7, i8 0 }, %struct.ab8500_reg_range { i8 16, i8 17, i8 0 }, %struct.ab8500_reg_range { i8 32, i8 33, i8 0 }, %struct.ab8500_reg_range { i8 48, i8 67, i8 0 }], [20 x i8] zeroinitializer }, align 32
@.compoundliteral.96 = internal global { [2 x %struct.ab8500_reg_range], [26 x i8] } { [2 x %struct.ab8500_reg_range] [%struct.ab8500_reg_range { i8 0, i8 3, i8 0 }, %struct.ab8500_reg_range { i8 -128, i8 -126, i8 0 }], [26 x i8] zeroinitializer }, align 32
@.compoundliteral.97 = internal global { [4 x %struct.ab8500_reg_range], [20 x i8] } { [4 x %struct.ab8500_reg_range] [%struct.ab8500_reg_range { i8 0, i8 1, i8 0 }, %struct.ab8500_reg_range { i8 4, i8 6, i8 0 }, %struct.ab8500_reg_range { i8 9, i8 10, i8 0 }, %struct.ab8500_reg_range { i8 16, i8 20, i8 0 }], [20 x i8] zeroinitializer }, align 32
@.compoundliteral.98 = internal global { [10 x %struct.ab8500_reg_range], [34 x i8] } { [10 x %struct.ab8500_reg_range] [%struct.ab8500_reg_range zeroinitializer, %struct.ab8500_reg_range { i8 2, i8 5, i8 0 }, %struct.ab8500_reg_range { i8 64, i8 68, i8 0 }, %struct.ab8500_reg_range { i8 80, i8 87, i8 0 }, %struct.ab8500_reg_range { i8 96, i8 96, i8 0 }, %struct.ab8500_reg_range { i8 112, i8 112, i8 0 }, %struct.ab8500_reg_range { i8 -96, i8 -87, i8 0 }, %struct.ab8500_reg_range { i8 -81, i8 -78, i8 0 }, %struct.ab8500_reg_range { i8 -64, i8 -58, i8 0 }, %struct.ab8500_reg_range { i8 -11, i8 -11, i8 0 }], [34 x i8] zeroinitializer }, align 32
@.compoundliteral.99 = internal global { [3 x %struct.ab8500_reg_range], [23 x i8] } { [3 x %struct.ab8500_reg_range] [%struct.ab8500_reg_range zeroinitializer, %struct.ab8500_reg_range { i8 7, i8 10, i8 0 }, %struct.ab8500_reg_range { i8 16, i8 20, i8 0 }], [23 x i8] zeroinitializer }, align 32
@.compoundliteral.100 = internal global { [1 x %struct.ab8500_reg_range], [29 x i8] } { [1 x %struct.ab8500_reg_range] [%struct.ab8500_reg_range { i8 0, i8 -97, i8 0 }], [29 x i8] zeroinitializer }, align 32
@.compoundliteral.101 = internal global { [6 x %struct.ab8500_reg_range], [46 x i8] } { [6 x %struct.ab8500_reg_range] [%struct.ab8500_reg_range { i8 0, i8 5, i8 0 }, %struct.ab8500_reg_range { i8 11, i8 13, i8 0 }, %struct.ab8500_reg_range { i8 18, i8 32, i8 0 }, %struct.ab8500_reg_range { i8 64, i8 69, i8 0 }, %struct.ab8500_reg_range { i8 75, i8 77, i8 0 }, %struct.ab8500_reg_range { i8 82, i8 96, i8 0 }], [46 x i8] zeroinitializer }, align 32
@.compoundliteral.102 = internal global { [3 x %struct.ab8500_reg_range], [23 x i8] } { [3 x %struct.ab8500_reg_range] [%struct.ab8500_reg_range { i8 0, i8 7, i8 0 }, %struct.ab8500_reg_range { i8 11, i8 24, i8 0 }, %struct.ab8500_reg_range { i8 32, i8 37, i8 0 }], [23 x i8] zeroinitializer }, align 32
@.compoundliteral.103 = internal global { [9 x %struct.ab8500_reg_range], [37 x i8] } { [9 x %struct.ab8500_reg_range] [%struct.ab8500_reg_range { i8 0, i8 6, i8 0 }, %struct.ab8500_reg_range { i8 16, i8 22, i8 0 }, %struct.ab8500_reg_range { i8 32, i8 38, i8 0 }, %struct.ab8500_reg_range { i8 48, i8 54, i8 0 }, %struct.ab8500_reg_range { i8 64, i8 73, i8 0 }, %struct.ab8500_reg_range { i8 80, i8 80, i8 0 }, %struct.ab8500_reg_range { i8 96, i8 107, i8 0 }, %struct.ab8500_reg_range { i8 112, i8 116, i8 0 }, %struct.ab8500_reg_range { i8 -128, i8 -126, i8 0 }], [37 x i8] zeroinitializer }, align 32
@.compoundliteral.104 = internal global { [3 x %struct.ab8500_reg_range], [23 x i8] } { [3 x %struct.ab8500_reg_range] [%struct.ab8500_reg_range { i8 0, i8 1, i8 0 }, %struct.ab8500_reg_range { i8 6, i8 6, i8 0 }, %struct.ab8500_reg_range { i8 16, i8 33, i8 0 }], [23 x i8] zeroinitializer }, align 32
@.compoundliteral.105 = internal global { [3 x %struct.ab8500_reg_range], [23 x i8] } { [3 x %struct.ab8500_reg_range] [%struct.ab8500_reg_range { i8 1, i8 12, i8 0 }, %struct.ab8500_reg_range { i8 14, i8 17, i8 0 }, %struct.ab8500_reg_range { i8 -128, i8 -127, i8 0 }], [23 x i8] zeroinitializer }, align 32
@.compoundliteral.106 = internal global { [1 x %struct.ab8500_reg_range], [29 x i8] } { [1 x %struct.ab8500_reg_range] [%struct.ab8500_reg_range { i8 0, i8 63, i8 0 }], [29 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"name: number: irq: number of: wake:\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%3i:  %4i %6i %4i\0A\00", [45 x i8] zeroinitializer }, align 32
@ab8500_unsubscribe_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.109, ptr @.str.2, i32 1917, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ab8500_unsubscribe_write\00", [39 x i8] zeroinitializer }, align 32
@ab8500_unsubscribe_write._entry_ptr = internal global ptr @ab8500_unsubscribe_write._entry, section ".printk_index", align 4
@ab8500_unsubscribe_write._entry.110 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.109, ptr @.str.2, i32 1921, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@ab8500_unsubscribe_write._entry_ptr.111 = internal global ptr @ab8500_unsubscribe_write._entry.110, section ".printk_index", align 4
@hwreg_cfg = internal global { %struct.hwreg_cfg, [44 x i8] } { %struct.hwreg_cfg { i32 0, i32 0, i32 0, i32 -1, i32 0 }, [44 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@__const.hwreg_common_write.loc = private unnamed_addr constant %struct.hwreg_cfg { i32 0, i32 0, i32 0, i32 -1, i32 0 }, align 4
@.str.115 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"read \00", [26 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"write \00", [25 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"-d \00", [28 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"-dec \00", [26 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"-h \00", [28 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"-hex \00", [26 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"-m \00", [28 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"-mask \00", [25 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"-s \00", [28 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"-shift \00", [24 x i8] zeroinitializer }, align 32
@hwreg_common_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.125, ptr @.str.2, i32 1761, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"hwreg_common_write\00", [45 x i8] zeroinitializer }, align 32
@hwreg_common_write._entry_ptr = internal global ptr @hwreg_common_write._entry, section ".printk_index", align 4
@hwreg_common_write._entry.126 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.125, ptr @.str.2, i32 1777, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@hwreg_common_write._entry_ptr.127 = internal global ptr @hwreg_common_write._entry.126, section ".printk_index", align 4
@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@ab8500_hwreg_print._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.128, ptr @.str.2, i32 1544, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ab8500_hwreg_print\00", [45 x i8] zeroinitializer }, align 32
@ab8500_hwreg_print._entry_ptr = internal global ptr @ab8500_hwreg_print._entry, section ".printk_index", align 4
@ab8500_modem_show._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.129, ptr @.str.130, ptr @.str.2, i32 1585, ptr @.str.131, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [88 x i8], [40 x i8] } { [88 x i8] c"WARNING! This operation can interfer with modem side\0Aand should only be done with care\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ab8500_modem_show\00", [46 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@ab8500_modem_show._entry_ptr = internal global ptr @ab8500_modem_show._entry, section ".printk_index", align 4
@ab8500_modem_show._entry.132 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.130, ptr @.str.2, i32 1620, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@ab8500_modem_show._entry_ptr.133 = internal global ptr @ab8500_modem_show._entry.132, section ".printk_index", align 4
@ab8500_modem_show._entry.134 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.135, ptr @.str.130, ptr @.str.2, i32 1624, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ab->write fail %d\0A\00", [45 x i8] zeroinitializer }, align 32
@ab8500_modem_show._entry_ptr.136 = internal global ptr @ab8500_modem_show._entry.134, section ".printk_index", align 4
@switch.table.ab8500_debug_probe = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @ab8500_debug_ranges, ptr @ab8505_debug_ranges, ptr @ab8505_debug_ranges, ptr @ab8500_debug_ranges, ptr @ab8540_debug_ranges], [44 x i8] zeroinitializer }, align 32
@switch.table.ab8500_debug_probe.137 = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 112, i32 153, i32 153, i32 112, i32 216], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 32, i64 45, i64 48]
@__sancov_gen_cov_switch_values.138 = internal global [4 x i64] [i64 2, i64 8, i64 88, i64 120]
@__sancov_gen_cov_switch_values.139 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 10, i64 32]
@__sancov_gen_cov_switch_values.140 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 10, i64 32]
@__sancov_gen_cov_switch_values.141 = internal global [4 x i64] [i64 2, i64 8, i64 88, i64 120]
@__sancov_gen_cov_switch_values.142 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 10, i64 32]
@__sancov_gen_cov_switch_values.143 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 10, i64 32]
@__sancov_gen_cov_switch_values.144 = internal global [4 x i64] [i64 2, i64 8, i64 88, i64 120]
@__sancov_gen_cov_switch_values.145 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 10, i64 32]
@__sancov_gen_cov_switch_values.146 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 10, i64 32]
@__sancov_gen_cov_switch_values.147 = internal global [4 x i64] [i64 2, i64 8, i64 32, i64 48]
@__sancov_gen_cov_switch_values.148 = internal global [4 x i64] [i64 2, i64 8, i64 88, i64 120]
@__sancov_gen_cov_switch_values.149 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 10, i64 32]
@__sancov_gen_cov_switch_values.150 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 10, i64 32]
@__sancov_gen_cov_switch_values.151 = internal global [4 x i64] [i64 2, i64 8, i64 88, i64 120]
@__sancov_gen_cov_switch_values.152 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 10, i64 32]
@__sancov_gen_cov_switch_values.153 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 10, i64 32]
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.550, i32 1350, i32 2 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.550, i32 1353, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant [20 x i8] c"num_interrupt_lines\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.550, i32 1504, i32 12 }
@___asan_gen_.181 = private unnamed_addr constant [15 x i8] c"num_interrupts\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.550, i32 1502, i32 12 }
@___asan_gen_.184 = private unnamed_addr constant [13 x i8] c"debug_ranges\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.550, i32 153, i32 36 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.550, i32 1290, i32 5 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.550, i32 1295, i32 19 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.550, i32 1304, i32 5 }
@___asan_gen_.208 = private unnamed_addr constant [20 x i8] c"ab8500_debug_driver\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.550, i32 2084, i32 31 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.550, i32 2086, i32 11 }
@___asan_gen_.214 = private unnamed_addr constant [11 x i8] c"debug_bank\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.550, i32 93, i32 12 }
@___asan_gen_.217 = private unnamed_addr constant [14 x i8] c"debug_address\00", align 1
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.550, i32 94, i32 12 }
@___asan_gen_.220 = private unnamed_addr constant [9 x i8] c"num_irqs\00", align 1
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.550, i32 100, i32 12 }
@___asan_gen_.223 = private unnamed_addr constant [10 x i8] c"irq_count\00", align 1
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.550, i32 99, i32 13 }
@___asan_gen_.226 = private unnamed_addr constant [9 x i8] c"dev_attr\00", align 1
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.550, i32 102, i32 34 }
@___asan_gen_.229 = private unnamed_addr constant [11 x i8] c"event_name\00", align 1
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.550, i32 103, i32 15 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.550, i32 2028, i32 45 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.550, i32 2030, i32 3 }
@___asan_gen_.244 = private unnamed_addr constant [10 x i8] c"irq_first\00", align 1
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.550, i32 97, i32 12 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.550, i32 2035, i32 43 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.550, i32 2039, i32 42 }
@___asan_gen_.253 = private unnamed_addr constant [9 x i8] c"irq_last\00", align 1
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.550, i32 98, i32 12 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.550, i32 2043, i32 34 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.550, i32 2045, i32 22 }
@___asan_gen_.262 = private unnamed_addr constant [27 x i8] c"ab8500_bank_registers_fops\00", align 1
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.550, i32 1325, i32 1 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.550, i32 2047, i32 22 }
@___asan_gen_.268 = private unnamed_addr constant [22 x i8] c"ab8500_all_banks_fops\00", align 1
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.550, i32 1377, i32 37 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.550, i32 2049, i32 22 }
@___asan_gen_.274 = private unnamed_addr constant [17 x i8] c"ab8500_bank_fops\00", align 1
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.550, i32 1947, i32 37 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.550, i32 2051, i32 22 }
@___asan_gen_.280 = private unnamed_addr constant [20 x i8] c"ab8500_address_fops\00", align 1
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.550, i32 1956, i32 37 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.550, i32 2053, i32 22 }
@___asan_gen_.286 = private unnamed_addr constant [16 x i8] c"ab8500_val_fops\00", align 1
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.550, i32 1965, i32 37 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.550, i32 2055, i32 22 }
@___asan_gen_.292 = private unnamed_addr constant [22 x i8] c"ab8500_subscribe_fops\00", align 1
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.550, i32 1974, i32 37 }
@___asan_gen_.295 = private unnamed_addr constant [20 x i8] c"ab8500_debug_ranges\00", align 1
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.550, i32 155, i32 35 }
@___asan_gen_.298 = private unnamed_addr constant [20 x i8] c"ab8505_debug_ranges\00", align 1
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.550, i32 478, i32 35 }
@___asan_gen_.301 = private unnamed_addr constant [20 x i8] c"ab8540_debug_ranges\00", align 1
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.550, i32 839, i32 35 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.550, i32 2072, i32 22 }
@___asan_gen_.307 = private unnamed_addr constant [23 x i8] c"ab8500_interrupts_fops\00", align 1
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.550, i32 1529, i32 1 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.550, i32 2074, i32 22 }
@___asan_gen_.313 = private unnamed_addr constant [24 x i8] c"ab8500_unsubscribe_fops\00", align 1
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.550, i32 1983, i32 37 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.550, i32 2076, i32 22 }
@___asan_gen_.319 = private unnamed_addr constant [18 x i8] c"ab8500_hwreg_fops\00", align 1
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.550, i32 1992, i32 37 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.550, i32 2078, i32 22 }
@___asan_gen_.325 = private unnamed_addr constant [18 x i8] c"ab8500_modem_fops\00", align 1
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.550, i32 1628, i32 1 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.550, i32 1409, i32 3 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.550, i32 1387, i32 16 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.550, i32 1442, i32 3 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.550, i32 1486, i32 3 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.550, i32 1492, i32 3 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.550, i32 1459, i32 3 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.550, i32 1855, i32 3 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.550, i32 1859, i32 3 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.550, i32 1876, i32 48 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.550, i32 1886, i32 3 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.550, i32 1894, i32 3 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.550, i32 1838, i32 22 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.550, i32 1266, i32 15 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.550, i32 1807, i32 16 }
@___asan_gen_.409 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.410 = private unnamed_addr constant [20 x i8] c".compoundliteral.58\00", align 1
@___asan_gen_.411 = private unnamed_addr constant [20 x i8] c".compoundliteral.59\00", align 1
@___asan_gen_.412 = private unnamed_addr constant [20 x i8] c".compoundliteral.60\00", align 1
@___asan_gen_.413 = private unnamed_addr constant [20 x i8] c".compoundliteral.61\00", align 1
@___asan_gen_.414 = private unnamed_addr constant [20 x i8] c".compoundliteral.62\00", align 1
@___asan_gen_.415 = private unnamed_addr constant [20 x i8] c".compoundliteral.63\00", align 1
@___asan_gen_.416 = private unnamed_addr constant [20 x i8] c".compoundliteral.64\00", align 1
@___asan_gen_.417 = private unnamed_addr constant [20 x i8] c".compoundliteral.65\00", align 1
@___asan_gen_.418 = private unnamed_addr constant [20 x i8] c".compoundliteral.66\00", align 1
@___asan_gen_.419 = private unnamed_addr constant [20 x i8] c".compoundliteral.67\00", align 1
@___asan_gen_.420 = private unnamed_addr constant [20 x i8] c".compoundliteral.68\00", align 1
@___asan_gen_.421 = private unnamed_addr constant [20 x i8] c".compoundliteral.69\00", align 1
@___asan_gen_.422 = private unnamed_addr constant [20 x i8] c".compoundliteral.70\00", align 1
@___asan_gen_.423 = private unnamed_addr constant [20 x i8] c".compoundliteral.71\00", align 1
@___asan_gen_.424 = private unnamed_addr constant [20 x i8] c".compoundliteral.72\00", align 1
@___asan_gen_.425 = private unnamed_addr constant [20 x i8] c".compoundliteral.73\00", align 1
@___asan_gen_.426 = private unnamed_addr constant [20 x i8] c".compoundliteral.74\00", align 1
@___asan_gen_.427 = private unnamed_addr constant [20 x i8] c".compoundliteral.75\00", align 1
@___asan_gen_.428 = private unnamed_addr constant [20 x i8] c".compoundliteral.76\00", align 1
@___asan_gen_.429 = private unnamed_addr constant [20 x i8] c".compoundliteral.77\00", align 1
@___asan_gen_.430 = private unnamed_addr constant [20 x i8] c".compoundliteral.78\00", align 1
@___asan_gen_.431 = private unnamed_addr constant [20 x i8] c".compoundliteral.79\00", align 1
@___asan_gen_.432 = private unnamed_addr constant [20 x i8] c".compoundliteral.80\00", align 1
@___asan_gen_.433 = private unnamed_addr constant [20 x i8] c".compoundliteral.81\00", align 1
@___asan_gen_.434 = private unnamed_addr constant [20 x i8] c".compoundliteral.82\00", align 1
@___asan_gen_.435 = private unnamed_addr constant [20 x i8] c".compoundliteral.83\00", align 1
@___asan_gen_.436 = private unnamed_addr constant [20 x i8] c".compoundliteral.84\00", align 1
@___asan_gen_.437 = private unnamed_addr constant [20 x i8] c".compoundliteral.85\00", align 1
@___asan_gen_.438 = private unnamed_addr constant [20 x i8] c".compoundliteral.86\00", align 1
@___asan_gen_.439 = private unnamed_addr constant [20 x i8] c".compoundliteral.87\00", align 1
@___asan_gen_.440 = private unnamed_addr constant [20 x i8] c".compoundliteral.88\00", align 1
@___asan_gen_.441 = private unnamed_addr constant [20 x i8] c".compoundliteral.89\00", align 1
@___asan_gen_.442 = private unnamed_addr constant [20 x i8] c".compoundliteral.90\00", align 1
@___asan_gen_.443 = private unnamed_addr constant [20 x i8] c".compoundliteral.91\00", align 1
@___asan_gen_.444 = private unnamed_addr constant [20 x i8] c".compoundliteral.92\00", align 1
@___asan_gen_.445 = private unnamed_addr constant [20 x i8] c".compoundliteral.93\00", align 1
@___asan_gen_.446 = private unnamed_addr constant [20 x i8] c".compoundliteral.94\00", align 1
@___asan_gen_.447 = private unnamed_addr constant [20 x i8] c".compoundliteral.95\00", align 1
@___asan_gen_.448 = private unnamed_addr constant [20 x i8] c".compoundliteral.96\00", align 1
@___asan_gen_.449 = private unnamed_addr constant [20 x i8] c".compoundliteral.97\00", align 1
@___asan_gen_.450 = private unnamed_addr constant [20 x i8] c".compoundliteral.98\00", align 1
@___asan_gen_.451 = private unnamed_addr constant [20 x i8] c".compoundliteral.99\00", align 1
@___asan_gen_.452 = private unnamed_addr constant [21 x i8] c".compoundliteral.100\00", align 1
@___asan_gen_.453 = private unnamed_addr constant [21 x i8] c".compoundliteral.101\00", align 1
@___asan_gen_.454 = private unnamed_addr constant [21 x i8] c".compoundliteral.102\00", align 1
@___asan_gen_.455 = private unnamed_addr constant [21 x i8] c".compoundliteral.103\00", align 1
@___asan_gen_.456 = private unnamed_addr constant [21 x i8] c".compoundliteral.104\00", align 1
@___asan_gen_.457 = private unnamed_addr constant [21 x i8] c".compoundliteral.105\00", align 1
@___asan_gen_.458 = private unnamed_addr constant [21 x i8] c".compoundliteral.106\00", align 1
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.550, i32 1516, i32 14 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.550, i32 1519, i32 17 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.550, i32 1917, i32 3 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.550, i32 1921, i32 3 }
@___asan_gen_.474 = private unnamed_addr constant [10 x i8] c"hwreg_cfg\00", align 1
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.550, i32 141, i32 25 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 230, i32 6 }
@___asan_gen_.481 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 214, i32 2 }
@___asan_gen_.484 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 156, i32 2 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.550, i32 1677, i32 18 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.550, i32 1680, i32 25 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.550, i32 1692, i32 20 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.550, i32 1693, i32 18 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.550, i32 1696, i32 27 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.550, i32 1697, i32 18 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.550, i32 1700, i32 27 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.550, i32 1701, i32 18 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.550, i32 1708, i32 27 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.550, i32 1709, i32 18 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.550, i32 1760, i32 3 }
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.550, i32 1777, i32 3 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.550, i32 1543, i32 3 }
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.550, i32 1584, i32 2 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.550, i32 1620, i32 2 }
@___asan_gen_.546 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.549 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.550 = private constant [32 x i8] c"../drivers/mfd/ab8500-debugfs.c\00", align 1
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.550, i32 1624, i32 2 }
@___asan_gen_.552 = private unnamed_addr constant [32 x i8] c"switch.table.ab8500_debug_probe\00", align 1
@___asan_gen_.553 = private unnamed_addr constant [36 x i8] c"switch.table.ab8500_debug_probe.137\00", align 1
@llvm.compiler.used = appending global [191 x ptr] [ptr @__initcall__kmod_ab8500_debugfs__290_2096_ab8500_debug_init4, ptr @ab8500_address_write._entry, ptr @ab8500_address_write._entry_ptr, ptr @ab8500_bank_write._entry, ptr @ab8500_bank_write._entry_ptr, ptr @ab8500_debug_probe._entry, ptr @ab8500_debug_probe._entry_ptr, ptr @ab8500_dump_all_banks._entry, ptr @ab8500_dump_all_banks._entry.5, ptr @ab8500_dump_all_banks._entry_ptr, ptr @ab8500_dump_all_banks._entry_ptr.7, ptr @ab8500_hwreg_print._entry, ptr @ab8500_hwreg_print._entry_ptr, ptr @ab8500_modem_show._entry, ptr @ab8500_modem_show._entry.132, ptr @ab8500_modem_show._entry.134, ptr @ab8500_modem_show._entry_ptr, ptr @ab8500_modem_show._entry_ptr.133, ptr @ab8500_modem_show._entry_ptr.136, ptr @ab8500_registers_print._entry, ptr @ab8500_registers_print._entry.12, ptr @ab8500_registers_print._entry_ptr, ptr @ab8500_registers_print._entry_ptr.14, ptr @ab8500_subscribe_write._entry, ptr @ab8500_subscribe_write._entry.45, ptr @ab8500_subscribe_write._entry.49, ptr @ab8500_subscribe_write._entry.52, ptr @ab8500_subscribe_write._entry_ptr, ptr @ab8500_subscribe_write._entry_ptr.47, ptr @ab8500_subscribe_write._entry_ptr.51, ptr @ab8500_subscribe_write._entry_ptr.54, ptr @ab8500_unsubscribe_write._entry, ptr @ab8500_unsubscribe_write._entry.110, ptr @ab8500_unsubscribe_write._entry_ptr, ptr @ab8500_unsubscribe_write._entry_ptr.111, ptr @ab8500_val_print._entry, ptr @ab8500_val_print._entry_ptr, ptr @ab8500_val_write._entry, ptr @ab8500_val_write._entry.38, ptr @ab8500_val_write._entry_ptr, ptr @ab8500_val_write._entry_ptr.40, ptr @hwreg_common_write._entry, ptr @hwreg_common_write._entry.126, ptr @hwreg_common_write._entry_ptr, ptr @hwreg_common_write._entry_ptr.127, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @num_interrupt_lines, ptr @num_interrupts, ptr @debug_ranges, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @ab8500_debug_driver, ptr @.str.15, ptr @debug_bank, ptr @debug_address, ptr @num_irqs, ptr @irq_count, ptr @dev_attr, ptr @event_name, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @irq_first, ptr @.str.19, ptr @.str.20, ptr @irq_last, ptr @.str.21, ptr @.str.22, ptr @ab8500_bank_registers_fops, ptr @.str.23, ptr @ab8500_all_banks_fops, ptr @.str.24, ptr @ab8500_bank_fops, ptr @.str.25, ptr @ab8500_address_fops, ptr @.str.26, ptr @ab8500_val_fops, ptr @.str.27, ptr @ab8500_subscribe_fops, ptr @ab8500_debug_ranges, ptr @ab8505_debug_ranges, ptr @ab8540_debug_ranges, ptr @.str.28, ptr @ab8500_interrupts_fops, ptr @.str.29, ptr @ab8500_unsubscribe_fops, ptr @.str.30, ptr @ab8500_hwreg_fops, ptr @.str.31, ptr @ab8500_modem_fops, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.39, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.46, ptr @.str.48, ptr @.str.50, ptr @.str.53, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.compoundliteral, ptr @.compoundliteral.58, ptr @.compoundliteral.59, ptr @.compoundliteral.60, ptr @.compoundliteral.61, ptr @.compoundliteral.62, ptr @.compoundliteral.63, ptr @.compoundliteral.64, ptr @.compoundliteral.65, ptr @.compoundliteral.66, ptr @.compoundliteral.67, ptr @.compoundliteral.68, ptr @.compoundliteral.69, ptr @.compoundliteral.70, ptr @.compoundliteral.71, ptr @.compoundliteral.72, ptr @.compoundliteral.73, ptr @.compoundliteral.74, ptr @.compoundliteral.75, ptr @.compoundliteral.76, ptr @.compoundliteral.77, ptr @.compoundliteral.78, ptr @.compoundliteral.79, ptr @.compoundliteral.80, ptr @.compoundliteral.81, ptr @.compoundliteral.82, ptr @.compoundliteral.83, ptr @.compoundliteral.84, ptr @.compoundliteral.85, ptr @.compoundliteral.86, ptr @.compoundliteral.87, ptr @.compoundliteral.88, ptr @.compoundliteral.89, ptr @.compoundliteral.90, ptr @.compoundliteral.91, ptr @.compoundliteral.92, ptr @.compoundliteral.93, ptr @.compoundliteral.94, ptr @.compoundliteral.95, ptr @.compoundliteral.96, ptr @.compoundliteral.97, ptr @.compoundliteral.98, ptr @.compoundliteral.99, ptr @.compoundliteral.100, ptr @.compoundliteral.101, ptr @.compoundliteral.102, ptr @.compoundliteral.103, ptr @.compoundliteral.104, ptr @.compoundliteral.105, ptr @.compoundliteral.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @hwreg_cfg, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.135, ptr @switch.table.ab8500_debug_probe, ptr @switch.table.ab8500_debug_probe.137], section "llvm.metadata"
@0 = internal global [168 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_dump_all_banks._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_dump_all_banks._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @num_interrupt_lines to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @num_interrupts to i32), i32 864, i32 1056, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug_ranges to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_registers_print._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_registers_print._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_debug_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug_bank to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug_address to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @num_irqs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irq_count to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_name to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_debug_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irq_first to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irq_last to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_bank_registers_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_all_banks_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_bank_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_address_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_val_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_subscribe_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_debug_ranges to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8505_debug_ranges to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8540_debug_ranges to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_interrupts_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_unsubscribe_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_hwreg_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_modem_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_bank_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_address_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_val_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_val_write._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_val_print._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_subscribe_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_subscribe_write._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_subscribe_write._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_subscribe_write._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.58 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.59 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.60 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.61 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.62 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.63 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.64 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.65 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.66 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.67 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.68 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.70 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.71 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.72 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.73 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.74 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.75 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.76 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.77 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.78 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.79 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.80 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.81 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.82 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.83 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.84 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.86 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.87 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.88 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.89 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.90 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.91 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.92 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.94 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.95 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.96 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.97 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.98 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.99 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.100 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.101 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.102 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.103 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.104 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.105 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.106 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_unsubscribe_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_unsubscribe_write._entry.110 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hwreg_cfg to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hwreg_common_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hwreg_common_write._entry.126 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_hwreg_print._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_modem_show._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_modem_show._entry.132 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_modem_show._entry.134 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ab8500_debug_probe to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ab8500_debug_probe.137 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ab8500_dump_all_banks(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str) #16
  br label %do.end3

do.end3:                                          ; preds = %do.end3.do.end3_crit_edge, %entry
  %i.09 = phi i32 [ 1, %entry ], [ %inc, %do.end3.do.end3_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.6, i32 noundef %i.09) #16
  %call = tail call fastcc i32 @ab8500_registers_print(ptr noundef %dev, i32 noundef %i.09, ptr noundef null)
  %inc = add nuw nsw i32 %i.09, 1
  %exitcond.not = icmp eq i32 %inc, 22
  br i1 %exitcond.not, label %for.end, label %do.end3.do.end3_crit_edge

do.end3.do.end3_crit_edge:                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end3

for.end:                                          ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #15
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ab8500_registers_print(ptr noundef %dev, i32 noundef %bank, ptr noundef %s) unnamed_addr #0 align 64 {
entry:
  %value = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @debug_ranges, align 4
  %arrayidx65 = getelementptr %struct.ab8500_prcmu_ranges, ptr %0, i32 %bank
  %1 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx65, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %cmp67.not = icmp eq i8 %2, 0
  br i1 %cmp67.not, label %entry.cleanup34_crit_edge, label %for.body.lr.ph

entry.cleanup34_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup34

for.body.lr.ph:                                   ; preds = %entry
  %conv13 = trunc i32 %bank to i8
  %tobool.not = icmp eq ptr %s, null
  %count.i = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 3
  %size.i = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc31.for.body_crit_edge, %for.body.lr.ph
  %3 = phi ptr [ %0, %for.body.lr.ph ], [ %25, %for.inc31.for.body_crit_edge ]
  %i.068 = phi i32 [ 0, %for.body.lr.ph ], [ %inc32, %for.inc31.for.body_crit_edge ]
  %range = getelementptr %struct.ab8500_prcmu_ranges, ptr %3, i32 %bank, i32 2
  %4 = ptrtoint ptr %range to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %range, align 4
  %arrayidx3 = getelementptr %struct.ab8500_reg_range, ptr %5, i32 %i.068
  %6 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx3, align 1
  %8 = load ptr, ptr @debug_ranges, align 4
  %range760 = getelementptr %struct.ab8500_prcmu_ranges, ptr %8, i32 %bank, i32 2
  %9 = ptrtoint ptr %range760 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %range760, align 4
  %last61 = getelementptr %struct.ab8500_reg_range, ptr %10, i32 %i.068, i32 1
  %11 = ptrtoint ptr %last61 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %last61, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %7, i8 %12)
  %cmp10.not63 = icmp ugt i8 %7, %12
  br i1 %cmp10.not63, label %for.body.for.inc31_crit_edge, label %for.body12.preheader

for.body.for.inc31_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc31

for.body12.preheader:                             ; preds = %for.body
  %conv4 = zext i8 %7 to i32
  br label %for.body12

for.body12:                                       ; preds = %for.inc.for.body12_crit_edge, %for.body12.preheader
  %reg.064 = phi i32 [ %inc, %for.inc.for.body12_crit_edge ], [ %conv4, %for.body12.preheader ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value) #13
  %13 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 -1, ptr %value, align 1, !annotation !239
  %conv14 = trunc i32 %reg.064 to i8
  %call = call i32 @abx500_get_register_interruptible(ptr noundef %dev, i8 noundef zeroext %conv13, i8 noundef zeroext %conv14, ptr noundef nonnull %value) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp15 = icmp slt i32 %call, 0
  br i1 %cmp15, label %do.end, label %if.end

do.end:                                           ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %call) #16
  br label %cleanup28

if.end:                                           ; preds = %for.body12
  %14 = ptrtoint ptr %value to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %value, align 1
  %conv25 = zext i8 %15 to i32
  br i1 %tobool.not, label %do.end24, label %if.then17

if.then17:                                        ; preds = %if.end
  call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %s, ptr noundef nonnull @.str.11, i32 noundef %bank, i32 noundef %reg.064, i32 noundef %conv25) #13
  %16 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %count.i, align 4
  %18 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %19)
  %cmp.i = icmp eq i32 %17, %19
  br i1 %cmp.i, label %if.then17.cleanup28_crit_edge, label %if.then17.for.inc_crit_edge

if.then17.for.inc_crit_edge:                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then17.cleanup28_crit_edge:                    ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup28

do.end24:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.13, i32 noundef %bank, i32 noundef %reg.064, i32 noundef %conv25) #16
  br label %for.inc

for.inc:                                          ; preds = %do.end24, %if.then17.for.inc_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value) #13
  %inc = add nuw nsw i32 %reg.064, 1
  %20 = load ptr, ptr @debug_ranges, align 4
  %range7 = getelementptr %struct.ab8500_prcmu_ranges, ptr %20, i32 %bank, i32 2
  %21 = ptrtoint ptr %range7 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %range7, align 4
  %last = getelementptr %struct.ab8500_reg_range, ptr %22, i32 %i.068, i32 1
  %23 = ptrtoint ptr %last to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %last, align 1
  %conv9 = zext i8 %24 to i32
  %cmp10.not.not = icmp ult i32 %reg.064, %conv9
  br i1 %cmp10.not.not, label %for.inc.for.body12_crit_edge, label %for.inc.for.inc31_crit_edge

for.inc.for.inc31_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc31

for.inc.for.body12_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body12

cleanup28:                                        ; preds = %if.then17.cleanup28_crit_edge, %do.end
  %retval.2.ph = phi i32 [ %call, %do.end ], [ 0, %if.then17.cleanup28_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value) #13
  br label %cleanup34

for.inc31:                                        ; preds = %for.inc.for.inc31_crit_edge, %for.body.for.inc31_crit_edge
  %inc32 = add nuw nsw i32 %i.068, 1
  %25 = load ptr, ptr @debug_ranges, align 4
  %arrayidx = getelementptr %struct.ab8500_prcmu_ranges, ptr %25, i32 %bank
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx, align 4
  %conv = zext i8 %27 to i32
  %cmp = icmp ult i32 %inc32, %conv
  br i1 %cmp, label %for.inc31.for.body_crit_edge, label %for.inc31.cleanup34_crit_edge

for.inc31.cleanup34_crit_edge:                    ; preds = %for.inc31
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup34

for.inc31.for.body_crit_edge:                     ; preds = %for.inc31
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

cleanup34:                                        ; preds = %for.inc31.cleanup34_crit_edge, %cleanup28, %entry.cleanup34_crit_edge
  %retval.4 = phi i32 [ %retval.2.ph, %cleanup28 ], [ 0, %entry.cleanup34_crit_edge ], [ 0, %for.inc31.cleanup34_crit_edge ]
  ret i32 %retval.4
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @ab8500_debug_register_interrupt(i32 noundef %line) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @num_interrupt_lines, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %0, i32 %line)
  %cmp = icmp sgt i32 %0, %line
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx = getelementptr [216 x i32], ptr @num_interrupts, i32 0, i32 %line
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx, align 4
  %inc = add i32 %2, 1
  store i32 %inc, ptr %arrayidx, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ab8500_debug_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @ab8500_debug_driver, ptr noundef null) #13
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @abx500_get_register_interruptible(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ab8500_debug_probe(ptr noundef %plf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  store i32 16, ptr @debug_bank, align 4
  store i32 128, ptr @debug_address, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %plf, i32 0, i32 3
  %parent = getelementptr inbounds %struct.platform_device, ptr %plf, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %mask_size = getelementptr inbounds %struct.ab8500, ptr %3, i32 0, i32 15
  %4 = ptrtoint ptr %mask_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mask_size, align 4
  store i32 %5, ptr @num_irqs, align 4
  %6 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %5, i32 4) #13
  %7 = extractvalue { i32, i1 } %6, 1
  br i1 %7, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !240

devm_kcalloc.exit.thread:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  store ptr null, ptr @irq_count, align 4
  br label %cleanup

devm_kcalloc.exit:                                ; preds = %entry
  %8 = extractvalue { i32, i1 } %6, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %8, i32 noundef 3520) #13
  store ptr %call5.i.i, ptr @irq_count, align 4
  %tobool.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool.not, label %devm_kcalloc.exit.cleanup_crit_edge, label %if.end

devm_kcalloc.exit.cleanup_crit_edge:              ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %devm_kcalloc.exit
  %9 = load i32, ptr @num_irqs, align 4
  %10 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %9, i32 4) #13
  %11 = extractvalue { i32, i1 } %10, 1
  br i1 %11, label %devm_kcalloc.exit100.thread, label %devm_kcalloc.exit100, !prof !240

devm_kcalloc.exit100.thread:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  store ptr null, ptr @dev_attr, align 4
  br label %cleanup

devm_kcalloc.exit100:                             ; preds = %if.end
  %12 = extractvalue { i32, i1 } %10, 0
  %call5.i.i97 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %12, i32 noundef 3520) #13
  store ptr %call5.i.i97, ptr @dev_attr, align 4
  %tobool5.not = icmp eq ptr %call5.i.i97, null
  br i1 %tobool5.not, label %devm_kcalloc.exit100.cleanup_crit_edge, label %if.end7

devm_kcalloc.exit100.cleanup_crit_edge:           ; preds = %devm_kcalloc.exit100
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end7:                                          ; preds = %devm_kcalloc.exit100
  %13 = load i32, ptr @num_irqs, align 4
  %14 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %13, i32 4) #13
  %15 = extractvalue { i32, i1 } %14, 1
  br i1 %15, label %devm_kcalloc.exit104.thread, label %devm_kcalloc.exit104, !prof !240

devm_kcalloc.exit104.thread:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  store ptr null, ptr @event_name, align 4
  br label %cleanup

devm_kcalloc.exit104:                             ; preds = %if.end7
  %16 = extractvalue { i32, i1 } %14, 0
  %call5.i.i101 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %16, i32 noundef 3520) #13
  store ptr %call5.i.i101, ptr @event_name, align 4
  %tobool10.not = icmp eq ptr %call5.i.i101, null
  br i1 %tobool10.not, label %devm_kcalloc.exit104.cleanup_crit_edge, label %if.end12

devm_kcalloc.exit104.cleanup_crit_edge:           ; preds = %devm_kcalloc.exit104
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end12:                                         ; preds = %devm_kcalloc.exit104
  %call13 = tail call ptr @platform_get_resource_byname(ptr noundef %plf, i32 noundef 0, ptr noundef nonnull @.str.16) #13
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %do.end, label %if.end17

do.end:                                           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  %17 = load i32, ptr @irq_first, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17, i32 noundef %17) #16
  br label %cleanup

if.end17:                                         ; preds = %if.end12
  %call18 = tail call i32 @platform_get_irq_byname(ptr noundef %plf, ptr noundef nonnull @.str.19) #13
  store i32 %call18, ptr @irq_first, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp = icmp slt i32 %call18, 0
  br i1 %cmp, label %if.end17.cleanup_crit_edge, label %if.end20

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end20:                                         ; preds = %if.end17
  %call21 = tail call i32 @platform_get_irq_byname(ptr noundef %plf, ptr noundef nonnull @.str.20) #13
  store i32 %call21, ptr @irq_last, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22 = icmp slt i32 %call21, 0
  br i1 %cmp22, label %if.end20.cleanup_crit_edge, label %if.end24

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end24:                                         ; preds = %if.end20
  %call25 = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.21, ptr noundef null) #13
  %call27 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.22, i16 noundef zeroext 292, ptr noundef %call25, ptr noundef %dev, ptr noundef nonnull @ab8500_bank_registers_fops) #13
  %call29 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.23, i16 noundef zeroext 292, ptr noundef %call25, ptr noundef %dev, ptr noundef nonnull @ab8500_all_banks_fops) #13
  %call31 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.24, i16 noundef zeroext 436, ptr noundef %call25, ptr noundef %dev, ptr noundef nonnull @ab8500_bank_fops) #13
  %call33 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.25, i16 noundef zeroext 436, ptr noundef %call25, ptr noundef %dev, ptr noundef nonnull @ab8500_address_fops) #13
  %call35 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.26, i16 noundef zeroext 436, ptr noundef %call25, ptr noundef %dev, ptr noundef nonnull @ab8500_val_fops) #13
  %call37 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.27, i16 noundef zeroext 436, ptr noundef %call25, ptr noundef %dev, ptr noundef nonnull @ab8500_subscribe_fops) #13
  %version.i = getelementptr inbounds %struct.ab8500, ptr %3, i32 0, i32 6
  %18 = ptrtoint ptr %version.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %version.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %19)
  %20 = icmp ult i32 %19, 5
  br i1 %20, label %switch.hole_check, label %if.end24.if.end55_crit_edge

if.end24.if.end55_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end55

switch.hole_check:                                ; preds = %if.end24
  %switch.maskindex = trunc i32 %19 to i8
  %switch.shifted = lshr i8 23, %switch.maskindex
  %21 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %switch.lobit.not = icmp eq i8 %21, 0
  br i1 %switch.lobit.not, label %switch.hole_check.if.end55_crit_edge, label %switch.lookup

switch.hole_check.if.end55_crit_edge:             ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end55

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #15
  %switch.gep = getelementptr inbounds [5 x ptr], ptr @switch.table.ab8500_debug_probe, i32 0, i32 %19
  %22 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %22)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %switch.gep120 = getelementptr inbounds [5 x i32], ptr @switch.table.ab8500_debug_probe.137, i32 0, i32 %19
  %23 = ptrtoint ptr %switch.gep120 to i32
  call void @__asan_load4_noabort(i32 %23)
  %switch.load121 = load i32, ptr %switch.gep120, align 4
  store ptr %switch.load, ptr @debug_ranges, align 4
  store i32 %switch.load121, ptr @num_interrupt_lines, align 4
  br label %if.end55

if.end55:                                         ; preds = %switch.lookup, %switch.hole_check.if.end55_crit_edge, %if.end24.if.end55_crit_edge
  %call57 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.28, i16 noundef zeroext 292, ptr noundef %call25, ptr noundef %dev, ptr noundef nonnull @ab8500_interrupts_fops) #13
  %call59 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.29, i16 noundef zeroext 436, ptr noundef %call25, ptr noundef %dev, ptr noundef nonnull @ab8500_unsubscribe_fops) #13
  %call61 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.30, i16 noundef zeroext 436, ptr noundef %call25, ptr noundef %dev, ptr noundef nonnull @ab8500_hwreg_fops) #13
  %call63 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.31, i16 noundef zeroext 436, ptr noundef %call25, ptr noundef %dev, ptr noundef nonnull @ab8500_modem_fops) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end55, %if.end20.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %do.end, %devm_kcalloc.exit104.cleanup_crit_edge, %devm_kcalloc.exit104.thread, %devm_kcalloc.exit100.cleanup_crit_edge, %devm_kcalloc.exit100.thread, %devm_kcalloc.exit.cleanup_crit_edge, %devm_kcalloc.exit.thread
  %retval.0 = phi i32 [ 0, %if.end55 ], [ -6, %do.end ], [ -12, %devm_kcalloc.exit.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit100.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit104.cleanup_crit_edge ], [ %call18, %if.end17.cleanup_crit_edge ], [ %call21, %if.end20.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.thread ], [ -12, %devm_kcalloc.exit100.thread ], [ -12, %devm_kcalloc.exit104.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ab8500_bank_registers_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @ab8500_bank_registers_show, ptr noundef %1) #13
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ab8500_bank_registers_show(ptr noundef %s, ptr nocapture noundef readnone %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %2 = load i32, ptr @debug_bank, align 4
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str) #13
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.6, i32 noundef %2) #13
  %call = tail call fastcc i32 @ab8500_registers_print(ptr noundef %1, i32 noundef %2, ptr noundef %s)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ab8500_all_banks_open(ptr noundef %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @ab8500_print_all_banks, ptr noundef %1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end7_crit_edge

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7

if.then:                                          ; preds = %entry
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %size = getelementptr inbounds %struct.seq_file, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 8192, ptr %size, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3264, i32 noundef 8192) #17
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call7.i, ptr %3, align 8
  %tobool4.not = icmp eq ptr %call7.i, null
  br i1 %tobool4.not, label %if.then5, label %if.then.if.end7_crit_edge

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %call6 = tail call i32 @single_release(ptr noundef %inode, ptr noundef %file) #13
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.then.if.end7_crit_edge, %entry.if.end7_crit_edge
  %err.0 = phi i32 [ %call, %entry.if.end7_crit_edge ], [ 0, %if.then.if.end7_crit_edge ], [ -12, %if.then5 ]
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ab8500_print_all_banks(ptr noundef %s, ptr nocapture noundef readnone %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str) #13
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.010 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.6, i32 noundef %i.010) #13
  %call = tail call fastcc i32 @ab8500_registers_print(ptr noundef %1, i32 noundef %i.010, ptr noundef %s)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp ne i32 %call, 0
  %inc = add nuw nsw i32 %i.010, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 22, i32 %inc)
  %exitcond.not = icmp eq i32 %inc, 22
  %or.cond = select i1 %tobool.not, i1 true, i1 %exitcond.not
  br i1 %or.cond, label %cleanup1, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

cleanup1:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ab8500_bank_write(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %user_bank = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private = getelementptr inbounds %struct.seq_file, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %user_bank) #13
  %4 = ptrtoint ptr %user_bank to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %user_bank, align 4, !annotation !239
  %call = call i32 @kstrtoul_from_user(ptr noundef %user_buf, i32 noundef %count, i32 noundef 0, ptr noundef nonnull %user_bank) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %user_bank to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %user_bank, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %6)
  %cmp = icmp ugt i32 %6, 21
  br i1 %cmp, label %do.end, label %if.end2

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.32) #16
  br label %cleanup

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  store i32 %6, ptr @debug_bank, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ %count, %if.end2 ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %user_bank) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ab8500_bank_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @ab8500_bank_print, ptr noundef %1) #13
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoul_from_user(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ab8500_bank_print(ptr noundef %s, ptr nocapture noundef readnone %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @debug_bank, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.34, i32 noundef %0) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ab8500_address_write(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %user_address = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private = getelementptr inbounds %struct.seq_file, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %user_address) #13
  %4 = ptrtoint ptr %user_address to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %user_address, align 4, !annotation !239
  %call = call i32 @kstrtoul_from_user(ptr noundef %user_buf, i32 noundef %count, i32 noundef 0, ptr noundef nonnull %user_address) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %user_address to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %user_address, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %6)
  %cmp = icmp ugt i32 %6, 255
  br i1 %cmp, label %do.end, label %if.end2

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.35) #16
  br label %cleanup

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  store i32 %6, ptr @debug_address, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ %count, %if.end2 ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %user_address) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ab8500_address_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @ab8500_address_print, ptr noundef %1) #13
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ab8500_address_print(ptr noundef %s, ptr nocapture noundef readnone %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @debug_address, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.34, i32 noundef %0) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ab8500_val_write(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %user_val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private = getelementptr inbounds %struct.seq_file, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %user_val) #13
  %4 = ptrtoint ptr %user_val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %user_val, align 4, !annotation !239
  %call = call i32 @kstrtoul_from_user(ptr noundef %user_buf, i32 noundef %count, i32 noundef 0, ptr noundef nonnull %user_val) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %user_val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %user_val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %6)
  %cmp = icmp ugt i32 %6, 255
  br i1 %cmp, label %do.end, label %if.end2

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.35) #16
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %7 = load i32, ptr @debug_bank, align 4
  %conv = trunc i32 %7 to i8
  %8 = load i32, ptr @debug_address, align 4
  %conv3 = trunc i32 %8 to i8
  %conv4 = trunc i32 %6 to i8
  %call5 = call i32 @abx500_set_register_interruptible(ptr noundef %3, i8 noundef zeroext %conv, i8 noundef zeroext %conv3, i8 noundef zeroext %conv4) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %do.end11, label %if.end2.cleanup_crit_edge

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end11:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #15
  %call12 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, i32 noundef %call5, i32 noundef 1492) #16
  br label %cleanup

cleanup:                                          ; preds = %do.end11, %if.end2.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end11 ], [ %call, %entry.cleanup_crit_edge ], [ %count, %if.end2.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %user_val) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ab8500_val_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @ab8500_val_print, ptr noundef %1) #13
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @abx500_set_register_interruptible(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ab8500_val_print(ptr noundef %s, ptr nocapture noundef readnone %p) #0 align 64 {
entry:
  %regvalue = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %regvalue) #13
  %2 = ptrtoint ptr %regvalue to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %regvalue, align 1, !annotation !239
  %3 = load i32, ptr @debug_bank, align 4
  %conv = trunc i32 %3 to i8
  %4 = load i32, ptr @debug_address, align 4
  %conv1 = trunc i32 %4 to i8
  %call = call i32 @abx500_get_register_interruptible(ptr noundef %1, i8 noundef zeroext %conv, i8 noundef zeroext %conv1, ptr noundef nonnull %regvalue) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.41, i32 noundef %call, i32 noundef 1460) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %5 = ptrtoint ptr %regvalue to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %regvalue, align 1
  %conv3 = zext i8 %6 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.34, i32 noundef %conv3) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %regvalue) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ab8500_subscribe_write(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %user_val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private = getelementptr inbounds %struct.seq_file, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %user_val) #13
  %4 = ptrtoint ptr %user_val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %user_val, align 4, !annotation !239
  %call = call i32 @kstrtoul_from_user(ptr noundef %user_buf, i32 noundef %count, i32 noundef 0, ptr noundef nonnull %user_val) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %user_val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %user_val, align 4
  %7 = load i32, ptr @irq_first, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %7)
  %cmp = icmp ult i32 %6, %7
  br i1 %cmp, label %do.end, label %if.end2

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.43, i32 noundef %7) #16
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %8 = load i32, ptr @irq_last, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %8)
  %cmp3 = icmp ugt i32 %6, %8
  br i1 %cmp3, label %do.end7, label %if.end8

do.end7:                                          ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.46, i32 noundef %8) #16
  br label %cleanup

if.end8:                                          ; preds = %if.end2
  %sub = sub i32 %6, %7
  %9 = load i32, ptr @num_irqs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %9)
  %cmp9.not = icmp ult i32 %sub, %9
  br i1 %cmp9.not, label %if.end11, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end11:                                         ; preds = %if.end8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3264, i32 noundef 28) #17
  %11 = load ptr, ptr @dev_attr, align 4
  %arrayidx = getelementptr ptr, ptr %11, i32 %sub
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call7.i, ptr %arrayidx, align 4
  %tobool14.not = icmp eq ptr %call7.i, null
  br i1 %tobool14.not, label %if.end11.cleanup_crit_edge, label %if.end16

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end16:                                         ; preds = %if.end11
  %13 = ptrtoint ptr %user_val to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %user_val, align 4
  %call17 = call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.48, i32 noundef %14) #13
  %15 = load ptr, ptr @event_name, align 4
  %arrayidx18 = getelementptr ptr, ptr %15, i32 %sub
  %16 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call17, ptr %arrayidx18, align 4
  %tobool20.not = icmp eq ptr %call17, null
  br i1 %tobool20.not, label %if.end16.cleanup_crit_edge, label %if.end22

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end22:                                         ; preds = %if.end16
  %17 = load ptr, ptr @dev_attr, align 4
  %arrayidx23 = getelementptr ptr, ptr %17, i32 %sub
  %18 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx23, align 4
  %show = getelementptr inbounds %struct.device_attribute, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %show to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @show_irq, ptr %show, align 4
  %21 = load ptr, ptr %arrayidx23, align 4
  %store = getelementptr inbounds %struct.device_attribute, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %store to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %store, align 4
  %23 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx18, align 4
  %25 = load ptr, ptr %arrayidx23, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %24, ptr %25, align 4
  %27 = load ptr, ptr %arrayidx23, align 4
  %mode = getelementptr inbounds %struct.attribute, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %mode to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 292, ptr %mode, align 4
  %29 = load ptr, ptr %arrayidx23, align 4
  %call.i = call i32 @sysfs_create_file_ns(ptr noundef %3, ptr noundef %29, ptr noundef null) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp32 = icmp slt i32 %call.i, 0
  br i1 %cmp32, label %do.end36, label %if.end38

do.end36:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #15
  %call37 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, i32 noundef %call.i) #16
  br label %cleanup

if.end38:                                         ; preds = %if.end22
  %30 = ptrtoint ptr %user_val to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %user_val, align 4
  %call40 = call i32 @request_threaded_irq(i32 noundef %31, ptr noundef null, ptr noundef nonnull @ab8500_debug_handler, i32 noundef 24704, ptr noundef nonnull @.str.15, ptr noundef %3) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %cmp41 = icmp slt i32 %call40, 0
  br i1 %cmp41, label %do.end45, label %if.end38.cleanup_crit_edge

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end45:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #15
  %32 = ptrtoint ptr %user_val to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %user_val, align 4
  %call47 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, i32 noundef %call40, i32 noundef %33) #16
  %34 = load ptr, ptr @dev_attr, align 4
  %arrayidx49 = getelementptr ptr, ptr %34, i32 %sub
  %35 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx49, align 4
  call void @sysfs_remove_file_ns(ptr noundef %3, ptr noundef %36, ptr noundef null) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end45, %if.end38.cleanup_crit_edge, %do.end36, %if.end16.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %do.end7, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end7 ], [ %call.i, %do.end36 ], [ %call40, %do.end45 ], [ %call, %entry.cleanup_crit_edge ], [ -22, %if.end8.cleanup_crit_edge ], [ -12, %if.end11.cleanup_crit_edge ], [ -12, %if.end16.cleanup_crit_edge ], [ %count, %if.end38.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %user_val) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ab8500_subscribe_unsubscribe_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @ab8500_subscribe_unsubscribe_print, ptr noundef %1) #13
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_irq(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  %name = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %name) #13
  %0 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %name, align 4, !annotation !239
  %1 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %attr, align 4
  %call.i = call i32 @_kstrtoul(ptr noundef %2, i32 noundef 0, ptr noundef nonnull %name) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %name, align 4
  %5 = load i32, ptr @irq_first, align 4
  %sub = sub i32 %4, %5
  %6 = load i32, ptr @num_irqs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %6)
  %cmp.not = icmp ult i32 %sub, %6
  br i1 %cmp.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %7 = load ptr, ptr @irq_count, align 4
  %arrayidx = getelementptr i32, ptr %7, i32 %sub
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %call5 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.55, i32 noundef %9)
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end4 ], [ %call.i, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %name) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ab8500_debug_handler(i32 noundef %irq, ptr noundef %data) #0 align 64 {
entry:
  %buf = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %buf) #13
  %0 = call ptr @memset(ptr %buf, i32 255, i32 16)
  %1 = load i32, ptr @irq_first, align 4
  %sub = sub i32 %irq, %1
  %2 = load i32, ptr @num_irqs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %2)
  %cmp = icmp ult i32 %sub, %2
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %3 = load ptr, ptr @irq_count, align 4
  %arrayidx = getelementptr i32, ptr %3, i32 %sub
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %arrayidx, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.56, i32 noundef %irq)
  call void @sysfs_notify(ptr noundef %data, ptr noundef null, ptr noundef nonnull %buf) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %buf) #13
  ret i32 1
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_file_ns(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_notify(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_file_ns(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ab8500_subscribe_unsubscribe_print(ptr noundef %s, ptr nocapture noundef readnone %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @irq_first, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.57, i32 noundef %0) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ab8500_interrupts_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @ab8500_interrupts_show, ptr noundef %1) #13
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ab8500_interrupts_show(ptr noundef %s, ptr nocapture noundef readnone %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.107) #13
  %0 = load i32, ptr @num_interrupt_lines, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp8 = icmp sgt i32 %0, 0
  br i1 %cmp8, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %line.09 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %1 = load i32, ptr @irq_first, align 4
  %add = add i32 %1, %line.09
  %arrayidx = getelementptr [216 x i32], ptr @num_interrupts, i32 0, i32 %line.09
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.108, i32 noundef %line.09, i32 noundef %add, i32 noundef %3, i32 noundef 0) #13
  %inc = add nuw nsw i32 %line.09, 1
  %4 = load i32, ptr @num_interrupt_lines, align 4
  %cmp = icmp slt i32 %inc, %4
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ab8500_unsubscribe_write(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %user_val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private = getelementptr inbounds %struct.seq_file, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %user_val) #13
  %4 = ptrtoint ptr %user_val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %user_val, align 4, !annotation !239
  %call = call i32 @kstrtoul_from_user(ptr noundef %user_buf, i32 noundef %count, i32 noundef 0, ptr noundef nonnull %user_val) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %user_val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %user_val, align 4
  %7 = load i32, ptr @irq_first, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %7)
  %cmp = icmp ult i32 %6, %7
  br i1 %cmp, label %do.end, label %if.end2

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.43, i32 noundef %7) #16
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %8 = load i32, ptr @irq_last, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %8)
  %cmp3 = icmp ugt i32 %6, %8
  br i1 %cmp3, label %do.end7, label %if.end8

do.end7:                                          ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.46, i32 noundef %8) #16
  br label %cleanup

if.end8:                                          ; preds = %if.end2
  %sub = sub i32 %6, %7
  %9 = load i32, ptr @num_irqs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %9)
  %cmp9.not = icmp ult i32 %sub, %9
  br i1 %cmp9.not, label %if.end11, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end11:                                         ; preds = %if.end8
  %10 = load ptr, ptr @irq_count, align 4
  %arrayidx = getelementptr i32, ptr %10, i32 %sub
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %arrayidx, align 4
  %12 = load ptr, ptr @dev_attr, align 4
  %arrayidx12 = getelementptr ptr, ptr %12, i32 %sub
  %13 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx12, align 4
  %tobool13.not = icmp eq ptr %14, null
  br i1 %tobool13.not, label %if.end11.if.end16_crit_edge, label %if.then14

if.end11.if.end16_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end16

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  call void @sysfs_remove_file_ns(ptr noundef %3, ptr noundef nonnull %14, ptr noundef null) #13
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.end11.if.end16_crit_edge
  %15 = ptrtoint ptr %user_val to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %user_val, align 4
  %call18 = call ptr @free_irq(i32 noundef %16, ptr noundef %3) #13
  %17 = load ptr, ptr @event_name, align 4
  %arrayidx19 = getelementptr ptr, ptr %17, i32 %sub
  %18 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx19, align 4
  call void @kfree(ptr noundef %19) #13
  %20 = load ptr, ptr @dev_attr, align 4
  %arrayidx20 = getelementptr ptr, ptr %20, i32 %sub
  %21 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx20, align 4
  call void @kfree(ptr noundef %22) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end8.cleanup_crit_edge, %do.end7, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end7 ], [ %count, %if.end16 ], [ %call, %entry.cleanup_crit_edge ], [ -22, %if.end8.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %user_val) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ab8500_hwreg_write(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %val.i = alloca i32, align 4
  %regvalue.i = alloca i8, align 1
  %loc.i = alloca %struct.hwreg_cfg, align 4
  %buf = alloca [128 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private = getelementptr inbounds %struct.seq_file, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 8
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %buf) #13
  %4 = call ptr @memset(ptr %buf, i32 255, i32 128)
  %5 = tail call i32 @llvm.smin.i32(i32 %count, i32 127)
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %5)
  %cmp1.i.i = icmp ugt i32 %5, 128
  br i1 %cmp1.i.i, label %if.then3.i.i, label %if.then.i.i.i, !prof !240

if.then3.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.112, i32 noundef 214, i32 noundef 9, ptr noundef nonnull @.str.113, i32 noundef 128, i32 noundef %5) #13
  br label %cleanup

if.then.i.i.i:                                    ; preds = %entry
  call void @__check_object_size(ptr noundef nonnull %buf, i32 noundef %5, i1 noundef zeroext false) #13
  call void @__might_fault(ptr noundef nonnull @.str.114, i32 noundef 156) #13
  %call.i.i = call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i, label %if.then.i.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.i.i.if.end.i.i_crit_edge:               ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i.i.i
  %6 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %user_buf, i32 %5, i32 -1226833920) #18, !srcloc !241
  %asmresult.i.i = extractvalue { i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !242

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %buf, i32 noundef %5) #13
  %7 = call i32 @llvm.read_register.i32(metadata !229) #13
  %and.i.i.i.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 4
  %9 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #9, !srcloc !243
  %and.i.i.i.i = and i32 %9, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #13, !srcloc !244
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !245
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %buf, ptr noundef %user_buf, i32 noundef %5) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %9) #13, !srcloc !244
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !245
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.then.i.i.i.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %5, %if.then.i.i.i.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %5, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.then11.i.i, !prof !242

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i.i = sub i32 %5, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %buf, i32 %sub.i.i
  %10 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %arrayidx = getelementptr [128 x i8], ptr %buf, i32 0, i32 %5
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %arrayidx, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #13
  %12 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %val.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %regvalue.i) #13
  %13 = ptrtoint ptr %regvalue.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 -1, ptr %regvalue.i, align 1, !annotation !239
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %loc.i) #13
  %14 = call ptr @memcpy(ptr %loc.i, ptr @__const.hwreg_common_write.loc, i32 20)
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(5) %buf, ptr noundef nonnull dereferenceable(5) @.str.115, i32 5) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool.not.i = icmp eq i32 %bcmp, 0
  br i1 %tobool.not.i, label %if.end.if.end6.i_crit_edge, label %if.else.i

if.end.if.end6.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6.i

if.else.i:                                        ; preds = %if.end
  %bcmp29 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %buf, ptr noundef nonnull dereferenceable(6) @.str.116, i32 6) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp29)
  %tobool2.not.i = icmp eq i32 %bcmp29, 0
  br i1 %tobool2.not.i, label %if.else.i.if.end6.i_crit_edge, label %if.else.i.hwreg_common_write.exit.thread_crit_edge

if.else.i.hwreg_common_write.exit.thread_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %hwreg_common_write.exit.thread

if.else.i.if.end6.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.else.i.if.end6.i_crit_edge, %if.end.if.end6.i_crit_edge
  %.sink.i = phi i32 [ 5, %if.end.if.end6.i_crit_edge ], [ 6, %if.else.i.if.end6.i_crit_edge ]
  %add.ptr4.i = getelementptr i8, ptr %buf, i32 %.sink.i
  %shift.i = getelementptr inbounds %struct.hwreg_cfg, ptr %loc.i, i32 0, i32 4
  %mask.i = getelementptr inbounds %struct.hwreg_cfg, ptr %loc.i, i32 0, i32 3
  %fmt40.i = getelementptr inbounds %struct.hwreg_cfg, ptr %loc.i, i32 0, i32 2
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.backedge, %if.end6.i
  %b.addr.1.i = phi ptr [ %add.ptr4.i, %if.end6.i ], [ %b.addr.1.i.be, %while.cond.i.backedge ]
  %15 = ptrtoint ptr %b.addr.1.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %b.addr.1.i, align 1
  %17 = zext i8 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values)
  switch i8 %16, label %while.cond.i.for.cond29.i50.i.preheader_crit_edge [
    i8 32, label %while.cond.i.while.body.i_crit_edge
    i8 45, label %while.cond.i.while.body.i_crit_edge210
    i8 48, label %land.lhs.true.i34.i
  ]

while.cond.i.while.body.i_crit_edge210:           ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i

while.cond.i.while.body.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i

while.cond.i.for.cond29.i50.i.preheader_crit_edge: ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond29.i50.i.preheader

while.body.i:                                     ; preds = %while.cond.i.while.body.i_crit_edge, %while.cond.i.while.body.i_crit_edge210
  %add.ptr11.i = getelementptr i8, ptr %b.addr.1.i, i32 -1
  %18 = ptrtoint ptr %add.ptr11.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %add.ptr11.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %19)
  %cmp13.not.i = icmp eq i8 %19, 32
  br i1 %cmp13.not.i, label %if.end16.i, label %if.then15.i

if.then15.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %incdec.ptr.i = getelementptr i8, ptr %b.addr.1.i, i32 1
  br label %while.cond.i.backedge

if.end16.i:                                       ; preds = %while.body.i
  %call17.i = call i32 @strncmp(ptr noundef %b.addr.1.i, ptr noundef nonnull dereferenceable(4) @.str.117, i32 noundef 3) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool18.not.i = icmp eq i32 %call17.i, 0
  br i1 %tobool18.not.i, label %if.end16.i.if.then21.i_crit_edge, label %lor.lhs.false.i

if.end16.i.if.then21.i_crit_edge:                 ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then21.i

lor.lhs.false.i:                                  ; preds = %if.end16.i
  %call19.i = call i32 @strncmp(ptr noundef %b.addr.1.i, ptr noundef nonnull dereferenceable(6) @.str.118, i32 noundef 5) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %tobool20.not.i = icmp eq i32 %call19.i, 0
  br i1 %tobool20.not.i, label %lor.lhs.false.i.if.then21.i_crit_edge, label %if.else27.i

lor.lhs.false.i.if.then21.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then21.i

if.then21.i:                                      ; preds = %lor.lhs.false.i.if.then21.i_crit_edge, %if.end16.i.if.then21.i_crit_edge
  %add.ptr22.i = getelementptr i8, ptr %b.addr.1.i, i32 2
  %20 = ptrtoint ptr %add.ptr22.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %add.ptr22.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %21)
  %cmp24.i = icmp eq i8 %21, 32
  %cond.i = select i1 %cmp24.i, i32 3, i32 5
  %add.ptr26.i = getelementptr i8, ptr %b.addr.1.i, i32 %cond.i
  %22 = ptrtoint ptr %fmt40.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %fmt40.i, align 4
  %or.i = or i32 %23, 1
  store i32 %or.i, ptr %fmt40.i, align 4
  br label %while.cond.i.backedge

if.else27.i:                                      ; preds = %lor.lhs.false.i
  %call28.i = call i32 @strncmp(ptr noundef %b.addr.1.i, ptr noundef nonnull dereferenceable(4) @.str.119, i32 noundef 3) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i)
  %tobool29.not.i = icmp eq i32 %call28.i, 0
  br i1 %tobool29.not.i, label %if.else27.i.if.then33.i_crit_edge, label %lor.lhs.false30.i

if.else27.i.if.then33.i_crit_edge:                ; preds = %if.else27.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then33.i

lor.lhs.false30.i:                                ; preds = %if.else27.i
  %call31.i = call i32 @strncmp(ptr noundef %b.addr.1.i, ptr noundef nonnull dereferenceable(6) @.str.120, i32 noundef 5) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i)
  %tobool32.not.i = icmp eq i32 %call31.i, 0
  br i1 %tobool32.not.i, label %lor.lhs.false30.i.if.then33.i_crit_edge, label %if.else41.i

lor.lhs.false30.i.if.then33.i_crit_edge:          ; preds = %lor.lhs.false30.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then33.i

if.then33.i:                                      ; preds = %lor.lhs.false30.i.if.then33.i_crit_edge, %if.else27.i.if.then33.i_crit_edge
  %add.ptr34.i = getelementptr i8, ptr %b.addr.1.i, i32 2
  %24 = ptrtoint ptr %add.ptr34.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %add.ptr34.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %25)
  %cmp36.i = icmp eq i8 %25, 32
  %cond38.i = select i1 %cmp36.i, i32 3, i32 5
  %add.ptr39.i = getelementptr i8, ptr %b.addr.1.i, i32 %cond38.i
  %26 = ptrtoint ptr %fmt40.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %fmt40.i, align 4
  %and.i = and i32 %27, -2
  store i32 %and.i, ptr %fmt40.i, align 4
  br label %while.cond.i.backedge

if.else41.i:                                      ; preds = %lor.lhs.false30.i
  %call42.i = call i32 @strncmp(ptr noundef %b.addr.1.i, ptr noundef nonnull dereferenceable(4) @.str.121, i32 noundef 3) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42.i)
  %tobool43.not.i = icmp eq i32 %call42.i, 0
  br i1 %tobool43.not.i, label %if.else41.i.if.then47.i_crit_edge, label %lor.lhs.false44.i

if.else41.i.if.then47.i_crit_edge:                ; preds = %if.else41.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then47.i

lor.lhs.false44.i:                                ; preds = %if.else41.i
  %call45.i = call i32 @strncmp(ptr noundef %b.addr.1.i, ptr noundef nonnull dereferenceable(7) @.str.122, i32 noundef 6) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45.i)
  %tobool46.not.i = icmp eq i32 %call45.i, 0
  br i1 %tobool46.not.i, label %lor.lhs.false44.i.if.then47.i_crit_edge, label %if.else63.i

lor.lhs.false44.i.if.then47.i_crit_edge:          ; preds = %lor.lhs.false44.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then47.i

if.then47.i:                                      ; preds = %lor.lhs.false44.i.if.then47.i_crit_edge, %if.else41.i.if.then47.i_crit_edge
  %add.ptr48.i = getelementptr i8, ptr %b.addr.1.i, i32 2
  %28 = ptrtoint ptr %add.ptr48.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %add.ptr48.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %29)
  %cmp50.i = icmp eq i8 %29, 32
  %cond52.i = select i1 %cmp50.i, i32 3, i32 6
  %add.ptr53.i = getelementptr i8, ptr %b.addr.1.i, i32 %cond52.i
  %30 = ptrtoint ptr %add.ptr53.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %add.ptr53.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %31)
  %cmp.i.i16 = icmp eq i8 %31, 48
  br i1 %cmp.i.i16, label %land.lhs.true.i.i18, label %if.then47.i.if.else.i.i_crit_edge

if.then47.i.if.else.i.i_crit_edge:                ; preds = %if.then47.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else.i.i

land.lhs.true.i.i18:                              ; preds = %if.then47.i
  %add.ptr.i.i17 = getelementptr i8, ptr %add.ptr53.i, i32 1
  %32 = ptrtoint ptr %add.ptr.i.i17 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %add.ptr.i.i17, align 1
  %34 = zext i8 %33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.138)
  switch i8 %33, label %land.lhs.true.i.i18.if.else.i.i_crit_edge [
    i8 120, label %land.lhs.true.i.i18.if.then.i.i19_crit_edge
    i8 88, label %land.lhs.true.i.i18.if.then.i.i19_crit_edge211
  ]

land.lhs.true.i.i18.if.then.i.i19_crit_edge211:   ; preds = %land.lhs.true.i.i18
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i.i19

land.lhs.true.i.i18.if.then.i.i19_crit_edge:      ; preds = %land.lhs.true.i.i18
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i.i19

land.lhs.true.i.i18.if.else.i.i_crit_edge:        ; preds = %land.lhs.true.i.i18
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else.i.i

if.then.i.i19:                                    ; preds = %land.lhs.true.i.i18.if.then.i.i19_crit_edge, %land.lhs.true.i.i18.if.then.i.i19_crit_edge211
  %add.ptr9.i.i = getelementptr i8, ptr %add.ptr53.i, i32 2
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.inc.i.i, %if.then.i.i19
  %s.0.i.i = phi ptr [ %add.ptr9.i.i, %if.then.i.i19 ], [ %incdec.ptr.i.i, %for.inc.i.i ]
  %35 = ptrtoint ptr %s.0.i.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %s.0.i.i, align 1
  %37 = zext i8 %36 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.139)
  switch i8 %36, label %for.body.i.i [
    i8 0, label %for.cond.i.i.strval_len.exit.i_crit_edge
    i8 32, label %for.cond.i.i.strval_len.exit.i_crit_edge212
    i8 10, label %for.cond.i.i.strval_len.exit.i_crit_edge213
  ]

for.cond.i.i.strval_len.exit.i_crit_edge213:      ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %strval_len.exit.i

for.cond.i.i.strval_len.exit.i_crit_edge212:      ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %strval_len.exit.i

for.cond.i.i.strval_len.exit.i_crit_edge:         ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %strval_len.exit.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %conv10.i.i = zext i8 %36 to i32
  %arrayidx.i.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv10.i.i
  %38 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx.i.i, align 1
  %40 = and i8 %39, 68
  %cmp20.not.i.i = icmp eq i8 %40, 0
  br i1 %cmp20.not.i.i, label %for.body.i.i.hwreg_common_write.exit.thread_crit_edge, label %for.inc.i.i

for.body.i.i.hwreg_common_write.exit.thread_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %hwreg_common_write.exit.thread

for.inc.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %incdec.ptr.i.i = getelementptr i8, ptr %s.0.i.i, i32 1
  br label %for.cond.i.i

if.else.i.i:                                      ; preds = %land.lhs.true.i.i18.if.else.i.i_crit_edge, %if.then47.i.if.else.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 45, i8 %31)
  %cmp24.i.i = icmp eq i8 %31, 45
  %spec.select.idx.i.i = zext i1 %cmp24.i.i to i32
  %spec.select.i.i20 = getelementptr i8, ptr %add.ptr53.i, i32 %spec.select.idx.i.i
  br label %for.cond29.i.i

for.cond29.i.i:                                   ; preds = %for.inc46.i.i, %if.else.i.i
  %s.2.i.i = phi ptr [ %spec.select.i.i20, %if.else.i.i ], [ %incdec.ptr47.i.i, %for.inc46.i.i ]
  %41 = ptrtoint ptr %s.2.i.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %s.2.i.i, align 1
  %43 = zext i8 %42 to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values.140)
  switch i8 %42, label %for.body41.i.i [
    i8 0, label %for.cond29.i.i.strval_len.exit.i_crit_edge
    i8 32, label %for.cond29.i.i.strval_len.exit.i_crit_edge214
    i8 10, label %for.cond29.i.i.strval_len.exit.i_crit_edge215
  ]

for.cond29.i.i.strval_len.exit.i_crit_edge215:    ; preds = %for.cond29.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %strval_len.exit.i

for.cond29.i.i.strval_len.exit.i_crit_edge214:    ; preds = %for.cond29.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %strval_len.exit.i

for.cond29.i.i.strval_len.exit.i_crit_edge:       ; preds = %for.cond29.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %strval_len.exit.i

for.body41.i.i:                                   ; preds = %for.cond29.i.i
  %conv30.i.i = zext i8 %42 to i32
  %44 = add nsw i32 %conv30.i.i, -58
  %45 = icmp ult i32 %44, -10
  br i1 %45, label %for.body41.i.i.hwreg_common_write.exit.thread_crit_edge, label %for.inc46.i.i

for.body41.i.i.hwreg_common_write.exit.thread_crit_edge: ; preds = %for.body41.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %hwreg_common_write.exit.thread

for.inc46.i.i:                                    ; preds = %for.body41.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %incdec.ptr47.i.i = getelementptr i8, ptr %s.2.i.i, i32 1
  br label %for.cond29.i.i

strval_len.exit.i:                                ; preds = %for.cond29.i.i.strval_len.exit.i_crit_edge, %for.cond29.i.i.strval_len.exit.i_crit_edge214, %for.cond29.i.i.strval_len.exit.i_crit_edge215, %for.cond.i.i.strval_len.exit.i_crit_edge, %for.cond.i.i.strval_len.exit.i_crit_edge212, %for.cond.i.i.strval_len.exit.i_crit_edge213
  %s.3.i.i = phi ptr [ %s.2.i.i, %for.cond29.i.i.strval_len.exit.i_crit_edge ], [ %s.2.i.i, %for.cond29.i.i.strval_len.exit.i_crit_edge214 ], [ %s.2.i.i, %for.cond29.i.i.strval_len.exit.i_crit_edge215 ], [ %s.0.i.i, %for.cond.i.i.strval_len.exit.i_crit_edge ], [ %s.0.i.i, %for.cond.i.i.strval_len.exit.i_crit_edge212 ], [ %s.0.i.i, %for.cond.i.i.strval_len.exit.i_crit_edge213 ]
  %cmp55.i = icmp eq ptr %s.3.i.i, %add.ptr53.i
  br i1 %cmp55.i, label %strval_len.exit.i.hwreg_common_write.exit.thread_crit_edge, label %if.end58.i

strval_len.exit.i.hwreg_common_write.exit.thread_crit_edge: ; preds = %strval_len.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %hwreg_common_write.exit.thread

if.end58.i:                                       ; preds = %strval_len.exit.i
  %call.i.i21 = call i32 @_kstrtoul(ptr noundef %add.ptr53.i, i32 noundef 0, ptr noundef %mask.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i21)
  %tobool60.not.i = icmp eq i32 %call.i.i21, 0
  br i1 %tobool60.not.i, label %if.end58.i.while.cond.i.backedge_crit_edge, label %if.end58.i.hwreg_common_write.exit.thread_crit_edge

if.end58.i.hwreg_common_write.exit.thread_crit_edge: ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %hwreg_common_write.exit.thread

if.end58.i.while.cond.i.backedge_crit_edge:       ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.i.backedge

if.else63.i:                                      ; preds = %lor.lhs.false44.i
  %call64.i = call i32 @strncmp(ptr noundef %b.addr.1.i, ptr noundef nonnull dereferenceable(4) @.str.123, i32 noundef 3) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64.i)
  %tobool65.not.i = icmp eq i32 %call64.i, 0
  br i1 %tobool65.not.i, label %if.else63.i.if.then69.i_crit_edge, label %lor.lhs.false66.i

if.else63.i.if.then69.i_crit_edge:                ; preds = %if.else63.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then69.i

lor.lhs.false66.i:                                ; preds = %if.else63.i
  %call67.i = call i32 @strncmp(ptr noundef %b.addr.1.i, ptr noundef nonnull dereferenceable(8) @.str.124, i32 noundef 7) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67.i)
  %tobool68.not.i = icmp eq i32 %call67.i, 0
  br i1 %tobool68.not.i, label %lor.lhs.false66.i.if.then69.i_crit_edge, label %lor.lhs.false66.i.hwreg_common_write.exit.thread_crit_edge

lor.lhs.false66.i.hwreg_common_write.exit.thread_crit_edge: ; preds = %lor.lhs.false66.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %hwreg_common_write.exit.thread

lor.lhs.false66.i.if.then69.i_crit_edge:          ; preds = %lor.lhs.false66.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then69.i

if.then69.i:                                      ; preds = %lor.lhs.false66.i.if.then69.i_crit_edge, %if.else63.i.if.then69.i_crit_edge
  %add.ptr70.i = getelementptr i8, ptr %b.addr.1.i, i32 2
  %46 = ptrtoint ptr %add.ptr70.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %add.ptr70.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %47)
  %cmp72.i = icmp eq i8 %47, 32
  %cond74.i = select i1 %cmp72.i, i32 3, i32 7
  %add.ptr75.i = getelementptr i8, ptr %b.addr.1.i, i32 %cond74.i
  %48 = ptrtoint ptr %add.ptr75.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %add.ptr75.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %49)
  %cmp.i1.i = icmp eq i8 %49, 48
  br i1 %cmp.i1.i, label %land.lhs.true.i3.i, label %if.then69.i.if.else.i17.i_crit_edge

if.then69.i.if.else.i17.i_crit_edge:              ; preds = %if.then69.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else.i17.i

land.lhs.true.i3.i:                               ; preds = %if.then69.i
  %add.ptr.i2.i = getelementptr i8, ptr %add.ptr75.i, i32 1
  %50 = ptrtoint ptr %add.ptr.i2.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %add.ptr.i2.i, align 1
  %52 = zext i8 %51 to i64
  call void @__sanitizer_cov_trace_switch(i64 %52, ptr @__sancov_gen_cov_switch_values.141)
  switch i8 %51, label %land.lhs.true.i3.i.if.else.i17.i_crit_edge [
    i8 120, label %land.lhs.true.i3.i.if.then.i5.i_crit_edge
    i8 88, label %land.lhs.true.i3.i.if.then.i5.i_crit_edge216
  ]

land.lhs.true.i3.i.if.then.i5.i_crit_edge216:     ; preds = %land.lhs.true.i3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i5.i

land.lhs.true.i3.i.if.then.i5.i_crit_edge:        ; preds = %land.lhs.true.i3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i5.i

land.lhs.true.i3.i.if.else.i17.i_crit_edge:       ; preds = %land.lhs.true.i3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else.i17.i

if.then.i5.i:                                     ; preds = %land.lhs.true.i3.i.if.then.i5.i_crit_edge, %land.lhs.true.i3.i.if.then.i5.i_crit_edge216
  %add.ptr9.i4.i = getelementptr i8, ptr %add.ptr75.i, i32 2
  br label %for.cond.i7.i

for.cond.i7.i:                                    ; preds = %for.inc.i13.i, %if.then.i5.i
  %s.0.i6.i = phi ptr [ %add.ptr9.i4.i, %if.then.i5.i ], [ %incdec.ptr.i12.i, %for.inc.i13.i ]
  %53 = ptrtoint ptr %s.0.i6.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %s.0.i6.i, align 1
  %55 = zext i8 %54 to i64
  call void @__sanitizer_cov_trace_switch(i64 %55, ptr @__sancov_gen_cov_switch_values.142)
  switch i8 %54, label %for.body.i11.i [
    i8 0, label %for.cond.i7.i.strval_len.exit30.i_crit_edge
    i8 32, label %for.cond.i7.i.strval_len.exit30.i_crit_edge217
    i8 10, label %for.cond.i7.i.strval_len.exit30.i_crit_edge218
  ]

for.cond.i7.i.strval_len.exit30.i_crit_edge218:   ; preds = %for.cond.i7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %strval_len.exit30.i

for.cond.i7.i.strval_len.exit30.i_crit_edge217:   ; preds = %for.cond.i7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %strval_len.exit30.i

for.cond.i7.i.strval_len.exit30.i_crit_edge:      ; preds = %for.cond.i7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %strval_len.exit30.i

for.body.i11.i:                                   ; preds = %for.cond.i7.i
  %conv10.i8.i = zext i8 %54 to i32
  %arrayidx.i9.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv10.i8.i
  %56 = ptrtoint ptr %arrayidx.i9.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx.i9.i, align 1
  %58 = and i8 %57, 68
  %cmp20.not.i10.i = icmp eq i8 %58, 0
  br i1 %cmp20.not.i10.i, label %for.body.i11.i.hwreg_common_write.exit.thread_crit_edge, label %for.inc.i13.i

for.body.i11.i.hwreg_common_write.exit.thread_crit_edge: ; preds = %for.body.i11.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %hwreg_common_write.exit.thread

for.inc.i13.i:                                    ; preds = %for.body.i11.i
  call void @__sanitizer_cov_trace_pc() #15
  %incdec.ptr.i12.i = getelementptr i8, ptr %s.0.i6.i, i32 1
  br label %for.cond.i7.i

if.else.i17.i:                                    ; preds = %land.lhs.true.i3.i.if.else.i17.i_crit_edge, %if.then69.i.if.else.i17.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 45, i8 %49)
  %cmp24.i14.i = icmp eq i8 %49, 45
  %spec.select.idx.i15.i = zext i1 %cmp24.i14.i to i32
  %spec.select.i16.i = getelementptr i8, ptr %add.ptr75.i, i32 %spec.select.idx.i15.i
  br label %for.cond29.i19.i

for.cond29.i19.i:                                 ; preds = %for.inc46.i23.i, %if.else.i17.i
  %s.2.i18.i = phi ptr [ %spec.select.i16.i, %if.else.i17.i ], [ %incdec.ptr47.i22.i, %for.inc46.i23.i ]
  %59 = ptrtoint ptr %s.2.i18.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %s.2.i18.i, align 1
  %61 = zext i8 %60 to i64
  call void @__sanitizer_cov_trace_switch(i64 %61, ptr @__sancov_gen_cov_switch_values.143)
  switch i8 %60, label %for.body41.i21.i [
    i8 0, label %for.cond29.i19.i.strval_len.exit30.i_crit_edge
    i8 32, label %for.cond29.i19.i.strval_len.exit30.i_crit_edge219
    i8 10, label %for.cond29.i19.i.strval_len.exit30.i_crit_edge220
  ]

for.cond29.i19.i.strval_len.exit30.i_crit_edge220: ; preds = %for.cond29.i19.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %strval_len.exit30.i

for.cond29.i19.i.strval_len.exit30.i_crit_edge219: ; preds = %for.cond29.i19.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %strval_len.exit30.i

for.cond29.i19.i.strval_len.exit30.i_crit_edge:   ; preds = %for.cond29.i19.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %strval_len.exit30.i

for.body41.i21.i:                                 ; preds = %for.cond29.i19.i
  %conv30.i20.i = zext i8 %60 to i32
  %62 = add nsw i32 %conv30.i20.i, -58
  %63 = icmp ult i32 %62, -10
  br i1 %63, label %for.body41.i21.i.hwreg_common_write.exit.thread_crit_edge, label %for.inc46.i23.i

for.body41.i21.i.hwreg_common_write.exit.thread_crit_edge: ; preds = %for.body41.i21.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %hwreg_common_write.exit.thread

for.inc46.i23.i:                                  ; preds = %for.body41.i21.i
  call void @__sanitizer_cov_trace_pc() #15
  %incdec.ptr47.i22.i = getelementptr i8, ptr %s.2.i18.i, i32 1
  br label %for.cond29.i19.i

strval_len.exit30.i:                              ; preds = %for.cond29.i19.i.strval_len.exit30.i_crit_edge, %for.cond29.i19.i.strval_len.exit30.i_crit_edge219, %for.cond29.i19.i.strval_len.exit30.i_crit_edge220, %for.cond.i7.i.strval_len.exit30.i_crit_edge, %for.cond.i7.i.strval_len.exit30.i_crit_edge217, %for.cond.i7.i.strval_len.exit30.i_crit_edge218
  %s.3.i24.i = phi ptr [ %s.2.i18.i, %for.cond29.i19.i.strval_len.exit30.i_crit_edge ], [ %s.2.i18.i, %for.cond29.i19.i.strval_len.exit30.i_crit_edge219 ], [ %s.2.i18.i, %for.cond29.i19.i.strval_len.exit30.i_crit_edge220 ], [ %s.0.i6.i, %for.cond.i7.i.strval_len.exit30.i_crit_edge ], [ %s.0.i6.i, %for.cond.i7.i.strval_len.exit30.i_crit_edge217 ], [ %s.0.i6.i, %for.cond.i7.i.strval_len.exit30.i_crit_edge218 ]
  %cmp77.i = icmp eq ptr %s.3.i24.i, %add.ptr75.i
  br i1 %cmp77.i, label %strval_len.exit30.i.hwreg_common_write.exit.thread_crit_edge, label %if.end80.i

strval_len.exit30.i.hwreg_common_write.exit.thread_crit_edge: ; preds = %strval_len.exit30.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %hwreg_common_write.exit.thread

if.end80.i:                                       ; preds = %strval_len.exit30.i
  %call.i31.i = call i32 @_kstrtol(ptr noundef %add.ptr75.i, i32 noundef 0, ptr noundef %shift.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i31.i)
  %tobool82.not.i = icmp eq i32 %call.i31.i, 0
  br i1 %tobool82.not.i, label %if.end80.i.while.cond.i.backedge_crit_edge, label %if.end80.i.hwreg_common_write.exit.thread_crit_edge

if.end80.i.hwreg_common_write.exit.thread_crit_edge: ; preds = %if.end80.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %hwreg_common_write.exit.thread

if.end80.i.while.cond.i.backedge_crit_edge:       ; preds = %if.end80.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.i.backedge

while.cond.i.backedge:                            ; preds = %if.end80.i.while.cond.i.backedge_crit_edge, %if.end58.i.while.cond.i.backedge_crit_edge, %if.then33.i, %if.then21.i, %if.then15.i
  %b.addr.1.i.be = phi ptr [ %incdec.ptr.i, %if.then15.i ], [ %add.ptr75.i, %if.end80.i.while.cond.i.backedge_crit_edge ], [ %add.ptr53.i, %if.end58.i.while.cond.i.backedge_crit_edge ], [ %add.ptr39.i, %if.then33.i ], [ %add.ptr26.i, %if.then21.i ]
  br label %while.cond.i

land.lhs.true.i34.i:                              ; preds = %while.cond.i
  %add.ptr.i33.i = getelementptr i8, ptr %b.addr.1.i, i32 1
  %64 = ptrtoint ptr %add.ptr.i33.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %add.ptr.i33.i, align 1
  %66 = zext i8 %65 to i64
  call void @__sanitizer_cov_trace_switch(i64 %66, ptr @__sancov_gen_cov_switch_values.144)
  switch i8 %65, label %land.lhs.true.i34.i.for.cond29.i50.i.preheader_crit_edge [
    i8 120, label %land.lhs.true.i34.i.if.then.i36.i_crit_edge
    i8 88, label %land.lhs.true.i34.i.if.then.i36.i_crit_edge221
  ]

land.lhs.true.i34.i.if.then.i36.i_crit_edge221:   ; preds = %land.lhs.true.i34.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i36.i

land.lhs.true.i34.i.if.then.i36.i_crit_edge:      ; preds = %land.lhs.true.i34.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i36.i

land.lhs.true.i34.i.for.cond29.i50.i.preheader_crit_edge: ; preds = %land.lhs.true.i34.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond29.i50.i.preheader

for.cond29.i50.i.preheader:                       ; preds = %land.lhs.true.i34.i.for.cond29.i50.i.preheader_crit_edge, %while.cond.i.for.cond29.i50.i.preheader_crit_edge
  br label %for.cond29.i50.i

if.then.i36.i:                                    ; preds = %land.lhs.true.i34.i.if.then.i36.i_crit_edge, %land.lhs.true.i34.i.if.then.i36.i_crit_edge221
  %add.ptr9.i35.i = getelementptr i8, ptr %b.addr.1.i, i32 2
  br label %for.cond.i38.i

for.cond.i38.i:                                   ; preds = %for.inc.i44.i, %if.then.i36.i
  %s.0.i37.i = phi ptr [ %add.ptr9.i35.i, %if.then.i36.i ], [ %incdec.ptr.i43.i, %for.inc.i44.i ]
  %67 = ptrtoint ptr %s.0.i37.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %s.0.i37.i, align 1
  %69 = zext i8 %68 to i64
  call void @__sanitizer_cov_trace_switch(i64 %69, ptr @__sancov_gen_cov_switch_values.145)
  switch i8 %68, label %for.body.i42.i [
    i8 0, label %for.cond.i38.i.strval_len.exit61.i_crit_edge
    i8 32, label %for.cond.i38.i.strval_len.exit61.i_crit_edge222
    i8 10, label %for.cond.i38.i.strval_len.exit61.i_crit_edge223
  ]

for.cond.i38.i.strval_len.exit61.i_crit_edge223:  ; preds = %for.cond.i38.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %strval_len.exit61.i

for.cond.i38.i.strval_len.exit61.i_crit_edge222:  ; preds = %for.cond.i38.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %strval_len.exit61.i

for.cond.i38.i.strval_len.exit61.i_crit_edge:     ; preds = %for.cond.i38.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %strval_len.exit61.i

for.body.i42.i:                                   ; preds = %for.cond.i38.i
  %conv10.i39.i = zext i8 %68 to i32
  %arrayidx.i40.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv10.i39.i
  %70 = ptrtoint ptr %arrayidx.i40.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx.i40.i, align 1
  %72 = and i8 %71, 68
  %cmp20.not.i41.i = icmp eq i8 %72, 0
  br i1 %cmp20.not.i41.i, label %for.body.i42.i.hwreg_common_write.exit.thread_crit_edge, label %for.inc.i44.i

for.body.i42.i.hwreg_common_write.exit.thread_crit_edge: ; preds = %for.body.i42.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %hwreg_common_write.exit.thread

for.inc.i44.i:                                    ; preds = %for.body.i42.i
  call void @__sanitizer_cov_trace_pc() #15
  %incdec.ptr.i43.i = getelementptr i8, ptr %s.0.i37.i, i32 1
  br label %for.cond.i38.i

for.cond29.i50.i:                                 ; preds = %for.inc46.i54.i, %for.cond29.i50.i.preheader
  %s.2.i49.i = phi ptr [ %incdec.ptr47.i53.i, %for.inc46.i54.i ], [ %b.addr.1.i, %for.cond29.i50.i.preheader ]
  %73 = ptrtoint ptr %s.2.i49.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %s.2.i49.i, align 1
  %75 = zext i8 %74 to i64
  call void @__sanitizer_cov_trace_switch(i64 %75, ptr @__sancov_gen_cov_switch_values.146)
  switch i8 %74, label %for.body41.i52.i [
    i8 0, label %for.cond29.i50.i.strval_len.exit61.i_crit_edge
    i8 32, label %for.cond29.i50.i.strval_len.exit61.i_crit_edge224
    i8 10, label %for.cond29.i50.i.strval_len.exit61.i_crit_edge225
  ]

for.cond29.i50.i.strval_len.exit61.i_crit_edge225: ; preds = %for.cond29.i50.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %strval_len.exit61.i

for.cond29.i50.i.strval_len.exit61.i_crit_edge224: ; preds = %for.cond29.i50.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %strval_len.exit61.i

for.cond29.i50.i.strval_len.exit61.i_crit_edge:   ; preds = %for.cond29.i50.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %strval_len.exit61.i

for.body41.i52.i:                                 ; preds = %for.cond29.i50.i
  %conv30.i51.i = zext i8 %74 to i32
  %76 = add nsw i32 %conv30.i51.i, -58
  %77 = icmp ult i32 %76, -10
  br i1 %77, label %for.body41.i52.i.hwreg_common_write.exit.thread_crit_edge, label %for.inc46.i54.i

for.body41.i52.i.hwreg_common_write.exit.thread_crit_edge: ; preds = %for.body41.i52.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %hwreg_common_write.exit.thread

for.inc46.i54.i:                                  ; preds = %for.body41.i52.i
  call void @__sanitizer_cov_trace_pc() #15
  %incdec.ptr47.i53.i = getelementptr i8, ptr %s.2.i49.i, i32 1
  br label %for.cond29.i50.i

strval_len.exit61.i:                              ; preds = %for.cond29.i50.i.strval_len.exit61.i_crit_edge, %for.cond29.i50.i.strval_len.exit61.i_crit_edge224, %for.cond29.i50.i.strval_len.exit61.i_crit_edge225, %for.cond.i38.i.strval_len.exit61.i_crit_edge, %for.cond.i38.i.strval_len.exit61.i_crit_edge222, %for.cond.i38.i.strval_len.exit61.i_crit_edge223
  %s.3.i55.i = phi ptr [ %s.2.i49.i, %for.cond29.i50.i.strval_len.exit61.i_crit_edge ], [ %s.2.i49.i, %for.cond29.i50.i.strval_len.exit61.i_crit_edge224 ], [ %s.2.i49.i, %for.cond29.i50.i.strval_len.exit61.i_crit_edge225 ], [ %s.0.i37.i, %for.cond.i38.i.strval_len.exit61.i_crit_edge ], [ %s.0.i37.i, %for.cond.i38.i.strval_len.exit61.i_crit_edge222 ], [ %s.0.i37.i, %for.cond.i38.i.strval_len.exit61.i_crit_edge223 ]
  %cmp91.i = icmp eq ptr %s.3.i55.i, %b.addr.1.i
  br i1 %cmp91.i, label %strval_len.exit61.i.hwreg_common_write.exit.thread_crit_edge, label %if.end94.i

strval_len.exit61.i.hwreg_common_write.exit.thread_crit_edge: ; preds = %strval_len.exit61.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %hwreg_common_write.exit.thread

if.end94.i:                                       ; preds = %strval_len.exit61.i
  %call95.i = call i32 @kstrtouint(ptr noundef %b.addr.1.i, i32 noundef 0, ptr noundef nonnull %loc.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95.i)
  %tobool96.not.i = icmp eq i32 %call95.i, 0
  br i1 %tobool96.not.i, label %if.end94.i.while.cond99.i_crit_edge, label %if.end94.i.hwreg_common_write.exit.thread_crit_edge

if.end94.i.hwreg_common_write.exit.thread_crit_edge: ; preds = %if.end94.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %hwreg_common_write.exit.thread

if.end94.i.while.cond99.i_crit_edge:              ; preds = %if.end94.i
  br label %while.cond99.i

while.cond99.i:                                   ; preds = %while.body103.i, %if.end94.i.while.cond99.i_crit_edge
  %b.addr.3.i = phi ptr [ %incdec.ptr104.i, %while.body103.i ], [ %b.addr.1.i, %if.end94.i.while.cond99.i_crit_edge ]
  %78 = ptrtoint ptr %b.addr.3.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %b.addr.3.i, align 1
  %80 = zext i8 %79 to i64
  call void @__sanitizer_cov_trace_switch(i64 %80, ptr @__sancov_gen_cov_switch_values.147)
  switch i8 %79, label %if.else.i78.loopexit.i [
    i8 32, label %while.body103.i
    i8 48, label %land.lhs.true.i64.i
  ]

while.body103.i:                                  ; preds = %while.cond99.i
  call void @__sanitizer_cov_trace_pc() #15
  %incdec.ptr104.i = getelementptr i8, ptr %b.addr.3.i, i32 1
  br label %while.cond99.i

land.lhs.true.i64.i:                              ; preds = %while.cond99.i
  %add.ptr.i63.i = getelementptr i8, ptr %b.addr.3.i, i32 1
  %81 = ptrtoint ptr %add.ptr.i63.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %add.ptr.i63.i, align 1
  %83 = zext i8 %82 to i64
  call void @__sanitizer_cov_trace_switch(i64 %83, ptr @__sancov_gen_cov_switch_values.148)
  switch i8 %82, label %land.lhs.true.i64.i.if.else.i78.i_crit_edge [
    i8 120, label %land.lhs.true.i64.i.if.then.i66.i_crit_edge
    i8 88, label %land.lhs.true.i64.i.if.then.i66.i_crit_edge226
  ]

land.lhs.true.i64.i.if.then.i66.i_crit_edge226:   ; preds = %land.lhs.true.i64.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i66.i

land.lhs.true.i64.i.if.then.i66.i_crit_edge:      ; preds = %land.lhs.true.i64.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i66.i

land.lhs.true.i64.i.if.else.i78.i_crit_edge:      ; preds = %land.lhs.true.i64.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else.i78.i

if.then.i66.i:                                    ; preds = %land.lhs.true.i64.i.if.then.i66.i_crit_edge, %land.lhs.true.i64.i.if.then.i66.i_crit_edge226
  %add.ptr9.i65.i = getelementptr i8, ptr %b.addr.3.i, i32 2
  br label %for.cond.i68.i

for.cond.i68.i:                                   ; preds = %for.inc.i74.i, %if.then.i66.i
  %s.0.i67.i = phi ptr [ %add.ptr9.i65.i, %if.then.i66.i ], [ %incdec.ptr.i73.i, %for.inc.i74.i ]
  %84 = ptrtoint ptr %s.0.i67.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %s.0.i67.i, align 1
  %86 = zext i8 %85 to i64
  call void @__sanitizer_cov_trace_switch(i64 %86, ptr @__sancov_gen_cov_switch_values.149)
  switch i8 %85, label %for.body.i72.i [
    i8 0, label %for.cond.i68.i.strval_len.exit91.i_crit_edge
    i8 32, label %for.cond.i68.i.strval_len.exit91.i_crit_edge227
    i8 10, label %for.cond.i68.i.strval_len.exit91.i_crit_edge228
  ]

for.cond.i68.i.strval_len.exit91.i_crit_edge228:  ; preds = %for.cond.i68.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %strval_len.exit91.i

for.cond.i68.i.strval_len.exit91.i_crit_edge227:  ; preds = %for.cond.i68.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %strval_len.exit91.i

for.cond.i68.i.strval_len.exit91.i_crit_edge:     ; preds = %for.cond.i68.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %strval_len.exit91.i

for.body.i72.i:                                   ; preds = %for.cond.i68.i
  %conv10.i69.i = zext i8 %85 to i32
  %arrayidx.i70.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv10.i69.i
  %87 = ptrtoint ptr %arrayidx.i70.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %arrayidx.i70.i, align 1
  %89 = and i8 %88, 68
  %cmp20.not.i71.i = icmp eq i8 %89, 0
  br i1 %cmp20.not.i71.i, label %for.body.i72.i.hwreg_common_write.exit.thread_crit_edge, label %for.inc.i74.i

for.body.i72.i.hwreg_common_write.exit.thread_crit_edge: ; preds = %for.body.i72.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %hwreg_common_write.exit.thread

for.inc.i74.i:                                    ; preds = %for.body.i72.i
  call void @__sanitizer_cov_trace_pc() #15
  %incdec.ptr.i73.i = getelementptr i8, ptr %s.0.i67.i, i32 1
  br label %for.cond.i68.i

if.else.i78.loopexit.i:                           ; preds = %while.cond99.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp1(i8 45, i8 %79)
  %phi.cmp.i = icmp eq i8 %79, 45
  %phi.cast.i = zext i1 %phi.cmp.i to i32
  br label %if.else.i78.i

if.else.i78.i:                                    ; preds = %if.else.i78.loopexit.i, %land.lhs.true.i64.i.if.else.i78.i_crit_edge
  %90 = phi i32 [ %phi.cast.i, %if.else.i78.loopexit.i ], [ 0, %land.lhs.true.i64.i.if.else.i78.i_crit_edge ]
  %spec.select.i77.i = getelementptr i8, ptr %b.addr.3.i, i32 %90
  br label %for.cond29.i80.i

for.cond29.i80.i:                                 ; preds = %for.inc46.i84.i, %if.else.i78.i
  %s.2.i79.i = phi ptr [ %spec.select.i77.i, %if.else.i78.i ], [ %incdec.ptr47.i83.i, %for.inc46.i84.i ]
  %91 = ptrtoint ptr %s.2.i79.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %s.2.i79.i, align 1
  %93 = zext i8 %92 to i64
  call void @__sanitizer_cov_trace_switch(i64 %93, ptr @__sancov_gen_cov_switch_values.150)
  switch i8 %92, label %for.body41.i82.i [
    i8 0, label %for.cond29.i80.i.strval_len.exit91.i_crit_edge
    i8 32, label %for.cond29.i80.i.strval_len.exit91.i_crit_edge229
    i8 10, label %for.cond29.i80.i.strval_len.exit91.i_crit_edge230
  ]

for.cond29.i80.i.strval_len.exit91.i_crit_edge230: ; preds = %for.cond29.i80.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %strval_len.exit91.i

for.cond29.i80.i.strval_len.exit91.i_crit_edge229: ; preds = %for.cond29.i80.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %strval_len.exit91.i

for.cond29.i80.i.strval_len.exit91.i_crit_edge:   ; preds = %for.cond29.i80.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %strval_len.exit91.i

for.body41.i82.i:                                 ; preds = %for.cond29.i80.i
  %conv30.i81.i = zext i8 %92 to i32
  %94 = add nsw i32 %conv30.i81.i, -58
  %95 = icmp ult i32 %94, -10
  br i1 %95, label %for.body41.i82.i.hwreg_common_write.exit.thread_crit_edge, label %for.inc46.i84.i

for.body41.i82.i.hwreg_common_write.exit.thread_crit_edge: ; preds = %for.body41.i82.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %hwreg_common_write.exit.thread

for.inc46.i84.i:                                  ; preds = %for.body41.i82.i
  call void @__sanitizer_cov_trace_pc() #15
  %incdec.ptr47.i83.i = getelementptr i8, ptr %s.2.i79.i, i32 1
  br label %for.cond29.i80.i

strval_len.exit91.i:                              ; preds = %for.cond29.i80.i.strval_len.exit91.i_crit_edge, %for.cond29.i80.i.strval_len.exit91.i_crit_edge229, %for.cond29.i80.i.strval_len.exit91.i_crit_edge230, %for.cond.i68.i.strval_len.exit91.i_crit_edge, %for.cond.i68.i.strval_len.exit91.i_crit_edge227, %for.cond.i68.i.strval_len.exit91.i_crit_edge228
  %s.3.i85.i = phi ptr [ %s.2.i79.i, %for.cond29.i80.i.strval_len.exit91.i_crit_edge ], [ %s.2.i79.i, %for.cond29.i80.i.strval_len.exit91.i_crit_edge229 ], [ %s.2.i79.i, %for.cond29.i80.i.strval_len.exit91.i_crit_edge230 ], [ %s.0.i67.i, %for.cond.i68.i.strval_len.exit91.i_crit_edge ], [ %s.0.i67.i, %for.cond.i68.i.strval_len.exit91.i_crit_edge227 ], [ %s.0.i67.i, %for.cond.i68.i.strval_len.exit91.i_crit_edge228 ]
  %cmp107.i = icmp eq ptr %s.3.i85.i, %b.addr.3.i
  br i1 %cmp107.i, label %strval_len.exit91.i.hwreg_common_write.exit.thread_crit_edge, label %if.end110.i

strval_len.exit91.i.hwreg_common_write.exit.thread_crit_edge: ; preds = %strval_len.exit91.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %hwreg_common_write.exit.thread

if.end110.i:                                      ; preds = %strval_len.exit91.i
  %addr.i = getelementptr inbounds %struct.hwreg_cfg, ptr %loc.i, i32 0, i32 1
  %call.i92.i = call i32 @_kstrtoul(ptr noundef %b.addr.3.i, i32 noundef 0, ptr noundef %addr.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i92.i)
  %tobool112.not.i = icmp eq i32 %call.i92.i, 0
  br i1 %tobool112.not.i, label %if.end114.i, label %if.end110.i.hwreg_common_write.exit.thread_crit_edge

if.end110.i.hwreg_common_write.exit.thread_crit_edge: ; preds = %if.end110.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %hwreg_common_write.exit.thread

if.end114.i:                                      ; preds = %if.end110.i
  br i1 %tobool.not.i, label %if.then135.critedge.i, label %if.end114.i.while.cond117.i_crit_edge

if.end114.i.while.cond117.i_crit_edge:            ; preds = %if.end114.i
  br label %while.cond117.i

while.cond117.i:                                  ; preds = %while.cond117.i.while.cond117.i_crit_edge, %if.end114.i.while.cond117.i_crit_edge
  %b.addr.4.i = phi ptr [ %incdec.ptr122.i, %while.cond117.i.while.cond117.i_crit_edge ], [ %b.addr.3.i, %if.end114.i.while.cond117.i_crit_edge ]
  %96 = ptrtoint ptr %b.addr.4.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %b.addr.4.i, align 1
  %cmp119.i = icmp eq i8 %97, 32
  %incdec.ptr122.i = getelementptr i8, ptr %b.addr.4.i, i32 1
  br i1 %cmp119.i, label %while.cond117.i.while.cond117.i_crit_edge, label %while.end123.i

while.cond117.i.while.cond117.i_crit_edge:        ; preds = %while.cond117.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond117.i

while.end123.i:                                   ; preds = %while.cond117.i
  %call124.i = call fastcc i32 @strval_len(ptr noundef %b.addr.4.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call124.i)
  %cmp125.i = icmp eq i32 %call124.i, 0
  br i1 %cmp125.i, label %while.end123.i.hwreg_common_write.exit.thread_crit_edge, label %if.end128.i

while.end123.i.hwreg_common_write.exit.thread_crit_edge: ; preds = %while.end123.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %hwreg_common_write.exit.thread

if.end128.i:                                      ; preds = %while.end123.i
  %call129.i = call i32 @kstrtouint(ptr noundef %b.addr.4.i, i32 noundef 0, ptr noundef nonnull %val.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call129.i)
  %tobool130.not.i = icmp eq i32 %call129.i, 0
  br i1 %tobool130.not.i, label %if.end136.i, label %if.end128.i.hwreg_common_write.exit.thread_crit_edge

if.end128.i.hwreg_common_write.exit.thread_crit_edge: ; preds = %if.end128.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %hwreg_common_write.exit.thread

if.then135.critedge.i:                            ; preds = %if.end114.i
  call void @__sanitizer_cov_trace_pc() #15
  %98 = call ptr @memcpy(ptr @hwreg_cfg, ptr %loc.i, i32 20)
  br label %121

if.end136.i:                                      ; preds = %if.end128.i
  %99 = call ptr @memcpy(ptr @hwreg_cfg, ptr %loc.i, i32 20)
  %100 = load i32, ptr @hwreg_cfg, align 4
  %conv138.i = trunc i32 %100 to i8
  %101 = load i32, ptr getelementptr inbounds (%struct.hwreg_cfg, ptr @hwreg_cfg, i32 0, i32 1), align 4
  %conv140.i = trunc i32 %101 to i8
  %call141.i = call i32 @abx500_get_register_interruptible(ptr noundef %3, i8 noundef zeroext %conv138.i, i8 noundef zeroext %conv140.i, ptr noundef nonnull %regvalue.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call141.i)
  %cmp142.i = icmp slt i32 %call141.i, 0
  br i1 %cmp142.i, label %do.end.i, label %if.end145.i

do.end.i:                                         ; preds = %if.end136.i
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.41, i32 noundef %call141.i, i32 noundef 1761) #16
  br label %hwreg_common_write.exit.thread

if.end145.i:                                      ; preds = %if.end136.i
  %102 = load i32, ptr getelementptr inbounds (%struct.hwreg_cfg, ptr @hwreg_cfg, i32 0, i32 4), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %102)
  %cmp147.i = icmp sgt i32 %102, -1
  %103 = load i32, ptr getelementptr inbounds (%struct.hwreg_cfg, ptr @hwreg_cfg, i32 0, i32 3), align 4
  br i1 %cmp147.i, label %if.then149.i, label %if.else159.i

if.then149.i:                                     ; preds = %if.end145.i
  call void @__sanitizer_cov_trace_pc() #15
  %shl.i = shl i32 %103, %102
  %104 = ptrtoint ptr %regvalue.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %regvalue.i, align 1
  %106 = trunc i32 %shl.i to i8
  %107 = xor i8 %106, -1
  %conv154.i = and i8 %105, %107
  store i8 %conv154.i, ptr %regvalue.i, align 1
  %108 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %val.i, align 4
  %and156.i = and i32 %109, %103
  %shl158.i = shl i32 %and156.i, %102
  br label %if.end171.i

if.else159.i:                                     ; preds = %if.end145.i
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i = sub i32 0, %102
  %shr.i = lshr i32 %103, %sub.i
  %110 = ptrtoint ptr %regvalue.i to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %regvalue.i, align 1
  %112 = trunc i32 %shr.i to i8
  %113 = xor i8 %112, -1
  %conv165.i = and i8 %111, %113
  store i8 %conv165.i, ptr %regvalue.i, align 1
  %114 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %val.i, align 4
  %and167.i = and i32 %115, %103
  %shr170.i = lshr i32 %and167.i, %sub.i
  br label %if.end171.i

if.end171.i:                                      ; preds = %if.else159.i, %if.then149.i
  %storemerge.i = phi i32 [ %shr170.i, %if.else159.i ], [ %shl158.i, %if.then149.i ]
  %116 = ptrtoint ptr %regvalue.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %regvalue.i, align 1
  %conv172.i = zext i8 %117 to i32
  %or173.i = or i32 %storemerge.i, %conv172.i
  %118 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %or173.i, ptr %val.i, align 4
  %119 = load i32, ptr @hwreg_cfg, align 4
  %conv175.i = trunc i32 %119 to i8
  %120 = load i32, ptr getelementptr inbounds (%struct.hwreg_cfg, ptr @hwreg_cfg, i32 0, i32 1), align 4
  %conv177.i = trunc i32 %120 to i8
  %conv178.i = trunc i32 %or173.i to i8
  %call179.i = call i32 @abx500_set_register_interruptible(ptr noundef %3, i8 noundef zeroext %conv175.i, i8 noundef zeroext %conv177.i, i8 noundef zeroext %conv178.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call179.i)
  %cmp180.i = icmp slt i32 %call179.i, 0
  br i1 %cmp180.i, label %do.end185.i, label %if.end171.i._crit_edge

if.end171.i._crit_edge:                           ; preds = %if.end171.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %121

do.end185.i:                                      ; preds = %if.end171.i
  call void @__sanitizer_cov_trace_pc() #15
  %call186.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, i32 noundef %call179.i, i32 noundef 1777) #16
  br label %hwreg_common_write.exit.thread

hwreg_common_write.exit.thread:                   ; preds = %do.end185.i, %do.end.i, %if.end128.i.hwreg_common_write.exit.thread_crit_edge, %while.end123.i.hwreg_common_write.exit.thread_crit_edge, %if.end110.i.hwreg_common_write.exit.thread_crit_edge, %strval_len.exit91.i.hwreg_common_write.exit.thread_crit_edge, %for.body41.i82.i.hwreg_common_write.exit.thread_crit_edge, %for.body.i72.i.hwreg_common_write.exit.thread_crit_edge, %if.end94.i.hwreg_common_write.exit.thread_crit_edge, %strval_len.exit61.i.hwreg_common_write.exit.thread_crit_edge, %for.body41.i52.i.hwreg_common_write.exit.thread_crit_edge, %for.body.i42.i.hwreg_common_write.exit.thread_crit_edge, %if.end80.i.hwreg_common_write.exit.thread_crit_edge, %strval_len.exit30.i.hwreg_common_write.exit.thread_crit_edge, %for.body41.i21.i.hwreg_common_write.exit.thread_crit_edge, %for.body.i11.i.hwreg_common_write.exit.thread_crit_edge, %lor.lhs.false66.i.hwreg_common_write.exit.thread_crit_edge, %if.end58.i.hwreg_common_write.exit.thread_crit_edge, %strval_len.exit.i.hwreg_common_write.exit.thread_crit_edge, %for.body41.i.i.hwreg_common_write.exit.thread_crit_edge, %for.body.i.i.hwreg_common_write.exit.thread_crit_edge, %if.else.i.hwreg_common_write.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call129.i, %if.end128.i.hwreg_common_write.exit.thread_crit_edge ], [ -22, %while.end123.i.hwreg_common_write.exit.thread_crit_edge ], [ %call.i92.i, %if.end110.i.hwreg_common_write.exit.thread_crit_edge ], [ -22, %strval_len.exit91.i.hwreg_common_write.exit.thread_crit_edge ], [ %call95.i, %if.end94.i.hwreg_common_write.exit.thread_crit_edge ], [ -22, %strval_len.exit61.i.hwreg_common_write.exit.thread_crit_edge ], [ -22, %if.else.i.hwreg_common_write.exit.thread_crit_edge ], [ -22, %do.end185.i ], [ -22, %do.end.i ], [ -22, %for.body41.i82.i.hwreg_common_write.exit.thread_crit_edge ], [ -22, %for.body.i72.i.hwreg_common_write.exit.thread_crit_edge ], [ -22, %for.body41.i52.i.hwreg_common_write.exit.thread_crit_edge ], [ -22, %for.body.i42.i.hwreg_common_write.exit.thread_crit_edge ], [ -22, %for.body41.i.i.hwreg_common_write.exit.thread_crit_edge ], [ -22, %for.body.i.i.hwreg_common_write.exit.thread_crit_edge ], [ -22, %for.body41.i21.i.hwreg_common_write.exit.thread_crit_edge ], [ -22, %for.body.i11.i.hwreg_common_write.exit.thread_crit_edge ], [ -22, %lor.lhs.false66.i.hwreg_common_write.exit.thread_crit_edge ], [ %call.i31.i, %if.end80.i.hwreg_common_write.exit.thread_crit_edge ], [ -22, %strval_len.exit30.i.hwreg_common_write.exit.thread_crit_edge ], [ %call.i.i21, %if.end58.i.hwreg_common_write.exit.thread_crit_edge ], [ -22, %strval_len.exit.i.hwreg_common_write.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %loc.i) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %regvalue.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #13
  br label %cleanup

121:                                              ; preds = %if.end171.i._crit_edge, %if.then135.critedge.i
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %loc.i) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %regvalue.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #13
  br label %cleanup

cleanup:                                          ; preds = %121, %hwreg_common_write.exit.thread, %if.then11.i.i, %if.then3.i.i
  %retval.0 = phi i32 [ %5, %121 ], [ %retval.0.i.ph, %hwreg_common_write.exit.thread ], [ -14, %if.then11.i.i ], [ -14, %if.then3.i.i ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buf) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ab8500_hwreg_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @ab8500_hwreg_print, ptr noundef %1) #13
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @strval_len(ptr noundef %b) unnamed_addr #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %b to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %b, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %1)
  %cmp = icmp eq i8 %1, 48
  br i1 %cmp, label %land.lhs.true, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %add.ptr = getelementptr i8, ptr %b, i32 1
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %add.ptr, align 1
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.151)
  switch i8 %3, label %land.lhs.true.if.else_crit_edge [
    i8 120, label %land.lhs.true.if.then_crit_edge
    i8 88, label %land.lhs.true.if.then_crit_edge91
  ]

land.lhs.true.if.then_crit_edge91:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

if.then:                                          ; preds = %land.lhs.true.if.then_crit_edge, %land.lhs.true.if.then_crit_edge91
  %add.ptr9 = getelementptr i8, ptr %b, i32 2
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %s.0 = phi ptr [ %add.ptr9, %if.then ], [ %incdec.ptr, %for.inc ]
  %5 = ptrtoint ptr %s.0 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %s.0, align 1
  %7 = zext i8 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.152)
  switch i8 %6, label %for.body [
    i8 0, label %for.cond.if.end49_crit_edge
    i8 32, label %for.cond.if.end49_crit_edge92
    i8 10, label %for.cond.if.end49_crit_edge93
  ]

for.cond.if.end49_crit_edge93:                    ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end49

for.cond.if.end49_crit_edge92:                    ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end49

for.cond.if.end49_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end49

for.body:                                         ; preds = %for.cond
  %conv10 = zext i8 %6 to i32
  %arrayidx = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv10
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx, align 1
  %10 = and i8 %9, 68
  %cmp20.not = icmp eq i8 %10, 0
  br i1 %cmp20.not, label %for.body.cleanup_crit_edge, label %for.inc

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.inc:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %incdec.ptr = getelementptr i8, ptr %s.0, i32 1
  br label %for.cond

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 45, i8 %1)
  %cmp24 = icmp eq i8 %1, 45
  %spec.select.idx = zext i1 %cmp24 to i32
  %spec.select = getelementptr i8, ptr %b, i32 %spec.select.idx
  br label %for.cond29

for.cond29:                                       ; preds = %for.inc46, %if.else
  %s.2 = phi ptr [ %spec.select, %if.else ], [ %incdec.ptr47, %for.inc46 ]
  %11 = ptrtoint ptr %s.2 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %s.2, align 1
  %13 = zext i8 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.153)
  switch i8 %12, label %for.body41 [
    i8 0, label %for.cond29.if.end49_crit_edge
    i8 32, label %for.cond29.if.end49_crit_edge94
    i8 10, label %for.cond29.if.end49_crit_edge95
  ]

for.cond29.if.end49_crit_edge95:                  ; preds = %for.cond29
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end49

for.cond29.if.end49_crit_edge94:                  ; preds = %for.cond29
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end49

for.cond29.if.end49_crit_edge:                    ; preds = %for.cond29
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end49

for.body41:                                       ; preds = %for.cond29
  %conv30 = zext i8 %12 to i32
  %14 = add nsw i32 %conv30, -58
  %15 = icmp ult i32 %14, -10
  br i1 %15, label %for.body41.cleanup_crit_edge, label %for.inc46

for.body41.cleanup_crit_edge:                     ; preds = %for.body41
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.inc46:                                        ; preds = %for.body41
  call void @__sanitizer_cov_trace_pc() #15
  %incdec.ptr47 = getelementptr i8, ptr %s.2, i32 1
  br label %for.cond29

if.end49:                                         ; preds = %for.cond29.if.end49_crit_edge, %for.cond29.if.end49_crit_edge94, %for.cond29.if.end49_crit_edge95, %for.cond.if.end49_crit_edge, %for.cond.if.end49_crit_edge92, %for.cond.if.end49_crit_edge93
  %s.3 = phi ptr [ %s.2, %for.cond29.if.end49_crit_edge ], [ %s.2, %for.cond29.if.end49_crit_edge94 ], [ %s.2, %for.cond29.if.end49_crit_edge95 ], [ %s.0, %for.cond.if.end49_crit_edge ], [ %s.0, %for.cond.if.end49_crit_edge92 ], [ %s.0, %for.cond.if.end49_crit_edge93 ]
  %sub.ptr.lhs.cast = ptrtoint ptr %s.3 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %b to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  br label %cleanup

cleanup:                                          ; preds = %if.end49, %for.body41.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %sub.ptr.sub, %if.end49 ], [ 0, %for.body41.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtol(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ab8500_hwreg_print(ptr noundef %s, ptr nocapture noundef readnone %d) #0 align 64 {
entry:
  %regvalue = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %regvalue) #13
  %2 = ptrtoint ptr %regvalue to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %regvalue, align 1, !annotation !239
  %3 = load i32, ptr @hwreg_cfg, align 4
  %conv = trunc i32 %3 to i8
  %4 = load i32, ptr getelementptr inbounds (%struct.hwreg_cfg, ptr @hwreg_cfg, i32 0, i32 1), align 4
  %conv1 = trunc i32 %4 to i8
  %call = call i32 @abx500_get_register_interruptible(ptr noundef %1, i8 noundef zeroext %conv, i8 noundef zeroext %conv1, ptr noundef nonnull %regvalue) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.41, i32 noundef %call, i32 noundef 1544) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = load i32, ptr getelementptr inbounds (%struct.hwreg_cfg, ptr @hwreg_cfg, i32 0, i32 4), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %cmp3 = icmp sgt i32 %5, -1
  br i1 %cmp3, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %6 = ptrtoint ptr %regvalue to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %regvalue, align 1
  %conv6 = zext i8 %7 to i32
  %shr = lshr i32 %conv6, %5
  br label %if.end10

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %sub = sub i32 0, %5
  %8 = ptrtoint ptr %regvalue to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %regvalue, align 1
  %conv8 = zext i8 %9 to i32
  %shl = shl i32 %conv8, %sub
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then5
  %storemerge.in = phi i32 [ %shl, %if.else ], [ %shr, %if.then5 ]
  %10 = load i32, ptr getelementptr inbounds (%struct.hwreg_cfg, ptr @hwreg_cfg, i32 0, i32 3), align 4
  %and = and i32 %10, %storemerge.in
  %conv12 = trunc i32 %and to i8
  %11 = ptrtoint ptr %regvalue to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv12, ptr %regvalue, align 1
  %12 = load i32, ptr getelementptr inbounds (%struct.hwreg_cfg, ptr @hwreg_cfg, i32 0, i32 2), align 4
  %and13 = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool.not = icmp eq i32 %and13, 0
  %conv17 = and i32 %and, 255
  br i1 %tobool.not, label %if.else16, label %if.then14

if.then14:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.57, i32 noundef %conv17) #13
  br label %cleanup

if.else16:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.34, i32 noundef %conv17) #13
  br label %cleanup

cleanup:                                          ; preds = %if.else16, %if.then14, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.else16 ], [ 0, %if.then14 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %regvalue) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ab8500_modem_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @ab8500_modem_show, ptr noundef %1) #13
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ab8500_modem_show(ptr noundef %s, ptr nocapture noundef readnone %p) #0 align 64 {
entry:
  %value = alloca i8, align 1
  %orig_value = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value) #13
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %value, align 1, !annotation !239
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %orig_value) #13
  %3 = ptrtoint ptr %orig_value to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %orig_value, align 1, !annotation !239
  %parent = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1, ptr noundef nonnull @.str.129) #16
  %call1 = call i32 @abx500_get_register_interruptible(ptr noundef %1, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull %orig_value) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.do.end26_crit_edge, label %if.end

entry.do.end26_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end26

if.end:                                           ; preds = %entry
  %call2 = call i32 @abx500_set_register_interruptible(ptr noundef %1, i8 noundef zeroext 3, i8 noundef zeroext 0, i8 noundef zeroext 1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.end.do.end29_crit_edge, label %if.end5

if.end.do.end29_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end29

if.end5:                                          ; preds = %if.end
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.6, i32 noundef 4) #13
  %version.i = getelementptr inbounds %struct.ab8500, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %version.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %version.i, align 4
  %.off = add i32 %9, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  %10 = select i1 %switch, i32 141, i32 140
  br label %for.body

for.body:                                         ; preds = %if.end17.for.body_crit_edge, %if.end5
  %reg.062 = phi i32 [ 128, %if.end5 ], [ %inc, %if.end17.for.body_crit_edge ]
  %conv12 = trunc i32 %reg.062 to i8
  %call13 = call i32 @abx500_get_register_interruptible(ptr noundef %1, i8 noundef zeroext 4, i8 noundef zeroext %conv12, ptr noundef nonnull %value) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %for.body.do.end26_crit_edge, label %if.end17

for.body.do.end26_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end26

if.end17:                                         ; preds = %for.body
  %11 = ptrtoint ptr %value to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %value, align 1
  %conv18 = zext i8 %12 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.11, i32 noundef 4, i32 noundef %reg.062, i32 noundef %conv18) #13
  %inc = add nuw nsw i32 %reg.062, 1
  %exitcond = icmp eq i32 %inc, %10
  br i1 %exitcond, label %for.end, label %if.end17.for.body_crit_edge

if.end17.for.body_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %if.end17
  %13 = ptrtoint ptr %orig_value to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %orig_value, align 1
  %call19 = call i32 @abx500_set_register_interruptible(ptr noundef %1, i8 noundef zeroext 3, i8 noundef zeroext 0, i8 noundef zeroext %14) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %for.end.do.end29_crit_edge, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.end.do.end29_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end29

do.end26:                                         ; preds = %for.body.do.end26_crit_edge, %entry.do.end26_crit_edge
  %err.0 = phi i32 [ %call1, %entry.do.end26_crit_edge ], [ %call13, %for.body.do.end26_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.8, i32 noundef %err.0) #16
  br label %cleanup

do.end29:                                         ; preds = %for.end.do.end29_crit_edge, %if.end.do.end29_crit_edge
  %err.1 = phi i32 [ %call2, %if.end.do.end29_crit_edge ], [ %call19, %for.end.do.end29_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.135, i32 noundef %err.1) #16
  br label %cleanup

cleanup:                                          ; preds = %do.end29, %do.end26, %for.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %do.end26 ], [ %err.1, %do.end29 ], [ 0, %for.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %orig_value) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value) #13
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #12

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 168)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 168)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind readonly }
attributes #10 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { argmemonly nofree nounwind readonly willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind allocsize(2) }
attributes #18 = { nounwind readnone }
attributes #19 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !16, !18, !20, !21, !22, !23, !24, !26, !28, !29, !30, !32, !34, !36, !38, !40, !41, !42, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !96, !97, !98, !100, !102, !104, !105, !106, !107, !109, !111, !112, !113, !115, !116, !117, !119, !120, !121, !122, !124, !126, !127, !128, !129, !131, !132, !133, !135, !137, !138, !139, !141, !142, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !168, !169, !171, !172, !174, !176, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !204, !205, !207, !208, !210, !212, !213, !214, !216, !218, !219, !220, !221, !222, !224, !225, !227, !228}
!llvm.named.register.sp = !{!229}
!llvm.module.flags = !{!230, !231, !232, !233, !234, !235, !236, !237}
!llvm.ident = !{!238}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/mfd/ab8500-debugfs.c", i32 1350, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @ab8500_dump_all_banks._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @ab8500_dump_all_banks._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/mfd/ab8500-debugfs.c", i32 1353, i32 3}
!10 = !{ptr @ab8500_dump_all_banks._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @ab8500_dump_all_banks._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @__initcall__kmod_ab8500_debugfs__290_2096_ab8500_debug_init4, !13, !"__initcall__kmod_ab8500_debugfs__290_2096_ab8500_debug_init4", i1 false, i1 false}
!13 = !{!"../drivers/mfd/ab8500-debugfs.c", i32 2096, i32 1}
!14 = !{ptr @num_interrupts, !15, !"num_interrupts", i1 false, i1 false}
!15 = !{!"../drivers/mfd/ab8500-debugfs.c", i32 1502, i32 12}
!16 = !{ptr @num_interrupt_lines, !17, !"num_interrupt_lines", i1 false, i1 false}
!17 = !{!"../drivers/mfd/ab8500-debugfs.c", i32 1504, i32 12}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/mfd/ab8500-debugfs.c", i32 1290, i32 5}
!20 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @ab8500_registers_print._entry, !19, !"_entry", i1 false, i1 false}
!23 = !{ptr @ab8500_registers_print._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/mfd/ab8500-debugfs.c", i32 1295, i32 19}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/mfd/ab8500-debugfs.c", i32 1304, i32 5}
!28 = !{ptr @ab8500_registers_print._entry.12, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @ab8500_registers_print._entry_ptr.14, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @debug_ranges, !31, !"debug_ranges", i1 false, i1 false}
!31 = !{!"../drivers/mfd/ab8500-debugfs.c", i32 153, i32 36}
!32 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/mfd/ab8500-debugfs.c", i32 2086, i32 11}
!34 = !{ptr @ab8500_debug_driver, !35, !"ab8500_debug_driver", i1 false, i1 false}
!35 = !{!"../drivers/mfd/ab8500-debugfs.c", i32 2084, i32 31}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/mfd/ab8500-debugfs.c", i32 2028, i32 45}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/mfd/ab8500-debugfs.c", i32 2030, i32 3}
!40 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @ab8500_debug_probe._entry, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @ab8500_debug_probe._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/mfd/ab8500-debugfs.c", i32 2035, i32 43}
!45 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/mfd/ab8500-debugfs.c", i32 2039, i32 42}
!47 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/mfd/ab8500-debugfs.c", i32 2043, i32 34}
!49 = !{ptr @.str.22, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/mfd/ab8500-debugfs.c", i32 2045, i32 22}
!51 = !{ptr @.str.23, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/mfd/ab8500-debugfs.c", i32 2047, i32 22}
!53 = !{ptr @.str.24, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/mfd/ab8500-debugfs.c", i32 2049, i32 22}
!55 = !{ptr @.str.25, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/mfd/ab8500-debugfs.c", i32 2051, i32 22}
!57 = !{ptr @.str.26, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/mfd/ab8500-debugfs.c", i32 2053, i32 22}
!59 = !{ptr @.str.27, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/mfd/ab8500-debugfs.c", i32 2055, i32 22}
!61 = !{ptr @.str.28, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/mfd/ab8500-debugfs.c", i32 2072, i32 22}
!63 = !{ptr @.str.29, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/mfd/ab8500-debugfs.c", i32 2074, i32 22}
!65 = !{ptr @.str.30, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/mfd/ab8500-debugfs.c", i32 2076, i32 22}
!67 = !{ptr @.str.31, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/mfd/ab8500-debugfs.c", i32 2078, i32 22}
!69 = !{ptr @debug_bank, !70, !"debug_bank", i1 false, i1 false}
!70 = !{!"../drivers/mfd/ab8500-debugfs.c", i32 93, i32 12}
!71 = !{ptr @debug_address, !72, !"debug_address", i1 false, i1 false}
!72 = !{!"../drivers/mfd/ab8500-debugfs.c", i32 94, i32 12}
!73 = !{ptr @num_irqs, !74, !"num_irqs", i1 false, i1 false}
!74 = !{!"../drivers/mfd/ab8500-debugfs.c", i32 100, i32 12}
!75 = !{ptr @irq_count, !76, !"irq_count", i1 false, i1 false}
!76 = !{!"../drivers/mfd/ab8500-debugfs.c", i32 99, i32 13}
!77 = !{ptr @dev_attr, !78, !"dev_attr", i1 false, i1 false}
!78 = !{!"../drivers/mfd/ab8500-debugfs.c", i32 102, i32 34}
!79 = !{ptr @event_name, !80, !"event_name", i1 false, i1 false}
!80 = !{!"../drivers/mfd/ab8500-debugfs.c", i32 103, i32 15}
!81 = !{ptr @irq_first, !82, !"irq_first", i1 false, i1 false}
!82 = !{!"../drivers/mfd/ab8500-debugfs.c", i32 97, i32 12}
!83 = distinct !{null, !84, !"irq_ab8500", i1 false, i1 false}
!84 = !{!"../drivers/mfd/ab8500-debugfs.c", i32 96, i32 12}
!85 = !{ptr @irq_last, !86, !"irq_last", i1 false, i1 false}
!86 = !{!"../drivers/mfd/ab8500-debugfs.c", i32 98, i32 12}
!87 = !{ptr @ab8500_bank_registers_fops, !88, !"ab8500_bank_registers_fops", i1 false, i1 false}
!88 = !{!"../drivers/mfd/ab8500-debugfs.c", i32 1325, i32 1}
!89 = !{ptr @ab8500_all_banks_fops, !90, !"ab8500_all_banks_fops", i1 false, i1 false}
!90 = !{!"../drivers/mfd/ab8500-debugfs.c", i32 1377, i32 37}
!91 = !{ptr @ab8500_bank_fops, !92, !"ab8500_bank_fops", i1 false, i1 false}
!92 = !{!"../drivers/mfd/ab8500-debugfs.c", i32 1947, i32 37}
!93 = !{ptr @.str.32, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/mfd/ab8500-debugfs.c", i32 1409, i32 3}
!95 = !{ptr @.str.33, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @ab8500_bank_write._entry, !94, !"_entry", i1 false, i1 false}
!97 = !{ptr @ab8500_bank_write._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.34, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/mfd/ab8500-debugfs.c", i32 1387, i32 16}
!100 = !{ptr @ab8500_address_fops, !101, !"ab8500_address_fops", i1 false, i1 false}
!101 = !{!"../drivers/mfd/ab8500-debugfs.c", i32 1956, i32 37}
!102 = !{ptr @.str.35, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/mfd/ab8500-debugfs.c", i32 1442, i32 3}
!104 = !{ptr @.str.36, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @ab8500_address_write._entry, !103, !"_entry", i1 false, i1 false}
!106 = !{ptr @ab8500_address_write._entry_ptr, !103, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @ab8500_val_fops, !108, !"ab8500_val_fops", i1 false, i1 false}
!108 = !{!"../drivers/mfd/ab8500-debugfs.c", i32 1965, i32 37}
!109 = !{ptr @.str.37, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/mfd/ab8500-debugfs.c", i32 1486, i32 3}
!111 = !{ptr @ab8500_val_write._entry, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @ab8500_val_write._entry_ptr, !110, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.39, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/mfd/ab8500-debugfs.c", i32 1492, i32 3}
!115 = !{ptr @ab8500_val_write._entry.38, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @ab8500_val_write._entry_ptr.40, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.41, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/mfd/ab8500-debugfs.c", i32 1459, i32 3}
!119 = !{ptr @.str.42, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @ab8500_val_print._entry, !118, !"_entry", i1 false, i1 false}
!121 = !{ptr @ab8500_val_print._entry_ptr, !118, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @ab8500_subscribe_fops, !123, !"ab8500_subscribe_fops", i1 false, i1 false}
!123 = !{!"../drivers/mfd/ab8500-debugfs.c", i32 1974, i32 37}
!124 = !{ptr @.str.43, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/mfd/ab8500-debugfs.c", i32 1855, i32 3}
!126 = !{ptr @.str.44, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @ab8500_subscribe_write._entry, !125, !"_entry", i1 false, i1 false}
!128 = !{ptr @ab8500_subscribe_write._entry_ptr, !125, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.46, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/mfd/ab8500-debugfs.c", i32 1859, i32 3}
!131 = !{ptr @ab8500_subscribe_write._entry.45, !130, !"_entry", i1 false, i1 false}
!132 = !{ptr @ab8500_subscribe_write._entry_ptr.47, !130, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.48, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/mfd/ab8500-debugfs.c", i32 1876, i32 48}
!135 = !{ptr @.str.50, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/mfd/ab8500-debugfs.c", i32 1886, i32 3}
!137 = !{ptr @ab8500_subscribe_write._entry.49, !136, !"_entry", i1 false, i1 false}
!138 = !{ptr @ab8500_subscribe_write._entry_ptr.51, !136, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.53, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/mfd/ab8500-debugfs.c", i32 1894, i32 3}
!141 = !{ptr @ab8500_subscribe_write._entry.52, !140, !"_entry", i1 false, i1 false}
!142 = !{ptr @ab8500_subscribe_write._entry_ptr.54, !140, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.55, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/mfd/ab8500-debugfs.c", i32 1838, i32 22}
!145 = !{ptr @.str.56, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/mfd/ab8500-debugfs.c", i32 1266, i32 15}
!147 = !{ptr @.str.57, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/mfd/ab8500-debugfs.c", i32 1807, i32 16}
!149 = !{ptr @ab8500_debug_ranges, !150, !"ab8500_debug_ranges", i1 false, i1 false}
!150 = !{!"../drivers/mfd/ab8500-debugfs.c", i32 155, i32 35}
!151 = !{ptr @ab8505_debug_ranges, !152, !"ab8505_debug_ranges", i1 false, i1 false}
!152 = !{!"../drivers/mfd/ab8500-debugfs.c", i32 478, i32 35}
!153 = !{ptr @ab8540_debug_ranges, !154, !"ab8540_debug_ranges", i1 false, i1 false}
!154 = !{!"../drivers/mfd/ab8500-debugfs.c", i32 839, i32 35}
!155 = !{ptr @ab8500_interrupts_fops, !156, !"ab8500_interrupts_fops", i1 false, i1 false}
!156 = !{!"../drivers/mfd/ab8500-debugfs.c", i32 1529, i32 1}
!157 = !{ptr @.str.107, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/mfd/ab8500-debugfs.c", i32 1516, i32 14}
!159 = !{ptr @.str.108, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/mfd/ab8500-debugfs.c", i32 1519, i32 17}
!161 = distinct !{null, !162, !"num_wake_interrupts", i1 false, i1 false}
!162 = !{!"../drivers/mfd/ab8500-debugfs.c", i32 1503, i32 12}
!163 = !{ptr @ab8500_unsubscribe_fops, !164, !"ab8500_unsubscribe_fops", i1 false, i1 false}
!164 = !{!"../drivers/mfd/ab8500-debugfs.c", i32 1983, i32 37}
!165 = !{ptr @.str.109, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/mfd/ab8500-debugfs.c", i32 1917, i32 3}
!167 = !{ptr @ab8500_unsubscribe_write._entry, !166, !"_entry", i1 false, i1 false}
!168 = !{ptr @ab8500_unsubscribe_write._entry_ptr, !166, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @ab8500_unsubscribe_write._entry.110, !170, !"_entry", i1 false, i1 false}
!170 = !{!"../drivers/mfd/ab8500-debugfs.c", i32 1921, i32 3}
!171 = !{ptr @ab8500_unsubscribe_write._entry_ptr.111, !170, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @ab8500_hwreg_fops, !173, !"ab8500_hwreg_fops", i1 false, i1 false}
!173 = !{!"../drivers/mfd/ab8500-debugfs.c", i32 1992, i32 37}
!174 = distinct !{null, !175, !"__already_done", i1 false, i1 false}
!175 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!176 = !{ptr @.str.112, !175, !"<string literal>", i1 false, i1 false}
!177 = !{ptr @.str.113, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!179 = !{ptr @.str.114, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!181 = !{ptr @.str.115, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/mfd/ab8500-debugfs.c", i32 1677, i32 18}
!183 = !{ptr @.str.116, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/mfd/ab8500-debugfs.c", i32 1680, i32 25}
!185 = !{ptr @.str.117, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/mfd/ab8500-debugfs.c", i32 1692, i32 20}
!187 = !{ptr @.str.118, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/mfd/ab8500-debugfs.c", i32 1693, i32 18}
!189 = !{ptr @.str.119, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/mfd/ab8500-debugfs.c", i32 1696, i32 27}
!191 = !{ptr @.str.120, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/mfd/ab8500-debugfs.c", i32 1697, i32 18}
!193 = !{ptr @.str.121, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/mfd/ab8500-debugfs.c", i32 1700, i32 27}
!195 = !{ptr @.str.122, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/mfd/ab8500-debugfs.c", i32 1701, i32 18}
!197 = !{ptr @.str.123, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/mfd/ab8500-debugfs.c", i32 1708, i32 27}
!199 = !{ptr @.str.124, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/mfd/ab8500-debugfs.c", i32 1709, i32 18}
!201 = !{ptr @.str.125, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/mfd/ab8500-debugfs.c", i32 1760, i32 3}
!203 = !{ptr @hwreg_common_write._entry, !202, !"_entry", i1 false, i1 false}
!204 = !{ptr @hwreg_common_write._entry_ptr, !202, !"_entry_ptr", i1 false, i1 false}
!205 = !{ptr @hwreg_common_write._entry.126, !206, !"_entry", i1 false, i1 false}
!206 = !{!"../drivers/mfd/ab8500-debugfs.c", i32 1777, i32 3}
!207 = !{ptr @hwreg_common_write._entry_ptr.127, !206, !"_entry_ptr", i1 false, i1 false}
!208 = !{ptr @hwreg_cfg, !209, !"hwreg_cfg", i1 false, i1 false}
!209 = !{!"../drivers/mfd/ab8500-debugfs.c", i32 141, i32 25}
!210 = !{ptr @.str.128, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/mfd/ab8500-debugfs.c", i32 1543, i32 3}
!212 = !{ptr @ab8500_hwreg_print._entry, !211, !"_entry", i1 false, i1 false}
!213 = !{ptr @ab8500_hwreg_print._entry_ptr, !211, !"_entry_ptr", i1 false, i1 false}
!214 = !{ptr @ab8500_modem_fops, !215, !"ab8500_modem_fops", i1 false, i1 false}
!215 = !{!"../drivers/mfd/ab8500-debugfs.c", i32 1628, i32 1}
!216 = !{ptr @.str.129, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/mfd/ab8500-debugfs.c", i32 1584, i32 2}
!218 = !{ptr @.str.130, !217, !"<string literal>", i1 false, i1 false}
!219 = !{ptr @.str.131, !217, !"<string literal>", i1 false, i1 false}
!220 = !{ptr @ab8500_modem_show._entry, !217, !"_entry", i1 false, i1 false}
!221 = !{ptr @ab8500_modem_show._entry_ptr, !217, !"_entry_ptr", i1 false, i1 false}
!222 = !{ptr @ab8500_modem_show._entry.132, !223, !"_entry", i1 false, i1 false}
!223 = !{!"../drivers/mfd/ab8500-debugfs.c", i32 1620, i32 2}
!224 = !{ptr @ab8500_modem_show._entry_ptr.133, !223, !"_entry_ptr", i1 false, i1 false}
!225 = !{ptr @.str.135, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/mfd/ab8500-debugfs.c", i32 1624, i32 2}
!227 = !{ptr @ab8500_modem_show._entry.134, !226, !"_entry", i1 false, i1 false}
!228 = !{ptr @ab8500_modem_show._entry_ptr.136, !226, !"_entry_ptr", i1 false, i1 false}
!229 = !{!"sp"}
!230 = !{i32 1, !"wchar_size", i32 2}
!231 = !{i32 1, !"min_enum_size", i32 4}
!232 = !{i32 8, !"branch-target-enforcement", i32 0}
!233 = !{i32 8, !"sign-return-address", i32 0}
!234 = !{i32 8, !"sign-return-address-all", i32 0}
!235 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!236 = !{i32 7, !"uwtable", i32 1}
!237 = !{i32 7, !"frame-pointer", i32 2}
!238 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!239 = !{!"auto-init"}
!240 = !{!"branch_weights", i32 1, i32 2000}
!241 = !{i64 2152220929, i64 2152220954}
!242 = !{!"branch_weights", i32 2000, i32 1}
!243 = !{i64 4716484}
!244 = !{i64 4716681}
!245 = !{i64 2152201914}
